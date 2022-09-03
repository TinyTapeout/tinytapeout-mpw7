/*
 * user_module_341426151397261906.v
 */

`default_nettype none

module user_module_341426151397261906 (
	input  wire  [7:0] io_in,
	output wire  [7:0] io_out
);

	// If io_in[0] is clock, STA doesn't like direct feedback
	reg toggle;

	always @(posedge io_in[0])
		toggle <= ~toggle;

	assign io_out = { io_in[7:1], toggle };

endmodule // user_module_341426151397261906
