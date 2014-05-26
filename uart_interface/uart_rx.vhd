library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity UART_RX_CTRL is
    Port ( CLK : in  STD_LOGIC;
				UART : in  STD_LOGIC;
				RX_data : out std_logic_vector(7 downto 0);
				RX_valid : out std_logic; 
				sig_rx : in STD_LOGIC
           );
end UART_RX_CTRL;

architecture Behavioral of UART_RX_CTRL is

type RX_STATE_TYPE is (RDY, LOAD_BIT, RECEIVE_BIT);

constant BIT_TMR_MAX_RX : std_logic_vector(8 downto 0) := "000001111"; --16 for normal reception 
constant BIT_INDEX_MAX : natural := 11;
--Counter that keeps track of the number of clock cycles the current bit has been held stable over the
--UART TX line. It is used to signal when the ne
signal bitTmr_rx : std_logic_vector(8 downto 0) := (others => '0');

--combinatorial logic that goes high when bitTmr has counted to the proper value to ensure
--a 9600 baud rate
signal bitDone_rx : std_logic;

--Contains the index of the next bit in txData that needs to be transferred 
signal bitIndex : natural;

--a register that holds the current data being sent over the UART TX line
signal rxBit : std_logic ;

signal parity_rx : std_logic := '0';

--A register that contains the whole data packet to be sent, including start and stop bits. 
signal packed_data : std_logic_vector(10 downto 0);

--signal pure_data : std_logic_vector(7 downto 0);

signal rxState : RX_STATE_TYPE := RDY;

begin

--Next state logic
next_rxState_process : process (CLK)
begin
if (rising_edge(CLK) and sig_rx = '1') then
case rxState is 
when RDY =>
RX_valid <= '0';
if (rxBit = '0') then
rxState <= LOAD_BIT;
end if;
when LOAD_BIT =>
rxState <= RECEIVE_BIT;
when RECEIVE_BIT =>
if (bitDone_rx = '1') then
if (bitIndex = BIT_INDEX_MAX) then
	RX_valid <= '1';
	RX_data <= Packed_data(8 downto 1);
	rxState <= RDY;
else
rxState <= LOAD_BIT;
end if;
end if;
when others=> --should never be reached
rxState <= RDY;
end case;
end if;
end process;

bit_timing_process : process (CLK)
begin
if (rising_edge(CLK) and sig_rx = '1') then
if (rxState = RDY) then
bitTmr_rx <= (others => '0');
else
if (bitDone_rx = '1') then
bitTmr_rx <= (others => '0');
else
bitTmr_rx <= bitTmr_rx + 1;
end if;
end if;
end if;
end process;

bitDone_rx <= '1' when (bitTmr_rx = BIT_TMR_MAX_RX) else
'0';

bit_counting_process : process (CLK)
begin
if (rising_edge(CLK) and sig_rx = '1') then
if (rxState = RDY) then
bitIndex <= 0;
elsif (rxState = LOAD_BIT) then
bitIndex <= bitIndex + 1;
end if;
end if;
end process;

rx_data_latch_process : process (CLK)
begin
if (rising_edge(CLK) and sig_rx = '1') then
if (rxState = LOAD_BIT) then
end if;
end if;
end process;

rx_bit_process : process (CLK )
begin
if (rising_edge(CLK) and sig_rx = '1') then
if (rxState = LOAD_BIT) then
Packed_Data(bitIndex) <= rxBit ;
--parity calc
if(rxBit = '1' and bitIndex < 9 and bitIndex > 0) then
parity_rx <= not parity_rx;
end if;
end if;
end if;
end process;

rxBit <= UART;

end Behavioral;