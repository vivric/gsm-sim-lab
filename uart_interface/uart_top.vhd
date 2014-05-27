----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:11:24 04/29/2014 
-- Design Name: 
-- Module Name:    uart_top - Behavioral 
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

entity uart_top is
port ( --led : out std_logic_vector(7 downto 1); -- debugging

		ME_CLK : in  STD_LOGIC;
		UART_IO_I : in STD_LOGIC := '1';
		UART_IO_O : out STD_LOGIC := '1';
		UART_IO_T : out STD_LOGIC := '1';
		reset : in STD_LOGIC;
		valid_RST : out std_logic;
		
		TX_data : in std_logic_vector(7 downto 0);
		TX_valid : in STD_LOGIC ;
		tx_sent : out std_logic; 
		
		RX_data : out std_logic_vector(7 downto 0);
		RX_valid : out std_logic
		
		 
       );

end uart_top;

architecture Behavioral of uart_top is

COMPONENT UART_TX_CTRL
	
    PORT(	CLK : in  STD_LOGIC;
				UART : out  STD_LOGIC;
				TX_data : in std_logic_vector(7 downto 0);
				TX_sent : out std_logic;
				sig_tx_sent : in std_logic;
				sig_tx : in STD_LOGIC);
END COMPONENT;
	 
	 
COMPONENT UART_RX_CTRL
    PORT(	CLK : in  STD_LOGIC;
				UART : in  STD_LOGIC;
				RX_data : out std_logic_vector(7 downto 0);
				RX_valid : out std_logic; 
				sig_rx : in STD_LOGIC);
END COMPONENT;


COMPONENT Control
    PORT( --led : out std_logic_vector(7 downto 1); -- debugging
         clk : IN  std_logic;
			reset : IN  std_logic;
			UART_IO_T : out STD_LOGIC;
         tx_valid : IN  std_logic;
			valid_RST : out std_logic;
			sig_tx_sent : out std_logic;
			sig_tx : out std_logic;
			sig_rx : out std_logic
          );
    END COMPONENT;

signal  sig_tx, sig_rx, sig_tx_sent : std_logic := '0';
--signal tx_valid : std_logic := '1' ;
--signal atr_baud: std_logic;
--tx_fifo
begin


TX : UART_TX_CTRL port map (ME_CLK, UART_IO_O, TX_data, tx_sent, sig_tx_sent, sig_tx); --   led for debugging

RX : UART_RX_CTRL port map (ME_CLK, UART_IO_I, RX_data, RX_valid, sig_rx);

CTRL : Control port map (ME_clk, reset, UART_IO_T, tx_valid, valid_RST, sig_tx_sent, sig_tx, sig_rx); --led for debugging

end Behavioral;

