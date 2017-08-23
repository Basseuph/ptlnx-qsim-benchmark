set_property -dict [list \
CONFIG.PSU__DDRC__VREF {0} \
CONFIG.PSU__DDRC__ECC {Disabled} \
CONFIG.PSU__DDRC__BUS_WIDTH {32 Bit} \
CONFIG.PSU__DDRC__DRAM_WIDTH {32 Bits} \
CONFIG.PSU__DDRC__MEMORY_TYPE {LPDDR 4} \
CONFIG.PSU__DDRC__SPEED_BIN {LPDDR4_2133} \
CONFIG.PSU__DDRC__FREQ_MHZ {1066} \
CONFIG.PSU__DDRC__DEVICE_CAPACITY {4096 MBits} \
CONFIG.PSU__DDRC__RANK_ADDR_COUNT {1} \
CONFIG.PSU__DDRC__BANK_ADDR_COUNT {3} \
CONFIG.PSU__DDRC__ROW_ADDR_COUNT {15} \
CONFIG.PSU__DDRC__COL_ADDR_COUNT {10} \
CONFIG.PSU__DDRC__EN_2ND_CLK {0} \
CONFIG.PSU__DDRC__T_RCD {20} \
CONFIG.PSU__DDRC__T_RP {23} \
CONFIG.PSU__DDRC__AL {0} \
CONFIG.PSU__DDRC__T_RC {64} \
CONFIG.PSU__DDRC__T_RAS_MIN {42} \
CONFIG.PSU__DDRC__T_FAW {40} \
CONFIG.PSU__DDRC__ADDR_MIRROR {1} \
CONFIG.PSU__DDRC__STATIC_RD_MODE {0} \
CONFIG.PSU__DDRC__TRAIN_DATA_EYE {1} \
CONFIG.PSU__DDRC__TRAIN_READ_GATE {1} \
CONFIG.PSU__DDRC__TRAIN_WRITE_LEVEL {1} \
CONFIG.PSU__DDRC__DM_DBI {DM_NO_DBI} \
] [get_bd_cells zynq_ultra_ps_e_0]

set_property -dict [list \
CONFIG.PSU__OVERRIDE__BASIC_CLOCK {1} \
CONFIG.PSU__CRF_APB__DPLL_CTRL__DIV2 {1} \
CONFIG.PSU__CRF_APB__DPLL_CTRL__FBDIV {64} \
CONFIG.PSU__CRF_APB__DPLL_TO_LPD_CTRL__DIVISOR0 {3} \
CONFIG.PSU__CRF_APB__DDR_CTRL__SRCSEL {DPLL} \
CONFIG.PSU__CRF_APB__DDR_CTRL__DIVISOR0 {2} \
] [get_bd_cells zynq_ultra_ps_e_0]

save_bd_design