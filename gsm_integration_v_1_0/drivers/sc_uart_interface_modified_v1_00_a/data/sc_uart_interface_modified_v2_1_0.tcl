##############################################################################
## Filename:          /home/ga38kud/vivin_gsm/gsm_sim/gsm_integration_v_1_0/drivers/sc_uart_interface_modified_v1_00_a/data/sc_uart_interface_modified_v2_1_0.tcl
## Description:       Microprocess Driver Command (tcl)
## Date:              Mon May 26 19:43:22 2014 (by Create and Import Peripheral Wizard)
##############################################################################

#uses "xillib.tcl"

proc generate {drv_handle} {
  xdefine_include_file $drv_handle "xparameters.h" "sc_uart_interface_modified" "NUM_INSTANCES" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" 
}
