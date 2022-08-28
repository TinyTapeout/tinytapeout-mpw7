`default_nettype none

module scan_controller (
    input  wire clk,
    input  wire reset,

    input  wire [8:0] active_select,    // which design is connected to the inputs and outputs
    input  wire [7:0] inputs,           // inputs to the design (or external scan chain)
    input  wire set_clk_div,            // set clock divider. See module below
    output wire [7:0] outputs,          // outputs from the design (or external scan chain)
    output wire ready,                  // debug output that goes high once per refresh
    output wire slow_clk,               // debug clock divider output

    output wire scan_clk,               // scan chain interface for the tiny designs
    output wire scan_data_out,          // see diagrams below for how the scan chain works
    input  wire scan_data_in,           // will be driven by internal driver, external gpio pins, or Caravel logic analyser
    output wire scan_select,            // external scan chain driver muxes with ins/outs, eg microcontroller outside the ASIC
    output wire scan_latch_en,

    input  wire la_scan_clk,            // logic analyser scan chain driver, driven by firmware running on Caravel's VexRisc 
    input  wire la_scan_data_in,
    output wire la_scan_data_out,
    input  wire la_scan_select,
    input  wire la_scan_latch_en,

    input  wire [1:0] driver_sel,       // 00 = external, 01 = internal, 10 = logic analyser

    output wire [`MPRJ_IO_PADS-1:0] oeb // caravel harness needs output enable bar set low to enable outputs
    );

    assign oeb = {`MPRJ_IO_PADS{1'b0}};

    parameter NUM_DESIGNS = 8; 
    parameter NUM_IOS     = 8;

    localparam START = 0;
    localparam LOAD = 1;
    localparam READ = 2;
    localparam CAPTURE_STATE = 3;
    localparam LATCH = 4;
                    
    // scan chain muxing
    wire ext_scan_clk;
    wire ext_scan_data_out;
    wire ext_scan_data_in;
    wire ext_scan_select;
    wire ext_scan_latch_en;

    assign scan_clk         = driver_sel == 2'b00 ? ext_scan_clk      : driver_sel == 2'b01 ? int_scan_clk      : la_scan_clk;
    assign scan_data_out    = driver_sel == 2'b00 ? ext_scan_data_out : driver_sel == 2'b01 ? int_scan_data_out : la_scan_data_out;
    assign scan_select      = driver_sel == 2'b00 ? ext_scan_select   : driver_sel == 2'b01 ? int_scan_select   : la_scan_select;
    assign scan_latch_en    = driver_sel == 2'b00 ? ext_scan_latch_en : driver_sel == 2'b01 ? int_scan_latch_en : la_scan_latch_en;

    wire   int_scan_data_in = scan_data_in;

    // reg
    reg [8:0] current_design;
    reg [2:0] state;
    reg [3:0] num_io;
    reg scan_clk_r;
    reg scan_select_out_r;

    reg [7:0] inputs_r;
    reg [7:0] outputs_r;
    reg [7:0] output_buf;

    // wires
    assign outputs = outputs_r;
    wire [8:0] active_select_rev = NUM_DESIGNS - 1 - active_select;
    assign ready = state == START;
    wire int_scan_latch_en = state == LATCH;
    wire int_scan_clk = scan_clk_r;
    wire int_scan_data_out = (state == LOAD && current_design == active_select_rev ) ? inputs_r[NUM_IOS-1-num_io] : 0;
    wire int_scan_select = scan_select_out_r;

    // clock divider
    clk_divider clk_divider (
        .clk            (clk),
        .set            (set_clk_div),
        .reset          (reset),
        .divider        (inputs),
        .slow_clk       (slow_clk)
    );
    wire [7:0] inputs_and_clk = set_clk_div ? { inputs[7:1], slow_clk } : inputs;

    /*

    LOAD

             ┌──┐  ┌──┐  ┌──┐  ┌──┐              
    clk    : ┘  └──┘  └──┘  └──┘  └──────────────
             ┐                                   
    scan en: └───────────────────────────────────
             ┐                       ┌─────┐     
    latch  : └───────────────────────┘     └─────
             ┐     ┌─────┐     ┌─────┐           
    data o : └─────┘     └─────┘     └───────────
             xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    data i : xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


    READ

             ┌──┐  ┌──┐  ┌──┐  ┌──┐  ┌──┐  ┌──┐  
    clk    : ┘  └──┘  └──┘  └──┘  └──┘  └──┘  └──
             ┐     ┌─────┐                       
    scan en: └─────┘     └───────────────────────
             ┐                                   
    latch  : └───────────────────────────────────
             xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    data o : xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
             ┐           ┌─────┐     ┌─────┐     
    data i : └───────────┘     └─────┘     └─────

    */

    // FSM
    always @(posedge clk) begin
        if(reset) begin
            current_design <= 0;
            state <= START; 
            inputs_r <= 0;
            outputs_r <= 0;
            scan_clk_r <= 0;
            num_io <= 0;
            output_buf <= 0;
        end else begin
            case(state)
                START: begin
                    state <= LOAD;
                    inputs_r <= inputs_and_clk;
                    outputs_r <= output_buf;
                    current_design <= 0;
                    scan_select_out_r <= 0;
                end

                LOAD: begin
                    scan_clk_r <= ~scan_clk_r;
                    if(scan_clk_r) begin
                        num_io <= num_io + 1;

                        if(num_io == NUM_IOS - 1) begin
                            num_io <= 0;
                            current_design <= current_design + 1;
                        
                            if(current_design == NUM_DESIGNS - 1)
                                state <= LATCH;
                        end

                    end

                end
                LATCH: begin
                    state <= READ;
                    current_design <= 0;
                    scan_select_out_r <= 1;
                end
            
                READ: begin
                    scan_select_out_r <= 0;
                    scan_clk_r <= ~scan_clk_r;
                    if(scan_clk_r) begin
                        num_io <= num_io + 1;
                        if(current_design == active_select_rev)
                            output_buf[NUM_IOS-1-num_io] <= int_scan_data_in;

                        if(num_io == NUM_IOS - 1) begin
                            num_io <= 0;
                            current_design <= current_design + 1;


                            if(current_design == NUM_DESIGNS - 1) begin
                                state <= START;
                            end
                        end
                    end
                end
            endcase
        end
    end

endmodule

module clk_divider (
    input clk,
    input reset,
    input set,
    input [DIV_WIDTH-1:0] divider,
    output slow_clk
    );
    
    // fastest useful clock period must be < max refresh rate: 750Hz
    // 10M with 14bit divider (min) gives ~610Hz
    // 10M with 22bit divider (max) gives ~2.4Hz
    localparam MIN_WIDTH = 13;
    localparam DIV_WIDTH = 8;

    reg [MIN_WIDTH+8:0] counter;
    reg [DIV_WIDTH-1:0] compare;
    reg last_set;

    assign slow_clk = counter[MIN_WIDTH + compare];

    always @(posedge clk) begin
        if(reset) begin
            counter <= 0;
            compare <= 0;
            last_set <= 0;
        end
        else begin
            // update divider on positive edge of set
            if(set && !last_set) begin
                compare <= divider;
            end
            counter <= counter + 1'b1;
            last_set <= set;
        end
    end

endmodule
