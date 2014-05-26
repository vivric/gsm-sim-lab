#  Simulation Model Generator
#  Xilinx EDK 14.7 EDK_P.20131013
#  Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
#
#  File     DIP_Switches_8Bits_wave.tcl (Mon May 26 21:00:20 2014)
#
#  Module   system_dip_switches_8bits_wrapper
#  Instance DIP_Switches_8Bits
#  Because EDK did not create the testbench, the user
#  specifies the path to the device under test, $tbpath.
#
if { [info exists PathSeparator] } { set ps $PathSeparator } else { set ps "/" }
if { ![info exists tbpath] } { set tbpath "${ps}system" }

# wave add $tbpath${ps}DIP_Switches_8Bits${ps}S_AXI_ACLK -into $id
# wave add $tbpath${ps}DIP_Switches_8Bits${ps}S_AXI_ARESETN -into $id
# wave add $tbpath${ps}DIP_Switches_8Bits${ps}S_AXI_AWADDR -into $id
# wave add $tbpath${ps}DIP_Switches_8Bits${ps}S_AXI_AWVALID -into $id
  wave add $tbpath${ps}DIP_Switches_8Bits${ps}S_AXI_AWREADY -into $id
# wave add $tbpath${ps}DIP_Switches_8Bits${ps}S_AXI_WDATA -into $id
# wave add $tbpath${ps}DIP_Switches_8Bits${ps}S_AXI_WSTRB -into $id
# wave add $tbpath${ps}DIP_Switches_8Bits${ps}S_AXI_WVALID -into $id
  wave add $tbpath${ps}DIP_Switches_8Bits${ps}S_AXI_WREADY -into $id
  wave add $tbpath${ps}DIP_Switches_8Bits${ps}S_AXI_BRESP -into $id
  wave add $tbpath${ps}DIP_Switches_8Bits${ps}S_AXI_BVALID -into $id
# wave add $tbpath${ps}DIP_Switches_8Bits${ps}S_AXI_BREADY -into $id
# wave add $tbpath${ps}DIP_Switches_8Bits${ps}S_AXI_ARADDR -into $id
# wave add $tbpath${ps}DIP_Switches_8Bits${ps}S_AXI_ARVALID -into $id
  wave add $tbpath${ps}DIP_Switches_8Bits${ps}S_AXI_ARREADY -into $id
  wave add $tbpath${ps}DIP_Switches_8Bits${ps}S_AXI_RDATA -into $id
  wave add $tbpath${ps}DIP_Switches_8Bits${ps}S_AXI_RRESP -into $id
  wave add $tbpath${ps}DIP_Switches_8Bits${ps}S_AXI_RVALID -into $id
# wave add $tbpath${ps}DIP_Switches_8Bits${ps}S_AXI_RREADY -into $id
# wave add $tbpath${ps}DIP_Switches_8Bits${ps}IP2INTC_Irpt -into $id
  wave add $tbpath${ps}DIP_Switches_8Bits${ps}GPIO_IO_I -into $id
# wave add $tbpath${ps}DIP_Switches_8Bits${ps}GPIO_IO_O -into $id
# wave add $tbpath${ps}DIP_Switches_8Bits${ps}GPIO_IO_T -into $id
  wave add $tbpath${ps}DIP_Switches_8Bits${ps}GPIO2_IO_I -into $id
# wave add $tbpath${ps}DIP_Switches_8Bits${ps}GPIO2_IO_O -into $id
# wave add $tbpath${ps}DIP_Switches_8Bits${ps}GPIO2_IO_T -into $id

