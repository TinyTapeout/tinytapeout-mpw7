import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, ClockCycles, Timer
clock_period_ns = 10

def convert_to_int(data):
    num = 0
    for i in range(8):
        if data[7-i]:
            num += (1 << i)
    return num

async def scan_clock(dut, cycles=1):
    for i in range(cycles):
        dut.clk_in.value = 1
        await Timer(clock_period_ns, units='ns')
        dut.clk_in.value = 0
        await Timer(clock_period_ns, units='ns')

async def preload(dut):
    # prepare for loading the scan chain
    dut.scan_select_in.value = 0
    dut.latch_enable_in.value = 0
    #dut.data_in.value = 0
    await scan_clock(dut, 1) 

async def latch(dut):
    # latch the data from the chain into the module
    dut.latch_enable_in.value = 1
    await Timer(clock_period_ns, units='ns')
    dut.latch_enable_in.value = 0

async def capture_data(dut):
    # capture the module's output into the scan chain
    data = []
    dut.scan_select_in.value = 1
    await scan_clock(dut, 1) 

    # dump the data out of the chain
    dut.scan_select_in.value = 0
    for i in range(8):
        await scan_clock(dut, 1) 
        data.append(dut.data_out.value)
    return data

async def reset(dut):
    data = [0, 0, 0, 0, 0, 0, 1, 0]
    await load_data(dut, data)
    data = [0, 0, 0, 0, 0, 0, 1, 1]
    await load_data(dut, data)
    data = [0, 0, 0, 0, 0, 0, 0, 0]
    await load_data(dut, data)

async def single_cycle(dut):
    data = [0, 0, 0, 0, 0, 0, 0, 1]
    await load_data(dut, data)
    data = [0, 0, 0, 0, 0, 0, 0, 0]
    await load_data(dut, data)

async def load_data(dut, data):
    await preload(dut)
    for i in range(8):
        dut.data_in.value = data[i]
        await scan_clock(dut, 1) 
    # TODO why have to wait an extra cycle here?
    await scan_clock(dut, 1) 
    await latch(dut)

