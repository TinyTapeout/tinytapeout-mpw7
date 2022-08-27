/* Automatically generated from https://wokwi.com/projects/341178154799333971 */

`default_nettype none

module user_module_341178154799333971(
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = io_in[0];
  wire net2 = io_in[1];
  wire net3 = io_in[2];
  wire net4;
  wire net5;
  wire net6;
  wire net7;
  wire net8;
  wire net9;
  wire net10;
  wire net11;
  wire net12 = 1'b0;
  wire net13 = 1'b1;
  wire net14 = 1'b1;
  wire net15;
  wire net16;
  wire net17;
  wire net18;
  wire net19;
  wire net20;
  wire net21;
  wire net22;
  wire net23;
  wire net24;
  wire net25;
  wire net26;

  assign io_out[0] = net4;
  assign io_out[1] = net5;
  assign io_out[2] = net6;
  assign io_out[3] = net7;
  assign io_out[4] = net8;
  assign io_out[5] = net9;
  assign io_out[6] = net10;
  assign io_out[7] = net11;

  xor_cell gate3 (
    .a (net15),
    .b (net6),
    .out (net16)
  );
  mux_cell mux1 (
    .a (net2),
    .b (net16),
    .sel (net3),
    .out (net17)
  );
  dff_cell flipflop2 (
    .d (net17),
    .clk (net1),
    .q (net18)
  );
  dff_cell flipflop3 (
    .d (net18),
    .clk (net1),
    .q (net19)
  );
  dff_cell flipflop4 (
    .d (net19),
    .clk (net1),
    .q (net20)
  );
  dff_cell flipflop5 (
    .d (net20),
    .clk (net1),
    .q (net21)
  );
  dff_cell flipflop6 (
    .d (net22),
    .clk (net1),
    .q (net23)
  );
  dff_cell flipflop7 (
    .d (net21),
    .clk (net1),
    .q (net22)
  );
  dff_cell flipflop8 (
    .d (net23),
    .clk (net1),
    .q (net24)
  );
  dff_cell flipflop9 (
    .d (net24),
    .clk (net1),
    .q (net25)
  );
  dff_cell flipflop10 (
    .d (net25),
    .clk (net1),
    .q (net4)
  );
  dff_cell flipflop11 (
    .d (net4),
    .clk (net1),
    .q (net5)
  );
  dff_cell flipflop12 (
    .d (net5),
    .clk (net1),
    .q (net6)
  );
  dff_cell flipflop13 (
    .d (net6),
    .clk (net1),
    .q (net7)
  );
  dff_cell flipflop14 (
    .d (net7),
    .clk (net1),
    .q (net8)
  );
  dff_cell flipflop15 (
    .d (net8),
    .clk (net1),
    .q (net9)
  );
  dff_cell flipflop16 (
    .d (net9),
    .clk (net1),
    .q (net10)
  );
  xor_cell gate7 (
    .a (net26),
    .b (net8),
    .out (net15)
  );
  xor_cell gate8 (
    .a (net11),
    .b (net9),
    .out (net26)
  );
  dff_cell flipflop1 (
    .d (net10),
    .clk (net1),
    .q (net11)
  );
endmodule
