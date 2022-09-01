module user_project_wrapper (user_clock2,
    vccd1,
    vccd2,
    vdda1,
    vdda2,
    vssa1,
    vssa2,
    vssd1,
    vssd2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    analog_io,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oenb,
    user_irq,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input vccd1;
 input vccd2;
 input vdda1;
 input vdda2;
 input vssa1;
 input vssa2;
 input vssd1;
 input vssd2;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 inout [28:0] analog_io;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [127:0] la_data_in;
 output [127:0] la_data_out;
 input [127:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;

 wire \clk[0] ;
 wire \clk[10] ;
 wire \clk[11] ;
 wire \clk[12] ;
 wire \clk[13] ;
 wire \clk[14] ;
 wire \clk[15] ;
 wire \clk[16] ;
 wire \clk[17] ;
 wire \clk[18] ;
 wire \clk[19] ;
 wire \clk[1] ;
 wire \clk[20] ;
 wire \clk[2] ;
 wire \clk[3] ;
 wire \clk[4] ;
 wire \clk[5] ;
 wire \clk[6] ;
 wire \clk[7] ;
 wire \clk[8] ;
 wire \clk[9] ;
 wire \data[0] ;
 wire \data[10] ;
 wire \data[11] ;
 wire \data[12] ;
 wire \data[13] ;
 wire \data[14] ;
 wire \data[15] ;
 wire \data[16] ;
 wire \data[17] ;
 wire \data[18] ;
 wire \data[19] ;
 wire \data[1] ;
 wire \data[20] ;
 wire \data[2] ;
 wire \data[3] ;
 wire \data[4] ;
 wire \data[5] ;
 wire \data[6] ;
 wire \data[7] ;
 wire \data[8] ;
 wire \data[9] ;
 wire \latch[0] ;
 wire \latch[10] ;
 wire \latch[11] ;
 wire \latch[12] ;
 wire \latch[13] ;
 wire \latch[14] ;
 wire \latch[15] ;
 wire \latch[16] ;
 wire \latch[17] ;
 wire \latch[18] ;
 wire \latch[19] ;
 wire \latch[1] ;
 wire \latch[20] ;
 wire \latch[2] ;
 wire \latch[3] ;
 wire \latch[4] ;
 wire \latch[5] ;
 wire \latch[6] ;
 wire \latch[7] ;
 wire \latch[8] ;
 wire \latch[9] ;
 wire \scan[0] ;
 wire \scan[10] ;
 wire \scan[11] ;
 wire \scan[12] ;
 wire \scan[13] ;
 wire \scan[14] ;
 wire \scan[15] ;
 wire \scan[16] ;
 wire \scan[17] ;
 wire \scan[18] ;
 wire \scan[19] ;
 wire \scan[1] ;
 wire \scan[20] ;
 wire \scan[2] ;
 wire \scan[3] ;
 wire \scan[4] ;
 wire \scan[5] ;
 wire \scan[6] ;
 wire \scan[7] ;
 wire \scan[8] ;
 wire \scan[9] ;

 scan_controller scan_controller (.clk(wb_clk_i),
    .la_scan_clk_in(la_data_in[0]),
    .la_scan_data_in(la_data_in[1]),
    .la_scan_data_out(la_data_out[0]),
    .la_scan_latch_en(la_data_in[3]),
    .la_scan_select(la_data_in[2]),
    .ready(io_out[37]),
    .reset(wb_rst_i),
    .scan_clk_in(\clk[20] ),
    .scan_clk_out(\clk[0] ),
    .scan_data_in(\data[20] ),
    .scan_data_out(\data[0] ),
    .scan_latch_en(\latch[0] ),
    .scan_select(\scan[0] ),
    .set_clk_div(io_in[11]),
    .slow_clk(io_out[10]),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .active_select({io_in[20],
    io_in[19],
    io_in[18],
    io_in[17],
    io_in[16],
    io_in[15],
    io_in[14],
    io_in[13],
    io_in[12]}),
    .driver_sel({io_in[9],
    io_in[8]}),
    .inputs({io_in[28],
    io_in[27],
    io_in[26],
    io_in[25],
    io_in[24],
    io_in[23],
    io_in[22],
    io_in[21]}),
    .oeb({io_oeb[37],
    io_oeb[36],
    io_oeb[35],
    io_oeb[34],
    io_oeb[33],
    io_oeb[32],
    io_oeb[31],
    io_oeb[30],
    io_oeb[29],
    io_oeb[28],
    io_oeb[27],
    io_oeb[26],
    io_oeb[25],
    io_oeb[24],
    io_oeb[23],
    io_oeb[22],
    io_oeb[21],
    io_oeb[20],
    io_oeb[19],
    io_oeb[18],
    io_oeb[17],
    io_oeb[16],
    io_oeb[15],
    io_oeb[14],
    io_oeb[13],
    io_oeb[12],
    io_oeb[11],
    io_oeb[10],
    io_oeb[9],
    io_oeb[8],
    io_oeb[7],
    io_oeb[6],
    io_oeb[5],
    io_oeb[4],
    io_oeb[3],
    io_oeb[2],
    io_oeb[1],
    io_oeb[0]}),
    .outputs({io_out[36],
    io_out[35],
    io_out[34],
    io_out[33],
    io_out[32],
    io_out[31],
    io_out[30],
    io_out[29]}));
 scan_wrapper_339501025136214612 scan_wrapper_339501025136214612_0 (.clk_in(\clk[0] ),
    .clk_out(\clk[1] ),
    .data_in(\data[0] ),
    .data_out(\data[1] ),
    .latch_enable_in(\latch[0] ),
    .latch_enable_out(\latch[1] ),
    .scan_select_in(\scan[0] ),
    .scan_select_out(\scan[1] ),
    .vccd1(vccd1),
    .vssd1(vssd1));
 scan_wrapper_339501025136214612 scan_wrapper_339501025136214612_10 (.clk_in(\clk[10] ),
    .clk_out(\clk[11] ),
    .data_in(\data[10] ),
    .data_out(\data[11] ),
    .latch_enable_in(\latch[10] ),
    .latch_enable_out(\latch[11] ),
    .scan_select_in(\scan[10] ),
    .scan_select_out(\scan[11] ),
    .vccd1(vccd1),
    .vssd1(vssd1));
 scan_wrapper_339501025136214612 scan_wrapper_339501025136214612_11 (.clk_in(\clk[11] ),
    .clk_out(\clk[12] ),
    .data_in(\data[11] ),
    .data_out(\data[12] ),
    .latch_enable_in(\latch[11] ),
    .latch_enable_out(\latch[12] ),
    .scan_select_in(\scan[11] ),
    .scan_select_out(\scan[12] ),
    .vccd1(vccd1),
    .vssd1(vssd1));
 scan_wrapper_339501025136214612 scan_wrapper_339501025136214612_12 (.clk_in(\clk[12] ),
    .clk_out(\clk[13] ),
    .data_in(\data[12] ),
    .data_out(\data[13] ),
    .latch_enable_in(\latch[12] ),
    .latch_enable_out(\latch[13] ),
    .scan_select_in(\scan[12] ),
    .scan_select_out(\scan[13] ),
    .vccd1(vccd1),
    .vssd1(vssd1));
 scan_wrapper_339501025136214612 scan_wrapper_339501025136214612_13 (.clk_in(\clk[13] ),
    .clk_out(\clk[14] ),
    .data_in(\data[13] ),
    .data_out(\data[14] ),
    .latch_enable_in(\latch[13] ),
    .latch_enable_out(\latch[14] ),
    .scan_select_in(\scan[13] ),
    .scan_select_out(\scan[14] ),
    .vccd1(vccd1),
    .vssd1(vssd1));
 scan_wrapper_339501025136214612 scan_wrapper_339501025136214612_14 (.clk_in(\clk[14] ),
    .clk_out(\clk[15] ),
    .data_in(\data[14] ),
    .data_out(\data[15] ),
    .latch_enable_in(\latch[14] ),
    .latch_enable_out(\latch[15] ),
    .scan_select_in(\scan[14] ),
    .scan_select_out(\scan[15] ),
    .vccd1(vccd1),
    .vssd1(vssd1));
 scan_wrapper_339501025136214612 scan_wrapper_339501025136214612_15 (.clk_in(\clk[15] ),
    .clk_out(\clk[16] ),
    .data_in(\data[15] ),
    .data_out(\data[16] ),
    .latch_enable_in(\latch[15] ),
    .latch_enable_out(\latch[16] ),
    .scan_select_in(\scan[15] ),
    .scan_select_out(\scan[16] ),
    .vccd1(vccd1),
    .vssd1(vssd1));
 scan_wrapper_339501025136214612 scan_wrapper_339501025136214612_16 (.clk_in(\clk[16] ),
    .clk_out(\clk[17] ),
    .data_in(\data[16] ),
    .data_out(\data[17] ),
    .latch_enable_in(\latch[16] ),
    .latch_enable_out(\latch[17] ),
    .scan_select_in(\scan[16] ),
    .scan_select_out(\scan[17] ),
    .vccd1(vccd1),
    .vssd1(vssd1));
 scan_wrapper_339501025136214612 scan_wrapper_339501025136214612_17 (.clk_in(\clk[17] ),
    .clk_out(\clk[18] ),
    .data_in(\data[17] ),
    .data_out(\data[18] ),
    .latch_enable_in(\latch[17] ),
    .latch_enable_out(\latch[18] ),
    .scan_select_in(\scan[17] ),
    .scan_select_out(\scan[18] ),
    .vccd1(vccd1),
    .vssd1(vssd1));
 scan_wrapper_339501025136214612 scan_wrapper_339501025136214612_18 (.clk_in(\clk[18] ),
    .clk_out(\clk[19] ),
    .data_in(\data[18] ),
    .data_out(\data[19] ),
    .latch_enable_in(\latch[18] ),
    .latch_enable_out(\latch[19] ),
    .scan_select_in(\scan[18] ),
    .scan_select_out(\scan[19] ),
    .vccd1(vccd1),
    .vssd1(vssd1));
 scan_wrapper_339501025136214612 scan_wrapper_339501025136214612_19 (.clk_in(\clk[19] ),
    .clk_out(\clk[20] ),
    .data_in(\data[19] ),
    .data_out(\data[20] ),
    .latch_enable_in(\latch[19] ),
    .latch_enable_out(\latch[20] ),
    .scan_select_in(\scan[19] ),
    .scan_select_out(\scan[20] ),
    .vccd1(vccd1),
    .vssd1(vssd1));
 scan_wrapper_339501025136214612 scan_wrapper_339501025136214612_3 (.clk_in(\clk[3] ),
    .clk_out(\clk[4] ),
    .data_in(\data[3] ),
    .data_out(\data[4] ),
    .latch_enable_in(\latch[3] ),
    .latch_enable_out(\latch[4] ),
    .scan_select_in(\scan[3] ),
    .scan_select_out(\scan[4] ),
    .vccd1(vccd1),
    .vssd1(vssd1));
 scan_wrapper_339501025136214612 scan_wrapper_339501025136214612_4 (.clk_in(\clk[4] ),
    .clk_out(\clk[5] ),
    .data_in(\data[4] ),
    .data_out(\data[5] ),
    .latch_enable_in(\latch[4] ),
    .latch_enable_out(\latch[5] ),
    .scan_select_in(\scan[4] ),
    .scan_select_out(\scan[5] ),
    .vccd1(vccd1),
    .vssd1(vssd1));
 scan_wrapper_339501025136214612 scan_wrapper_339501025136214612_5 (.clk_in(\clk[5] ),
    .clk_out(\clk[6] ),
    .data_in(\data[5] ),
    .data_out(\data[6] ),
    .latch_enable_in(\latch[5] ),
    .latch_enable_out(\latch[6] ),
    .scan_select_in(\scan[5] ),
    .scan_select_out(\scan[6] ),
    .vccd1(vccd1),
    .vssd1(vssd1));
 scan_wrapper_339501025136214612 scan_wrapper_339501025136214612_6 (.clk_in(\clk[6] ),
    .clk_out(\clk[7] ),
    .data_in(\data[6] ),
    .data_out(\data[7] ),
    .latch_enable_in(\latch[6] ),
    .latch_enable_out(\latch[7] ),
    .scan_select_in(\scan[6] ),
    .scan_select_out(\scan[7] ),
    .vccd1(vccd1),
    .vssd1(vssd1));
 scan_wrapper_339501025136214612 scan_wrapper_339501025136214612_7 (.clk_in(\clk[7] ),
    .clk_out(\clk[8] ),
    .data_in(\data[7] ),
    .data_out(\data[8] ),
    .latch_enable_in(\latch[7] ),
    .latch_enable_out(\latch[8] ),
    .scan_select_in(\scan[7] ),
    .scan_select_out(\scan[8] ),
    .vccd1(vccd1),
    .vssd1(vssd1));
 scan_wrapper_339501025136214612 scan_wrapper_339501025136214612_8 (.clk_in(\clk[8] ),
    .clk_out(\clk[9] ),
    .data_in(\data[8] ),
    .data_out(\data[9] ),
    .latch_enable_in(\latch[8] ),
    .latch_enable_out(\latch[9] ),
    .scan_select_in(\scan[8] ),
    .scan_select_out(\scan[9] ),
    .vccd1(vccd1),
    .vssd1(vssd1));
 scan_wrapper_339501025136214612 scan_wrapper_339501025136214612_9 (.clk_in(\clk[9] ),
    .clk_out(\clk[10] ),
    .data_in(\data[9] ),
    .data_out(\data[10] ),
    .latch_enable_in(\latch[9] ),
    .latch_enable_out(\latch[10] ),
    .scan_select_in(\scan[9] ),
    .scan_select_out(\scan[10] ),
    .vccd1(vccd1),
    .vssd1(vssd1));
 scan_wrapper_340805072482992722 scan_wrapper_340805072482992722_1 (.clk_in(\clk[1] ),
    .clk_out(\clk[2] ),
    .data_in(\data[1] ),
    .data_out(\data[2] ),
    .latch_enable_in(\latch[1] ),
    .latch_enable_out(\latch[2] ),
    .scan_select_in(\scan[1] ),
    .scan_select_out(\scan[2] ),
    .vccd1(vccd1),
    .vssd1(vssd1));
 scan_wrapper_341535056611770964 scan_wrapper_341535056611770964_2 (.clk_in(\clk[2] ),
    .clk_out(\clk[3] ),
    .data_in(\data[2] ),
    .data_out(\data[3] ),
    .latch_enable_in(\latch[2] ),
    .latch_enable_out(\latch[3] ),
    .scan_select_in(\scan[2] ),
    .scan_select_out(\scan[3] ),
    .vccd1(vccd1),
    .vssd1(vssd1));
endmodule
