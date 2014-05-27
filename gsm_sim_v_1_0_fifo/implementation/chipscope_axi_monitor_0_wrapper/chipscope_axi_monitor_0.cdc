#ChipScope Core Generator Project File Version 3.0
#
################################################################################
##
## Copyright(C) 2010 - 2011 Xilinx, Inc. All rights reserved.
##
## This file contains confidential and proprietary information
## of Xilinx, Inc. and is protected under U.S. and
## international copyright and other intellectual property
## laws.
##
## DISCLAIMER
## This disclaimer is not a license and does not grant any
## rights to the materials distributed herewith. Except as
## otherwise provided in a valid license issued to you by
## Xilinx, and to the maximum extent permitted by applicable
## law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
## WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
## AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
## BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
## INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
## (2) Xilinx shall not be liable (whether in contract or tort,
## including negligence, or under any other theory of
## liability) for any loss or damage of any kind or nature
## related to, arising under or in connection with these
## materials, including for any direct, or any indirect,
## special, incidental, or consequential loss or damage
## (including loss of data, profits, goodwill, or any type of
## loss or damage suffered as a result of any action brought
## by a third party) even if such damage or loss was
## reasonably foreseeable or Xilinx had been advised of the
## possibility of the same.
##
## CRITICAL APPLICATIONS
## Xilinx products are not designed or intended to be fail-
## safe, or for use in any application requiring fail-safe
## performance, such as life-support or safety devices or
## systems, Class III medical devices, nuclear facilities,
## applications related to the deployment of airbags, or any
## other applications that could lead to death, personal
## injury, or severe property or environmental damage
## (individually and collectively, "Critical
## Applications"). Customer assumes the sole risk and
## liability of any use of Xilinx products in Critical
## Applications, subject only to applicable laws and
## regulations governing limitations on product liability.
##
## THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
## PART OF THIS FILE AT ALL TIMES. 
##
################################################################################
##
## CDC file
##
################################################################################

SignalExport.type=ila
SignalExport.clockChannel=CLK
SignalExport.dataEqualsTrigger=false

# triger ports

SignalExport.triggerPortCount=10 
SignalExport.triggerPortWidth<0000>=32
SignalExport.triggerPortWidth<0001>=5
SignalExport.triggerPortWidth<0002>=32
SignalExport.triggerPortWidth<0003>=5
SignalExport.triggerPortWidth<0004>=4
SignalExport.triggerPortWidth<0005>=34
SignalExport.triggerPortWidth<0006>=32
SignalExport.triggerPortWidth<0007>=4
SignalExport.triggerPortWidth<0008>=32
SignalExport.triggerPortWidth<0009>=6
 
SignalExport.triggerPort<0000>.name=MON_AXI_ARADDR
SignalExport.triggerPort<0001>.name=MON_AXI_ARADDRCONTROL
SignalExport.triggerPort<0002>.name=MON_AXI_AWADDR
SignalExport.triggerPort<0003>.name=MON_AXI_AWADDRCONTROL
SignalExport.triggerPort<0004>.name=MON_AXI_BRESP
SignalExport.triggerPort<0005>.name=MON_AXI_GLOBAL
SignalExport.triggerPort<0006>.name=MON_AXI_RDATA
SignalExport.triggerPort<0007>.name=MON_AXI_RDATACONTROL
SignalExport.triggerPort<0008>.name=MON_AXI_WDATA
SignalExport.triggerPort<0009>.name=MON_AXI_WDATACONTROL
 
SignalExport.triggerPortIsData<0000>=false
SignalExport.triggerPortIsData<0001>=false
SignalExport.triggerPortIsData<0002>=false
SignalExport.triggerPortIsData<0003>=false
SignalExport.triggerPortIsData<0004>=false
SignalExport.triggerPortIsData<0005>=false
SignalExport.triggerPortIsData<0006>=false
SignalExport.triggerPortIsData<0007>=false
SignalExport.triggerPortIsData<0008>=false
SignalExport.triggerPortIsData<0009>=false
 
SignalExport.triggerChannel<0000><0000>=sc_uart_0.S_AXI/MON_AXI_ARADDR[0]
SignalExport.triggerChannel<0000><0001>=sc_uart_0.S_AXI/MON_AXI_ARADDR[1]
SignalExport.triggerChannel<0000><0002>=sc_uart_0.S_AXI/MON_AXI_ARADDR[2]
SignalExport.triggerChannel<0000><0003>=sc_uart_0.S_AXI/MON_AXI_ARADDR[3]
SignalExport.triggerChannel<0000><0004>=sc_uart_0.S_AXI/MON_AXI_ARADDR[4]
SignalExport.triggerChannel<0000><0005>=sc_uart_0.S_AXI/MON_AXI_ARADDR[5]
SignalExport.triggerChannel<0000><0006>=sc_uart_0.S_AXI/MON_AXI_ARADDR[6]
SignalExport.triggerChannel<0000><0007>=sc_uart_0.S_AXI/MON_AXI_ARADDR[7]
SignalExport.triggerChannel<0000><0008>=sc_uart_0.S_AXI/MON_AXI_ARADDR[8]
SignalExport.triggerChannel<0000><0009>=sc_uart_0.S_AXI/MON_AXI_ARADDR[9]
SignalExport.triggerChannel<0000><0010>=sc_uart_0.S_AXI/MON_AXI_ARADDR[10]
SignalExport.triggerChannel<0000><0011>=sc_uart_0.S_AXI/MON_AXI_ARADDR[11]
SignalExport.triggerChannel<0000><0012>=sc_uart_0.S_AXI/MON_AXI_ARADDR[12]
SignalExport.triggerChannel<0000><0013>=sc_uart_0.S_AXI/MON_AXI_ARADDR[13]
SignalExport.triggerChannel<0000><0014>=sc_uart_0.S_AXI/MON_AXI_ARADDR[14]
SignalExport.triggerChannel<0000><0015>=sc_uart_0.S_AXI/MON_AXI_ARADDR[15]
SignalExport.triggerChannel<0000><0016>=sc_uart_0.S_AXI/MON_AXI_ARADDR[16]
SignalExport.triggerChannel<0000><0017>=sc_uart_0.S_AXI/MON_AXI_ARADDR[17]
SignalExport.triggerChannel<0000><0018>=sc_uart_0.S_AXI/MON_AXI_ARADDR[18]
SignalExport.triggerChannel<0000><0019>=sc_uart_0.S_AXI/MON_AXI_ARADDR[19]
SignalExport.triggerChannel<0000><0020>=sc_uart_0.S_AXI/MON_AXI_ARADDR[20]
SignalExport.triggerChannel<0000><0021>=sc_uart_0.S_AXI/MON_AXI_ARADDR[21]
SignalExport.triggerChannel<0000><0022>=sc_uart_0.S_AXI/MON_AXI_ARADDR[22]
SignalExport.triggerChannel<0000><0023>=sc_uart_0.S_AXI/MON_AXI_ARADDR[23]
SignalExport.triggerChannel<0000><0024>=sc_uart_0.S_AXI/MON_AXI_ARADDR[24]
SignalExport.triggerChannel<0000><0025>=sc_uart_0.S_AXI/MON_AXI_ARADDR[25]
SignalExport.triggerChannel<0000><0026>=sc_uart_0.S_AXI/MON_AXI_ARADDR[26]
SignalExport.triggerChannel<0000><0027>=sc_uart_0.S_AXI/MON_AXI_ARADDR[27]
SignalExport.triggerChannel<0000><0028>=sc_uart_0.S_AXI/MON_AXI_ARADDR[28]
SignalExport.triggerChannel<0000><0029>=sc_uart_0.S_AXI/MON_AXI_ARADDR[29]
SignalExport.triggerChannel<0000><0030>=sc_uart_0.S_AXI/MON_AXI_ARADDR[30]
SignalExport.triggerChannel<0000><0031>=sc_uart_0.S_AXI/MON_AXI_ARADDR[31]
SignalExport.triggerChannel<0001><0000>=sc_uart_0.S_AXI/MON_AXI_ARPROT[0]
SignalExport.triggerChannel<0001><0001>=sc_uart_0.S_AXI/MON_AXI_ARPROT[1]
SignalExport.triggerChannel<0001><0002>=sc_uart_0.S_AXI/MON_AXI_ARPROT[2]
SignalExport.triggerChannel<0001><0003>=sc_uart_0.S_AXI/MON_AXI_ARREADY
SignalExport.triggerChannel<0001><0004>=sc_uart_0.S_AXI/MON_AXI_ARVALID
SignalExport.triggerChannel<0002><0000>=sc_uart_0.S_AXI/MON_AXI_AWADDR[0]
SignalExport.triggerChannel<0002><0001>=sc_uart_0.S_AXI/MON_AXI_AWADDR[1]
SignalExport.triggerChannel<0002><0002>=sc_uart_0.S_AXI/MON_AXI_AWADDR[2]
SignalExport.triggerChannel<0002><0003>=sc_uart_0.S_AXI/MON_AXI_AWADDR[3]
SignalExport.triggerChannel<0002><0004>=sc_uart_0.S_AXI/MON_AXI_AWADDR[4]
SignalExport.triggerChannel<0002><0005>=sc_uart_0.S_AXI/MON_AXI_AWADDR[5]
SignalExport.triggerChannel<0002><0006>=sc_uart_0.S_AXI/MON_AXI_AWADDR[6]
SignalExport.triggerChannel<0002><0007>=sc_uart_0.S_AXI/MON_AXI_AWADDR[7]
SignalExport.triggerChannel<0002><0008>=sc_uart_0.S_AXI/MON_AXI_AWADDR[8]
SignalExport.triggerChannel<0002><0009>=sc_uart_0.S_AXI/MON_AXI_AWADDR[9]
SignalExport.triggerChannel<0002><0010>=sc_uart_0.S_AXI/MON_AXI_AWADDR[10]
SignalExport.triggerChannel<0002><0011>=sc_uart_0.S_AXI/MON_AXI_AWADDR[11]
SignalExport.triggerChannel<0002><0012>=sc_uart_0.S_AXI/MON_AXI_AWADDR[12]
SignalExport.triggerChannel<0002><0013>=sc_uart_0.S_AXI/MON_AXI_AWADDR[13]
SignalExport.triggerChannel<0002><0014>=sc_uart_0.S_AXI/MON_AXI_AWADDR[14]
SignalExport.triggerChannel<0002><0015>=sc_uart_0.S_AXI/MON_AXI_AWADDR[15]
SignalExport.triggerChannel<0002><0016>=sc_uart_0.S_AXI/MON_AXI_AWADDR[16]
SignalExport.triggerChannel<0002><0017>=sc_uart_0.S_AXI/MON_AXI_AWADDR[17]
SignalExport.triggerChannel<0002><0018>=sc_uart_0.S_AXI/MON_AXI_AWADDR[18]
SignalExport.triggerChannel<0002><0019>=sc_uart_0.S_AXI/MON_AXI_AWADDR[19]
SignalExport.triggerChannel<0002><0020>=sc_uart_0.S_AXI/MON_AXI_AWADDR[20]
SignalExport.triggerChannel<0002><0021>=sc_uart_0.S_AXI/MON_AXI_AWADDR[21]
SignalExport.triggerChannel<0002><0022>=sc_uart_0.S_AXI/MON_AXI_AWADDR[22]
SignalExport.triggerChannel<0002><0023>=sc_uart_0.S_AXI/MON_AXI_AWADDR[23]
SignalExport.triggerChannel<0002><0024>=sc_uart_0.S_AXI/MON_AXI_AWADDR[24]
SignalExport.triggerChannel<0002><0025>=sc_uart_0.S_AXI/MON_AXI_AWADDR[25]
SignalExport.triggerChannel<0002><0026>=sc_uart_0.S_AXI/MON_AXI_AWADDR[26]
SignalExport.triggerChannel<0002><0027>=sc_uart_0.S_AXI/MON_AXI_AWADDR[27]
SignalExport.triggerChannel<0002><0028>=sc_uart_0.S_AXI/MON_AXI_AWADDR[28]
SignalExport.triggerChannel<0002><0029>=sc_uart_0.S_AXI/MON_AXI_AWADDR[29]
SignalExport.triggerChannel<0002><0030>=sc_uart_0.S_AXI/MON_AXI_AWADDR[30]
SignalExport.triggerChannel<0002><0031>=sc_uart_0.S_AXI/MON_AXI_AWADDR[31]
SignalExport.triggerChannel<0003><0000>=sc_uart_0.S_AXI/MON_AXI_AWPROT[0]
SignalExport.triggerChannel<0003><0001>=sc_uart_0.S_AXI/MON_AXI_AWPROT[1]
SignalExport.triggerChannel<0003><0002>=sc_uart_0.S_AXI/MON_AXI_AWPROT[2]
SignalExport.triggerChannel<0003><0003>=sc_uart_0.S_AXI/MON_AXI_AWREADY
SignalExport.triggerChannel<0003><0004>=sc_uart_0.S_AXI/MON_AXI_AWVALID
SignalExport.triggerChannel<0004><0000>=sc_uart_0.S_AXI/MON_AXI_BREADY
SignalExport.triggerChannel<0004><0001>=sc_uart_0.S_AXI/MON_AXI_BRESP[0]
SignalExport.triggerChannel<0004><0002>=sc_uart_0.S_AXI/MON_AXI_BRESP[1]
SignalExport.triggerChannel<0004><0003>=sc_uart_0.S_AXI/MON_AXI_BVALID
SignalExport.triggerChannel<0005><0000>=sc_uart_0.S_AXI/MON_AXI_ARESETN
SignalExport.triggerChannel<0005><0001>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[0]
SignalExport.triggerChannel<0005><0002>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[1]
SignalExport.triggerChannel<0005><0003>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[2]
SignalExport.triggerChannel<0005><0004>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[3]
SignalExport.triggerChannel<0005><0005>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[4]
SignalExport.triggerChannel<0005><0006>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[5]
SignalExport.triggerChannel<0005><0007>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[6]
SignalExport.triggerChannel<0005><0008>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[7]
SignalExport.triggerChannel<0005><0009>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[8]
SignalExport.triggerChannel<0005><0010>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[9]
SignalExport.triggerChannel<0005><0011>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[10]
SignalExport.triggerChannel<0005><0012>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[11]
SignalExport.triggerChannel<0005><0013>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[12]
SignalExport.triggerChannel<0005><0014>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[13]
SignalExport.triggerChannel<0005><0015>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[14]
SignalExport.triggerChannel<0005><0016>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[15]
SignalExport.triggerChannel<0005><0017>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[16]
SignalExport.triggerChannel<0005><0018>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[17]
SignalExport.triggerChannel<0005><0019>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[18]
SignalExport.triggerChannel<0005><0020>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[19]
SignalExport.triggerChannel<0005><0021>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[20]
SignalExport.triggerChannel<0005><0022>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[21]
SignalExport.triggerChannel<0005><0023>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[22]
SignalExport.triggerChannel<0005><0024>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[23]
SignalExport.triggerChannel<0005><0025>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[24]
SignalExport.triggerChannel<0005><0026>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[25]
SignalExport.triggerChannel<0005><0027>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[26]
SignalExport.triggerChannel<0005><0028>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[27]
SignalExport.triggerChannel<0005><0029>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[28]
SignalExport.triggerChannel<0005><0030>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[29]
SignalExport.triggerChannel<0005><0031>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[30]
SignalExport.triggerChannel<0005><0032>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[31]
SignalExport.triggerChannel<0005><0033>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[32]
SignalExport.triggerChannel<0006><0000>=sc_uart_0.S_AXI/MON_AXI_RDATA[0]
SignalExport.triggerChannel<0006><0001>=sc_uart_0.S_AXI/MON_AXI_RDATA[1]
SignalExport.triggerChannel<0006><0002>=sc_uart_0.S_AXI/MON_AXI_RDATA[2]
SignalExport.triggerChannel<0006><0003>=sc_uart_0.S_AXI/MON_AXI_RDATA[3]
SignalExport.triggerChannel<0006><0004>=sc_uart_0.S_AXI/MON_AXI_RDATA[4]
SignalExport.triggerChannel<0006><0005>=sc_uart_0.S_AXI/MON_AXI_RDATA[5]
SignalExport.triggerChannel<0006><0006>=sc_uart_0.S_AXI/MON_AXI_RDATA[6]
SignalExport.triggerChannel<0006><0007>=sc_uart_0.S_AXI/MON_AXI_RDATA[7]
SignalExport.triggerChannel<0006><0008>=sc_uart_0.S_AXI/MON_AXI_RDATA[8]
SignalExport.triggerChannel<0006><0009>=sc_uart_0.S_AXI/MON_AXI_RDATA[9]
SignalExport.triggerChannel<0006><0010>=sc_uart_0.S_AXI/MON_AXI_RDATA[10]
SignalExport.triggerChannel<0006><0011>=sc_uart_0.S_AXI/MON_AXI_RDATA[11]
SignalExport.triggerChannel<0006><0012>=sc_uart_0.S_AXI/MON_AXI_RDATA[12]
SignalExport.triggerChannel<0006><0013>=sc_uart_0.S_AXI/MON_AXI_RDATA[13]
SignalExport.triggerChannel<0006><0014>=sc_uart_0.S_AXI/MON_AXI_RDATA[14]
SignalExport.triggerChannel<0006><0015>=sc_uart_0.S_AXI/MON_AXI_RDATA[15]
SignalExport.triggerChannel<0006><0016>=sc_uart_0.S_AXI/MON_AXI_RDATA[16]
SignalExport.triggerChannel<0006><0017>=sc_uart_0.S_AXI/MON_AXI_RDATA[17]
SignalExport.triggerChannel<0006><0018>=sc_uart_0.S_AXI/MON_AXI_RDATA[18]
SignalExport.triggerChannel<0006><0019>=sc_uart_0.S_AXI/MON_AXI_RDATA[19]
SignalExport.triggerChannel<0006><0020>=sc_uart_0.S_AXI/MON_AXI_RDATA[20]
SignalExport.triggerChannel<0006><0021>=sc_uart_0.S_AXI/MON_AXI_RDATA[21]
SignalExport.triggerChannel<0006><0022>=sc_uart_0.S_AXI/MON_AXI_RDATA[22]
SignalExport.triggerChannel<0006><0023>=sc_uart_0.S_AXI/MON_AXI_RDATA[23]
SignalExport.triggerChannel<0006><0024>=sc_uart_0.S_AXI/MON_AXI_RDATA[24]
SignalExport.triggerChannel<0006><0025>=sc_uart_0.S_AXI/MON_AXI_RDATA[25]
SignalExport.triggerChannel<0006><0026>=sc_uart_0.S_AXI/MON_AXI_RDATA[26]
SignalExport.triggerChannel<0006><0027>=sc_uart_0.S_AXI/MON_AXI_RDATA[27]
SignalExport.triggerChannel<0006><0028>=sc_uart_0.S_AXI/MON_AXI_RDATA[28]
SignalExport.triggerChannel<0006><0029>=sc_uart_0.S_AXI/MON_AXI_RDATA[29]
SignalExport.triggerChannel<0006><0030>=sc_uart_0.S_AXI/MON_AXI_RDATA[30]
SignalExport.triggerChannel<0006><0031>=sc_uart_0.S_AXI/MON_AXI_RDATA[31]
SignalExport.triggerChannel<0007><0000>=sc_uart_0.S_AXI/MON_AXI_RREADY
SignalExport.triggerChannel<0007><0001>=sc_uart_0.S_AXI/MON_AXI_RRESP[0]
SignalExport.triggerChannel<0007><0002>=sc_uart_0.S_AXI/MON_AXI_RRESP[1]
SignalExport.triggerChannel<0007><0003>=sc_uart_0.S_AXI/MON_AXI_RVALID
SignalExport.triggerChannel<0008><0000>=sc_uart_0.S_AXI/MON_AXI_WDATA[0]
SignalExport.triggerChannel<0008><0001>=sc_uart_0.S_AXI/MON_AXI_WDATA[1]
SignalExport.triggerChannel<0008><0002>=sc_uart_0.S_AXI/MON_AXI_WDATA[2]
SignalExport.triggerChannel<0008><0003>=sc_uart_0.S_AXI/MON_AXI_WDATA[3]
SignalExport.triggerChannel<0008><0004>=sc_uart_0.S_AXI/MON_AXI_WDATA[4]
SignalExport.triggerChannel<0008><0005>=sc_uart_0.S_AXI/MON_AXI_WDATA[5]
SignalExport.triggerChannel<0008><0006>=sc_uart_0.S_AXI/MON_AXI_WDATA[6]
SignalExport.triggerChannel<0008><0007>=sc_uart_0.S_AXI/MON_AXI_WDATA[7]
SignalExport.triggerChannel<0008><0008>=sc_uart_0.S_AXI/MON_AXI_WDATA[8]
SignalExport.triggerChannel<0008><0009>=sc_uart_0.S_AXI/MON_AXI_WDATA[9]
SignalExport.triggerChannel<0008><0010>=sc_uart_0.S_AXI/MON_AXI_WDATA[10]
SignalExport.triggerChannel<0008><0011>=sc_uart_0.S_AXI/MON_AXI_WDATA[11]
SignalExport.triggerChannel<0008><0012>=sc_uart_0.S_AXI/MON_AXI_WDATA[12]
SignalExport.triggerChannel<0008><0013>=sc_uart_0.S_AXI/MON_AXI_WDATA[13]
SignalExport.triggerChannel<0008><0014>=sc_uart_0.S_AXI/MON_AXI_WDATA[14]
SignalExport.triggerChannel<0008><0015>=sc_uart_0.S_AXI/MON_AXI_WDATA[15]
SignalExport.triggerChannel<0008><0016>=sc_uart_0.S_AXI/MON_AXI_WDATA[16]
SignalExport.triggerChannel<0008><0017>=sc_uart_0.S_AXI/MON_AXI_WDATA[17]
SignalExport.triggerChannel<0008><0018>=sc_uart_0.S_AXI/MON_AXI_WDATA[18]
SignalExport.triggerChannel<0008><0019>=sc_uart_0.S_AXI/MON_AXI_WDATA[19]
SignalExport.triggerChannel<0008><0020>=sc_uart_0.S_AXI/MON_AXI_WDATA[20]
SignalExport.triggerChannel<0008><0021>=sc_uart_0.S_AXI/MON_AXI_WDATA[21]
SignalExport.triggerChannel<0008><0022>=sc_uart_0.S_AXI/MON_AXI_WDATA[22]
SignalExport.triggerChannel<0008><0023>=sc_uart_0.S_AXI/MON_AXI_WDATA[23]
SignalExport.triggerChannel<0008><0024>=sc_uart_0.S_AXI/MON_AXI_WDATA[24]
SignalExport.triggerChannel<0008><0025>=sc_uart_0.S_AXI/MON_AXI_WDATA[25]
SignalExport.triggerChannel<0008><0026>=sc_uart_0.S_AXI/MON_AXI_WDATA[26]
SignalExport.triggerChannel<0008><0027>=sc_uart_0.S_AXI/MON_AXI_WDATA[27]
SignalExport.triggerChannel<0008><0028>=sc_uart_0.S_AXI/MON_AXI_WDATA[28]
SignalExport.triggerChannel<0008><0029>=sc_uart_0.S_AXI/MON_AXI_WDATA[29]
SignalExport.triggerChannel<0008><0030>=sc_uart_0.S_AXI/MON_AXI_WDATA[30]
SignalExport.triggerChannel<0008><0031>=sc_uart_0.S_AXI/MON_AXI_WDATA[31]
SignalExport.triggerChannel<0009><0000>=sc_uart_0.S_AXI/MON_AXI_WREADY
SignalExport.triggerChannel<0009><0001>=sc_uart_0.S_AXI/MON_AXI_WSTRB[0]
SignalExport.triggerChannel<0009><0002>=sc_uart_0.S_AXI/MON_AXI_WSTRB[1]
SignalExport.triggerChannel<0009><0003>=sc_uart_0.S_AXI/MON_AXI_WSTRB[2]
SignalExport.triggerChannel<0009><0004>=sc_uart_0.S_AXI/MON_AXI_WSTRB[3]
SignalExport.triggerChannel<0009><0005>=sc_uart_0.S_AXI/MON_AXI_WVALID
 

# data ports
SignalExport.dataPortWidth=186
 
SignalExport.dataChannel<0000>=sc_uart_0.S_AXI/MON_AXI_ARADDR[0]
SignalExport.dataChannel<0001>=sc_uart_0.S_AXI/MON_AXI_ARADDR[1]
SignalExport.dataChannel<0002>=sc_uart_0.S_AXI/MON_AXI_ARADDR[2]
SignalExport.dataChannel<0003>=sc_uart_0.S_AXI/MON_AXI_ARADDR[3]
SignalExport.dataChannel<0004>=sc_uart_0.S_AXI/MON_AXI_ARADDR[4]
SignalExport.dataChannel<0005>=sc_uart_0.S_AXI/MON_AXI_ARADDR[5]
SignalExport.dataChannel<0006>=sc_uart_0.S_AXI/MON_AXI_ARADDR[6]
SignalExport.dataChannel<0007>=sc_uart_0.S_AXI/MON_AXI_ARADDR[7]
SignalExport.dataChannel<0008>=sc_uart_0.S_AXI/MON_AXI_ARADDR[8]
SignalExport.dataChannel<0009>=sc_uart_0.S_AXI/MON_AXI_ARADDR[9]
SignalExport.dataChannel<0010>=sc_uart_0.S_AXI/MON_AXI_ARADDR[10]
SignalExport.dataChannel<0011>=sc_uart_0.S_AXI/MON_AXI_ARADDR[11]
SignalExport.dataChannel<0012>=sc_uart_0.S_AXI/MON_AXI_ARADDR[12]
SignalExport.dataChannel<0013>=sc_uart_0.S_AXI/MON_AXI_ARADDR[13]
SignalExport.dataChannel<0014>=sc_uart_0.S_AXI/MON_AXI_ARADDR[14]
SignalExport.dataChannel<0015>=sc_uart_0.S_AXI/MON_AXI_ARADDR[15]
SignalExport.dataChannel<0016>=sc_uart_0.S_AXI/MON_AXI_ARADDR[16]
SignalExport.dataChannel<0017>=sc_uart_0.S_AXI/MON_AXI_ARADDR[17]
SignalExport.dataChannel<0018>=sc_uart_0.S_AXI/MON_AXI_ARADDR[18]
SignalExport.dataChannel<0019>=sc_uart_0.S_AXI/MON_AXI_ARADDR[19]
SignalExport.dataChannel<0020>=sc_uart_0.S_AXI/MON_AXI_ARADDR[20]
SignalExport.dataChannel<0021>=sc_uart_0.S_AXI/MON_AXI_ARADDR[21]
SignalExport.dataChannel<0022>=sc_uart_0.S_AXI/MON_AXI_ARADDR[22]
SignalExport.dataChannel<0023>=sc_uart_0.S_AXI/MON_AXI_ARADDR[23]
SignalExport.dataChannel<0024>=sc_uart_0.S_AXI/MON_AXI_ARADDR[24]
SignalExport.dataChannel<0025>=sc_uart_0.S_AXI/MON_AXI_ARADDR[25]
SignalExport.dataChannel<0026>=sc_uart_0.S_AXI/MON_AXI_ARADDR[26]
SignalExport.dataChannel<0027>=sc_uart_0.S_AXI/MON_AXI_ARADDR[27]
SignalExport.dataChannel<0028>=sc_uart_0.S_AXI/MON_AXI_ARADDR[28]
SignalExport.dataChannel<0029>=sc_uart_0.S_AXI/MON_AXI_ARADDR[29]
SignalExport.dataChannel<0030>=sc_uart_0.S_AXI/MON_AXI_ARADDR[30]
SignalExport.dataChannel<0031>=sc_uart_0.S_AXI/MON_AXI_ARADDR[31]
SignalExport.dataChannel<0032>=sc_uart_0.S_AXI/MON_AXI_ARPROT[0]
SignalExport.dataChannel<0033>=sc_uart_0.S_AXI/MON_AXI_ARPROT[1]
SignalExport.dataChannel<0034>=sc_uart_0.S_AXI/MON_AXI_ARPROT[2]
SignalExport.dataChannel<0035>=sc_uart_0.S_AXI/MON_AXI_ARREADY
SignalExport.dataChannel<0036>=sc_uart_0.S_AXI/MON_AXI_ARVALID
SignalExport.dataChannel<0037>=sc_uart_0.S_AXI/MON_AXI_AWADDR[0]
SignalExport.dataChannel<0038>=sc_uart_0.S_AXI/MON_AXI_AWADDR[1]
SignalExport.dataChannel<0039>=sc_uart_0.S_AXI/MON_AXI_AWADDR[2]
SignalExport.dataChannel<0040>=sc_uart_0.S_AXI/MON_AXI_AWADDR[3]
SignalExport.dataChannel<0041>=sc_uart_0.S_AXI/MON_AXI_AWADDR[4]
SignalExport.dataChannel<0042>=sc_uart_0.S_AXI/MON_AXI_AWADDR[5]
SignalExport.dataChannel<0043>=sc_uart_0.S_AXI/MON_AXI_AWADDR[6]
SignalExport.dataChannel<0044>=sc_uart_0.S_AXI/MON_AXI_AWADDR[7]
SignalExport.dataChannel<0045>=sc_uart_0.S_AXI/MON_AXI_AWADDR[8]
SignalExport.dataChannel<0046>=sc_uart_0.S_AXI/MON_AXI_AWADDR[9]
SignalExport.dataChannel<0047>=sc_uart_0.S_AXI/MON_AXI_AWADDR[10]
SignalExport.dataChannel<0048>=sc_uart_0.S_AXI/MON_AXI_AWADDR[11]
SignalExport.dataChannel<0049>=sc_uart_0.S_AXI/MON_AXI_AWADDR[12]
SignalExport.dataChannel<0050>=sc_uart_0.S_AXI/MON_AXI_AWADDR[13]
SignalExport.dataChannel<0051>=sc_uart_0.S_AXI/MON_AXI_AWADDR[14]
SignalExport.dataChannel<0052>=sc_uart_0.S_AXI/MON_AXI_AWADDR[15]
SignalExport.dataChannel<0053>=sc_uart_0.S_AXI/MON_AXI_AWADDR[16]
SignalExport.dataChannel<0054>=sc_uart_0.S_AXI/MON_AXI_AWADDR[17]
SignalExport.dataChannel<0055>=sc_uart_0.S_AXI/MON_AXI_AWADDR[18]
SignalExport.dataChannel<0056>=sc_uart_0.S_AXI/MON_AXI_AWADDR[19]
SignalExport.dataChannel<0057>=sc_uart_0.S_AXI/MON_AXI_AWADDR[20]
SignalExport.dataChannel<0058>=sc_uart_0.S_AXI/MON_AXI_AWADDR[21]
SignalExport.dataChannel<0059>=sc_uart_0.S_AXI/MON_AXI_AWADDR[22]
SignalExport.dataChannel<0060>=sc_uart_0.S_AXI/MON_AXI_AWADDR[23]
SignalExport.dataChannel<0061>=sc_uart_0.S_AXI/MON_AXI_AWADDR[24]
SignalExport.dataChannel<0062>=sc_uart_0.S_AXI/MON_AXI_AWADDR[25]
SignalExport.dataChannel<0063>=sc_uart_0.S_AXI/MON_AXI_AWADDR[26]
SignalExport.dataChannel<0064>=sc_uart_0.S_AXI/MON_AXI_AWADDR[27]
SignalExport.dataChannel<0065>=sc_uart_0.S_AXI/MON_AXI_AWADDR[28]
SignalExport.dataChannel<0066>=sc_uart_0.S_AXI/MON_AXI_AWADDR[29]
SignalExport.dataChannel<0067>=sc_uart_0.S_AXI/MON_AXI_AWADDR[30]
SignalExport.dataChannel<0068>=sc_uart_0.S_AXI/MON_AXI_AWADDR[31]
SignalExport.dataChannel<0069>=sc_uart_0.S_AXI/MON_AXI_AWPROT[0]
SignalExport.dataChannel<0070>=sc_uart_0.S_AXI/MON_AXI_AWPROT[1]
SignalExport.dataChannel<0071>=sc_uart_0.S_AXI/MON_AXI_AWPROT[2]
SignalExport.dataChannel<0072>=sc_uart_0.S_AXI/MON_AXI_AWREADY
SignalExport.dataChannel<0073>=sc_uart_0.S_AXI/MON_AXI_AWVALID
SignalExport.dataChannel<0074>=sc_uart_0.S_AXI/MON_AXI_BREADY
SignalExport.dataChannel<0075>=sc_uart_0.S_AXI/MON_AXI_BRESP[0]
SignalExport.dataChannel<0076>=sc_uart_0.S_AXI/MON_AXI_BRESP[1]
SignalExport.dataChannel<0077>=sc_uart_0.S_AXI/MON_AXI_BVALID
SignalExport.dataChannel<0078>=sc_uart_0.S_AXI/MON_AXI_ARESETN
SignalExport.dataChannel<0079>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[0]
SignalExport.dataChannel<0080>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[1]
SignalExport.dataChannel<0081>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[2]
SignalExport.dataChannel<0082>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[3]
SignalExport.dataChannel<0083>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[4]
SignalExport.dataChannel<0084>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[5]
SignalExport.dataChannel<0085>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[6]
SignalExport.dataChannel<0086>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[7]
SignalExport.dataChannel<0087>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[8]
SignalExport.dataChannel<0088>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[9]
SignalExport.dataChannel<0089>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[10]
SignalExport.dataChannel<0090>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[11]
SignalExport.dataChannel<0091>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[12]
SignalExport.dataChannel<0092>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[13]
SignalExport.dataChannel<0093>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[14]
SignalExport.dataChannel<0094>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[15]
SignalExport.dataChannel<0095>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[16]
SignalExport.dataChannel<0096>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[17]
SignalExport.dataChannel<0097>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[18]
SignalExport.dataChannel<0098>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[19]
SignalExport.dataChannel<0099>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[20]
SignalExport.dataChannel<0100>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[21]
SignalExport.dataChannel<0101>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[22]
SignalExport.dataChannel<0102>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[23]
SignalExport.dataChannel<0103>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[24]
SignalExport.dataChannel<0104>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[25]
SignalExport.dataChannel<0105>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[26]
SignalExport.dataChannel<0106>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[27]
SignalExport.dataChannel<0107>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[28]
SignalExport.dataChannel<0108>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[29]
SignalExport.dataChannel<0109>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[30]
SignalExport.dataChannel<0110>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[31]
SignalExport.dataChannel<0111>=sc_uart_0.S_AXI/MON_AXI_TRIG_IN[32]
SignalExport.dataChannel<0112>=sc_uart_0.S_AXI/MON_AXI_RDATA[0]
SignalExport.dataChannel<0113>=sc_uart_0.S_AXI/MON_AXI_RDATA[1]
SignalExport.dataChannel<0114>=sc_uart_0.S_AXI/MON_AXI_RDATA[2]
SignalExport.dataChannel<0115>=sc_uart_0.S_AXI/MON_AXI_RDATA[3]
SignalExport.dataChannel<0116>=sc_uart_0.S_AXI/MON_AXI_RDATA[4]
SignalExport.dataChannel<0117>=sc_uart_0.S_AXI/MON_AXI_RDATA[5]
SignalExport.dataChannel<0118>=sc_uart_0.S_AXI/MON_AXI_RDATA[6]
SignalExport.dataChannel<0119>=sc_uart_0.S_AXI/MON_AXI_RDATA[7]
SignalExport.dataChannel<0120>=sc_uart_0.S_AXI/MON_AXI_RDATA[8]
SignalExport.dataChannel<0121>=sc_uart_0.S_AXI/MON_AXI_RDATA[9]
SignalExport.dataChannel<0122>=sc_uart_0.S_AXI/MON_AXI_RDATA[10]
SignalExport.dataChannel<0123>=sc_uart_0.S_AXI/MON_AXI_RDATA[11]
SignalExport.dataChannel<0124>=sc_uart_0.S_AXI/MON_AXI_RDATA[12]
SignalExport.dataChannel<0125>=sc_uart_0.S_AXI/MON_AXI_RDATA[13]
SignalExport.dataChannel<0126>=sc_uart_0.S_AXI/MON_AXI_RDATA[14]
SignalExport.dataChannel<0127>=sc_uart_0.S_AXI/MON_AXI_RDATA[15]
SignalExport.dataChannel<0128>=sc_uart_0.S_AXI/MON_AXI_RDATA[16]
SignalExport.dataChannel<0129>=sc_uart_0.S_AXI/MON_AXI_RDATA[17]
SignalExport.dataChannel<0130>=sc_uart_0.S_AXI/MON_AXI_RDATA[18]
SignalExport.dataChannel<0131>=sc_uart_0.S_AXI/MON_AXI_RDATA[19]
SignalExport.dataChannel<0132>=sc_uart_0.S_AXI/MON_AXI_RDATA[20]
SignalExport.dataChannel<0133>=sc_uart_0.S_AXI/MON_AXI_RDATA[21]
SignalExport.dataChannel<0134>=sc_uart_0.S_AXI/MON_AXI_RDATA[22]
SignalExport.dataChannel<0135>=sc_uart_0.S_AXI/MON_AXI_RDATA[23]
SignalExport.dataChannel<0136>=sc_uart_0.S_AXI/MON_AXI_RDATA[24]
SignalExport.dataChannel<0137>=sc_uart_0.S_AXI/MON_AXI_RDATA[25]
SignalExport.dataChannel<0138>=sc_uart_0.S_AXI/MON_AXI_RDATA[26]
SignalExport.dataChannel<0139>=sc_uart_0.S_AXI/MON_AXI_RDATA[27]
SignalExport.dataChannel<0140>=sc_uart_0.S_AXI/MON_AXI_RDATA[28]
SignalExport.dataChannel<0141>=sc_uart_0.S_AXI/MON_AXI_RDATA[29]
SignalExport.dataChannel<0142>=sc_uart_0.S_AXI/MON_AXI_RDATA[30]
SignalExport.dataChannel<0143>=sc_uart_0.S_AXI/MON_AXI_RDATA[31]
SignalExport.dataChannel<0144>=sc_uart_0.S_AXI/MON_AXI_RREADY
SignalExport.dataChannel<0145>=sc_uart_0.S_AXI/MON_AXI_RRESP[0]
SignalExport.dataChannel<0146>=sc_uart_0.S_AXI/MON_AXI_RRESP[1]
SignalExport.dataChannel<0147>=sc_uart_0.S_AXI/MON_AXI_RVALID
SignalExport.dataChannel<0148>=sc_uart_0.S_AXI/MON_AXI_WDATA[0]
SignalExport.dataChannel<0149>=sc_uart_0.S_AXI/MON_AXI_WDATA[1]
SignalExport.dataChannel<0150>=sc_uart_0.S_AXI/MON_AXI_WDATA[2]
SignalExport.dataChannel<0151>=sc_uart_0.S_AXI/MON_AXI_WDATA[3]
SignalExport.dataChannel<0152>=sc_uart_0.S_AXI/MON_AXI_WDATA[4]
SignalExport.dataChannel<0153>=sc_uart_0.S_AXI/MON_AXI_WDATA[5]
SignalExport.dataChannel<0154>=sc_uart_0.S_AXI/MON_AXI_WDATA[6]
SignalExport.dataChannel<0155>=sc_uart_0.S_AXI/MON_AXI_WDATA[7]
SignalExport.dataChannel<0156>=sc_uart_0.S_AXI/MON_AXI_WDATA[8]
SignalExport.dataChannel<0157>=sc_uart_0.S_AXI/MON_AXI_WDATA[9]
SignalExport.dataChannel<0158>=sc_uart_0.S_AXI/MON_AXI_WDATA[10]
SignalExport.dataChannel<0159>=sc_uart_0.S_AXI/MON_AXI_WDATA[11]
SignalExport.dataChannel<0160>=sc_uart_0.S_AXI/MON_AXI_WDATA[12]
SignalExport.dataChannel<0161>=sc_uart_0.S_AXI/MON_AXI_WDATA[13]
SignalExport.dataChannel<0162>=sc_uart_0.S_AXI/MON_AXI_WDATA[14]
SignalExport.dataChannel<0163>=sc_uart_0.S_AXI/MON_AXI_WDATA[15]
SignalExport.dataChannel<0164>=sc_uart_0.S_AXI/MON_AXI_WDATA[16]
SignalExport.dataChannel<0165>=sc_uart_0.S_AXI/MON_AXI_WDATA[17]
SignalExport.dataChannel<0166>=sc_uart_0.S_AXI/MON_AXI_WDATA[18]
SignalExport.dataChannel<0167>=sc_uart_0.S_AXI/MON_AXI_WDATA[19]
SignalExport.dataChannel<0168>=sc_uart_0.S_AXI/MON_AXI_WDATA[20]
SignalExport.dataChannel<0169>=sc_uart_0.S_AXI/MON_AXI_WDATA[21]
SignalExport.dataChannel<0170>=sc_uart_0.S_AXI/MON_AXI_WDATA[22]
SignalExport.dataChannel<0171>=sc_uart_0.S_AXI/MON_AXI_WDATA[23]
SignalExport.dataChannel<0172>=sc_uart_0.S_AXI/MON_AXI_WDATA[24]
SignalExport.dataChannel<0173>=sc_uart_0.S_AXI/MON_AXI_WDATA[25]
SignalExport.dataChannel<0174>=sc_uart_0.S_AXI/MON_AXI_WDATA[26]
SignalExport.dataChannel<0175>=sc_uart_0.S_AXI/MON_AXI_WDATA[27]
SignalExport.dataChannel<0176>=sc_uart_0.S_AXI/MON_AXI_WDATA[28]
SignalExport.dataChannel<0177>=sc_uart_0.S_AXI/MON_AXI_WDATA[29]
SignalExport.dataChannel<0178>=sc_uart_0.S_AXI/MON_AXI_WDATA[30]
SignalExport.dataChannel<0179>=sc_uart_0.S_AXI/MON_AXI_WDATA[31]
SignalExport.dataChannel<0180>=sc_uart_0.S_AXI/MON_AXI_WREADY
SignalExport.dataChannel<0181>=sc_uart_0.S_AXI/MON_AXI_WSTRB[0]
SignalExport.dataChannel<0182>=sc_uart_0.S_AXI/MON_AXI_WSTRB[1]
SignalExport.dataChannel<0183>=sc_uart_0.S_AXI/MON_AXI_WSTRB[2]
SignalExport.dataChannel<0184>=sc_uart_0.S_AXI/MON_AXI_WSTRB[3]
SignalExport.dataChannel<0185>=sc_uart_0.S_AXI/MON_AXI_WVALID


