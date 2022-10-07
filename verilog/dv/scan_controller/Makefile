# cocotb setup
export COCOTB_REDUCED_LOG_FMT=1

# When executing the '_gl' rule, force GATES to 'yes'
ifneq ($(filter test_scan_controller_gl,$(MAKECMDGOALS)),)
  GATES := yes
else
  GATES ?= no
endif

export USER_PROJECT_VERILOG := $(abspath ../../../verilog)

SIM           ?= icarus
WAVES         ?= no
TOPLEVEL      ?= test_scan_controller_tb
MODULE        ?= test_scan_controller
TOPLEVEL_LANG ?= verilog
COMPILE_ARGS  += -DUSE_POWER_PINS
COMPILE_ARGS  += -DMPRJ_IO_PADS=38
COMPILE_ARGS  += -DSIM_$(shell echo $(SIM) | tr a-z A-Z)=1

# Additional arguments to support Verilator
ifeq ($(SIM),verilator)
  COMPILE_ARGS += $(abspath lint.cfg)
  COMPILE_ARGS += --timescale 1ns/1ps
  COMPILE_ARGS += --timescale-override 1ns/1ps
  COMPILE_ARGS += -Wno-TIMESCALEMOD
  COMPILE_ARGS += -Wno-fatal
  # Verilator can't turn wave capture on and off dynamically, so instead compile
  # a specific variant with capture supported
  ifeq ($(WAVES),yes)
    COMPILE_ARGS += --trace-fst
    SIM_BUILD    := sim_build_waves
  endif
  ifeq ($(GATES),yes)
    $(info ERROR: Cannot perform gate-level simulation with Verilator)
    $(error 1)
  endif
else ifeq ($(SIM),icarus)
  ifeq ($(WAVES),yes)
    PLUSARGS += +WAVE_FILE=test_scan_controller.vcd
  endif
endif

# Alter behaviour between GLS & fast functional sims
ifeq ($(GATES),yes)
  COMPILE_ARGS    += -f $(abspath ../../includes/includes.gl.caravel_user_project)
  COMPILE_ARGS    += -DGL_TEST
  COMPILE_ARGS    += -DFUNCTIONAL
  COMPILE_ARGS    += -DSIM
  COMPILE_ARGS    += -DUNIT_DELAY=#1
  VERILOG_SOURCES += $(PDK_ROOT)/sky130A/libs.ref/sky130_fd_sc_hd/verilog/primitives.v
  VERILOG_SOURCES += $(PDK_ROOT)/sky130A/libs.ref/sky130_fd_sc_hd/verilog/sky130_fd_sc_hd.v
  SIM_BUILD       := sim_build_gates
else
  COMPILE_ARGS    += -f $(abspath ../../includes/includes.rtl.caravel_user_project)
  VERILOG_SOURCES += $(abspath ../../rtl/fast/sky130_fd_sc_hd_fast.v)
endif

# Standard sources
VERILOG_SOURCES += $(abspath test_scan_controller_tb.v)

PYTHON_PATHS += $(abspath .)
export PYTHONPATH := $(subst $(SPACE),:,$(PYTHON_PATHS)):$(PYTHONPATH)

include $(shell cocotb-config --makefiles)/Makefile.sim

# ==============================================================================
# Simulation
# ==============================================================================

.PHONY: test_single
test_single: TESTCASE=test_single
test_single: $(COCOTB_RESULTS_FILE)

.PHONY: test_wait_state
test_wait_state: TESTCASE=wait_state
test_wait_state: $(COCOTB_RESULTS_FILE)

.PHONY: test_clock_div
test_clock_div: TESTCASE=clock_div
test_clock_div: $(COCOTB_RESULTS_FILE)

.PHONY: test_scan_controller
test_scan_controller: TESTCASE=internal_controller
test_scan_controller: $(COCOTB_RESULTS_FILE)

.PHONY: test_scan_controller_gl
test_scan_controller_gl: TESTCASE=internal_controller
test_scan_controller_gl: $(COCOTB_RESULTS_FILE)
