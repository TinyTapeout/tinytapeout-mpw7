/* Automatically generated from https://wokwi.com/projects/339865743461974612 */

`default_nettype none

module user_module_339865743461974612(
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = io_in[4];
  wire net2 = io_in[5];
  wire net3 = io_in[6];
  wire net4 = io_in[7];
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

  assign io_out[0] = net5;
  assign io_out[1] = net6;
  assign io_out[2] = net7;
  assign io_out[3] = net8;
  assign io_out[4] = net9;
  assign io_out[5] = net10;
  assign io_out[6] = net11;

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
  not_cell gate7 (
    .in (net4),
    .out (net15)
  );
  buffer_cell gate8 (
    .in (net4),
    .out (net16)
  );
  not_cell gate9 (
    .in (net3),
    .out (net17)
  );
  buffer_cell gate10 (
    .in (net3),
    .out (net18)
  );
  not_cell gate11 (
    .in (net2),
    .out (net19)
  );
  buffer_cell gate12 (
    .in (net2),
    .out (net20)
  );
  not_cell gate13 (
    .in (net1)
  );
  buffer_cell gate14 (
    .in (net1),
    .out (net21)
  );
  and_cell gate15 (
    .a (net19),
    .b (net15),
    .out (net22)
  );
  and_cell gate16 (
    .a (net18),
    .b (net15),
    .out (net23)
  );
  or_cell gate17 (
    .a (net22),
    .b (net23),
    .out (net9)
  );
  or_cell gate18 (
    .a (net22),
    .b (net18),
    .out (net24)
  );
  or_cell gate19 (
    .a (net21),
    .b (net25),
    .out (net26)
  );
  or_cell gate20 (
    .a (net24),
    .b (net26),
    .out (net5)
  );
  and_cell gate21 (
    .a (net20),
    .b (net16),
    .out (net25)
  );
  or_cell gate22 (
    .a (net27),
    .b (net28),
    .out (net6)
  );
  or_cell gate23 (
    .a (net19),
    .b (net29),
    .out (net28)
  );
  and_cell gate24 (
    .a (net18),
    .b (net16),
    .out (net29)
  );
  and_cell gate25 (
    .a (net17),
    .b (net15),
    .out (net27)
  );
  or_cell gate26 (
    .a (net17),
    .b (net30),
    .out (net7)
  );
  or_cell gate27 (
    .a (net20),
    .b (net16),
    .out (net30)
  );
  or_cell gate28 (
    .a (net22),
    .b (net31),
    .out (net32)
  );
  and_cell gate29 (
    .a (net19),
    .b (net18),
    .out (net31)
  );
  or_cell gate30 (
    .a (net21),
    .b (net33),
    .out (net34)
  );
  or_cell gate31 (
    .a (net35),
    .b (net36),
    .out (net33)
  );
  or_cell gate32 (
    .a (net32),
    .b (net34),
    .out (net8)
  );
  and_cell gate33 (
    .a (net20),
    .b (net37),
    .out (net36)
  );
  and_cell gate34 (
    .a (net18),
    .b (net15),
    .out (net35)
  );
  and_cell gate35 (
    .a (net17),
    .b (net16),
    .out (net37)
  );
  or_cell gate36 (
    .a (net38),
    .b (net39),
    .out (net10)
  );
  or_cell gate37 (
    .a (net40),
    .b (net41),
    .out (net38)
  );
  or_cell gate38 (
    .a (net21),
    .b (net42),
    .out (net39)
  );
  and_cell gate39 (
    .a (net17),
    .b (net15),
    .out (net40)
  );
  and_cell gate40 (
    .a (net20),
    .b (net17),
    .out (net41)
  );
  and_cell gate41 (
    .a (net20),
    .b (net15),
    .out (net42)
  );
  or_cell gate42 (
    .a (net43),
    .b (net44),
    .out (net11)
  );
  or_cell gate43 (
    .a (net45),
    .b (net46),
    .out (net43)
  );
  or_cell gate44 (
    .a (net21),
    .b (net47),
    .out (net44)
  );
  and_cell gate45 (
    .a (net19),
    .b (net18),
    .out (net45)
  );
  and_cell gate46 (
    .a (net20),
    .b (net17),
    .out (net46)
  );
  and_cell gate47 (
    .a (net20),
    .b (net15),
    .out (net47)
  );
endmodule
