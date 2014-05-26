-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
  port (
    RS232_Uart_1_sout : out std_logic;
    RS232_Uart_1_sin : in std_logic;
    RESET : in std_logic;
    Push_Buttons_4Bits_TRI_I : in std_logic_vector(0 to 3);
    LEDs_8Bits_TRI_O : out std_logic_vector(7 downto 0);
    GCLK : in std_logic;
    DIP_Switches_8Bits_TRI_I : in std_logic_vector(7 downto 0);
    sc_uart_interface_modified_0_led_pin : out std_logic_vector(6 downto 0);
    sc_uart_interface_modified_0_UART_IO : inout std_logic;
    sc_uart_interface_modified_0_UART_CLK_pin : in std_logic;
    sc_uart_interface_modified_0_UART_RST_pin : in std_logic
  );
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
    port (
      RS232_Uart_1_sout : out std_logic;
      RS232_Uart_1_sin : in std_logic;
      RESET : in std_logic;
      Push_Buttons_4Bits_TRI_I : in std_logic_vector(0 to 3);
      LEDs_8Bits_TRI_O : out std_logic_vector(7 downto 0);
      GCLK : in std_logic;
      DIP_Switches_8Bits_TRI_I : in std_logic_vector(7 downto 0);
      sc_uart_interface_modified_0_led_pin : out std_logic_vector(6 downto 0);
      sc_uart_interface_modified_0_UART_IO : inout std_logic;
      sc_uart_interface_modified_0_UART_CLK_pin : in std_logic;
      sc_uart_interface_modified_0_UART_RST_pin : in std_logic
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system : component is "user_black_box";

begin

  system_i : system
    port map (
      RS232_Uart_1_sout => RS232_Uart_1_sout,
      RS232_Uart_1_sin => RS232_Uart_1_sin,
      RESET => RESET,
      Push_Buttons_4Bits_TRI_I => Push_Buttons_4Bits_TRI_I,
      LEDs_8Bits_TRI_O => LEDs_8Bits_TRI_O,
      GCLK => GCLK,
      DIP_Switches_8Bits_TRI_I => DIP_Switches_8Bits_TRI_I,
      sc_uart_interface_modified_0_led_pin => sc_uart_interface_modified_0_led_pin,
      sc_uart_interface_modified_0_UART_IO => sc_uart_interface_modified_0_UART_IO,
      sc_uart_interface_modified_0_UART_CLK_pin => sc_uart_interface_modified_0_UART_CLK_pin,
      sc_uart_interface_modified_0_UART_RST_pin => sc_uart_interface_modified_0_UART_RST_pin
    );

end architecture STRUCTURE;

