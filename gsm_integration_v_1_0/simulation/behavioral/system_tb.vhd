-------------------------------------------------------------------------------
-- system_tb.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

-- START USER CODE (Do not remove this line)

-- User: Put your libraries here. Code in this
--       section will not be overwritten.

-- END USER CODE (Do not remove this line)

entity system_tb is
end system_tb;

architecture STRUCTURE of system_tb is

  constant GCLK_PERIOD : time := 10000.000000 ps;
  constant RESET_LENGTH : time := 160000 ps;

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

  -- Internal signals

  signal DIP_Switches_8Bits_TRI_I : std_logic_vector(7 downto 0);
  signal GCLK : std_logic;
  signal LEDs_8Bits_TRI_O : std_logic_vector(7 downto 0);
  signal Push_Buttons_4Bits_TRI_I : std_logic_vector(0 to 3);
  signal RESET : std_logic;
  signal RS232_Uart_1_sin : std_logic;
  signal RS232_Uart_1_sout : std_logic;
  signal sc_uart_interface_modified_0_UART_CLK_pin : std_logic;
  signal sc_uart_interface_modified_0_UART_IO : std_logic;
  signal sc_uart_interface_modified_0_UART_RST_pin : std_logic;
  signal sc_uart_interface_modified_0_led_pin : std_logic_vector(6 downto 0);

  -- START USER CODE (Do not remove this line)

  -- User: Put your signals here. Code in this
  --       section will not be overwritten.

  -- END USER CODE (Do not remove this line)

begin

  dut : system
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

  -- Clock generator for GCLK

  process
  begin
    GCLK <= '0';
    loop
      wait for (GCLK_PERIOD/2);
      GCLK <= not GCLK;
    end loop;
  end process;

  -- Reset Generator for RESET

  process
  begin
    RESET <= '1';
    wait for (RESET_LENGTH);
    RESET <= not RESET;
    wait;
  end process;

  -- START USER CODE (Do not remove this line)

  -- User: Put your stimulus here. Code in this
  --       section will not be overwritten.

  -- END USER CODE (Do not remove this line)

end architecture STRUCTURE;

