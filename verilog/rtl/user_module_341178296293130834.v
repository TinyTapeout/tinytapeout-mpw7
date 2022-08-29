`default_nettype none

// Keep I/O fixed for TinyTapeout
module user_module_341178296293130834(
  input [7:0] io_in,
  output [7:0] io_out
);
  /* Inputs */
  wire CLK;
  wire RST;
  wire [3:0]IR_IN;
  wire DATAIN;
  assign CLK = io_in[0];
  assign RST = io_in[1];
  assign IR_IN = io_in[5:2];
  assign DATAIN = io_in[6];

  /* Outputs */
  reg FL0;
  reg JMP;
  reg RTN;
  reg FLF;
  reg DATAOUT;
  reg WRT;
  reg RR;
  reg C;

  assign io_out[0] = FL0;
  assign io_out[1] = JMP;
  assign io_out[2] = RTN;
  assign io_out[3] = FLF;
  assign io_out[4] = DATAOUT;
  assign io_out[5] = WRT;
  assign io_out[6] = RR;
  assign io_out[7] = C;

  /* Module body */
  reg IEN;
  reg OEN;
  reg SKZ;
  reg PHASE;

  `define I_NOP0  4'b0000
  `define I_LD    4'b0001
  `define I_ADD   4'b0010
  `define I_SUB   4'b0011
  `define I_ONE   4'b0100
  `define I_NAND  4'b0101
  `define I_OR    4'b0110
  `define I_XOR   4'b0111
  `define I_STO   4'b1000
  `define I_STOC  4'b1001
  `define I_IEN   4'b1010
  `define I_OEN   4'b1011
  `define I_JMP   4'b1100
  `define I_RTN   4'b1101
  `define I_SKZ   4'b1110
  `define I_NOPF  4'b1111

  wire [3:0] IR;
  assign IR = (!SKZ) ? IR_IN : `I_NOPF;
  
  wire DATAIFEN;
  assign DATAIFEN = DATAIN & IEN;

  always@(posedge RST)
  begin
    IEN <= 0;
    OEN <= 0;
    SKZ <= 0;
    FL0 <= 0;
    JMP <= 0;
    RTN <= 0;
    FLF <= 0;
    RR <= 0;
    C <= 0;
    WRT <= 0;
    PHASE <= 0;
  end

  always@(posedge CLK)
  begin
    if(!PHASE)
    begin
      PHASE <= 1;
      FL0 <= 0;
      JMP <= 0;
      RTN <= 0;
      FLF <= 0;
      WRT <= 0;
      DATAOUT <= 0;
      case (IR)
        `I_NOP0:
          FL0 <= 1;
        `I_ONE:
          begin
            RR <= 1;
            C <= 0;
          end
        `I_STO:
          if(OEN)
            DATAOUT <= RR;
        `I_STOC:
          if(OEN)
            DATAOUT <= !RR;
        `I_JMP:
          JMP <= 1;
        `I_RTN:
            RTN <= 1;
        `I_NOPF:
          if(!SKZ) FLF <= 1;
      endcase
    end else begin
      PHASE <= 0;
      case (IR)
        `I_LD:
            RR <= DATAIFEN;
        `I_ADD:
          begin
            RR <= DATAIFEN ^ RR ^ C; 
            C <= DATAIFEN & RR | C & RR | C & DATAIFEN;
          end
        `I_SUB:
          begin
            RR <= !DATAIFEN ^ RR ^ C; 
            C <= DATAIFEN & RR | C & RR | C & DATAIFEN;
          end
        `I_NAND:
            RR <= !(RR & DATAIFEN);
        `I_OR:
            RR <= RR | DATAIFEN;
        `I_XOR:
            RR <= RR ^ DATAIFEN;
        `I_STO:
          if(OEN)
            WRT <= 1;
        `I_STOC:
          if(OEN)
            WRT <= 1;
        `I_IEN:
          IEN <= DATAIN;
        `I_OEN:
          OEN <= DATAIN;
        `I_RTN:
            SKZ <= 1;
        `I_SKZ:
          if(!RR) SKZ <= 1;          
        `I_NOPF:
          if(SKZ) SKZ <= 0;
      endcase 
    end
  end
endmodule
