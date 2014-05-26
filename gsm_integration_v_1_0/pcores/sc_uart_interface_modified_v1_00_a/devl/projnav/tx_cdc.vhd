----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:58:36 05/14/2014 
-- Design Name: 
-- Module Name:    tx_cdc - Behavioral 
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

entity tx_cdc is
    Port ( axi_tx_data : in  STD_LOGIC_VECTOR (7 downto 0);
           axi_tx_valid : in  STD_LOGIC;
           axi_tx_received : out  STD_LOGIC;
           tx_sent : in  STD_LOGIC;
           tx_valid : out  STD_LOGIC;
           tx_data : out  STD_LOGIC_VECTOR (7 downto 0);
           ME_CLOCK : in  STD_LOGIC;
           MB_CLOCK : in  STD_LOGIC;
			  RESET : in  STD_LOGIC);
end tx_cdc;

architecture Behavioral of tx_cdc is

signal data : STD_LOGIC_VECTOR (7 downto 0) := "00000000";

signal data_received 	: STD_LOGIC := '0'; -- means that the data was transmitted from the AXI
signal data_erasable : STD_LOGIC := '1'; -- means that the data can be erased

signal synched_axi_tx_received : STD_LOGIC := '0';  	  -- for Clock Domain Crossing
signal pre_synched_axi_tx_received : STD_LOGIC := '0';

signal synched_axi_tx_valid : STD_LOGIC := '0';  	  -- for Clock Domain Crossing
signal pre_synched_axi_tx_valid : STD_LOGIC := '0';  

begin

tx_valid <= not(data_erasable);
tx_data <= data;

process(ME_CLOCK)
begin
	if(rising_edge(ME_CLOCK)) then
	
		if(RESET = '1') then
			data <= 	"00000000";
			data_erasable <=	'1';
			data_received <=	'0';
			
		elsif(data_erasable = '1' and synched_axi_tx_valid = '1' and tx_sent = '0') then
			data <= axi_tx_data;
			data_erasable <= '0';
			data_received <=	'1';			
		else
			data <= data;
			
			-- when the TX is sent, we can write a new data
			if(tx_sent = '1' and data_erasable = '0') then
				data_erasable <= '1';
			else
				data_erasable <= data_erasable;
			end if;
			
			--we can tell the axi to send another data when we received it and acked it
			if(data_received = '1' and synched_axi_tx_valid = '0') then
				data_received <= '0';
			else
				data_received <= data_received;
			end if;
			
		end if;
	end if;
end process;

process(ME_CLOCK)
begin
	if(rising_edge(ME_CLOCK)) then
		synched_axi_tx_valid <= pre_synched_axi_tx_valid;
		pre_synched_axi_tx_valid <= axi_tx_valid;		
	end if;
end process;

process(MB_CLOCK)
begin
	if(rising_edge(MB_CLOCK)) then
		axi_tx_received <= pre_synched_axi_tx_received;
		pre_synched_axi_tx_received <= data_received;
	end if;
end process;

end Behavioral;

