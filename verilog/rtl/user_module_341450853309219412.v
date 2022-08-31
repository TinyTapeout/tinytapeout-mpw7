module SPIMaster_341450853309219412(
  input       clock,
  input       reset,
  
  output      tx_ready,
  input       tx_valid,
  input [7:0] tx_byte,

  // whether or not to reset CS after sending data
  input       tx_clear_cs,

  output      sclk,
  output      mosi,
  output      n_cs
);

  localparam STATE_IDLE = 2'd0,
    STATE_CS_ASSERT = 2'd1,
    STATE_TX = 2'd2,
    STATE_CS_DEASSERT = 2'd3;

  localparam TX_COUNTER_MAX = 3'h7;

  reg [1:0] state;
  reg [7:0] tx_byte_reg;
  reg sclk_mask;
  reg mosi_mask;
  reg tx_ready_reg;
  reg [2:0] tx_counter_reg;
  reg n_cs_reg;
  reg tx_clear_cs_reg;

  assign tx_ready = tx_ready_reg;
  assign sclk = ~clock & sclk_mask;
  assign mosi = tx_byte_reg[7] & mosi_mask;
  assign n_cs = n_cs_reg;

  always @(posedge clock) begin
    if (reset) begin

      state <= STATE_IDLE;
      tx_byte_reg <= 8'h0;
      sclk_mask <= 1'b0;
      mosi_mask <= 1'b0;
      tx_ready_reg <= 1'b0;
      tx_counter_reg <= 3'd0;
      n_cs_reg <= 1'b1;
      tx_clear_cs_reg <= 1'b1;

    end else begin

      if (state == STATE_IDLE) begin

        tx_ready_reg <= 1'b1;

        if (tx_valid == 1'b1) begin
          tx_byte_reg <= tx_byte;
          tx_clear_cs_reg <= tx_clear_cs;
          tx_ready_reg <= 1'b0;
          n_cs_reg <= 1'b0;

          if (n_cs_reg == 1'b1) begin
            // CS is not asserted: assert it first
            state <= STATE_CS_ASSERT;
          end else begin
            // CS is already asserted: transition to TX
            state <= STATE_TX;
            sclk_mask <= 1'b1;
            mosi_mask <= 1'b1;
          end
        end

      end else if (state == STATE_CS_ASSERT) begin

        // assert CS for one cycle before transitioning to TX
        state <= STATE_TX;
        sclk_mask <= 1'b1;
        mosi_mask <= 1'b1;

      end else if (state == STATE_TX) begin

        tx_byte_reg <= {tx_byte_reg[6:0], 1'b0};

        if (tx_counter_reg == TX_COUNTER_MAX) begin
          tx_counter_reg <= 3'd0;
          sclk_mask <= 1'b0;
          mosi_mask <= 1'b0;

          // check if CS needs to be reset
          if (tx_clear_cs_reg == 1'b1) begin
            state <= STATE_CS_DEASSERT;
          end else begin
            state <= STATE_IDLE;
          end
        end else begin
          tx_counter_reg <= tx_counter_reg + 3'd1;
        end

      end else if (state == STATE_CS_DEASSERT) begin

        // wait one cycle before deasserting CS and transitioning to idle
        state <= STATE_IDLE;
        n_cs_reg <= 1'b1;

      end
    end
  end

endmodule

module LEDMatrix_341450853309219412(
  input         clock,
  input         reset,
  
  output        sclk,
  output        mosi,
  output        n_cs
);

  localparam STATE_RESET_FRAME_INDEX = 1'd0,
    STATE_SEND_PIXELS = 1'd1;

  // command to reset frame index
  localparam CMD_RESET_FRAME_INDEX = 8'h26;

  localparam PIXEL_MAX = 6'h3f;

  reg [0:0] state;
  reg [1:0] state_rfi;
  reg [1:0] state_sp;

  reg [5:0] pixel_counter;

  reg [5:0] pixel_offset;

  reg tx_valid;
  reg [7:0] tx_byte;
  reg tx_clear_cs;

  wire tx_ready;

  SPIMaster_341450853309219412 spi_master_inst(
    .clock(clock),
    .reset(reset),

    .tx_ready(tx_ready),
    .tx_valid(tx_valid),
    .tx_byte(tx_byte),
    .tx_clear_cs(tx_clear_cs),

    .sclk(sclk),
    .mosi(mosi),
    .n_cs(n_cs)
  );

  always @(posedge clock) begin
    if (reset) begin
      state <= STATE_RESET_FRAME_INDEX;

      pixel_counter <= 6'h0;
      pixel_offset <= 6'h0;

      tx_valid <= 1'b0;
      tx_byte <= 8'h0;
      tx_clear_cs <= 1'b0;
    end else begin

      if (state == STATE_RESET_FRAME_INDEX) begin

        if (tx_ready == 1'b1) begin

          // send command to reset frame index

          tx_valid <= 1'b1;
          tx_byte <= CMD_RESET_FRAME_INDEX;
          tx_clear_cs <= 1'b1;
        end else if (tx_valid == 1'b1) begin
          
          // TX accepted, transition to next state

          state <= STATE_SEND_PIXELS;
          tx_valid <= 1'b0;
        end

      end else if (state == STATE_SEND_PIXELS) begin

        if (tx_ready == 1'b1) begin

          // send pixel data

          tx_valid <= 1'b1;
          tx_byte <= {2'b0, pixel_counter + pixel_offset};

          if (pixel_counter == PIXEL_MAX) begin
            // sending last pixel, so clear CS after
            tx_clear_cs <= 1'b1;
          end else begin
            tx_clear_cs <= 1'b0;
          end

        end else if (tx_valid == 1'b1) begin

          // TX accepted, transition to next state

          tx_valid <= 1'b0;

          if (pixel_counter == PIXEL_MAX) begin
            // sending last pixel
            state <= STATE_RESET_FRAME_INDEX;
            pixel_counter <= 6'h0;
            pixel_offset <= pixel_offset + 6'h1;
          end else begin
            pixel_counter <= pixel_counter + 6'h1;
          end

        end
      end
    end
  end

endmodule

module user_module_341450853309219412(
  input [7:0] io_in,
  output [7:0] io_out
);

  wire clock;
  wire reset;

  wire sclk;
  wire mosi;
  wire n_cs;

  assign clock = io_in[0];
  assign reset = io_in[1];

  assign sclk = io_out[0];
  assign mosi = io_out[1];
  assign n_cs = io_out[2];

  LEDMatrix_341450853309219412 ledmatrix_inst(
    .clock(clock),
    .reset(reset),

    .sclk(sclk),
    .mosi(mosi),
    .n_cs(n_cs)
  );

endmodule
