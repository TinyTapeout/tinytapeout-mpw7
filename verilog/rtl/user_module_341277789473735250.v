/* Automatically generated from https://wokwi.com/projects/341277789473735250 */

`default_nettype none

module user_module_341277789473735250(
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
  wire net55 = 1'b0;
  wire net56;
  wire net57 = 1'b0;
  wire net58;
  wire net59 = 1'b0;
  wire net60;
  wire net61;
  wire net62;
  wire net63;
  wire net64;
  wire net65;
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
  wire net99;
  wire net100;
  wire net101;
  wire net102;
  wire net103;
  wire net104;
  wire net105;
  wire net106;
  wire net107;
  wire net108;
  wire net109;
  wire net110;
  wire net111;
  wire net112;
  wire net113;
  wire net114;
  wire net115;
  wire net116;
  wire net117;
  wire net118;
  wire net119;
  wire net120;
  wire net121;
  wire net122;
  wire net123;
  wire net124;
  wire net125;
  wire net126;
  wire net127;
  wire net128;
  wire net129;
  wire net130;

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
  not_cell gate5 (

  );
  buffer_cell gate6 (

  );
  mux_cell mux1 (

  );
  dff_cell flipflop1 (

  );
  or_cell gate7 (
    .a (net18),
    .b (net19),
    .out (net15)
  );
  or_cell gate9 (
    .a (net20),
    .b (net21),
    .out (net14)
  );
  or_cell gate10 (
    .a (net22),
    .b (net23),
    .out (net13)
  );
  or_cell gate11 (
    .a (net24),
    .b (net25),
    .out (net11)
  );
  or_cell gate12 (
    .a (net26),
    .b (net27),
    .out (net12)
  );
  or_cell gate13 (
    .a (net28),
    .b (net29),
    .out (net10)
  );
  or_cell gate14 (
    .a (net30),
    .b (net31),
    .out (net9)
  );
  or_cell gate17 (
    .a (net21),
    .b (net19),
    .out (net27)
  );
  or_cell gate18 (
    .a (net19),
    .b (net21),
    .out (net23)
  );
  or_cell gate19 (
    .a (net19),
    .b (net32),
    .out (net29)
  );
  or_cell gate20 (
    .a (net33),
    .b (net21),
    .out (net25)
  );
  or_cell gate21 (
    .a (net19),
    .b (net21),
    .out (net31)
  );
  or_cell gate22 (
    .a (net33),
    .b (net21),
    .out (net32)
  );
  or_cell gate8 (
    .a (net34),
    .b (net35),
    .out (net26)
  );
  or_cell gate23 (
    .a (net36),
    .b (net37),
    .out (net20)
  );
  or_cell gate24 (
    .a (net36),
    .b (net37),
    .out (net22)
  );
  or_cell gate25 (
    .a (net36),
    .b (net37),
    .out (net24)
  );
  or_cell gate26 (
    .a (net38),
    .b (net39),
    .out (net18)
  );
  or_cell gate27 (
    .a (net36),
    .b (net37),
    .out (net28)
  );
  or_cell gate28 (
    .a (net40),
    .b (net41),
    .out (net30)
  );
  or_cell gate15 (
    .a (net36),
    .b (net42),
    .out (net35)
  );
  or_cell gate16 (
    .a (net42),
    .b (net43),
    .out (net38)
  );
  or_cell gate29 (
    .a (net36),
    .b (net37),
    .out (net43)
  );
  or_cell gate30 (
    .a (net36),
    .b (net37),
    .out (net40)
  );
  or_cell gate31 (
    .a (net44),
    .b (net45),
    .out (net21)
  );
  or_cell gate32 (
    .a (net46),
    .b (net47),
    .out (net33)
  );
  or_cell gate33 (
    .a (net48),
    .b (net49),
    .out (net19)
  );
  or_cell gate34 (
    .a (net50),
    .b (net51),
    .out (net39)
  );
  or_cell gate35 (
    .a (net52),
    .b (net53),
    .out (net34)
  );
  or_cell gate36 (
    .a (net54),
    .b (net55),
    .out (net36)
  );
  or_cell gate37 (
    .a (net56),
    .b (net57),
    .out (net42)
  );
  or_cell gate38 (
    .a (net58),
    .b (net59),
    .out (net37)
  );
  or_cell gate39 (
    .a (net60),
    .b (net61),
    .out (net41)
  );
  and_cell gate40 (
    .a (net2),
    .b (net62),
    .out (net63)
  );
  and_cell gate41 (
    .a (net2),
    .b (net64),
    .out (net65)
  );
  and_cell gate42 (
    .a (net2),
    .b (net66),
    .out (net67)
  );
  and_cell gate43 (
    .a (net2),
    .b (net68),
    .out (net69)
  );
  and_cell gate44 (
    .a (net3),
    .b (net4),
    .out (net62)
  );
  and_cell gate45 (
    .a (net70),
    .b (net4),
    .out (net64)
  );
  not_cell gate46 (
    .in (net3),
    .out (net70)
  );
  and_cell gate47 (
    .a (net3),
    .b (net71),
    .out (net66)
  );
  not_cell gate48 (
    .out (net71)
  );
  nand_cell gate49 (
    .a (net3),
    .b (net4),
    .out (net68)
  );
  xor_cell gate50 (
    .a (net7),
    .b (net8),
    .out (net72)
  );
  and_cell gate51 (
    .a (net7),
    .b (net73),
    .out (net74)
  );
  not_cell gate52 (
    .in (net8),
    .out (net73)
  );
  and_cell gate53 (
    .a (net63),
    .b (net75),
    .out (net76)
  );
  and_cell gate54 (
    .a (net63),
    .b (net77),
    .out (net78)
  );
  and_cell gate55 (
    .a (net63),
    .b (net79),
    .out (net45)
  );
  and_cell gate56 (
    .a (net63),
    .b (net80),
    .out (net47)
  );
  and_cell gate57 (
    .a (net63),
    .b (net81),
    .out (net49)
  );
  or_cell gate58 (
    .a (net82),
    .b (net76),
    .out (net53)
  );
  or_cell gate59 (
    .a (net83),
    .b (net78),
    .out (net51)
  );
  not_cell gate60 (
    .in (net1),
    .out (net84)
  );
  and_cell gate61 (
    .a (net85),
    .b (net74),
    .out (net75)
  );
  and_cell gate62 (
    .a (net1),
    .b (net72),
    .out (net85)
  );
  and_cell gate63 (
    .a (net84),
    .b (net72),
    .out (net86)
  );
  and_cell gate64 (
    .a (net86),
    .b (net74),
    .out (net81)
  );
  and_cell gate65 (
    .a (net84),
    .b (net72),
    .out (net87)
  );
  and_cell gate66 (
    .a (net1),
    .b (net72),
    .out (net88)
  );
  or_cell gate67 (
    .a (net88),
    .b (net75),
    .out (net77)
  );
  and_cell gate68 (
    .a (net89),
    .b (net90),
    .out (net79)
  );
  not_cell gate69 (
    .in (net74),
    .out (net90)
  );
  and_cell gate70 (
    .a (net84),
    .b (net91),
    .out (net89)
  );
  not_cell gate71 (
    .in (net72),
    .out (net91)
  );
  and_cell gate72 (
    .a (net87),
    .b (net92),
    .out (net80)
  );
  not_cell gate73 (
    .in (net74),
    .out (net92)
  );
  xor_cell gate74 (
    .a (net6),
    .b (net8),
    .out (net93)
  );
  xor_cell gate75 (
    .a (net5),
    .b (net7),
    .out (net94)
  );
  not_cell gate76 (
    .in (net94),
    .out (net95)
  );
  not_cell gate77 (
    .in (net93),
    .out (net96)
  );
  and_cell gate78 (
    .a (net95),
    .b (net96),
    .out (net97)
  );
  or_cell gate79 (
    .a (net98),
    .b (net99),
    .out (net100)
  );
  and_cell gate80 (
    .a (net6),
    .b (net101),
    .out (net99)
  );
  not_cell gate81 (
    .in (net8),
    .out (net101)
  );
  and_cell gate82 (
    .a (net5),
    .b (net102),
    .out (net98)
  );
  not_cell gate83 (
    .in (net7),
    .out (net102)
  );
  or_cell gate84 (
    .a (net103),
    .b (net104),
    .out (net105)
  );
  and_cell gate85 (
    .a (net106),
    .b (net8),
    .out (net104)
  );
  not_cell gate86 (
    .in (net6),
    .out (net106)
  );
  and_cell gate87 (
    .a (net107),
    .b (net7),
    .out (net103)
  );
  not_cell gate88 (
    .in (net5),
    .out (net107)
  );
  not_cell gate89 (
    .in (net67),
    .out (net108)
  );
  and_cell gate90 (
    .a (net108),
    .b (net8),
    .out (net109)
  );
  and_cell gate91 (
    .a (net67),
    .b (net6),
    .out (net110)
  );
  and_cell gate92 (
    .a (net108),
    .b (net7),
    .out (net111)
  );
  and_cell gate93 (
    .a (net67),
    .b (net5),
    .out (net112)
  );
  or_cell gate94 (
    .a (net112),
    .b (net111),
    .out (net113)
  );
  or_cell gate95 (
    .a (net110),
    .b (net109),
    .out (net114)
  );
  xor_cell gate96 (
    .a (net113),
    .b (net114),
    .out (net115)
  );
  and_cell gate97 (
    .a (net113),
    .b (net114),
    .out (net116)
  );
  nand_cell gate98 (
    .a (net113),
    .b (net114),
    .out (net117)
  );
  and_cell gate99 (
    .a (net118),
    .b (net119),
    .out (net82)
  );
  and_cell gate100 (
    .a (net118),
    .b (net120),
    .out (net83)
  );
  and_cell gate101 (
    .a (net118),
    .b (net121),
    .out (net61)
  );
  and_cell gate102 (
    .a (net118),
    .b (net122),
    .out (net44)
  );
  and_cell gate103 (
    .a (net118),
    .b (net123),
    .out (net46)
  );
  and_cell gate104 (
    .a (net118),
    .b (net124),
    .out (net48)
  );
  and_cell gate105 (
    .a (net1),
    .b (net115),
    .out (net120)
  );
  and_cell gate106 (
    .a (net1),
    .b (net117),
    .out (net119)
  );
  and_cell gate107 (
    .a (net84),
    .b (net117),
    .out (net122)
  );
  and_cell gate108 (
    .a (net84),
    .b (net115),
    .out (net123)
  );
  and_cell gate109 (
    .a (net84),
    .b (net116),
    .out (net124)
  );
  and_cell gate110 (
    .a (net1),
    .b (net116),
    .out (net121)
  );
  or_cell gate111 (
    .a (net67),
    .b (net65),
    .out (net118)
  );
  and_cell gate112 (
    .a (net69),
    .b (net125),
    .out (net52)
  );
  and_cell gate113 (
    .a (net69),
    .b (net126),
    .out (net50)
  );
  and_cell gate114 (
    .a (net69),
    .b (net127),
    .out (net60)
  );
  and_cell gate115 (
    .a (net69),
    .b (net128),
    .out (net54)
  );
  and_cell gate116 (
    .a (net69),
    .b (net129),
    .out (net56)
  );
  and_cell gate117 (
    .a (net69),
    .b (net130),
    .out (net58)
  );
  and_cell gate118 (
    .a (net1),
    .b (net100),
    .out (net125)
  );
  and_cell gate119 (
    .a (net1),
    .b (net97),
    .out (net126)
  );
  and_cell gate120 (
    .a (net1),
    .b (net105),
    .out (net127)
  );
  and_cell gate121 (
    .a (net84),
    .b (net100),
    .out (net128)
  );
  and_cell gate122 (
    .a (net84),
    .b (net97),
    .out (net129)
  );
  and_cell gate123 (
    .a (net84),
    .b (net105),
    .out (net130)
  );
endmodule
