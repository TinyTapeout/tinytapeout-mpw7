/* Automatically generated from https://wokwi.com/projects/341240110454407762 */

`default_nettype none

module user_module_341240110454407762(
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
  wire net8;
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
  wire net36;
  wire net37;
  wire net38;
  wire net39;
  wire net40;
  wire net41;
  wire net42;
  wire net43;
  wire net44;
  wire net45;
  wire net46;
  wire net47;
  wire net48;
  wire net49;
  wire net50;
  wire net51;
  wire net52;
  wire net53;
  wire net54;
  wire net55;
  wire net56;
  wire net57;
  wire net58;
  wire net59;
  wire net60;
  wire net61;
  wire net62;
  wire net63;

  assign io_out[0] = net2;
  assign io_out[1] = net3;
  assign io_out[2] = net4;
  assign io_out[3] = net5;
  assign io_out[4] = net6;
  assign io_out[5] = net7;
  assign io_out[6] = net8;
  assign io_out[7] = net9;

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

  );
  dff_cell flipflop3 (
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
  dff_cell flipflop4 (
    .d (net17),
    .clk (net16),
    .q (net18),
    .notq (net17)
  );
  dff_cell flipflop6 (
    .d (net19),
    .clk (net20),
    .q (net21),
    .notq (net19)
  );
  dff_cell flipflop7 (
    .d (net22),
    .clk (net21),
    .q (net23),
    .notq (net22)
  );
  dff_cell flipflop8 (
    .d (net24),
    .clk (net23),
    .q (net25),
    .notq (net24)
  );
  dff_cell flipflop9 (
    .d (net26),
    .clk (net25),
    .q (net27),
    .notq (net26)
  );
  dff_cell flipflop10 (
    .d (net28),
    .clk (net27),
    .q (net29),
    .notq (net28)
  );
  dff_cell flipflop11 (
    .d (net30),
    .clk (net29),
    .q (net31),
    .notq (net30)
  );
  dff_cell flipflop12 (
    .d (net32),
    .clk (net31),
    .q (net33),
    .notq (net32)
  );
  dff_cell flipflop13 (
    .d (net34),
    .clk (net33),
    .q (net35),
    .notq (net34)
  );
  dff_cell flipflop14 (
    .d (net36),
    .clk (net35),
    .q (net37),
    .notq (net36)
  );
  dff_cell flipflop15 (
    .d (net38),
    .clk (net37),
    .q (net9),
    .notq (net38)
  );
  dff_cell flipflop5 (
    .d (net39),
    .clk (net18),
    .q (net20),
    .notq (net39)
  );
  or_cell gate9 (
    .a (net40),
    .b (net41),
    .out (net42)
  );
  and_cell gate10 (
    .a (net42),
    .b (net43),
    .out (net44)
  );
  buffer_cell gate8 (
    .in (net38),
    .out (net40)
  );
  buffer_cell gate12 (
    .in (net45),
    .out (net3)
  );
  buffer_cell gate13 (
    .in (net46),
    .out (net4)
  );
  buffer_cell gate14 (
    .in (net47),
    .out (net5)
  );
  buffer_cell gate15 (
    .in (net48),
    .out (net6)
  );
  buffer_cell gate16 (
    .in (net49),
    .out (net7)
  );
  buffer_cell gate17 (
    .in (net50),
    .out (net8)
  );
  or_cell gate18 (
    .a (net37),
    .b (net34),
    .out (net51)
  );
  and_cell gate19 (
    .a (net9),
    .b (net52),
    .out (net53)
  );
  not_cell gate22 (
    .in (net51),
    .out (net52)
  );
  not_cell gate24 (

  );
  and_cell gate26 (
    .a (net54),
    .b (net55),
    .out (net2)
  );
  or_cell gate7 (
    .a (net34),
    .b (net36),
    .out (net41)
  );
  not_cell gate27 (
    .in (net8),
    .out (net43)
  );
  or_cell gate20 (
    .a (net35),
    .b (net37),
    .out (net56)
  );
  and_cell gate23 (
    .a (net9),
    .b (net57),
    .out (net58)
  );
  not_cell gate28 (
    .in (net56),
    .out (net57)
  );
  or_cell gate25 (
    .a (net58),
    .b (net53),
    .out (net59)
  );
  and_cell gate29 (
    .a (net44),
    .b (net60),
    .out (net54)
  );
  not_cell gate30 (
    .in (net59),
    .out (net60)
  );
  or_cell gate31 (
    .a (net3),
    .b (net6),
    .out (net61)
  );
  not_cell gate32 (
    .in (net61),
    .out (net55)
  );
  and_cell gate33 (
    .a (net40),
    .b (net52),
    .out (net45)
  );
  and_cell gate34 (
    .a (net53),
    .b (net62),
    .out (net46)
  );
  not_cell gate11 (
    .in (net2),
    .out (net62)
  );
  and_cell gate35 (
    .a (net58),
    .b (net62),
    .out (net47)
  );
  and_cell gate36 (
    .a (net40),
    .b (net63),
    .out (net48)
  );
  not_cell gate37 (
    .in (net41),
    .out (net63)
  );
  and_cell gate38 (
    .a (net9),
    .b (net63),
    .out (net49)
  );
  and_cell gate39 (
    .a (net37),
    .b (net34),
    .out (net50)
  );
endmodule
