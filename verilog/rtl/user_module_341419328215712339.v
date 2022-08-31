`default_nettype none

//  Top level io for this module should stay the same to fit into the scan_wrapper.
//  The pin connections within the user_module are up to you,
//  although (if one is present) it is recommended to place a clock on io_in[0].
//  This allows use of the internal clock divider if you wish.
module user_module_341419328215712339(
	input [7:0] io_in, 
	output reg [7:0] io_out
);
	wire clk25 = io_in[0];
	wire [2:0]sw1 = io_in[3:1];
	reg [25:0]cnt = 0;
	always @ (posedge clk25) begin
		cnt <= cnt + 1;
	end
	wire clkslow = cnt[4 + sw1];
	reg [6:0]cntslow = 0;
	reg [2:0]cntf = 0;
	always @ (posedge clkslow) begin
		cntslow <= cntslow == 105 ? 0 : cntslow + 1;
		if (!cntslow[0]) begin
			if (cntslow >= 73) begin
				cntf <= cntf == 4 ? 0 : cntf + 1;
			end else
				cntf <= 0;
		end
	end
	reg	[2:0]finalpos;
	always @ (*) begin
		finalpos = 0;
		case (cntf)
			0: finalpos = 2;
			1: finalpos = 6;
			2: finalpos = 0;
			3: finalpos = 3;
			4: finalpos = 5;
		endcase
	end
	always @ (*) begin
		io_out = 0;
		if (cntslow >= 1 && cntslow <= 8) io_out = 8'b11111111 << (8 - cntslow);
		else if (cntslow >= 9 && cntslow <= 17) io_out = 8'b11111111 << (cntslow - 9);
		else if (cntslow >= 18 && cntslow <= 25) io_out = 8'b10000000 >> (cntslow - 18);
		else if (cntslow >= 26 && cntslow <= 33) io_out = 8'b00000001 << (cntslow - 26);
		else if (cntslow >= 35 && cntslow <= 55) io_out = cntslow[0] ? 8'b00000000 : 8'b11111111;
		else if (cntslow >= 56 && cntslow <= 72) io_out = cntslow[0] ? 8'b11110000 : 8'b00001111;
		else if (cntslow >= 73 && cntslow[0] == 0) io_out = 8'b10000000 >> finalpos;
	end
endmodule
