##############################################################################
## Filename:          /home/vivric/workspace/gsm_sim_lab/gsm_sim_v_1_0_fifo/drivers/sc_uart_v1_00_a/data/sc_uart_v2_1_0.tcl
## Description:       Microprocess Driver Command (tcl)
## Date:              Tue May 20 20:47:47 2014 (by Create and Import Peripheral Wizard)
##############################################################################

#uses "xillib.tcl"

proc generate {drv_handle} {
  xdefine_include_file $drv_handle "xparameters.h" "sc_uart" "NUM_INSTANCES" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" 
}
