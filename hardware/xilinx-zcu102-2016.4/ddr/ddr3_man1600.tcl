set_property -dict [list \
CONFIG.PSU__DDRC__BUS_WIDTH {32 Bit} \
CONFIG.PSU__DDRC__CL {11} \
CONFIG.PSU__DDRC__DEVICE_CAPACITY {4096 MBits} \
CONFIG.PSU__DDRC__DRAM_WIDTH {16 Bits} \
CONFIG.PSU__DDRC__SPEED_BIN {DDR3_1600K} \
CONFIG.PSU__DDRC__T_RCD {11} \
CONFIG.PSU__DDRC__BRC_MAPPING {ROW_BANK_COL}\
] [get_bd_cells zynq_ultra_ps_e_0]

set_property -dict [list \
CONFIG.PSU__OVERRIDE__BASIC_CLOCK {1} \
CONFIG.PSU__CRF_APB__DPLL_CTRL__DIV2 {1} \
CONFIG.PSU__CRF_APB__DPLL_CTRL__FBDIV {72} \
CONFIG.PSU__CRF_APB__DPLL_TO_LPD_CTRL__DIVISOR0 {3} \
CONFIG.PSU__CRF_APB__DDR_CTRL__SRCSEL {DPLL} \
CONFIG.PSU__CRF_APB__DDR_CTRL__DIVISOR0 {3} \
] [get_bd_cells zynq_ultra_ps_e_0]

save_bd_design

