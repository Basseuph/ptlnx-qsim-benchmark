import_files -fileset constrs_1 {../xdc/vcu_afx_pll.xdc }

#set_property ip_repo_paths ../ip/vcu_v1_0/ [current_project]
#update_ip_catalog

  # Create interface ports
  set vcu_pll_ref_clk [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 vcu_pll_ref_clk ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {300000000} \
 ] $vcu_pll_ref_clk

  # Create instance: DEC0_to_PS, and set properties
  set DEC0_to_PS [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect: DEC0_to_PS ]
  set_property -dict [ list \
CONFIG.M00_HAS_REGSLICE {4} \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {1} \
CONFIG.S00_HAS_REGSLICE {4} \
CONFIG.S01_HAS_REGSLICE {4} \
 ] $DEC0_to_PS

  # Create instance: DEC1_to_PS, and set properties
  set DEC1_to_PS [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect: DEC1_to_PS ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
CONFIG.S00_HAS_REGSLICE {4} \
 ] $DEC1_to_PS

  # Create instance: ENC0_TO_PS, and set properties
  set ENC0_TO_PS [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect: ENC0_TO_PS ]
  set_property -dict [ list \
CONFIG.M00_HAS_REGSLICE {4} \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {1} \
CONFIG.S00_HAS_REGSLICE {4} \
CONFIG.S01_HAS_REGSLICE {4} \
 ] $ENC0_TO_PS

  # Create instance: ENC1_to_PS, and set properties
  set ENC1_to_PS [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect: ENC1_to_PS ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
CONFIG.S00_HAS_REGSLICE {4} \
 ] $ENC1_to_PS

  # Create instance: MCU_to_PS, and set properties
  set MCU_to_PS [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect: MCU_to_PS ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
CONFIG.S00_HAS_REGSLICE {4} \
 ] $MCU_to_PS

  # Create instance: PS_to_VCU, and set properties
  set PS_to_VCU [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect: PS_to_VCU ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
CONFIG.S00_HAS_REGSLICE {4} \
 ] $PS_to_VCU

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz: clk_wiz_0 ]
  set_property -dict [ list \
CONFIG.CLKIN1_JITTER_PS {59.88} \
CONFIG.CLKOUT1_DRIVES {Buffer} \
CONFIG.CLKOUT1_JITTER {112.086} \
CONFIG.CLKOUT1_PHASE_ERROR {150.029} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {125.000} \
CONFIG.CLKOUT2_DRIVES {Buffer} \
CONFIG.CLKOUT3_DRIVES {Buffer} \
CONFIG.CLKOUT4_DRIVES {Buffer} \
CONFIG.CLKOUT5_DRIVES {Buffer} \
CONFIG.CLKOUT6_DRIVES {Buffer} \
CONFIG.CLKOUT7_DRIVES {Buffer} \
CONFIG.CLK_OUT1_PORT {AXI_LITE} \
CONFIG.MMCM_CLKFBOUT_MULT_F {47.250} \
CONFIG.MMCM_CLKIN1_PERIOD {5.988} \
CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {12.625} \
CONFIG.MMCM_DIVCLK_DIVIDE {5} \
CONFIG.PHASESHIFT_MODE {LATENCY} \
CONFIG.USE_RESET {false} \
 ] $clk_wiz_0

  # Create instance: clk_wiz_1, and set properties
  set clk_wiz_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz: clk_wiz_1 ]
  set_property -dict [ list \
CONFIG.CLKIN1_JITTER_PS {33.330000000000005} \
CONFIG.CLKOUT1_DRIVES {Buffer} \
CONFIG.CLKOUT1_JITTER {241.176} \
CONFIG.CLKOUT1_PHASE_ERROR {338.181} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {33.33} \
CONFIG.CLKOUT2_DRIVES {Buffer} \
CONFIG.CLKOUT3_DRIVES {Buffer} \
CONFIG.CLKOUT4_DRIVES {Buffer} \
CONFIG.CLKOUT5_DRIVES {Buffer} \
CONFIG.CLKOUT6_DRIVES {Buffer} \
CONFIG.CLKOUT7_DRIVES {Buffer} \
CONFIG.CLK_OUT1_PORT {PLL} \
CONFIG.MMCM_CLKFBOUT_MULT_F {62.875} \
CONFIG.MMCM_CLKIN1_PERIOD {3.333} \
CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {35.375} \
CONFIG.MMCM_DIVCLK_DIVIDE {16} \
CONFIG.PHASESHIFT_MODE {LATENCY} \
CONFIG.USE_LOCKED {false} \
CONFIG.USE_RESET {false} \
 ] $clk_wiz_1

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset: proc_sys_reset_0 ]

  # Create instance: rst_ps8_0_100M, and set properties
  set rst_ps8_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset: rst_ps8_0_100M ]

  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf: util_ds_buf_0 ]

  # Create instance: util_ds_buf_1, and set properties
  set util_ds_buf_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf: util_ds_buf_1 ]
  set_property -dict [ list \
CONFIG.C_BUF_TYPE {BUFG} \
 ] $util_ds_buf_1

  # Create instance: vcu_0, and set properties
  set vcu_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:vcu: vcu_0 ]
  set_property -dict [ list \
CONFIG.AXI_DEC_BASE0 {0} \
CONFIG.AXI_DEC_BASE1 {0} \
CONFIG.AXI_DEC_RANGE0 {0} \
CONFIG.AXI_DEC_RANGE1 {0} \
CONFIG.AXI_ENC_BASE0 {0} \
CONFIG.AXI_ENC_BASE1 {0} \
CONFIG.AXI_ENC_RANGE0 {0} \
CONFIG.AXI_ENC_RANGE1 {0} \
CONFIG.AXI_MCU_BASE {0} \
CONFIG.AXI_MCU_RANGE {0} \
CONFIG.CORE_CLK {667} \
CONFIG.DEC_FPS {1} \
CONFIG.DEC_FRAME_SIZE {2} \
CONFIG.DEC_VIDEO_STANDARD {0} \
CONFIG.ENABLE_DECODER {TRUE} \
CONFIG.ENABLE_ENCODER {TRUE} \
CONFIG.ENC_BUFFER_B_FRAME {2} \
CONFIG.ENC_BUFFER_EN {true} \
CONFIG.ENC_BUFFER_MANUAL_OVERRIDE {0} \
CONFIG.ENC_BUFFER_MOTION_VEC_RANGE {2} \
CONFIG.ENC_BUFFER_SIZE {3040} \
CONFIG.ENC_BUFFER_SIZE_ACTUAL {3420} \
CONFIG.ENC_BUFFER_TYPE {0} \
CONFIG.ENC_CODING_TYPE {1} \
CONFIG.ENC_COLOR_DEPTH {1} \
CONFIG.ENC_COLOR_FORMAT {1} \
CONFIG.ENC_FPS {1} \
CONFIG.ENC_FRAME_SIZE {2} \
CONFIG.ENC_MEM_BRAM_USED {0} \
CONFIG.ENC_MEM_URAM_USED {3420} \
CONFIG.ENC_VIDEO_STANDARD {0} \
CONFIG.MCU_CLK {444} \
CONFIG.MCU_DEBUG {0} \
CONFIG.PLL_BYPASS {0} \
CONFIG.TABLE_NO {1} \
CONFIG.WPP_EN {0} \
 ] $vcu_0

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.AXI_DEC_BASE0.VALUE_SRC {DEFAULT} \
CONFIG.AXI_DEC_BASE1.VALUE_SRC {DEFAULT} \
CONFIG.AXI_DEC_RANGE0.VALUE_SRC {DEFAULT} \
CONFIG.AXI_DEC_RANGE1.VALUE_SRC {DEFAULT} \
CONFIG.AXI_ENC_BASE0.VALUE_SRC {DEFAULT} \
CONFIG.AXI_ENC_BASE1.VALUE_SRC {DEFAULT} \
CONFIG.AXI_ENC_RANGE0.VALUE_SRC {DEFAULT} \
CONFIG.AXI_ENC_RANGE1.VALUE_SRC {DEFAULT} \
CONFIG.AXI_MCU_BASE.VALUE_SRC {DEFAULT} \
CONFIG.AXI_MCU_RANGE.VALUE_SRC {DEFAULT} \
CONFIG.CORE_CLK.VALUE_SRC {DEFAULT} \
CONFIG.DEC_VIDEO_STANDARD.VALUE_SRC {DEFAULT} \
CONFIG.ENABLE_DECODER.VALUE_SRC {DEFAULT} \
CONFIG.ENABLE_ENCODER.VALUE_SRC {DEFAULT} \
CONFIG.ENC_BUFFER_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.ENC_COLOR_DEPTH.VALUE_SRC {DEFAULT} \
CONFIG.ENC_COLOR_FORMAT.VALUE_SRC {DEFAULT} \
CONFIG.ENC_MEM_BRAM_USED.VALUE_SRC {DEFAULT} \
CONFIG.ENC_VIDEO_STANDARD.VALUE_SRC {DEFAULT} \
CONFIG.MCU_CLK.VALUE_SRC {DEFAULT} \
CONFIG.MCU_DEBUG.VALUE_SRC {DEFAULT} \
CONFIG.WPP_EN.VALUE_SRC {DEFAULT} \
 ] $vcu_0
 
  # Create instance: zynq_ultra_ps_e_0, and set properties 

  set_property -dict [ list \
CONFIG.PSU_DDR_RAM_HIGHADDR {0x3FFFFFFF} \
CONFIG.PSU_DDR_RAM_HIGHADDR_OFFSET {0x00000002} \
CONFIG.PSU_DDR_RAM_LOWADDR_OFFSET {0x40000000} \
CONFIG.PSU__USE__IRQ0 {1} \
CONFIG.PSU__USE__M_AXI_GP0 {1} \
CONFIG.PSU__USE__M_AXI_GP2 {0} \
CONFIG.PSU__USE__S_AXI_GP0 {1} \
CONFIG.PSU__USE__S_AXI_GP1 {1} \
CONFIG.PSU__USE__S_AXI_GP3 {1} \
CONFIG.PSU__USE__S_AXI_GP4 {1} \
CONFIG.PSU__USE__S_AXI_GP6 {1} \
CONFIG.PSU__HIGH_ADDRESS__ENABLE {1} \
CONFIG.PSU__CRL_APB__PL0_REF_CTRL__ACT_FREQMHZ {166.664998} \
CONFIG.PSU__CRL_APB__PL0_REF_CTRL__DIVISOR0 {3} \
CONFIG.PSU__CRL_APB__PL0_REF_CTRL__DIVISOR1 {3} \
CONFIG.PSU__CRL_APB__PL0_REF_CTRL__FREQMHZ {200} \
CONFIG.PSU__CRL_APB__PL0_REF_CTRL__SRCSEL {IOPLL} \
 ] [get_bd_cells zynq_ultra_ps_e_0]	 
 
  # Create interface connections
  connect_bd_intf_net -intf_net CLK_IN_D_1 [get_bd_intf_ports vcu_pll_ref_clk] [get_bd_intf_pins util_ds_buf_0/CLK_IN_D]
  connect_bd_intf_net -intf_net DEC_to_PS_M00_AXI [get_bd_intf_pins DEC0_to_PS/M00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/S_AXI_HP1_FPD]
  connect_bd_intf_net -intf_net MCU_to_PS_M00_AXI [get_bd_intf_pins MCU_to_PS/M00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/S_AXI_LPD]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins PS_to_VCU/S00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/M_AXI_HPM0_FPD]
  connect_bd_intf_net -intf_net S00_AXI_2 [get_bd_intf_pins ENC1_to_PS/S00_AXI] [get_bd_intf_pins vcu_0/M_AXI_ENC1]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins ENC1_to_PS/M00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/S_AXI_HPC1_FPD]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins ENC0_TO_PS/M00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/S_AXI_HPC0_FPD]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI1 [get_bd_intf_pins DEC1_to_PS/M00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/S_AXI_HP2_FPD]
  connect_bd_intf_net -intf_net ps8_0_axi_periph_M00_AXI [get_bd_intf_pins PS_to_VCU/M00_AXI] [get_bd_intf_pins vcu_0/S_AXI_LITE]
  connect_bd_intf_net -intf_net vcu_0_M_AXI_DEC0 [get_bd_intf_pins DEC0_to_PS/S00_AXI] [get_bd_intf_pins vcu_0/M_AXI_DEC0]
  connect_bd_intf_net -intf_net vcu_0_M_AXI_DEC1 [get_bd_intf_pins DEC1_to_PS/S00_AXI] [get_bd_intf_pins vcu_0/M_AXI_DEC1]
  connect_bd_intf_net -intf_net vcu_0_M_AXI_ENC0 [get_bd_intf_pins ENC0_TO_PS/S00_AXI] [get_bd_intf_pins vcu_0/M_AXI_ENC0]
  connect_bd_intf_net -intf_net vcu_0_M_AXI_MCU [get_bd_intf_pins MCU_to_PS/S00_AXI] [get_bd_intf_pins vcu_0/M_AXI_MCU]

  # Create port connections
  connect_bd_net -net ARESETN_1 [get_bd_pins PS_to_VCU/ARESETN] [get_bd_pins proc_sys_reset_0/interconnect_aresetn]
  connect_bd_net -net S00_ARESETN_1 [get_bd_pins PS_to_VCU/M00_ARESETN] [get_bd_pins PS_to_VCU/S00_ARESETN] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
  connect_bd_net -net clk_wiz_0_AXI_LITE [get_bd_pins PS_to_VCU/ACLK] [get_bd_pins PS_to_VCU/M00_ACLK] [get_bd_pins PS_to_VCU/S00_ACLK] [get_bd_pins clk_wiz_0/AXI_LITE] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins vcu_0/s_axi_lite_aclk] [get_bd_pins zynq_ultra_ps_e_0/maxihpm0_fpd_aclk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins clk_wiz_0/locked] [get_bd_pins rst_ps8_0_100M/dcm_locked]
  connect_bd_net -net clk_wiz_1_PLL [get_bd_pins clk_wiz_1/PLL] [get_bd_pins vcu_0/pll_ref_clk]
  connect_bd_net -net rst_ps8_0_100M_interconnect_aresetn [get_bd_pins DEC0_to_PS/ARESETN] [get_bd_pins DEC1_to_PS/ARESETN] [get_bd_pins ENC0_TO_PS/ARESETN] [get_bd_pins ENC1_to_PS/ARESETN] [get_bd_pins MCU_to_PS/ARESETN] [get_bd_pins rst_ps8_0_100M/interconnect_aresetn]
  connect_bd_net -net rst_ps8_0_100M_peripheral_aresetn [get_bd_pins DEC0_to_PS/M00_ARESETN] [get_bd_pins DEC0_to_PS/S00_ARESETN] [get_bd_pins DEC1_to_PS/M00_ARESETN] [get_bd_pins DEC1_to_PS/S00_ARESETN] [get_bd_pins ENC0_TO_PS/M00_ARESETN] [get_bd_pins ENC0_TO_PS/S00_ARESETN] [get_bd_pins ENC1_to_PS/M00_ARESETN] [get_bd_pins ENC1_to_PS/S00_ARESETN] [get_bd_pins MCU_to_PS/M00_ARESETN] [get_bd_pins MCU_to_PS/S00_ARESETN] [get_bd_pins rst_ps8_0_100M/peripheral_aresetn] [get_bd_pins vcu_0/vcu_resetn]
  connect_bd_net -net util_ds_buf_0_IBUF_OUT [get_bd_pins util_ds_buf_0/IBUF_OUT] [get_bd_pins util_ds_buf_1/BUFG_I]
  connect_bd_net -net util_ds_buf_1_BUFG_O [get_bd_pins clk_wiz_1/clk_in1] [get_bd_pins util_ds_buf_1/BUFG_O]
  connect_bd_net -net vcu_0_vcu_host_interrupt [get_bd_pins vcu_0/vcu_host_interrupt] [get_bd_pins zynq_ultra_ps_e_0/pl_ps_irq0]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins DEC0_to_PS/ACLK] [get_bd_pins DEC0_to_PS/M00_ACLK] [get_bd_pins DEC0_to_PS/S00_ACLK] [get_bd_pins DEC1_to_PS/ACLK] [get_bd_pins DEC1_to_PS/M00_ACLK] [get_bd_pins DEC1_to_PS/S00_ACLK] [get_bd_pins ENC0_TO_PS/ACLK] [get_bd_pins ENC0_TO_PS/M00_ACLK] [get_bd_pins ENC0_TO_PS/S00_ACLK] [get_bd_pins ENC1_to_PS/ACLK] [get_bd_pins ENC1_to_PS/M00_ACLK] [get_bd_pins ENC1_to_PS/S00_ACLK] [get_bd_pins MCU_to_PS/ACLK] [get_bd_pins MCU_to_PS/M00_ACLK] [get_bd_pins MCU_to_PS/S00_ACLK] [get_bd_pins clk_wiz_0/clk_in1] [get_bd_pins rst_ps8_0_100M/slowest_sync_clk] [get_bd_pins vcu_0/m_axi_dec_aclk] [get_bd_pins vcu_0/m_axi_enc_aclk] [get_bd_pins vcu_0/m_axi_mcu_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk0] [get_bd_pins zynq_ultra_ps_e_0/saxi_lpd_aclk] [get_bd_pins zynq_ultra_ps_e_0/saxihp1_fpd_aclk] [get_bd_pins zynq_ultra_ps_e_0/saxihp2_fpd_aclk] [get_bd_pins zynq_ultra_ps_e_0/saxihpc0_fpd_aclk] [get_bd_pins zynq_ultra_ps_e_0/saxihpc1_fpd_aclk]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_resetn0 [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins rst_ps8_0_100M/ext_reset_in] [get_bd_pins zynq_ultra_ps_e_0/pl_resetn0]

  # Create address segments
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces vcu_0/DecData] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP3/HP1_DDR_LOW] SEG_zynq_ultra_ps_e_0_HP1_DDR_LOW
  create_bd_addr_seg -range 0x00800000 -offset 0xFF000000 [get_bd_addr_spaces vcu_0/DecData] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP3/HP1_LPS_OCM] SEG_zynq_ultra_ps_e_0_HP1_LPS_OCM
  create_bd_addr_seg -range 0x20000000 -offset 0x20000000 [get_bd_addr_spaces vcu_0/DecData] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP4/HP2_DDR_LOW] SEG_zynq_ultra_ps_e_0_HP2_DDR_LOW
  create_bd_addr_seg -range 0x00800000 -offset 0xFF800000 [get_bd_addr_spaces vcu_0/DecData] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP4/HP2_LPS_OCM] SEG_zynq_ultra_ps_e_0_HP2_LPS_OCM
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces vcu_0/EncData] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP0/HPC0_DDR_LOW] SEG_zynq_ultra_ps_e_0_HPC0_DDR_LOW
  create_bd_addr_seg -range 0x00800000 -offset 0xFF000000 [get_bd_addr_spaces vcu_0/EncData] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP0/HPC0_LPS_OCM] SEG_zynq_ultra_ps_e_0_HPC0_LPS_OCM
  create_bd_addr_seg -range 0x20000000 -offset 0x20000000 [get_bd_addr_spaces vcu_0/EncData] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP1/HPC1_DDR_LOW] SEG_zynq_ultra_ps_e_0_HPC1_DDR_LOW
  create_bd_addr_seg -range 0x00800000 -offset 0xFF800000 [get_bd_addr_spaces vcu_0/EncData] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP1/HPC1_LPS_OCM] SEG_zynq_ultra_ps_e_0_HPC1_LPS_OCM
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces vcu_0/Code] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP6/LPD_DDR_LOW] SEG_zynq_ultra_ps_e_0_LPD_DDR_LOW
  create_bd_addr_seg -range 0x01000000 -offset 0xFF000000 [get_bd_addr_spaces vcu_0/Code] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP6/LPD_LPS_OCM] SEG_zynq_ultra_ps_e_0_LPD_LPS_OCM
  create_bd_addr_seg -range 0x00100000 -offset 0xA0000000 [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs vcu_0/S_AXI_LITE/Reg] SEG_vcu_0_Reg

  save_bd_design