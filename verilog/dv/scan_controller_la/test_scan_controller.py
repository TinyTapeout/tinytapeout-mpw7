import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, ClockCycles, with_timeout

@cocotb.test()
async def test_start(dut):
    clock = Clock(dut.clk, 25, units="ns") # 40M
    cocotb.fork(clock.start())
   
    dut.driver_sel.value = 0b01 # logic analyser
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
    await with_timeout(RisingEdge(dut.fw_ready), 550, 'us')
    print("firmware ready")

    print("waiting for LA to clock the scan chain - warning this will take about 15 minutes")
    # wait a long time
    step = 0
    NUM_IOS=8
    NUM_DESIGNS=20
    START_TEST=(NUM_DESIGNS-1)*NUM_IOS

    for i in range(NUM_IOS*NUM_DESIGNS):
        await with_timeout(FallingEdge(dut.tb_clk), 2, 'ms')
        print("step {} of {} received data {}".format(step, NUM_IOS*NUM_DESIGNS, dut.data_rx.value))
        step += 1
        if i in [START_TEST, START_TEST+1, START_TEST+2, START_TEST+3]:
            assert dut.data_rx.value == 1
        elif i in [START_TEST+4, START_TEST+5, START_TEST+6, START_TEST+7]:
            assert dut.data_rx.value == 0
            
    await with_timeout(RisingEdge(dut.fw_done), 500, 'us')
    assert(dut.fw_done.value == 1)

    await ClockCycles(dut.clk, 100)

