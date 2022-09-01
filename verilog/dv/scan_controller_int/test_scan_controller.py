import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, ClockCycles, with_timeout

@cocotb.test()
async def test_start(dut):
    clock = Clock(dut.clk, 25, units="ns") # 40M
    cocotb.fork(clock.start())
   
    dut.driver_sel.value = 0b10 # internal
    dut.set_clk_div.value = 0
    dut.inputs.value = 0
    dut.active_sel.value = 0

    dut.RSTB.value = 0
    dut.power1.value = 0
    dut.power2.value = 0
    dut.power3.value = 0
    dut.power4.value = 0

    await ClockCycles(dut.clk, 8)
    dut.power1.value = 1
    await ClockCycles(dut.clk, 8)
    dut.power2.value = 1
    await ClockCycles(dut.clk, 8)
    dut.power3.value = 1
    await ClockCycles(dut.clk, 8)
    dut.power4.value = 1

    await ClockCycles(dut.clk, 80)
    dut.RSTB.value = 1

    # wait with a timeout for the project to become active
    await with_timeout(RisingEdge(dut.fw_ready), 700, 'us')
    print("firmware ready")

    # set an input
    print("checking io")
    dut.inputs.value = 0xAA
    for i in range(3):
        await FallingEdge(dut.ready)
    # and assert output follows
    assert dut.outputs.value == 0xAA

    # use the clock divider
    await ClockCycles(dut.clk, 100)
    print("checking clock divider")
    dut.RSTB.value = 0
    await RisingEdge(dut.clk)
    dut.inputs.value = 1
    dut.set_clk_div.value = 1
    await ClockCycles(dut.clk, 100)
    dut.RSTB.value = 1
    await ClockCycles(dut.clk, 2)
    dut.inputs.value = 0

    print("waiting for slow clock")
    # check slow clock output
    for i in range(2):
        await RisingEdge(dut.slow_clk)
