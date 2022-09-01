import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, ClockCycles, with_timeout

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
async def internal_controller(dut):
    clock = Clock(dut.clk, 100, units="ns") # 10 MHz
    cocotb.fork(clock.start())

    dut.reset.value = 1
    dut.set_clk_div.value = 0
    dut.driver_sel.value = 0b10   # internal controller
    dut.active_select.value = 1 # 7 seg seconds
    await ClockCycles(dut.clk, 10)
    dut.reset.value = 0
    dut.inputs.value = 0
    dut.set_clk_div.value = 1   # lock in the new clock divider value
    await ClockCycles(dut.clk, 1)
    dut.inputs.value = 0

    # reset: set bit 1 high, wait for one cycle of slow_clk, then set bit 1 low
    dut.inputs.value = 0b10
    await RisingEdge(dut.slow_clk)
    await RisingEdge(dut.slow_clk)
    await FallingEdge(dut.slow_clk)
    dut.inputs.value = 0

    # sync to display, GL and RTL have different times to start
    print("sync to display")
    count = 10
    while count > 0:
        await FallingEdge(dut.slow_clk)
        if decode_seg(dut.seven_seg.value) == 0:
            break
        count -= 1

    # check all segments
    for i in range(10):
        print("clock {:2} 7seg {}".format(i, decode_seg(dut.seven_seg.value)))
        assert decode_seg(dut.seven_seg.value) == i
        await FallingEdge(dut.slow_clk)

    print("straight test")
    dut.set_clk_div.value = 0   # no clock div
    dut.active_select.value = 0 # straight
    await FallingEdge(dut.ready)
    for i in range(11):
        dut.inputs.value = i
        await FallingEdge(dut.ready)
        print(i, int(dut.outputs))
        if i > 0:
            assert i == int(dut.outputs) + 1

    print("invert test")
    dut.active_select.value = 2 # invert
    dut.inputs.value = 0
    await FallingEdge(dut.ready)
    await FallingEdge(dut.ready)
    for i in range(11):
        dut.inputs.value = i
        await FallingEdge(dut.ready)
        print(i, int(dut.outputs))
        if i > 0:
            assert 256 - i == int(dut.outputs)

    for design in range(10): # next 10 designs are all straight
        print("straight test at pos {}".format(design))
        dut.active_select.value = 3 + design 
        await FallingEdge(dut.ready)
        for i in range(11):
            dut.inputs.value = i
            await FallingEdge(dut.ready)
            print(i, int(dut.outputs))
            if i > 0:
                assert i == int(dut.outputs) + 1
    
