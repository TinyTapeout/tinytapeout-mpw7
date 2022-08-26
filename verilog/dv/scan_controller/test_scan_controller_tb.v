`default_nettype none
`include "libs.ref/sky130_fd_sc_hd/verilog/primitives.v"
`include "libs.ref/sky130_fd_sc_hd/verilog/sky130_fd_sc_hd.v"

module test_scan_controller_tb(
    input wire clk,
    input wire reset,

    input wire [8:0] active_select,
    input wire [7:0] inputs,
    output wire [7:0] outputs,
    output wire ready
);

    // signals for user_project_wrapper
    wire [`MPRJ_IO_PADS-1:0] io_in;
    wire [`MPRJ_IO_PADS-1:0] io_out;
    wire [`MPRJ_IO_PADS-1:0] io_oeb;

    // map inputs to user_project_wrapper signals
    assign io_in[20:12] = active_select;
    assign io_in[28:21] = inputs;
    assign outputs = io_out[36:29];
    assign ready = io_out[37];

    `ifdef COCOTB
    initial begin
        $dumpfile ("test_scan_controller.vcd");
        $dumpvars (0, test_scan_controller);
        #1;
    end
    `endif

    user_project_wrapper user_project_wrapper(
        .wb_clk_i   (clk),
        .wb_rst_i   (rst),
        .io_in      (io_in),
        .io_out     (io_out),
        .io_oeb     (io_oeb));

endmodule
