----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:47:00 08/12/2011 
-- Design Name: 
-- Module Name:    mem_bus_mux - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mem_bus_mux is
    Port ( 
    -- RAM ports
    ADDR_RAM_IN : in  STD_LOGIC_VECTOR (0 to 31);
    DQ_O_RAM : in  STD_LOGIC_VECTOR (0 to 15);
    DQ_T_RAM : in  STD_LOGIC_VECTOR (0 to 15);
    DQ_I_RAM : out STD_LOGIC_VECTOR (0 to 15);
    BEN_RAM_I : in STD_LOGIC_VECTOR (0 to 1);
    CEN_RAM_I : in STD_LOGIC_VECTOR (0 to 0);
    OEN_RAM_I : in STD_LOGIC_VECTOR (0 to 0);
    WEN_RAM_I : in STD_LOGIC;
   -- FLASH ports
    ADDR_FLASH_IN : in  STD_LOGIC_VECTOR (0 to 31);
    DQ_O_FLASH    : in  STD_LOGIC_VECTOR (0 to 15);
    DQ_T_FLASH    : in  STD_LOGIC_VECTOR (0 to 15);
    DQ_I_FLASH    : out STD_LOGIC_VECTOR (0 to 15);
    RPN_FLASH_I   : in STD_LOGIC;
    CEN_FLASH_I   : in STD_LOGIC_VECTOR (0 to 0);
    OEN_FLASH_I   : in STD_LOGIC_VECTOR (0 to 0);
    WEN_FLASH_I   : in STD_LOGIC;
    -- QUAD_SPI ports
    C_QUAD_SPI_I  : in STD_LOGIC;
    S_QUAD_SPI_I  : in STD_LOGIC;
    DQ_O_QUAD_SPI : in  STD_LOGIC_VECTOR (3 downto 0);
    DQ_T_QUAD_SPI : in  STD_LOGIC_VECTOR (3 downto 0);
    DQ_I_QUAD_SPI : out STD_LOGIC_VECTOR (3 downto 0);
    -- Common external ports
    MEM_ADDR : out STD_LOGIC_VECTOR (0 to 22);
    DQ_O     : out STD_LOGIC_VECTOR (0 to 15);
    DQ_T     : out STD_LOGIC_VECTOR (0 to 15);
    DQ_I     : in  STD_LOGIC_VECTOR (0 to 15);
    MEM_OEN  : out STD_LOGIC;
    MEM_WEN  : out STD_LOGIC;
    -- RAM specific ports
    RAM_CEN_O : out STD_LOGIC;
    RAM_BEN_O : out STD_LOGIC_VECTOR (0 to 1);
    -- FLASH specific ports
    FLASH_ADDR : out STD_LOGIC_VECTOR (5 to 7);
    FLASH_CEN_O : out STD_LOGIC;
    FLASH_RPN_O : out STD_LOGIC;
    -- QUAD SPI specific ports
    QUAD_SPI_C_O : out STD_LOGIC;
    QUAD_SPI_S_O : out STD_LOGIC;
    MOSI_QUAD_SPI_O : out STD_LOGIC;
    MOSI_QUAD_SPI_T : out STD_LOGIC;
    MOSI_QUAD_SPI_I : in STD_LOGIC
    );
end mem_bus_mux;

architecture Behavioral of mem_bus_mux is
signal FLASH_QUAD_SPI_DQ_O_MUX: STD_LOGIC_VECTOR (0 to 15);
signal FLASH_QUAD_SPI_DQ_T_MUX: STD_LOGIC_VECTOR (0 to 15);

begin

--assign the bypass signals first
RAM_CEN_O <= CEN_RAM_I(0);
RAM_BEN_O <= BEN_RAM_I;

FLASH_ADDR <= ADDR_FLASH_IN (5 to 7);
FLASH_CEN_O <= CEN_FLASH_I(0);
FLASH_RPN_O <= RPN_FLASH_I;

QUAD_SPI_C_O <= C_QUAD_SPI_I;
QUAD_SPI_S_O <= S_QUAD_SPI_I;
MOSI_QUAD_SPI_O <= DQ_O_QUAD_SPI(0);
MOSI_QUAD_SPI_T <= DQ_T_QUAD_SPI(0);
DQ_I_QUAD_SPI(0) <= MOSI_QUAD_SPI_I;

DQ_I_QUAD_SPI(3 downto 1) <= DQ_I (13 to 15);

DQ_I_RAM <= DQ_I;
DQ_I_FLASH <= DQ_I;

-- Multiplex the addresses first
MEM_ADDR <= ADDR_RAM_IN(9 to 31) when CEN_RAM_I(0) = '0' else ADDR_FLASH_IN (8 to 30);

-- Multiplex the control signals
MEM_OEN <= OEN_RAM_I(0) when CEN_RAM_I(0) = '0' else OEN_FLASH_I(0) when CEN_FLASH_I(0) = '0' else '1';
MEM_WEN <= WEN_RAM_I when CEN_RAM_I(0) = '0' else WEN_FLASH_I when CEN_FLASH_I(0) = '0' else '1';

-- create the data IO Multiplexers

FLASH_QUAD_SPI_DQ_O_MUX <= DQ_O_FLASH when CEN_FLASH_I(0) = '0' else DQ_O_FLASH(0 to 12) & DQ_O_QUAD_SPI(3 downto 1);
FLASH_QUAD_SPI_DQ_T_MUX <= DQ_T_FLASH when CEN_FLASH_I(0) = '0' else DQ_T_FLASH(0 to 12) & DQ_T_QUAD_SPI(3 downto 1) when S_QUAD_SPI_I = '0' else X"FFFF";

DQ_O <= DQ_O_RAM when CEN_RAM_I(0) = '0' else FLASH_QUAD_SPI_DQ_O_MUX;
DQ_T <= DQ_T_RAM when CEN_RAM_I(0) = '0' else FLASH_QUAD_SPI_DQ_T_MUX;

end Behavioral;

