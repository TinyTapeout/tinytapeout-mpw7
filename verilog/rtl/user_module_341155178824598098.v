/* Automatically generated from https://wokwi.com/projects/341155178824598098 */

`default_nettype none

module user_module_341155178824598098(
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
  wire net11 = 1'b0;
  wire net12 = 1'b1;
  wire net13 = 1'b1;
  wire net14;
  wire net15;
  wire net16;

  assign io_out[0] = net9;
  assign io_out[1] = net10;
  assign io_out[2] = net10;
  assign io_out[3] = net4;
  assign io_out[4] = net5;
  assign io_out[5] = net6;
  assign io_out[6] = net7;
  assign io_out[7] = net8;

  and_cell gate1 (
    .a (net1),
    .b (net2),
    .out (net14)
  );
  or_cell gate2 (

  );
  xor_cell gate3 (
    .a (net1),
    .b (net2),
    .out (net15)
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
  xor_cell gate7 (
    .a (net15),
    .b (net3),
    .out (net9)
  );
  and_cell gate8 (
    .a (net15),
    .b (net3),
    .out (net16)
  );
  or_cell gate9 (
    .a (net16),
    .b (net14),
    .out (net10)
  );
endmodule
