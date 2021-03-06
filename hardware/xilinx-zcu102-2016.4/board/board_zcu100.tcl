create_project project_1 . -part $::part

# Make sure project was created
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}

# Set design name
set design_name design_1

# Create block diagram design and set as current design
create_bd_design $design_name
current_bd_design $design_name

# Set current bd instance as root of current design
set parentCell [get_bd_cells /]
set parentObj [get_bd_cells $parentCell]
current_bd_instance $parentObj

# Create instance: zynq_ultra_ps_e_0, and set properties
set zynq_ultra_ps_e_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e zynq_ultra_ps_e_0 ]

# Keep QSPI__GRP_FBCLK__ENABLE 1 because ZCU100 has MIO[6] NC like ZCU102
# Not sure what to select for slot type for SD1

set_property -dict [ list \
CONFIG.PSU__USE__M_AXI_GP2 {0} \
CONFIG.PSU__GPIO0_MIO__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__GPIO0_MIO__IO {MIO 0 .. 25} \
CONFIG.PSU__GPIO1_MIO__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__GPIO1_MIO__IO {MIO 26 .. 51} \
CONFIG.PSU__GPIO2_MIO__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__GPIO2_MIO__IO {MIO 52 .. 77} \
CONFIG.PSU__QSPI__GRP_FBCLK__ENABLE {1} \
CONFIG.PSU__QSPI__GRP_FBCLK__IO {MIO 6} \
CONFIG.PSU__QSPI__PERIPHERAL__DATA_MODE {x4} \
CONFIG.PSU__QSPI__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__QSPI__PERIPHERAL__IO {MIO 0 .. 5} \
CONFIG.PSU__QSPI__PERIPHERAL__MODE {Single} \
CONFIG.PSU__UART1__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__UART1__PERIPHERAL__IO {MIO 8 .. 9} \
CONFIG.PSU__I2C0__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__I2C0__PERIPHERAL__IO {MIO 10 .. 11} \
CONFIG.PSU__SD0__GRP_CD__ENABLE {1} \
CONFIG.PSU__SD0__GRP_CD__IO {MIO 24} \
CONFIG.PSU__SD0__GRP_POW__ENABLE {0} \
CONFIG.PSU__SD0__GRP_WP__ENABLE {0} \
CONFIG.PSU__SD0__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__SD0__PERIPHERAL__IO {MIO 13 .. 16 21 22} \
CONFIG.PSU__SD0__RESET__ENABLE {0} \
CONFIG.PSU__SD0__SLOT_TYPE {SD 2.0} \
CONFIG.PSU__SD1__DATA_TRANSFER_MODE {4Bit} \
CONFIG.PSU__SD1__GRP_CD__ENABLE {0} \
CONFIG.PSU__SD1__GRP_POW__ENABLE {0} \
CONFIG.PSU__SD1__GRP_WP__ENABLE {0} \
CONFIG.PSU__SD1__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__SD1__PERIPHERAL__IO {MIO 46 .. 51} \
CONFIG.PSU__SD1__RESET__ENABLE {0} \
CONFIG.PSU__SD1__SLOT_TYPE {SD 2.0} \
CONFIG.PSU__PMU__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__PMU__GPI0__ENABLE {0} \
CONFIG.PSU__PMU__GPI1__ENABLE {0} \
CONFIG.PSU__PMU__GPI2__ENABLE {0} \
CONFIG.PSU__PMU__GPI3__ENABLE {0} \
CONFIG.PSU__PMU__GPI4__ENABLE {0} \
CONFIG.PSU__PMU__GPI5__ENABLE {0} \
CONFIG.PSU__PMU__GPO0__ENABLE {1} \
CONFIG.PSU__PMU__GPO0__IO {MIO 32} \
CONFIG.PSU__PMU__GPO1__ENABLE {1} \
CONFIG.PSU__PMU__GPO1__IO {MIO 33} \
CONFIG.PSU__PMU__GPO2__ENABLE {0} \
CONFIG.PSU__PMU__GPO3__ENABLE {0} \
CONFIG.PSU__PMU__GPO4__ENABLE {0} \
CONFIG.PSU__PMU__GPO5__ENABLE {0} \
CONFIG.PSU__DISPLAYPORT__LANE0__ENABLE {1} \
CONFIG.PSU__DISPLAYPORT__LANE0__IO {GT Lane1} \
CONFIG.PSU__DISPLAYPORT__LANE1__ENABLE {1} \
CONFIG.PSU__DISPLAYPORT__LANE1__IO {GT Lane0} \
CONFIG.PSU__DISPLAYPORT__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__DPAUX__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__DPAUX__PERIPHERAL__IO {MIO 34 .. 37} \
CONFIG.PSU__DP__LANE_SEL {Dual Lower} \
CONFIG.PSU__DP__REF_CLK_FREQ {27} \
CONFIG.PSU__DP__REF_CLK_SEL {Ref Clk2} \
CONFIG.PSU__SPI0__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__SPI0__PERIPHERAL__IO {MIO 38 .. 43} \
CONFIG.PSU__SPI0__GRP_SS0__ENABLE {1} \
CONFIG.PSU__SPI0__GRP_SS0__IO {MIO 41} \
CONFIG.PSU__SPI0__GRP_SS1__ENABLE {1} \
CONFIG.PSU__SPI0__GRP_SS1__IO {MIO 40} \
CONFIG.PSU__USB0__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__USB0__PERIPHERAL__IO {MIO 52 .. 63} \
CONFIG.PSU__USB0__REF_CLK_FREQ {26} \
CONFIG.PSU__USB0__REF_CLK_SEL {Ref Clk3} \
CONFIG.PSU__USB1__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__USB1__PERIPHERAL__IO {MIO 64 .. 75} \
CONFIG.PSU__USB1__REF_CLK_FREQ {26} \
CONFIG.PSU__USB1__REF_CLK_SEL {Ref Clk3} \
CONFIG.PSU__USB2_0__EMIO__ENABLE {0} \
CONFIG.PSU__USB2_1__EMIO__ENABLE {0} \
CONFIG.PSU__USB3_0__EMIO__ENABLE {0} \
CONFIG.PSU__USB3_0__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__USB3_0__PERIPHERAL__IO {GT Lane2} \
CONFIG.PSU__USB3_1__EMIO__ENABLE {0} \
CONFIG.PSU__USB3_1__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__USB3_1__PERIPHERAL__IO {GT Lane3} \
] $zynq_ultra_ps_e_0

save_bd_design
