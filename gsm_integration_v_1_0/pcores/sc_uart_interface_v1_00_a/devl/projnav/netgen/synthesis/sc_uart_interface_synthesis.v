////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: sc_uart_interface_synthesis.v
// /___/   /\     Timestamp: Mon May 19 11:11:47 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim sc_uart_interface.ngc sc_uart_interface_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: sc_uart_interface.ngc
// Output file	: /home/ga37jom/GSM/prog/pcores/sc_uart_interface_v1_00_a/devl/projnav/netgen/synthesis/sc_uart_interface_synthesis.v
// # of Modules	: 1
// Design Name	: sc_uart_interface
// Xilinx        : /nfs/tools/xilinx/ise/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module sc_uart_interface (
  S_AXI_ACLK, S_AXI_ARESETN, S_AXI_AWVALID, S_AXI_WVALID, S_AXI_BREADY, S_AXI_ARVALID, S_AXI_RREADY, S_AXI_ARREADY, S_AXI_RVALID, S_AXI_WREADY, 
S_AXI_BVALID, S_AXI_AWREADY, S_AXI_AWADDR, S_AXI_WDATA, S_AXI_WSTRB, S_AXI_ARADDR, S_AXI_RDATA, S_AXI_RRESP, S_AXI_BRESP
);
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_BREADY;
  input S_AXI_ARVALID;
  input S_AXI_RREADY;
  output S_AXI_ARREADY;
  output S_AXI_RVALID;
  output S_AXI_WREADY;
  output S_AXI_BVALID;
  output S_AXI_AWREADY;
  input [31 : 0] S_AXI_AWADDR;
  input [31 : 0] S_AXI_WDATA;
  input [3 : 0] S_AXI_WSTRB;
  input [31 : 0] S_AXI_ARADDR;
  output [31 : 0] S_AXI_RDATA;
  output [1 : 0] S_AXI_RRESP;
  output [1 : 0] S_AXI_BRESP;
  wire S_AXI_AWADDR_2_IBUF_0;
  wire S_AXI_WDATA_31_IBUF_1;
  wire S_AXI_WDATA_30_IBUF_2;
  wire S_AXI_WDATA_29_IBUF_3;
  wire S_AXI_WDATA_28_IBUF_4;
  wire S_AXI_WDATA_27_IBUF_5;
  wire S_AXI_WDATA_26_IBUF_6;
  wire S_AXI_WDATA_25_IBUF_7;
  wire S_AXI_WDATA_24_IBUF_8;
  wire S_AXI_WDATA_23_IBUF_9;
  wire S_AXI_WDATA_22_IBUF_10;
  wire S_AXI_WDATA_21_IBUF_11;
  wire S_AXI_WDATA_20_IBUF_12;
  wire S_AXI_WDATA_19_IBUF_13;
  wire S_AXI_WDATA_18_IBUF_14;
  wire S_AXI_WDATA_17_IBUF_15;
  wire S_AXI_WDATA_16_IBUF_16;
  wire S_AXI_WDATA_15_IBUF_17;
  wire S_AXI_WDATA_14_IBUF_18;
  wire S_AXI_WDATA_13_IBUF_19;
  wire S_AXI_WDATA_12_IBUF_20;
  wire S_AXI_WDATA_11_IBUF_21;
  wire S_AXI_WDATA_10_IBUF_22;
  wire S_AXI_WDATA_9_IBUF_23;
  wire S_AXI_WDATA_8_IBUF_24;
  wire S_AXI_WDATA_7_IBUF_25;
  wire S_AXI_WDATA_6_IBUF_26;
  wire S_AXI_WDATA_5_IBUF_27;
  wire S_AXI_WDATA_4_IBUF_28;
  wire S_AXI_WDATA_3_IBUF_29;
  wire S_AXI_WDATA_2_IBUF_30;
  wire S_AXI_WDATA_1_IBUF_31;
  wire S_AXI_WDATA_0_IBUF_32;
  wire S_AXI_ARADDR_2_IBUF_33;
  wire S_AXI_ACLK_BUFGP_34;
  wire S_AXI_ARESETN_IBUF_35;
  wire S_AXI_AWVALID_IBUF_36;
  wire S_AXI_WVALID_IBUF_37;
  wire S_AXI_BREADY_IBUF_38;
  wire S_AXI_ARVALID_IBUF_39;
  wire S_AXI_RREADY_IBUF_40;
  wire S_AXI_RRESP_1_OBUF_73;
  wire S_AXI_AWREADY_OBUF_74;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_bvalid_i_75 ;
  wire S_AXI_ARREADY_OBUF_76;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i_77 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1-In ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2-In_116 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1-In1_186 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_bvalid_i_glue_set_269 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i_glue_set_270 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_rstpot_272 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_rstpot_273 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_rstpot_274 ;
  wire N4;
  wire N6;
  wire \USER_LOGIC_I/_n0100<1>1_cepot ;
  wire \USER_LOGIC_I/slv_reg0_0_dpot_278 ;
  wire \USER_LOGIC_I/slv_reg0_1_dpot_279 ;
  wire \USER_LOGIC_I/slv_reg0_2_dpot_280 ;
  wire \USER_LOGIC_I/slv_reg0_3_dpot_281 ;
  wire \USER_LOGIC_I/slv_reg0_4_dpot_282 ;
  wire \USER_LOGIC_I/slv_reg0_5_dpot_283 ;
  wire \USER_LOGIC_I/slv_reg0_6_dpot_284 ;
  wire \USER_LOGIC_I/slv_reg0_7_dpot_285 ;
  wire \USER_LOGIC_I/slv_reg0_8_dpot_286 ;
  wire \USER_LOGIC_I/slv_reg0_9_dpot_287 ;
  wire \USER_LOGIC_I/slv_reg0_10_dpot_288 ;
  wire \USER_LOGIC_I/slv_reg0_11_dpot_289 ;
  wire \USER_LOGIC_I/slv_reg0_12_dpot_290 ;
  wire \USER_LOGIC_I/slv_reg0_13_dpot_291 ;
  wire \USER_LOGIC_I/slv_reg0_14_dpot_292 ;
  wire \USER_LOGIC_I/slv_reg0_15_dpot_293 ;
  wire \USER_LOGIC_I/slv_reg0_16_dpot_294 ;
  wire \USER_LOGIC_I/slv_reg0_17_dpot_295 ;
  wire \USER_LOGIC_I/slv_reg0_18_dpot_296 ;
  wire \USER_LOGIC_I/slv_reg0_19_dpot_297 ;
  wire \USER_LOGIC_I/slv_reg0_20_dpot_298 ;
  wire \USER_LOGIC_I/slv_reg0_21_dpot_299 ;
  wire \USER_LOGIC_I/slv_reg0_22_dpot_300 ;
  wire \USER_LOGIC_I/slv_reg0_23_dpot_301 ;
  wire \USER_LOGIC_I/slv_reg0_24_dpot_302 ;
  wire \USER_LOGIC_I/slv_reg0_25_dpot_303 ;
  wire \USER_LOGIC_I/slv_reg0_26_dpot_304 ;
  wire \USER_LOGIC_I/slv_reg0_27_dpot_305 ;
  wire \USER_LOGIC_I/slv_reg0_28_dpot_306 ;
  wire \USER_LOGIC_I/slv_reg0_29_dpot_307 ;
  wire \USER_LOGIC_I/slv_reg0_30_dpot_308 ;
  wire \USER_LOGIC_I/slv_reg0_31_dpot_309 ;
  wire \USER_LOGIC_I/_n0097<1>1_cepot ;
  wire \USER_LOGIC_I/slv_reg1_0_dpot_311 ;
  wire \USER_LOGIC_I/slv_reg1_1_dpot_312 ;
  wire \USER_LOGIC_I/slv_reg1_2_dpot_313 ;
  wire \USER_LOGIC_I/slv_reg1_3_dpot_314 ;
  wire \USER_LOGIC_I/slv_reg1_4_dpot_315 ;
  wire \USER_LOGIC_I/slv_reg1_5_dpot_316 ;
  wire \USER_LOGIC_I/slv_reg1_6_dpot_317 ;
  wire \USER_LOGIC_I/slv_reg1_7_dpot_318 ;
  wire \USER_LOGIC_I/slv_reg1_8_dpot_319 ;
  wire \USER_LOGIC_I/slv_reg1_9_dpot_320 ;
  wire \USER_LOGIC_I/slv_reg1_10_dpot_321 ;
  wire \USER_LOGIC_I/slv_reg1_11_dpot_322 ;
  wire \USER_LOGIC_I/slv_reg1_12_dpot_323 ;
  wire \USER_LOGIC_I/slv_reg1_13_dpot_324 ;
  wire \USER_LOGIC_I/slv_reg1_14_dpot_325 ;
  wire \USER_LOGIC_I/slv_reg1_15_dpot_326 ;
  wire \USER_LOGIC_I/slv_reg1_16_dpot_327 ;
  wire \USER_LOGIC_I/slv_reg1_17_dpot_328 ;
  wire \USER_LOGIC_I/slv_reg1_18_dpot_329 ;
  wire \USER_LOGIC_I/slv_reg1_19_dpot_330 ;
  wire \USER_LOGIC_I/slv_reg1_20_dpot_331 ;
  wire \USER_LOGIC_I/slv_reg1_21_dpot_332 ;
  wire \USER_LOGIC_I/slv_reg1_22_dpot_333 ;
  wire \USER_LOGIC_I/slv_reg1_23_dpot_334 ;
  wire \USER_LOGIC_I/slv_reg1_24_dpot_335 ;
  wire \USER_LOGIC_I/slv_reg1_25_dpot_336 ;
  wire \USER_LOGIC_I/slv_reg1_26_dpot_337 ;
  wire \USER_LOGIC_I/slv_reg1_27_dpot_338 ;
  wire \USER_LOGIC_I/slv_reg1_28_dpot_339 ;
  wire \USER_LOGIC_I/slv_reg1_29_dpot_340 ;
  wire \USER_LOGIC_I/slv_reg1_30_dpot_341 ;
  wire \USER_LOGIC_I/slv_reg1_31_dpot_342 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_1_343 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_1_344 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_1_345 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_2_346 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_2_347 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_0_dpot_348 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_1_dpot_349 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_2_dpot_350 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_3_dpot_351 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_4_dpot_352 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_5_dpot_353 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_6_dpot_354 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_7_dpot_355 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_8_dpot_356 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_9_dpot_357 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_10_dpot_358 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_11_dpot_359 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_12_dpot_360 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_13_dpot_361 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_14_dpot_362 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_15_dpot_363 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_16_dpot_364 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_17_dpot_365 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_18_dpot_366 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_19_dpot_367 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_20_dpot_368 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_21_dpot_369 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_22_dpot_370 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_23_dpot_371 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_24_dpot_372 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_25_dpot_373 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_26_dpot_374 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_27_dpot_375 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_28_dpot_376 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_29_dpot_377 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_30_dpot_378 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_31_dpot_379 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_1_380 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_2_381 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_3_382 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_3_383 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_4_384 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_3_385 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_4_386 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt_3_rstpot_387 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt_2_rstpot_388 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt_1_rstpot_389 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt_0_rstpot_390 ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_1_391 ;
  wire N8;
  wire N9;
  wire N10;
  wire N11;
  wire [31 : 0] \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i ;
  wire [31 : 0] user_IP2Bus_Data;
  wire [3 : 0] \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt ;
  wire [31 : 0] \USER_LOGIC_I/slv_reg0 ;
  wire [31 : 0] \USER_LOGIC_I/slv_reg1 ;
  GND   XST_GND (
    .G(S_AXI_RRESP_1_OBUF_73)
  );
  FDR #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1-In ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2-In_116 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_31  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_31_dpot_379 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [31])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_30  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_30_dpot_378 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [30])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_29  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_29_dpot_377 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [29])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_28  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_28_dpot_376 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [28])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_27  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_27_dpot_375 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [27])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_26  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_26_dpot_374 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [26])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_25  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_25_dpot_373 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [25])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_24  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_24_dpot_372 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [24])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_23  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_23_dpot_371 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [23])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_22  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_22_dpot_370 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [22])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_21  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_21_dpot_369 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [21])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_20  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_20_dpot_368 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [20])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_19  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_19_dpot_367 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [19])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_18  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_18_dpot_366 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [18])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_17  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_17_dpot_365 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [17])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_16  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_16_dpot_364 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [16])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_15  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_15_dpot_363 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [15])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_14  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_14_dpot_362 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [14])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_13  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_13_dpot_361 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [13])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_12  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_12_dpot_360 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [12])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_11  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_11_dpot_359 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [11])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_10  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_10_dpot_358 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [10])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_9  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_9_dpot_357 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [9])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_8  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_8_dpot_356 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [8])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_7  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_7_dpot_355 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_6  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_6_dpot_354 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_5  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_5_dpot_353 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_4  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_4_dpot_352 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_3  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_3_dpot_351 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_2  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_2_dpot_350 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_1  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_1_dpot_349 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_0  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_0_dpot_348 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [0])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_31  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_31_dpot_309 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [31])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_30  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_30_dpot_308 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [30])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_29  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_29_dpot_307 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [29])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_28  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_28_dpot_306 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [28])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_27  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_27_dpot_305 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [27])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_26  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_26_dpot_304 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [26])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_25  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_25_dpot_303 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [25])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_24  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_24_dpot_302 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [24])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_23  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_23_dpot_301 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [23])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_22  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_22_dpot_300 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [22])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_21  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_21_dpot_299 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [21])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_20  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_20_dpot_298 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [20])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_19  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_19_dpot_297 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [19])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_18  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_18_dpot_296 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [18])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_17  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_17_dpot_295 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [17])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_16  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_16_dpot_294 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [16])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_15  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_15_dpot_293 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [15])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_14  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_14_dpot_292 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [14])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_13  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_13_dpot_291 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [13])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_12  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_12_dpot_290 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [12])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_11  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_11_dpot_289 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [11])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_10  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_10_dpot_288 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [10])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_9  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_9_dpot_287 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [9])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_8  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_8_dpot_286 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [8])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_7  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_7_dpot_285 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [7])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_6  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_6_dpot_284 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [6])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_5  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_5_dpot_283 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [5])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_4  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_4_dpot_282 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [4])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_3  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_3_dpot_281 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [3])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_2  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_2_dpot_280 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [2])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_1  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_1_dpot_279 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [1])
  );
  FDRE   \USER_LOGIC_I/slv_reg0_0  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0100<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg0_0_dpot_278 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg0 [0])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_31  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_31_dpot_342 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [31])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_30  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_30_dpot_341 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [30])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_29  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_29_dpot_340 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [29])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_28  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_28_dpot_339 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [28])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_27  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_27_dpot_338 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [27])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_26  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_26_dpot_337 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [26])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_25  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_25_dpot_336 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [25])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_24  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_24_dpot_335 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [24])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_23  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_23_dpot_334 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [23])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_22  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_22_dpot_333 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [22])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_21  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_21_dpot_332 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [21])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_20  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_20_dpot_331 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [20])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_19  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_19_dpot_330 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [19])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_18  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_18_dpot_329 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [18])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_17  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_17_dpot_328 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [17])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_16  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_16_dpot_327 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [16])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_15  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_15_dpot_326 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [15])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_14  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_14_dpot_325 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [14])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_13  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_13_dpot_324 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [13])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_12  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_12_dpot_323 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [12])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_11  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_11_dpot_322 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [11])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_10  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_10_dpot_321 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [10])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_9  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_9_dpot_320 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [9])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_8  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_8_dpot_319 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [8])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_7  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_7_dpot_318 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [7])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_6  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_6_dpot_317 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [6])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_5  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_5_dpot_316 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [5])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_4  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_4_dpot_315 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [4])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_3  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_3_dpot_314 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [3])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_2  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_2_dpot_313 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [2])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_1  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_1_dpot_312 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [1])
  );
  FDRE   \USER_LOGIC_I/slv_reg1_0  (
    .C(S_AXI_ACLK_BUFGP_34),
    .CE(\USER_LOGIC_I/_n0097<1>1_cepot ),
    .D(\USER_LOGIC_I/slv_reg1_0_dpot_311 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\USER_LOGIC_I/slv_reg1 [0])
  );
  LUT5 #(
    .INIT ( 32'h0000FF08 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1-In1  (
    .I0(S_AXI_WVALID_IBUF_37),
    .I1(S_AXI_AWVALID_IBUF_36),
    .I2(S_AXI_ARVALID_IBUF_39),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_1_391 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_1_380 ),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1-In1_186 )
  );
  IBUF   S_AXI_AWADDR_2_IBUF (
    .I(S_AXI_AWADDR[2]),
    .O(S_AXI_AWADDR_2_IBUF_0)
  );
  IBUF   S_AXI_WDATA_31_IBUF (
    .I(S_AXI_WDATA[31]),
    .O(S_AXI_WDATA_31_IBUF_1)
  );
  IBUF   S_AXI_WDATA_30_IBUF (
    .I(S_AXI_WDATA[30]),
    .O(S_AXI_WDATA_30_IBUF_2)
  );
  IBUF   S_AXI_WDATA_29_IBUF (
    .I(S_AXI_WDATA[29]),
    .O(S_AXI_WDATA_29_IBUF_3)
  );
  IBUF   S_AXI_WDATA_28_IBUF (
    .I(S_AXI_WDATA[28]),
    .O(S_AXI_WDATA_28_IBUF_4)
  );
  IBUF   S_AXI_WDATA_27_IBUF (
    .I(S_AXI_WDATA[27]),
    .O(S_AXI_WDATA_27_IBUF_5)
  );
  IBUF   S_AXI_WDATA_26_IBUF (
    .I(S_AXI_WDATA[26]),
    .O(S_AXI_WDATA_26_IBUF_6)
  );
  IBUF   S_AXI_WDATA_25_IBUF (
    .I(S_AXI_WDATA[25]),
    .O(S_AXI_WDATA_25_IBUF_7)
  );
  IBUF   S_AXI_WDATA_24_IBUF (
    .I(S_AXI_WDATA[24]),
    .O(S_AXI_WDATA_24_IBUF_8)
  );
  IBUF   S_AXI_WDATA_23_IBUF (
    .I(S_AXI_WDATA[23]),
    .O(S_AXI_WDATA_23_IBUF_9)
  );
  IBUF   S_AXI_WDATA_22_IBUF (
    .I(S_AXI_WDATA[22]),
    .O(S_AXI_WDATA_22_IBUF_10)
  );
  IBUF   S_AXI_WDATA_21_IBUF (
    .I(S_AXI_WDATA[21]),
    .O(S_AXI_WDATA_21_IBUF_11)
  );
  IBUF   S_AXI_WDATA_20_IBUF (
    .I(S_AXI_WDATA[20]),
    .O(S_AXI_WDATA_20_IBUF_12)
  );
  IBUF   S_AXI_WDATA_19_IBUF (
    .I(S_AXI_WDATA[19]),
    .O(S_AXI_WDATA_19_IBUF_13)
  );
  IBUF   S_AXI_WDATA_18_IBUF (
    .I(S_AXI_WDATA[18]),
    .O(S_AXI_WDATA_18_IBUF_14)
  );
  IBUF   S_AXI_WDATA_17_IBUF (
    .I(S_AXI_WDATA[17]),
    .O(S_AXI_WDATA_17_IBUF_15)
  );
  IBUF   S_AXI_WDATA_16_IBUF (
    .I(S_AXI_WDATA[16]),
    .O(S_AXI_WDATA_16_IBUF_16)
  );
  IBUF   S_AXI_WDATA_15_IBUF (
    .I(S_AXI_WDATA[15]),
    .O(S_AXI_WDATA_15_IBUF_17)
  );
  IBUF   S_AXI_WDATA_14_IBUF (
    .I(S_AXI_WDATA[14]),
    .O(S_AXI_WDATA_14_IBUF_18)
  );
  IBUF   S_AXI_WDATA_13_IBUF (
    .I(S_AXI_WDATA[13]),
    .O(S_AXI_WDATA_13_IBUF_19)
  );
  IBUF   S_AXI_WDATA_12_IBUF (
    .I(S_AXI_WDATA[12]),
    .O(S_AXI_WDATA_12_IBUF_20)
  );
  IBUF   S_AXI_WDATA_11_IBUF (
    .I(S_AXI_WDATA[11]),
    .O(S_AXI_WDATA_11_IBUF_21)
  );
  IBUF   S_AXI_WDATA_10_IBUF (
    .I(S_AXI_WDATA[10]),
    .O(S_AXI_WDATA_10_IBUF_22)
  );
  IBUF   S_AXI_WDATA_9_IBUF (
    .I(S_AXI_WDATA[9]),
    .O(S_AXI_WDATA_9_IBUF_23)
  );
  IBUF   S_AXI_WDATA_8_IBUF (
    .I(S_AXI_WDATA[8]),
    .O(S_AXI_WDATA_8_IBUF_24)
  );
  IBUF   S_AXI_WDATA_7_IBUF (
    .I(S_AXI_WDATA[7]),
    .O(S_AXI_WDATA_7_IBUF_25)
  );
  IBUF   S_AXI_WDATA_6_IBUF (
    .I(S_AXI_WDATA[6]),
    .O(S_AXI_WDATA_6_IBUF_26)
  );
  IBUF   S_AXI_WDATA_5_IBUF (
    .I(S_AXI_WDATA[5]),
    .O(S_AXI_WDATA_5_IBUF_27)
  );
  IBUF   S_AXI_WDATA_4_IBUF (
    .I(S_AXI_WDATA[4]),
    .O(S_AXI_WDATA_4_IBUF_28)
  );
  IBUF   S_AXI_WDATA_3_IBUF (
    .I(S_AXI_WDATA[3]),
    .O(S_AXI_WDATA_3_IBUF_29)
  );
  IBUF   S_AXI_WDATA_2_IBUF (
    .I(S_AXI_WDATA[2]),
    .O(S_AXI_WDATA_2_IBUF_30)
  );
  IBUF   S_AXI_WDATA_1_IBUF (
    .I(S_AXI_WDATA[1]),
    .O(S_AXI_WDATA_1_IBUF_31)
  );
  IBUF   S_AXI_WDATA_0_IBUF (
    .I(S_AXI_WDATA[0]),
    .O(S_AXI_WDATA_0_IBUF_32)
  );
  IBUF   S_AXI_ARADDR_2_IBUF (
    .I(S_AXI_ARADDR[2]),
    .O(S_AXI_ARADDR_2_IBUF_33)
  );
  IBUF   S_AXI_ARESETN_IBUF (
    .I(S_AXI_ARESETN),
    .O(S_AXI_ARESETN_IBUF_35)
  );
  IBUF   S_AXI_AWVALID_IBUF (
    .I(S_AXI_AWVALID),
    .O(S_AXI_AWVALID_IBUF_36)
  );
  IBUF   S_AXI_WVALID_IBUF (
    .I(S_AXI_WVALID),
    .O(S_AXI_WVALID_IBUF_37)
  );
  IBUF   S_AXI_BREADY_IBUF (
    .I(S_AXI_BREADY),
    .O(S_AXI_BREADY_IBUF_38)
  );
  IBUF   S_AXI_ARVALID_IBUF (
    .I(S_AXI_ARVALID),
    .O(S_AXI_ARVALID_IBUF_39)
  );
  IBUF   S_AXI_RREADY_IBUF (
    .I(S_AXI_RREADY),
    .O(S_AXI_RREADY_IBUF_40)
  );
  OBUF   S_AXI_RDATA_31_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [31]),
    .O(S_AXI_RDATA[31])
  );
  OBUF   S_AXI_RDATA_30_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [30]),
    .O(S_AXI_RDATA[30])
  );
  OBUF   S_AXI_RDATA_29_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [29]),
    .O(S_AXI_RDATA[29])
  );
  OBUF   S_AXI_RDATA_28_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [28]),
    .O(S_AXI_RDATA[28])
  );
  OBUF   S_AXI_RDATA_27_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [27]),
    .O(S_AXI_RDATA[27])
  );
  OBUF   S_AXI_RDATA_26_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [26]),
    .O(S_AXI_RDATA[26])
  );
  OBUF   S_AXI_RDATA_25_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [25]),
    .O(S_AXI_RDATA[25])
  );
  OBUF   S_AXI_RDATA_24_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [24]),
    .O(S_AXI_RDATA[24])
  );
  OBUF   S_AXI_RDATA_23_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [23]),
    .O(S_AXI_RDATA[23])
  );
  OBUF   S_AXI_RDATA_22_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [22]),
    .O(S_AXI_RDATA[22])
  );
  OBUF   S_AXI_RDATA_21_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [21]),
    .O(S_AXI_RDATA[21])
  );
  OBUF   S_AXI_RDATA_20_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [20]),
    .O(S_AXI_RDATA[20])
  );
  OBUF   S_AXI_RDATA_19_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [19]),
    .O(S_AXI_RDATA[19])
  );
  OBUF   S_AXI_RDATA_18_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [18]),
    .O(S_AXI_RDATA[18])
  );
  OBUF   S_AXI_RDATA_17_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [17]),
    .O(S_AXI_RDATA[17])
  );
  OBUF   S_AXI_RDATA_16_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [16]),
    .O(S_AXI_RDATA[16])
  );
  OBUF   S_AXI_RDATA_15_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [15]),
    .O(S_AXI_RDATA[15])
  );
  OBUF   S_AXI_RDATA_14_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [14]),
    .O(S_AXI_RDATA[14])
  );
  OBUF   S_AXI_RDATA_13_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [13]),
    .O(S_AXI_RDATA[13])
  );
  OBUF   S_AXI_RDATA_12_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [12]),
    .O(S_AXI_RDATA[12])
  );
  OBUF   S_AXI_RDATA_11_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [11]),
    .O(S_AXI_RDATA[11])
  );
  OBUF   S_AXI_RDATA_10_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [10]),
    .O(S_AXI_RDATA[10])
  );
  OBUF   S_AXI_RDATA_9_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [9]),
    .O(S_AXI_RDATA[9])
  );
  OBUF   S_AXI_RDATA_8_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [8]),
    .O(S_AXI_RDATA[8])
  );
  OBUF   S_AXI_RDATA_7_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [7]),
    .O(S_AXI_RDATA[7])
  );
  OBUF   S_AXI_RDATA_6_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [6]),
    .O(S_AXI_RDATA[6])
  );
  OBUF   S_AXI_RDATA_5_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [5]),
    .O(S_AXI_RDATA[5])
  );
  OBUF   S_AXI_RDATA_4_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [4]),
    .O(S_AXI_RDATA[4])
  );
  OBUF   S_AXI_RDATA_3_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [3]),
    .O(S_AXI_RDATA[3])
  );
  OBUF   S_AXI_RDATA_2_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [2]),
    .O(S_AXI_RDATA[2])
  );
  OBUF   S_AXI_RDATA_1_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [1]),
    .O(S_AXI_RDATA[1])
  );
  OBUF   S_AXI_RDATA_0_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [0]),
    .O(S_AXI_RDATA[0])
  );
  OBUF   S_AXI_RRESP_1_OBUF (
    .I(S_AXI_RRESP_1_OBUF_73),
    .O(S_AXI_RRESP[1])
  );
  OBUF   S_AXI_RRESP_0_OBUF (
    .I(S_AXI_RRESP_1_OBUF_73),
    .O(S_AXI_RRESP[0])
  );
  OBUF   S_AXI_BRESP_1_OBUF (
    .I(S_AXI_RRESP_1_OBUF_73),
    .O(S_AXI_BRESP[1])
  );
  OBUF   S_AXI_BRESP_0_OBUF (
    .I(S_AXI_RRESP_1_OBUF_73),
    .O(S_AXI_BRESP[0])
  );
  OBUF   S_AXI_ARREADY_OBUF (
    .I(S_AXI_ARREADY_OBUF_76),
    .O(S_AXI_ARREADY)
  );
  OBUF   S_AXI_RVALID_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i_77 ),
    .O(S_AXI_RVALID)
  );
  OBUF   S_AXI_WREADY_OBUF (
    .I(S_AXI_AWREADY_OBUF_74),
    .O(S_AXI_WREADY)
  );
  OBUF   S_AXI_BVALID_OBUF (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_bvalid_i_75 ),
    .O(S_AXI_BVALID)
  );
  OBUF   S_AXI_AWREADY_OBUF (
    .I(S_AXI_AWREADY_OBUF_74),
    .O(S_AXI_AWREADY)
  );
  FDR #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_bvalid_i  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_bvalid_i_glue_set_269 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_bvalid_i_75 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i_glue_set_270 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i_77 )
  );
  FD   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 )
  );
  FD   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_rstpot_272 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 )
  );
  LUT5 #(
    .INIT ( 32'h4F444444 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_bvalid_i_glue_set  (
    .I0(S_AXI_BREADY_IBUF_38),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_bvalid_i_75 ),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I4(S_AXI_AWREADY_OBUF_74),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_bvalid_i_glue_set_269 )
  );
  LUT5 #(
    .INIT ( 32'h44F44444 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i_glue_set  (
    .I0(S_AXI_RREADY_IBUF_40),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i_77 ),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I4(S_AXI_ARREADY_OBUF_76),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i_glue_set_270 )
  );
  LUT4 #(
    .INIT ( 16'hFFE0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rd_done1  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_2_346 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_2_347 ),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_1_343 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [3]),
    .O(S_AXI_ARREADY_OBUF_76)
  );
  LUT4 #(
    .INIT ( 16'hF3F2 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/wr_done1  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_1_345 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_1_343 ),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [3]),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_2_347 ),
    .O(S_AXI_AWREADY_OBUF_74)
  );
  FD   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_rstpot_273 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 )
  );
  FD   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_rstpot_274 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 )
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data110  (
    .I0(\USER_LOGIC_I/slv_reg0 [0]),
    .I1(\USER_LOGIC_I/slv_reg1 [0]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_3_383 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_3_385 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_2_381 ),
    .O(user_IP2Bus_Data[0])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data210  (
    .I0(\USER_LOGIC_I/slv_reg0 [10]),
    .I1(\USER_LOGIC_I/slv_reg1 [10]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_3_383 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_3_385 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_2_381 ),
    .O(user_IP2Bus_Data[10])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data33  (
    .I0(\USER_LOGIC_I/slv_reg0 [11]),
    .I1(\USER_LOGIC_I/slv_reg1 [11]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_3_383 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_3_385 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_2_381 ),
    .O(user_IP2Bus_Data[11])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data41  (
    .I0(\USER_LOGIC_I/slv_reg0 [12]),
    .I1(\USER_LOGIC_I/slv_reg1 [12]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_3_383 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_3_385 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_2_381 ),
    .O(user_IP2Bus_Data[12])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data51  (
    .I0(\USER_LOGIC_I/slv_reg0 [13]),
    .I1(\USER_LOGIC_I/slv_reg1 [13]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_3_383 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_3_385 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_2_381 ),
    .O(user_IP2Bus_Data[13])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data61  (
    .I0(\USER_LOGIC_I/slv_reg0 [14]),
    .I1(\USER_LOGIC_I/slv_reg1 [14]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_3_383 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_3_385 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_2_381 ),
    .O(user_IP2Bus_Data[14])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data71  (
    .I0(\USER_LOGIC_I/slv_reg0 [15]),
    .I1(\USER_LOGIC_I/slv_reg1 [15]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_3_383 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_3_385 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_2_381 ),
    .O(user_IP2Bus_Data[15])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data81  (
    .I0(\USER_LOGIC_I/slv_reg0 [16]),
    .I1(\USER_LOGIC_I/slv_reg1 [16]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_3_383 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_3_385 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_2_381 ),
    .O(user_IP2Bus_Data[16])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data91  (
    .I0(\USER_LOGIC_I/slv_reg0 [17]),
    .I1(\USER_LOGIC_I/slv_reg1 [17]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_3_383 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_3_385 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_2_381 ),
    .O(user_IP2Bus_Data[17])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data101  (
    .I0(\USER_LOGIC_I/slv_reg0 [18]),
    .I1(\USER_LOGIC_I/slv_reg1 [18]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_3_383 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_3_385 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_2_381 ),
    .O(user_IP2Bus_Data[18])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data111  (
    .I0(\USER_LOGIC_I/slv_reg0 [19]),
    .I1(\USER_LOGIC_I/slv_reg1 [19]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_3_383 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_3_385 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_2_381 ),
    .O(user_IP2Bus_Data[19])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data121  (
    .I0(\USER_LOGIC_I/slv_reg0 [1]),
    .I1(\USER_LOGIC_I/slv_reg1 [1]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_3_383 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_3_385 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_2_381 ),
    .O(user_IP2Bus_Data[1])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data131  (
    .I0(\USER_LOGIC_I/slv_reg0 [20]),
    .I1(\USER_LOGIC_I/slv_reg1 [20]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_3_383 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_3_385 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_2_381 ),
    .O(user_IP2Bus_Data[20])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data141  (
    .I0(\USER_LOGIC_I/slv_reg0 [21]),
    .I1(\USER_LOGIC_I/slv_reg1 [21]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_3_383 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_3_385 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_2_381 ),
    .O(user_IP2Bus_Data[21])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data151  (
    .I0(\USER_LOGIC_I/slv_reg0 [22]),
    .I1(\USER_LOGIC_I/slv_reg1 [22]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_3_383 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_3_385 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_2_381 ),
    .O(user_IP2Bus_Data[22])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data161  (
    .I0(\USER_LOGIC_I/slv_reg0 [23]),
    .I1(\USER_LOGIC_I/slv_reg1 [23]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_3_383 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_3_385 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_2_381 ),
    .O(user_IP2Bus_Data[23])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data171  (
    .I0(\USER_LOGIC_I/slv_reg0 [24]),
    .I1(\USER_LOGIC_I/slv_reg1 [24]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_3_383 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_3_385 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_2_381 ),
    .O(user_IP2Bus_Data[24])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data181  (
    .I0(\USER_LOGIC_I/slv_reg0 [25]),
    .I1(\USER_LOGIC_I/slv_reg1 [25]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_4_384 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_4_386 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_3_382 ),
    .O(user_IP2Bus_Data[25])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data191  (
    .I0(\USER_LOGIC_I/slv_reg0 [26]),
    .I1(\USER_LOGIC_I/slv_reg1 [26]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_4_384 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_4_386 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_3_382 ),
    .O(user_IP2Bus_Data[26])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data201  (
    .I0(\USER_LOGIC_I/slv_reg0 [27]),
    .I1(\USER_LOGIC_I/slv_reg1 [27]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_4_384 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_4_386 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_3_382 ),
    .O(user_IP2Bus_Data[27])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data211  (
    .I0(\USER_LOGIC_I/slv_reg0 [28]),
    .I1(\USER_LOGIC_I/slv_reg1 [28]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_4_384 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_4_386 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_3_382 ),
    .O(user_IP2Bus_Data[28])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data221  (
    .I0(\USER_LOGIC_I/slv_reg0 [29]),
    .I1(\USER_LOGIC_I/slv_reg1 [29]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_4_384 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_4_386 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_3_382 ),
    .O(user_IP2Bus_Data[29])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data231  (
    .I0(\USER_LOGIC_I/slv_reg0 [2]),
    .I1(\USER_LOGIC_I/slv_reg1 [2]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_4_384 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_4_386 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_3_382 ),
    .O(user_IP2Bus_Data[2])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data241  (
    .I0(\USER_LOGIC_I/slv_reg0 [30]),
    .I1(\USER_LOGIC_I/slv_reg1 [30]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_4_384 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_4_386 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_3_382 ),
    .O(user_IP2Bus_Data[30])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data251  (
    .I0(\USER_LOGIC_I/slv_reg0 [31]),
    .I1(\USER_LOGIC_I/slv_reg1 [31]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_4_384 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_4_386 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_3_382 ),
    .O(user_IP2Bus_Data[31])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data261  (
    .I0(\USER_LOGIC_I/slv_reg0 [3]),
    .I1(\USER_LOGIC_I/slv_reg1 [3]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_4_384 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_4_386 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_3_382 ),
    .O(user_IP2Bus_Data[3])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data271  (
    .I0(\USER_LOGIC_I/slv_reg0 [4]),
    .I1(\USER_LOGIC_I/slv_reg1 [4]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_4_384 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_4_386 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_3_382 ),
    .O(user_IP2Bus_Data[4])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data281  (
    .I0(\USER_LOGIC_I/slv_reg0 [5]),
    .I1(\USER_LOGIC_I/slv_reg1 [5]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_4_384 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_4_386 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_3_382 ),
    .O(user_IP2Bus_Data[5])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data291  (
    .I0(\USER_LOGIC_I/slv_reg0 [6]),
    .I1(\USER_LOGIC_I/slv_reg1 [6]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_4_384 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_4_386 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_3_382 ),
    .O(user_IP2Bus_Data[6])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data301  (
    .I0(\USER_LOGIC_I/slv_reg0 [7]),
    .I1(\USER_LOGIC_I/slv_reg1 [7]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_4_384 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_4_386 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_3_382 ),
    .O(user_IP2Bus_Data[7])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data311  (
    .I0(\USER_LOGIC_I/slv_reg0 [8]),
    .I1(\USER_LOGIC_I/slv_reg1 [8]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_4_384 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_4_386 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_3_382 ),
    .O(user_IP2Bus_Data[8])
  );
  LUT5 #(
    .INIT ( 32'h0AC00000 ))
  \USER_LOGIC_I/Mmux_IP2Bus_Data321  (
    .I0(\USER_LOGIC_I/slv_reg0 [9]),
    .I1(\USER_LOGIC_I/slv_reg1 [9]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_4_384 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_4_386 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_3_382 ),
    .O(user_IP2Bus_Data[9])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFBF000000AA ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_rstpot  (
    .I0(S_AXI_ARVALID_IBUF_39),
    .I1(S_AXI_WVALID_IBUF_37),
    .I2(S_AXI_AWVALID_IBUF_36),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I5(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_rstpot_272 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_rstpot  (
    .I0(N4),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [3]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .I5(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_rstpot_273 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_rstpot  (
    .I0(N6),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [3]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .I5(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_rstpot_274 )
  );
  LUT6 #(
    .INIT ( 64'hFBFFFFFF5155FFFF ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_rstpot_SW0  (
    .I0(S_AXI_ARVALID_IBUF_39),
    .I1(S_AXI_AWVALID_IBUF_36),
    .I2(S_AXI_AWADDR_2_IBUF_0),
    .I3(S_AXI_WVALID_IBUF_37),
    .I4(S_AXI_ARESETN_IBUF_35),
    .I5(S_AXI_ARADDR_2_IBUF_33),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'h1555FFFFBFFFFFFF ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_rstpot_SW0  (
    .I0(S_AXI_ARVALID_IBUF_39),
    .I1(S_AXI_AWADDR_2_IBUF_0),
    .I2(S_AXI_WVALID_IBUF_37),
    .I3(S_AXI_AWVALID_IBUF_36),
    .I4(S_AXI_ARESETN_IBUF_35),
    .I5(S_AXI_ARADDR_2_IBUF_33),
    .O(N6)
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_0_dpot  (
    .I0(S_AXI_WDATA_0_IBUF_32),
    .I1(\USER_LOGIC_I/slv_reg0 [0]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_0_dpot_278 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_1_dpot  (
    .I0(S_AXI_WDATA_1_IBUF_31),
    .I1(\USER_LOGIC_I/slv_reg0 [1]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_1_dpot_279 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_2_dpot  (
    .I0(S_AXI_WDATA_2_IBUF_30),
    .I1(\USER_LOGIC_I/slv_reg0 [2]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_2_dpot_280 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_3_dpot  (
    .I0(S_AXI_WDATA_3_IBUF_29),
    .I1(\USER_LOGIC_I/slv_reg0 [3]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_3_dpot_281 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_4_dpot  (
    .I0(S_AXI_WDATA_4_IBUF_28),
    .I1(\USER_LOGIC_I/slv_reg0 [4]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_4_dpot_282 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_5_dpot  (
    .I0(S_AXI_WDATA_5_IBUF_27),
    .I1(\USER_LOGIC_I/slv_reg0 [5]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_5_dpot_283 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_6_dpot  (
    .I0(S_AXI_WDATA_6_IBUF_26),
    .I1(\USER_LOGIC_I/slv_reg0 [6]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_6_dpot_284 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_7_dpot  (
    .I0(S_AXI_WDATA_7_IBUF_25),
    .I1(\USER_LOGIC_I/slv_reg0 [7]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_7_dpot_285 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_8_dpot  (
    .I0(S_AXI_WDATA_8_IBUF_24),
    .I1(\USER_LOGIC_I/slv_reg0 [8]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_8_dpot_286 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_9_dpot  (
    .I0(S_AXI_WDATA_9_IBUF_23),
    .I1(\USER_LOGIC_I/slv_reg0 [9]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_9_dpot_287 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_10_dpot  (
    .I0(S_AXI_WDATA_10_IBUF_22),
    .I1(\USER_LOGIC_I/slv_reg0 [10]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_10_dpot_288 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_11_dpot  (
    .I0(S_AXI_WDATA_11_IBUF_21),
    .I1(\USER_LOGIC_I/slv_reg0 [11]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_11_dpot_289 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_12_dpot  (
    .I0(S_AXI_WDATA_12_IBUF_20),
    .I1(\USER_LOGIC_I/slv_reg0 [12]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_12_dpot_290 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_13_dpot  (
    .I0(S_AXI_WDATA_13_IBUF_19),
    .I1(\USER_LOGIC_I/slv_reg0 [13]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_13_dpot_291 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_14_dpot  (
    .I0(S_AXI_WDATA_14_IBUF_18),
    .I1(\USER_LOGIC_I/slv_reg0 [14]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_14_dpot_292 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_15_dpot  (
    .I0(S_AXI_WDATA_15_IBUF_17),
    .I1(\USER_LOGIC_I/slv_reg0 [15]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_15_dpot_293 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_16_dpot  (
    .I0(S_AXI_WDATA_16_IBUF_16),
    .I1(\USER_LOGIC_I/slv_reg0 [16]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_16_dpot_294 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_17_dpot  (
    .I0(S_AXI_WDATA_17_IBUF_15),
    .I1(\USER_LOGIC_I/slv_reg0 [17]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_17_dpot_295 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_18_dpot  (
    .I0(S_AXI_WDATA_18_IBUF_14),
    .I1(\USER_LOGIC_I/slv_reg0 [18]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_18_dpot_296 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_19_dpot  (
    .I0(S_AXI_WDATA_19_IBUF_13),
    .I1(\USER_LOGIC_I/slv_reg0 [19]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_19_dpot_297 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_20_dpot  (
    .I0(S_AXI_WDATA_20_IBUF_12),
    .I1(\USER_LOGIC_I/slv_reg0 [20]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_20_dpot_298 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_21_dpot  (
    .I0(S_AXI_WDATA_21_IBUF_11),
    .I1(\USER_LOGIC_I/slv_reg0 [21]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_21_dpot_299 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_22_dpot  (
    .I0(S_AXI_WDATA_22_IBUF_10),
    .I1(\USER_LOGIC_I/slv_reg0 [22]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_22_dpot_300 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_23_dpot  (
    .I0(S_AXI_WDATA_23_IBUF_9),
    .I1(\USER_LOGIC_I/slv_reg0 [23]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_23_dpot_301 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_24_dpot  (
    .I0(S_AXI_WDATA_24_IBUF_8),
    .I1(\USER_LOGIC_I/slv_reg0 [24]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_24_dpot_302 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_25_dpot  (
    .I0(S_AXI_WDATA_25_IBUF_7),
    .I1(\USER_LOGIC_I/slv_reg0 [25]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_25_dpot_303 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_26_dpot  (
    .I0(S_AXI_WDATA_26_IBUF_6),
    .I1(\USER_LOGIC_I/slv_reg0 [26]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_26_dpot_304 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_27_dpot  (
    .I0(S_AXI_WDATA_27_IBUF_5),
    .I1(\USER_LOGIC_I/slv_reg0 [27]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_27_dpot_305 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_28_dpot  (
    .I0(S_AXI_WDATA_28_IBUF_4),
    .I1(\USER_LOGIC_I/slv_reg0 [28]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_28_dpot_306 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_29_dpot  (
    .I0(S_AXI_WDATA_29_IBUF_3),
    .I1(\USER_LOGIC_I/slv_reg0 [29]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_29_dpot_307 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_30_dpot  (
    .I0(S_AXI_WDATA_30_IBUF_2),
    .I1(\USER_LOGIC_I/slv_reg0 [30]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_30_dpot_308 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg0_31_dpot  (
    .I0(S_AXI_WDATA_31_IBUF_1),
    .I1(\USER_LOGIC_I/slv_reg0 [31]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_120 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg0_31_dpot_309 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_0_dpot  (
    .I0(S_AXI_WDATA_0_IBUF_32),
    .I1(\USER_LOGIC_I/slv_reg1 [0]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_0_dpot_311 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_1_dpot  (
    .I0(S_AXI_WDATA_1_IBUF_31),
    .I1(\USER_LOGIC_I/slv_reg1 [1]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_1_dpot_312 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_2_dpot  (
    .I0(S_AXI_WDATA_2_IBUF_30),
    .I1(\USER_LOGIC_I/slv_reg1 [2]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_2_dpot_313 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_3_dpot  (
    .I0(S_AXI_WDATA_3_IBUF_29),
    .I1(\USER_LOGIC_I/slv_reg1 [3]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_3_dpot_314 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_4_dpot  (
    .I0(S_AXI_WDATA_4_IBUF_28),
    .I1(\USER_LOGIC_I/slv_reg1 [4]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_4_dpot_315 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_5_dpot  (
    .I0(S_AXI_WDATA_5_IBUF_27),
    .I1(\USER_LOGIC_I/slv_reg1 [5]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_5_dpot_316 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_6_dpot  (
    .I0(S_AXI_WDATA_6_IBUF_26),
    .I1(\USER_LOGIC_I/slv_reg1 [6]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_6_dpot_317 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_7_dpot  (
    .I0(S_AXI_WDATA_7_IBUF_25),
    .I1(\USER_LOGIC_I/slv_reg1 [7]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_7_dpot_318 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_8_dpot  (
    .I0(S_AXI_WDATA_8_IBUF_24),
    .I1(\USER_LOGIC_I/slv_reg1 [8]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_8_dpot_319 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_9_dpot  (
    .I0(S_AXI_WDATA_9_IBUF_23),
    .I1(\USER_LOGIC_I/slv_reg1 [9]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_9_dpot_320 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_10_dpot  (
    .I0(S_AXI_WDATA_10_IBUF_22),
    .I1(\USER_LOGIC_I/slv_reg1 [10]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_10_dpot_321 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_11_dpot  (
    .I0(S_AXI_WDATA_11_IBUF_21),
    .I1(\USER_LOGIC_I/slv_reg1 [11]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_11_dpot_322 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_12_dpot  (
    .I0(S_AXI_WDATA_12_IBUF_20),
    .I1(\USER_LOGIC_I/slv_reg1 [12]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_12_dpot_323 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_13_dpot  (
    .I0(S_AXI_WDATA_13_IBUF_19),
    .I1(\USER_LOGIC_I/slv_reg1 [13]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_13_dpot_324 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_14_dpot  (
    .I0(S_AXI_WDATA_14_IBUF_18),
    .I1(\USER_LOGIC_I/slv_reg1 [14]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_14_dpot_325 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_15_dpot  (
    .I0(S_AXI_WDATA_15_IBUF_17),
    .I1(\USER_LOGIC_I/slv_reg1 [15]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_15_dpot_326 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_16_dpot  (
    .I0(S_AXI_WDATA_16_IBUF_16),
    .I1(\USER_LOGIC_I/slv_reg1 [16]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_16_dpot_327 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_17_dpot  (
    .I0(S_AXI_WDATA_17_IBUF_15),
    .I1(\USER_LOGIC_I/slv_reg1 [17]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_17_dpot_328 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_18_dpot  (
    .I0(S_AXI_WDATA_18_IBUF_14),
    .I1(\USER_LOGIC_I/slv_reg1 [18]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_18_dpot_329 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_19_dpot  (
    .I0(S_AXI_WDATA_19_IBUF_13),
    .I1(\USER_LOGIC_I/slv_reg1 [19]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_19_dpot_330 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_20_dpot  (
    .I0(S_AXI_WDATA_20_IBUF_12),
    .I1(\USER_LOGIC_I/slv_reg1 [20]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_20_dpot_331 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_21_dpot  (
    .I0(S_AXI_WDATA_21_IBUF_11),
    .I1(\USER_LOGIC_I/slv_reg1 [21]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_21_dpot_332 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_22_dpot  (
    .I0(S_AXI_WDATA_22_IBUF_10),
    .I1(\USER_LOGIC_I/slv_reg1 [22]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_22_dpot_333 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_23_dpot  (
    .I0(S_AXI_WDATA_23_IBUF_9),
    .I1(\USER_LOGIC_I/slv_reg1 [23]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_23_dpot_334 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_24_dpot  (
    .I0(S_AXI_WDATA_24_IBUF_8),
    .I1(\USER_LOGIC_I/slv_reg1 [24]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_24_dpot_335 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_25_dpot  (
    .I0(S_AXI_WDATA_25_IBUF_7),
    .I1(\USER_LOGIC_I/slv_reg1 [25]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_25_dpot_336 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_26_dpot  (
    .I0(S_AXI_WDATA_26_IBUF_6),
    .I1(\USER_LOGIC_I/slv_reg1 [26]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_26_dpot_337 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_27_dpot  (
    .I0(S_AXI_WDATA_27_IBUF_5),
    .I1(\USER_LOGIC_I/slv_reg1 [27]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_27_dpot_338 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_28_dpot  (
    .I0(S_AXI_WDATA_28_IBUF_4),
    .I1(\USER_LOGIC_I/slv_reg1 [28]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_28_dpot_339 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_29_dpot  (
    .I0(S_AXI_WDATA_29_IBUF_3),
    .I1(\USER_LOGIC_I/slv_reg1 [29]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_29_dpot_340 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_30_dpot  (
    .I0(S_AXI_WDATA_30_IBUF_2),
    .I1(\USER_LOGIC_I/slv_reg1 [30]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_30_dpot_341 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \USER_LOGIC_I/slv_reg1_31_dpot  (
    .I0(S_AXI_WDATA_31_IBUF_1),
    .I1(\USER_LOGIC_I/slv_reg1 [31]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_119 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_121 ),
    .O(\USER_LOGIC_I/slv_reg1_31_dpot_342 )
  );
  FD   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_1  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_rstpot_272 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_1_343 )
  );
  FD   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_1  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_rstpot_273 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_1_344 )
  );
  FD   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_1  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_rstpot_274 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_1_345 )
  );
  FD   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_2  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_rstpot_274 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_2_346 )
  );
  FD   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_2  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_rstpot_273 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_2_347 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_1  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2-In_116 ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_1_380 )
  );
  FD   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_2  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_rstpot_272 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_2_381 )
  );
  FD   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_3  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_rstpot_272 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_3_382 )
  );
  FD   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_3  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_rstpot_274 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_3_383 )
  );
  FD   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_4  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_rstpot_274 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_4_384 )
  );
  FD   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_3  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_rstpot_273 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_3_385 )
  );
  FD   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_4  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_rstpot_273 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_4_386 )
  );
  FD   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt_3  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt_3_rstpot_387 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [3])
  );
  FD   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt_2  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt_2_rstpot_388 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [2])
  );
  FD   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt_1  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt_1_rstpot_389 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [1])
  );
  FD   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt_0  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt_0_rstpot_390 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [0])
  );
  LUT6 #(
    .INIT ( 64'h00006AAA6AAA0000 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt_3_rstpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [3]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [0]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [1]),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [2]),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_1_380 ),
    .I5(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt_3_rstpot_387 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_2_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [2]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[2]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_2_dpot_350 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_3_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [3]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[3]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_3_dpot_351 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_4_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [4]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[4]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_4_dpot_352 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_5_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [5]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[5]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_5_dpot_353 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_6_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [6]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[6]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_6_dpot_354 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_7_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [7]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[7]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_7_dpot_355 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_8_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [8]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[8]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_8_dpot_356 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_9_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [9]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[9]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_9_dpot_357 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_0_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [0]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[0]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_0_dpot_348 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_1_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [1]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[1]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_1_dpot_349 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_10_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [10]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[10]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_10_dpot_358 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_11_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [11]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[11]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_11_dpot_359 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_12_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [12]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[12]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_12_dpot_360 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_13_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [13]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[13]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_13_dpot_361 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_14_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [14]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[14]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_14_dpot_362 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_15_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [15]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[15]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_15_dpot_363 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_16_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [16]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[16]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_16_dpot_364 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_25_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [25]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[25]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_25_dpot_373 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_26_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [26]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[26]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_26_dpot_374 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_27_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [27]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[27]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_27_dpot_375 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_28_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [28]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[28]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_28_dpot_376 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_29_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [29]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[29]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_29_dpot_377 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_30_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [30]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[30]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_30_dpot_378 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_31_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [31]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[31]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_31_dpot_379 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_17_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [17]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[17]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_17_dpot_365 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_18_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [18]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[18]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_18_dpot_366 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_19_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [19]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[19]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_19_dpot_367 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_20_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [20]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[20]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_20_dpot_368 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_21_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [21]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[21]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_21_dpot_369 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_22_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [22]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[22]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_22_dpot_370 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_23_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [23]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[23]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_23_dpot_371 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_24_dpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i [24]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I2(user_IP2Bus_Data[24]),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rdata_i_24_dpot_372 )
  );
  LUT5 #(
    .INIT ( 32'h006A6A00 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt_2_rstpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [2]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [1]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [0]),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_1_380 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt_2_rstpot_388 )
  );
  LUT4 #(
    .INIT ( 16'h0660 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt_1_rstpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [1]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [0]),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_1_380 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt_1_rstpot_389 )
  );
  LUT3 #(
    .INIT ( 8'h14 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt_0_rstpot  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [0]),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_1_380 ),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt_0_rstpot_390 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_1  (
    .C(S_AXI_ACLK_BUFGP_34),
    .D(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1-In ),
    .R(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_118 ),
    .Q(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_1_391 )
  );
  MUXF7   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1-In3  (
    .I0(N8),
    .I1(N9),
    .S(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1-In )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAA8880 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1-In3_F  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_1_343 ),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_2_346 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_2_347 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [3]),
    .I5(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1-In1_186 ),
    .O(N8)
  );
  LUT5 #(
    .INIT ( 32'hFFFF0777 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1-In3_G  (
    .I0(S_AXI_RREADY_IBUF_40),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i_77 ),
    .I2(S_AXI_BREADY_IBUF_38),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_bvalid_i_75 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1-In1_186 ),
    .O(N9)
  );
  MUXF7   \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2-In  (
    .I0(N10),
    .I1(N11),
    .S(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2_114 ),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2-In_116 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF7775AAAA2220 ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2-In_F  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .I1(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_1_343 ),
    .I2(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_1_345 ),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_2_347 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/INCLUDE_DPHASE_TIMER.dpto_cnt [3]),
    .I5(S_AXI_ARVALID_IBUF_39),
    .O(N10)
  );
  LUT5 #(
    .INIT ( 32'h0777FFFF ))
  \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd2-In_G  (
    .I0(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_bvalid_i_75 ),
    .I1(S_AXI_BREADY_IBUF_38),
    .I2(S_AXI_RREADY_IBUF_40),
    .I3(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/s_axi_rvalid_i_77 ),
    .I4(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/state_FSM_FFd1_113 ),
    .O(N11)
  );
  BUFGP   S_AXI_ACLK_BUFGP (
    .I(S_AXI_ACLK),
    .O(S_AXI_ACLK_BUFGP_34)
  );
  INV   \USER_LOGIC_I/Bus2IP_Resetn_inv1_INV_0  (
    .I(S_AXI_ARESETN_IBUF_35),
    .O(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/rst_rstpot )
  );
  INV   \USER_LOGIC_I/_n0100<1>1_cepot_INV_0  (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_1_1_345 ),
    .O(\USER_LOGIC_I/_n0100<1>1_cepot )
  );
  INV   \USER_LOGIC_I/_n0097<1>1_cepot_INV_0  (
    .I(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i_0_1_344 ),
    .O(\USER_LOGIC_I/_n0097<1>1_cepot )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

