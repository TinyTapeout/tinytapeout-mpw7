# cocotb setup
export COCOTB_REDUCED_LOG_FMT=1

COMPILE_ARGS=-I $(PDK_ROOT)/sky130A/ 

include $(shell cocotb-config --makefiles)/Makefile.sim
export PYTHONPATH := test

export USER_PROJECT_VERILOG=../../../verilog

test_scan_controller:
	rm -rf sim_build/
	mkdir sim_build/
	iverilog -DUSE_POWER_PINS -DMPRJ_IO_PADS=38 -DCOCOTB -o sim_build/sim.vvp -s test_scan_controller_tb -g2012 test_scan_controller_tb.v -I $(PDK_ROOT)/sky130A/ -f../../includes/includes.rtl.caravel_user_project
	MODULE=test_scan_controller vvp -M $$(cocotb-config --prefix)/cocotb/libs -m libcocotbvpi_icarus sim_build/sim.vvp
	! grep failure results.xml

clean::
	rm -rf *vcd sim_build test/__pycache__

.PHONY: clean
