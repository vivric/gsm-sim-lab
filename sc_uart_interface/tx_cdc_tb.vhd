--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:24:13 05/16/2014
-- Design Name:   
-- Module Name:   /home/ga37jom/GSM/cdc/cdc/tx_cdc_tb.vhd
-- Project Name:  cdc
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: tx_cdc
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tx_cdc_tb IS
END tx_cdc_tb;
 
ARCHITECTURE behavior OF tx_cdc_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT tx_cdc
    PORT(
         axi_tx_data : IN  std_logic_vector(7 downto 0);
         axi_tx_valid : IN  std_logic;
         axi_tx_received : OUT  std_logic;
         tx_sent : IN  std_logic;
         tx_valid : OUT  std_logic;
         tx_data : OUT  std_logic_vector(7 downto 0);
         ME_CLOCK : IN  std_logic;
         MB_CLOCK : IN  std_logic;
         RESET : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal axi_tx_data : std_logic_vector(7 downto 0) := (others => '0');
   signal axi_tx_valid : std_logic := '0';
   signal tx_sent : std_logic := '0';
   signal ME_CLOCK : std_logic := '0';
   signal MB_CLOCK : std_logic := '0';
   signal RESET : std_logic := '0';

 	--Outputs
   signal axi_tx_received : std_logic;
   signal tx_valid : std_logic;
   signal tx_data : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant ME_CLOCK_period : time := 10 ns;
   constant MB_CLOCK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: tx_cdc PORT MAP (
          axi_tx_data => axi_tx_data,
          axi_tx_valid => axi_tx_valid,
          axi_tx_received => axi_tx_received,
          tx_sent => tx_sent,
          tx_valid => tx_valid,
          tx_data => tx_data,
          ME_CLOCK => ME_CLOCK,
          MB_CLOCK => MB_CLOCK,
          RESET => RESET
        );

   -- Clock process definitions
   ME_CLOCK_process :process
   begin
		ME_CLOCK <= '0';
		wait for ME_CLOCK_period/2;
		ME_CLOCK <= '1';
		wait for ME_CLOCK_period/2;
   end process;
	
 MB_CLOCK <= ME_CLOCK after 2ns;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		RESET <= '1';
      wait for 100 ns;	
		RESET <= '0';

      wait for ME_CLOCK_period*10;

      -- insert stimulus here 
		axi_tx_data <= "10101010";
		axi_tx_valid <= '1';
      wait until(axi_tx_received = '1');
		wait for MB_CLOCK_period;
		axi_tx_valid <= '0';
      wait until(axi_tx_received = '0');
		
		
		wait for 300 ns;	
		
		axi_tx_data <= "01010101";
		axi_tx_valid <= '1';
      wait until(axi_tx_received = '1');
		wait for MB_CLOCK_period;
		axi_tx_valid <= '0';
      wait until(axi_tx_received = '0');
		wait for MB_CLOCK_period;
		
		axi_tx_data <= "01010100";
		axi_tx_valid <= '1';
      wait until(axi_tx_received = '1');
		wait for MB_CLOCK_period;
		axi_tx_valid <= '0';
      wait until(axi_tx_received = '0');
		wait for MB_CLOCK_period;
		
		

      wait;
   end process;
	
	
	consum:process(ME_CLOCK)
	variable countdown : integer := 0;
	begin
		if(rising_edge(ME_CLOCK)) then
			if(countdown > 1) then
				countdown := countdown - 1;
			elsif(tx_valid='1' and tx_sent = '0') then
				if(countdown = 1) then
					tx_sent <= '1';
					countdown := 0;
				else
					countdown := 50;
				end if;
			elsif(tx_sent = '1') then
				tx_sent <= '0';
			end if;
		end if;
	end process;

END;
