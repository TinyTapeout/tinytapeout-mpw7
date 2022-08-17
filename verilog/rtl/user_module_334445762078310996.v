/* Automatically generated from https://wokwi.com/projects/334445762078310996 */

`default_nettype none

module user_module_334445762078310996(
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = 1'b1;
  wire net2 = 1'b0;
  wire net3;
  wire net4;
  wire net5;
  wire net6;
  wire net7;
  wire net8 = 1'b1;
  wire net9 = 1'b0;
  wire net10;
  wire net11;
  wire net12 = 1'b1;
  wire net13 = 1'b0;
  wire net14;
  wire net15 = 1'b1;
  wire net16 = 1'b0;
  wire net17;
  wire net18 = 1'b0;
  wire net19 = 1'b1;
  wire net20;
  wire net21 = 1'b1;
  wire net22;
  wire net23;
  wire net24 = 1'b0;
  wire net25 = 1'b0;

  and_cell gate1 (
    .a (net3)
  );
  or_cell gate2 (

  );
  xor_cell gate3 (

  );
  nand_cell gate4 (
    .a (net4),
    .b (net5),
    .out (net6)
  );
  not_cell gate5 (
    .in (net7),
    .out (net5)
  );
  buffer_cell gate6 (

  );
  mux_cell mux1 (
    .a (net8),
    .b (net9),
    .sel (net10),
    .out (net11)
  );
  dff_cell flipflop1 (

  );
  mux_cell mux2 (
    .a (net12),
    .b (net13),
    .sel (net10),
    .out (net14)
  );
  mux_cell mux3 (
    .a (net15),
    .b (net16),
    .sel (net10),
    .out (net17)
  );
  mux_cell mux4 (
    .a (net18),
    .b (net19),
    .sel (net10),
    .out (net20)
  );
  and_cell gate7 (
    .a (net22),
    .b (net23),
    .out (net4)
  );
endmodule
