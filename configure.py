#!/usr/bin/env python3
from urllib.parse import urlparse
import argparse, requests, base64, zipfile, io, logging, pickle, shutil, sys, os

# pipe handling
from signal import signal, SIGPIPE, SIG_DFL
signal(SIGPIPE, SIG_DFL)

NUM_PROJECTS = 498


class Projects():

    projects_db = "projects.pkl"

    def __init__(self, update_cache=False):
        self.default_project = 0
        if update_cache:
            self.update_cache()
        else:
            # load projects from cache
            try:
                self.wokwi_ids = pickle.load(open(Projects.projects_db, 'rb'))
                logging.info("loaded {} projects".format(len(self.wokwi_ids)))
            except FileNotFoundError:
                logging.error("project cache {} not found, use --update-cache to build it".format(Projects.projects_db))

    def update_cache(self):
        from project_urls import urls
        self.wokwi_ids = []
        for url in urls:
            self.wokwi_ids.append(self.install_artifacts(url))

        # cache it
        with open(Projects.projects_db, 'wb') as fh:
            pickle.dump(self.wokwi_ids, fh)

    # filling the space with default projects is handled by returning the default on exception
    def get_macro_instance(self, id):
        try:
            return "scan_wrapper_{}_{}".format(self.wokwi_ids[id], id)
        except IndexError:
            return "scan_wrapper_{}_{}".format(self.wokwi_ids[self.default_project], id)

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
        auth_string = os.environ['USERNAME'] + ':' + os.environ['TOKEN']
        logging.info(auth_string)
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
        z.extractall('/tmp/tt')

        # get the wokwi id
        with open('/tmp/tt/src/ID') as fh:
            wokwi_id = fh.readline().strip()

        logging.info("wokwi id {}".format(wokwi_id))

        # copy all important files to the correct places. Everything is dependent on the id
        files = [
            ("/tmp/tt/runs/wokwi/results/final/gds/scan_wrapper_{}.gds".format(wokwi_id), "gds/scan_wrapper_{}.gds".format(wokwi_id)),
            ("/tmp/tt/runs/wokwi/results/final/lef/scan_wrapper_{}.lef".format(wokwi_id), "lef/scan_wrapper_{}.lef".format(wokwi_id)),
            ("/tmp/tt/runs/wokwi/results/final/verilog/gl/scan_wrapper_{}.v".format(wokwi_id), "verilog/gl/scan_wrapper_{}.v".format(wokwi_id)),
            ("/tmp/tt/src/scan_wrapper_{}.v".format(wokwi_id), "verilog/rtl/scan_wrapper_{}.v".format(wokwi_id)),
            ("/tmp/tt/src/user_module_{}.v".format(wokwi_id), "verilog/rtl/user_module_{}.v".format(wokwi_id)),
            ]

        logging.info("copying files into position")
        for file in files:
            logging.debug("copy {} to {}".format(file[0], file[1]))
            shutil.copyfile(file[0], file[1])

        return wokwi_id


class CaravelConfig():

    def __init__(self, projects):
        self.projects = projects

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
        logging.debug("creating macro.cfg")
        with open("openlane/user_project_wrapper/macro.cfg", 'w') as fh:
            fh.write("scan_controller 80 80 N\n")
            for row in range(rows):
                for col in range(cols):
                    # skip the space where the scan controller goes on the first row
                    if row == 0 and col <= 1:
                        continue

                    macro_instance = self.projects.get_macro_instance(num_macros_placed)
                    instance = "{} {:<4} {:<4} N\n".format(macro_instance, start_x + col * step_x, start_y + row * step_y)
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
            for i in range(NUM_PROJECTS):
                fh.write("	")
                fh.write(self.projects.get_macro_instance(i))
                fh.write(" vccd1 vssd1 vccd1 vssd1")
                if i != NUM_PROJECTS - 1:
                    fh.write(", \\\n")
            fh.write('"\n')

        # extra_lef_gds.tcl
        logging.debug("creating extra_lef_gds.tcl")
        lefs = []
        gdss = []
        for i in range(NUM_PROJECTS):
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
        logging.debug("instantiating designs in user_project_wrapper.v")
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
            for i in range(NUM_PROJECTS):
                # instantiate template
                instance = lesson_template.format(instance=self.projects.get_macro_instance(i), name=self.projects.get_macro_name(i), id=i, next_id=i + 1)
                fh.write(instance)
            fh.write(post)

        # build the user_project_includes.v file - used for blackboxing when building the GDS
        verilogs = []
        for i in range(NUM_PROJECTS):
            verilogs.append(self.projects.get_verilog_include(i))
        verilogs = CaravelConfig.unique(verilogs)

        with open('verilog/rtl/user_project_includes.v', 'w') as fh:
            fh.write('`include "scan_controller.v"\n')
            for verilog in verilogs:
                fh.write(verilog)


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

    projects = Projects(update_cache=args.update_projects)
    caravel = CaravelConfig(projects)

    if args.update_caravel:
        caravel.create_macro_config()
        caravel.instantiate()
