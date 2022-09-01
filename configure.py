#!/usr/bin/env python3
from urllib.parse import urlparse
import argparse, requests, base64, zipfile, io, logging, pickle, shutil, sys, os

# pipe handling
from signal import signal, SIGPIPE, SIG_DFL
signal(SIGPIPE, SIG_DFL)

tmp_dir = '/tmp/tt'
DEFAULT_NUM_PROJECTS = 498


class Projects():

    def __init__(self, update_cache=False, update_single=None, test=False):
        self.default_project = 0
        self.test = test
        if update_cache:
            self.update_cache(update_single)
        else:
            # load projects from cache
            try:
                self.wokwi_ids = pickle.load(open(self.get_projects_db(), 'rb'))
                logging.info("loaded {} projects".format(len(self.wokwi_ids)))
            except FileNotFoundError:
                logging.error("project cache {} not found, use --update-cache to build it".format(self.get_projects_db()))

        # all ids must be unique
        assert len(set(self.wokwi_ids)) == len(self.wokwi_ids)

    def update_cache(self, update_single=None):
        self.wokwi_ids = []
        for url in self.get_project_urls():
            if update_single is not None:
                if url != update_single:
                    continue
            wokwi_id = self.install_artifacts(url)
            if wokwi_id in self.wokwi_ids:
                logging.error("wokwi id already exists!")
                exit(1)
            self.wokwi_ids.append(wokwi_id)

        # cache it
        with open(self.get_projects_db(), 'wb') as fh:
            pickle.dump(self.wokwi_ids, fh)

    def get_projects_db(self):
        if self.test:
            return "projects_test.pkl"
        else:
            return "projects.pkl"

    # filling the space with default projects is handled by returning the default on exception
    def get_macro_instance(self, id):
        try:
            return "scan_wrapper_{}_{}".format(self.wokwi_ids[id], id)
        except IndexError:
            return "scan_wrapper_{}_{}".format(self.wokwi_ids[self.default_project], id)

    def get_wokwi_id(self, id):
        try:
            return self.wokwi_ids[id]
        except IndexError:
            return self.wokwi_ids[self.default_project]

    def get_macro_gds_name(self, id):
        try:
            return "scan_wrapper_{}.gds".format(self.wokwi_ids[id])
        except IndexError:
            return "scan_wrapper_{}.gds".format(self.wokwi_ids[self.default_project])

    def get_macro_lef_name(self, id):
        try:
            return "scan_wrapper_{}.lef".format(self.wokwi_ids[id])
        except IndexError:
            return "scan_wrapper_{}.lef".format(self.wokwi_ids[self.default_project])

    def get_macro_name(self, id):
        try:
            return "scan_wrapper_{}".format(self.wokwi_ids[id])
        except IndexError:
            return "scan_wrapper_{}".format(self.wokwi_ids[self.default_project])

    def get_verilog_include(self, id):
        try:
            return '`include "scan_wrapper_{}.v"\n'.format(self.wokwi_ids[id])
        except IndexError:
            return ''

    def get_gl_verilog_names(self, id):
        try:
            return ['scan_wrapper_{}.v'.format(self.wokwi_ids[id])]
        except IndexError:
            return []
        
    def get_verilog_names(self, id):
        try:
            return ["scan_wrapper_{}.v".format(self.wokwi_ids[id]), "user_module_{}.v".format(self.wokwi_ids[id])]
        except IndexError:
            return []

    def get_wokwi_ids(self):
        return self.wokwi_ids

    def get_giturl(self, id):
        try:
            return self.get_project_urls()[id]
        except IndexError:
            return self.get_project_urls()[self.default_project]

    @classmethod
    def build_wokwi_url(Project, wokwi_id):
        return "https://wokwi.com/projects/{}".format(wokwi_id)

    def get_project_urls(self):
        if self.test:
            from project_urls_test import project_urls, filler_project_url
        else:
            from project_urls import project_urls, filler_project_url

        return [filler_project_url] + project_urls

    # the latest artifact isn't necessarily the one related to the latest commit, as github
    # could have taken longer to process an older commit than a newer one.
    # so iterate through commits and return the artifact that matches
    @classmethod
    def get_most_recent_action_url(project, commits, artifacts):
        release_sha_to_download_url = {artifact['workflow_run']['head_sha']: artifact['archive_download_url'] for artifact in artifacts}
        for commit in commits:
            if commit['sha'] in release_sha_to_download_url:
                return release_sha_to_download_url[commit['sha']]

    # download the artifact for each project to get the gds & lef
    def install_artifacts(self, url):
        res = urlparse(url)
        try:
            _, user_name, repo = res.path.split('/')
        except ValueError:
            logging.error("couldn't split repo from {}".format(url))
            exit(1)
        repo = repo.replace('.git', '')

        # authenticate for rate limiting
        auth_string = os.environ['GH_USERNAME'] + ':' + os.environ['GH_TOKEN']
        encoded = base64.b64encode(auth_string.encode('ascii'))
        headers = {
            "authorization" : 'Basic ' + encoded.decode('ascii'),
            "Accept"        : "application/vnd.github+json",
            }

        # first fetch the git commit history
        api_url = 'https://api.github.com/repos/{}/{}/commits'.format(user_name, repo)
        r = requests.get(api_url, headers=headers)
        requests_remaining = int(r.headers['X-RateLimit-Remaining'])
        if requests_remaining == 0:
            logging.error("no API requests remaining")
            exit(1)

        commits = r.json()

        # now get the artifacts
        api_url = 'https://api.github.com/repos/{}/{}/actions/artifacts'.format(user_name, repo)
        r = requests.get(api_url, headers=headers)
        data = r.json()

        # check there are some artifacts
        if 'artifacts' not in data:
            logging.error("no artifact found for {}".format(self))
            exit(1)
        else:
            # only get artifacts called GDS
            artifacts = [a for a in data['artifacts'] if a['name'] == 'GDS']
            logging.debug("found {} artifacts".format(len(artifacts)))

        download_url = Projects.get_most_recent_action_url(commits, artifacts)
        logging.debug(download_url)

        # need actions access on the token to get the artifact
        # won't work on a pull request because they won't have the token
        r = requests.get(download_url, headers=headers)
        z = zipfile.ZipFile(io.BytesIO(r.content))
        z.extractall(tmp_dir)

        # get the wokwi id
        with open(os.path.join(tmp_dir, 'src/ID')) as fh:
            wokwi_id = fh.readline().strip()

        logging.info("wokwi id {} github url {}".format(wokwi_id, url))

        # copy all important files to the correct places. Everything is dependent on the id
        files = [
            ("/tmp/tt/runs/wokwi/results/final/gds/scan_wrapper_{}.gds".format(wokwi_id), "gds/scan_wrapper_{}.gds".format(wokwi_id)),
            ("/tmp/tt/runs/wokwi/results/final/lef/scan_wrapper_{}.lef".format(wokwi_id), "lef/scan_wrapper_{}.lef".format(wokwi_id)),
            ("/tmp/tt/runs/wokwi/results/final/verilog/gl/scan_wrapper_{}.v".format(wokwi_id), "verilog/gl/scan_wrapper_{}.v".format(wokwi_id)),
            ("/tmp/tt/src/scan_wrapper_{}.v".format(wokwi_id), "verilog/rtl/scan_wrapper_{}.v".format(wokwi_id)),
            ("/tmp/tt/src/user_module_{}.v".format(wokwi_id), "verilog/rtl/user_module_{}.v".format(wokwi_id)),
            ]

        logging.debug("copying files into position")
        for file in files:
            logging.debug("copy {} to {}".format(file[0], file[1]))
            shutil.copyfile(file[0], file[1])

        # unlink temp directory
        shutil.rmtree(tmp_dir)
        return wokwi_id


class CaravelConfig():

    def __init__(self, projects, num_projects):
        self.projects = projects
        self.num_projects = num_projects

    @classmethod
    def unique(cls, duplist):
        unique_list = []
        # traverse for all elements
        for x in duplist:
            # check if exists in unique_list or not
            if x not in unique_list:
                unique_list.append(x)
        return unique_list

    # create macro file & positions, power hooks
    def create_macro_config(self):
        start_x = 80
        start_y = 80
        step_x  = 140
        step_y  = 135
        rows    = 25
        cols    = 20

        num_macros_placed = 0

        # macro.cfg: where macros are placed
        logging.info("creating macro.cfg")
        with open("openlane/user_project_wrapper/macro.cfg", 'w') as fh:
            fh.write("scan_controller 80 80 N\n")
            for row in range(rows):
                for col in range(cols):
                    # skip the space where the scan controller goes on the first row
                    if row == 0 and col <= 1:
                        continue

                    if num_macros_placed < self.num_projects:
                        macro_instance = self.projects.get_macro_instance(num_macros_placed)
                        instance = "{} {:<4} {:<4} N\n".format(macro_instance, start_x + col * step_x, start_y + row * step_y)
                        fh.write(instance)

                    num_macros_placed += 1

        # macro_power.tcl: extra file for macro power hooks
        logging.info("creating macro_power.tcl")
        with open("openlane/user_project_wrapper/macro_power.tcl", 'w') as fh:
            fh.write('set ::env(FP_PDN_MACRO_HOOKS) "\\\n')
            fh.write("	")
            fh.write("scan_controller")
            fh.write(" vccd1 vssd1 vccd1 vssd1")
            fh.write(", \\\n")
            for i in range(self.num_projects):
                fh.write("	")
                fh.write(self.projects.get_macro_instance(i))
                fh.write(" vccd1 vssd1 vccd1 vssd1")
                if i != self.num_projects - 1:
                    fh.write(", \\\n")
            fh.write('"\n')

        # extra_lef_gds.tcl
        logging.info("creating extra_lef_gds.tcl")
        lefs = []
        gdss = []
        for i in range(self.num_projects):
            lefs.append(self.projects.get_macro_lef_name(i))
            gdss.append(self.projects.get_macro_gds_name(i))

        # can't have duplicates or OpenLane crashes at PDN
        lefs = CaravelConfig.unique(lefs)
        gdss = CaravelConfig.unique(gdss)

        with open("openlane/user_project_wrapper/extra_lef_gds.tcl", 'w') as fh:
            fh.write('set ::env(EXTRA_LEFS) "\\\n')
            fh.write("$script_dir/../../lef/scan_controller.lef \\\n")
            for i, lef in enumerate(lefs):
                fh.write("$script_dir/../../lef/{}".format(lef))
                if i != len(lefs) - 1:
                    fh.write(" \\\n")
                else:
                    fh.write('"\n')
            fh.write('set ::env(EXTRA_GDS_FILES) "\\\n')
            fh.write("$script_dir/../../gds/scan_controller.gds \\\n")
            for i, gds in enumerate(gdss):
                fh.write("$script_dir/../../gds/{}".format(gds))
                if i != len(gdss) - 1:
                    fh.write(" \\\n")
                else:
                    fh.write('"\n')

    # instantiate inside user_project_wrapper
    def instantiate(self):
        logging.info("instantiating designs in user_project_wrapper.v")
        assigns = """
        localparam NUM_MACROS = {};
        wire [NUM_MACROS:0] data, scan, latch, clk;
        """

        scan_controller_template = """
        scan_controller #(.NUM_DESIGNS(NUM_MACROS)) scan_controller(
            .clk                    (wb_clk_i),
            .reset                  (wb_rst_i),
            .active_select          (io_in[20:12]),
            .inputs                 (io_in[28:21]),
            .outputs                (io_out[36:29]),
            .ready                  (io_out[37]),
            .slow_clk               (io_out[10]),
            .set_clk_div            (io_in[11]),

            .scan_clk_out           (clk[0]),
            .scan_clk_in            (clk[NUM_MACROS]),
            .scan_data_out          (data[0]),
            .scan_data_in           (data[NUM_MACROS]),
            .scan_select            (scan[0]),
            .scan_latch_en          (latch[0]),

            .la_scan_clk_in         (la_data_in[0]),
            .la_scan_data_in        (la_data_in[1]),
            .la_scan_data_out       (la_data_out[0]),
            .la_scan_select         (la_data_in[2]),
            .la_scan_latch_en       (la_data_in[3]),

            .driver_sel             (io_in[9:8]),

            .oeb                    (io_oeb)
        );

        """
        lesson_template = """
        // {giturl}
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
            fh.write(assigns.format(self.num_projects))
            fh.write(scan_controller_template)
            for i in range(self.num_projects):
                logging.debug("instance {} {}".format(i, self.projects.get_macro_name(i)))
                # instantiate template
                instance = lesson_template.format(giturl=self.projects.get_giturl(i), instance=self.projects.get_macro_instance(i), name=self.projects.get_macro_name(i), id=i, next_id=i + 1)
                fh.write(instance)
            fh.write(post)

        # build the user_project_includes.v file - used for blackboxing when building the GDS
        verilogs = []
        for i in range(self.num_projects):
            verilogs.append(self.projects.get_verilog_include(i))
        verilogs = CaravelConfig.unique(verilogs)

        with open('verilog/rtl/user_project_includes.v', 'w') as fh:
            fh.write('`include "scan_controller/scan_controller.v"\n')
            for verilog in verilogs:
                fh.write(verilog)

        # build complete list of filenames for sim
        verilog_files = []
        for i in range(self.num_projects):
            verilog_files += self.projects.get_verilog_names(i)
        verilog_files = CaravelConfig.unique(verilog_files)
        with open('verilog/includes/includes.rtl.caravel_user_project', 'w') as fh:
            fh.write('-v $(USER_PROJECT_VERILOG)/rtl/user_project_wrapper.v\n')
            fh.write('-v $(USER_PROJECT_VERILOG)/rtl/scan_controller/scan_controller.v\n')
            fh.write('-v $(USER_PROJECT_VERILOG)/rtl/cells.v\n')
            for verilog in verilog_files:
                fh.write('-v $(USER_PROJECT_VERILOG)/rtl/{}\n'.format(verilog))

        # build GL includes
        verilog_files = []
        for i in range(self.num_projects):
            verilog_files += self.projects.get_gl_verilog_names(i)
        verilog_files = CaravelConfig.unique(verilog_files)
        with open('verilog/includes/includes.gl.caravel_user_project', 'w') as fh:
            fh.write('-v $(USER_PROJECT_VERILOG)/gl/user_project_wrapper.v\n')
            fh.write('-v $(USER_PROJECT_VERILOG)/gl/scan_controller.v\n')
            for verilog in verilog_files:
                fh.write('-v $(USER_PROJECT_VERILOG)/gl/{}\n'.format(verilog))

    def build_docs(self):
        logging.info("building doc index")
        with open("README_init.md") as fh:
            readme = fh.read()
        with open("README.md", 'w') as fh:
            fh.write(readme)
            for wokwi_id, project_url in zip(self.projects.get_wokwi_ids(), self.projects.get_project_urls()):
                fh.write("* [{}]({}) {}\n".format(wokwi_id, Projects.build_wokwi_url(wokwi_id), project_url))


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="TinyTapeout")

    parser.add_argument('--list', help="list projects", action='store_const', const=True)
    parser.add_argument('--update-projects', help='fetch the project data', action='store_const', const=True)
    parser.add_argument('--update-single', help='only fetch a single repo for debug')
    parser.add_argument('--update-caravel', help='configure caravel for build', action='store_const', const=True)
    parser.add_argument('--limit-num-projects', help='only configure for the first n projects', type=int, default=DEFAULT_NUM_PROJECTS)
    parser.add_argument('--test', help='use test projects', action='store_const', const=True)
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

    projects = Projects(update_cache=args.update_projects, test=args.test, update_single=args.update_single)
    caravel = CaravelConfig(projects, num_projects=args.limit_num_projects)

    if args.update_caravel:
        caravel.create_macro_config()
        caravel.instantiate()
        caravel.build_docs()
