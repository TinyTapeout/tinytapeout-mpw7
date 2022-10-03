# Verification

* Simulation of some test projects at RTL and GL level. 
* Simulation of the whole chip with scan controller, external controller, logic analyser.
* Formal verification that each small project's scan chain is correct.
* Formal verification that the correct signals are passed through for the 3 different scan chain control modes.

# Timing constraints

* [Each small project has a negedge flop flop at the end of the shift register to reclock the data](https://github.com/mattvenn/wokwi-verilog-gds-test/blob/17f106db36f022536d013b960316bcc7f02c572c/template/scan_wrapper.v#L67). This gives more hold margin.
* [Each small project has SDC timing constraints](https://github.com/mattvenn/wokwi-verilog-gds-test/blob/main/src/base.sdc)
* [Scan controller](https://github.com/mattvenn/tinytapeout-mpw7/blob/aacae16304f4a4878943a49fd479d8a284736e32/verilog/rtl/scan_controller/scan_controller.v#L334) uses a shift register clocked with the end of the chain to ensure correct data is captured.
* [Scan controller has its own SDC timing constraints](openlane/scan_controller/base.sdc)

## Simulations

There are some testbenches that you can use to check the scan chain and controller is working.
The default of 498 projects takes a very long time to simulate, so I advise overriding the configuration first:

    # fetch the test projects
    ./configure.py --test --update-projects
    # rebuild config with only 20 projects
    ./configure.py --test --update-caravel --limit 20

### Scan controller

This test only instantiates user_project_wrapper (which contains all the small projects). It doesn't simulate the rest of the ASIC.

    cd verilog/dv/scan_controller
    make test_scan_controller

The Gate Level simulation requires scan_controller and user_project_wrapper to be re-hardened to get the correct gate level netlists: 

* Edit openlane/scan_controller/config.tcl and change NUM_DESIGNS=498 to NUM_DESIGNS=20.
* Then from the top level directory:

    make scan_controller
    make user_project_wrapper

* Then run the GL test

    cd verilog/dv/scan_controller
    make test_scan_controller_gl

### Top level test: internal control

Uses the scan controller.

    cd verilog/dv/scan_controller_int
    make coco_test

### Top level test: external control

Uses external signals to control the scan chain.

    cd verilog/dv/scan_controller_ext
    make coco_test

### Top level test: logic analyser control

Uses the RISCV co-processor to drive the scanchain with firmware.

    cd verilog/dv/scan_controller_la
    make coco_test

## Formal Verification

## Scan chain

Each GL netlist for each small project is proven to be equivalent to the reference scan chain implementation.
The verification is done on the GL netlist, so an RTL version of the cells used needed to be created.
See [here for more info](tinytapeout_scan/README.md).

## Scan controller MUX

In case the internal scan controller doesn't work, we also have ability to control the chain from external pins or the Caravel Logic Analyser.
We implement a simple MUX to achieve this and [formally prove it is correct](verilog/rtl/scan_controller/properties.v).
