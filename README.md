gsm-sim-lab
===========

Status
------
-- May 20: --

-- Current version : Fifo_v_1_1

-- Problems faced --

*The code is able to be programmed in FPGA. But still sometimes message pasing error occurs while programming.
*Interrupt is not happening due to the FIT

--May 26:

-- Current version : Fifo_v_1_1

Updates : 

* The transmit and recieve algorithms are implemented.

Problems :

* Still facing problemes with interrupts. The module is tested by polling method. Currently interrupts are disabled.


Modification :

* UART module is interfaced with microblaze module.
*Under testing phase
*current version : gsm_integration_v_1_0 (hw platform)
		   fifo_v_2_0 (sw platform)






