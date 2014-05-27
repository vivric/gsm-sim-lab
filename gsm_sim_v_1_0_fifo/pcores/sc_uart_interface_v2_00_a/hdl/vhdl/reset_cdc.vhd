----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:42:15 05/26/2014 
-- Design Name: 
-- Module Name:    reset_cdc - Behavioral 
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

entity reset_cdc is
    Port ( MB_CLOCK : in  STD_LOGIC;
			  valid_reset : in  STD_LOGIC;
           synched_reset : out  STD_LOGIC);
end reset_cdc;

architecture Behavioral of reset_cdc is
	signal pre_synched_reset : STD_LOGIC := '0';
begin

process(MB_CLOCK)
begin
	if(rising_edge(MB_CLOCK)) then
		synched_reset <= pre_synched_reset;
		pre_synched_reset <= valid_reset;
	end if;
end process;

end Behavioral;

