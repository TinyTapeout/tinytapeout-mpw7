import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, ClockCycles

# utility functions. using 2nd bit as reset and 1st bit as clock for synchronous design examples
async def reset(dut):
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

def decode_seg(value):
    try:
        if value == 0b0111111: return 0
        if value == 0b0000110: return 1
        if value == 0b1011011: return 2
        if value == 0b1001111: return 3
        if value == 0b1100110: return 4
        if value == 0b1101101: return 5
        if value == 0b1111101: return 6
        if value == 0b0000111: return 7
        if value == 0b1111111: return 8
        if value == 0b1101111: return 9
    except ValueError:
        return '?'

@cocotb.test()
async def test(dut):
    clock = Clock(dut.clk, 10, units="us")
    cocotb.fork(clock.start())

    dut.reset.value = 1
    dut.clk_div.value = 5
    dut.active_select.value = 12 # 7 seg seconds
    dut.inputs.value = 0
    await ClockCycles(dut.clk, 10)
    dut.reset.value = 0

    # these are gonna need to know what the clock div is set to
    await reset(dut)
    await single_cycle(dut)
    await single_cycle(dut)

    for i in range(10):
        print("clock {:2} 7seg {}".format(i, decode_seg(dut.seven_seg.value)))
        #assert decode_seg(dut.seven_seg.value) == i
        await single_cycle(dut)
