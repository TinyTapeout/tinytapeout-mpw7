import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, ClockCycles
from scan_wrapper import *

NUM_DESIGNS = 498

# utility functions. using 2nd bit as reset and 1st bit as clock for synchronous design examples
async def reset(dut):
    await RisingEdge(dut.ready);
    dut.inputs = 0b10
    await RisingEdge(dut.ready);
    dut.inputs = 0b11
    await RisingEdge(dut.ready);
    dut.inputs = 0b0

async def single_cycle(dut):
    await RisingEdge(dut.ready);
    dut.inputs = 0b1
    await RisingEdge(dut.ready);
    dut.inputs = 0b0

@cocotb.test()
async def test_lesson_1(dut):
    clock = Clock(dut.clk, 10, units="us")
    cocotb.fork(clock.start())

    dut.reset = 1
    dut.active_select = 12 # 7 seg seconds
    await ClockCycles(dut.clk, 10)
    dut.reset = 0

    dut.inputs = 0x00
    for i in range(10):
        print("clock {}".format(i))
        await RisingEdge(dut.ready);

