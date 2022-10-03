/* Automatically generated from https://wokwi.com/projects/341637831098106450 */

`default_nettype none

module user_module_341637831098106450(
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = io_in[0];
  wire net2 = io_in[1];
  wire net3;
  wire net4;
  wire net5;
  wire net6;
  wire net7 = 1'b1;
  wire net8 = 1'b1;
  wire net9;
  wire net10 = 1'b0;
  wire net11 = 1'b1;
  wire net12 = 1'b1;
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
  wire net25 = 1'b1;
  wire net26;
  wire net27;

  assign io_out[0] = net3;
  assign io_out[1] = net4;
  assign io_out[2] = net5;
  assign io_out[3] = net6;
  assign io_out[4] = net7;
  assign io_out[5] = net8;
  assign io_out[6] = net9;

  and_cell gate1 (

  );
  or_cell gate2 (

  );
  xor_cell gate3 (

  );
  nand_cell gate4 (

  );
  not_cell gate5 (

  );
  buffer_cell gate6 (

  );
  mux_cell mux1 (

  );
  dff_cell flipflop1 (
    .d (net13),
    .clk (net14),
    .q (net15)
  );
  and_cell gate7 (
    .a (net16),
    .b (net17),
    .out (net13)
  );
  dff_cell flipflop6 (
    .d (net18),
    .clk (net14),
    .q (net19)
  );
  and_cell gate8 (
    .a (net15),
    .b (net17),
    .out (net18)
  );
  dff_cell flipflop2 (
    .d (net20),
    .clk (net14),
    .q (net21)
  );
  and_cell gate9 (
    .a (net19),
    .b (net17),
    .out (net20)
  );
  dff_cell flipflop3 (
    .d (net22),
    .clk (net14),
    .q (net23)
  );
  and_cell gate10 (
    .a (net21),
    .b (net17),
    .out (net22)
  );
  dff_cell flipflop4 (
    .d (net24),
    .clk (net14),
    .q (net16)
  );
  or_cell gate17 (
    .a (net19),
    .b (net21)
  );
  or_cell gate18 (
    .a (net23),
    .b (net15),
    .out (net3)
  );
  buffer_cell gate19 (
    .in (net16),
    .out (net4)
  );
  buffer_cell gate20 (
    .in (net16),
    .out (net5)
  );
  not_cell gate21 (
    .in (net16),
    .out (net6)
  );
  or_cell gate22 (
    .a (net15),
    .b (net16),
    .out (net9)
  );
  not_cell gate24 (
    .in (net2),
    .out (net17)
  );
  mux_cell mux2 (
    .a (net25),
    .b (net26),
    .sel (net17),
    .out (net24)
  );
  buffer_cell gate11 (
    .in (net1),
    .out (net14)
  );
  dff_cell flipflop5 (
    .d (net27),
    .clk (net14),
    .q (net26)
  );
  and_cell gate12 (
    .a (net23),
    .b (net17),
    .out (net27)
  );
endmodule
