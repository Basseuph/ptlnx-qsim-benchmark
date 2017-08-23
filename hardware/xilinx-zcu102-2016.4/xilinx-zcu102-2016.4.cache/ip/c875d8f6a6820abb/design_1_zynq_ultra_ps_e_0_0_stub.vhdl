-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Thu Dec 15 17:17:38 2016
-- Host        : xcosswbld01 running 64-bit Red Hat Enterprise Linux Workstation release 6.7 (Santiago)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_zynq_ultra_ps_e_0_0_stub.vhdl
-- Design      : design_1_zynq_ultra_ps_e_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-1-i-es1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    emio_enet3_tx_r_data_rdy : in STD_LOGIC;
    emio_enet3_tx_r_rd : out STD_LOGIC;
    emio_enet3_tx_r_valid : in STD_LOGIC;
    emio_enet3_tx_r_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    emio_enet3_tx_r_sop : in STD_LOGIC;
    emio_enet3_tx_r_eop : in STD_LOGIC;
    emio_enet3_tx_r_err : in STD_LOGIC;
    emio_enet3_tx_r_underflow : in STD_LOGIC;
    emio_enet3_tx_r_flushed : in STD_LOGIC;
    emio_enet3_tx_r_control : in STD_LOGIC;
    emio_enet3_dma_tx_end_tog : out STD_LOGIC;
    emio_enet3_dma_tx_status_tog : in STD_LOGIC;
    emio_enet3_tx_r_status : out STD_LOGIC_VECTOR ( 3 downto 0 );
    emio_enet3_rx_w_wr : out STD_LOGIC;
    emio_enet3_rx_w_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    emio_enet3_rx_w_sop : out STD_LOGIC;
    emio_enet3_rx_w_eop : out STD_LOGIC;
    emio_enet3_rx_w_status : out STD_LOGIC_VECTOR ( 44 downto 0 );
    emio_enet3_rx_w_err : out STD_LOGIC;
    emio_enet3_rx_w_overflow : in STD_LOGIC;
    emio_enet3_rx_w_flush : out STD_LOGIC;
    emio_enet3_tx_r_fixed_lat : out STD_LOGIC;
    fmio_gem3_fifo_tx_clk_to_pl_bufg : out STD_LOGIC;
    fmio_gem3_fifo_rx_clk_to_pl_bufg : out STD_LOGIC;
    fmio_gem3_fifo_tx_clk_from_pl : in STD_LOGIC;
    fmio_gem3_fifo_rx_clk_from_pl : in STD_LOGIC;
    emio_enet3_tx_sof : out STD_LOGIC;
    emio_enet3_sync_frame_tx : out STD_LOGIC;
    emio_enet3_delay_req_tx : out STD_LOGIC;
    emio_enet3_pdelay_req_tx : out STD_LOGIC;
    emio_enet3_pdelay_resp_tx : out STD_LOGIC;
    emio_enet3_rx_sof : out STD_LOGIC;
    emio_enet3_sync_frame_rx : out STD_LOGIC;
    emio_enet3_delay_req_rx : out STD_LOGIC;
    emio_enet3_pdelay_req_rx : out STD_LOGIC;
    emio_enet3_pdelay_resp_rx : out STD_LOGIC;
    pl_resetn0 : out STD_LOGIC;
    aib_pmu_afifm_fpd_ack : in STD_LOGIC;
    aib_pmu_afifm_lpd_ack : in STD_LOGIC;
    pmu_aib_afifm_fpd_req : out STD_LOGIC;
    pmu_aib_afifm_lpd_req : out STD_LOGIC;
    pmu_error_from_pl : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pmu_error_to_pl : out STD_LOGIC_VECTOR ( 46 downto 0 );
    pl_clk0 : out STD_LOGIC;
    pl_clk1 : out STD_LOGIC;
    pl_clk2 : out STD_LOGIC;
    pl_clk3 : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "emio_enet3_tx_r_data_rdy,emio_enet3_tx_r_rd,emio_enet3_tx_r_valid,emio_enet3_tx_r_data[7:0],emio_enet3_tx_r_sop,emio_enet3_tx_r_eop,emio_enet3_tx_r_err,emio_enet3_tx_r_underflow,emio_enet3_tx_r_flushed,emio_enet3_tx_r_control,emio_enet3_dma_tx_end_tog,emio_enet3_dma_tx_status_tog,emio_enet3_tx_r_status[3:0],emio_enet3_rx_w_wr,emio_enet3_rx_w_data[7:0],emio_enet3_rx_w_sop,emio_enet3_rx_w_eop,emio_enet3_rx_w_status[44:0],emio_enet3_rx_w_err,emio_enet3_rx_w_overflow,emio_enet3_rx_w_flush,emio_enet3_tx_r_fixed_lat,fmio_gem3_fifo_tx_clk_to_pl_bufg,fmio_gem3_fifo_rx_clk_to_pl_bufg,fmio_gem3_fifo_tx_clk_from_pl,fmio_gem3_fifo_rx_clk_from_pl,emio_enet3_tx_sof,emio_enet3_sync_frame_tx,emio_enet3_delay_req_tx,emio_enet3_pdelay_req_tx,emio_enet3_pdelay_resp_tx,emio_enet3_rx_sof,emio_enet3_sync_frame_rx,emio_enet3_delay_req_rx,emio_enet3_pdelay_req_rx,emio_enet3_pdelay_resp_rx,pl_resetn0,aib_pmu_afifm_fpd_ack,aib_pmu_afifm_lpd_ack,pmu_aib_afifm_fpd_req,pmu_aib_afifm_lpd_req,pmu_error_from_pl[3:0],pmu_error_to_pl[46:0],pl_clk0,pl_clk1,pl_clk2,pl_clk3";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "zynq_ultra_ps_e_v2_0_1_zynq_ultra_ps_e,Vivado 2016.4";
begin
end;
