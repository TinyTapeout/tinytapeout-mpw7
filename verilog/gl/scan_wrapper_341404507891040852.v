module scan_wrapper_341404507891040852 (clk_in,
    clk_out,
    data_in,
    data_out,
    latch_enable_in,
    latch_enable_out,
    scan_select_in,
    scan_select_out,
    vccd1,
    vssd1);
 input clk_in;
 output clk_out;
 input data_in;
 output data_out;
 input latch_enable_in;
 output latch_enable_out;
 input scan_select_in;
 output scan_select_out;
 input vccd1;
 input vssd1;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire clk;
 wire data_in_i;
 wire data_out_i;
 wire latch_enable_in_i;
 wire \scan_data_in[1] ;
 wire \scan_data_in[2] ;
 wire \scan_data_in[3] ;
 wire \scan_data_in[4] ;
 wire \scan_data_in[5] ;
 wire \scan_data_in[6] ;
 wire \scan_data_in[7] ;
 wire \scan_data_out[7] ;
 wire scan_select_in_i;
 wire \user_module.cfg_dataclk ;
 wire \user_module.cfg_frameinc ;
 wire \user_module.cfg_framestrb ;
 wire \user_module.cfg_mode ;
 wire \user_module.cfg_sel[0] ;
 wire \user_module.cfg_sel[1] ;
 wire \user_module.cfg_sel[2] ;
 wire \user_module.cfg_sel[3] ;
 wire \user_module.fab_clk ;
 wire \user_module.frame_ctr[0] ;
 wire \user_module.frame_ctr[1] ;
 wire \user_module.frame_ctr[2] ;
 wire \user_module.frame_ctr[3] ;
 wire \user_module.frame_sr[0] ;
 wire \user_module.frame_sr[10] ;
 wire \user_module.frame_sr[11] ;
 wire \user_module.frame_sr[1] ;
 wire \user_module.frame_sr[2] ;
 wire \user_module.frame_sr[3] ;
 wire \user_module.frame_sr[4] ;
 wire \user_module.frame_sr[5] ;
 wire \user_module.frame_sr[6] ;
 wire \user_module.frame_sr[7] ;
 wire \user_module.frame_sr[8] ;
 wire \user_module.frame_sr[9] ;
 wire \user_module.frame_strb[0] ;
 wire \user_module.frame_strb[1] ;
 wire \user_module.frame_strb[2] ;
 wire \user_module.frame_strb[3] ;
 wire \user_module.frame_strb[4] ;
 wire \user_module.frame_strb[5] ;
 wire \user_module.frame_strb[6] ;
 wire \user_module.frame_strb[7] ;
 wire \user_module.frame_strb[8] ;
 wire \user_module.frame_strb[9] ;
 wire \user_module.gated_strobe ;
 wire \user_module.io_in[0] ;
 wire \user_module.io_in[1] ;
 wire \user_module.io_in[2] ;
 wire \user_module.io_in[3] ;
 wire \user_module.io_in[4] ;
 wire \user_module.io_in[5] ;
 wire \user_module.io_in[6] ;
 wire \user_module.io_in[7] ;
 wire \user_module.y_c[0].x_c[0].bi ;
 wire \user_module.y_c[0].x_c[0].lc_i.L ;
 wire \user_module.y_c[0].x_c[0].lc_i.Q ;
 wire \user_module.y_c[0].x_c[0].lc_i.R ;
 wire \user_module.y_c[0].x_c[0].lc_i.cfg[0] ;
 wire \user_module.y_c[0].x_c[0].lc_i.cfg[1] ;
 wire \user_module.y_c[0].x_c[0].lc_i.cfg[2] ;
 wire \user_module.y_c[0].x_c[0].lc_i.cfg[3] ;
 wire \user_module.y_c[0].x_c[0].lc_i.cfg[4] ;
 wire \user_module.y_c[0].x_c[0].lc_i.cfg[5] ;
 wire \user_module.y_c[0].x_c[0].lc_i.cfg[6] ;
 wire \user_module.y_c[0].x_c[0].lc_i.i0 ;
 wire \user_module.y_c[0].x_c[0].lc_i.i0a ;
 wire \user_module.y_c[0].x_c[0].lc_i.i0b ;
 wire \user_module.y_c[0].x_c[0].lc_i.i1 ;
 wire \user_module.y_c[0].x_c[0].lc_i.i1a ;
 wire \user_module.y_c[0].x_c[0].lc_i.i1b ;
 wire \user_module.y_c[0].x_c[0].lc_i.muxo_n ;
 wire \user_module.y_c[0].x_c[0].lc_i.s0 ;
 wire \user_module.y_c[0].x_c[0].lc_i.s0a ;
 wire \user_module.y_c[0].x_c[0].lc_i.s0b ;
 wire \user_module.y_c[0].x_c[0].lc_i.s0s ;
 wire \user_module.y_c[0].x_c[1].bi ;
 wire \user_module.y_c[0].x_c[1].lc_i.R ;
 wire \user_module.y_c[0].x_c[1].lc_i.T ;
 wire \user_module.y_c[0].x_c[1].lc_i.cfg[0] ;
 wire \user_module.y_c[0].x_c[1].lc_i.cfg[1] ;
 wire \user_module.y_c[0].x_c[1].lc_i.cfg[2] ;
 wire \user_module.y_c[0].x_c[1].lc_i.cfg[3] ;
 wire \user_module.y_c[0].x_c[1].lc_i.cfg[4] ;
 wire \user_module.y_c[0].x_c[1].lc_i.cfg[5] ;
 wire \user_module.y_c[0].x_c[1].lc_i.cfg[6] ;
 wire \user_module.y_c[0].x_c[1].lc_i.cfg[7] ;
 wire \user_module.y_c[0].x_c[1].lc_i.dff.dffo_n ;
 wire \user_module.y_c[0].x_c[1].lc_i.i0 ;
 wire \user_module.y_c[0].x_c[1].lc_i.i0a ;
 wire \user_module.y_c[0].x_c[1].lc_i.i0b ;
 wire \user_module.y_c[0].x_c[1].lc_i.i1 ;
 wire \user_module.y_c[0].x_c[1].lc_i.i1a ;
 wire \user_module.y_c[0].x_c[1].lc_i.i1b ;
 wire \user_module.y_c[0].x_c[1].lc_i.muxo_n ;
 wire \user_module.y_c[0].x_c[1].lc_i.s0 ;
 wire \user_module.y_c[0].x_c[1].lc_i.s0a ;
 wire \user_module.y_c[0].x_c[1].lc_i.s0b ;
 wire \user_module.y_c[0].x_c[1].lc_i.s0s ;
 wire \user_module.y_c[0].x_c[2].bi ;
 wire \user_module.y_c[0].x_c[2].lc_i.T ;
 wire \user_module.y_c[0].x_c[2].lc_i.cfg[0] ;
 wire \user_module.y_c[0].x_c[2].lc_i.cfg[1] ;
 wire \user_module.y_c[0].x_c[2].lc_i.cfg[2] ;
 wire \user_module.y_c[0].x_c[2].lc_i.cfg[3] ;
 wire \user_module.y_c[0].x_c[2].lc_i.cfg[4] ;
 wire \user_module.y_c[0].x_c[2].lc_i.cfg[5] ;
 wire \user_module.y_c[0].x_c[2].lc_i.cfg[6] ;
 wire \user_module.y_c[0].x_c[2].lc_i.i0 ;
 wire \user_module.y_c[0].x_c[2].lc_i.i0a ;
 wire \user_module.y_c[0].x_c[2].lc_i.i0b ;
 wire \user_module.y_c[0].x_c[2].lc_i.i1 ;
 wire \user_module.y_c[0].x_c[2].lc_i.i1a ;
 wire \user_module.y_c[0].x_c[2].lc_i.i1b ;
 wire \user_module.y_c[0].x_c[2].lc_i.muxo_n ;
 wire \user_module.y_c[0].x_c[2].lc_i.s0 ;
 wire \user_module.y_c[0].x_c[2].lc_i.s0a ;
 wire \user_module.y_c[0].x_c[2].lc_i.s0b ;
 wire \user_module.y_c[0].x_c[2].lc_i.s0s ;
 wire \user_module.y_c[1].x_c[0].bi ;
 wire \user_module.y_c[1].x_c[0].lc_i.cfg[0] ;
 wire \user_module.y_c[1].x_c[0].lc_i.cfg[1] ;
 wire \user_module.y_c[1].x_c[0].lc_i.cfg[2] ;
 wire \user_module.y_c[1].x_c[0].lc_i.cfg[3] ;
 wire \user_module.y_c[1].x_c[0].lc_i.cfg[4] ;
 wire \user_module.y_c[1].x_c[0].lc_i.cfg[5] ;
 wire \user_module.y_c[1].x_c[0].lc_i.cfg[6] ;
 wire \user_module.y_c[1].x_c[0].lc_i.cfg[7] ;
 wire \user_module.y_c[1].x_c[0].lc_i.dff.dffo_n ;
 wire \user_module.y_c[1].x_c[0].lc_i.i0 ;
 wire \user_module.y_c[1].x_c[0].lc_i.i0a ;
 wire \user_module.y_c[1].x_c[0].lc_i.i0b ;
 wire \user_module.y_c[1].x_c[0].lc_i.i1 ;
 wire \user_module.y_c[1].x_c[0].lc_i.i1a ;
 wire \user_module.y_c[1].x_c[0].lc_i.i1b ;
 wire \user_module.y_c[1].x_c[0].lc_i.muxo_n ;
 wire \user_module.y_c[1].x_c[0].lc_i.s0 ;
 wire \user_module.y_c[1].x_c[0].lc_i.s0a ;
 wire \user_module.y_c[1].x_c[0].lc_i.s0b ;
 wire \user_module.y_c[1].x_c[0].lc_i.s0s ;
 wire \user_module.y_c[1].x_c[1].bi ;
 wire \user_module.y_c[1].x_c[1].lc_i.cfg[0] ;
 wire \user_module.y_c[1].x_c[1].lc_i.cfg[1] ;
 wire \user_module.y_c[1].x_c[1].lc_i.cfg[2] ;
 wire \user_module.y_c[1].x_c[1].lc_i.cfg[3] ;
 wire \user_module.y_c[1].x_c[1].lc_i.cfg[4] ;
 wire \user_module.y_c[1].x_c[1].lc_i.cfg[5] ;
 wire \user_module.y_c[1].x_c[1].lc_i.cfg[6] ;
 wire \user_module.y_c[1].x_c[1].lc_i.i0 ;
 wire \user_module.y_c[1].x_c[1].lc_i.i0a ;
 wire \user_module.y_c[1].x_c[1].lc_i.i0b ;
 wire \user_module.y_c[1].x_c[1].lc_i.i1 ;
 wire \user_module.y_c[1].x_c[1].lc_i.i1a ;
 wire \user_module.y_c[1].x_c[1].lc_i.i1b ;
 wire \user_module.y_c[1].x_c[1].lc_i.muxo_n ;
 wire \user_module.y_c[1].x_c[1].lc_i.s0 ;
 wire \user_module.y_c[1].x_c[1].lc_i.s0a ;
 wire \user_module.y_c[1].x_c[1].lc_i.s0b ;
 wire \user_module.y_c[1].x_c[1].lc_i.s0s ;
 wire \user_module.y_c[1].x_c[2].bi ;
 wire \user_module.y_c[1].x_c[2].lc_i.cfg[0] ;
 wire \user_module.y_c[1].x_c[2].lc_i.cfg[1] ;
 wire \user_module.y_c[1].x_c[2].lc_i.cfg[2] ;
 wire \user_module.y_c[1].x_c[2].lc_i.cfg[3] ;
 wire \user_module.y_c[1].x_c[2].lc_i.cfg[4] ;
 wire \user_module.y_c[1].x_c[2].lc_i.cfg[5] ;
 wire \user_module.y_c[1].x_c[2].lc_i.cfg[6] ;
 wire \user_module.y_c[1].x_c[2].lc_i.cfg[7] ;
 wire \user_module.y_c[1].x_c[2].lc_i.dff.dffo_n ;
 wire \user_module.y_c[1].x_c[2].lc_i.i0 ;
 wire \user_module.y_c[1].x_c[2].lc_i.i0a ;
 wire \user_module.y_c[1].x_c[2].lc_i.i0b ;
 wire \user_module.y_c[1].x_c[2].lc_i.i1 ;
 wire \user_module.y_c[1].x_c[2].lc_i.i1a ;
 wire \user_module.y_c[1].x_c[2].lc_i.i1b ;
 wire \user_module.y_c[1].x_c[2].lc_i.muxo_n ;
 wire \user_module.y_c[1].x_c[2].lc_i.s0 ;
 wire \user_module.y_c[1].x_c[2].lc_i.s0a ;
 wire \user_module.y_c[1].x_c[2].lc_i.s0b ;
 wire \user_module.y_c[1].x_c[2].lc_i.s0s ;
 wire \user_module.y_c[2].x_c[0].bi ;
 wire \user_module.y_c[2].x_c[0].lc_i.cfg[0] ;
 wire \user_module.y_c[2].x_c[0].lc_i.cfg[1] ;
 wire \user_module.y_c[2].x_c[0].lc_i.cfg[2] ;
 wire \user_module.y_c[2].x_c[0].lc_i.cfg[3] ;
 wire \user_module.y_c[2].x_c[0].lc_i.cfg[4] ;
 wire \user_module.y_c[2].x_c[0].lc_i.cfg[5] ;
 wire \user_module.y_c[2].x_c[0].lc_i.cfg[6] ;
 wire \user_module.y_c[2].x_c[0].lc_i.i0 ;
 wire \user_module.y_c[2].x_c[0].lc_i.i0a ;
 wire \user_module.y_c[2].x_c[0].lc_i.i0b ;
 wire \user_module.y_c[2].x_c[0].lc_i.i1 ;
 wire \user_module.y_c[2].x_c[0].lc_i.i1a ;
 wire \user_module.y_c[2].x_c[0].lc_i.i1b ;
 wire \user_module.y_c[2].x_c[0].lc_i.muxo_n ;
 wire \user_module.y_c[2].x_c[0].lc_i.s0 ;
 wire \user_module.y_c[2].x_c[0].lc_i.s0a ;
 wire \user_module.y_c[2].x_c[0].lc_i.s0b ;
 wire \user_module.y_c[2].x_c[0].lc_i.s0s ;
 wire \user_module.y_c[2].x_c[1].bi ;
 wire \user_module.y_c[2].x_c[1].lc_i.cfg[0] ;
 wire \user_module.y_c[2].x_c[1].lc_i.cfg[1] ;
 wire \user_module.y_c[2].x_c[1].lc_i.cfg[2] ;
 wire \user_module.y_c[2].x_c[1].lc_i.cfg[3] ;
 wire \user_module.y_c[2].x_c[1].lc_i.cfg[4] ;
 wire \user_module.y_c[2].x_c[1].lc_i.cfg[5] ;
 wire \user_module.y_c[2].x_c[1].lc_i.cfg[6] ;
 wire \user_module.y_c[2].x_c[1].lc_i.cfg[7] ;
 wire \user_module.y_c[2].x_c[1].lc_i.dff.dffo_n ;
 wire \user_module.y_c[2].x_c[1].lc_i.i0 ;
 wire \user_module.y_c[2].x_c[1].lc_i.i0a ;
 wire \user_module.y_c[2].x_c[1].lc_i.i0b ;
 wire \user_module.y_c[2].x_c[1].lc_i.i1 ;
 wire \user_module.y_c[2].x_c[1].lc_i.i1a ;
 wire \user_module.y_c[2].x_c[1].lc_i.i1b ;
 wire \user_module.y_c[2].x_c[1].lc_i.muxo_n ;
 wire \user_module.y_c[2].x_c[1].lc_i.s0 ;
 wire \user_module.y_c[2].x_c[1].lc_i.s0a ;
 wire \user_module.y_c[2].x_c[1].lc_i.s0b ;
 wire \user_module.y_c[2].x_c[1].lc_i.s0s ;
 wire \user_module.y_c[2].x_c[2].bi ;
 wire \user_module.y_c[2].x_c[2].lc_i.cfg[0] ;
 wire \user_module.y_c[2].x_c[2].lc_i.cfg[1] ;
 wire \user_module.y_c[2].x_c[2].lc_i.cfg[2] ;
 wire \user_module.y_c[2].x_c[2].lc_i.cfg[3] ;
 wire \user_module.y_c[2].x_c[2].lc_i.cfg[4] ;
 wire \user_module.y_c[2].x_c[2].lc_i.cfg[5] ;
 wire \user_module.y_c[2].x_c[2].lc_i.cfg[6] ;
 wire \user_module.y_c[2].x_c[2].lc_i.i0 ;
 wire \user_module.y_c[2].x_c[2].lc_i.i0a ;
 wire \user_module.y_c[2].x_c[2].lc_i.i0b ;
 wire \user_module.y_c[2].x_c[2].lc_i.i1 ;
 wire \user_module.y_c[2].x_c[2].lc_i.i1a ;
 wire \user_module.y_c[2].x_c[2].lc_i.i1b ;
 wire \user_module.y_c[2].x_c[2].lc_i.muxo_n ;
 wire \user_module.y_c[2].x_c[2].lc_i.s0 ;
 wire \user_module.y_c[2].x_c[2].lc_i.s0a ;
 wire \user_module.y_c[2].x_c[2].lc_i.s0b ;
 wire \user_module.y_c[2].x_c[2].lc_i.s0s ;
 wire \user_module.y_c[3].x_c[0].bi ;
 wire \user_module.y_c[3].x_c[0].lc_i.L ;
 wire \user_module.y_c[3].x_c[0].lc_i.cfg[0] ;
 wire \user_module.y_c[3].x_c[0].lc_i.cfg[1] ;
 wire \user_module.y_c[3].x_c[0].lc_i.cfg[2] ;
 wire \user_module.y_c[3].x_c[0].lc_i.cfg[3] ;
 wire \user_module.y_c[3].x_c[0].lc_i.cfg[4] ;
 wire \user_module.y_c[3].x_c[0].lc_i.cfg[5] ;
 wire \user_module.y_c[3].x_c[0].lc_i.cfg[6] ;
 wire \user_module.y_c[3].x_c[0].lc_i.cfg[7] ;
 wire \user_module.y_c[3].x_c[0].lc_i.dff.dffo_n ;
 wire \user_module.y_c[3].x_c[0].lc_i.i0 ;
 wire \user_module.y_c[3].x_c[0].lc_i.i0a ;
 wire \user_module.y_c[3].x_c[0].lc_i.i0b ;
 wire \user_module.y_c[3].x_c[0].lc_i.i1 ;
 wire \user_module.y_c[3].x_c[0].lc_i.i1a ;
 wire \user_module.y_c[3].x_c[0].lc_i.i1b ;
 wire \user_module.y_c[3].x_c[0].lc_i.muxo_n ;
 wire \user_module.y_c[3].x_c[0].lc_i.s0 ;
 wire \user_module.y_c[3].x_c[0].lc_i.s0a ;
 wire \user_module.y_c[3].x_c[0].lc_i.s0b ;
 wire \user_module.y_c[3].x_c[0].lc_i.s0s ;
 wire \user_module.y_c[3].x_c[1].bi ;
 wire \user_module.y_c[3].x_c[1].lc_i.cfg[0] ;
 wire \user_module.y_c[3].x_c[1].lc_i.cfg[1] ;
 wire \user_module.y_c[3].x_c[1].lc_i.cfg[2] ;
 wire \user_module.y_c[3].x_c[1].lc_i.cfg[3] ;
 wire \user_module.y_c[3].x_c[1].lc_i.cfg[4] ;
 wire \user_module.y_c[3].x_c[1].lc_i.cfg[5] ;
 wire \user_module.y_c[3].x_c[1].lc_i.cfg[6] ;
 wire \user_module.y_c[3].x_c[1].lc_i.i0 ;
 wire \user_module.y_c[3].x_c[1].lc_i.i0a ;
 wire \user_module.y_c[3].x_c[1].lc_i.i0b ;
 wire \user_module.y_c[3].x_c[1].lc_i.i1 ;
 wire \user_module.y_c[3].x_c[1].lc_i.i1a ;
 wire \user_module.y_c[3].x_c[1].lc_i.i1b ;
 wire \user_module.y_c[3].x_c[1].lc_i.muxo_n ;
 wire \user_module.y_c[3].x_c[1].lc_i.s0 ;
 wire \user_module.y_c[3].x_c[1].lc_i.s0a ;
 wire \user_module.y_c[3].x_c[1].lc_i.s0b ;
 wire \user_module.y_c[3].x_c[1].lc_i.s0s ;
 wire \user_module.y_c[3].x_c[2].bi ;
 wire \user_module.y_c[3].x_c[2].lc_i.cfg[0] ;
 wire \user_module.y_c[3].x_c[2].lc_i.cfg[1] ;
 wire \user_module.y_c[3].x_c[2].lc_i.cfg[2] ;
 wire \user_module.y_c[3].x_c[2].lc_i.cfg[3] ;
 wire \user_module.y_c[3].x_c[2].lc_i.cfg[4] ;
 wire \user_module.y_c[3].x_c[2].lc_i.cfg[5] ;
 wire \user_module.y_c[3].x_c[2].lc_i.cfg[6] ;
 wire \user_module.y_c[3].x_c[2].lc_i.cfg[7] ;
 wire \user_module.y_c[3].x_c[2].lc_i.dff.dffo_n ;
 wire \user_module.y_c[3].x_c[2].lc_i.i0 ;
 wire \user_module.y_c[3].x_c[2].lc_i.i0a ;
 wire \user_module.y_c[3].x_c[2].lc_i.i0b ;
 wire \user_module.y_c[3].x_c[2].lc_i.i1 ;
 wire \user_module.y_c[3].x_c[2].lc_i.i1a ;
 wire \user_module.y_c[3].x_c[2].lc_i.i1b ;
 wire \user_module.y_c[3].x_c[2].lc_i.muxo_n ;
 wire \user_module.y_c[3].x_c[2].lc_i.s0 ;
 wire \user_module.y_c[3].x_c[2].lc_i.s0a ;
 wire \user_module.y_c[3].x_c[2].lc_i.s0b ;
 wire \user_module.y_c[3].x_c[2].lc_i.s0s ;
 wire \user_module.y_c[4].x_c[0].lc_i.cfg[0] ;
 wire \user_module.y_c[4].x_c[0].lc_i.cfg[1] ;
 wire \user_module.y_c[4].x_c[0].lc_i.cfg[2] ;
 wire \user_module.y_c[4].x_c[0].lc_i.cfg[3] ;
 wire \user_module.y_c[4].x_c[0].lc_i.cfg[4] ;
 wire \user_module.y_c[4].x_c[0].lc_i.cfg[5] ;
 wire \user_module.y_c[4].x_c[0].lc_i.cfg[6] ;
 wire \user_module.y_c[4].x_c[0].lc_i.i0 ;
 wire \user_module.y_c[4].x_c[0].lc_i.i0a ;
 wire \user_module.y_c[4].x_c[0].lc_i.i0b ;
 wire \user_module.y_c[4].x_c[0].lc_i.i1 ;
 wire \user_module.y_c[4].x_c[0].lc_i.i1a ;
 wire \user_module.y_c[4].x_c[0].lc_i.i1b ;
 wire \user_module.y_c[4].x_c[0].lc_i.muxo_n ;
 wire \user_module.y_c[4].x_c[0].lc_i.s0 ;
 wire \user_module.y_c[4].x_c[0].lc_i.s0a ;
 wire \user_module.y_c[4].x_c[0].lc_i.s0b ;
 wire \user_module.y_c[4].x_c[0].lc_i.s0s ;
 wire \user_module.y_c[4].x_c[1].lc_i.cfg[0] ;
 wire \user_module.y_c[4].x_c[1].lc_i.cfg[1] ;
 wire \user_module.y_c[4].x_c[1].lc_i.cfg[2] ;
 wire \user_module.y_c[4].x_c[1].lc_i.cfg[3] ;
 wire \user_module.y_c[4].x_c[1].lc_i.cfg[4] ;
 wire \user_module.y_c[4].x_c[1].lc_i.cfg[5] ;
 wire \user_module.y_c[4].x_c[1].lc_i.cfg[6] ;
 wire \user_module.y_c[4].x_c[1].lc_i.cfg[7] ;
 wire \user_module.y_c[4].x_c[1].lc_i.dff.dffo_n ;
 wire \user_module.y_c[4].x_c[1].lc_i.i0 ;
 wire \user_module.y_c[4].x_c[1].lc_i.i0a ;
 wire \user_module.y_c[4].x_c[1].lc_i.i0b ;
 wire \user_module.y_c[4].x_c[1].lc_i.i1 ;
 wire \user_module.y_c[4].x_c[1].lc_i.i1a ;
 wire \user_module.y_c[4].x_c[1].lc_i.i1b ;
 wire \user_module.y_c[4].x_c[1].lc_i.muxo_n ;
 wire \user_module.y_c[4].x_c[1].lc_i.s0 ;
 wire \user_module.y_c[4].x_c[1].lc_i.s0a ;
 wire \user_module.y_c[4].x_c[1].lc_i.s0b ;
 wire \user_module.y_c[4].x_c[1].lc_i.s0s ;
 wire \user_module.y_c[4].x_c[2].lc_i.cfg[0] ;
 wire \user_module.y_c[4].x_c[2].lc_i.cfg[1] ;
 wire \user_module.y_c[4].x_c[2].lc_i.cfg[2] ;
 wire \user_module.y_c[4].x_c[2].lc_i.cfg[3] ;
 wire \user_module.y_c[4].x_c[2].lc_i.cfg[4] ;
 wire \user_module.y_c[4].x_c[2].lc_i.cfg[5] ;
 wire \user_module.y_c[4].x_c[2].lc_i.cfg[6] ;
 wire \user_module.y_c[4].x_c[2].lc_i.i0 ;
 wire \user_module.y_c[4].x_c[2].lc_i.i0a ;
 wire \user_module.y_c[4].x_c[2].lc_i.i0b ;
 wire \user_module.y_c[4].x_c[2].lc_i.i1 ;
 wire \user_module.y_c[4].x_c[2].lc_i.i1a ;
 wire \user_module.y_c[4].x_c[2].lc_i.i1b ;
 wire \user_module.y_c[4].x_c[2].lc_i.muxo_n ;
 wire \user_module.y_c[4].x_c[2].lc_i.s0 ;
 wire \user_module.y_c[4].x_c[2].lc_i.s0a ;
 wire \user_module.y_c[4].x_c[2].lc_i.s0b ;
 wire \user_module.y_c[4].x_c[2].lc_i.s0s ;

 sky130_fd_sc_hd__diode_2 ANTENNA_0 (.DIODE(_059_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_1 (.DIODE(\user_module.y_c[0].x_c[0].lc_i.i0a ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_2 (.DIODE(\user_module.y_c[0].x_c[2].lc_i.s0a ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_3 (.DIODE(\user_module.y_c[2].x_c[2].lc_i.s0b ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_0_10 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_0_108 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_0_121 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_6 FILLER_0_133 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_0_139 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_0_149 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_6 FILLER_0_161 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_0_167 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_0_17 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_0_175 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_8 FILLER_0_182 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_0_24 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_0_3 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_0_34 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_0_43 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_0_52 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_0_57 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_0_68 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_0_80 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 FILLER_0_85 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_0_96 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_6 FILLER_10_106 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_10_112 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_10_125 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_10_136 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_10_153 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_10_169 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_10_185 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_10_189 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_10_24 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_10_39 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_10_55 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_10_8 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_10_80 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_11_108 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_11_11 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_11_125 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_11_141 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_11_157 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_11_164 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_8 FILLER_11_181 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_11_189 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_11_27 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_11_52 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_11_57 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_6 FILLER_11_71 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_11_77 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_11_99 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_12_120 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_12_136 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_12_153 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_12_169 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_12_185 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_12_189 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_12_24 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_12_29 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_12_33 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_12_55 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_12_8 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_12_80 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_12_93 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_13_108 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_13_11 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_13_125 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_13_141 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_13_157 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_13_164 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_8 FILLER_13_181 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_13_189 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_13_27 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_13_52 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_13_70 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_13_74 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_13_96 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_14_104 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_8 FILLER_14_131 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_14_139 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_14_153 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_14_169 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_14_185 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_14_189 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_14_24 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_14_29 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_14_33 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_14_55 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_14_8 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_14_80 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_14_88 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_15_108 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_15_11 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_15_134 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_15_150 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_6 FILLER_15_162 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_8 FILLER_15_181 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_15_189 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_15_27 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_15_52 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 FILLER_15_57 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_15_81 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_16_115 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_8 FILLER_16_131 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_16_139 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_16_153 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_16_169 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_16_185 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_16_189 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_16_24 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_16_29 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_16_33 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_16_55 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_16_8 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_16_80 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_16_88 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_17_100 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_17_108 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_17_11 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_17_136 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_17_152 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_17_164 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_8 FILLER_17_181 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_17_189 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_17_27 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_17_52 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_6 FILLER_17_57 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_17_75 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_18_125 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_18_136 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_18_153 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_18_169 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_18_185 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_18_189 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_18_24 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_6 FILLER_18_29 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_18_55 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_18_8 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_18_80 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_18_85 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_18_98 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_19_108 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_19_125 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_19_141 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_19_157 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_19_164 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_19_177 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_19_186 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_19_20 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_19_3 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_19_36 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_19_52 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_19_57 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_19_68 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_19_7 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_6 FILLER_19_93 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_19_99 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_1_108 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_1_121 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_1_133 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_1_14 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_1_145 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_1_157 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_1_164 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_1_176 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_6 FILLER_1_183 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_1_189 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_1_23 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_1_3 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_1_32 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_1_41 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_1_52 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_1_60 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_1_7 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_1_72 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_1_84 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_1_96 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_20_108 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_20_12 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_20_124 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_20_136 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_20_153 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_20_165 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_20_177 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_20_186 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_20_24 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_2 FILLER_20_29 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_20_3 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_20_39 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_20_55 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_20_80 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_21_108 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_21_125 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_21_141 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_21_157 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_21_164 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_21_177 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_21_186 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_21_20 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_21_36 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_21_52 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_21_57 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_21_66 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_21_8 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_21_91 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_21_95 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_22_100 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_22_116 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_22_12 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_8 FILLER_22_132 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_22_149 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_2 FILLER_22_161 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_2 FILLER_22_171 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_2 FILLER_22_175 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_22_185 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_22_189 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_22_24 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_2 FILLER_22_3 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_22_32 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_22_48 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_22_64 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_22_80 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 FILLER_22_85 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_23_108 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_23_12 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_23_125 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_23_137 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_23_149 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_6 FILLER_23_161 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_23_167 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_23_177 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_23_186 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_23_24 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_2 FILLER_23_3 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_23_36 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_23_52 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_23_60 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_23_76 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_23_92 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_24_108 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_24_124 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_24_13 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_24_136 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_24_149 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_24_161 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_24_173 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_24_185 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_24_189 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_24_24 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 FILLER_24_3 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_24_36 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_24_48 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_24_64 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_24_80 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_24_92 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_25_108 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_25_125 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_25_137 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_25_149 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_6 FILLER_25_161 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_25_167 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_25_173 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_25_18 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_8 FILLER_25_180 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_2 FILLER_25_188 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_25_29 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 FILLER_25_3 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_25_40 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_25_52 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_25_60 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_25_76 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_25_9 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_25_92 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_26_100 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_26_116 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_26_128 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_26_136 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_26_14 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_26_149 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_26_161 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_26_168 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_26_175 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_8 FILLER_26_182 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_26_24 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_26_3 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_26_35 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_26_47 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_26_59 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_26_7 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_8 FILLER_26_75 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_26_83 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 FILLER_26_85 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_27_107 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_27_111 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_27_121 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_27_133 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_27_145 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_27_15 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_27_156 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_27_163 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_27_167 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_2 FILLER_27_172 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_2 FILLER_27_177 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_2 FILLER_27_181 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_27_186 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_27_22 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_2 FILLER_27_3 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_27_30 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_27_41 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_27_52 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_27_57 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_27_66 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_27_78 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_27_8 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_27_94 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_27_98 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_28_107 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_28_119 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_8 FILLER_28_13 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_8 FILLER_28_131 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_28_139 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_28_148 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_6 FILLER_28_155 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_28_165 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_28_172 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_28_179 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_28_186 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_28_24 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_28_29 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_28_3 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_28_36 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_28_45 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_28_56 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_28_68 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_28_80 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_2 FILLER_28_85 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_28_95 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_29_107 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_29_111 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_29_121 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_29_133 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_29_144 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_29_15 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_29_151 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_8 FILLER_29_158 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_2 FILLER_29_166 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_29_172 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_8 FILLER_29_179 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 FILLER_29_187 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_29_22 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_29_29 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_2 FILLER_29_3 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_29_36 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_29_43 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_29_52 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_29_60 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_29_71 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_29_8 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_29_83 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_29_95 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_2_107 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_6 FILLER_2_12 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_2_123 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_2_135 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_2_139 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_2_149 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_2_161 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_2_173 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_2_18 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_6 FILLER_2_184 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_2_24 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_2_3 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_2_33 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_2_44 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_2_56 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_2_68 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_2_7 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_2_80 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_2_91 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_30_10 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_30_107 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_30_118 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_30_129 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_30_136 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_30_144 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_30_151 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_30_158 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_30_165 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_30_17 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_ef_sc_hd__decap_12 FILLER_30_172 (.VGND(vssd1),
    .VPWR(vccd1),
    .VPB(vccd1),
    .VNB(vssd1));
 sky130_fd_sc_hd__decap_6 FILLER_30_184 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_30_24 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_30_29 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_30_3 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_30_33 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_30_37 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_30_44 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_30_51 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_30_58 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_30_69 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_30_80 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_30_85 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_30_94 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_30_98 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_31_10 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_31_101 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_31_108 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_31_118 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_31_126 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_6 FILLER_31_133 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_31_139 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_31_144 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_31_151 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_8 FILLER_31_158 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_2 FILLER_31_166 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_31_17 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_ef_sc_hd__decap_12 FILLER_31_172 (.VGND(vssd1),
    .VPWR(vccd1),
    .VPB(vccd1),
    .VNB(vssd1));
 sky130_fd_sc_hd__decap_6 FILLER_31_184 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_31_24 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_6 FILLER_31_29 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_31_3 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_31_38 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_31_45 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_31_52 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_31_57 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_31_61 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_31_69 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_31_80 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_31_89 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_6 FILLER_3_106 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_3_125 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_3_137 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_3_149 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_6 FILLER_3_161 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_3_167 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_3_177 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_3_18 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_6 FILLER_3_184 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_2 FILLER_3_28 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_3_3 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_2 FILLER_3_38 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_2 FILLER_3_42 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_3_52 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_3_57 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_3_61 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_3_70 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_8 FILLER_3_86 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_3_9 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_4_100 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_4_116 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_8 FILLER_4_132 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_4_14 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_4_149 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_4_161 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_4_173 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_4_185 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_4_189 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_4_24 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_4_36 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_4_48 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 FILLER_4_6 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_4_64 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_4_80 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 FILLER_4_85 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_5_107 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_5_111 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_5_125 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_5_141 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_5_153 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_5_164 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_5_177 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_2 FILLER_5_18 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_5_185 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_5_189 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_5_28 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_2 FILLER_5_3 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_5_40 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_5_52 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_6 FILLER_5_57 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_5_75 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_5_91 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_6_102 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_6_118 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_6_12 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_6 FILLER_6_134 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_6_153 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_6_165 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_6_177 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_6_186 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_6_24 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_6_3 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_6_36 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_6_48 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_6_64 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_6_80 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_6_85 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_6_89 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_7_108 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_7_11 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_7_125 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_2 FILLER_7_14 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_7_141 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_7_157 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_7_164 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_7_177 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_7_186 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_7_24 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_8 FILLER_7_3 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_7_36 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_7_52 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_7_78 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_7_92 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_8_104 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_8_12 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_8_120 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_8_136 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_8_153 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_8_169 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_8 FILLER_8_181 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_8_189 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_8_24 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_8_3 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_8_39 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_8_55 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_8_80 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_8_88 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_9_108 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_9_125 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_9_141 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_9_157 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_9_164 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_8 FILLER_9_181 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__fill_1 FILLER_9_189 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_9_20 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_9_36 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_9_52 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_9_67 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_9_8 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_4 FILLER_9_92 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_0 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_1 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_10 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_11 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_12 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_13 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_14 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_15 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_16 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_17 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_18 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_19 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_2 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_20 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_21 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_22 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_23 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_24 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_25 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_26 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_27 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_28 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_29 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_3 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_30 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_31 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_32 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_33 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_34 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_35 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_36 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_37 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_38 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_39 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_4 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_40 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_41 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_42 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_43 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_44 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_45 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_46 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_47 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_48 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_49 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_5 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_50 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_51 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_52 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_53 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_54 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_55 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_56 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_57 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_58 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_59 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_6 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_60 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_61 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_62 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_63 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_7 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_8 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__decap_3 PHY_9 (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_100 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_101 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_102 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_103 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_104 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_105 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_106 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_107 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_108 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_109 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_110 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_111 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_112 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_113 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_114 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_115 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_116 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_117 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_118 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_119 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_120 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_121 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_122 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_123 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_124 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_125 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_126 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_127 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_128 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_129 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_130 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_131 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_132 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_133 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_134 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_135 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_136 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_137 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_138 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_139 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_140 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_141 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_142 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_143 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_144 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_145 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_146 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_147 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_148 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_149 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_150 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_151 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_152 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_153 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_154 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_155 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_156 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_157 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_158 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_159 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_160 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_161 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_162 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_163 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_164 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_165 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_64 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_65 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_66 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_67 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_68 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_69 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_70 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_71 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_72 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_73 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_74 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_75 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_76 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_77 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_78 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_79 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_80 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_81 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_82 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_83 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_84 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_85 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_86 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_87 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_88 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_89 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_90 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_91 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_92 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_93 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_94 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_95 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_96 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_97 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_98 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_99 (.VGND(vssd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_1 _069_ (.A(\user_module.frame_ctr[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_044_));
 sky130_fd_sc_hd__buf_1 _070_ (.A(\user_module.frame_ctr[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_045_));
 sky130_fd_sc_hd__buf_1 _071_ (.A(\user_module.frame_ctr[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_046_));
 sky130_fd_sc_hd__buf_1 _072_ (.A(\user_module.frame_ctr[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_047_));
 sky130_fd_sc_hd__and4bb_2 _073_ (.A_N(_044_),
    .B_N(_045_),
    .C(_046_),
    .D(_047_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_048_));
 sky130_fd_sc_hd__buf_1 _074_ (.A(_048_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_021_));
 sky130_fd_sc_hd__buf_1 _075_ (.A(\user_module.frame_ctr[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_049_));
 sky130_fd_sc_hd__buf_1 _076_ (.A(\user_module.frame_ctr[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_050_));
 sky130_fd_sc_hd__or4b_2 _077_ (.A(_047_),
    .B(_049_),
    .C(_050_),
    .D_N(_046_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_051_));
 sky130_fd_sc_hd__inv_2 _078_ (.A(_051_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_020_));
 sky130_fd_sc_hd__buf_1 _079_ (.A(\user_module.frame_ctr[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_052_));
 sky130_fd_sc_hd__and3_2 _080_ (.A(\user_module.frame_ctr[0] ),
    .B(\user_module.frame_ctr[1] ),
    .C(\user_module.frame_ctr[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_053_));
 sky130_fd_sc_hd__and2b_2 _081_ (.A_N(_052_),
    .B(_053_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_054_));
 sky130_fd_sc_hd__buf_1 _082_ (.A(_054_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_019_));
 sky130_fd_sc_hd__buf_1 _083_ (.A(\user_module.frame_ctr[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_055_));
 sky130_fd_sc_hd__and4bb_2 _084_ (.A_N(_055_),
    .B_N(_052_),
    .C(_045_),
    .D(_049_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_056_));
 sky130_fd_sc_hd__buf_1 _085_ (.A(_056_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_018_));
 sky130_fd_sc_hd__and4bb_2 _086_ (.A_N(_044_),
    .B_N(_046_),
    .C(_050_),
    .D(_047_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_057_));
 sky130_fd_sc_hd__buf_1 _087_ (.A(_057_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_017_));
 sky130_fd_sc_hd__or4b_2 _088_ (.A(\user_module.frame_ctr[0] ),
    .B(_049_),
    .C(_046_),
    .D_N(_050_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_058_));
 sky130_fd_sc_hd__inv_2 _089_ (.A(_058_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_016_));
 sky130_fd_sc_hd__and4bb_2 _090_ (.A_N(_052_),
    .B_N(_045_),
    .C(_047_),
    .D(_049_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_059_));
 sky130_fd_sc_hd__buf_1 _091_ (.A(_059_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_015_));
 sky130_fd_sc_hd__or4b_2 _092_ (.A(\user_module.frame_ctr[0] ),
    .B(_046_),
    .C(_050_),
    .D_N(_049_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_060_));
 sky130_fd_sc_hd__inv_2 _093_ (.A(_060_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_014_));
 sky130_fd_sc_hd__or4b_2 _094_ (.A(\user_module.frame_ctr[1] ),
    .B(\user_module.frame_ctr[3] ),
    .C(_050_),
    .D_N(_047_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_061_));
 sky130_fd_sc_hd__inv_2 _095_ (.A(_061_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_013_));
 sky130_fd_sc_hd__nor4_2 _096_ (.A(_055_),
    .B(_044_),
    .C(_052_),
    .D(_045_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_012_));
 sky130_fd_sc_hd__and2_2 _097_ (.A(\user_module.cfg_framestrb ),
    .B(\user_module.cfg_mode ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_062_));
 sky130_fd_sc_hd__buf_1 _098_ (.A(_062_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.gated_strobe ));
 sky130_fd_sc_hd__nor2_2 _099_ (.A(\user_module.cfg_sel[0] ),
    .B(\user_module.cfg_sel[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_063_));
 sky130_fd_sc_hd__nor2_2 _100_ (.A(\user_module.cfg_sel[3] ),
    .B(\user_module.cfg_sel[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_064_));
 sky130_fd_sc_hd__a21o_2 _101_ (.A1(_063_),
    .A2(_064_),
    .B1(\user_module.frame_sr[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_000_));
 sky130_fd_sc_hd__buf_1 _102_ (.A(\user_module.cfg_sel[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_065_));
 sky130_fd_sc_hd__inv_2 _103_ (.A(\user_module.cfg_sel[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_066_));
 sky130_fd_sc_hd__a31o_2 _104_ (.A1(_065_),
    .A2(_066_),
    .A3(_064_),
    .B1(\user_module.frame_sr[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_003_));
 sky130_fd_sc_hd__inv_2 _105_ (.A(\user_module.cfg_sel[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_067_));
 sky130_fd_sc_hd__buf_1 _106_ (.A(\user_module.cfg_sel[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_038_));
 sky130_fd_sc_hd__a31o_2 _107_ (.A1(_067_),
    .A2(_038_),
    .A3(_064_),
    .B1(\user_module.frame_sr[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_004_));
 sky130_fd_sc_hd__a31o_2 _108_ (.A1(_065_),
    .A2(_038_),
    .A3(_064_),
    .B1(\user_module.frame_sr[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_005_));
 sky130_fd_sc_hd__nor2b_2 _109_ (.A(\user_module.cfg_sel[3] ),
    .B_N(\user_module.cfg_sel[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_039_));
 sky130_fd_sc_hd__a31o_2 _110_ (.A1(_067_),
    .A2(_066_),
    .A3(_039_),
    .B1(\user_module.frame_sr[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_006_));
 sky130_fd_sc_hd__a31o_2 _111_ (.A1(_065_),
    .A2(_066_),
    .A3(_039_),
    .B1(\user_module.frame_sr[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_007_));
 sky130_fd_sc_hd__a31o_2 _112_ (.A1(_067_),
    .A2(_038_),
    .A3(_039_),
    .B1(\user_module.frame_sr[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_008_));
 sky130_fd_sc_hd__a31o_2 _113_ (.A1(_065_),
    .A2(_038_),
    .A3(_039_),
    .B1(\user_module.frame_sr[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_009_));
 sky130_fd_sc_hd__nor2b_2 _114_ (.A(\user_module.cfg_sel[2] ),
    .B_N(\user_module.cfg_sel[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_040_));
 sky130_fd_sc_hd__a21o_2 _115_ (.A1(_063_),
    .A2(_040_),
    .B1(\user_module.frame_sr[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_010_));
 sky130_fd_sc_hd__a31o_2 _116_ (.A1(_065_),
    .A2(_066_),
    .A3(_040_),
    .B1(\user_module.frame_sr[9] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_011_));
 sky130_fd_sc_hd__a31o_2 _117_ (.A1(_067_),
    .A2(_038_),
    .A3(_040_),
    .B1(\user_module.frame_sr[10] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_001_));
 sky130_fd_sc_hd__a31o_2 _118_ (.A1(\user_module.cfg_sel[0] ),
    .A2(\user_module.cfg_sel[1] ),
    .A3(_040_),
    .B1(\user_module.frame_sr[11] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_002_));
 sky130_fd_sc_hd__xor2_2 _119_ (.A(_055_),
    .B(_044_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_023_));
 sky130_fd_sc_hd__a21oi_2 _120_ (.A1(_055_),
    .A2(_044_),
    .B1(_045_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_041_));
 sky130_fd_sc_hd__nor2_2 _121_ (.A(_053_),
    .B(_041_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_024_));
 sky130_fd_sc_hd__xor2_2 _122_ (.A(_052_),
    .B(_053_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_025_));
 sky130_fd_sc_hd__inv_2 _123_ (.A(_055_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_022_));
 sky130_fd_sc_hd__buf_1 _124_ (.A(\user_module.cfg_frameinc ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_042_));
 sky130_fd_sc_hd__inv_2 _125_ (.A(_042_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_026_));
 sky130_fd_sc_hd__inv_2 _126_ (.A(_042_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_027_));
 sky130_fd_sc_hd__inv_2 _127_ (.A(_042_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_028_));
 sky130_fd_sc_hd__inv_2 _128_ (.A(_042_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_029_));
 sky130_fd_sc_hd__inv_2 _129_ (.A(_042_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_030_));
 sky130_fd_sc_hd__buf_1 _130_ (.A(\user_module.cfg_frameinc ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(_043_));
 sky130_fd_sc_hd__inv_2 _131_ (.A(_043_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_031_));
 sky130_fd_sc_hd__inv_2 _132_ (.A(_043_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_032_));
 sky130_fd_sc_hd__inv_2 _133_ (.A(_043_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_033_));
 sky130_fd_sc_hd__inv_2 _134_ (.A(_043_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_034_));
 sky130_fd_sc_hd__inv_2 _135_ (.A(_043_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_035_));
 sky130_fd_sc_hd__inv_2 _136_ (.A(\user_module.cfg_frameinc ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_036_));
 sky130_fd_sc_hd__inv_2 _137_ (.A(\user_module.cfg_frameinc ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(_037_));
 sky130_fd_sc_hd__dfrtp_2 _138_ (.CLK(\user_module.cfg_frameinc ),
    .D(_022_),
    .RESET_B(\user_module.cfg_mode ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.frame_ctr[0] ));
 sky130_fd_sc_hd__dfrtp_2 _139_ (.CLK(\user_module.cfg_frameinc ),
    .D(_023_),
    .RESET_B(\user_module.cfg_mode ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.frame_ctr[1] ));
 sky130_fd_sc_hd__dfrtp_2 _140_ (.CLK(\user_module.cfg_frameinc ),
    .D(_024_),
    .RESET_B(\user_module.cfg_mode ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.frame_ctr[2] ));
 sky130_fd_sc_hd__dfrtp_2 _141_ (.CLK(\user_module.cfg_frameinc ),
    .D(_025_),
    .RESET_B(\user_module.cfg_mode ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.frame_ctr[3] ));
 sky130_fd_sc_hd__dfrtp_2 _142_ (.CLK(\user_module.cfg_dataclk ),
    .D(_000_),
    .RESET_B(_026_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.frame_sr[0] ));
 sky130_fd_sc_hd__dfrtp_2 _143_ (.CLK(\user_module.cfg_dataclk ),
    .D(_003_),
    .RESET_B(_027_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.frame_sr[1] ));
 sky130_fd_sc_hd__dfrtp_2 _144_ (.CLK(\user_module.cfg_dataclk ),
    .D(_004_),
    .RESET_B(_028_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.frame_sr[2] ));
 sky130_fd_sc_hd__dfrtp_2 _145_ (.CLK(\user_module.cfg_dataclk ),
    .D(_005_),
    .RESET_B(_029_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.frame_sr[3] ));
 sky130_fd_sc_hd__dfrtp_2 _146_ (.CLK(\user_module.cfg_dataclk ),
    .D(_006_),
    .RESET_B(_030_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.frame_sr[4] ));
 sky130_fd_sc_hd__dfrtp_2 _147_ (.CLK(\user_module.cfg_dataclk ),
    .D(_007_),
    .RESET_B(_031_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.frame_sr[5] ));
 sky130_fd_sc_hd__dfrtp_2 _148_ (.CLK(\user_module.cfg_dataclk ),
    .D(_008_),
    .RESET_B(_032_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.frame_sr[6] ));
 sky130_fd_sc_hd__dfrtp_2 _149_ (.CLK(\user_module.cfg_dataclk ),
    .D(_009_),
    .RESET_B(_033_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.frame_sr[7] ));
 sky130_fd_sc_hd__dfrtp_2 _150_ (.CLK(\user_module.cfg_dataclk ),
    .D(_010_),
    .RESET_B(_034_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.frame_sr[8] ));
 sky130_fd_sc_hd__dfrtp_2 _151_ (.CLK(\user_module.cfg_dataclk ),
    .D(_011_),
    .RESET_B(_035_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.frame_sr[9] ));
 sky130_fd_sc_hd__dfrtp_2 _152_ (.CLK(\user_module.cfg_dataclk ),
    .D(_001_),
    .RESET_B(_036_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.frame_sr[10] ));
 sky130_fd_sc_hd__dfrtp_2 _153_ (.CLK(\user_module.cfg_dataclk ),
    .D(_002_),
    .RESET_B(_037_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.frame_sr[11] ));
 sky130_fd_sc_hd__conb_1 _154_ (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .HI(_068_));
 sky130_fd_sc_hd__clkbuf_2 input_buf_clk (.A(clk_in),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(clk));
 sky130_fd_sc_hd__buf_2 \input_buffers[0]  (.A(latch_enable_in),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(latch_enable_in_i));
 sky130_fd_sc_hd__buf_2 \input_buffers[1]  (.A(scan_select_in),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(scan_select_in_i));
 sky130_fd_sc_hd__buf_2 \input_buffers[2]  (.A(data_in),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(data_in_i));
 sky130_fd_sc_hd__dlxtp_1 \latch[0]  (.D(\scan_data_in[1] ),
    .GATE(latch_enable_in_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.io_in[0] ));
 sky130_fd_sc_hd__dlxtp_1 \latch[1]  (.D(\scan_data_in[2] ),
    .GATE(latch_enable_in_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.io_in[1] ));
 sky130_fd_sc_hd__dlxtp_1 \latch[2]  (.D(\scan_data_in[3] ),
    .GATE(latch_enable_in_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.io_in[2] ));
 sky130_fd_sc_hd__dlxtp_1 \latch[3]  (.D(\scan_data_in[4] ),
    .GATE(latch_enable_in_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.io_in[3] ));
 sky130_fd_sc_hd__dlxtp_1 \latch[4]  (.D(\scan_data_in[5] ),
    .GATE(latch_enable_in_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.io_in[4] ));
 sky130_fd_sc_hd__dlxtp_1 \latch[5]  (.D(\scan_data_in[6] ),
    .GATE(latch_enable_in_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.io_in[5] ));
 sky130_fd_sc_hd__dlxtp_1 \latch[6]  (.D(\scan_data_in[7] ),
    .GATE(latch_enable_in_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.io_in[6] ));
 sky130_fd_sc_hd__dlxtp_1 \latch[7]  (.D(\scan_data_out[7] ),
    .GATE(latch_enable_in_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.io_in[7] ));
 sky130_fd_sc_hd__dfrtn_1 out_flop (.CLK_N(clk),
    .D(\scan_data_out[7] ),
    .RESET_B(_068_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(data_out_i));
 sky130_fd_sc_hd__buf_4 \output_buffers[0]  (.A(latch_enable_in_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(latch_enable_out));
 sky130_fd_sc_hd__buf_4 \output_buffers[1]  (.A(scan_select_in_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(scan_select_out));
 sky130_fd_sc_hd__buf_4 \output_buffers[2]  (.A(data_out_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(data_out));
 sky130_fd_sc_hd__buf_4 \output_buffers[3]  (.A(clk),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(clk_out));
 sky130_fd_sc_hd__sdfxtp_1 \scan_flop[0]  (.CLK(clk),
    .D(data_in_i),
    .SCD(\user_module.y_c[3].x_c[2].bi ),
    .SCE(scan_select_in_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\scan_data_in[1] ));
 sky130_fd_sc_hd__sdfxtp_1 \scan_flop[1]  (.CLK(clk),
    .D(\scan_data_in[1] ),
    .SCD(\user_module.y_c[3].x_c[1].bi ),
    .SCE(scan_select_in_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\scan_data_in[2] ));
 sky130_fd_sc_hd__sdfxtp_1 \scan_flop[2]  (.CLK(clk),
    .D(\scan_data_in[2] ),
    .SCD(\user_module.y_c[3].x_c[0].bi ),
    .SCE(scan_select_in_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\scan_data_in[3] ));
 sky130_fd_sc_hd__sdfxtp_1 \scan_flop[3]  (.CLK(clk),
    .D(\scan_data_in[3] ),
    .SCD(\user_module.y_c[0].x_c[1].lc_i.R ),
    .SCE(scan_select_in_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\scan_data_in[4] ));
 sky130_fd_sc_hd__sdfxtp_1 \scan_flop[4]  (.CLK(clk),
    .D(\scan_data_in[4] ),
    .SCD(\user_module.y_c[0].x_c[2].bi ),
    .SCE(scan_select_in_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\scan_data_in[5] ));
 sky130_fd_sc_hd__sdfxtp_1 \scan_flop[5]  (.CLK(clk),
    .D(\scan_data_in[5] ),
    .SCD(\user_module.y_c[1].x_c[2].bi ),
    .SCE(scan_select_in_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\scan_data_in[6] ));
 sky130_fd_sc_hd__sdfxtp_1 \scan_flop[6]  (.CLK(clk),
    .D(\scan_data_in[6] ),
    .SCD(\user_module.y_c[2].x_c[2].bi ),
    .SCE(scan_select_in_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\scan_data_in[7] ));
 sky130_fd_sc_hd__sdfxtp_1 \scan_flop[7]  (.CLK(clk),
    .D(\scan_data_in[7] ),
    .SCD(\user_module.y_c[3].x_c[2].bi ),
    .SCE(scan_select_in_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\scan_data_out[7] ));
 sky130_fd_sc_hd__clkbuf_4 \user_module.data_clkbuf  (.A(\user_module.io_in[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.cfg_dataclk ));
 sky130_fd_sc_hd__buf_1 \user_module.din_buf[0]  (.A(\user_module.io_in[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.y_c[0].x_c[0].lc_i.L ));
 sky130_fd_sc_hd__buf_1 \user_module.din_buf[1]  (.A(\user_module.io_in[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.y_c[0].x_c[1].lc_i.T ));
 sky130_fd_sc_hd__buf_1 \user_module.din_buf[2]  (.A(\user_module.io_in[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.y_c[0].x_c[2].lc_i.T ));
 sky130_fd_sc_hd__buf_1 \user_module.din_buf[3]  (.A(\user_module.io_in[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.y_c[3].x_c[0].lc_i.L ));
 sky130_fd_sc_hd__clkbuf_4 \user_module.fab_clkbuf  (.A(\user_module.io_in[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.fab_clk ));
 sky130_fd_sc_hd__clkbuf_2 \user_module.frameinc_clkbuf  (.A(\user_module.io_in[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.cfg_frameinc ));
 sky130_fd_sc_hd__clkbuf_2 \user_module.framestrb_clkbuf  (.A(\user_module.io_in[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.cfg_framestrb ));
 sky130_fd_sc_hd__nand2_2 \user_module.genblk1[0].cfg_nand  (.A(\user_module.gated_strobe ),
    .B(_012_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.frame_strb[0] ));
 sky130_fd_sc_hd__nand2_2 \user_module.genblk1[1].cfg_nand  (.A(\user_module.gated_strobe ),
    .B(_013_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.frame_strb[1] ));
 sky130_fd_sc_hd__nand2_2 \user_module.genblk1[2].cfg_nand  (.A(\user_module.gated_strobe ),
    .B(_014_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.frame_strb[2] ));
 sky130_fd_sc_hd__nand2_2 \user_module.genblk1[3].cfg_nand  (.A(\user_module.gated_strobe ),
    .B(_015_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.frame_strb[3] ));
 sky130_fd_sc_hd__nand2_2 \user_module.genblk1[4].cfg_nand  (.A(\user_module.gated_strobe ),
    .B(_016_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.frame_strb[4] ));
 sky130_fd_sc_hd__nand2_2 \user_module.genblk1[5].cfg_nand  (.A(\user_module.gated_strobe ),
    .B(_017_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.frame_strb[5] ));
 sky130_fd_sc_hd__nand2_2 \user_module.genblk1[6].cfg_nand  (.A(\user_module.gated_strobe ),
    .B(_018_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.frame_strb[6] ));
 sky130_fd_sc_hd__nand2_2 \user_module.genblk1[7].cfg_nand  (.A(\user_module.gated_strobe ),
    .B(_019_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.frame_strb[7] ));
 sky130_fd_sc_hd__nand2_2 \user_module.genblk1[8].cfg_nand  (.A(\user_module.gated_strobe ),
    .B(_020_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.frame_strb[8] ));
 sky130_fd_sc_hd__nand2_2 \user_module.genblk1[9].cfg_nand  (.A(\user_module.gated_strobe ),
    .B(_021_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.frame_strb[9] ));
 sky130_fd_sc_hd__clkbuf_2 \user_module.mode_clkbuf  (.A(\user_module.io_in[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.cfg_mode ));
 sky130_fd_sc_hd__buf_2 \user_module.sel_buf[0]  (.A(\user_module.io_in[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.cfg_sel[0] ));
 sky130_fd_sc_hd__buf_2 \user_module.sel_buf[1]  (.A(\user_module.io_in[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.cfg_sel[1] ));
 sky130_fd_sc_hd__buf_2 \user_module.sel_buf[2]  (.A(\user_module.io_in[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.cfg_sel[2] ));
 sky130_fd_sc_hd__buf_2 \user_module.sel_buf[3]  (.A(\user_module.io_in[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.cfg_sel[3] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[0].x_c[0].lc_i.genblk1[0].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[0] ),
    .GATE_N(\user_module.frame_strb[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[0].x_c[0].lc_i.cfg[0] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[0].x_c[0].lc_i.genblk1[0].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[1] ),
    .GATE_N(\user_module.frame_strb[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[0].x_c[0].lc_i.cfg[1] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[0].x_c[0].lc_i.genblk1[0].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[2] ),
    .GATE_N(\user_module.frame_strb[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[0].x_c[0].lc_i.cfg[2] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[0].x_c[0].lc_i.genblk1[0].genblk1[3].cfg_lat_i  (.D(\user_module.frame_sr[3] ),
    .GATE_N(\user_module.frame_strb[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[0].x_c[0].lc_i.cfg[3] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[0].x_c[0].lc_i.genblk1[1].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[0] ),
    .GATE_N(\user_module.frame_strb[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[0].x_c[0].lc_i.cfg[4] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[0].x_c[0].lc_i.genblk1[1].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[1] ),
    .GATE_N(\user_module.frame_strb[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[0].x_c[0].lc_i.cfg[5] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[0].x_c[0].lc_i.genblk1[1].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[2] ),
    .GATE_N(\user_module.frame_strb[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[0].x_c[0].lc_i.cfg[6] ));
 sky130_fd_sc_hd__inv_1 \user_module.y_c[0].x_c[0].lc_i.genblk2.linv  (.A(\user_module.y_c[0].x_c[0].lc_i.muxo_n ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[0].lc_i.Q ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[0].x_c[0].lc_i.i0muxa0  (.A(\user_module.y_c[0].x_c[0].lc_i.L ),
    .B(\user_module.y_c[0].x_c[0].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[0].lc_i.i0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[0].x_c[0].lc_i.i0muxa1  (.A0(\user_module.y_c[0].x_c[0].lc_i.R ),
    .A1(\user_module.y_c[0].x_c[0].lc_i.L ),
    .S(\user_module.y_c[0].x_c[0].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[0].lc_i.i0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[0].x_c[0].lc_i.i0muxb  (.A0(\user_module.y_c[0].x_c[0].lc_i.i0a ),
    .A1(\user_module.y_c[0].x_c[0].lc_i.i0b ),
    .S(\user_module.y_c[0].x_c[0].lc_i.cfg[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[0].lc_i.i0 ));
 sky130_fd_sc_hd__and2_1 \user_module.y_c[0].x_c[0].lc_i.i1muxa0  (.A(\user_module.y_c[0].x_c[0].lc_i.cfg[2] ),
    .B(\user_module.y_c[0].x_c[0].lc_i.L ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.y_c[0].x_c[0].lc_i.i1a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[0].x_c[0].lc_i.i1muxa1  (.A0(\user_module.y_c[0].x_c[0].bi ),
    .A1(\user_module.y_c[0].x_c[0].lc_i.R ),
    .S(\user_module.y_c[0].x_c[0].lc_i.cfg[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[0].lc_i.i1b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[0].x_c[0].lc_i.i1muxb  (.A0(\user_module.y_c[0].x_c[0].lc_i.i1a ),
    .A1(\user_module.y_c[0].x_c[0].lc_i.i1b ),
    .S(\user_module.y_c[0].x_c[0].lc_i.cfg[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[0].lc_i.i1 ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[0].x_c[0].lc_i.lmux  (.A0(\user_module.y_c[0].x_c[0].lc_i.i0 ),
    .A1(\user_module.y_c[0].x_c[0].lc_i.i1 ),
    .S(\user_module.y_c[0].x_c[0].lc_i.s0 ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[0].lc_i.muxo_n ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[0].x_c[0].lc_i.s0muxa0  (.A(\user_module.y_c[0].x_c[0].lc_i.L ),
    .B(\user_module.y_c[0].x_c[0].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[0].lc_i.s0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[0].x_c[0].lc_i.s0muxa1  (.A0(\user_module.y_c[0].x_c[0].lc_i.R ),
    .A1(\user_module.y_c[0].x_c[0].lc_i.L ),
    .S(\user_module.y_c[0].x_c[0].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[0].lc_i.s0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[0].x_c[0].lc_i.s0muxb  (.A0(\user_module.y_c[0].x_c[0].lc_i.s0a ),
    .A1(\user_module.y_c[0].x_c[0].lc_i.s0b ),
    .S(\user_module.y_c[0].x_c[0].lc_i.cfg[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[0].lc_i.s0s ));
 sky130_fd_sc_hd__xnor2_1 \user_module.y_c[0].x_c[0].lc_i.sinv  (.A(\user_module.y_c[0].x_c[0].lc_i.s0s ),
    .B(\user_module.y_c[0].x_c[0].lc_i.cfg[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[0].lc_i.s0 ));
 sky130_fd_sc_hd__dfsbp_1 \user_module.y_c[0].x_c[1].lc_i.dff.dff  (.CLK(\user_module.fab_clk ),
    .D(\user_module.y_c[0].x_c[1].lc_i.muxo_n ),
    .SET_B(\user_module.frame_strb[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[0].x_c[1].lc_i.dff.dffo_n ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[0].x_c[1].lc_i.dff.ffsel  (.A0(\user_module.y_c[0].x_c[1].lc_i.muxo_n ),
    .A1(\user_module.y_c[0].x_c[1].lc_i.dff.dffo_n ),
    .S(\user_module.y_c[0].x_c[1].lc_i.cfg[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[0].lc_i.R ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[0].x_c[1].lc_i.genblk1[0].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[4] ),
    .GATE_N(\user_module.frame_strb[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[0].x_c[1].lc_i.cfg[0] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[0].x_c[1].lc_i.genblk1[0].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[5] ),
    .GATE_N(\user_module.frame_strb[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[0].x_c[1].lc_i.cfg[1] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[0].x_c[1].lc_i.genblk1[0].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[6] ),
    .GATE_N(\user_module.frame_strb[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[0].x_c[1].lc_i.cfg[2] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[0].x_c[1].lc_i.genblk1[0].genblk1[3].cfg_lat_i  (.D(\user_module.frame_sr[7] ),
    .GATE_N(\user_module.frame_strb[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[0].x_c[1].lc_i.cfg[3] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[0].x_c[1].lc_i.genblk1[1].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[4] ),
    .GATE_N(\user_module.frame_strb[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[0].x_c[1].lc_i.cfg[4] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[0].x_c[1].lc_i.genblk1[1].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[5] ),
    .GATE_N(\user_module.frame_strb[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[0].x_c[1].lc_i.cfg[5] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[0].x_c[1].lc_i.genblk1[1].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[6] ),
    .GATE_N(\user_module.frame_strb[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[0].x_c[1].lc_i.cfg[6] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[0].x_c[1].lc_i.genblk1[1].genblk1[3].cfg_lat_i  (.D(\user_module.frame_sr[7] ),
    .GATE_N(\user_module.frame_strb[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[0].x_c[1].lc_i.cfg[7] ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[0].x_c[1].lc_i.i0muxa0  (.A(\user_module.y_c[0].x_c[1].lc_i.T ),
    .B(\user_module.y_c[0].x_c[1].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[1].lc_i.i0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[0].x_c[1].lc_i.i0muxa1  (.A0(\user_module.y_c[0].x_c[1].lc_i.R ),
    .A1(\user_module.y_c[0].x_c[0].lc_i.Q ),
    .S(\user_module.y_c[0].x_c[1].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[1].lc_i.i0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[0].x_c[1].lc_i.i0muxb  (.A0(\user_module.y_c[0].x_c[1].lc_i.i0a ),
    .A1(\user_module.y_c[0].x_c[1].lc_i.i0b ),
    .S(\user_module.y_c[0].x_c[1].lc_i.cfg[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[1].lc_i.i0 ));
 sky130_fd_sc_hd__and2_1 \user_module.y_c[0].x_c[1].lc_i.i1muxa0  (.A(\user_module.y_c[0].x_c[1].lc_i.cfg[2] ),
    .B(\user_module.y_c[0].x_c[0].lc_i.Q ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.y_c[0].x_c[1].lc_i.i1a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[0].x_c[1].lc_i.i1muxa1  (.A0(\user_module.y_c[0].x_c[1].bi ),
    .A1(\user_module.y_c[0].x_c[1].lc_i.R ),
    .S(\user_module.y_c[0].x_c[1].lc_i.cfg[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[1].lc_i.i1b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[0].x_c[1].lc_i.i1muxb  (.A0(\user_module.y_c[0].x_c[1].lc_i.i1a ),
    .A1(\user_module.y_c[0].x_c[1].lc_i.i1b ),
    .S(\user_module.y_c[0].x_c[1].lc_i.cfg[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[1].lc_i.i1 ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[0].x_c[1].lc_i.lmux  (.A0(\user_module.y_c[0].x_c[1].lc_i.i0 ),
    .A1(\user_module.y_c[0].x_c[1].lc_i.i1 ),
    .S(\user_module.y_c[0].x_c[1].lc_i.s0 ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[1].lc_i.muxo_n ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[0].x_c[1].lc_i.s0muxa0  (.A(\user_module.y_c[0].x_c[1].lc_i.T ),
    .B(\user_module.y_c[0].x_c[1].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[1].lc_i.s0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[0].x_c[1].lc_i.s0muxa1  (.A0(\user_module.y_c[0].x_c[1].lc_i.R ),
    .A1(\user_module.y_c[0].x_c[0].lc_i.Q ),
    .S(\user_module.y_c[0].x_c[1].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[1].lc_i.s0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[0].x_c[1].lc_i.s0muxb  (.A0(\user_module.y_c[0].x_c[1].lc_i.s0a ),
    .A1(\user_module.y_c[0].x_c[1].lc_i.s0b ),
    .S(\user_module.y_c[0].x_c[1].lc_i.cfg[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[1].lc_i.s0s ));
 sky130_fd_sc_hd__xnor2_1 \user_module.y_c[0].x_c[1].lc_i.sinv  (.A(\user_module.y_c[0].x_c[1].lc_i.s0s ),
    .B(\user_module.y_c[0].x_c[1].lc_i.cfg[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[1].lc_i.s0 ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[0].x_c[2].lc_i.genblk1[0].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[8] ),
    .GATE_N(\user_module.frame_strb[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[0].x_c[2].lc_i.cfg[0] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[0].x_c[2].lc_i.genblk1[0].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[9] ),
    .GATE_N(\user_module.frame_strb[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[0].x_c[2].lc_i.cfg[1] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[0].x_c[2].lc_i.genblk1[0].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[10] ),
    .GATE_N(\user_module.frame_strb[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[0].x_c[2].lc_i.cfg[2] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[0].x_c[2].lc_i.genblk1[0].genblk1[3].cfg_lat_i  (.D(\user_module.frame_sr[11] ),
    .GATE_N(\user_module.frame_strb[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[0].x_c[2].lc_i.cfg[3] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[0].x_c[2].lc_i.genblk1[1].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[8] ),
    .GATE_N(\user_module.frame_strb[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[0].x_c[2].lc_i.cfg[4] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[0].x_c[2].lc_i.genblk1[1].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[9] ),
    .GATE_N(\user_module.frame_strb[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[0].x_c[2].lc_i.cfg[5] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[0].x_c[2].lc_i.genblk1[1].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[10] ),
    .GATE_N(\user_module.frame_strb[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[0].x_c[2].lc_i.cfg[6] ));
 sky130_fd_sc_hd__inv_1 \user_module.y_c[0].x_c[2].lc_i.genblk2.linv  (.A(\user_module.y_c[0].x_c[2].lc_i.muxo_n ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[1].lc_i.R ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[0].x_c[2].lc_i.i0muxa0  (.A(\user_module.y_c[0].x_c[2].lc_i.T ),
    .B(\user_module.y_c[0].x_c[2].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[2].lc_i.i0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[0].x_c[2].lc_i.i0muxa1  (.A0(\user_module.y_c[0].x_c[1].lc_i.R ),
    .A1(\user_module.y_c[0].x_c[0].lc_i.R ),
    .S(\user_module.y_c[0].x_c[2].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[2].lc_i.i0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[0].x_c[2].lc_i.i0muxb  (.A0(\user_module.y_c[0].x_c[2].lc_i.i0a ),
    .A1(\user_module.y_c[0].x_c[2].lc_i.i0b ),
    .S(\user_module.y_c[0].x_c[2].lc_i.cfg[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[2].lc_i.i0 ));
 sky130_fd_sc_hd__and2_1 \user_module.y_c[0].x_c[2].lc_i.i1muxa0  (.A(\user_module.y_c[0].x_c[2].lc_i.cfg[2] ),
    .B(\user_module.y_c[0].x_c[0].lc_i.R ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.y_c[0].x_c[2].lc_i.i1a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[0].x_c[2].lc_i.i1muxa1  (.A0(\user_module.y_c[0].x_c[2].bi ),
    .A1(\user_module.y_c[0].x_c[1].lc_i.R ),
    .S(\user_module.y_c[0].x_c[2].lc_i.cfg[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[2].lc_i.i1b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[0].x_c[2].lc_i.i1muxb  (.A0(\user_module.y_c[0].x_c[2].lc_i.i1a ),
    .A1(\user_module.y_c[0].x_c[2].lc_i.i1b ),
    .S(\user_module.y_c[0].x_c[2].lc_i.cfg[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[2].lc_i.i1 ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[0].x_c[2].lc_i.lmux  (.A0(\user_module.y_c[0].x_c[2].lc_i.i0 ),
    .A1(\user_module.y_c[0].x_c[2].lc_i.i1 ),
    .S(\user_module.y_c[0].x_c[2].lc_i.s0 ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[2].lc_i.muxo_n ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[0].x_c[2].lc_i.s0muxa0  (.A(\user_module.y_c[0].x_c[2].lc_i.T ),
    .B(\user_module.y_c[0].x_c[2].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[2].lc_i.s0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[0].x_c[2].lc_i.s0muxa1  (.A0(\user_module.y_c[0].x_c[1].lc_i.R ),
    .A1(\user_module.y_c[0].x_c[0].lc_i.R ),
    .S(\user_module.y_c[0].x_c[2].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[2].lc_i.s0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[0].x_c[2].lc_i.s0muxb  (.A0(\user_module.y_c[0].x_c[2].lc_i.s0a ),
    .A1(\user_module.y_c[0].x_c[2].lc_i.s0b ),
    .S(\user_module.y_c[0].x_c[2].lc_i.cfg[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[2].lc_i.s0s ));
 sky130_fd_sc_hd__xnor2_1 \user_module.y_c[0].x_c[2].lc_i.sinv  (.A(\user_module.y_c[0].x_c[2].lc_i.s0s ),
    .B(\user_module.y_c[0].x_c[2].lc_i.cfg[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[2].lc_i.s0 ));
 sky130_fd_sc_hd__dfsbp_1 \user_module.y_c[1].x_c[0].lc_i.dff.dff  (.CLK(\user_module.fab_clk ),
    .D(\user_module.y_c[1].x_c[0].lc_i.muxo_n ),
    .SET_B(\user_module.frame_strb[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[0].lc_i.dff.dffo_n ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[1].x_c[0].lc_i.dff.ffsel  (.A0(\user_module.y_c[1].x_c[0].lc_i.muxo_n ),
    .A1(\user_module.y_c[1].x_c[0].lc_i.dff.dffo_n ),
    .S(\user_module.y_c[1].x_c[0].lc_i.cfg[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[0].bi ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[1].x_c[0].lc_i.genblk1[0].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[0] ),
    .GATE_N(\user_module.frame_strb[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[0].lc_i.cfg[0] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[1].x_c[0].lc_i.genblk1[0].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[1] ),
    .GATE_N(\user_module.frame_strb[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[0].lc_i.cfg[1] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[1].x_c[0].lc_i.genblk1[0].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[2] ),
    .GATE_N(\user_module.frame_strb[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[0].lc_i.cfg[2] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[1].x_c[0].lc_i.genblk1[0].genblk1[3].cfg_lat_i  (.D(\user_module.frame_sr[3] ),
    .GATE_N(\user_module.frame_strb[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[0].lc_i.cfg[3] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[1].x_c[0].lc_i.genblk1[1].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[0] ),
    .GATE_N(\user_module.frame_strb[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[0].lc_i.cfg[4] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[1].x_c[0].lc_i.genblk1[1].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[1] ),
    .GATE_N(\user_module.frame_strb[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[0].lc_i.cfg[5] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[1].x_c[0].lc_i.genblk1[1].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[2] ),
    .GATE_N(\user_module.frame_strb[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[0].lc_i.cfg[6] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[1].x_c[0].lc_i.genblk1[1].genblk1[3].cfg_lat_i  (.D(\user_module.frame_sr[3] ),
    .GATE_N(\user_module.frame_strb[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[0].lc_i.cfg[7] ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[1].x_c[0].lc_i.i0muxa0  (.A(\user_module.y_c[0].x_c[0].lc_i.Q ),
    .B(\user_module.y_c[1].x_c[0].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[0].lc_i.i0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[1].x_c[0].lc_i.i0muxa1  (.A0(\user_module.y_c[0].x_c[1].bi ),
    .A1(\user_module.y_c[0].x_c[1].lc_i.T ),
    .S(\user_module.y_c[1].x_c[0].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[0].lc_i.i0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[1].x_c[0].lc_i.i0muxb  (.A0(\user_module.y_c[1].x_c[0].lc_i.i0a ),
    .A1(\user_module.y_c[1].x_c[0].lc_i.i0b ),
    .S(\user_module.y_c[1].x_c[0].lc_i.cfg[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[0].lc_i.i0 ));
 sky130_fd_sc_hd__and2_1 \user_module.y_c[1].x_c[0].lc_i.i1muxa0  (.A(\user_module.y_c[1].x_c[0].lc_i.cfg[2] ),
    .B(\user_module.y_c[0].x_c[1].lc_i.T ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.y_c[1].x_c[0].lc_i.i1a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[1].x_c[0].lc_i.i1muxa1  (.A0(\user_module.y_c[1].x_c[0].bi ),
    .A1(\user_module.y_c[0].x_c[1].bi ),
    .S(\user_module.y_c[1].x_c[0].lc_i.cfg[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[0].lc_i.i1b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[1].x_c[0].lc_i.i1muxb  (.A0(\user_module.y_c[1].x_c[0].lc_i.i1a ),
    .A1(\user_module.y_c[1].x_c[0].lc_i.i1b ),
    .S(\user_module.y_c[1].x_c[0].lc_i.cfg[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[0].lc_i.i1 ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[1].x_c[0].lc_i.lmux  (.A0(\user_module.y_c[1].x_c[0].lc_i.i0 ),
    .A1(\user_module.y_c[1].x_c[0].lc_i.i1 ),
    .S(\user_module.y_c[1].x_c[0].lc_i.s0 ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[0].lc_i.muxo_n ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[1].x_c[0].lc_i.s0muxa0  (.A(\user_module.y_c[0].x_c[0].lc_i.Q ),
    .B(\user_module.y_c[1].x_c[0].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[0].lc_i.s0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[1].x_c[0].lc_i.s0muxa1  (.A0(\user_module.y_c[0].x_c[1].bi ),
    .A1(\user_module.y_c[0].x_c[1].lc_i.T ),
    .S(\user_module.y_c[1].x_c[0].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[0].lc_i.s0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[1].x_c[0].lc_i.s0muxb  (.A0(\user_module.y_c[1].x_c[0].lc_i.s0a ),
    .A1(\user_module.y_c[1].x_c[0].lc_i.s0b ),
    .S(\user_module.y_c[1].x_c[0].lc_i.cfg[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[0].lc_i.s0s ));
 sky130_fd_sc_hd__xnor2_1 \user_module.y_c[1].x_c[0].lc_i.sinv  (.A(\user_module.y_c[1].x_c[0].lc_i.s0s ),
    .B(\user_module.y_c[1].x_c[0].lc_i.cfg[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[0].lc_i.s0 ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[1].x_c[1].lc_i.genblk1[0].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[4] ),
    .GATE_N(\user_module.frame_strb[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[1].lc_i.cfg[0] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[1].x_c[1].lc_i.genblk1[0].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[5] ),
    .GATE_N(\user_module.frame_strb[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[1].lc_i.cfg[1] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[1].x_c[1].lc_i.genblk1[0].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[6] ),
    .GATE_N(\user_module.frame_strb[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[1].lc_i.cfg[2] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[1].x_c[1].lc_i.genblk1[0].genblk1[3].cfg_lat_i  (.D(\user_module.frame_sr[7] ),
    .GATE_N(\user_module.frame_strb[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[1].lc_i.cfg[3] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[1].x_c[1].lc_i.genblk1[1].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[4] ),
    .GATE_N(\user_module.frame_strb[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[1].lc_i.cfg[4] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[1].x_c[1].lc_i.genblk1[1].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[5] ),
    .GATE_N(\user_module.frame_strb[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[1].lc_i.cfg[5] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[1].x_c[1].lc_i.genblk1[1].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[6] ),
    .GATE_N(\user_module.frame_strb[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[1].lc_i.cfg[6] ));
 sky130_fd_sc_hd__inv_1 \user_module.y_c[1].x_c[1].lc_i.genblk2.linv  (.A(\user_module.y_c[1].x_c[1].lc_i.muxo_n ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[1].bi ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[1].x_c[1].lc_i.i0muxa0  (.A(\user_module.y_c[0].x_c[0].lc_i.R ),
    .B(\user_module.y_c[1].x_c[1].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[1].lc_i.i0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[1].x_c[1].lc_i.i0muxa1  (.A0(\user_module.y_c[0].x_c[2].bi ),
    .A1(\user_module.y_c[0].x_c[0].bi ),
    .S(\user_module.y_c[1].x_c[1].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[1].lc_i.i0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[1].x_c[1].lc_i.i0muxb  (.A0(\user_module.y_c[1].x_c[1].lc_i.i0a ),
    .A1(\user_module.y_c[1].x_c[1].lc_i.i0b ),
    .S(\user_module.y_c[1].x_c[1].lc_i.cfg[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[1].lc_i.i0 ));
 sky130_fd_sc_hd__and2_1 \user_module.y_c[1].x_c[1].lc_i.i1muxa0  (.A(\user_module.y_c[1].x_c[1].lc_i.cfg[2] ),
    .B(\user_module.y_c[0].x_c[0].bi ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.y_c[1].x_c[1].lc_i.i1a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[1].x_c[1].lc_i.i1muxa1  (.A0(\user_module.y_c[1].x_c[1].bi ),
    .A1(\user_module.y_c[0].x_c[2].bi ),
    .S(\user_module.y_c[1].x_c[1].lc_i.cfg[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[1].lc_i.i1b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[1].x_c[1].lc_i.i1muxb  (.A0(\user_module.y_c[1].x_c[1].lc_i.i1a ),
    .A1(\user_module.y_c[1].x_c[1].lc_i.i1b ),
    .S(\user_module.y_c[1].x_c[1].lc_i.cfg[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[1].lc_i.i1 ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[1].x_c[1].lc_i.lmux  (.A0(\user_module.y_c[1].x_c[1].lc_i.i0 ),
    .A1(\user_module.y_c[1].x_c[1].lc_i.i1 ),
    .S(\user_module.y_c[1].x_c[1].lc_i.s0 ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[1].lc_i.muxo_n ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[1].x_c[1].lc_i.s0muxa0  (.A(\user_module.y_c[0].x_c[0].lc_i.R ),
    .B(\user_module.y_c[1].x_c[1].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[1].lc_i.s0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[1].x_c[1].lc_i.s0muxa1  (.A0(\user_module.y_c[0].x_c[2].bi ),
    .A1(\user_module.y_c[0].x_c[0].bi ),
    .S(\user_module.y_c[1].x_c[1].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[1].lc_i.s0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[1].x_c[1].lc_i.s0muxb  (.A0(\user_module.y_c[1].x_c[1].lc_i.s0a ),
    .A1(\user_module.y_c[1].x_c[1].lc_i.s0b ),
    .S(\user_module.y_c[1].x_c[1].lc_i.cfg[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[1].lc_i.s0s ));
 sky130_fd_sc_hd__xnor2_1 \user_module.y_c[1].x_c[1].lc_i.sinv  (.A(\user_module.y_c[1].x_c[1].lc_i.s0s ),
    .B(\user_module.y_c[1].x_c[1].lc_i.cfg[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[1].lc_i.s0 ));
 sky130_fd_sc_hd__dfsbp_1 \user_module.y_c[1].x_c[2].lc_i.dff.dff  (.CLK(\user_module.fab_clk ),
    .D(\user_module.y_c[1].x_c[2].lc_i.muxo_n ),
    .SET_B(\user_module.frame_strb[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[2].lc_i.dff.dffo_n ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[1].x_c[2].lc_i.dff.ffsel  (.A0(\user_module.y_c[1].x_c[2].lc_i.muxo_n ),
    .A1(\user_module.y_c[1].x_c[2].lc_i.dff.dffo_n ),
    .S(\user_module.y_c[1].x_c[2].lc_i.cfg[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[0].x_c[2].bi ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[1].x_c[2].lc_i.genblk1[0].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[8] ),
    .GATE_N(\user_module.frame_strb[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[2].lc_i.cfg[0] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[1].x_c[2].lc_i.genblk1[0].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[9] ),
    .GATE_N(\user_module.frame_strb[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[2].lc_i.cfg[1] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[1].x_c[2].lc_i.genblk1[0].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[10] ),
    .GATE_N(\user_module.frame_strb[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[2].lc_i.cfg[2] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[1].x_c[2].lc_i.genblk1[0].genblk1[3].cfg_lat_i  (.D(\user_module.frame_sr[11] ),
    .GATE_N(\user_module.frame_strb[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[2].lc_i.cfg[3] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[1].x_c[2].lc_i.genblk1[1].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[8] ),
    .GATE_N(\user_module.frame_strb[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[2].lc_i.cfg[4] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[1].x_c[2].lc_i.genblk1[1].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[9] ),
    .GATE_N(\user_module.frame_strb[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[2].lc_i.cfg[5] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[1].x_c[2].lc_i.genblk1[1].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[10] ),
    .GATE_N(\user_module.frame_strb[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[2].lc_i.cfg[6] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[1].x_c[2].lc_i.genblk1[1].genblk1[3].cfg_lat_i  (.D(\user_module.frame_sr[11] ),
    .GATE_N(\user_module.frame_strb[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[1].x_c[2].lc_i.cfg[7] ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[1].x_c[2].lc_i.i0muxa0  (.A(\user_module.y_c[0].x_c[1].lc_i.R ),
    .B(\user_module.y_c[1].x_c[2].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[2].lc_i.i0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[1].x_c[2].lc_i.i0muxa1  (.A0(\user_module.y_c[0].x_c[2].bi ),
    .A1(\user_module.y_c[0].x_c[1].bi ),
    .S(\user_module.y_c[1].x_c[2].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[2].lc_i.i0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[1].x_c[2].lc_i.i0muxb  (.A0(\user_module.y_c[1].x_c[2].lc_i.i0a ),
    .A1(\user_module.y_c[1].x_c[2].lc_i.i0b ),
    .S(\user_module.y_c[1].x_c[2].lc_i.cfg[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[2].lc_i.i0 ));
 sky130_fd_sc_hd__and2_1 \user_module.y_c[1].x_c[2].lc_i.i1muxa0  (.A(\user_module.y_c[1].x_c[2].lc_i.cfg[2] ),
    .B(\user_module.y_c[0].x_c[1].bi ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.y_c[1].x_c[2].lc_i.i1a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[1].x_c[2].lc_i.i1muxa1  (.A0(\user_module.y_c[1].x_c[2].bi ),
    .A1(\user_module.y_c[0].x_c[2].bi ),
    .S(\user_module.y_c[1].x_c[2].lc_i.cfg[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[2].lc_i.i1b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[1].x_c[2].lc_i.i1muxb  (.A0(\user_module.y_c[1].x_c[2].lc_i.i1a ),
    .A1(\user_module.y_c[1].x_c[2].lc_i.i1b ),
    .S(\user_module.y_c[1].x_c[2].lc_i.cfg[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[2].lc_i.i1 ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[1].x_c[2].lc_i.lmux  (.A0(\user_module.y_c[1].x_c[2].lc_i.i0 ),
    .A1(\user_module.y_c[1].x_c[2].lc_i.i1 ),
    .S(\user_module.y_c[1].x_c[2].lc_i.s0 ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[2].lc_i.muxo_n ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[1].x_c[2].lc_i.s0muxa0  (.A(\user_module.y_c[0].x_c[1].lc_i.R ),
    .B(\user_module.y_c[1].x_c[2].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[2].lc_i.s0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[1].x_c[2].lc_i.s0muxa1  (.A0(\user_module.y_c[0].x_c[2].bi ),
    .A1(\user_module.y_c[0].x_c[1].bi ),
    .S(\user_module.y_c[1].x_c[2].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[2].lc_i.s0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[1].x_c[2].lc_i.s0muxb  (.A0(\user_module.y_c[1].x_c[2].lc_i.s0a ),
    .A1(\user_module.y_c[1].x_c[2].lc_i.s0b ),
    .S(\user_module.y_c[1].x_c[2].lc_i.cfg[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[2].lc_i.s0s ));
 sky130_fd_sc_hd__xnor2_1 \user_module.y_c[1].x_c[2].lc_i.sinv  (.A(\user_module.y_c[1].x_c[2].lc_i.s0s ),
    .B(\user_module.y_c[1].x_c[2].lc_i.cfg[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[2].lc_i.s0 ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[2].x_c[0].lc_i.genblk1[0].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[0] ),
    .GATE_N(\user_module.frame_strb[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[2].x_c[0].lc_i.cfg[0] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[2].x_c[0].lc_i.genblk1[0].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[1] ),
    .GATE_N(\user_module.frame_strb[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[2].x_c[0].lc_i.cfg[1] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[2].x_c[0].lc_i.genblk1[0].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[2] ),
    .GATE_N(\user_module.frame_strb[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[2].x_c[0].lc_i.cfg[2] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[2].x_c[0].lc_i.genblk1[0].genblk1[3].cfg_lat_i  (.D(\user_module.frame_sr[3] ),
    .GATE_N(\user_module.frame_strb[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[2].x_c[0].lc_i.cfg[3] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[2].x_c[0].lc_i.genblk1[1].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[0] ),
    .GATE_N(\user_module.frame_strb[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[2].x_c[0].lc_i.cfg[4] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[2].x_c[0].lc_i.genblk1[1].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[1] ),
    .GATE_N(\user_module.frame_strb[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[2].x_c[0].lc_i.cfg[5] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[2].x_c[0].lc_i.genblk1[1].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[2] ),
    .GATE_N(\user_module.frame_strb[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[2].x_c[0].lc_i.cfg[6] ));
 sky130_fd_sc_hd__inv_1 \user_module.y_c[2].x_c[0].lc_i.genblk2.linv  (.A(\user_module.y_c[2].x_c[0].lc_i.muxo_n ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[0].bi ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[2].x_c[0].lc_i.i0muxa0  (.A(\user_module.y_c[0].x_c[0].bi ),
    .B(\user_module.y_c[2].x_c[0].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[0].lc_i.i0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[2].x_c[0].lc_i.i0muxa1  (.A0(\user_module.y_c[1].x_c[1].bi ),
    .A1(\user_module.y_c[0].x_c[2].lc_i.T ),
    .S(\user_module.y_c[2].x_c[0].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[0].lc_i.i0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[2].x_c[0].lc_i.i0muxb  (.A0(\user_module.y_c[2].x_c[0].lc_i.i0a ),
    .A1(\user_module.y_c[2].x_c[0].lc_i.i0b ),
    .S(\user_module.y_c[2].x_c[0].lc_i.cfg[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[0].lc_i.i0 ));
 sky130_fd_sc_hd__and2_1 \user_module.y_c[2].x_c[0].lc_i.i1muxa0  (.A(\user_module.y_c[2].x_c[0].lc_i.cfg[2] ),
    .B(\user_module.y_c[0].x_c[2].lc_i.T ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.y_c[2].x_c[0].lc_i.i1a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[2].x_c[0].lc_i.i1muxa1  (.A0(\user_module.y_c[2].x_c[0].bi ),
    .A1(\user_module.y_c[1].x_c[1].bi ),
    .S(\user_module.y_c[2].x_c[0].lc_i.cfg[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[0].lc_i.i1b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[2].x_c[0].lc_i.i1muxb  (.A0(\user_module.y_c[2].x_c[0].lc_i.i1a ),
    .A1(\user_module.y_c[2].x_c[0].lc_i.i1b ),
    .S(\user_module.y_c[2].x_c[0].lc_i.cfg[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[0].lc_i.i1 ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[2].x_c[0].lc_i.lmux  (.A0(\user_module.y_c[2].x_c[0].lc_i.i0 ),
    .A1(\user_module.y_c[2].x_c[0].lc_i.i1 ),
    .S(\user_module.y_c[2].x_c[0].lc_i.s0 ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[0].lc_i.muxo_n ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[2].x_c[0].lc_i.s0muxa0  (.A(\user_module.y_c[0].x_c[0].bi ),
    .B(\user_module.y_c[2].x_c[0].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[0].lc_i.s0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[2].x_c[0].lc_i.s0muxa1  (.A0(\user_module.y_c[1].x_c[1].bi ),
    .A1(\user_module.y_c[0].x_c[2].lc_i.T ),
    .S(\user_module.y_c[2].x_c[0].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[0].lc_i.s0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[2].x_c[0].lc_i.s0muxb  (.A0(\user_module.y_c[2].x_c[0].lc_i.s0a ),
    .A1(\user_module.y_c[2].x_c[0].lc_i.s0b ),
    .S(\user_module.y_c[2].x_c[0].lc_i.cfg[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[0].lc_i.s0s ));
 sky130_fd_sc_hd__xnor2_1 \user_module.y_c[2].x_c[0].lc_i.sinv  (.A(\user_module.y_c[2].x_c[0].lc_i.s0s ),
    .B(\user_module.y_c[2].x_c[0].lc_i.cfg[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[0].lc_i.s0 ));
 sky130_fd_sc_hd__dfsbp_1 \user_module.y_c[2].x_c[1].lc_i.dff.dff  (.CLK(\user_module.fab_clk ),
    .D(\user_module.y_c[2].x_c[1].lc_i.muxo_n ),
    .SET_B(\user_module.frame_strb[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[2].x_c[1].lc_i.dff.dffo_n ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[2].x_c[1].lc_i.dff.ffsel  (.A0(\user_module.y_c[2].x_c[1].lc_i.muxo_n ),
    .A1(\user_module.y_c[2].x_c[1].lc_i.dff.dffo_n ),
    .S(\user_module.y_c[2].x_c[1].lc_i.cfg[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[1].bi ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[2].x_c[1].lc_i.genblk1[0].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[4] ),
    .GATE_N(\user_module.frame_strb[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[2].x_c[1].lc_i.cfg[0] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[2].x_c[1].lc_i.genblk1[0].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[5] ),
    .GATE_N(\user_module.frame_strb[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[2].x_c[1].lc_i.cfg[1] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[2].x_c[1].lc_i.genblk1[0].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[6] ),
    .GATE_N(\user_module.frame_strb[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[2].x_c[1].lc_i.cfg[2] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[2].x_c[1].lc_i.genblk1[0].genblk1[3].cfg_lat_i  (.D(\user_module.frame_sr[7] ),
    .GATE_N(\user_module.frame_strb[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[2].x_c[1].lc_i.cfg[3] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[2].x_c[1].lc_i.genblk1[1].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[4] ),
    .GATE_N(\user_module.frame_strb[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[2].x_c[1].lc_i.cfg[4] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[2].x_c[1].lc_i.genblk1[1].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[5] ),
    .GATE_N(\user_module.frame_strb[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[2].x_c[1].lc_i.cfg[5] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[2].x_c[1].lc_i.genblk1[1].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[6] ),
    .GATE_N(\user_module.frame_strb[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[2].x_c[1].lc_i.cfg[6] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[2].x_c[1].lc_i.genblk1[1].genblk1[3].cfg_lat_i  (.D(\user_module.frame_sr[7] ),
    .GATE_N(\user_module.frame_strb[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[2].x_c[1].lc_i.cfg[7] ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[2].x_c[1].lc_i.i0muxa0  (.A(\user_module.y_c[0].x_c[1].bi ),
    .B(\user_module.y_c[2].x_c[1].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[1].lc_i.i0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[2].x_c[1].lc_i.i0muxa1  (.A0(\user_module.y_c[1].x_c[2].bi ),
    .A1(\user_module.y_c[1].x_c[0].bi ),
    .S(\user_module.y_c[2].x_c[1].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[1].lc_i.i0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[2].x_c[1].lc_i.i0muxb  (.A0(\user_module.y_c[2].x_c[1].lc_i.i0a ),
    .A1(\user_module.y_c[2].x_c[1].lc_i.i0b ),
    .S(\user_module.y_c[2].x_c[1].lc_i.cfg[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[1].lc_i.i0 ));
 sky130_fd_sc_hd__and2_1 \user_module.y_c[2].x_c[1].lc_i.i1muxa0  (.A(\user_module.y_c[2].x_c[1].lc_i.cfg[2] ),
    .B(\user_module.y_c[1].x_c[0].bi ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.y_c[2].x_c[1].lc_i.i1a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[2].x_c[1].lc_i.i1muxa1  (.A0(\user_module.y_c[2].x_c[1].bi ),
    .A1(\user_module.y_c[1].x_c[2].bi ),
    .S(\user_module.y_c[2].x_c[1].lc_i.cfg[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[1].lc_i.i1b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[2].x_c[1].lc_i.i1muxb  (.A0(\user_module.y_c[2].x_c[1].lc_i.i1a ),
    .A1(\user_module.y_c[2].x_c[1].lc_i.i1b ),
    .S(\user_module.y_c[2].x_c[1].lc_i.cfg[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[1].lc_i.i1 ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[2].x_c[1].lc_i.lmux  (.A0(\user_module.y_c[2].x_c[1].lc_i.i0 ),
    .A1(\user_module.y_c[2].x_c[1].lc_i.i1 ),
    .S(\user_module.y_c[2].x_c[1].lc_i.s0 ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[1].lc_i.muxo_n ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[2].x_c[1].lc_i.s0muxa0  (.A(\user_module.y_c[0].x_c[1].bi ),
    .B(\user_module.y_c[2].x_c[1].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[1].lc_i.s0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[2].x_c[1].lc_i.s0muxa1  (.A0(\user_module.y_c[1].x_c[2].bi ),
    .A1(\user_module.y_c[1].x_c[0].bi ),
    .S(\user_module.y_c[2].x_c[1].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[1].lc_i.s0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[2].x_c[1].lc_i.s0muxb  (.A0(\user_module.y_c[2].x_c[1].lc_i.s0a ),
    .A1(\user_module.y_c[2].x_c[1].lc_i.s0b ),
    .S(\user_module.y_c[2].x_c[1].lc_i.cfg[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[1].lc_i.s0s ));
 sky130_fd_sc_hd__xnor2_1 \user_module.y_c[2].x_c[1].lc_i.sinv  (.A(\user_module.y_c[2].x_c[1].lc_i.s0s ),
    .B(\user_module.y_c[2].x_c[1].lc_i.cfg[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[1].lc_i.s0 ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[2].x_c[2].lc_i.genblk1[0].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[8] ),
    .GATE_N(\user_module.frame_strb[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[2].x_c[2].lc_i.cfg[0] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[2].x_c[2].lc_i.genblk1[0].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[9] ),
    .GATE_N(\user_module.frame_strb[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[2].x_c[2].lc_i.cfg[1] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[2].x_c[2].lc_i.genblk1[0].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[10] ),
    .GATE_N(\user_module.frame_strb[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[2].x_c[2].lc_i.cfg[2] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[2].x_c[2].lc_i.genblk1[0].genblk1[3].cfg_lat_i  (.D(\user_module.frame_sr[11] ),
    .GATE_N(\user_module.frame_strb[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[2].x_c[2].lc_i.cfg[3] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[2].x_c[2].lc_i.genblk1[1].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[8] ),
    .GATE_N(\user_module.frame_strb[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[2].x_c[2].lc_i.cfg[4] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[2].x_c[2].lc_i.genblk1[1].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[9] ),
    .GATE_N(\user_module.frame_strb[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[2].x_c[2].lc_i.cfg[5] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[2].x_c[2].lc_i.genblk1[1].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[10] ),
    .GATE_N(\user_module.frame_strb[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[2].x_c[2].lc_i.cfg[6] ));
 sky130_fd_sc_hd__inv_1 \user_module.y_c[2].x_c[2].lc_i.genblk2.linv  (.A(\user_module.y_c[2].x_c[2].lc_i.muxo_n ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[1].x_c[2].bi ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[2].x_c[2].lc_i.i0muxa0  (.A(\user_module.y_c[0].x_c[2].bi ),
    .B(\user_module.y_c[2].x_c[2].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[2].lc_i.i0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[2].x_c[2].lc_i.i0muxa1  (.A0(\user_module.y_c[1].x_c[2].bi ),
    .A1(\user_module.y_c[1].x_c[1].bi ),
    .S(\user_module.y_c[2].x_c[2].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[2].lc_i.i0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[2].x_c[2].lc_i.i0muxb  (.A0(\user_module.y_c[2].x_c[2].lc_i.i0a ),
    .A1(\user_module.y_c[2].x_c[2].lc_i.i0b ),
    .S(\user_module.y_c[2].x_c[2].lc_i.cfg[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[2].lc_i.i0 ));
 sky130_fd_sc_hd__and2_1 \user_module.y_c[2].x_c[2].lc_i.i1muxa0  (.A(\user_module.y_c[2].x_c[2].lc_i.cfg[2] ),
    .B(\user_module.y_c[1].x_c[1].bi ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.y_c[2].x_c[2].lc_i.i1a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[2].x_c[2].lc_i.i1muxa1  (.A0(\user_module.y_c[2].x_c[2].bi ),
    .A1(\user_module.y_c[1].x_c[2].bi ),
    .S(\user_module.y_c[2].x_c[2].lc_i.cfg[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[2].lc_i.i1b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[2].x_c[2].lc_i.i1muxb  (.A0(\user_module.y_c[2].x_c[2].lc_i.i1a ),
    .A1(\user_module.y_c[2].x_c[2].lc_i.i1b ),
    .S(\user_module.y_c[2].x_c[2].lc_i.cfg[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[2].lc_i.i1 ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[2].x_c[2].lc_i.lmux  (.A0(\user_module.y_c[2].x_c[2].lc_i.i0 ),
    .A1(\user_module.y_c[2].x_c[2].lc_i.i1 ),
    .S(\user_module.y_c[2].x_c[2].lc_i.s0 ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[2].lc_i.muxo_n ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[2].x_c[2].lc_i.s0muxa0  (.A(\user_module.y_c[0].x_c[2].bi ),
    .B(\user_module.y_c[2].x_c[2].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[2].lc_i.s0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[2].x_c[2].lc_i.s0muxa1  (.A0(\user_module.y_c[1].x_c[2].bi ),
    .A1(\user_module.y_c[1].x_c[1].bi ),
    .S(\user_module.y_c[2].x_c[2].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[2].lc_i.s0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[2].x_c[2].lc_i.s0muxb  (.A0(\user_module.y_c[2].x_c[2].lc_i.s0a ),
    .A1(\user_module.y_c[2].x_c[2].lc_i.s0b ),
    .S(\user_module.y_c[2].x_c[2].lc_i.cfg[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[2].lc_i.s0s ));
 sky130_fd_sc_hd__xnor2_1 \user_module.y_c[2].x_c[2].lc_i.sinv  (.A(\user_module.y_c[2].x_c[2].lc_i.s0s ),
    .B(\user_module.y_c[2].x_c[2].lc_i.cfg[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[2].lc_i.s0 ));
 sky130_fd_sc_hd__dfsbp_1 \user_module.y_c[3].x_c[0].lc_i.dff.dff  (.CLK(\user_module.fab_clk ),
    .D(\user_module.y_c[3].x_c[0].lc_i.muxo_n ),
    .SET_B(\user_module.frame_strb[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[0].lc_i.dff.dffo_n ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[3].x_c[0].lc_i.dff.ffsel  (.A0(\user_module.y_c[3].x_c[0].lc_i.muxo_n ),
    .A1(\user_module.y_c[3].x_c[0].lc_i.dff.dffo_n ),
    .S(\user_module.y_c[3].x_c[0].lc_i.cfg[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[0].bi ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[3].x_c[0].lc_i.genblk1[0].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[0] ),
    .GATE_N(\user_module.frame_strb[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[0].lc_i.cfg[0] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[3].x_c[0].lc_i.genblk1[0].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[1] ),
    .GATE_N(\user_module.frame_strb[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[0].lc_i.cfg[1] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[3].x_c[0].lc_i.genblk1[0].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[2] ),
    .GATE_N(\user_module.frame_strb[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[0].lc_i.cfg[2] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[3].x_c[0].lc_i.genblk1[0].genblk1[3].cfg_lat_i  (.D(\user_module.frame_sr[3] ),
    .GATE_N(\user_module.frame_strb[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[0].lc_i.cfg[3] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[3].x_c[0].lc_i.genblk1[1].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[0] ),
    .GATE_N(\user_module.frame_strb[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[0].lc_i.cfg[4] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[3].x_c[0].lc_i.genblk1[1].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[1] ),
    .GATE_N(\user_module.frame_strb[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[0].lc_i.cfg[5] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[3].x_c[0].lc_i.genblk1[1].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[2] ),
    .GATE_N(\user_module.frame_strb[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[0].lc_i.cfg[6] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[3].x_c[0].lc_i.genblk1[1].genblk1[3].cfg_lat_i  (.D(\user_module.frame_sr[3] ),
    .GATE_N(\user_module.frame_strb[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[0].lc_i.cfg[7] ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[3].x_c[0].lc_i.i0muxa0  (.A(\user_module.y_c[1].x_c[0].bi ),
    .B(\user_module.y_c[3].x_c[0].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[0].lc_i.i0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[3].x_c[0].lc_i.i0muxa1  (.A0(\user_module.y_c[2].x_c[1].bi ),
    .A1(\user_module.y_c[3].x_c[0].lc_i.L ),
    .S(\user_module.y_c[3].x_c[0].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[0].lc_i.i0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[3].x_c[0].lc_i.i0muxb  (.A0(\user_module.y_c[3].x_c[0].lc_i.i0a ),
    .A1(\user_module.y_c[3].x_c[0].lc_i.i0b ),
    .S(\user_module.y_c[3].x_c[0].lc_i.cfg[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[0].lc_i.i0 ));
 sky130_fd_sc_hd__and2_1 \user_module.y_c[3].x_c[0].lc_i.i1muxa0  (.A(\user_module.y_c[3].x_c[0].lc_i.cfg[2] ),
    .B(\user_module.y_c[3].x_c[0].lc_i.L ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.y_c[3].x_c[0].lc_i.i1a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[3].x_c[0].lc_i.i1muxa1  (.A0(\user_module.y_c[3].x_c[0].bi ),
    .A1(\user_module.y_c[2].x_c[1].bi ),
    .S(\user_module.y_c[3].x_c[0].lc_i.cfg[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[0].lc_i.i1b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[3].x_c[0].lc_i.i1muxb  (.A0(\user_module.y_c[3].x_c[0].lc_i.i1a ),
    .A1(\user_module.y_c[3].x_c[0].lc_i.i1b ),
    .S(\user_module.y_c[3].x_c[0].lc_i.cfg[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[0].lc_i.i1 ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[3].x_c[0].lc_i.lmux  (.A0(\user_module.y_c[3].x_c[0].lc_i.i0 ),
    .A1(\user_module.y_c[3].x_c[0].lc_i.i1 ),
    .S(\user_module.y_c[3].x_c[0].lc_i.s0 ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[0].lc_i.muxo_n ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[3].x_c[0].lc_i.s0muxa0  (.A(\user_module.y_c[1].x_c[0].bi ),
    .B(\user_module.y_c[3].x_c[0].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[0].lc_i.s0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[3].x_c[0].lc_i.s0muxa1  (.A0(\user_module.y_c[2].x_c[1].bi ),
    .A1(\user_module.y_c[3].x_c[0].lc_i.L ),
    .S(\user_module.y_c[3].x_c[0].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[0].lc_i.s0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[3].x_c[0].lc_i.s0muxb  (.A0(\user_module.y_c[3].x_c[0].lc_i.s0a ),
    .A1(\user_module.y_c[3].x_c[0].lc_i.s0b ),
    .S(\user_module.y_c[3].x_c[0].lc_i.cfg[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[0].lc_i.s0s ));
 sky130_fd_sc_hd__xnor2_1 \user_module.y_c[3].x_c[0].lc_i.sinv  (.A(\user_module.y_c[3].x_c[0].lc_i.s0s ),
    .B(\user_module.y_c[3].x_c[0].lc_i.cfg[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[0].lc_i.s0 ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[3].x_c[1].lc_i.genblk1[0].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[4] ),
    .GATE_N(\user_module.frame_strb[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[1].lc_i.cfg[0] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[3].x_c[1].lc_i.genblk1[0].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[5] ),
    .GATE_N(\user_module.frame_strb[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[1].lc_i.cfg[1] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[3].x_c[1].lc_i.genblk1[0].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[6] ),
    .GATE_N(\user_module.frame_strb[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[1].lc_i.cfg[2] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[3].x_c[1].lc_i.genblk1[0].genblk1[3].cfg_lat_i  (.D(\user_module.frame_sr[7] ),
    .GATE_N(\user_module.frame_strb[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[1].lc_i.cfg[3] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[3].x_c[1].lc_i.genblk1[1].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[4] ),
    .GATE_N(\user_module.frame_strb[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[1].lc_i.cfg[4] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[3].x_c[1].lc_i.genblk1[1].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[5] ),
    .GATE_N(\user_module.frame_strb[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[1].lc_i.cfg[5] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[3].x_c[1].lc_i.genblk1[1].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[6] ),
    .GATE_N(\user_module.frame_strb[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[1].lc_i.cfg[6] ));
 sky130_fd_sc_hd__inv_1 \user_module.y_c[3].x_c[1].lc_i.genblk2.linv  (.A(\user_module.y_c[3].x_c[1].lc_i.muxo_n ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[1].bi ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[3].x_c[1].lc_i.i0muxa0  (.A(\user_module.y_c[1].x_c[1].bi ),
    .B(\user_module.y_c[3].x_c[1].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[1].lc_i.i0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[3].x_c[1].lc_i.i0muxa1  (.A0(\user_module.y_c[2].x_c[2].bi ),
    .A1(\user_module.y_c[2].x_c[0].bi ),
    .S(\user_module.y_c[3].x_c[1].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[1].lc_i.i0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[3].x_c[1].lc_i.i0muxb  (.A0(\user_module.y_c[3].x_c[1].lc_i.i0a ),
    .A1(\user_module.y_c[3].x_c[1].lc_i.i0b ),
    .S(\user_module.y_c[3].x_c[1].lc_i.cfg[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[1].lc_i.i0 ));
 sky130_fd_sc_hd__and2_1 \user_module.y_c[3].x_c[1].lc_i.i1muxa0  (.A(\user_module.y_c[3].x_c[1].lc_i.cfg[2] ),
    .B(\user_module.y_c[2].x_c[0].bi ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.y_c[3].x_c[1].lc_i.i1a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[3].x_c[1].lc_i.i1muxa1  (.A0(\user_module.y_c[3].x_c[1].bi ),
    .A1(\user_module.y_c[2].x_c[2].bi ),
    .S(\user_module.y_c[3].x_c[1].lc_i.cfg[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[1].lc_i.i1b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[3].x_c[1].lc_i.i1muxb  (.A0(\user_module.y_c[3].x_c[1].lc_i.i1a ),
    .A1(\user_module.y_c[3].x_c[1].lc_i.i1b ),
    .S(\user_module.y_c[3].x_c[1].lc_i.cfg[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[1].lc_i.i1 ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[3].x_c[1].lc_i.lmux  (.A0(\user_module.y_c[3].x_c[1].lc_i.i0 ),
    .A1(\user_module.y_c[3].x_c[1].lc_i.i1 ),
    .S(\user_module.y_c[3].x_c[1].lc_i.s0 ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[1].lc_i.muxo_n ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[3].x_c[1].lc_i.s0muxa0  (.A(\user_module.y_c[1].x_c[1].bi ),
    .B(\user_module.y_c[3].x_c[1].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[1].lc_i.s0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[3].x_c[1].lc_i.s0muxa1  (.A0(\user_module.y_c[2].x_c[2].bi ),
    .A1(\user_module.y_c[2].x_c[0].bi ),
    .S(\user_module.y_c[3].x_c[1].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[1].lc_i.s0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[3].x_c[1].lc_i.s0muxb  (.A0(\user_module.y_c[3].x_c[1].lc_i.s0a ),
    .A1(\user_module.y_c[3].x_c[1].lc_i.s0b ),
    .S(\user_module.y_c[3].x_c[1].lc_i.cfg[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[1].lc_i.s0s ));
 sky130_fd_sc_hd__xnor2_1 \user_module.y_c[3].x_c[1].lc_i.sinv  (.A(\user_module.y_c[3].x_c[1].lc_i.s0s ),
    .B(\user_module.y_c[3].x_c[1].lc_i.cfg[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[1].lc_i.s0 ));
 sky130_fd_sc_hd__dfsbp_1 \user_module.y_c[3].x_c[2].lc_i.dff.dff  (.CLK(\user_module.fab_clk ),
    .D(\user_module.y_c[3].x_c[2].lc_i.muxo_n ),
    .SET_B(\user_module.frame_strb[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[2].lc_i.dff.dffo_n ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[3].x_c[2].lc_i.dff.ffsel  (.A0(\user_module.y_c[3].x_c[2].lc_i.muxo_n ),
    .A1(\user_module.y_c[3].x_c[2].lc_i.dff.dffo_n ),
    .S(\user_module.y_c[3].x_c[2].lc_i.cfg[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[2].x_c[2].bi ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[3].x_c[2].lc_i.genblk1[0].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[8] ),
    .GATE_N(\user_module.frame_strb[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[2].lc_i.cfg[0] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[3].x_c[2].lc_i.genblk1[0].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[9] ),
    .GATE_N(\user_module.frame_strb[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[2].lc_i.cfg[1] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[3].x_c[2].lc_i.genblk1[0].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[10] ),
    .GATE_N(\user_module.frame_strb[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[2].lc_i.cfg[2] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[3].x_c[2].lc_i.genblk1[0].genblk1[3].cfg_lat_i  (.D(\user_module.frame_sr[11] ),
    .GATE_N(\user_module.frame_strb[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[2].lc_i.cfg[3] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[3].x_c[2].lc_i.genblk1[1].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[8] ),
    .GATE_N(\user_module.frame_strb[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[2].lc_i.cfg[4] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[3].x_c[2].lc_i.genblk1[1].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[9] ),
    .GATE_N(\user_module.frame_strb[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[2].lc_i.cfg[5] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[3].x_c[2].lc_i.genblk1[1].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[10] ),
    .GATE_N(\user_module.frame_strb[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[2].lc_i.cfg[6] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[3].x_c[2].lc_i.genblk1[1].genblk1[3].cfg_lat_i  (.D(\user_module.frame_sr[11] ),
    .GATE_N(\user_module.frame_strb[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[3].x_c[2].lc_i.cfg[7] ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[3].x_c[2].lc_i.i0muxa0  (.A(\user_module.y_c[1].x_c[2].bi ),
    .B(\user_module.y_c[3].x_c[2].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[2].lc_i.i0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[3].x_c[2].lc_i.i0muxa1  (.A0(\user_module.y_c[2].x_c[2].bi ),
    .A1(\user_module.y_c[2].x_c[1].bi ),
    .S(\user_module.y_c[3].x_c[2].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[2].lc_i.i0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[3].x_c[2].lc_i.i0muxb  (.A0(\user_module.y_c[3].x_c[2].lc_i.i0a ),
    .A1(\user_module.y_c[3].x_c[2].lc_i.i0b ),
    .S(\user_module.y_c[3].x_c[2].lc_i.cfg[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[2].lc_i.i0 ));
 sky130_fd_sc_hd__and2_1 \user_module.y_c[3].x_c[2].lc_i.i1muxa0  (.A(\user_module.y_c[3].x_c[2].lc_i.cfg[2] ),
    .B(\user_module.y_c[2].x_c[1].bi ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.y_c[3].x_c[2].lc_i.i1a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[3].x_c[2].lc_i.i1muxa1  (.A0(\user_module.y_c[3].x_c[2].bi ),
    .A1(\user_module.y_c[2].x_c[2].bi ),
    .S(\user_module.y_c[3].x_c[2].lc_i.cfg[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[2].lc_i.i1b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[3].x_c[2].lc_i.i1muxb  (.A0(\user_module.y_c[3].x_c[2].lc_i.i1a ),
    .A1(\user_module.y_c[3].x_c[2].lc_i.i1b ),
    .S(\user_module.y_c[3].x_c[2].lc_i.cfg[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[2].lc_i.i1 ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[3].x_c[2].lc_i.lmux  (.A0(\user_module.y_c[3].x_c[2].lc_i.i0 ),
    .A1(\user_module.y_c[3].x_c[2].lc_i.i1 ),
    .S(\user_module.y_c[3].x_c[2].lc_i.s0 ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[2].lc_i.muxo_n ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[3].x_c[2].lc_i.s0muxa0  (.A(\user_module.y_c[1].x_c[2].bi ),
    .B(\user_module.y_c[3].x_c[2].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[2].lc_i.s0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[3].x_c[2].lc_i.s0muxa1  (.A0(\user_module.y_c[2].x_c[2].bi ),
    .A1(\user_module.y_c[2].x_c[1].bi ),
    .S(\user_module.y_c[3].x_c[2].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[2].lc_i.s0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[3].x_c[2].lc_i.s0muxb  (.A0(\user_module.y_c[3].x_c[2].lc_i.s0a ),
    .A1(\user_module.y_c[3].x_c[2].lc_i.s0b ),
    .S(\user_module.y_c[3].x_c[2].lc_i.cfg[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[2].lc_i.s0s ));
 sky130_fd_sc_hd__xnor2_1 \user_module.y_c[3].x_c[2].lc_i.sinv  (.A(\user_module.y_c[3].x_c[2].lc_i.s0s ),
    .B(\user_module.y_c[3].x_c[2].lc_i.cfg[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[2].lc_i.s0 ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[4].x_c[0].lc_i.genblk1[0].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[0] ),
    .GATE_N(\user_module.frame_strb[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[4].x_c[0].lc_i.cfg[0] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[4].x_c[0].lc_i.genblk1[0].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[1] ),
    .GATE_N(\user_module.frame_strb[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[4].x_c[0].lc_i.cfg[1] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[4].x_c[0].lc_i.genblk1[0].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[2] ),
    .GATE_N(\user_module.frame_strb[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[4].x_c[0].lc_i.cfg[2] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[4].x_c[0].lc_i.genblk1[0].genblk1[3].cfg_lat_i  (.D(\user_module.frame_sr[3] ),
    .GATE_N(\user_module.frame_strb[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[4].x_c[0].lc_i.cfg[3] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[4].x_c[0].lc_i.genblk1[1].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[0] ),
    .GATE_N(\user_module.frame_strb[9] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[4].x_c[0].lc_i.cfg[4] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[4].x_c[0].lc_i.genblk1[1].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[1] ),
    .GATE_N(\user_module.frame_strb[9] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[4].x_c[0].lc_i.cfg[5] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[4].x_c[0].lc_i.genblk1[1].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[2] ),
    .GATE_N(\user_module.frame_strb[9] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[4].x_c[0].lc_i.cfg[6] ));
 sky130_fd_sc_hd__inv_1 \user_module.y_c[4].x_c[0].lc_i.genblk2.linv  (.A(\user_module.y_c[4].x_c[0].lc_i.muxo_n ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[0].bi ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[4].x_c[0].lc_i.i0muxa0  (.A(\user_module.y_c[2].x_c[0].bi ),
    .B(\user_module.y_c[4].x_c[0].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[0].lc_i.i0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[4].x_c[0].lc_i.i0muxa1  (.A0(\user_module.y_c[3].x_c[1].bi ),
    .A1(\user_module.y_c[3].x_c[0].lc_i.L ),
    .S(\user_module.y_c[4].x_c[0].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[0].lc_i.i0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[4].x_c[0].lc_i.i0muxb  (.A0(\user_module.y_c[4].x_c[0].lc_i.i0a ),
    .A1(\user_module.y_c[4].x_c[0].lc_i.i0b ),
    .S(\user_module.y_c[4].x_c[0].lc_i.cfg[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[0].lc_i.i0 ));
 sky130_fd_sc_hd__and2_1 \user_module.y_c[4].x_c[0].lc_i.i1muxa0  (.A(\user_module.y_c[4].x_c[0].lc_i.cfg[2] ),
    .B(\user_module.y_c[3].x_c[0].lc_i.L ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.y_c[4].x_c[0].lc_i.i1a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[4].x_c[0].lc_i.i1muxa1  (.A0(\user_module.y_c[3].x_c[0].bi ),
    .A1(\user_module.y_c[3].x_c[1].bi ),
    .S(\user_module.y_c[4].x_c[0].lc_i.cfg[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[0].lc_i.i1b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[4].x_c[0].lc_i.i1muxb  (.A0(\user_module.y_c[4].x_c[0].lc_i.i1a ),
    .A1(\user_module.y_c[4].x_c[0].lc_i.i1b ),
    .S(\user_module.y_c[4].x_c[0].lc_i.cfg[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[0].lc_i.i1 ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[4].x_c[0].lc_i.lmux  (.A0(\user_module.y_c[4].x_c[0].lc_i.i0 ),
    .A1(\user_module.y_c[4].x_c[0].lc_i.i1 ),
    .S(\user_module.y_c[4].x_c[0].lc_i.s0 ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[0].lc_i.muxo_n ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[4].x_c[0].lc_i.s0muxa0  (.A(\user_module.y_c[2].x_c[0].bi ),
    .B(\user_module.y_c[4].x_c[0].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[0].lc_i.s0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[4].x_c[0].lc_i.s0muxa1  (.A0(\user_module.y_c[3].x_c[1].bi ),
    .A1(\user_module.y_c[3].x_c[0].lc_i.L ),
    .S(\user_module.y_c[4].x_c[0].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[0].lc_i.s0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[4].x_c[0].lc_i.s0muxb  (.A0(\user_module.y_c[4].x_c[0].lc_i.s0a ),
    .A1(\user_module.y_c[4].x_c[0].lc_i.s0b ),
    .S(\user_module.y_c[4].x_c[0].lc_i.cfg[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[0].lc_i.s0s ));
 sky130_fd_sc_hd__xnor2_1 \user_module.y_c[4].x_c[0].lc_i.sinv  (.A(\user_module.y_c[4].x_c[0].lc_i.s0s ),
    .B(\user_module.y_c[4].x_c[0].lc_i.cfg[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[0].lc_i.s0 ));
 sky130_fd_sc_hd__dfsbp_1 \user_module.y_c[4].x_c[1].lc_i.dff.dff  (.CLK(\user_module.fab_clk ),
    .D(\user_module.y_c[4].x_c[1].lc_i.muxo_n ),
    .SET_B(\user_module.frame_strb[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[4].x_c[1].lc_i.dff.dffo_n ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[4].x_c[1].lc_i.dff.ffsel  (.A0(\user_module.y_c[4].x_c[1].lc_i.muxo_n ),
    .A1(\user_module.y_c[4].x_c[1].lc_i.dff.dffo_n ),
    .S(\user_module.y_c[4].x_c[1].lc_i.cfg[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[1].bi ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[4].x_c[1].lc_i.genblk1[0].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[4] ),
    .GATE_N(\user_module.frame_strb[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[4].x_c[1].lc_i.cfg[0] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[4].x_c[1].lc_i.genblk1[0].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[5] ),
    .GATE_N(\user_module.frame_strb[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[4].x_c[1].lc_i.cfg[1] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[4].x_c[1].lc_i.genblk1[0].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[6] ),
    .GATE_N(\user_module.frame_strb[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[4].x_c[1].lc_i.cfg[2] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[4].x_c[1].lc_i.genblk1[0].genblk1[3].cfg_lat_i  (.D(\user_module.frame_sr[7] ),
    .GATE_N(\user_module.frame_strb[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[4].x_c[1].lc_i.cfg[3] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[4].x_c[1].lc_i.genblk1[1].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[4] ),
    .GATE_N(\user_module.frame_strb[9] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[4].x_c[1].lc_i.cfg[4] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[4].x_c[1].lc_i.genblk1[1].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[5] ),
    .GATE_N(\user_module.frame_strb[9] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[4].x_c[1].lc_i.cfg[5] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[4].x_c[1].lc_i.genblk1[1].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[6] ),
    .GATE_N(\user_module.frame_strb[9] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[4].x_c[1].lc_i.cfg[6] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[4].x_c[1].lc_i.genblk1[1].genblk1[3].cfg_lat_i  (.D(\user_module.frame_sr[7] ),
    .GATE_N(\user_module.frame_strb[9] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[4].x_c[1].lc_i.cfg[7] ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[4].x_c[1].lc_i.i0muxa0  (.A(\user_module.y_c[2].x_c[1].bi ),
    .B(\user_module.y_c[4].x_c[1].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[1].lc_i.i0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[4].x_c[1].lc_i.i0muxa1  (.A0(\user_module.y_c[3].x_c[2].bi ),
    .A1(\user_module.y_c[3].x_c[0].bi ),
    .S(\user_module.y_c[4].x_c[1].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[1].lc_i.i0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[4].x_c[1].lc_i.i0muxb  (.A0(\user_module.y_c[4].x_c[1].lc_i.i0a ),
    .A1(\user_module.y_c[4].x_c[1].lc_i.i0b ),
    .S(\user_module.y_c[4].x_c[1].lc_i.cfg[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[1].lc_i.i0 ));
 sky130_fd_sc_hd__and2_1 \user_module.y_c[4].x_c[1].lc_i.i1muxa0  (.A(\user_module.y_c[4].x_c[1].lc_i.cfg[2] ),
    .B(\user_module.y_c[3].x_c[0].bi ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.y_c[4].x_c[1].lc_i.i1a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[4].x_c[1].lc_i.i1muxa1  (.A0(\user_module.y_c[3].x_c[1].bi ),
    .A1(\user_module.y_c[3].x_c[2].bi ),
    .S(\user_module.y_c[4].x_c[1].lc_i.cfg[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[1].lc_i.i1b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[4].x_c[1].lc_i.i1muxb  (.A0(\user_module.y_c[4].x_c[1].lc_i.i1a ),
    .A1(\user_module.y_c[4].x_c[1].lc_i.i1b ),
    .S(\user_module.y_c[4].x_c[1].lc_i.cfg[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[1].lc_i.i1 ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[4].x_c[1].lc_i.lmux  (.A0(\user_module.y_c[4].x_c[1].lc_i.i0 ),
    .A1(\user_module.y_c[4].x_c[1].lc_i.i1 ),
    .S(\user_module.y_c[4].x_c[1].lc_i.s0 ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[1].lc_i.muxo_n ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[4].x_c[1].lc_i.s0muxa0  (.A(\user_module.y_c[2].x_c[1].bi ),
    .B(\user_module.y_c[4].x_c[1].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[1].lc_i.s0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[4].x_c[1].lc_i.s0muxa1  (.A0(\user_module.y_c[3].x_c[2].bi ),
    .A1(\user_module.y_c[3].x_c[0].bi ),
    .S(\user_module.y_c[4].x_c[1].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[1].lc_i.s0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[4].x_c[1].lc_i.s0muxb  (.A0(\user_module.y_c[4].x_c[1].lc_i.s0a ),
    .A1(\user_module.y_c[4].x_c[1].lc_i.s0b ),
    .S(\user_module.y_c[4].x_c[1].lc_i.cfg[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[1].lc_i.s0s ));
 sky130_fd_sc_hd__xnor2_1 \user_module.y_c[4].x_c[1].lc_i.sinv  (.A(\user_module.y_c[4].x_c[1].lc_i.s0s ),
    .B(\user_module.y_c[4].x_c[1].lc_i.cfg[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[1].lc_i.s0 ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[4].x_c[2].lc_i.genblk1[0].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[8] ),
    .GATE_N(\user_module.frame_strb[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[4].x_c[2].lc_i.cfg[0] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[4].x_c[2].lc_i.genblk1[0].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[9] ),
    .GATE_N(\user_module.frame_strb[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[4].x_c[2].lc_i.cfg[1] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[4].x_c[2].lc_i.genblk1[0].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[10] ),
    .GATE_N(\user_module.frame_strb[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[4].x_c[2].lc_i.cfg[2] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[4].x_c[2].lc_i.genblk1[0].genblk1[3].cfg_lat_i  (.D(\user_module.frame_sr[11] ),
    .GATE_N(\user_module.frame_strb[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[4].x_c[2].lc_i.cfg[3] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[4].x_c[2].lc_i.genblk1[1].genblk1[0].cfg_lat_i  (.D(\user_module.frame_sr[8] ),
    .GATE_N(\user_module.frame_strb[9] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[4].x_c[2].lc_i.cfg[4] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[4].x_c[2].lc_i.genblk1[1].genblk1[1].cfg_lat_i  (.D(\user_module.frame_sr[9] ),
    .GATE_N(\user_module.frame_strb[9] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[4].x_c[2].lc_i.cfg[5] ));
 sky130_fd_sc_hd__dlxtn_1 \user_module.y_c[4].x_c[2].lc_i.genblk1[1].genblk1[2].cfg_lat_i  (.D(\user_module.frame_sr[10] ),
    .GATE_N(\user_module.frame_strb[9] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Q(\user_module.y_c[4].x_c[2].lc_i.cfg[6] ));
 sky130_fd_sc_hd__inv_1 \user_module.y_c[4].x_c[2].lc_i.genblk2.linv  (.A(\user_module.y_c[4].x_c[2].lc_i.muxo_n ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[3].x_c[2].bi ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[4].x_c[2].lc_i.i0muxa0  (.A(\user_module.y_c[2].x_c[2].bi ),
    .B(\user_module.y_c[4].x_c[2].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[2].lc_i.i0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[4].x_c[2].lc_i.i0muxa1  (.A0(\user_module.y_c[3].x_c[2].bi ),
    .A1(\user_module.y_c[3].x_c[1].bi ),
    .S(\user_module.y_c[4].x_c[2].lc_i.cfg[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[2].lc_i.i0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[4].x_c[2].lc_i.i0muxb  (.A0(\user_module.y_c[4].x_c[2].lc_i.i0a ),
    .A1(\user_module.y_c[4].x_c[2].lc_i.i0b ),
    .S(\user_module.y_c[4].x_c[2].lc_i.cfg[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[2].lc_i.i0 ));
 sky130_fd_sc_hd__and2_1 \user_module.y_c[4].x_c[2].lc_i.i1muxa0  (.A(\user_module.y_c[4].x_c[2].lc_i.cfg[2] ),
    .B(\user_module.y_c[3].x_c[1].bi ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .X(\user_module.y_c[4].x_c[2].lc_i.i1a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[4].x_c[2].lc_i.i1muxa1  (.A0(\user_module.y_c[3].x_c[2].bi ),
    .A1(\user_module.y_c[3].x_c[2].bi ),
    .S(\user_module.y_c[4].x_c[2].lc_i.cfg[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[2].lc_i.i1b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[4].x_c[2].lc_i.i1muxb  (.A0(\user_module.y_c[4].x_c[2].lc_i.i1a ),
    .A1(\user_module.y_c[4].x_c[2].lc_i.i1b ),
    .S(\user_module.y_c[4].x_c[2].lc_i.cfg[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[2].lc_i.i1 ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[4].x_c[2].lc_i.lmux  (.A0(\user_module.y_c[4].x_c[2].lc_i.i0 ),
    .A1(\user_module.y_c[4].x_c[2].lc_i.i1 ),
    .S(\user_module.y_c[4].x_c[2].lc_i.s0 ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[2].lc_i.muxo_n ));
 sky130_fd_sc_hd__nand2_1 \user_module.y_c[4].x_c[2].lc_i.s0muxa0  (.A(\user_module.y_c[2].x_c[2].bi ),
    .B(\user_module.y_c[4].x_c[2].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[2].lc_i.s0a ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[4].x_c[2].lc_i.s0muxa1  (.A0(\user_module.y_c[3].x_c[2].bi ),
    .A1(\user_module.y_c[3].x_c[1].bi ),
    .S(\user_module.y_c[4].x_c[2].lc_i.cfg[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[2].lc_i.s0b ));
 sky130_fd_sc_hd__mux2i_1 \user_module.y_c[4].x_c[2].lc_i.s0muxb  (.A0(\user_module.y_c[4].x_c[2].lc_i.s0a ),
    .A1(\user_module.y_c[4].x_c[2].lc_i.s0b ),
    .S(\user_module.y_c[4].x_c[2].lc_i.cfg[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[2].lc_i.s0s ));
 sky130_fd_sc_hd__xnor2_1 \user_module.y_c[4].x_c[2].lc_i.sinv  (.A(\user_module.y_c[4].x_c[2].lc_i.s0s ),
    .B(\user_module.y_c[4].x_c[2].lc_i.cfg[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .Y(\user_module.y_c[4].x_c[2].lc_i.s0 ));
endmodule
