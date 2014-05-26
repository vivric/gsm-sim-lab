-----------------------------------------------------------------------------
--                                                                 
--  COPYRIGHT (C) 2011, Digilent RO. All rights reserved
--                                                                  
-------------------------------------------------------------------------------
-- FILE NAME            : d_shared_bus_mem.vhd
-- MODULE NAME          : Digilent Shared-Bus Memory Controller
-- AUTHOR               : Mihaita Nagy
-- AUTHOR'S EMAIL       : mihaita.nagy@digilent.ro
-------------------------------------------------------------------------------
-- REVISION HISTORY
-- VERSION  DATE         AUTHOR         DESCRIPTION
-- 1.0 	    2011-12-19   MihaitaN       Created
-------------------------------------------------------------------------------
-- KEYWORDS : Quad-SPI, Flash, PSRAM, AXI4-Lite
-------------------------------------------------------------------------------
-- DESCRIPTION : This module implements a memory data/address bus multiplexer
-- and controller. It is specific for Digilent Nexys3 board.
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library proc_common_v3_00_a;
use proc_common_v3_00_a.proc_common_pkg.all;
use proc_common_v3_00_a.ipif_pkg.all;

library axi_lite_ipif_v1_01_a;
use axi_lite_ipif_v1_01_a.axi_lite_ipif;

------------------------------------------------------------------------
-- Module Declaration
------------------------------------------------------------------------
entity d_shared_mem_bus is
    generic
    (
        C_USE_QUAD_SPI      : integer           := 1;
        C_USE_PSRAM         : integer           := 1;
        C_USE_FLASH         : integer           := 1;
        
        -- PSRAM Read/Write Cycle time (ns)
        C_PSRAM_RW_CYCLE_NS : integer           := 100;
        -- Flash Read Cycle time (ns)
        C_FLASH_RD_CYCLE_NS : integer           := 140;
        -- Flash Write Cycle time (ns)
        C_FLASH_WR_CYCLE_NS : integer           := 60;
        
        -- Quad-SPI
        C_QSPI_BASEADDR     : std_logic_vector  := X"FFFFFFFF";
        C_QSPI_HIGHADDR     : std_logic_vector  := X"00000000";
        
        -- PSRAM
        C_PSRAM_BASEADDR    : std_logic_vector  := X"FFFFFFFF";
        C_PSRAM_HIGHADDR    : std_logic_vector  := X"00000000";
        
        -- Parallel Flash
        C_FLASH_BASEADDR    : std_logic_vector  := X"FFFFFFFF";
        C_FLASH_HIGHADDR    : std_logic_vector  := X"00000000"
    );
    port
    (
        -- Common signals
        Mem_Addr_O          : out std_logic_vector(25 downto 0);
        Mem_DQ_O            : out std_logic_vector(16 downto 0);
        Mem_DQ_T            : out std_logic_vector(16 downto 0);
        Mem_DQ_I            : in  std_logic_vector(16 downto 0);
        Mem_OEN_O           : out std_logic;
        Mem_WEN_O           : out std_logic;
        
        -- Quad-SPI signals
        QSPI_Mem_S_O        : out std_logic;
        QSPI_Mem_C_O        : out std_logic;
                
        -- Flash signals
        FLASH_Mem_CEN_O     : out std_logic;
        FLASH_Mem_RPN_O     : out std_logic;
        
        -- RAM signals
        PSRAM_Mem_CEN_O     : out std_logic;
        PSRAM_Mem_ADV_O     : out std_logic;
        PSRAM_Mem_CRE_O     : out std_logic;
        PSRAM_Mem_CLK_O     : out std_logic;
        PSRAM_Mem_Wait_I    : in  std_logic;
        PSRAM_Mem_UB_O      : out std_logic;
        PSRAM_Mem_LB_O      : out std_logic;
    
        -- AXI bus signals
        S_AXI_ACLK          : in  std_logic;
        S_AXI_ARESETN       : in  std_logic;
        S_AXI_AWADDR        : in  std_logic_vector(31 downto 0);
        S_AXI_AWVALID       : in  std_logic;
        S_AXI_WDATA         : in  std_logic_vector(31 downto 0);
        S_AXI_WSTRB         : in  std_logic_vector(3 downto 0);
        S_AXI_WVALID        : in  std_logic;
        S_AXI_BREADY        : in  std_logic;
        S_AXI_ARADDR        : in  std_logic_vector(31 downto 0);
        S_AXI_ARVALID       : in  std_logic;
        S_AXI_RREADY        : in  std_logic;
        S_AXI_ARREADY       : out std_logic;
        S_AXI_RDATA         : out std_logic_vector(31 downto 0);
        S_AXI_RRESP         : out std_logic_vector(1 downto 0);
        S_AXI_RVALID        : out std_logic;
        S_AXI_WREADY        : out std_logic;
        S_AXI_BRESP         : out std_logic_vector(1 downto 0);
        S_AXI_BVALID        : out std_logic;
        S_AXI_AWREADY       : out std_logic
    );

  attribute MAX_FANOUT                  : string;
  attribute SIGIS                       : string;
  attribute MAX_FANOUT of S_AXI_ACLK    : signal is "10000";
  attribute MAX_FANOUT of S_AXI_ARESETN : signal is "10000";
  attribute SIGIS of S_AXI_ACLK         : signal is "Clk";
  attribute SIGIS of S_AXI_ARESETN      : signal is "Rst";
  
end entity d_shared_mem_bus;

------------------------------------------------------------------------
-- Architecture section
------------------------------------------------------------------------

architecture IMP of d_shared_mem_bus is

------------------------------------------------------------------------
-- Constant Declarations
------------------------------------------------------------------------
constant ZERO_ADDR_PAD      : std_logic_vector(0 to 31) := (others => '0');

-- Maximum number of soft registers
constant NUM_REG            : integer := 9;

constant QSPI_BASEADDR      : std_logic_vector := C_QSPI_BASEADDR;
constant QSPI_HIGHADDR      : std_logic_vector := C_QSPI_HIGHADDR;

constant PSRAM_BASEADDR     : std_logic_vector := C_PSRAM_BASEADDR;
constant PSRAM_HIGHADDR     : std_logic_vector := C_PSRAM_HIGHADDR;

constant PFLASH_BASEADDR    : std_logic_vector := C_FLASH_BASEADDR;
constant PFLASH_HIGHADDR    : std_logic_vector := C_FLASH_HIGHADDR;

constant IPIF_ARD_ADDR_RANGE_ARRAY : SLV64_ARRAY_TYPE := 
    (
        -- Quad-SPI
        ZERO_ADDR_PAD & QSPI_BASEADDR, 
        ZERO_ADDR_PAD & QSPI_HIGHADDR,
        -- PSRAM
        ZERO_ADDR_PAD & PSRAM_BASEADDR,
        ZERO_ADDR_PAD & PSRAM_HIGHADDR,
        -- Parallel Flash
        ZERO_ADDR_PAD & PFLASH_BASEADDR,
        ZERO_ADDR_PAD & PFLASH_HIGHADDR
     );

constant IPIF_ARD_NUM_CE_ARRAY : INTEGER_ARRAY_TYPE := 
    (
        0 => 9,  -- 9 regs in Quad-SPI controller
        1 => 1,  -- 1 CE for PSRAM controller
        2 => 1   -- 1 CE for PFlash controller
     );

-- Number of CS/CE signals
constant C_NUM_CE_SIGNALS   : integer := calc_num_ce(IPIF_ARD_NUM_CE_ARRAY);
constant C_NUM_CS_SIGNALS   : integer := (IPIF_ARD_ADDR_RANGE_ARRAY'LENGTH/2);

------------------------------------------------------------------------
-- Local Types
------------------------------------------------------------------------
type States is (sIdle, sMemSel, sAck1, sAck2, sWaitSLow, sWaitSHigh, 
                sWaitAck, sBypassRdAck, sBypassWrAck, sIdleLast);

------------------------------------------------------------------------
-- Signal Declarations
------------------------------------------------------------------------
-- Flash local signals
signal FLASH_Mem_A          : std_logic_vector(25 downto 0);
signal FLASH_Mem_DQ_O       : std_logic_vector(15 downto 0);
signal FLASH_Mem_DQ_I       : std_logic_vector(15 downto 0);
signal FLASH_Mem_DQ_T       : std_logic_vector(15 downto 0);
signal FLASH_Mem_OEN        : std_logic;
signal FLASH_Mem_WEN        : std_logic;
signal FLASH_Mem_CEN        : std_logic;
        
-- PSRAM local signals
signal PSRAM_Mem_Addr       : std_logic_vector(22 downto 0);
signal PSRAM_Mem_DQ_O       : std_logic_vector(15 downto 0);
signal PSRAM_Mem_DQ_I       : std_logic_vector(15 downto 0);
signal PSRAM_Mem_DQ_T       : std_logic_vector(15 downto 0);
signal PSRAM_Mem_OEN        : std_logic;
signal PSRAM_Mem_WEN        : std_logic;
signal PSRAM_Mem_CEN        : std_logic;

-- Quad-SPI local signals
signal QSPI_S               : std_logic;
signal QSPI_DQ_O            : std_logic_vector(3 downto 0);
signal QSPI_DQ_T            : std_logic_vector(3 downto 0);
signal QSPI_DQ_I            : std_logic_vector(3 downto 0);

-- ipif local signals
signal ipif_Bus2IP_Clk      : std_logic;
signal ipif_Bus2IP_Resetn   : std_logic;
signal ipif_Bus2IP_Addr     : std_logic_vector(31 downto 0);
signal ipif_Bus2IP_RNW      : std_logic;
signal ipif_Bus2IP_BE       : std_logic_vector(3 downto 0);
signal ipif_Bus2IP_RdCE     : std_logic_vector(C_NUM_CE_SIGNALS-1 downto 0);
signal ipif_Bus2IP_WrCE     : std_logic_vector(C_NUM_CE_SIGNALS-1 downto 0);
signal ipif_Bus2IP_Data     : std_logic_vector(31 downto 0);
signal ipif_IP2Bus_WrAck    : std_logic;
signal ipif_IP2Bus_RdAck    : std_logic;
signal ipif_IP2Bus_Error    : std_logic;
signal ipif_IP2Bus_Data     : std_logic_vector(31 downto 0);

-- Current state, next state
signal CState, NState       : States := sIdle;

-- Local CS
signal Bus2IP_CS_int        : std_logic_vector(C_NUM_CS_SIGNALS-1 downto 0);
signal Bus2IP_BE_Int        : std_logic_vector(3 downto 0);

-- Local Ack
signal RdAck_int            : std_logic;
signal WrAck_int            : std_logic;

-- Enable memory signals
signal QSPI_EN              : std_logic;
signal FLASH_EN             : std_logic;
signal PSRAM_EN             : std_logic;

-- Local data buses
signal qspi_IP2Bus_Data     : std_logic_vector(31 downto 0);
signal pflash_IP2Bus_Data   : std_logic_vector(31 downto 0);
signal psram_IP2Bus_Data    : std_logic_vector(31 downto 0);

-- Local Ack
signal psram_RdAck          : std_logic;
signal psram_WrAck          : std_logic;
signal qspi_RdAck           : std_logic;
signal qspi_WrAck           : std_logic;
signal pflash_RdAck         : std_logic;
signal pflash_WrAck         : std_logic;

------------------------------------------------------------------------
-- Component Declarations
------------------------------------------------------------------------
component psram_cntrl_core
	generic(
		C_RW_CYCLE_NS   : integer := 100
	);
	port(
		Mem_A           : out std_logic_vector(22 downto 0);
		Mem_DQ_O        : out std_logic_vector(15 downto 0);
		Mem_DQ_I        : in std_logic_vector(15 downto 0);
		Mem_DQ_T        : out std_logic_vector(15 downto 0);
		Mem_CEN         : out std_logic;
		Mem_OEN         : out std_logic;
		Mem_WEN         : out std_logic;
		Mem_UB          : out std_logic;
		Mem_LB          : out std_logic;
		Mem_ADV         : out std_logic;
		Mem_CLK         : out std_logic;
		Mem_CRE         : out std_logic;
		Mem_Wait        : in std_logic;        
		Bus2IP_Clk      : in std_logic;
		Bus2IP_Resetn   : in std_logic;
		Bus2IP_Addr     : in std_logic_vector(31 downto 0);
		Bus2IP_Data     : in std_logic_vector(31 downto 0);
		Bus2IP_RNW      : in std_logic;
		Bus2IP_BE       : in std_logic_vector(3 downto 0);
        EN_I            : in  std_logic;
		IP2Bus_Data     : out std_logic_vector(31 downto 0);
		IP2Bus_RdAck    : out std_logic;
		IP2Bus_WrAck    : out std_logic
	);
end component;

component pflash_cntrl_core
	generic(
		C_RD_CYCLE_NS   : integer := 140;
        C_WR_CYCLE_NS   : integer := 60
	);
	port(
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
end component;

component qspi_cntrl_core
    port (
        C               : out std_logic;
        S               : out std_logic;
        DQ_O            : out std_logic_vector(3 downto 0);
        DQ_T            : out std_logic_vector(3 downto 0);
        DQ_I            : in std_logic_vector(3 downto 0);
        Bus2IP_Clk      : in  std_logic;
        Bus2IP_Resetn   : in  std_logic;
        Bus2IP_Data     : in  std_logic_vector(31 downto 0);
        Bus2IP_BE       : in  std_logic_vector(3 downto 0);
        Bus2IP_RdCE     : in  std_logic_vector(8 downto 0);
        Bus2IP_WrCE     : in  std_logic_vector(8 downto 0);
        EN_I            : in  std_logic;
        IP2Bus_Data     : out std_logic_vector(31 downto 0);
        IP2Bus_RdAck    : out std_logic;
        IP2Bus_WrAck    : out std_logic;
        IP2Bus_Error    : out std_logic
    );
end component;

------------------------------------------------------------------------
-- Module Implementation
------------------------------------------------------------------------

begin

    FLASH_Mem_RPN_O <= '1';
    PSRAM_Mem_CEN_O <= PSRAM_Mem_CEN;
    FLASH_Mem_CEN_O <= FLASH_Mem_CEN;
    
    -- Input data
    PSRAM_Mem_DQ_I <= Mem_DQ_I(16 downto 1);
    FLASH_Mem_DQ_I <= Mem_DQ_I(16 downto 1);
    QSPI_DQ_I <= Mem_DQ_I(3 downto 0);
    
    -- Address
    Mem_Addr_O <= "000" & PSRAM_Mem_Addr when PSRAM_Mem_CEN = '0' else FLASH_Mem_A;
    
    -- OEN and WEN
    Mem_OEN_O <= PSRAM_Mem_OEN when PSRAM_Mem_CEN = '0' else FLASH_Mem_OEN when FLASH_Mem_CEN = '0' else '1';
    Mem_WEN_O <= PSRAM_Mem_WEN when PSRAM_Mem_CEN = '0' else FLASH_Mem_WEN when FLASH_Mem_CEN = '0' else '1';

    -- IO
    Mem_DQ_O <= PSRAM_Mem_DQ_O(15 downto 3) & QSPI_DQ_O when PSRAM_Mem_CEN = '0' and QSPI_S = '0' else
	            PSRAM_Mem_DQ_O & "0" when PSRAM_Mem_CEN = '0' and QSPI_S = '1' else
				FLASH_Mem_DQ_O(15 downto 3) & QSPI_DQ_O when PSRAM_Mem_CEN = '1' and QSPI_S = '0' else
				FLASH_Mem_DQ_O & "0" when PSRAM_Mem_CEN = '1' and QSPI_S = '1' else "11111111111111111";    
    Mem_DQ_T <= PSRAM_Mem_DQ_T(15 downto 3) & QSPI_DQ_T when PSRAM_Mem_CEN = '0' and QSPI_S = '0' else
	            PSRAM_Mem_DQ_T & "0" when PSRAM_Mem_CEN = '0' and QSPI_S = '1' else
				FLASH_Mem_DQ_T(15 downto 3) & QSPI_DQ_T when PSRAM_Mem_CEN = '1' and QSPI_S = '0' else
				FLASH_Mem_DQ_T & "0" when PSRAM_Mem_CEN = '1' and QSPI_S = '1' else "11111111111111111";
    
------------------------------------------------------------------------
-- Instantiate axi_lite_ipif
------------------------------------------------------------------------
    AXI_LITE_IPIF_I: entity axi_lite_ipif_v1_01_a.axi_lite_ipif
    generic map (
        C_S_AXI_DATA_WIDTH      => 32,
        C_S_AXI_ADDR_WIDTH      => 32,
        C_S_AXI_MIN_SIZE        => X"00FFFFFF",
        C_USE_WSTRB             => 1,
        C_DPHASE_TIMEOUT        => 0,
        C_ARD_ADDR_RANGE_ARRAY  => IPIF_ARD_ADDR_RANGE_ARRAY,
        C_ARD_NUM_CE_ARRAY      => IPIF_ARD_NUM_CE_ARRAY,
        C_FAMILY                => "virtex6"
    )
    port map (
        S_AXI_ACLK              => S_AXI_ACLK,
        S_AXI_ARESETN           => S_AXI_ARESETN,
        S_AXI_AWADDR            => S_AXI_AWADDR,
        S_AXI_AWVALID           => S_AXI_AWVALID,
        S_AXI_WDATA             => S_AXI_WDATA,
        S_AXI_WSTRB             => S_AXI_WSTRB,
        S_AXI_WVALID            => S_AXI_WVALID,
        S_AXI_BREADY            => S_AXI_BREADY,
        S_AXI_ARADDR            => S_AXI_ARADDR,
        S_AXI_ARVALID           => S_AXI_ARVALID,
        S_AXI_RREADY            => S_AXI_RREADY,
        S_AXI_ARREADY           => S_AXI_ARREADY,
        S_AXI_RDATA             => S_AXI_RDATA,
        S_AXI_RRESP             => S_AXI_RRESP,
        S_AXI_RVALID            => S_AXI_RVALID,
        S_AXI_WREADY            => S_AXI_WREADY,
        S_AXI_BRESP             => S_AXI_BRESP,
        S_AXI_BVALID            => S_AXI_BVALID,
        S_AXI_AWREADY           => S_AXI_AWREADY,
        Bus2IP_Clk              => ipif_Bus2IP_Clk,
        Bus2IP_Resetn           => ipif_Bus2IP_Resetn,
        Bus2IP_Addr             => ipif_Bus2IP_Addr,
        Bus2IP_RNW              => ipif_Bus2IP_RNW,
        Bus2IP_BE               => ipif_Bus2IP_BE,
        Bus2IP_CS               => open,
        Bus2IP_RdCE             => ipif_Bus2IP_RdCE,
        Bus2IP_WrCE             => ipif_Bus2IP_WrCE,
        Bus2IP_Data             => ipif_Bus2IP_Data,
        IP2Bus_WrAck            => ipif_IP2Bus_WrAck,
        IP2Bus_RdAck            => ipif_IP2Bus_RdAck,
        IP2Bus_Error            => ipif_IP2Bus_Error,
        IP2Bus_Data             => ipif_IP2Bus_Data
    );

------------------------------------------------------------------------
-- Decode the address
------------------------------------------------------------------------    
    ADDR_DEC: process(S_AXI_AWADDR, S_AXI_ARADDR)
    begin
        if ((S_AXI_AWADDR >= C_QSPI_BASEADDR) and (S_AXI_AWADDR <= C_QSPI_HIGHADDR)) or
           ((S_AXI_ARADDR >= C_QSPI_BASEADDR) and (S_AXI_ARADDR <= C_QSPI_HIGHADDR)) then
            Bus2IP_CS_int <= "001";
        elsif ((S_AXI_AWADDR >= C_PSRAM_BASEADDR) and (S_AXI_AWADDR <= C_PSRAM_HIGHADDR)) or
              ((S_AXI_ARADDR >= C_PSRAM_BASEADDR) and (S_AXI_ARADDR <= C_PSRAM_HIGHADDR)) then
            Bus2IP_CS_int <= "010";
        elsif ((S_AXI_AWADDR >= C_FLASH_BASEADDR) and (S_AXI_AWADDR <= C_FLASH_HIGHADDR)) or
              ((S_AXI_ARADDR >= C_FLASH_BASEADDR) and (S_AXI_ARADDR <= C_FLASH_HIGHADDR)) then
            Bus2IP_CS_int <= "100";
        else
            Bus2IP_CS_int <= "000";
        end if;
    end process ADDR_DEC;
    
------------------------------------------------------------------------
-- Instantiate PSRAM controller core
------------------------------------------------------------------------
    USE_PSRAM: if C_USE_PSRAM = 1 generate
    PSRAM_CNTRLCORE: psram_cntrl_core
    generic map(
        C_RW_CYCLE_NS   => C_PSRAM_RW_CYCLE_NS)
    port map(
        Mem_A 		    => PSRAM_Mem_Addr,
        Mem_DQ_O 	    => PSRAM_Mem_DQ_O,
        Mem_DQ_I        => PSRAM_Mem_DQ_I,
        Mem_DQ_T 	    => PSRAM_Mem_DQ_T,
        Mem_CEN 	    => PSRAM_Mem_CEN,
        Mem_OEN 	    => PSRAM_Mem_OEN,
        Mem_WEN 	    => PSRAM_Mem_WEN,
        Mem_UB 		    => PSRAM_Mem_UB_O,
        Mem_LB 		    => PSRAM_Mem_LB_O,
        Mem_ADV 	    => PSRAM_Mem_ADV_O,
        Mem_CLK 	    => PSRAM_Mem_CLK_O,
        Mem_CRE 	    => PSRAM_Mem_CRE_O,
        Mem_Wait 	    => PSRAM_Mem_Wait_I,        
        Bus2IP_Clk      => ipif_Bus2IP_Clk,
        Bus2IP_Resetn   => ipif_Bus2IP_Resetn,
        Bus2IP_Addr     => ipif_Bus2IP_Addr,
        Bus2IP_Data     => ipif_Bus2IP_Data,
        Bus2IP_RNW 	    => ipif_Bus2IP_RNW,
        Bus2IP_BE 	    => Bus2IP_BE_Int,
        EN_I            => PSRAM_EN,
        IP2Bus_Data     => psram_IP2Bus_Data,
        IP2Bus_RdAck    => psram_RdAck,
        IP2Bus_WrAck    => psram_WrAck);
    end generate;
    
------------------------------------------------------------------------
-- Instantiate Flash controller core
------------------------------------------------------------------------    
    USE_FLASH: if C_USE_FLASH = 1 generate
    PFLASH_CNTRLCORE: pflash_cntrl_core
	generic map(
		C_RD_CYCLE_NS   => C_FLASH_RD_CYCLE_NS,
        C_WR_CYCLE_NS   => C_FLASH_WR_CYCLE_NS)
	port map(
		Mem_A           => FLASH_Mem_A,
		Mem_DQ_O        => FLASH_Mem_DQ_O,
		Mem_DQ_I        => FLASH_Mem_DQ_I,
		Mem_DQ_T        => FLASH_Mem_DQ_T,
		Mem_CEN         => FLASH_Mem_CEN,
		Mem_OEN         => FLASH_Mem_OEN,
		Mem_WEN         => FLASH_Mem_WEN,
		Mem_ADV         => open,
		Mem_CLK         => open,
		Mem_Wait        => '1',
		Bus2IP_Clk      => ipif_Bus2IP_Clk,
		Bus2IP_Resetn   => ipif_Bus2IP_Resetn,
		Bus2IP_Addr     => ipif_Bus2IP_Addr,
		Bus2IP_Data     => ipif_Bus2IP_Data,
		Bus2IP_RNW      => ipif_Bus2IP_RNW,
		Bus2IP_BE       => Bus2IP_BE_Int,
        EN_I            => FLASH_EN,
		IP2Bus_Data     => pflash_IP2Bus_Data,
		IP2Bus_RdAck    => pflash_RdAck,
		IP2Bus_WrAck    => pflash_WrAck);
    end generate;
    
------------------------------------------------------------------------
-- Instantiate Quad-SPI controller core
------------------------------------------------------------------------    
    USE_QSPI: if C_USE_QUAD_SPI = 1 generate
    QSPI_CNTRLCORE: qspi_cntrl_core
    port map(
        C               => QSPI_Mem_C_O,
        S               => QSPI_S,
        DQ_O            => QSPI_DQ_O,
        DQ_T            => QSPI_DQ_T,
        DQ_I            => QSPI_DQ_I,
        Bus2IP_Clk      => ipif_Bus2IP_Clk,
        Bus2IP_Resetn   => ipif_Bus2IP_Resetn,
        Bus2IP_Data     => ipif_Bus2IP_Data,
        Bus2IP_BE       => ipif_Bus2IP_BE,
        Bus2IP_RdCE     => ipif_Bus2IP_RdCE(10 downto 2),
        Bus2IP_WrCE     => ipif_Bus2IP_WrCE(10 downto 2),
        EN_I            => QSPI_EN,
        IP2Bus_Data     => qspi_IP2Bus_Data,
        IP2Bus_RdAck    => qspi_RdAck,
        IP2Bus_WrAck    => qspi_WrAck,
        IP2Bus_Error    => ipif_IP2Bus_Error);
    end generate;
    
    -- SPI Select
    QSPI_Mem_S_O <= QSPI_S;
    
    -- Byte Enable
    Bus2IP_BE_Int <= S_AXI_WSTRB when S_AXI_WSTRB /= "0000" else (others => '1');

------------------------------------------------------------------------
-- Memory FSM
------------------------------------------------------------------------
    process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                CState <= sIdle;
            else
                CState <= NState;
            end if;
        end if;
    end process;
    
    RdAck_int <= '1' when psram_RdAck = '1' or pflash_RdAck = '1' else '0';
    WrAck_int <= '1' when psram_WrAck = '1' or pflash_WrAck = '1' else '0';
    
    MEM_FSM: process(CState, NState, Bus2IP_CS_int, ipif_Bus2IP_RdCE, 
    ipif_Bus2IP_WrCE, qspi_RdAck, qspi_WrAck, RdAck_int, WrAck_int, 
    QSPI_S)
    begin
        NState <= CState;
        case CState is
            when sIdle =>
                if Bus2IP_CS_int /= "000" and (ipif_Bus2IP_RdCE /= "00000000000" 
                or ipif_Bus2IP_WrCE /= "00000000000") then
                    NState <= sMemSel;
                else
                    NState <= sIdle;
                end if;
            when sMemSel =>
                if Bus2IP_CS_int = "001" then -- Quad-SPI
                    NState <= sAck1;
                else -- Other memories
                    NState <= sWaitAck;
                end if;
            when sAck1 => NState <= sAck2;
            when sAck2 => -- wait a quad-spi ack
                if (qspi_RdAck or qspi_WrAck) = '0' then
                    NState <= sWaitSLow;
                elsif qspi_RdAck = '1' then
                    NState <= sBypassRdAck;
                else
                    NState <= sBypassWrAck;
                end if;
            when sWaitAck => -- wait an ack
                if RdAck_int = '1' then
                    NState <= sBypassRdAck;
                elsif WrAck_int = '1' then
                    NState <= sBypassWrAck;
                else
                    NState <= sWaitAck;
                end if;
            when sWaitSLow => -- wait for S to fall
                if QSPI_S = '0' then
                    NState <= sWaitSHigh;
                else
                    NState <= sWaitSLow;
                end if;
            when sWaitSHigh => -- wait for S to rise
                if QSPI_S = '1' then
                    if qspi_RdAck = '1' then
                        NState <= sBypassRdAck;
                    else
                        NState <= sBypassWrAck;
                    end if;
                else
                    NState <= sWaitSHigh;
                end if;
            when sBypassRdAck => NState <= sIdleLast;
            when sBypassWrAck => NState <= sIdleLast;
            when sIdleLast => NState <= sIdle;
            when others => NState <= sIdle;
        end case;
    end process MEM_FSM;

------------------------------------------------------------------------
-- Memory select process
------------------------------------------------------------------------     
    MEM_SEL: process(Bus2IP_CS_int, qspi_IP2Bus_Data, psram_IP2Bus_Data, 
    pflash_IP2Bus_Data, CState)
    begin
        if CState /= sIdle then
            case Bus2IP_CS_int is
                when "000" => -- none selected
                    QSPI_EN <= '0';
                    FLASH_EN <= '0';
                    PSRAM_EN <= '0';
                when "001" => -- Quad-SPI selected
                    QSPI_EN <= '1';
                    FLASH_EN <= '0';
                    PSRAM_EN <= '0';
                    ipif_IP2Bus_Data <= qspi_IP2Bus_Data;
                when "010" => -- PSRAM selected
                    QSPI_EN <= '0';
                    FLASH_EN <= '0';
                    PSRAM_EN <= '1';
                    ipif_IP2Bus_Data <= psram_IP2Bus_Data;
                when "100" => -- Flash selected
                    QSPI_EN <= '0';
                    FLASH_EN <= '1';
                    PSRAM_EN <= '0';
                    ipif_IP2Bus_Data <= pflash_IP2Bus_Data;
                when others =>
                    QSPI_EN <= '0';
                    FLASH_EN <= '0';
                    PSRAM_EN <= '0';
            end case;
        else
            QSPI_EN <= '0';
            FLASH_EN <= '0';
            PSRAM_EN <= '0';
        end if;
    end process MEM_SEL;

------------------------------------------------------------------------
-- Generate Read Acknowledge
------------------------------------------------------------------------
    GEN_RD_ACK: process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if CState = sBypassRdAck then
                ipif_IP2Bus_RdAck <= '1';
            else
                ipif_IP2Bus_RdAck <= '0';
            end if;
        end if;
    end process GEN_RD_ACK;

------------------------------------------------------------------------
-- Generate Write Acknowledge
------------------------------------------------------------------------
    GEN_WR_ACK: process(S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if CState = sBypassWrAck then
                ipif_IP2Bus_WrAck <= '1';
            else
                ipif_IP2Bus_WrAck <= '0';
            end if;
        end if;
    end process GEN_WR_ACK;

end IMP;
