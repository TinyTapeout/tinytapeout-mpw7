# TinyTapeout

See https://tinytapeout.com for more information on the project and how to get involved.

![tiny tapeout](tinytapeout.png)

# Instructions to build

## Fetch all the projects

    ./configure --update-projects

## Configure Caravel

    ./configure --update-caravel

## Build the GDS

    make user_project_wrapper

## Fix PDN

See progress notes below.

Start klayout in edit mode:

    klayout -e -l ~/work/asic-workshop/openlane_summary/klayout_gds.xml gds/user_project_wrapper.gds missing_power_rings.gds

* copy met4, via4, met5 from missing_power_rings.gsd into gds/user_project_wrapper.gds. Save it.

Edit verilog/gl/user_project_wrapper.v and add the missing power ports:

    vdda1,
    vdda2,
    vssa1,
    vssa2,
    vssd1,
    vssd2,
    
    ...
    
    input vdda1;
    input vdda2;
    input vssa1;
    input vssa2;
    input vssd1;
    input vssd2;

# Progress notes

* PDN hang issues https://github.com/The-OpenROAD-Project/OpenLane/issues/1173
* Also discovered PDN hangs if extra lefs/defs are not deduplicated
* with PDN set so dense, tapeout job fails with density checks
* with unused PDN straps turned off, precheck fails
* copied the erased version (just power rings) and deleted the first digital power rings, copy pasted that over final gds
* precheck fails with missing power ports
* manually added missing power ports to gl verilog of user_project_wrapper
* precheck passes. Will try tapeout job
