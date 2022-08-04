#!/usr/bin/env python3
import shutil, os, sys
from urllib.parse import urlparse
import argparse
import requests
import base64
import zipfile
import io
import logging
import re
from tokens import git_token, git_username
# list of designs

# pipe handling
from signal import signal, SIGPIPE, SIG_DFL
signal(SIGPIPE, SIG_DFL)

NUM_PROJECTS = 498


class Projects():

    def __init__(self, fill=True, default_project=0):
        from projects import projects
        self.projects = []
        project_id = 0
        for project_id, config in enumerate(projects):
            project = Project(config['git_url'], config['name'], project_id)
            logging.debug("adding {}".format(project))
            self.projects.append(project)

        if fill:
            # fill property is set for all but the first filler projects. 
            for project_id in range(project_id + 1, NUM_PROJECTS):
                project = Project(projects[default_project]['git_url'], projects[default_project]['name'], project_id, fill=True)
                logging.debug("adding {}".format(project))
                self.projects.append(project)

        logging.info("added {} projects".format(len(self.projects)))

    def get_projects(self):
        return self.projects


class Project():

    def __init__(self, git_url, name, macro_id, fill=False):
        self.fill = fill
        if not re.search('^[a-z_][a-z0-9$_]*$', name):
            logging.error("invalid name {}".format(name))
            exit(1)
        self.git_url = git_url
        self.name = name
        self.id = macro_id

    def __str__(self):
        return "{:03} {} : {}".format(self.id, self.get_macro_name(), self.git_url)

    def get_macro_name(self):
        return self.name

    def get_macro_instance(self):
        return "{}_{:03}".format(self.name, self.id)

    # download the artifact for each project to get the gds & lef
    def install_artifacts(self):
        if self.fill:
            return

        res = urlparse(self.git_url)
        try:
            _, user_name, repo = res.path.split('/')
        except ValueError:
            logging.error("couldn't split repo from {}".format(self.git_url))
            exit(1)
        repo = repo.replace('.git', '')

        # authenticate for rate limiting
        auth_string = git_username + ':' + git_token
        encoded = base64.b64encode(auth_string.encode('ascii'))
        headers = {
            "authorization" : 'Basic ' + encoded.decode('ascii'),
            "Accept"        : "application/vnd.github+json",
            }

        api_url = 'https://api.github.com/repos/{}/{}/actions/artifacts'.format(user_name, repo)
        r = requests.get(api_url, headers=headers)
        requests_remaining = int(r.headers['X-RateLimit-Remaining'])
        if requests_remaining == 0:
            logging.error("no API requests remaining")
            exit(1)

        data = r.json()
        try:
            latest = data['artifacts'][0]
        except IndexError:
            logging.error("no artifact found for {}".format(self))
            exit(1)

        download_url = latest['archive_download_url']
        logging.info(download_url)

        # had to enable actions access on the token to get the artifact , so it probably won't work for other people's repos
        r = requests.get(download_url, headers=headers)
        z = zipfile.ZipFile(io.BytesIO(r.content))
        z.extractall('/tmp')
        files = {
            'gds' : "/tmp/runs/wokwi/results/final/gds/scan_wrapper.gds",
            'lef' : "/tmp/runs/wokwi/results/final/lef/scan_wrapper.lef",
            }

        logging.debug("{} {}".format(files['gds'], files['lef']))

        for filetype in ['gds', 'lef']:
            src = files[filetype]
            dst = self.get_filepath(filetype)
            logging.debug("copy {} to {}".format(src, dst))
            shutil.copyfile(src, dst)

    def get_filepath(self, type):
        return os.path.join(type, self.name + "." + type)

class CaravelConfig():

    def __init__(self, projects):
        self.projects = projects

    def install_artifacts(self):
        for project in self.projects.get_projects():
            project.install_artifacts()
            if project.fill:
                break

    # create macro file & positions, power hooks
    def create_macro_config(self):
        start_x = 80
        start_y = 80
        step_x  = 135
        step_y  = 135   # pdn pitch is 90
        rows    = 25
        cols    = 20

        num_macros_placed = 0

        # macro.cfg: where macros are placed
        logging.debug("creating macro.cfg")
        with open("openlane/user_project_wrapper/macro.cfg", 'w') as fh:
            fh.write("scan_controller 80 80 N\n")
            for row in range(rows):
                for col in range(cols):
                    # skip the space where the scan controller goes on the first row
                    if row == 0 and col <= 1:
                        continue

                    project = self.projects.get_projects()[num_macros_placed]
                    instance = "{} {:<4} {:<4} N\n".format(project.get_macro_instance(), start_x + col * step_x, start_y + row * step_y)
                    fh.write(instance)

                    num_macros_placed += 1

        # macro_power.tcl: extra file for macro power hooks
        logging.debug("creating macro_power.tcl")
        with open("openlane/user_project_wrapper/macro_power.tcl", 'w') as fh:
            fh.write('set ::env(FP_PDN_MACRO_HOOKS) "\\\n')
            fh.write("	")
            fh.write("scan_controller")
            fh.write(" vccd1 vssd1 vccd1 vssd1")
            fh.write(", \\\n")
            for project_id, project in enumerate(self.projects.get_projects()):
                fh.write("	")
                fh.write(project.get_macro_instance())
                fh.write(" vccd1 vssd1 vccd1 vssd1")
                if project_id != num_macros_placed - 1:
                    fh.write(", \\\n")
            fh.write('"\n')
    
        # extra_lef_gds.tcl
        logging.debug("creating extra_lef_gds.tcl")
        with open("openlane/user_project_wrapper/extra_lef_gds.tcl", 'w') as fh:
            fh.write('set ::env(EXTRA_LEFS) "\\\n')
            fh.write("$script_dir/../../lef/scan_controller.lef \\\n")
            for project in self.projects.get_projects():
                fh.write("$script_dir/../../{}".format(project.get_filepath('lef')))
                if project.fill:
                    fh.write('"\n')
                    break
                else:
                    fh.write(" \\\n")
            fh.write('set ::env(EXTRA_GDS_FILES) "\\\n')
            fh.write("$script_dir/../../gds/scan_controller.gds \\\n")
            for project in self.projects.get_projects():
                fh.write("$script_dir/../../{}".format(project.get_filepath('gds')))
                if project.fill:
                    fh.write('"\n')
                    break
                else:
                    fh.write(" \\\n")

    # instantiate inside user_project_wrapper
    def instantiate(self):
        assigns = """
        localparam NUM_MACROS = {};
        wire [NUM_MACROS:0] data, scan, latch, clk;
        wire [8:0] active_select = io_in[20:12];
        wire [7:0] inputs = io_in[28:21];
        wire [7:0] outputs;
        assign io_out[36:29] = outputs;
        wire ready;
        assign io_out[37] = ready;
        """

        scan_controller_template = """
        scan_controller #(.NUM_DESIGNS(NUM_MACROS)) scan_controller(
            .clk            (wb_clk_i),
            .reset          (wb_rst_i),
            .active_select  (active_select),
            .inputs         (inputs),
            .outputs        (outputs),
            .ready          (ready),
            .scan_clk       (clk[0]),
            .scan_data_out  (data[0]),
            .scan_data_in   (data[NUM_MACROS]),
            .scan_select    (scan[0]),
            .scan_latch_enable(latch[0]),
            .oeb            (io_oeb[37:29])
        );

        """
        lesson_template = """
        {name} #(.NUM_IOS(8)) {instance} (
            .clk_in          (clk  [{id}]),
            .data_in         (data [{id}]),
            .scan_select_in  (scan [{id}]),
            .latch_enable_in (latch[{id}]),
            .clk_out         (clk  [{next_id}]),
            .data_out        (data [{next_id}]),
            .scan_select_out (scan [{next_id}]),
            .latch_enable_out(latch[{next_id}])
            );
        """
        with open('upw_pre.v') as fh:
            pre = fh.read()

        with open('upw_post.v') as fh:
            post = fh.read()

        with open('verilog/rtl/user_project_wrapper.v', 'w') as fh:
            fh.write(pre)
            fh.write(assigns.format(NUM_PROJECTS))
            fh.write(scan_controller_template)
            for project in self.projects.get_projects():
                # instantiate template
                instance = lesson_template.format(instance=project.get_macro_instance(), name=project.get_macro_name(), id=project.id, next_id=project.id + 1)
                fh.write(instance)
            fh.write(post)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="TinyTapeout")

    parser.add_argument('--list', help="list projects", action='store_const', const=True)
    parser.add_argument('--update-projects', help='fetch the project data', action='store_const', const=True)
    parser.add_argument('--update-caravel', help='configure caravel for build', action='store_const', const=True)
    parser.add_argument('--debug', help="debug logging", action="store_const", dest="loglevel", const=logging.DEBUG, default=logging.INFO)

    args = parser.parse_args()

    # setup log
    log_format = logging.Formatter('%(asctime)s - %(levelname)-8s - %(message)s')
    # configure the client logging
    log = logging.getLogger('')
    # has to be set to debug as is the root logger
    log.setLevel(args.loglevel)
    # turn off debug logging for requests
    logging.getLogger("requests").setLevel(logging.INFO)
    logging.getLogger("urllib3").setLevel(logging.INFO)

    # create console handler and set level to info
    ch = logging.StreamHandler(sys.stdout)
    # create formatter for console
    ch.setFormatter(log_format)
    log.addHandler(ch)

    projects = Projects()
    caravel = CaravelConfig(projects)

    if args.update_projects:
        # fetches the artifacts from a gitrepo, then copies the gds/lef to the correct place
        caravel.install_artifacts()

    if args.update_caravel:
        caravel.create_macro_config()
        caravel.instantiate()
