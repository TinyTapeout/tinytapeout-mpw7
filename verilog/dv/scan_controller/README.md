# Scan Controller Testbench

This testbench can simulate the entire TinyTapeout chip, with all 498 designs
connected on a long scan chain. It can either operate in a fast mode using simple
stand-ins for the standard cells, or use the gate models provided by Skywater
with unit delays for a more detailed simulation.

Two simulators are supported:

 * `SIM=icarus` - use Icarus Verilog to simulate the design. This is the slower
   option, but supports delay annotations and can use the real Skywater PDK cells;

 * `SIM=verilator` - uses Verilator to simulate the design. This is a much faster
   option (~10x faster), but has to use simple fast models of the PDK cells rather
   than the `primitive` versions provided by Skywater. It does not support delay
   annotations;

GNU Make is used to kick-off simulations, and the testbench is written in CocoTB.
There are three common Make targets to run:

 * `make test_scan_controller` - run the simulation with the fast, simple models.
   This supports both Icarus Verilog and Verilator.

 * `make test_scan_controller_gl` - run a gate-level simulation with the real
   PDK cells and unit delays. This only supports Icarus Verilog as a simulator.

 * `make clean` - deletes all build and test artefacts.

There are a few switches which can be used with either `make test_scan_controller`
or `make test_scan_controller_gl`:

 * `WAVES=yes/no` - whether to trace VCD waves from the design (enabling this
   can have a significant impact on run speed);

 * `SIM=icarus/verilator` - select the simulator to use;
