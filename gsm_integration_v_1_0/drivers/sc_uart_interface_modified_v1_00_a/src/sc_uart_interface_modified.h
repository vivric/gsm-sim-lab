/*****************************************************************************
* Filename:          /home/ga38kud/vivin_gsm/gsm_sim/gsm_integration_v_1_0/drivers/sc_uart_interface_modified_v1_00_a/src/sc_uart_interface_modified.h
* Version:           1.00.a
* Description:       sc_uart_interface_modified Driver Header File
* Date:              Mon May 26 19:43:22 2014 (by Create and Import Peripheral Wizard)
*****************************************************************************/

#ifndef SC_UART_INTERFACE_MODIFIED_H
#define SC_UART_INTERFACE_MODIFIED_H

/***************************** Include Files *******************************/

#include "xbasic_types.h"
#include "xstatus.h"
#include "xil_io.h"

/************************** Constant Definitions ***************************/


/**
 * User Logic Slave Space Offsets
 * -- SLV_REG0 : user logic slave module register 0
 * -- SLV_REG1 : user logic slave module register 1
 */
#define SC_UART_INTERFACE_MODIFIED_USER_SLV_SPACE_OFFSET (0x00000000)
#define SC_UART_INTERFACE_MODIFIED_SLV_REG0_OFFSET (SC_UART_INTERFACE_MODIFIED_USER_SLV_SPACE_OFFSET + 0x00000000)
#define SC_UART_INTERFACE_MODIFIED_SLV_REG1_OFFSET (SC_UART_INTERFACE_MODIFIED_USER_SLV_SPACE_OFFSET + 0x00000004)

/**************************** Type Definitions *****************************/


/***************** Macros (Inline Functions) Definitions *******************/

/**
 *
 * Write a value to a SC_UART_INTERFACE_MODIFIED register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the SC_UART_INTERFACE_MODIFIED device.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void SC_UART_INTERFACE_MODIFIED_mWriteReg(Xuint32 BaseAddress, unsigned RegOffset, Xuint32 Data)
 *
 */
#define SC_UART_INTERFACE_MODIFIED_mWriteReg(BaseAddress, RegOffset, Data) \
 	Xil_Out32((BaseAddress) + (RegOffset), (Xuint32)(Data))

/**
 *
 * Read a value from a SC_UART_INTERFACE_MODIFIED register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the SC_UART_INTERFACE_MODIFIED device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	Xuint32 SC_UART_INTERFACE_MODIFIED_mReadReg(Xuint32 BaseAddress, unsigned RegOffset)
 *
 */
#define SC_UART_INTERFACE_MODIFIED_mReadReg(BaseAddress, RegOffset) \
 	Xil_In32((BaseAddress) + (RegOffset))


/**
 *
 * Write/Read 32 bit value to/from SC_UART_INTERFACE_MODIFIED user logic slave registers.
 *
 * @param   BaseAddress is the base address of the SC_UART_INTERFACE_MODIFIED device.
 * @param   RegOffset is the offset from the slave register to write to or read from.
 * @param   Value is the data written to the register.
 *
 * @return  Data is the data from the user logic slave register.
 *
 * @note
 * C-style signature:
 * 	void SC_UART_INTERFACE_MODIFIED_mWriteSlaveRegn(Xuint32 BaseAddress, unsigned RegOffset, Xuint32 Value)
 * 	Xuint32 SC_UART_INTERFACE_MODIFIED_mReadSlaveRegn(Xuint32 BaseAddress, unsigned RegOffset)
 *
 */
#define SC_UART_INTERFACE_MODIFIED_mWriteSlaveReg0(BaseAddress, RegOffset, Value) \
 	Xil_Out32((BaseAddress) + (SC_UART_INTERFACE_MODIFIED_SLV_REG0_OFFSET) + (RegOffset), (Xuint32)(Value))
#define SC_UART_INTERFACE_MODIFIED_mWriteSlaveReg1(BaseAddress, RegOffset, Value) \
 	Xil_Out32((BaseAddress) + (SC_UART_INTERFACE_MODIFIED_SLV_REG1_OFFSET) + (RegOffset), (Xuint32)(Value))

#define SC_UART_INTERFACE_MODIFIED_mReadSlaveReg0(BaseAddress, RegOffset) \
 	Xil_In32((BaseAddress) + (SC_UART_INTERFACE_MODIFIED_SLV_REG0_OFFSET) + (RegOffset))
#define SC_UART_INTERFACE_MODIFIED_mReadSlaveReg1(BaseAddress, RegOffset) \
 	Xil_In32((BaseAddress) + (SC_UART_INTERFACE_MODIFIED_SLV_REG1_OFFSET) + (RegOffset))

/************************** Function Prototypes ****************************/


/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the SC_UART_INTERFACE_MODIFIED instance to be worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
XStatus SC_UART_INTERFACE_MODIFIED_SelfTest(void * baseaddr_p);
/**
*  Defines the number of registers available for read and write*/
#define TEST_AXI_LITE_USER_NUM_REG 2


#endif /** SC_UART_INTERFACE_MODIFIED_H */
