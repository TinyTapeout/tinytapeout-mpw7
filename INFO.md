# Instructions to build

## Fetch all the projects

    ./configure.py --update-projects

## Configure Caravel

    ./configure.py --update-caravel

## Build the GDS

    make user_project_wrapper

## Simulations

### Scan controller

There are some testbenches that you can use to check the scan chain and controller is working.
The default of 498 projects takes a very long time to simulate, so I advise overriding the configuration first:

    # rebuild config with only 20 projects
    ./configure.py --test --update-caravel --limit 20

Then run the test:

    cd verilog/dv/scan_controller
    # you will also need to set your PDK_ROOT environment variable
    make test_scan_controller

The Gate Level version (requires scan_controller and user_project_wrapper to be re-hardened to get the correct gate level netlists. These files are avaialable in the gl_test branch).

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

## Clocking

Assuming:

* 100MHz input clock
* 8 ins & 8 outs
* 2 clock cycles to push one bit through the scan chain (scan clock is half input clock rate)
* 500 designs

So the max refresh rate is 100MHz / (16 * 2 * 500) = 6250Hz.

## Clock divider

The set_clk_div input will capture what is set on the input pins and use this as a divider for an internal slow clock that can be provided to the first input bit.

The slow clock is only enabled if the set_clk_div is set, and the resulting clock is output on the slow_clk pin.

As the refresh rate is 6250Hz (see above) and the input clock is 100MHz, we add the input to 13, to create an adjustable divider between 14 and 22 bits. This results in an adjustable slow clock between ~4800Hz & ~16Hz.

## Pinout

    PIN     NAME                DESCRIPTION
    20:12   active_select       9 bit input to set which design is active
    28:21   inputs              8 inputs
    36:29   outputs             8 outputs
    37      ready               goes high for one cycle everytime the scanchain is refreshed
    10      slow_clk            slow clock from internal clock divider
    11      set_clk_div         enable clock divider
    9:8     driver_sel          which scan chain driver: 00 = external, 01 = logic analyzer, 1x = internal

    21      ext_scan_clk_out    for external driver, clk input
    22      ext_scan_data_out   data input
    23      ext_scan_select     scan select
    24      ext_scan_latch_en   latch
    29      ext_scan_clk_in     clk output from end of chain
    30      ext_scan_data_in    data output from end of chain

## Scan chain structure

![block diagram](pics/block_diagram.png)

![read](pics/read.png)

[read wavedrom diagram](https://wavedrom.com/editor.html?%7Bsignal%3A%20%5B%0A%20%20%7Bname%3A%20%27clk%27%2C%20wave%3A%20%27p.....%27%7D%2C%0A%20%20%7Bname%3A%20%27scan%20en%27%2C%20wave%3A%20%27010...%27%7D%2C%0A%20%20%7Bname%3A%20%27latch%27%2C%20wave%3A%20%270.....%27%7D%2C%0A%20%20%7Bname%3A%20%27data%20o%27%2C%20wave%3A%20%27x.....%27%7D%2C%0A%20%20%7Bname%3A%20%27data%20i%27%2C%20wave%3A%20%270.1010%27%7D%2C%0A%5D%2C%0Ahead%3A%7B%0A%20%20%20text%3A%27Capture%20outputs%201010%27%2C%0A%20%20%20tick%3A0%2C%0A%20%20%20every%3A1%0A%20%7D%7D%0A)

![load](pics/load.png)

[load wavedrom diagram](https://wavedrom.com/editor.html?%7Bsignal%3A%20%5B%0A%20%20%7Bname%3A%20%27clk%27%2C%20wave%3A%20%27p...l.%27%7D%2C%0A%20%20%7Bname%3A%20%27scan%20en%27%2C%20wave%3A%20%270.....%27%7D%2C%0A%20%20%7Bname%3A%20%27latch%27%2C%20wave%3A%20%270...10%27%7D%2C%0A%20%20%7Bname%3A%20%27data%20o%27%2C%20wave%3A%20%2701010.%27%7D%2C%0A%20%20%7Bname%3A%20%27data%20i%27%2C%20wave%3A%20%27x.....%27%7D%2C%0A%0A%5D%2C%0Ahead%3A%7B%0A%20%20%20text%3A%27Load%20inputs%20with%200101%27%2C%0A%20%20%20tick%3A0%2C%0A%20%20%20every%3A1%0A%20%7D%7D%0A)

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

