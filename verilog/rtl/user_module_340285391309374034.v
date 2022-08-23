/* Automatically generated from https://wokwi.com/projects/340285391309374034 */

`default_nettype none

module user_module_340285391309374034(
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = io_in[0];
  wire net2 = io_in[1];
  wire net3 = io_in[2];
  wire net4 = io_in[3];
  wire net5 = io_in[4];
  wire net6 = io_in[5];
  wire net7 = io_in[6];
  wire net8 = io_in[7];
  wire net9;
  wire net10;
  wire net11;
  wire net12;
  wire net13;
  wire net14;
  wire net15;
  wire net16 = 1'b0;
  wire net17 = 1'b1;
  wire net18 = 1'b1;
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
  wire net31 = 1'b0;
  wire net32;
  wire net33;
  wire net34 = 1'b0;
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
  wire net56 = 1'b0;
  wire net57;
  wire net58;
  wire net59;
  wire net60;
  wire net61;
  wire net62 = 1'b0;
  wire net63 = 1'b0;
  wire net64 = 1'b0;
  wire net65 = 1'b0;
  wire net66;
  wire net67;
  wire net68;
  wire net69;
  wire net70;
  wire net71;
  wire net72;
  wire net73;
  wire net74;
  wire net75;
  wire net76;
  wire net77;
  wire net78;
  wire net79;
  wire net80;
  wire net81;
  wire net82;
  wire net83;
  wire net84;
  wire net85;
  wire net86;
  wire net87;
  wire net88;
  wire net89;
  wire net90;
  wire net91;
  wire net92;
  wire net93;
  wire net94;
  wire net95;
  wire net96;
  wire net97;
  wire net98;

  assign io_out[0] = net9;
  assign io_out[1] = net10;
  assign io_out[2] = net11;
  assign io_out[3] = net12;
  assign io_out[4] = net13;
  assign io_out[5] = net14;
  assign io_out[6] = net15;

  and_cell gate1 (

  );
  or_cell gate2 (

  );
  xor_cell gate3 (

  );
  nand_cell gate4 (

  );
  and_cell gate7 (
    .a (net3),
    .b (net2),
    .out (net19)
  );
  and_cell gate9 (
    .a (net20),
    .b (net1),
    .out (net21)
  );
  or_cell gate11 (
    .a (net19),
    .b (net21),
    .out (net22)
  );
  xor_cell gate8 (
    .a (net2),
    .b (net3),
    .out (net20)
  );
  xor_cell gate10 (
    .a (net20),
    .b (net1),
    .out (net23)
  );
  and_cell gate12 (
    .a (net4),
    .b (net5),
    .out (net24)
  );
  and_cell gate13 (
    .a (net25),
    .b (net6),
    .out (net26)
  );
  or_cell gate14 (
    .a (net24),
    .b (net26),
    .out (net27)
  );
  xor_cell gate15 (
    .a (net4),
    .b (net5),
    .out (net25)
  );
  xor_cell gate16 (
    .a (net25),
    .b (net6),
    .out (net28)
  );
  and_cell gate17 (
    .a (net7),
    .b (net8),
    .out (net29)
  );
  and_cell gate18 (
    .a (net30),
    .b (net31),
    .out (net32)
  );
  or_cell gate19 (
    .a (net29),
    .b (net32),
    .out (net33)
  );
  xor_cell gate20 (
    .a (net7),
    .b (net8),
    .out (net30)
  );
  xor_cell gate21 (
    .a (net30),
    .b (net34),
    .out (net35)
  );
  and_cell gate22 (
    .a (net23),
    .b (net28),
    .out (net36)
  );
  and_cell gate23 (
    .a (net37),
    .out (net38)
  );
  or_cell gate24 (
    .a (net36),
    .b (net38),
    .out (net39)
  );
  xor_cell gate25 (
    .a (net23),
    .b (net28),
    .out (net37)
  );
  xor_cell gate26 (
    .a (net37),
    .out (net40)
  );
  and_cell gate27 (
    .a (net22),
    .b (net27),
    .out (net41)
  );
  and_cell gate28 (
    .a (net42),
    .b (net39),
    .out (net43)
  );
  or_cell gate29 (
    .a (net41),
    .b (net43),
    .out (net44)
  );
  xor_cell gate30 (
    .a (net22),
    .b (net27),
    .out (net42)
  );
  xor_cell gate31 (
    .a (net42),
    .b (net39),
    .out (net45)
  );
  and_cell gate32 (
    .a (net40),
    .b (net35),
    .out (net46)
  );
  and_cell gate33 (
    .a (net47),
    .out (net48)
  );
  or_cell gate34 (
    .a (net46),
    .b (net48),
    .out (net49)
  );
  xor_cell gate35 (
    .a (net40),
    .b (net35),
    .out (net47)
  );
  xor_cell gate36 (
    .a (net47),
    .out (net50)
  );
  and_cell gate37 (
    .a (net45),
    .b (net33),
    .out (net51)
  );
  and_cell gate38 (
    .a (net52),
    .b (net49),
    .out (net53)
  );
  or_cell gate39 (
    .a (net51),
    .b (net53),
    .out (net54)
  );
  xor_cell gate40 (
    .a (net45),
    .b (net33),
    .out (net52)
  );
  xor_cell gate41 (
    .a (net52),
    .b (net49),
    .out (net55)
  );
  and_cell gate42 (
    .a (net44),
    .b (net56),
    .out (net57)
  );
  and_cell gate43 (
    .a (net58),
    .b (net54),
    .out (net59)
  );
  or_cell gate44 (
    .a (net57),
    .b (net59),
    .out (net60)
  );
  xor_cell gate45 (
    .a (net44),
    .b (net56),
    .out (net58)
  );
  xor_cell gate46 (
    .a (net58),
    .b (net54),
    .out (net61)
  );
  and_cell gate101 (

  );
  or_cell gate102 (

  );
  xor_cell gate103 (

  );
  nand_cell gate104 (

  );
  not_cell gate105 (

  );
  buffer_cell gate106 (

  );
  not_cell gate107 (
    .in (net50),
    .out (net66)
  );
  buffer_cell gate108 (
    .in (net50),
    .out (net67)
  );
  not_cell gate109 (
    .in (net55),
    .out (net68)
  );
  buffer_cell gate1010 (
    .in (net55),
    .out (net69)
  );
  not_cell gate1011 (
    .in (net61),
    .out (net70)
  );
  buffer_cell gate1012 (
    .in (net61),
    .out (net71)
  );
  not_cell gate1013 (
    .in (net60)
  );
  buffer_cell gate1014 (
    .in (net60),
    .out (net72)
  );
  and_cell gate1015 (
    .a (net70),
    .b (net66),
    .out (net73)
  );
  and_cell gate1016 (
    .a (net69),
    .b (net66),
    .out (net74)
  );
  or_cell gate1017 (
    .a (net73),
    .b (net74),
    .out (net13)
  );
  or_cell gate1018 (
    .a (net73),
    .b (net69),
    .out (net75)
  );
  or_cell gate1019 (
    .a (net72),
    .b (net76),
    .out (net77)
  );
  or_cell gate1020 (
    .a (net75),
    .b (net77),
    .out (net9)
  );
  and_cell gate1021 (
    .a (net71),
    .b (net67),
    .out (net76)
  );
  or_cell gate1022 (
    .a (net78),
    .b (net79),
    .out (net10)
  );
  or_cell gate1023 (
    .a (net70),
    .b (net80),
    .out (net79)
  );
  and_cell gate1024 (
    .a (net69),
    .b (net67),
    .out (net80)
  );
  and_cell gate1025 (
    .a (net68),
    .b (net66),
    .out (net78)
  );
  or_cell gate1026 (
    .a (net68),
    .b (net81),
    .out (net11)
  );
  or_cell gate1027 (
    .a (net71),
    .b (net67),
    .out (net81)
  );
  or_cell gate1028 (
    .a (net73),
    .b (net82),
    .out (net83)
  );
  and_cell gate1029 (
    .a (net70),
    .b (net69),
    .out (net82)
  );
  or_cell gate1030 (
    .a (net72),
    .b (net84),
    .out (net85)
  );
  or_cell gate1031 (
    .a (net86),
    .b (net87),
    .out (net84)
  );
  or_cell gate1032 (
    .a (net83),
    .b (net85),
    .out (net12)
  );
  and_cell gate1033 (
    .a (net71),
    .b (net88),
    .out (net87)
  );
  and_cell gate1034 (
    .a (net69),
    .b (net66),
    .out (net86)
  );
  and_cell gate1035 (
    .a (net68),
    .b (net67),
    .out (net88)
  );
  or_cell gate1036 (
    .a (net89),
    .b (net90),
    .out (net14)
  );
  or_cell gate1037 (
    .a (net91),
    .b (net92),
    .out (net89)
  );
  or_cell gate1038 (
    .a (net72),
    .b (net93),
    .out (net90)
  );
  and_cell gate1039 (
    .a (net68),
    .b (net66),
    .out (net91)
  );
  and_cell gate1040 (
    .a (net71),
    .b (net68),
    .out (net92)
  );
  and_cell gate1041 (
    .a (net71),
    .b (net66),
    .out (net93)
  );
  or_cell gate1042 (
    .a (net94),
    .b (net95),
    .out (net15)
  );
  or_cell gate1043 (
    .a (net96),
    .b (net97),
    .out (net94)
  );
  or_cell gate1044 (
    .a (net72),
    .b (net98),
    .out (net95)
  );
  and_cell gate1045 (
    .a (net70),
    .b (net69),
    .out (net96)
  );
  and_cell gate1046 (
    .a (net71),
    .b (net68),
    .out (net97)
  );
  and_cell gate1047 (
    .a (net71),
    .b (net66),
    .out (net98)
  );
endmodule
