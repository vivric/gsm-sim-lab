----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:08:31 05/08/2014 
-- Design Name: 
-- Module Name:    Control - Behavioral 
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
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Control is
    Port ( led : out std_logic_vector(7 downto 1); -- debugging
			clk : IN  std_logic;
			reset : IN  std_logic;
			UART_IO_T : out STD_LOGIC;
         tx_valid : IN  std_logic;
			Valid_RST : out std_logic;
			sig_tx_sent : out std_logic;
			sig_tx : out std_logic;
			sig_rx : out std_logic);
end Control;

architecture Behavioral of Control is

type states is (IDLE, RST, TX, RX);

signal state : states := IDLE;

signal tb,tc : natural := 0;

signal sig_valid_reset, valid_reset : std_logic := '0'; -- used to make valid_reset signal low

signal previous_state : std_logic := '0'; -- used to check if the previous state was a reset


begin

process(clk)
begin
if rising_edge(clk) then
	case state is
		when IDLE =>
			if reset = '1' and valid_reset = '1' then -- we will change the state only when reset has gone back high to ensure the tb tc timings
					tc <= tc + 1;
						if tc = 450 then
							tc <= 0;
							state <= RST;
							sig_valid_reset <= '1';
						end if;
			elsif valid_reset <= '0' then
					sig_valid_reset <= '0';
			end if;
			--end if;
		
		when RST => -- This state is for ATR also gives  a one clock delay for the valid_reset to be captured by TX state
			--if valid_reset = '1' then
				--state <= IDLE;
			if tx_valid = '1' then
					state <= TX;
			else
					state <= RX;
			end if;
					
		when TX =>
			if valid_reset = '1' then
				state <= IDLE;
			elsif tx_valid = '0' then 
				state <= RX;
			end if;
		
		when RX =>
			if valid_reset = '1' then
				state <= IDLE;
			elsif tx_valid = '1' then
				state <= TX;
			end if;	
end case;
end if;
end process;

sig_tx_sent <= not(tx_valid);
		
process(clk)
begin
if clk'event and clk = '1' then
	case state is
		when IDLE =>
			--sig_uart <= '1'; -- pull i/o line high
			sig_tx <= '0'; -- shut up tx
			sig_rx <= '0'; -- shut up rx
			led(7 downto 1) <= "1000000";
			
		when RST =>
			--sig_uart <= '1'; -- pull i/o line high
			sig_tx <= '0'; -- shut up tx
			sig_rx <= '0'; -- shut up rx
			led(7 downto 1) <= "0100000";
			--previous_state <= '1'; -- if previous_state is 1 then we were in reset
			
		when TX =>
			sig_tx <= '1'; -- tx can start
			sig_rx <= '0'; -- shut up rx
			--led(7 downto 1) <= "0010000";
			--if previous_state = '1' then
				--atr_baud <= '1';
				--previous_state <= '0';
				
			--elsif previous_state = '0' then	
				--atr_baud <= '0';
			--end if;
			
			UART_IO_T <= '0';
		
		when RX =>
			sig_tx <= '0'; -- shut up tx
			sig_rx <= '1'; -- rx can start
			led(7 downto 1) <= "0001000";
			UART_IO_T <= '1';
			
	end case;
end if;
end process;

Valid_RST <= valid_reset;



reset_process : process(clk)
					begin
						if rising_edge(clk) then
							if(reset = '0' and valid_reset = '0') then
								tb <= tb + 1;
									if tb = 450 then
										tb <= 0;
										valid_reset <= '1';	-- signal microblaze
									end if;
								--end if;
							elsif sig_valid_reset = '1' and reset = '1' then
								valid_reset <= '0';
							end if;
						end if;
					end process;
						
end Behavioral;

