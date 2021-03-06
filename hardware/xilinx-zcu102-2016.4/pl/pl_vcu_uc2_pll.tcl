import_files -fileset constrs_1 {../xdc/vcu_uc2_pll.xdc }

#set_property ip_repo_paths ../ip/vcu_v1_0/ [current_project]
#update_ip_catalog

  # Create interface ports
  set C0_DDR4 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 C0_DDR4 ]
  set C0_SYS_CLK [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 C0_SYS_CLK ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {125000000} \
 ] $C0_SYS_CLK
  set dp_clk [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 dp_clk ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {148500149} \
 ] $dp_clk

  # Create ports
  set C0_SYS_CLK [ create_bd_port -dir I -type clk C0_SYS_CLK ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {125000000} \
 ] $C0_SYS_CLK

  # Create instance: ENC0_to_PS, and set properties
  set ENC0_to_PS [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect: ENC0_to_PS ]
  set_property -dict [ list \
CONFIG.M00_HAS_REGSLICE {4} \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {1} \
CONFIG.S00_HAS_REGSLICE {4} \
CONFIG.S01_HAS_REGSLICE {4} \
 ] $ENC0_to_PS

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
CONFIG.NUM_SI {1} \
CONFIG.S00_HAS_REGSLICE {4} \
 ] $MCU_to_PS

  # Create instance: PS_to_GPIO, and set properties
  set PS_to_GPIO [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect: PS_to_GPIO ]
  set_property -dict [ list \
CONFIG.M00_HAS_REGSLICE {4} \
CONFIG.M01_HAS_REGSLICE {4} \
CONFIG.NUM_MI {1} \
CONFIG.S00_HAS_REGSLICE {4} \
 ] $PS_to_GPIO

  # Create instance: PS_to_VCU, and set properties
  set PS_to_VCU [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect: PS_to_VCU ]
  set_property -dict [ list \
CONFIG.NUM_MI {2} \
CONFIG.S00_HAS_REGSLICE {4} \
 ] $PS_to_VCU

  # Create instance: VCU_to_MIG, and set properties
  set VCU_to_MIG [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect: VCU_to_MIG ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {2} \
CONFIG.S00_HAS_REGSLICE {4} \
 ] $VCU_to_MIG

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio: axi_gpio_0 ]

  # Create instance: axi_gpio_1, and set properties
  set axi_gpio_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio: axi_gpio_1 ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS_2 {1} \
CONFIG.C_ALL_OUTPUTS {1} \
CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_1

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz: clk_wiz_0 ]
  set_property -dict [ list \
CONFIG.AXI_DRP {false} \
CONFIG.CLKIN1_JITTER_PS {59.88} \
CONFIG.CLKOUT1_DRIVES {Buffer} \
CONFIG.CLKOUT1_JITTER {112.086} \
CONFIG.CLKOUT1_PHASE_ERROR {150.029} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {125} \
CONFIG.CLKOUT2_DRIVES {Buffer} \
CONFIG.CLKOUT2_JITTER {88.896} \
CONFIG.CLKOUT2_PHASE_ERROR {89.971} \
CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {100.000} \
CONFIG.CLKOUT2_USED {false} \
CONFIG.CLKOUT3_DRIVES {Buffer} \
CONFIG.CLKOUT3_JITTER {107.523} \
CONFIG.CLKOUT3_PHASE_ERROR {89.971} \
CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {100.000} \
CONFIG.CLKOUT3_USED {false} \
CONFIG.CLKOUT4_DRIVES {Buffer} \
CONFIG.CLKOUT5_DRIVES {Buffer} \
CONFIG.CLKOUT6_DRIVES {Buffer} \
CONFIG.CLKOUT7_DRIVES {Buffer} \
CONFIG.CLK_OUT1_PORT {AXI_LITE} \
CONFIG.CLK_OUT2_PORT {clk_out2} \
CONFIG.CLK_OUT3_PORT {clk_out3} \
CONFIG.MMCM_CLKFBOUT_MULT_F {47.250} \
CONFIG.MMCM_CLKIN1_PERIOD {5.988} \
CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {12.625} \
CONFIG.MMCM_CLKOUT1_DIVIDE {1} \
CONFIG.MMCM_CLKOUT2_DIVIDE {1} \
CONFIG.MMCM_DIVCLK_DIVIDE {5} \
CONFIG.NUM_OUT_CLKS {1} \
CONFIG.PHASESHIFT_MODE {LATENCY} \
CONFIG.PHASE_DUTY_CONFIG {false} \
CONFIG.USE_DYN_RECONFIG {false} \
CONFIG.USE_LOCKED {true} \
CONFIG.USE_RESET {false} \
 ] $clk_wiz_0

  # Create instance: clk_wiz_1, and set properties
  set clk_wiz_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz: clk_wiz_1 ]
  set_property -dict [ list \
CONFIG.CLKIN1_JITTER_PS {303.03000000000003} \
CONFIG.CLKOUT1_DRIVES {Buffer} \
CONFIG.CLKOUT1_JITTER {196.704} \
CONFIG.CLKOUT1_PHASE_ERROR {170.863} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {33.33} \
CONFIG.CLKOUT2_DRIVES {Buffer} \
CONFIG.CLKOUT3_DRIVES {Buffer} \
CONFIG.CLKOUT4_DRIVES {Buffer} \
CONFIG.CLKOUT5_DRIVES {Buffer} \
CONFIG.CLKOUT6_DRIVES {Buffer} \
CONFIG.CLKOUT7_DRIVES {Buffer} \
CONFIG.CLK_OUT1_PORT {PLL} \
CONFIG.MMCM_CLKFBOUT_MULT_F {37.875} \
CONFIG.MMCM_CLKIN1_PERIOD {30.303} \
CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {37.500} \
CONFIG.MMCM_DIVCLK_DIVIDE {1} \
CONFIG.PHASESHIFT_MODE {LATENCY} \
CONFIG.USE_LOCKED {false} \
CONFIG.USE_RESET {false} \
 ] $clk_wiz_1

  # Create instance: ddr4_1, and set properties
  set ddr4_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ddr4: ddr4_1 ]
  set_property -dict [ list \
CONFIG.ADDN_UI_CLKOUT1_FREQ_HZ {33} \
CONFIG.C0.ADDR_WIDTH {17} \
CONFIG.C0.BANK_GROUP_WIDTH {1} \
CONFIG.C0.CKE_WIDTH {1} \
CONFIG.C0.CK_WIDTH {1} \
CONFIG.C0.CS_WIDTH {1} \
CONFIG.C0.ControllerType {DDR4_SDRAM} \
CONFIG.C0.DDR4_AxiAddressWidth {31} \
CONFIG.C0.DDR4_AxiDataWidth {512} \
CONFIG.C0.DDR4_AxiSelection {true} \
CONFIG.C0.DDR4_CLKFBOUT_MULT {12} \
CONFIG.C0.DDR4_CLKOUT0_DIVIDE {5} \
CONFIG.C0.DDR4_CasLatency {17} \
CONFIG.C0.DDR4_CasWriteLatency {12} \
CONFIG.C0.DDR4_DataMask {DM_NO_DBI} \
CONFIG.C0.DDR4_DataWidth {64} \
CONFIG.C0.DDR4_InputClockPeriod {7997} \
CONFIG.C0.DDR4_MemoryPart {MT40A256M16GE-075E} \
CONFIG.C0.DDR4_OnDieTermination {RZQ/6} \
CONFIG.C0.DDR4_TimePeriod {833} \
CONFIG.C0.LR_WIDTH {1} \
CONFIG.C0.ODT_WIDTH {1} \
CONFIG.No_Controller {1} \
CONFIG.PING_PONG_PHY {1} \
 ] $ddr4_1

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.C0.ADDR_WIDTH.VALUE_SRC {DEFAULT} \
CONFIG.C0.CKE_WIDTH.VALUE_SRC {DEFAULT} \
CONFIG.C0.CK_WIDTH.VALUE_SRC {DEFAULT} \
CONFIG.C0.CS_WIDTH.VALUE_SRC {DEFAULT} \
CONFIG.C0.ControllerType.VALUE_SRC {DEFAULT} \
CONFIG.C0.DDR4_AxiSelection.VALUE_SRC {DEFAULT} \
CONFIG.C0.DDR4_CLKFBOUT_MULT.VALUE_SRC {DEFAULT} \
CONFIG.C0.DDR4_CLKOUT0_DIVIDE.VALUE_SRC {DEFAULT} \
CONFIG.C0.DDR4_CasLatency.VALUE_SRC {DEFAULT} \
CONFIG.C0.DDR4_CasWriteLatency.VALUE_SRC {DEFAULT} \
CONFIG.C0.DDR4_DataMask.VALUE_SRC {DEFAULT} \
CONFIG.C0.DDR4_OnDieTermination.VALUE_SRC {DEFAULT} \
CONFIG.C0.DDR4_TimePeriod.VALUE_SRC {DEFAULT} \
CONFIG.C0.LR_WIDTH.VALUE_SRC {DEFAULT} \
CONFIG.C0.ODT_WIDTH.VALUE_SRC {DEFAULT} \
CONFIG.No_Controller.VALUE_SRC {DEFAULT} \
CONFIG.PING_PONG_PHY.VALUE_SRC {DEFAULT} \
 ] $ddr4_1

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset: proc_sys_reset_0 ]

  # Create instance: rst_ps8_0_100M, and set properties
  set rst_ps8_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset: rst_ps8_0_100M ]

  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf: util_ds_buf_0 ]
  set_property -dict [ list \
CONFIG.C_BUF_TYPE {IBUFDSGTE} \
 ] $util_ds_buf_0

  # Create instance: util_ds_buf_1, and set properties
  set util_ds_buf_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf: util_ds_buf_1 ]
  set_property -dict [ list \
CONFIG.C_BUF_TYPE {BUFG_GT} \
 ] $util_ds_buf_1

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic: util_vector_logic_0 ]
  set_property -dict [ list \
CONFIG.C_OPERATION {not} \
CONFIG.C_SIZE {1} \
CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic: util_vector_logic_2 ]
  set_property -dict [ list \
CONFIG.C_OPERATION {not} \
CONFIG.C_SIZE {1} \
CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_2

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

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant: xlconstant_0 ]
 
  # Create instance: zynq_ultra_ps_e_0, and set properties 

  set_property -dict [ list \
CONFIG.PSU_DDR_RAM_HIGHADDR {0xFFFFFFFF} \
CONFIG.PSU_DDR_RAM_HIGHADDR_OFFSET {0x80000000} \
CONFIG.PSU__USE__IRQ0 {1} \
CONFIG.PSU__USE__M_AXI_GP0 {1} \
CONFIG.PSU__USE__M_AXI_GP1 {1} \
CONFIG.PSU__USE__M_AXI_GP2 {0} \
CONFIG.PSU__USE__S_AXI_GP0 {1} \
CONFIG.PSU__USE__S_AXI_GP1 {1} \
CONFIG.PSU__USE__S_AXI_GP2 {0} \
CONFIG.PSU__USE__S_AXI_GP3 {1} \
CONFIG.PSU__USE__S_AXI_GP4 {0} \
CONFIG.PSU__USE__S_AXI_GP6 {0} \
CONFIG.PSU__USE__VIDEO {1} \
CONFIG.PSU__DDRC__COMPONENTS {UDIMM} \
CONFIG.PSU__CRL_APB__PL0_REF_CTRL__DIVISOR0 {6} \
CONFIG.PSU__CRL_APB__PL0_REF_CTRL__DIVISOR1 {1} \
CONFIG.PSU__CRL_APB__PL0_REF_CTRL__FREQMHZ {167} \
CONFIG.PSU__CRL_APB__PL0_REF_CTRL__SRCSEL {RPLL} \
 ] [get_bd_cells zynq_ultra_ps_e_0]	 

set_property -dict [list CONFIG.PSU__HIGH_ADDRESS__ENABLE {1}] [get_bd_cells zynq_ultra_ps_e_0]	 
 
   # Create interface connections
  connect_bd_intf_net -intf_net C0_SYS_CLK_1 [get_bd_intf_ports C0_SYS_CLK] [get_bd_intf_pins ddr4_1/C0_SYS_CLK]
  connect_bd_intf_net -intf_net CLK_IN_D_1 [get_bd_intf_ports dp_clk] [get_bd_intf_pins util_ds_buf_0/CLK_IN_D]
  connect_bd_intf_net -intf_net DEC_to_PS_M00_AXI [get_bd_intf_pins MCU_to_PS/M00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/S_AXI_HP1_FPD]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins VCU_to_MIG/S00_AXI] [get_bd_intf_pins vcu_0/M_AXI_DEC0]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins PS_to_GPIO/M00_AXI] [get_bd_intf_pins axi_gpio_0/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI1 [get_bd_intf_pins ENC1_to_PS/M00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/S_AXI_HPC1_FPD]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins ENC0_to_PS/M00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/S_AXI_HPC0_FPD]
  connect_bd_intf_net -intf_net axi_interconnect_3_M00_AXI [get_bd_intf_pins VCU_to_MIG/M00_AXI] [get_bd_intf_pins ddr4_1/C0_DDR4_S_AXI]
  connect_bd_intf_net -intf_net ddr4_1_C0_DDR4 [get_bd_intf_ports C0_DDR4] [get_bd_intf_pins ddr4_1/C0_DDR4]
  connect_bd_intf_net -intf_net ps8_0_axi_periph_M00_AXI [get_bd_intf_pins PS_to_VCU/M00_AXI] [get_bd_intf_pins vcu_0/S_AXI_LITE]
  connect_bd_intf_net -intf_net ps8_0_axi_periph_M01_AXI [get_bd_intf_pins PS_to_VCU/M01_AXI] [get_bd_intf_pins axi_gpio_1/S_AXI]
  connect_bd_intf_net -intf_net vcu_0_M_AXI_DEC1 [get_bd_intf_pins VCU_to_MIG/S01_AXI] [get_bd_intf_pins vcu_0/M_AXI_DEC1]
  connect_bd_intf_net -intf_net vcu_0_M_AXI_ENC0 [get_bd_intf_pins ENC0_to_PS/S00_AXI] [get_bd_intf_pins vcu_0/M_AXI_ENC0]
  connect_bd_intf_net -intf_net vcu_0_M_AXI_ENC1 [get_bd_intf_pins ENC1_to_PS/S00_AXI] [get_bd_intf_pins vcu_0/M_AXI_ENC1]
  connect_bd_intf_net -intf_net vcu_0_M_AXI_MCU [get_bd_intf_pins MCU_to_PS/S00_AXI] [get_bd_intf_pins vcu_0/M_AXI_MCU]
  connect_bd_intf_net -intf_net zynq_ultra_ps_e_0_M_AXI_HPM0_FPD [get_bd_intf_pins PS_to_VCU/S00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/M_AXI_HPM0_FPD]
  connect_bd_intf_net -intf_net zynq_ultra_ps_e_0_M_AXI_HPM1_FPD [get_bd_intf_pins PS_to_GPIO/S00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/M_AXI_HPM1_FPD]

  # Create port connections
  connect_bd_net -net M00_ARESETN_1 [get_bd_pins VCU_to_MIG/M00_ARESETN] [get_bd_pins util_vector_logic_2/Res]
  connect_bd_net -net axi_gpio_1_gpio_io_o [get_bd_pins axi_gpio_1/gpio2_io_i] [get_bd_pins axi_gpio_1/gpio_io_o]
  connect_bd_net -net clk_wiz_0_AXI_LITE [get_bd_pins PS_to_VCU/ACLK] [get_bd_pins PS_to_VCU/M00_ACLK] [get_bd_pins PS_to_VCU/M01_ACLK] [get_bd_pins PS_to_VCU/S00_ACLK] [get_bd_pins axi_gpio_1/s_axi_aclk] [get_bd_pins clk_wiz_0/AXI_LITE] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins vcu_0/s_axi_lite_aclk] [get_bd_pins zynq_ultra_ps_e_0/maxihpm0_fpd_aclk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins clk_wiz_0/locked] [get_bd_pins rst_ps8_0_100M/dcm_locked]
  connect_bd_net -net clk_wiz_1_PLL [get_bd_pins clk_wiz_1/PLL] [get_bd_pins vcu_0/pll_ref_clk]
  connect_bd_net -net ddr4_0_c0_ddr4_ui_clk [get_bd_pins VCU_to_MIG/M00_ACLK] [get_bd_pins ddr4_1/c0_ddr4_ui_clk]
  connect_bd_net -net ddr4_1_addn_ui_clkout1 [get_bd_pins clk_wiz_1/clk_in1] [get_bd_pins ddr4_1/addn_ui_clkout1]
  connect_bd_net -net ddr4_1_c0_ddr4_ui_clk_sync_rst [get_bd_pins ddr4_1/c0_ddr4_ui_clk_sync_rst] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net ddr4_1_c0_init_calib_complete [get_bd_pins axi_gpio_0/gpio_io_i] [get_bd_pins ddr4_1/c0_init_calib_complete]
  connect_bd_net -net proc_sys_reset_0_interconnect_aresetn [get_bd_pins PS_to_VCU/ARESETN] [get_bd_pins proc_sys_reset_0/interconnect_aresetn]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins PS_to_VCU/M00_ARESETN] [get_bd_pins PS_to_VCU/M01_ARESETN] [get_bd_pins PS_to_VCU/S00_ARESETN] [get_bd_pins axi_gpio_1/s_axi_aresetn] [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins vcu_0/vcu_resetn]
  connect_bd_net -net rst_ps8_0_100M_interconnect_aresetn [get_bd_pins ENC0_to_PS/ARESETN] [get_bd_pins ENC1_to_PS/ARESETN] [get_bd_pins MCU_to_PS/ARESETN] [get_bd_pins PS_to_GPIO/ARESETN] [get_bd_pins VCU_to_MIG/ARESETN] [get_bd_pins rst_ps8_0_100M/interconnect_aresetn]
  connect_bd_net -net rst_ps8_0_100M_peripheral_aresetn [get_bd_pins ENC0_to_PS/M00_ARESETN] [get_bd_pins ENC0_to_PS/S00_ARESETN] [get_bd_pins ENC1_to_PS/M00_ARESETN] [get_bd_pins ENC1_to_PS/S00_ARESETN] [get_bd_pins MCU_to_PS/M00_ARESETN] [get_bd_pins MCU_to_PS/S00_ARESETN] [get_bd_pins PS_to_GPIO/M00_ARESETN] [get_bd_pins PS_to_GPIO/S00_ARESETN] [get_bd_pins VCU_to_MIG/S00_ARESETN] [get_bd_pins VCU_to_MIG/S01_ARESETN] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins ddr4_1/c0_ddr4_aresetn] [get_bd_pins rst_ps8_0_100M/peripheral_aresetn]
  connect_bd_net -net util_ds_buf_0_IBUF_DS_ODIV2 [get_bd_pins util_ds_buf_0/IBUF_DS_ODIV2] [get_bd_pins util_ds_buf_1/BUFG_GT_I]
  connect_bd_net -net util_ds_buf_1_BUFG_GT_O [get_bd_pins util_ds_buf_1/BUFG_GT_O] [get_bd_pins zynq_ultra_ps_e_0/dp_video_in_clk]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins ddr4_1/sys_rst] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net vcu_0_vcu_host_interrupt [get_bd_pins vcu_0/vcu_host_interrupt] [get_bd_pins zynq_ultra_ps_e_0/pl_ps_irq0]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins util_ds_buf_1/BUFG_GT_CE] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins ENC0_to_PS/ACLK] [get_bd_pins ENC0_to_PS/M00_ACLK] [get_bd_pins ENC0_to_PS/S00_ACLK] [get_bd_pins ENC1_to_PS/ACLK] [get_bd_pins ENC1_to_PS/M00_ACLK] [get_bd_pins ENC1_to_PS/S00_ACLK] [get_bd_pins MCU_to_PS/ACLK] [get_bd_pins MCU_to_PS/M00_ACLK] [get_bd_pins MCU_to_PS/S00_ACLK] [get_bd_pins PS_to_GPIO/ACLK] [get_bd_pins PS_to_GPIO/M00_ACLK] [get_bd_pins PS_to_GPIO/S00_ACLK] [get_bd_pins VCU_to_MIG/ACLK] [get_bd_pins VCU_to_MIG/S00_ACLK] [get_bd_pins VCU_to_MIG/S01_ACLK] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins clk_wiz_0/clk_in1] [get_bd_pins rst_ps8_0_100M/slowest_sync_clk] [get_bd_pins vcu_0/m_axi_dec_aclk] [get_bd_pins vcu_0/m_axi_enc_aclk] [get_bd_pins vcu_0/m_axi_mcu_aclk] [get_bd_pins zynq_ultra_ps_e_0/maxihpm1_fpd_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk0] [get_bd_pins zynq_ultra_ps_e_0/saxihp1_fpd_aclk] [get_bd_pins zynq_ultra_ps_e_0/saxihpc0_fpd_aclk] [get_bd_pins zynq_ultra_ps_e_0/saxihpc1_fpd_aclk]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_resetn0 [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins rst_ps8_0_100M/ext_reset_in] [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins zynq_ultra_ps_e_0/pl_resetn0]

  # Create address segments
  create_bd_addr_seg -range 0x80000000 -offset 0x80000000 [get_bd_addr_spaces vcu_0/DecData] [get_bd_addr_segs ddr4_1/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_1_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x80000000 -offset 0x000800000000 [get_bd_addr_spaces vcu_0/Code] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP3/HP1_DDR_HIGH] SEG_zynq_ultra_ps_e_0_HP1_DDR_HIGH
  create_bd_addr_seg -range 0x80000000 -offset 0x00000000 [get_bd_addr_spaces vcu_0/Code] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP3/HP1_DDR_LOW] SEG_zynq_ultra_ps_e_0_HP1_DDR_LOW
  create_bd_addr_seg -range 0x01000000 -offset 0xFF000000 [get_bd_addr_spaces vcu_0/Code] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP3/HP1_LPS_OCM] SEG_zynq_ultra_ps_e_0_HP1_LPS_OCM
  create_bd_addr_seg -range 0x20000000 -offset 0xC0000000 [get_bd_addr_spaces vcu_0/Code] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP3/HP1_QSPI] SEG_zynq_ultra_ps_e_0_HP1_QSPI
  create_bd_addr_seg -range 0x40000000 -offset 0x000800000000 [get_bd_addr_spaces vcu_0/EncData] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP0/HPC0_DDR_HIGH] SEG_zynq_ultra_ps_e_0_HPC0_DDR_HIGH
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces vcu_0/EncData] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP0/HPC0_DDR_LOW] SEG_zynq_ultra_ps_e_0_HPC0_DDR_LOW
  create_bd_addr_seg -range 0x00800000 -offset 0xFF000000 [get_bd_addr_spaces vcu_0/EncData] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP0/HPC0_LPS_OCM] SEG_zynq_ultra_ps_e_0_HPC0_LPS_OCM
  create_bd_addr_seg -range 0x10000000 -offset 0xC0000000 [get_bd_addr_spaces vcu_0/EncData] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP0/HPC0_QSPI] SEG_zynq_ultra_ps_e_0_HPC0_QSPI
  create_bd_addr_seg -range 0x40000000 -offset 0x000840000000 [get_bd_addr_spaces vcu_0/EncData] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP1/HPC1_DDR_HIGH] SEG_zynq_ultra_ps_e_0_HPC1_DDR_HIGH
  create_bd_addr_seg -range 0x40000000 -offset 0x40000000 [get_bd_addr_spaces vcu_0/EncData] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP1/HPC1_DDR_LOW] SEG_zynq_ultra_ps_e_0_HPC1_DDR_LOW
  create_bd_addr_seg -range 0x00800000 -offset 0xFF800000 [get_bd_addr_spaces vcu_0/EncData] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP1/HPC1_LPS_OCM] SEG_zynq_ultra_ps_e_0_HPC1_LPS_OCM
  create_bd_addr_seg -range 0x10000000 -offset 0xD0000000 [get_bd_addr_spaces vcu_0/EncData] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP1/HPC1_QSPI] SEG_zynq_ultra_ps_e_0_HPC1_QSPI
  create_bd_addr_seg -range 0x00010000 -offset 0xB0000000 [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0xA0100000 [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_gpio_1/S_AXI/Reg] SEG_axi_gpio_1_Reg
  create_bd_addr_seg -range 0x00100000 -offset 0xA0000000 [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs vcu_0/S_AXI_LITE/Reg] SEG_vcu_0_Reg

  save_bd_design