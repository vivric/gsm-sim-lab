#  Simulation Model Generator
#  Xilinx EDK 14.7 EDK_P.20131013
#  Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
#
#  File     system_wave.tcl (Mon May 26 21:00:20 2014)
#
#  ISE Simulator Trace Script File
#
#  Trace script files specify signals to save for later
#  display when viewing results of the simulation a graphic
#  format. Comment or uncomment commands to change the set of
#  signals viewed.
#
puts  "Setting up signal tracing ..."

#  Because EDK did not create the testbench, the user
#  specifies the path to the device under test, $tbpath.
#
if { [info exists PathSeparator] } { set ps $PathSeparator } else { set ps "/" }
if { ![info exists tbpath] } { set tbpath "${ps}system" }

#
#  Trace top-level ports
#
set id [group add "Top level ports"]
source top_level_ports_wave.tcl


#
#  Trace Bus signal ports
#
set id [group add "Bus signal ports" ]
source microblaze_0_ilmb_wave.tcl

source microblaze_0_dlmb_wave.tcl

source axi4lite_0_wave.tcl

#
#  Trace Processor ports
#
set id [group add "Processor ports" ]
source microblaze_0_wave.tcl

#
#  Trace processor registers
#

set id [group add "Processor registers"]
#  Processor registers cannot be displayed for:
#  Module   system_microblaze_0_wrapper
#  Instance microblaze_0
#
#  Trace IP and peripheral ports
#
set id [group add "IP and peripheral ports" ]
source proc_sys_reset_0_wave.tcl

source microblaze_0_i_bram_ctrl_wave.tcl

source microblaze_0_d_bram_ctrl_wave.tcl

source microblaze_0_bram_block_wave.tcl

source debug_module_wave.tcl

source clock_generator_0_wave.tcl

source RS232_Uart_1_wave.tcl

source Push_Buttons_4Bits_wave.tcl

source LEDs_8Bits_wave.tcl

source DIP_Switches_8Bits_wave.tcl

source sc_uart_interface_modified_0_wave.tcl

#
#  Trace setup complete. Start tracing the signals.
#

puts  "Signal tracing setup completed."

puts  "Simulate the design with the 'run' command."
