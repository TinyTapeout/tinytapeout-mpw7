[![tinytapeout](https://github.com/mattvenn/tinytapeout-mpw7/actions/workflows/tinytapeout.yaml/badge.svg)](https://github.com/mattvenn/tinytapeout-mpw7/actions/workflows/tinytapeout.yaml)

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

## Dev notes

* PDN hang issues https://github.com/The-OpenROAD-Project/OpenLane/issues/1173
* Also discovered PDN hangs if extra lefs/defs are not deduplicated
* with PDN set so dense, tapeout job fails with density checks
* with unused PDN straps turned off, precheck fails
* copied the erased version (just power rings) and deleted the first digital power rings, copy pasted that over final gds
* precheck fails with missing power ports
* manually added missing power ports to gl verilog of user_project_wrapper
* precheck passes. Will try tapeout job
* tapeout job failed with DRC, was because outer power ring was too thin. I think due to configuration rather than being cutoff for precheck
* updated missing_power_rings with correct rings and repeated, this time tapeout passes
* Tim suggests doing this as a module/cell to make it easier to reproduce
* Maximo suggests editing pdn_cfg.tcl and using the -nets option with add_pdn_stripe to force only 1st voltage domain
* This worked, see the new openlane/user_project_wrapper/pdn_cfg.tcl config
