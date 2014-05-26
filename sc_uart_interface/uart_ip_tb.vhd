--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:20:46 05/26/2014
-- Design Name:   
-- Module Name:   /home/ga37jom/GSM/prog/pcores/sc_uart_interface_v1_00_a/devl/projnav/uart_ip_tb.vhd
-- Project Name:  sc_uart_interface
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: uart_ip
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
 
ENTITY uart_ip_tb IS
END uart_ip_tb;
 
ARCHITECTURE behavior OF uart_ip_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT uart_ip
    PORT(
         ME_CLOCK : IN  std_logic;
         MB_CLOCK : IN  std_logic;
         UART_RST : IN  std_logic;
         --UART_IO : buffer  std_logic;
			UART_IO_I : in STD_LOGIC;
			UART_IO_O : out STD_LOGIC;
			UART_IO_T : out STD_LOGIC;
         axi_rx_data : OUT  std_logic_vector(7 downto 0);
         axi_rx_valid : OUT  std_logic;
         axi_rx_received : IN  std_logic;
         axi_tx_data : IN  std_logic_vector(7 downto 0);
         axi_tx_valid : IN  std_logic;
         axi_tx_received : OUT  std_logic;
         RESET : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ME_CLOCK : std_logic := '0';
   signal MB_CLOCK : std_logic := '0';
   signal UART_RST : std_logic := '0';
   signal axi_rx_received : std_logic := '0';
   signal axi_tx_data : std_logic_vector(7 downto 0) := (others => '0');
   signal axi_tx_valid : std_logic := '0';

	--BiDirs
   --signal UART_IO : std_logic;
	signal UART_IO_I : STD_LOGIC;
	signal		UART_IO_O : STD_LOGIC;
	signal	UART_IO_T : STD_LOGIC;

 	--Outputs
   signal axi_rx_data : std_logic_vector(7 downto 0);
   signal axi_rx_valid : std_logic;
   signal axi_tx_received : std_logic;
   signal RESET : std_logic;

   -- Clock period definitions
   constant ME_CLOCK_period : time := 10 ns;
   constant MB_CLOCK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: uart_ip PORT MAP (
          ME_CLOCK => ME_CLOCK,
          MB_CLOCK => MB_CLOCK,
          UART_RST => UART_RST,
         -- UART_IO => UART_IO,
			 UART_IO_I  => UART_IO_I,
			 UART_IO_O  => UART_IO_O,
			 UART_IO_T  => UART_IO_T,
		
          axi_rx_data => axi_rx_data,
          axi_rx_valid => axi_rx_valid,
          axi_rx_received => axi_rx_received,
          axi_tx_data => axi_tx_data,
          axi_tx_valid => axi_tx_valid,
          axi_tx_received => axi_tx_received,
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
		UART_RST <= '0';
      wait for 500*ME_CLOCK_period;	
		UART_RST <= '1';

		wait until RESET = '0';

      -- insert stimulus here 
		axi_tx_data <= "10101010";
		axi_tx_valid <= '1';
		wait until axi_tx_received = '1';
		axi_tx_valid <= '0';
		wait until axi_tx_received = '0';
		
		
		axi_tx_data <= "01010101";
		axi_tx_valid <= '1';
		wait until axi_tx_received = '1';
		axi_tx_valid <= '0';
		wait until axi_tx_received = '0';
		
		
		wait for 500 us;
		
		UART_IO_I <= '0';
			wait for 0.16 us;
		UART_IO_I <= '1';
			wait for 0.16 us;
		UART_IO_I <= '0';
			wait for 0.16 us;
		UART_IO_I <= '1';
			wait for 0.16 us;
		UART_IO_I <= '0';
			wait for 0.16 us;
		UART_IO_I <= '1';
			wait for 0.16 us;
		UART_IO_I <= '0';
			wait for 0.16 us;
		UART_IO_I <= '1';
			wait for 0.16 us;
		UART_IO_I <= '0';
			wait for 0.16 us;
		UART_IO_I <= '0';
			wait for 0.16 us;
		UART_IO_I <= '1';
			wait for 0.16 us;
			
		
		wait;
   end process;

END;
