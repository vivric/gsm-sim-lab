----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:58:36 05/14/2014 
-- Design Name: 
-- Module Name:    rx_cdc - Behavioral 
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

entity rx_cdc is
    Port ( rx_data : in  STD_LOGIC_VECTOR (7 downto 0);
           rx_valid : in  STD_LOGIC;
           axi_rx_received : in  STD_LOGIC;
           axi_rx_valid : out  STD_LOGIC;
           axi_rx_data : out  STD_LOGIC_VECTOR (7 downto 0);
           ME_CLOCK : in  STD_LOGIC;
           MB_CLOCK : in  STD_LOGIC;
			  RESET : in  STD_LOGIC);
end rx_cdc;

architecture Behavioral of rx_cdc is

signal data : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal data_erasable : STD_LOGIC := '1'; -- means that the data can be erased
signal ack_received 	: STD_LOGIC := '0'; -- means that the data was transmitted to the AXI
signal ack_coming		: STD_LOGIC := '0'; -- means that the data is currently transmitting

signal synched_axi_rx_received : STD_LOGIC := '0';  	  -- for Clock Domain Crossing
signal pre_synched_axi_rx_received : STD_LOGIC := '0';  

signal synched_axi_rx_valid : STD_LOGIC := '0';  	  -- for Clock Domain Crossing
signal pre_synched_axi_rx_valid : STD_LOGIC := '0';  

begin

axi_rx_data <= data;

process(ME_CLOCK)
begin
	if(rising_edge(ME_CLOCK)) then
	
		if(RESET = '1') then
			data <= 	"00000000";
			data_erasable <= 	'1';
			ack_received  <= 	'0';
			ack_coming	 <= 	'0';
			
		elsif(data_erasable = '1' and rx_valid = '1') then
			data <= rx_data;
			data_erasable <= 	'0';
			ack_received  <= 	'0';
			ack_coming	 <= 	'1';
			
		else
			data <= data;
			
			if(data_erasable = '0' and ack_received ='1' and synched_axi_rx_received = '0') then
				data_erasable <= 	'1';
			else
				data_erasable <= data_erasable;
			end if;
		
			if(data_erasable = '0' and synched_axi_rx_received = '1') then
				ack_received <= 	'1';
			else
				ack_received <= ack_received;
			end if;
			
			if(synched_axi_rx_received = '1') then
				ack_coming <= 	'0';
			else
				ack_coming <= ack_coming;
			end if;
			
		end if;
	end if;
end process;

process(ME_CLOCK)
begin
	if(rising_edge(ME_CLOCK)) then
		synched_axi_rx_received <= pre_synched_axi_rx_received;
		pre_synched_axi_rx_received <= axi_rx_received;		
	end if;
end process;

process(MB_CLOCK)
begin
	if(rising_edge(MB_CLOCK)) then
		axi_rx_valid <= pre_synched_axi_rx_valid;
		pre_synched_axi_rx_valid <= ack_coming;
	end if;
end process;

end Behavioral;

