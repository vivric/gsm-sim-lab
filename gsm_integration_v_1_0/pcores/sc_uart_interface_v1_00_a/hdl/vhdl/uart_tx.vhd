library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all; 

entity UART_TX_CTRL is
    Port (	CLK : in  STD_LOGIC;
				UART : inout  STD_LOGIC;
				TX_data : std_logic_vector(7 downto 0);
				tx_sent : out std_logic;
				sig_tx_sent : in std_logic; -- signalling between tx and control module
				sig_tx : in STD_LOGIC
			  );
end UART_TX_CTRL;

architecture Behavioral of UART_TX_CTRL is

type TX_STATE_TYPE is (RDY, LOAD_BIT, SEND_BIT);

signal BIT_TMR_MAX_TX : std_logic_vector(8 downto 0) := "101110011"; --372 for ATR only

--signal BIT_TMR_MAX_IO : natural := 16;--:= "000001111"; -- 16 for normal transmission

--signal BIT_TMR_MAX : natural;

constant delay_max : natural := 1116; -- 372*3 interframe delay

signal delay : natural := 0;

constant BIT_INDEX_MAX : natural := 11;
--Counter that keeps track of the number of clock cycles the current bit has been held stable over the
--UART TX line. It is used to signal when the ne
signal bitTmr_tx : natural := 0;

--combinatorial logic that goes high when bitTmr has counted to the proper value to ensure
--a 9600 baud rate
signal bitDone_tx : std_logic;

--Contains the index of the next bit in txData that needs to be transferred 
signal bitIndex : natural;

--a register that holds the current data being sent over the UART TX line
signal txBit : std_logic := '1';

--A register that contains the whole data packet to be sent, including start and stop bits. 
signal Packed_Data : std_logic_vector(10 downto 0);

signal parity_tx : std_logic:= '0';

signal txState : TX_STATE_TYPE := RDY;

--signal fifo : std_logic_vector(175 downto 0) := x"44009081832A00621321FE73E03180C71F800096BE3B";

--signal TX_data : std_logic_vector(7 downto 0) := x"3B";
signal N : natural := 8;

--signal var : std_logic := '1';	-- used to stop tx after the last frame

begin
--Next state logic
next_txState_process : process (CLK)
begin
if (rising_edge(CLK) and sig_tx = '1') then 
case txState is 
when RDY =>
	if delay = delay_max then 
			delay <= 0;
			txState <= LOAD_BIT;	
	else	
		delay <= delay + 1;
	end if;	
	
when LOAD_BIT =>
txState <= SEND_BIT;
when SEND_BIT =>
if (bitDone_tx = '1') then
if (bitIndex = BIT_INDEX_MAX) then
	txState <= RDY;
else
txState <= LOAD_BIT;
end if;
end if;
when others=> --should never be reached
txState <= RDY;
end case;
end if;
end process;

bit_timing_process : process (CLK)
begin
if (rising_edge(CLK) and sig_tx = '1') then
if (txState = RDY) then
bitTmr_tx <= 0;
else
if (bitDone_tx = '1') then
bitTmr_tx <= 0;
else
bitTmr_tx <= bitTmr_tx + 1;
end if;
end if;
end if;
end process;

bitDone_tx <= '1' when (bitTmr_tx = BIT_TMR_MAX_TX) else
'0';

bit_counting_process : process (CLK)
begin
if (rising_edge(CLK) and sig_tx = '1') then
if (txState = RDY) then
bitIndex <= 0;
elsif (txState = LOAD_BIT) then
bitIndex <= bitIndex + 1;
end if;
end if;
end process;

tx_data_latch_process : process (CLK)
begin
if (rising_edge(CLK) and sig_tx = '1') then
Packed_Data <= '1' & parity_tx & TX_data & '0';

end if;
end process;

parity_tx <= TX_data(0) xor TX_data(1) xor TX_data(2) xor TX_data(3) xor TX_data(4) xor TX_data(5) xor TX_data(6) xor TX_data(7);  

tx_bit_process : process (CLK)
begin
if (rising_edge(CLK) and sig_tx = '1') then
if (txState = RDY) then
txBit <= '1';
elsif (txState = LOAD_BIT) then
txBit <= Packed_Data(bitIndex);
end if;
end if;
end process;

handshaking : process(CLK)
begin
if rising_edge(CLK) then
	if bitIndex = BIT_INDEX_MAX then
		tx_sent <= '1';
	if sig_tx_sent = '1' then
		tx_sent <= '0';		
	end if;
	end if;
end if;
end process;




--DATA_IN <= fifo((N-1) downto (N-8));
UART <= txBit when sig_tx = '1' else 'Z';

end Behavioral;