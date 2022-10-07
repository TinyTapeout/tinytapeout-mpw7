`default_nettype none

module test_scan_controller_tb(
    input wire clk,
    input wire reset,

    input wire [1:0] driver_sel,
    input wire [8:0] active_select,
    input wire [7:0] inputs,
    input wire set_clk_div,
    output wire [7:0] outputs,
    output wire ready,
    output wire slow_clk
);

    // signals for user_project_wrapper
    wire [`MPRJ_IO_PADS-1:0] io_in;
    wire [`MPRJ_IO_PADS-1:0] io_out;
    wire [`MPRJ_IO_PADS-1:0] io_oeb;

    // map inputs to user_project_wrapper signals
    assign io_in[20:12] = active_select;
    assign io_in[28:21] = inputs;
    assign io_in[11]    = set_clk_div;
    assign io_in[9:8]  = driver_sel;
    assign outputs = io_out[36:29];
    assign ready = io_out[37];
    assign slow_clk = io_out[10];

    // 7 seg signals
    wire [6:0] seven_seg = outputs[6:0];

    `ifdef SIM_ICARUS
    initial begin
        string f_name;
        $timeformat(-9, 2, " ns", 20);
        if ($value$plusargs("WAVE_FILE=%s", f_name)) begin
            $display("%0t: Capturing wave file %s", $time, f_name);
            $dumpfile(f_name);
            $dumpvars(0, test_scan_controller_tb);
        end else begin
            $display("%0t: No filename provided - disabling wave capture", $time);
        end
    end
    `endif

    user_project_wrapper user_project_wrapper(
    `ifdef GL_TEST
        .vccd1( 1'b1),
        .vssd1( 1'b0),
    `endif
        .wb_clk_i   (clk),
        .wb_rst_i   (reset),
        .io_in      (io_in),
        .io_out     (io_out),
        .io_oeb     (io_oeb));

endmodule
