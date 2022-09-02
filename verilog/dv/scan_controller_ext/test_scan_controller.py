import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, ClockCycles, with_timeout

@cocotb.test()
async def test_start(dut):
    clock = Clock(dut.clk, 25, units="ns") # 40M
    cocotb.fork(clock.start())
   
    dut.driver_sel.value = 0b00 # external
    dut.ext_clk.value = 0
    dut.ext_latch.value = 0
    dut.ext_scan.value = 0
    dut.ext_data_in.value = 0

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
    await with_timeout(RisingEdge(dut.fw_ready), 650, 'us')
    print("firmware ready")

    # send some data in
    dut.ext_data_in.value = 1
    for i in range(8):
        dut.ext_clk.value = 1
        await ClockCycles(dut.clk, 1)
        dut.ext_clk.value = 0
        await ClockCycles(dut.clk, 1)
        if i == 3:
            dut.ext_data_in.value = 0

    # latch it
    dut.ext_latch.value = 1
    await ClockCycles(dut.clk, 1)
    dut.ext_latch.value = 0
    await ClockCycles(dut.clk, 1)

    # scan enable
    dut.ext_scan.value = 1
    dut.ext_clk.value = 1
    await ClockCycles(dut.clk, 1)
    dut.ext_scan.value = 0

    # drive the data out
    for i in range(8*20):
        dut.ext_clk.value = 1
        await ClockCycles(dut.clk, 1)
        dut.ext_clk.value = 0
        await ClockCycles(dut.clk, 1)
        if i in [152, 153, 154, 155]:
            assert(dut.ext_data_out.value == 1)
        elif i in [156, 157, 158, 159]:
            assert(dut.ext_data_out.value == 0)

