-----------------------------------------------------------------------------
--                                                                 
--  COPYRIGHT (C) 2011, Digilent RO. All rights reserved
--                                                                  
-------------------------------------------------------------------------------
-- FILE NAME            : pflash_cntrl_core.vhd
-- MODULE NAME          : Parallel Flash Controller
-- AUTHOR               : Mihaita Nagy
-- AUTHOR'S EMAIL       : mihaita.nagy@digilent.ro
-------------------------------------------------------------------------------
-- REVISION HISTORY
-- VERSION  DATE         AUTHOR         DESCRIPTION
-- 1.0 	    2011-12-19   MihaitaN       Created
-------------------------------------------------------------------------------
-- KEYWORDS : Flash, AXI4-Lite
-------------------------------------------------------------------------------
-- DESCRIPTION : This module is the Flash controller that implements the state
--               machine for the memory read and write with data steering.
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------------------
-- Module Declaration
------------------------------------------------------------------------
entity pflash_cntrl_core is
	generic(
		-- Read/Write Cycle time (ns)
		C_RD_CYCLE_NS   : integer := 140;
        C_WR_CYCLE_NS   : integer := 60
	);
	port(
		-- Flash Memory signals
		Mem_A           : out std_logic_vector(25 downto 0);
		Mem_DQ_O        : out std_logic_vector(15 downto 0);
		Mem_DQ_I        : in  std_logic_vector(15 downto 0);
		Mem_DQ_T        : out std_logic_vector(15 downto 0);
		Mem_CEN         : out std_logic;
		Mem_OEN         : out std_logic;
		Mem_WEN         : out std_logic;
		Mem_ADV         : out std_logic;
		Mem_CLK         : out std_logic;
		Mem_Wait        : in  std_logic;
		
		-- AXI Bus signals
		Bus2IP_Clk      : in  std_logic;
		Bus2IP_Resetn   : in  std_logic;
		Bus2IP_Addr     : in  std_logic_vector(31 downto 0);
		Bus2IP_Data     : in  std_logic_vector(31 downto 0);
		Bus2IP_RNW      : in  std_logic;
		Bus2IP_BE       : in  std_logic_vector(3 downto 0);
        EN_I            : in  std_logic;
		IP2Bus_Data     : out std_logic_vector(31 downto 0);
		IP2Bus_RdAck    : out std_logic;
		IP2Bus_WrAck    : out std_logic
	);
end pflash_cntrl_core;

architecture Behavioral of pflash_cntrl_core is
	
------------------------------------------------------------------------
-- Local Types
------------------------------------------------------------------------
-- State machine state names
type States is(Idle, AssertCen, AssertOenWen, WaittWr, WaittRd, Deassert, 
               SendData, Ack, Done, Delay1, Delay2);

------------------------------------------------------------------------
-- Signal Declarations
------------------------------------------------------------------------	
-- State machine signals
signal State, NState    : States := Idle;
	
-- For a 32-bit access, two cycles are needed
signal TwoCycle         : std_logic := '0';
	
-- Memory LSB
signal AddrLsb          : std_logic;
	
-- RnW registerred signal
signal RnwInt           : std_logic;
	
-- Byte enable internal bus
signal BeInt            : std_logic_vector(3 downto 0);
	
-- Internal registerred Bus2IP_Addr bus
signal AddrInt          : std_logic_vector(31 downto 0);
	
-- Internal registerred Bus2IP_Data bus
signal Data2WrInt       : std_logic_vector(31 downto 0);
	
-- Internal registerred IP2_Bus bus
signal DataRdInt        : std_logic_vector(31 downto 0);
	
-- Integer for the counter of the rd/wr cycle time
signal CntRdCycleTime   : integer range 0 to 128;
signal CntWrCycleTime   : integer range 0 to 32;

------------------------------------------------------------------------
-- Module Implementation
------------------------------------------------------------------------
	
begin

	-- Unused memory signals
	Mem_ADV <= '0';
	Mem_CLK <= '0';
	
------------------------------------------------------------------------
-- Register external signals
------------------------------------------------------------------------
    REGISTER_INT: process(Bus2IP_Clk)
    begin
        if rising_edge(Bus2IP_Clk) then
            if State = Idle and EN_I = '1' then
                RnwInt <= Bus2IP_RNW;
                BeInt <= Bus2IP_BE;
                AddrInt <= Bus2IP_Addr;
                Data2WrInt <= Bus2IP_Data;
            end if;
        end if;
    end process REGISTER_INT;
	
------------------------------------------------------------------------
-- State Machine
------------------------------------------------------------------------
    -- Initialize the state machine
    FSM_REGISTER_STATES: process(Bus2IP_Clk)
    begin
        if rising_edge(Bus2IP_Clk) then
            if Bus2IP_Resetn = '0' then
                State <= Idle;
            else
                State <= NState;
            end if;
        end if;
    end process FSM_REGISTER_STATES;

    -- State machine transitions
    FSM_TRANSITIONS: process(EN_I, TwoCycle, CntRdCycleTime,
    CntWrCycleTime, RnwInt, State)
    begin
        NState <= State;
        case State is
            when Idle =>
                if EN_I = '1' then
                    NState <= AssertCen;
                else
                    NState <= Idle;
                end if;
            when AssertCen => NState <= AssertOenWen;
            when AssertOenWen => 
                if RnwInt = '1' then
                    NState <= WaittRd;
                else
                    NState <= WaittWr;
                end if;
            when WaittRd =>
                if CntRdCycleTime = C_RD_CYCLE_NS/10 - 2 then
                    NState <= Deassert;
                else
                    NState <= WaittRd;
                end if;
            when WaittWr =>
                if CntWrCycleTime = C_WR_CYCLE_NS/10 - 2 then
                    NState <= Deassert;
                else
                    NState <= WaittWr;
                end if;
            when Deassert => NState <= SendData;
            when SendData =>
                if TwoCycle = '1' then
                    NState <= AssertCen;
                else
                    NState <= Ack;
                end if;
            when Ack =>	NState <= Done;
            when Done => NState <= Delay1;
            when Delay1 => NState <= Delay2;
            when Delay2 => NState <= Idle;
            when others => Nstate <= Idle;
        end case;
    end process FSM_TRANSITIONS;

------------------------------------------------------------------------
-- Counter for the read cycle time
------------------------------------------------------------------------
    RD_CYCLE_COUNTER: process(Bus2IP_Clk)
    begin
        if rising_edge(Bus2IP_Clk) then
            if State = WaittRd then
                CntRdCycleTime <= CntRdCycleTime + 1;
            else
                CntRdCycleTime <= 0;
            end if;
        end if;
    end process RD_CYCLE_COUNTER;

------------------------------------------------------------------------
-- Counter for the write cycle time
------------------------------------------------------------------------    
    WR_CYCLE_COUNTER: process(Bus2IP_Clk)
    begin
        if rising_edge(Bus2IP_Clk) then
            if State = WaittWr then
                CntWrCycleTime <= CntWrCycleTime + 1;
            else
                CntWrCycleTime <= 0;
            end if;
        end if;
    end process WR_CYCLE_COUNTER;

------------------------------------------------------------------------
-- Assert CEN
------------------------------------------------------------------------
    ASSERT_CEN: process(Bus2IP_Clk)
    begin
        if rising_edge(Bus2IP_Clk) then
            if State = AssertOenWen or State = WaittRd or
                State = WaittWr or State = Deassert then
                Mem_CEN <= '0';
            else
                Mem_CEN <= '1';
            end if;
        end if;
    end process ASSERT_CEN;

------------------------------------------------------------------------
-- Assert WEN/OEN
------------------------------------------------------------------------
    ASSERT_WENOEN: process(Bus2IP_Clk)
    begin
        if rising_edge(Bus2IP_Clk) then
            if State = WaittRd or State = WaittWr or State = Deassert then
                if RnwInt = '1' then
                    Mem_OEN <= '0';
                    Mem_WEN <= '1';
                else
                    Mem_OEN <= '1';
                    Mem_WEN <= '0';
                end if;
            else
                Mem_OEN <= '1';
                Mem_WEN <= '1';
            end if;
        end if;
    end process ASSERT_WENOEN;

------------------------------------------------------------------------
-- Assign the TwoCycle signal (when a 32-bit access mode needs to be 
-- performed)
------------------------------------------------------------------------
    ASSIGN_TWOCYCLE: process(Bus2IP_Clk)
    begin
        if rising_edge(Bus2IP_Clk) then
            if Bus2IP_Resetn = '0' then
                TwoCycle <= '0';
            -- 32-bit access
            elsif State = AssertCen and BeInt = "1111" then
                TwoCycle <= not TwoCycle;
            end if;
        end if;
    end process ASSIGN_TWOCYCLE;

------------------------------------------------------------------------
-- Assign AddrLsb signal
------------------------------------------------------------------------
    ASSIGN_ADDR_LSB: process(Bus2IP_Clk)
    begin
        if rising_edge(Bus2IP_Clk) then
            if Bus2IP_Resetn = '0' then
                AddrLsb <= '0';
            elsif State = AssertCen then
                case BeInt is
                    -- In 32-bit access: first the lowest address then 
                    -- the highest address is written
                    when "1111" => AddrLsb <= TwoCycle;
                    -- Higher address
                    when "1100"|"0100"|"1000" => AddrLsb <= '1';
                    -- Lower address
                    when "0011"|"0010"|"0001" => AddrLsb <= '0';
                    when others => null;
                end case;
            end if;
        end if;
    end process ASSIGN_ADDR_LSB;

------------------------------------------------------------------------
-- Assign Mem_A
------------------------------------------------------------------------
    ASSIGN_ADDRESS: process(Bus2IP_Clk)
    begin
        if rising_edge(Bus2IP_Clk) then
            if Bus2IP_Resetn = '0' then
                Mem_A <= (others => '0');
            elsif State = AssertOenWen or State = WaittWr or 
                State = WaittRd or State = Deassert then
                Mem_A <= AddrInt(26 downto 2) & AddrLsb;
            end if;
        end if;
    end process ASSIGN_ADDRESS;

------------------------------------------------------------------------
-- Assign Mem_DQ_O and Mem_DQ_T
------------------------------------------------------------------------
    ASSIGN_DATA: process(Bus2IP_Clk)
    begin
        if rising_edge(Bus2IP_Clk) then
            if Bus2IP_Resetn = '0' then
                Mem_DQ_O <= (others => '0');
            elsif ((State = AssertOenWen or State = WaittWr or 
                State = WaittRd or State = Deassert) and RnwInt = '0') then
                case BeInt is
                    when "1111" => 
                        if TwoCycle = '1' then
                            Mem_DQ_O <= Data2WrInt(15 downto 0);
                        else
                            Mem_DQ_O <= Data2WrInt(31 downto 16);
                        end if;
                    when "0011"|"0010"|"0001" => Mem_DQ_O <= Data2WrInt(15 downto 0);
                    when "1100"|"1000"|"0100" => Mem_DQ_O <= Data2WrInt(31 downto 16);
                    when others => null;
                end case;
            else
                Mem_DQ_O <= (others => '0');
            end if;
        end if;
    end process ASSIGN_DATA;

    Mem_DQ_T <= (others => '1') when RnwInt = '1' else (others => '0');

------------------------------------------------------------------------
-- Read data from the memory
------------------------------------------------------------------------
    READ_DATA: process(Bus2IP_Clk)
    begin
        if rising_edge(Bus2IP_Clk) then
            if Bus2IP_Resetn = '0' then
                DataRdInt <= (others => '0');
            elsif State = Deassert then
                case BeInt is
                    when "1111" => 
                        if TwoCycle = '1' then
                            -- Read lowest address with MSdata
                            DataRdInt(15 downto 0) <= Mem_DQ_I;
                        else
                            -- Read highest address with LSdata
                            DataRdInt(31 downto 16) <= Mem_DQ_I;
                        end if;
                    -- Perform data mirroring
                    when "0011"|"1100" => 
                        DataRdInt(15 downto 0) <= Mem_DQ_I;
                        DataRdInt(31 downto 16) <= Mem_DQ_I;
                    when "0100"|"0001" => 
                        DataRdInt(7 downto 0) <= Mem_DQ_I(7 downto 0);
                        DataRdInt(15 downto 8) <= Mem_DQ_I(7 downto 0);
                        DataRdInt(23 downto 16) <= Mem_DQ_I(7 downto 0);
                        DataRdInt(31 downto 24) <= Mem_DQ_I(7 downto 0);
                    when "1000"|"0010" => 
                        DataRdInt(7 downto 0) <= Mem_DQ_I(15 downto 8);
                        DataRdInt(15 downto 8) <= Mem_DQ_I(15 downto 8);
                        DataRdInt(23 downto 16) <= Mem_DQ_I(15 downto 8);
                        DataRdInt(31 downto 24) <= Mem_DQ_I(15 downto 8);
                    when others => null;
                end case;
            end if;
        end if;
    end process READ_DATA;

------------------------------------------------------------------------
-- Send data to AXI bus
------------------------------------------------------------------------
    REGISTER_DREAD: process(Bus2IP_Clk)
    begin
        if rising_edge(Bus2IP_Clk) then
            if Bus2IP_Resetn = '0' then
                IP2Bus_Data <= (others => '0');
            elsif ((State = SendData or State = Ack or State = Done or 
                State = Delay1 or State = Delay2) and RnwInt = '1') then
                -- Set the output data on the bus only if a read cycle was performed
                IP2Bus_Data <= DataRdInt;
            else
                IP2Bus_Data <= (others => '0');
            end if;
        end if;
    end process REGISTER_DREAD;

------------------------------------------------------------------------
-- Assign acknowledge signals
------------------------------------------------------------------------
    REGISTER_ACK: process(Bus2IP_Clk)
    begin
        if rising_edge(Bus2IP_Clk) then
            if Bus2IP_Resetn = '0' then
                IP2Bus_RdAck <= '0';
                IP2Bus_WrAck <= '0';
            elsif State = Ack and TwoCycle = '0' then
                if RnwInt = '1' then -- read
                    IP2Bus_RdAck <= '1';
                    IP2Bus_WrAck <= '0';
                else -- write
                    IP2Bus_RdAck <= '0';
                    IP2Bus_WrAck <= '1';
                end if;
            else
                IP2Bus_RdAck <= '0';
                IP2Bus_WrAck <= '0';
            end if;
        end if;
    end process REGISTER_ACK;

end Behavioral;

