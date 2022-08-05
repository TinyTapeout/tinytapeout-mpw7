/* Automatically generated from https://wokwi.com/projects/334445762078310996 */

module user_module_334445762078310996(
  input reset,
  input clk,
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = io_in[0];
  wire net2 = 1'b1;
  wire net3 = 1'b0;
  wire net4 = clk;
  wire net5;
  wire net6;
  wire net7;
  wire net8 = io_in[2];
  wire net9 = 1'b1;
  wire net10 = 1'b0;
  wire net11;
  wire net12;
  wire net13;
  wire net14;
  wire net15 = 1'b1;
  wire net16 = 1'b0;
  wire net17 = 1'b1;
  wire net18 = 1'b0;
  wire net19 = 1'b0;
  wire net20 = 1'b1;
  wire net21 = io_in[0];
  wire net22 = io_in[1];
  wire net23 = 1'b1;
  wire net24 = 1'b0;
  wire net25 = 1'b0;

  assign io_out[0] = net11;
  assign io_out[1] = net12;
  assign io_out[2] = net13;
  assign io_out[3] = net14;

  and_cell gate1 (
    .a (net4)
  );
  or_cell gate2 (

  );
  xor_cell gate3 (

  );
  nand_cell gate4 (
    .a (net5),
    .b (net6),
    .out (net7)
  );
  not_cell gate5 (
    .in (net8),
    .out (net6)
  );
  mux_cell mux1 (
    .a (net9),
    .b (net10),
    .sel (net1),
    .out (net11)
  );
  dff_cell flipflop1 (

  );
  mux_cell mux2 (
    .a (net15),
    .b (net16),
    .sel (net1),
    .out (net12)
  );
  mux_cell mux3 (
    .a (net17),
    .b (net18),
    .sel (net1),
    .out (net13)
  );
  mux_cell mux4 (
    .a (net19),
    .b (net20),
    .sel (net1),
    .out (net14)
  );
  and_cell gate7 (
    .a (net21),
    .b (net22),
    .out (net5)
  );
endmodule
