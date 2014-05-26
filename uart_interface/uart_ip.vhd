----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:12:27 05/26/2014 
-- Design Name: 
-- Module Name:    uart_ip - Behavioral 
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

entity uart_ip is
  port
  (
		 ME_CLOCK                       : in  std_logic;
		 MB_CLOCK                       : in  std_logic;
		 UART_RST                       : in  std_logic;
		-- UART_IO                        : buffer  std_logic;
		UART_IO_I                       : in  std_logic;
		UART_IO_O                       : out  std_logic;
		UART_IO_T                       : out  std_logic;
		 
		 axi_rx_data                    : out  std_logic_vector(7 downto 0);
		 axi_rx_valid                   : out  std_logic;
		 axi_rx_received                : in   std_logic;
		 
		 axi_tx_data                    : in   std_logic_vector(7 downto 0);
		 axi_tx_valid                   : in   std_logic;
		 axi_tx_received                : out  std_logic;
		 RESET                          : out  std_logic
  );
end uart_ip;

architecture Behavioral of uart_ip is
 
    COMPONENT reset_cdc
    PORT(
         MB_CLOCK : IN  std_logic;
			valid_reset : IN  std_logic;
			synched_reset : OUT  std_logic
        );
    END COMPONENT;
 
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
	 
    COMPONENT uart_top
    PORT(
	 
			ME_CLK : in  STD_LOGIC;
			--UART_IO : buffer STD_LOGIC;
			UART_IO_I                       : in  std_logic;
			UART_IO_O                       : out  std_logic;
			UART_IO_T                       : out  std_logic;
			reset : in STD_LOGIC;
			valid_RST : out std_logic;

			TX_data : in std_logic_vector(7 downto 0);
			TX_valid : in STD_LOGIC ;
			tx_sent : out std_logic; 

			RX_data : out std_logic_vector(7 downto 0);
			RX_valid : out std_logic
        );
    END COMPONENT;
	 
	 
	 signal valid_reset : std_logic;
	 
	 signal rx_data : std_logic_vector(7 downto 0);
	 signal rx_valid : std_logic;
	 
	 signal tx_sent : std_logic;
	 signal tx_data : std_logic_vector(7 downto 0);
	 signal tx_valid : std_logic;

begin


   reset_cdc_inst: reset_cdc PORT MAP (
          MB_CLOCK => MB_CLOCK,
			 valid_reset => valid_reset,
          synched_reset => RESET
        );

   rx_cdc_inst: rx_cdc PORT MAP (
          rx_data => rx_data,
          rx_valid => rx_valid,
          axi_rx_received => axi_rx_received,
          axi_rx_valid => axi_rx_valid,
          axi_rx_data => axi_rx_data,
          ME_CLOCK => ME_CLOCK,
          MB_CLOCK => MB_CLOCK,
          RESET => valid_reset
        );

   tx_cdc_inst: tx_cdc PORT MAP (
          axi_tx_data => axi_tx_data,
          axi_tx_valid => axi_tx_valid,
          axi_tx_received => axi_tx_received,
          tx_sent => tx_sent,
          tx_valid => tx_valid,
          tx_data => tx_data,
          ME_CLOCK => ME_CLOCK,
          MB_CLOCK => MB_CLOCK,
          RESET => valid_reset
        );

   uart_top_inst: uart_top PORT MAP (
         ME_CLK => ME_CLOCK,
			reset => UART_RST,
			UART_IO_I  => UART_IO_I,
			UART_IO_O  => UART_IO_O,
			UART_IO_T  => UART_IO_T,
			
			valid_RST    => valid_reset,

			RX_data => rx_data,
			RX_valid => rx_valid,

			tx_sent => tx_sent,
			TX_valid => tx_valid,
			TX_data => tx_data
        );


end Behavioral;

