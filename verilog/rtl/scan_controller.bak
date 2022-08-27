`default_nettype none

module scan_controller (
    input wire clk,
    input wire reset,

    input wire [8:0] active_select,
    input wire [7:0] inputs,
    output wire [7:0] outputs,
    output wire ready,

    // scan chain interface
    output wire scan_clk,
    output wire scan_data_out,
    input wire  scan_data_in,
    output wire scan_select,
    output wire scan_latch_enable,

    // caravel oeb stuff
    output wire [8:0] oeb
    );

    assign oeb = 8'b0;

    parameter NUM_DESIGNS = 8; 
    parameter NUM_IOS     = 8;

    localparam START = 0;
    localparam LOAD = 1;
    localparam READ = 2;
    localparam CAPTURE_STATE = 3;
    localparam LATCH = 4;
                    

    reg [8:0] current_design;
    wire [8:0] active_select_rev = NUM_DESIGNS - 1 - active_select;
    reg [2:0] state;
    reg [3:0] num_io;
    reg scan_clk_r;
    reg scan_select_out_r;

    reg [7:0] inputs_r;
    reg [7:0] outputs_r;
    reg [7:0] output_buf;

    assign outputs = outputs_r;
    
    assign ready = state == START;

    assign scan_latch_enable = state == LATCH;
    assign scan_clk = scan_clk_r;
    assign scan_data_out = (state == LOAD && current_design == active_select_rev ) ? inputs_r[NUM_IOS-1-num_io] : 0;
    assign scan_select = scan_select_out_r;


    /*

    load
    ====
    scan sel  = 0
    latch en  = 0
    clk       = 0 1 0 ..
    data      = x x x ..

    apply inputs
    ============
    scan sel  = 0
    latch en  = 0 1 0
    clk       = 0 0 0
    data      = x

    
    read outputs
    ============
    scan sel  = 1 0 1
    latch en  = 0
    clk       = 0 1 0 1 0 1 ..
    data out  = . . . x x x ..

    */

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
                    inputs_r <= inputs;
                    outputs_r <= output_buf;
                    current_design <= 0;
                    scan_select_out_r <= 1;
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
                    scan_select_out_r <= 0;
                end
            
                READ: begin
                    scan_select_out_r <= 1;
                    scan_clk_r <= ~scan_clk_r;
                    if(scan_clk_r) begin
                        num_io <= num_io + 1;
                        if(current_design == active_select_rev)
                            output_buf[NUM_IOS-1-num_io] <= scan_data_in;

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
