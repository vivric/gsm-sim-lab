#  Simulation Model Generator
#  Xilinx EDK 14.7 EDK_P.20131013
#  Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
#
#  File     top_level_ports_wave.tcl (Mon May 26 21:00:20 2014)
#
if { [info exists PathSeparator] } { set ps $PathSeparator } else { set ps "/" }
if { ![info exists tbpath] } { set tbpath "${ps}system" }

wave add $tbpath${ps}RS232_Uart_1_sout -into $id 
wave add $tbpath${ps}RS232_Uart_1_sin -into $id 
wave add $tbpath${ps}RESET -into $id 
wave add $tbpath${ps}Push_Buttons_4Bits_TRI_I -into $id 
wave add $tbpath${ps}LEDs_8Bits_TRI_O -into $id 
wave add $tbpath${ps}GCLK -into $id 
wave add $tbpath${ps}DIP_Switches_8Bits_TRI_I -into $id 
wave add $tbpath${ps}sc_uart_interface_modified_0_led_pin -into $id 
wave add $tbpath${ps}sc_uart_interface_modified_0_UART_IO -into $id 
wave add $tbpath${ps}sc_uart_interface_modified_0_UART_CLK_pin -into $id 
wave add $tbpath${ps}sc_uart_interface_modified_0_UART_RST_pin -into $id 

