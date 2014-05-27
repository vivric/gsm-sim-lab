--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:44:35 05/14/2014
-- Design Name:   
-- Module Name:   /home/ga37jom/GSM/cdc/cdc/rx_cdc_tb.vhd
-- Project Name:  cdc
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rx_cdc
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
 
ENTITY rx_cdc_tb IS
END rx_cdc_tb;
 
ARCHITECTURE behavior OF rx_cdc_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rx_cdc
    PORT(
         rx_data : IN  std_logic_vector(7 downto 0);
         rx_valid : IN  std_logic;
         axi_rx_received : IN  std_logic;
         axi_rx_valid : OUT  std_logic;
         axi_rx_data : OUT  std_logic_vector(7 downto 0);
         ME_CLOCK : IN  std_logic;
         MB_CLOCK : IN  std_logic;
         RESET : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal rx_data : std_logic_vector(7 downto 0) := (others => '0');
   signal rx_valid : std_logic := '0';
   signal axi_rx_received : std_logic := '0';
   signal ME_CLOCK : std_logic := '0';
   signal MB_CLOCK : std_logic := '0';
   signal RESET : std_logic := '0';

 	--Outputs
   signal axi_rx_valid : std_logic;
   signal axi_rx_data : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant ME_CLOCK_period : time := 10 ns;
   constant MB_CLOCK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rx_cdc PORT MAP (
          rx_data => rx_data,
          rx_valid => rx_valid,
          axi_rx_received => axi_rx_received,
          axi_rx_valid => axi_rx_valid,
          axi_rx_data => axi_rx_data,
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
		rx_data <= "10101010";
		rx_valid <= '1';
      wait for ME_CLOCK_period*2;
		rx_valid <= '0';
		
		
		wait for 300 ns;	
		
		rx_data <= "01010101";
		rx_valid <= '1';
      wait for ME_CLOCK_period*2;
		rx_valid <= '0';

      wait;
   end process;

   -- AXI process
   axi_proc: process(MB_CLOCK)
   begin		
		if(rising_edge(MB_CLOCK)) then
			axi_rx_received <= axi_rx_valid;
		end if;
   end process;

END;
