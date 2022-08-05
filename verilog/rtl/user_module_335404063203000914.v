/* Automatically generated from https://wokwi.com/projects/335404063203000914 */

module user_module_335404063203000914(
  input reset,
  input clk,
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = clk;
  wire net2;
  wire net3;
  wire net4;
  wire net5;
  wire net6;
  wire net7;
  wire net8;
  wire net9;
  wire net10;
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
  wire net36 = 1'b0;
  wire net37;
  wire net38;

  assign io_out[0] = net31;
  assign io_out[1] = net32;
  assign io_out[2] = net33;
  assign io_out[3] = net34;
  assign io_out[4] = net35;

  dff_cell flipflop4 (
    .d (net2),
    .clk (net1),
    .q (net3),
    .notq (net2)
  );
  dff_cell flipflop5 (
    .d (net4),
    .clk (net3),
    .q (net5),
    .notq (net4)
  );
  dff_cell flipflop6 (
    .d (net6),
    .clk (net5),
    .q (net7),
    .notq (net6)
  );
  dff_cell flipflop7 (
    .d (net8),
    .clk (net7),
    .q (net9),
    .notq (net8)
  );
  dff_cell flipflop8 (
    .d (net10),
    .clk (net9),
    .q (net11),
    .notq (net10)
  );
  dff_cell flipflop2 (
    .d (net12),
    .clk (net11),
    .q (net13),
    .notq (net12)
  );
  dff_cell flipflop3 (
    .d (net14),
    .clk (net13),
    .q (net15),
    .notq (net14)
  );
  dff_cell flipflop9 (
    .d (net16),
    .clk (net15),
    .q (net17),
    .notq (net16)
  );
  dff_cell flipflop10 (
    .d (net18),
    .clk (net17),
    .q (net19),
    .notq (net18)
  );
  dff_cell flipflop11 (
    .d (net20),
    .clk (net19),
    .q (net21),
    .notq (net20)
  );
  dff_cell flipflop12 (
    .d (net22),
    .clk (net21),
    .q (net23),
    .notq (net22)
  );
  dff_cell flipflop13 (
    .d (net24),
    .clk (net23),
    .q (net25),
    .notq (net24)
  );
  dff_cell flipflop14 (
    .d (net26),
    .clk (net25),
    .notq (net26)
  );
  dff_cell flipflop1 (
    .d (net27),
    .clk (net23),
    .q (net28)
  );
  dff_cell flipflop15 (
    .d (net29),
    .clk (net23),
    .q (net30)
  );
  dff_cell flipflop16 (
    .d (net30),
    .clk (net23),
    .q (net27)
  );
  dff_cell flipflop17 (
    .d (net28),
    .clk (net23),
    .q (net37)
  );
  dff_cell flipflop18 (
    .d (net37),
    .clk (net23),
    .q (net38),
    .notq (net29)
  );
endmodule
