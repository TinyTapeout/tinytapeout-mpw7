/* Automatically generated from https://wokwi.com/projects/339502597164499540 */

`default_nettype none

module user_module_339502597164499540(
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = io_in[0];
  wire net2;
  wire net3;
  wire net4;
  wire net5;
  wire net6;
  wire net7;
  wire net8 = 1'b0;
  wire net9 = 1'b1;
  wire net10 = 1'b1;
  wire net11;
  wire net12;
  wire net13;
  wire net14;
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
  wire net27;
  wire net28;
  wire net29;
  wire net30;
  wire net31;
  wire net32;
  wire net33;
  wire net34;
  wire net35;

  assign io_out[0] = net2;
  assign io_out[1] = net3;
  assign io_out[2] = net4;
  assign io_out[3] = net5;
  assign io_out[4] = net6;
  assign io_out[5] = net7;

  dff_cell flipflop3 (
    .d (net11),
    .clk (net12),
    .q (net2)
  );
  dff_cell flipflop4 (
    .d (net2),
    .clk (net12),
    .q (net3)
  );
  dff_cell flipflop5 (
    .d (net3),
    .clk (net12),
    .q (net4)
  );
  dff_cell flipflop6 (
    .d (net4),
    .clk (net12),
    .q (net5)
  );
  dff_cell flipflop7 (
    .d (net5),
    .clk (net12),
    .q (net6)
  );
  dff_cell flipflop8 (
    .d (net6),
    .clk (net12),
    .q (net7),
    .notq (net11)
  );
  dff_cell flipflop1 (
    .d (net13),
    .clk (net1),
    .q (net14),
    .notq (net13)
  );
  dff_cell flipflop2 (
    .d (net15),
    .clk (net14),
    .q (net16),
    .notq (net15)
  );
  dff_cell flipflop9 (
    .d (net17),
    .clk (net16),
    .q (net18),
    .notq (net17)
  );
  dff_cell flipflop10 (
    .d (net19),
    .clk (net18),
    .q (net20),
    .notq (net19)
  );
  dff_cell flipflop11 (
    .d (net21),
    .clk (net20),
    .q (net22),
    .notq (net21)
  );
  dff_cell flipflop12 (
    .d (net23),
    .clk (net22),
    .q (net24),
    .notq (net23)
  );
  dff_cell flipflop13 (
    .d (net25),
    .clk (net24),
    .q (net26),
    .notq (net25)
  );
  dff_cell flipflop14 (
    .d (net27),
    .clk (net26),
    .q (net28),
    .notq (net27)
  );
  dff_cell flipflop15 (
    .d (net29),
    .clk (net28),
    .q (net30),
    .notq (net29)
  );
  dff_cell flipflop16 (
    .d (net31),
    .clk (net30),
    .q (net32),
    .notq (net31)
  );
  dff_cell flipflop17 (
    .d (net33),
    .clk (net32),
    .q (net34),
    .notq (net33)
  );
  dff_cell flipflop18 (
    .d (net35),
    .clk (net34),
    .q (net12),
    .notq (net35)
  );
endmodule
