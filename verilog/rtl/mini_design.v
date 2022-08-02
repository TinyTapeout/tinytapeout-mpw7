`default_nettype none
`timescale 1ns/1ns

module lesson1(
    input wire [NUM_IOS-1:0] inputs,
    output wire [NUM_IOS-1:0] outputs
);
    parameter NUM_IOS = 8;

    // lesson 1 - combinational
    // 22 cells
    assign outputs = inputs == 8'b0000_0000 ? 8'b0000_0000 :
                     inputs == 8'b0000_0001 ? 8'b1010_1010 :
                     inputs == 8'b0000_0010 ? 8'b0101_0101 :
                               8'b0000_0000;

endmodule

module lesson2(
    input wire [NUM_IOS-1:0] inputs,
    output wire [NUM_IOS-1:0] outputs
);
    parameter NUM_IOS = 8;

    // counter
    // 50 cells
    reg [7:0] count;
    wire clk = inputs[0];
    wire reset = inputs[1];
    assign outputs = count;
    always @(posedge clk) begin
        if(reset)
            count <= 0;
        else begin
            count <= count + 1;
        end
    end
endmodule

module lesson3(
    input wire [NUM_IOS-1:0] inputs,
    output wire [NUM_IOS-1:0] outputs
);
    parameter NUM_IOS = 8;


    // counter and output
    // 49 cells
    reg [3:0] count;
    wire clk = inputs[0];
    wire reset = inputs[1];
    always @(posedge clk) begin
        if(reset)
            count <= 0;
        else begin
            count <= count + 1;
        end
    end
    assign outputs = count == 0 ? 8'b0000_0001 :
                     count == 1 ? 8'b0000_0010 :
                     count == 2 ? 8'b0000_0100 :
                     count == 3 ? 8'b0000_1000 :
                     count == 4 ? 8'b0001_0000 :
                     count == 5 ? 8'b0010_0000 :
                     count == 6 ? 8'b0100_0000 :
                     count == 7 ? 8'b1000_0000 :
                                  8'b0000_0000 ;

endmodule

module lesson4(
    input wire [NUM_IOS-1:0] inputs,
    output wire [NUM_IOS-1:0] outputs
);
    parameter NUM_IOS = 8;

    /*
    cells: 49
    spell MATT in morse code: -- .- - -
    - is 11
    . is 1
    between symbols is 0
    between letters is 00

    M      A  T   T
    11 11  1  11  11
      0  00 00  00  00

    110110010011001100

    */
    reg [17:0] morse;
    reg [4:0] count;
    wire clk = inputs[0];
    wire reset = inputs[1];
    assign outputs[0] = morse[count];
    assign outputs[7:1] = 6'b0;
    always @(posedge clk) begin
        if(reset) begin
            count <= 17;
            morse <= 18'b110110010011001100;
        end else begin
            count <= count - 1;
            if(count == 0)
                count <= 17;
        end
    end


endmodule
