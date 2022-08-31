`default_nettype none

module user_module_341359304823013970 (
	input  wire [7:0] io_in, 
	output wire [7:0] io_out
);

async_rr_arbiter_341359304823013970 #(
	.REQUESTORS(8)
) arb (
	.request(io_in),
	.grant(io_out)
);

endmodule

module async_rr_arbiter_341359304823013970 #(
	parameter REQUESTORS = 8
) (
	input  wire [REQUESTORS-1:0] request,
	output wire [REQUESTORS-1:0] grant
);

reg  [$clog2(REQUESTORS)-1:0] selection;
wire [$clog2(REQUESTORS)-1:0] selection_delayed;
wire [$clog2(REQUESTORS)-1:0] next_selection;
reg  [$clog2(REQUESTORS)-1:0] selection_gray;
wire [$clog2(REQUESTORS)-1:0] next_selection_gray;
wire [REQUESTORS-1:0]         selection_gray_oh;

wire                          any_req;
wire                          any_grant;
wire                          inc_selection;

always @* begin
	if (any_req && !any_grant) begin
		selection      <= next_selection;
		selection_gray <= next_selection_gray;
	end
end

initial selection          = '0;

delay_341359304823013970 #(.LEN(4)) sel_delay [$clog2(REQUESTORS)-1:0] (
	.in(selection),
	.out(selection_delayed)
);

assign next_selection      = selection_delayed + 1'b1;
assign next_selection_gray = next_selection ^ {1'b0, next_selection[$clog2(REQUESTORS)-1:1]};
assign selection_gray_oh   = 1'b1 << selection_gray;

assign grant               = request & selection_gray_oh;
assign any_req             = |request;
assign any_grant           = |grant;

endmodule

module delay_341359304823013970 #(
	parameter LEN = 1
) (
	input  in,
	output out
);

assign stages[0] = in;
assign out       = stages[LEN];

`ifdef SYNTHESIS
wire [LEN:0] stages;

(* keep, dont_touch *) sky130_fd_sc_hd__dlymetal6s6s_1 delay [LEN-1:0] (
	.A(stages[LEN-1:0]),
	.X(stages[LEN:1]),
	.VPWR(1'b1),
	.VGND(1'b0)
);

`else

reg [LEN:0] stages;
always @* stages[LEN:1] <= #1 stages[LEN-1:0];

`endif

endmodule
