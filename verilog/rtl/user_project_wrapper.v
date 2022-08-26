// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_project_wrapper
 *
 * This wrapper enumerates all of the pins available to the
 * user for the user project.
 *
 * An example user project is provided in this wrapper.  The
 * example should be removed and replaced with the actual
 * user project.
 *
 * THIS FILE HAS BEEN GENERATED USING multi_tools_project CODEGEN
 * IF YOU NEED TO MAKE EDITS TO IT, EDIT codegen/caravel_iface_header.txt
 *
 *-------------------------------------------------------------
 */

module user_project_wrapper #(
    parameter BITS = 32
)(
`ifdef USE_POWER_PINS
    inout vdda1,       // User area 1 3.3V supply
    inout vdda2,       // User area 2 3.3V supply
    inout vssa1,       // User area 1 analog ground
    inout vssa2,       // User area 2 analog ground
    inout vccd1,       // User area 1 1.8V supply
    inout vccd2,       // User area 2 1.8v supply
    inout vssd1,       // User area 1 digital ground
    inout vssd2,       // User area 2 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // Analog (direct connection to GPIO pad---use with caution)
    // Note that analog I/O is not available on the 7 lowest-numbered
    // GPIO pads, and so the analog_io indexing is offset from the
    // GPIO indexing by 7 (also upper 2 GPIOs do not have analog_io).
    inout [`MPRJ_IO_PADS-10:0] analog_io,

    // Independent clock (on independent integer divider)
    input   user_clock2,

    // User maskable interrupt signals
    output [2:0] user_irq
);

    // start of module instantiation

        localparam NUM_MACROS = 20;
        wire [NUM_MACROS:0] data, scan, latch, clk;
        wire ready;
        wire [8:0] active_select    = io_in[20:12];
        wire [7:0] inputs           = io_in[28:21];
        wire [3:0] clk_div          = io_in[11:8];
        wire [7:0] outputs;
        assign io_out[36:29]        = outputs;
        assign io_out[37]           = ready;
        
        scan_controller #(.NUM_DESIGNS(NUM_MACROS)) scan_controller(
            .clk            (wb_clk_i),
            .reset          (wb_rst_i),
            .active_select  (active_select),
            .inputs         (inputs),
            .outputs        (outputs),
            .ready          (ready),
            .clk_div        (clk_div),
            .scan_clk       (clk[0]),
            .scan_data_out  (data[0]),
            .scan_data_in   (data[NUM_MACROS]),
            .scan_select    (scan[0]),
            .scan_latch_enable(latch[0]),
            .oeb            (io_oeb[37:29])
        );

        
        scan_wrapper_339501025136214612 #(.NUM_IOS(8)) scan_wrapper_339501025136214612_0 (
            .clk_in          (clk  [0]),
            .data_in         (data [0]),
            .scan_select_in  (scan [0]),
            .latch_enable_in (latch[0]),
            .clk_out         (clk  [1]),
            .data_out        (data [1]),
            .scan_select_out (scan [1]),
            .latch_enable_out(latch[1])
            );
        
        scan_wrapper_334445762078310996 #(.NUM_IOS(8)) scan_wrapper_334445762078310996_1 (
            .clk_in          (clk  [1]),
            .data_in         (data [1]),
            .scan_select_in  (scan [1]),
            .latch_enable_in (latch[1]),
            .clk_out         (clk  [2]),
            .data_out        (data [2]),
            .scan_select_out (scan [2]),
            .latch_enable_out(latch[2])
            );
        
        scan_wrapper_335404063203000914 #(.NUM_IOS(8)) scan_wrapper_335404063203000914_2 (
            .clk_in          (clk  [2]),
            .data_in         (data [2]),
            .scan_select_in  (scan [2]),
            .latch_enable_in (latch[2]),
            .clk_out         (clk  [3]),
            .data_out        (data [3]),
            .scan_select_out (scan [3]),
            .latch_enable_out(latch[3])
            );
        
        scan_wrapper_339439899388150354 #(.NUM_IOS(8)) scan_wrapper_339439899388150354_3 (
            .clk_in          (clk  [3]),
            .data_in         (data [3]),
            .scan_select_in  (scan [3]),
            .latch_enable_in (latch[3]),
            .clk_out         (clk  [4]),
            .data_out        (data [4]),
            .scan_select_out (scan [4]),
            .latch_enable_out(latch[4])
            );
        
        scan_wrapper_339502597164499540 #(.NUM_IOS(8)) scan_wrapper_339502597164499540_4 (
            .clk_in          (clk  [4]),
            .data_in         (data [4]),
            .scan_select_in  (scan [4]),
            .latch_enable_in (latch[4]),
            .clk_out         (clk  [5]),
            .data_out        (data [5]),
            .scan_select_out (scan [5]),
            .latch_enable_out(latch[5])
            );
        
        scan_wrapper_339732875283792466 #(.NUM_IOS(8)) scan_wrapper_339732875283792466_5 (
            .clk_in          (clk  [5]),
            .data_in         (data [5]),
            .scan_select_in  (scan [5]),
            .latch_enable_in (latch[5]),
            .clk_out         (clk  [6]),
            .data_out        (data [6]),
            .scan_select_out (scan [6]),
            .latch_enable_out(latch[6])
            );
        
        scan_wrapper_339865743461974612 #(.NUM_IOS(8)) scan_wrapper_339865743461974612_6 (
            .clk_in          (clk  [6]),
            .data_in         (data [6]),
            .scan_select_in  (scan [6]),
            .latch_enable_in (latch[6]),
            .clk_out         (clk  [7]),
            .data_out        (data [7]),
            .scan_select_out (scan [7]),
            .latch_enable_out(latch[7])
            );
        
        scan_wrapper_339898704941023827 #(.NUM_IOS(8)) scan_wrapper_339898704941023827_7 (
            .clk_in          (clk  [7]),
            .data_in         (data [7]),
            .scan_select_in  (scan [7]),
            .latch_enable_in (latch[7]),
            .clk_out         (clk  [8]),
            .data_out        (data [8]),
            .scan_select_out (scan [8]),
            .latch_enable_out(latch[8])
            );
        
        scan_wrapper_340218629792465491 #(.NUM_IOS(8)) scan_wrapper_340218629792465491_8 (
            .clk_in          (clk  [8]),
            .data_in         (data [8]),
            .scan_select_in  (scan [8]),
            .latch_enable_in (latch[8]),
            .clk_out         (clk  [9]),
            .data_out        (data [9]),
            .scan_select_out (scan [9]),
            .latch_enable_out(latch[9])
            );
        
        scan_wrapper_340318610245288530 #(.NUM_IOS(8)) scan_wrapper_340318610245288530_9 (
            .clk_in          (clk  [9]),
            .data_in         (data [9]),
            .scan_select_in  (scan [9]),
            .latch_enable_in (latch[9]),
            .clk_out         (clk  [10]),
            .data_out        (data [10]),
            .scan_select_out (scan [10]),
            .latch_enable_out(latch[10])
            );
        
        scan_wrapper_340285391309374034 #(.NUM_IOS(8)) scan_wrapper_340285391309374034_10 (
            .clk_in          (clk  [10]),
            .data_in         (data [10]),
            .scan_select_in  (scan [10]),
            .latch_enable_in (latch[10]),
            .clk_out         (clk  [11]),
            .data_out        (data [11]),
            .scan_select_out (scan [11]),
            .latch_enable_out(latch[11])
            );
        
        scan_wrapper_340661930553246290 #(.NUM_IOS(8)) scan_wrapper_340661930553246290_11 (
            .clk_in          (clk  [11]),
            .data_in         (data [11]),
            .scan_select_in  (scan [11]),
            .latch_enable_in (latch[11]),
            .clk_out         (clk  [12]),
            .data_out        (data [12]),
            .scan_select_out (scan [12]),
            .latch_enable_out(latch[12])
            );
        
        scan_wrapper_340805072482992722 #(.NUM_IOS(8)) scan_wrapper_340805072482992722_12 (
            .clk_in          (clk  [12]),
            .data_in         (data [12]),
            .scan_select_in  (scan [12]),
            .latch_enable_in (latch[12]),
            .clk_out         (clk  [13]),
            .data_out        (data [13]),
            .scan_select_out (scan [13]),
            .latch_enable_out(latch[13])
            );
        
        scan_wrapper_339501025136214612 #(.NUM_IOS(8)) scan_wrapper_339501025136214612_13 (
            .clk_in          (clk  [13]),
            .data_in         (data [13]),
            .scan_select_in  (scan [13]),
            .latch_enable_in (latch[13]),
            .clk_out         (clk  [14]),
            .data_out        (data [14]),
            .scan_select_out (scan [14]),
            .latch_enable_out(latch[14])
            );
        
        scan_wrapper_339501025136214612 #(.NUM_IOS(8)) scan_wrapper_339501025136214612_14 (
            .clk_in          (clk  [14]),
            .data_in         (data [14]),
            .scan_select_in  (scan [14]),
            .latch_enable_in (latch[14]),
            .clk_out         (clk  [15]),
            .data_out        (data [15]),
            .scan_select_out (scan [15]),
            .latch_enable_out(latch[15])
            );
        
        scan_wrapper_339501025136214612 #(.NUM_IOS(8)) scan_wrapper_339501025136214612_15 (
            .clk_in          (clk  [15]),
            .data_in         (data [15]),
            .scan_select_in  (scan [15]),
            .latch_enable_in (latch[15]),
            .clk_out         (clk  [16]),
            .data_out        (data [16]),
            .scan_select_out (scan [16]),
            .latch_enable_out(latch[16])
            );
        
        scan_wrapper_339501025136214612 #(.NUM_IOS(8)) scan_wrapper_339501025136214612_16 (
            .clk_in          (clk  [16]),
            .data_in         (data [16]),
            .scan_select_in  (scan [16]),
            .latch_enable_in (latch[16]),
            .clk_out         (clk  [17]),
            .data_out        (data [17]),
            .scan_select_out (scan [17]),
            .latch_enable_out(latch[17])
            );
        
        scan_wrapper_339501025136214612 #(.NUM_IOS(8)) scan_wrapper_339501025136214612_17 (
            .clk_in          (clk  [17]),
            .data_in         (data [17]),
            .scan_select_in  (scan [17]),
            .latch_enable_in (latch[17]),
            .clk_out         (clk  [18]),
            .data_out        (data [18]),
            .scan_select_out (scan [18]),
            .latch_enable_out(latch[18])
            );
        
        scan_wrapper_339501025136214612 #(.NUM_IOS(8)) scan_wrapper_339501025136214612_18 (
            .clk_in          (clk  [18]),
            .data_in         (data [18]),
            .scan_select_in  (scan [18]),
            .latch_enable_in (latch[18]),
            .clk_out         (clk  [19]),
            .data_out        (data [19]),
            .scan_select_out (scan [19]),
            .latch_enable_out(latch[19])
            );
        
        scan_wrapper_339501025136214612 #(.NUM_IOS(8)) scan_wrapper_339501025136214612_19 (
            .clk_in          (clk  [19]),
            .data_in         (data [19]),
            .scan_select_in  (scan [19]),
            .latch_enable_in (latch[19]),
            .clk_out         (clk  [20]),
            .data_out        (data [20]),
            .scan_select_out (scan [20]),
            .latch_enable_out(latch[20])
            );
            // end of module instantiation

endmodule	// user_project_wrapper
`default_nettype wire
