`default_nettype none

// Keep I/O fixed for TinyTapeout
module user_module_341154068332282450(
  input [7:0] io_in, 
  output [7:0] io_out
);

  wire pdm_out;

  assign io_out[0] = pdm_out;
  assign io_out[1] = ~pdm_out;

  pdm core(
    .pdm_input(io_in[7:3]),
    .write_en(io_in[2]),
    .reset(io_in[1]),
    .clk(io_in[0]),    
    .pdm_out(pdm_out)
  );

endmodule
