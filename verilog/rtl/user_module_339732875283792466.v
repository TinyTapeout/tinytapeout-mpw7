/* Automatically generated from https://wokwi.com/projects/339732875283792466 */

`default_nettype none

module user_module_339732875283792466(
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = io_in[0];
  wire net2;
  wire net3 = 1'b0;
  wire net4 = 1'b1;
  wire net5 = 1'b1;
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

  assign io_out[7] = net2;

  and_cell gate1 (

  );
  or_cell gate2 (

  );
  xor_cell gate3 (

  );
  not_cell gate5 (

  );
  buffer_cell gate6 (

  );
  mux_cell mux1 (

  );
  dff_cell flipflop1 (
    .d (net6),
    .clk (net1),
    .q (net7),
    .notq (net6)
  );
  dff_cell flipflop2 (
    .d (net8),
    .clk (net7),
    .q (net9),
    .notq (net8)
  );
  dff_cell flipflop3 (
    .d (net10),
    .clk (net9),
    .q (net11),
    .notq (net10)
  );
  dff_cell flipflop4 (
    .d (net12),
    .clk (net11),
    .q (net13),
    .notq (net12)
  );
  dff_cell flipflop5 (
    .d (net14),
    .clk (net13),
    .q (net15),
    .notq (net14)
  );
  dff_cell flipflop6 (
    .d (net16),
    .clk (net15),
    .q (net17),
    .notq (net16)
  );
  dff_cell flipflop7 (
    .d (net18),
    .clk (net17),
    .q (net19),
    .notq (net18)
  );
  dff_cell flipflop8 (
    .d (net20),
    .clk (net19),
    .q (net21),
    .notq (net20)
  );
  dff_cell flipflop9 (
    .d (net22),
    .clk (net21),
    .q (net23),
    .notq (net22)
  );
  dff_cell flipflop10 (
    .d (net24),
    .clk (net23),
    .q (net25),
    .notq (net24)
  );
  dff_cell flipflop11 (
    .d (net26),
    .clk (net25),
    .q (net27),
    .notq (net26)
  );
  dff_cell flipflop12 (
    .d (net28),
    .clk (net27),
    .q (net29),
    .notq (net28)
  );
  dff_cell flipflop13 (
    .d (net30),
    .clk (net29),
    .q (net2),
    .notq (net30)
  );
endmodule
