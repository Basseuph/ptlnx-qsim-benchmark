// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
// Date        : Thu Dec 15 17:17:38 2016
// Host        : xcosswbld01 running 64-bit Red Hat Enterprise Linux Workstation release 6.7 (Santiago)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_zynq_ultra_ps_e_0_0_stub.v
// Design      : design_1_zynq_ultra_ps_e_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-1-i-es1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "zynq_ultra_ps_e_v2_0_1_zynq_ultra_ps_e,Vivado 2016.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(emio_enet3_tx_r_data_rdy, 
  emio_enet3_tx_r_rd, emio_enet3_tx_r_valid, emio_enet3_tx_r_data, emio_enet3_tx_r_sop, 
  emio_enet3_tx_r_eop, emio_enet3_tx_r_err, emio_enet3_tx_r_underflow, 
  emio_enet3_tx_r_flushed, emio_enet3_tx_r_control, emio_enet3_dma_tx_end_tog, 
  emio_enet3_dma_tx_status_tog, emio_enet3_tx_r_status, emio_enet3_rx_w_wr, 
  emio_enet3_rx_w_data, emio_enet3_rx_w_sop, emio_enet3_rx_w_eop, emio_enet3_rx_w_status, 
  emio_enet3_rx_w_err, emio_enet3_rx_w_overflow, emio_enet3_rx_w_flush, 
  emio_enet3_tx_r_fixed_lat, fmio_gem3_fifo_tx_clk_to_pl_bufg, 
  fmio_gem3_fifo_rx_clk_to_pl_bufg, fmio_gem3_fifo_tx_clk_from_pl, 
  fmio_gem3_fifo_rx_clk_from_pl, emio_enet3_tx_sof, emio_enet3_sync_frame_tx, 
  emio_enet3_delay_req_tx, emio_enet3_pdelay_req_tx, emio_enet3_pdelay_resp_tx, 
  emio_enet3_rx_sof, emio_enet3_sync_frame_rx, emio_enet3_delay_req_rx, 
  emio_enet3_pdelay_req_rx, emio_enet3_pdelay_resp_rx, pl_resetn0, aib_pmu_afifm_fpd_ack, 
  aib_pmu_afifm_lpd_ack, pmu_aib_afifm_fpd_req, pmu_aib_afifm_lpd_req, pmu_error_from_pl, 
  pmu_error_to_pl, pl_clk0, pl_clk1, pl_clk2, pl_clk3)
/* synthesis syn_black_box black_box_pad_pin="emio_enet3_tx_r_data_rdy,emio_enet3_tx_r_rd,emio_enet3_tx_r_valid,emio_enet3_tx_r_data[7:0],emio_enet3_tx_r_sop,emio_enet3_tx_r_eop,emio_enet3_tx_r_err,emio_enet3_tx_r_underflow,emio_enet3_tx_r_flushed,emio_enet3_tx_r_control,emio_enet3_dma_tx_end_tog,emio_enet3_dma_tx_status_tog,emio_enet3_tx_r_status[3:0],emio_enet3_rx_w_wr,emio_enet3_rx_w_data[7:0],emio_enet3_rx_w_sop,emio_enet3_rx_w_eop,emio_enet3_rx_w_status[44:0],emio_enet3_rx_w_err,emio_enet3_rx_w_overflow,emio_enet3_rx_w_flush,emio_enet3_tx_r_fixed_lat,fmio_gem3_fifo_tx_clk_to_pl_bufg,fmio_gem3_fifo_rx_clk_to_pl_bufg,fmio_gem3_fifo_tx_clk_from_pl,fmio_gem3_fifo_rx_clk_from_pl,emio_enet3_tx_sof,emio_enet3_sync_frame_tx,emio_enet3_delay_req_tx,emio_enet3_pdelay_req_tx,emio_enet3_pdelay_resp_tx,emio_enet3_rx_sof,emio_enet3_sync_frame_rx,emio_enet3_delay_req_rx,emio_enet3_pdelay_req_rx,emio_enet3_pdelay_resp_rx,pl_resetn0,aib_pmu_afifm_fpd_ack,aib_pmu_afifm_lpd_ack,pmu_aib_afifm_fpd_req,pmu_aib_afifm_lpd_req,pmu_error_from_pl[3:0],pmu_error_to_pl[46:0],pl_clk0,pl_clk1,pl_clk2,pl_clk3" */;
  input emio_enet3_tx_r_data_rdy;
  output emio_enet3_tx_r_rd;
  input emio_enet3_tx_r_valid;
  input [7:0]emio_enet3_tx_r_data;
  input emio_enet3_tx_r_sop;
  input emio_enet3_tx_r_eop;
  input emio_enet3_tx_r_err;
  input emio_enet3_tx_r_underflow;
  input emio_enet3_tx_r_flushed;
  input emio_enet3_tx_r_control;
  output emio_enet3_dma_tx_end_tog;
  input emio_enet3_dma_tx_status_tog;
  output [3:0]emio_enet3_tx_r_status;
  output emio_enet3_rx_w_wr;
  output [7:0]emio_enet3_rx_w_data;
  output emio_enet3_rx_w_sop;
  output emio_enet3_rx_w_eop;
  output [44:0]emio_enet3_rx_w_status;
  output emio_enet3_rx_w_err;
  input emio_enet3_rx_w_overflow;
  output emio_enet3_rx_w_flush;
  output emio_enet3_tx_r_fixed_lat;
  output fmio_gem3_fifo_tx_clk_to_pl_bufg;
  output fmio_gem3_fifo_rx_clk_to_pl_bufg;
  input fmio_gem3_fifo_tx_clk_from_pl;
  input fmio_gem3_fifo_rx_clk_from_pl;
  output emio_enet3_tx_sof;
  output emio_enet3_sync_frame_tx;
  output emio_enet3_delay_req_tx;
  output emio_enet3_pdelay_req_tx;
  output emio_enet3_pdelay_resp_tx;
  output emio_enet3_rx_sof;
  output emio_enet3_sync_frame_rx;
  output emio_enet3_delay_req_rx;
  output emio_enet3_pdelay_req_rx;
  output emio_enet3_pdelay_resp_rx;
  output pl_resetn0;
  input aib_pmu_afifm_fpd_ack;
  input aib_pmu_afifm_lpd_ack;
  output pmu_aib_afifm_fpd_req;
  output pmu_aib_afifm_lpd_req;
  input [3:0]pmu_error_from_pl;
  output [46:0]pmu_error_to_pl;
  output pl_clk0;
  output pl_clk1;
  output pl_clk2;
  output pl_clk3;
endmodule
