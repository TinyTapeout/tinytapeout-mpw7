`default_nettype none

module user_module_341174563322724948(
  input [7:0] io_in,
  output [7:0] io_out
);

wire direction;

wire [2:0] sym_in;
wire [2:0] new_sym;

// 1-hot state in & out
wire [7:0] state_in;
wire [7:0] state_out;

// 3-bit dense encoding of state in & out
wire [2:0] encoded_state_in;
wire [2:0] encoded_state_out;

assign encoded_state_in = io_in[7:5];
assign io_out[7:5] = encoded_state_out;

assign sym_in = io_in[4:2];
assign io_out[4:2] = new_sym;

assign io_out[1] = direction;
assign io_out[0] = 2'b0;

decoder_3to8_341174563322724948 decode_state_in(
    .in(encoded_state_in),
    .out(state_in)
);

direction_341174563322724948 direction_block(
    .state(state_in),
    .s2(sym_in[2]),
    .s1(sym_in[1]),
    .s0(sym_in[0]),
    .direction(direction)
);

next_state_341174563322724948 next_state_block(
    .state_in(state_in),
    .s2(sym_in[2]),
    .s1(sym_in[1]),
    .s0(sym_in[0]),
    .state_out(state_out));

new_symbol_341174563322724948 new_sym_block(
    .state_in(state_in),
    .s2(sym_in[2]),
    .s1(sym_in[1]),
    .s0(sym_in[0]),
    .z2(new_sym[2]),
    .z1(new_sym[1]),
    .z0(new_sym[0])
);

encoder_8to3_341174563322724948 encode_state_out(
    .in(state_out),
    .out(encoded_state_out)
);

endmodule
