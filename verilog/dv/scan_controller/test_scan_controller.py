import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, ClockCycles
#from scan_wrapper import *

# utility functions. using 2nd bit as reset and 1st bit as clock for synchronous design examples
async def reset(dut):
    for i in range(2):
        print("reset cycle {}".format(i))
        await RisingEdge(dut.ready);
        dut.inputs.value = 0b10
        await RisingEdge(dut.ready);
        dut.inputs.value = 0b11
    await RisingEdge(dut.ready);
    dut.inputs.value = 0b0

async def single_cycle(dut):
    await RisingEdge(dut.ready);
    dut.inputs.value = 0b1
    await RisingEdge(dut.ready);
    dut.inputs.value = 0b0

@cocotb.test()
async def test(dut):
    clock = Clock(dut.clk, 10, units="us")
    cocotb.fork(clock.start())

    dut.reset.value = 1
    dut.active_select.value = 12 # 7 seg seconds
    await ClockCycles(dut.clk, 10)
    dut.reset.value = 0

    await reset(dut)

    dut.inputs.value = 0x00
    for i in range(15):
        print("clock {}".format(i))
        await single_cycle(dut)
