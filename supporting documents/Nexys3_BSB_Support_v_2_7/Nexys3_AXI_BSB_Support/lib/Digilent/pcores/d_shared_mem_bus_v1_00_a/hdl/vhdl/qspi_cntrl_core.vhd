-----------------------------------------------------------------------------
--                                                                 
--  COPYRIGHT (C) 2011, Digilent RO. All rights reserved
--                                                                  
-------------------------------------------------------------------------------
-- FILE NAME            : qspi_cntrl_core.vhd
-- MODULE NAME          : Quad-SPI Controller
-- AUTHOR               : Mihaita Nagy
-- AUTHOR'S EMAIL       : mihaita.nagy@digilent.ro
-------------------------------------------------------------------------------
-- REVISION HISTORY
-- VERSION  DATE         AUTHOR         DESCRIPTION
-- 1.0 	    2011-12-19   MihaitaN       Created
-------------------------------------------------------------------------------
-- KEYWORDS : Flash, AXI4-Lite
-------------------------------------------------------------------------------
-- DESCRIPTION : This module is the Quad-SPI Memory controller.
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library proc_common_v3_00_a;
use proc_common_v3_00_a.proc_common_pkg.all;

------------------------------------------------------------------------
-- Module Declaration
------------------------------------------------------------------------
entity qspi_cntrl_core is
    port (
        -- Quad-SPI signals
        C               : out std_logic;
        S               : out std_logic;
        DQ_O            : out std_logic_vector(3 downto 0);
        DQ_T            : out std_logic_vector(3 downto 0);
        DQ_I            : in  std_logic_vector(3 downto 0);
        
        -- AXI Bus signals
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
  
  attribute MAX_FANOUT              : string;
  attribute SIGIS                   : string;
  attribute SIGIS of Bus2IP_Clk     : signal is "CLK";
  attribute SIGIS of Bus2IP_Resetn  : signal is "RST";
  
end qspi_cntrl_core;

architecture Behavioral of qspi_cntrl_core is

------------------------------------------------------------------------
-- Signal Declarations
------------------------------------------------------------------------    
signal RESET_REG                        : std_logic_vector(31 downto 0);
signal STATUS_REG                       : std_logic_vector(31 downto 0);
signal OCCUPANCY_RXFIFO_REG             : std_logic_vector(31 downto 0);
signal OCCUPANCY_TXFIFO_REG             : std_logic_vector(31 downto 0);
signal CONTROL_CYCLE_REG                : std_logic_vector(31 downto 0);
signal DATA_IN_REG                      : std_logic_vector(31 downto 0);
signal DATA_OUT_REG                     : std_logic_vector(31 downto 0);
signal CONTROL_FIFO_REG                 : std_logic_vector(31 downto 0);
signal MODES_REG                        : std_logic_vector(31 downto 0);
signal slv_reg_write_sel                : std_logic_vector(8 downto 0);
signal slv_reg_read_sel                 : std_logic_vector(8 downto 0);
signal slv_ip2bus_data                  : std_logic_vector(31 downto 0);
signal slv_read_ack                     : std_logic;
signal slv_write_ack                    : std_logic;
signal reset_ctrl                       : std_logic;
signal div_rate_ctrl                    : std_logic_vector(12 downto 0);
signal start_session_ctrl               : std_logic;
signal end_session_ctrl                 : std_logic;
signal addr_ctrl                        : std_logic;
signal dummy_ctrl                       : std_logic;
signal dummy_clks_ctrl                  : std_logic_vector(3 downto 0);
signal read_mem_ctrl                    : std_logic;
signal write_mem_ctrl                   : std_logic;
signal read_from_buffer_receive_ctrl    : std_logic;
signal write_to_buffer_send_ctrl        : std_logic;
signal nr_of_bytes_ctrl                 : std_logic_vector(8 downto 0);
signal cmd_mode_ctrl                    : std_logic_vector(1 downto 0);
signal addr_mode_ctrl                   : std_logic_vector(1 downto 0);
signal read_mode_ctrl                   : std_logic_vector(1 downto 0);
signal write_mode_ctrl                  : std_logic_vector(1 downto 0);
signal data_input_ctrl                  : std_logic_vector(7 downto 0);
signal data_output_ctrl                 : std_logic_vector(7 downto 0);
signal send_buffer_empty_ctrl           : std_logic;
signal receive_buffer_empty_ctrl        : std_logic;
signal send_buffer_full_ctrl            : std_logic;
signal receive_buffer_full_ctrl         : std_logic;
signal status_send_ctrl                 : std_logic_vector(8 downto 0);
signal status_read_ctrl                 : std_logic_vector(8 downto 0);
signal cycle_done_ctrl                  : std_logic;
signal write_one_byte_done_ctrl         : std_logic;
signal read_one_byte_done_ctrl          : std_logic;
signal c_ctrl                           : std_logic;
signal s_ctrl                           : std_logic;
signal dq_o_ctrl                        : std_logic_vector(3 downto 0);
signal dq_t_ctrl                        : std_logic_vector(3 downto 0);
signal dq_i_ctrl                        : std_logic_vector(3 downto 0);

-- Internal CE buses
signal Bus2IP_RdCE_int                  : std_logic_vector(8 downto 0);
signal Bus2IP_WrCE_int                  : std_logic_vector(8 downto 0);
signal Bus2IP_RdCE_int1                 : std_logic_vector(8 downto 0);
signal Bus2IP_WrCE_int1                 : std_logic_vector(8 downto 0);

------------------------------------------------------------------------
-- Component Declarations
------------------------------------------------------------------------
component spi_sf
    port (	
        clk                             : in std_logic;
        reset                           : in std_logic;
        div_rate                        : in std_logic_vector(12 downto 0);
        start_session                   : in std_logic;
        end_session                     : in std_logic;
        addr                            : in std_logic;
        dummy                           : in std_logic;
        dummy_clks                      : in std_logic_vector(3 downto 0);
        read_mem                        : in std_logic;
        write_mem                       : in std_logic;
        read_from_buffer_receive        : in std_logic;
        write_to_buffer_send            : in std_logic;
        nr_of_bytes                     : in std_logic_vector(8 downto 0);
			
        cmd_mode                        : in std_logic_vector(1 downto 0);
        addr_mode                       : in std_logic_vector(1 downto 0);
        read_mode                       : in std_logic_vector(1 downto 0);
        write_mode                      : in std_logic_vector(1 downto 0);
			
        data_input                      : in std_logic_vector(7 downto 0);
        data_output                     : out std_logic_vector(7 downto 0);
			
        -- Status signals --
        send_buffer_empty               : out std_logic;
        receive_buffer_empty            : out std_logic;
        send_buffer_full                : out std_logic;
        receive_buffer_full             : out std_logic;
        status_send                     : out std_logic_vector(8 downto 0);
        status_read                     : out std_logic_vector(8 downto 0);
        cycle_done                      : out std_logic;
			
        -- FIFO r/w control
        write_one_byte_done             : out std_logic;
        read_one_byte_done              : out std_logic;
        
        -- Flash Memory --
        c                               : out std_logic;
        s                               : out std_logic;
        dq_o                            : out std_logic_vector(3 downto 0);
        dq_t                            : out std_logic_vector(3 downto 0);
        dq_i                            : in std_logic_vector(3 downto 0)
    );
end component;

------------------------------------------------------------------------
-- Module Implementation
------------------------------------------------------------------------

begin

    reset_ctrl                      <= RESET_REG(0);
    div_rate_ctrl                   <= CONTROL_CYCLE_REG(29 downto 17);
    start_session_ctrl              <= CONTROL_CYCLE_REG(31);
    end_session_ctrl                <= CONTROL_CYCLE_REG(30);
    addr_ctrl                       <= CONTROL_CYCLE_REG(0);
    dummy_ctrl                      <= CONTROL_CYCLE_REG(1);
    dummy_clks_ctrl                 <= CONTROL_CYCLE_REG(16 downto 13);
    read_mem_ctrl                   <= CONTROL_CYCLE_REG(2);
    write_mem_ctrl                  <= CONTROL_CYCLE_REG(3);
    read_from_buffer_receive_ctrl   <= CONTROL_FIFO_REG(0);
    write_to_buffer_send_ctrl       <= CONTROL_FIFO_REG(1);
    nr_of_bytes_ctrl                <= CONTROL_CYCLE_REG(12 downto 4);
    cmd_mode_ctrl                   <= MODES_REG(1 downto 0);
    addr_mode_ctrl                  <= MODES_REG(3 downto 2);
    read_mode_ctrl                  <= MODES_REG(5 downto 4);
    write_mode_ctrl                 <= MODES_REG(7 downto 6);
    data_input_ctrl                 <= DATA_IN_REG(7 downto 0);
    C                               <= c_ctrl;
    S                               <= s_ctrl;
    DQ_O                            <= dq_o_ctrl;
    DQ_T                            <= dq_t_ctrl;
    dq_i_ctrl                       <= DQ_I;

------------------------------------------------------------------------
-- Instantiate spi_sf
------------------------------------------------------------------------
    spi_sf_instance: spi_sf
    port map (
        clk                         => Bus2IP_Clk,
        reset                       => reset_ctrl,
        div_rate                    => div_rate_ctrl,
        start_session               => start_session_ctrl,
        end_session                 => end_session_ctrl,
        addr                        => addr_ctrl,
        dummy                       => dummy_ctrl,
        dummy_clks                  => dummy_clks_ctrl,
        read_mem                    => read_mem_ctrl,
        write_mem                   => write_mem_ctrl,
        read_from_buffer_receive    => read_from_buffer_receive_ctrl,
        write_to_buffer_send        => write_to_buffer_send_ctrl,
        nr_of_bytes                 => nr_of_bytes_ctrl,
        cmd_mode                    => cmd_mode_ctrl,
        addr_mode                   => addr_mode_ctrl,
        read_mode                   => read_mode_ctrl,
        write_mode                  => write_mode_ctrl,	
        data_input                  => data_input_ctrl,
        data_output                 => data_output_ctrl,
        send_buffer_empty           => send_buffer_empty_ctrl,
        receive_buffer_empty        => receive_buffer_empty_ctrl,
        send_buffer_full            => send_buffer_full_ctrl,
        receive_buffer_full         => receive_buffer_full_ctrl,
        status_send                 => status_send_ctrl,
        status_read                 => status_read_ctrl,
        cycle_done                  => cycle_done_ctrl,
        write_one_byte_done         => write_one_byte_done_ctrl,
        read_one_byte_done          => read_one_byte_done_ctrl,
        c                           => c_ctrl,
        s                           => s_ctrl,
        dq_o                        => dq_o_ctrl,
        dq_t                        => dq_t_ctrl,
        dq_i                        => dq_i_ctrl
    );
  
    slv_reg_write_sel <= Bus2IP_WrCE(8 downto 0) when EN_I = '1' else (others => '0');
    slv_reg_read_sel  <= Bus2IP_RdCE(8 downto 0) when EN_I = '1' else (others => '0');

------------------------------------------------------------------------ 
-- Delay the CE signals
------------------------------------------------------------------------
    process(Bus2IP_Clk)
    begin
        if rising_edge(Bus2IP_Clk) then
            if EN_I = '1' then
                -- first stage
                Bus2IP_WrCE_int1 <= Bus2IP_WrCE;
                Bus2IP_RdCE_int1 <= Bus2IP_RdCE;
                -- second stage
                Bus2IP_WrCE_int <= Bus2IP_WrCE_int1;
                Bus2IP_RdCE_int <= Bus2IP_RdCE_int1;
            else
                Bus2IP_WrCE_int <= (others => '0');
                Bus2IP_RdCE_int <= (others => '0');
            end if;
        end if;
    end process;
    
    slv_write_ack <= (Bus2IP_WrCE_int(0) or Bus2IP_WrCE_int(1) or Bus2IP_WrCE_int(2) or Bus2IP_WrCE_int(3) or Bus2IP_WrCE_int(4) or Bus2IP_WrCE_int(5) or Bus2IP_WrCE_int(6) or Bus2IP_WrCE_int(7) or Bus2IP_WrCE_int(8)) when start_session_ctrl = '0' else '0';
    slv_read_ack  <= (Bus2IP_RdCE_int(0) or Bus2IP_RdCE_int(1) or Bus2IP_RdCE_int(2) or Bus2IP_RdCE_int(3) or Bus2IP_RdCE_int(4) or Bus2IP_RdCE_int(5) or Bus2IP_RdCE_int(6) or Bus2IP_RdCE_int(7) or Bus2IP_RdCE_int(8)) when start_session_ctrl = '0' else '0';
    
------------------------------------------------------------------------ 
-- Implement slave model software accessible register(s)
------------------------------------------------------------------------ 
    SLAVE_REG_WRITE_PROC : process(Bus2IP_Clk) is
    begin
        if Bus2IP_Clk'event and Bus2IP_Clk = '1' then
            if Bus2IP_Resetn = '0' then
                RESET_REG               <= (others => '0');
                STATUS_REG              <= (others => '0');
                OCCUPANCY_RXFIFO_REG    <= (others => '0');
                OCCUPANCY_TXFIFO_REG    <= (others => '0');
                CONTROL_CYCLE_REG       <= (others => '0');
                DATA_IN_REG             <= (others => '0');
                DATA_OUT_REG            <= (others => '0');
                CONTROL_FIFO_REG        <= (others => '0');
                MODES_REG               <= (others => '0');
            else
                if EN_I = '1' then
                    case slv_reg_write_sel is
                        when "100000000" =>
                            for byte_index in 0 to 3 loop
                                if Bus2IP_BE(byte_index) = '1' then
                                    RESET_REG(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
                                end if;
                            end loop;
                        when "000010000" =>
                            for byte_index in 0 to 3 loop
                                if Bus2IP_BE(byte_index) = '1' then
                                    CONTROL_CYCLE_REG(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
                                end if;
                            end loop;
                        when "000001000" =>
                            for byte_index in 0 to 3 loop
                                if Bus2IP_BE(byte_index) = '1' then
                                    DATA_IN_REG(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
                                end if;
                            end loop;
                        when "000000010" =>
                            for byte_index in 0 to 3 loop
                                if Bus2IP_BE(byte_index) = '1' then
                                    CONTROL_FIFO_REG(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
                                end if;
                            end loop;
                        when "000000001" =>
                            for byte_index in 0 to 3 loop
                                if Bus2IP_BE(byte_index) = '1' then
                                    MODES_REG(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
                                end if;
                            end loop;
                        when others =>
                            DATA_OUT_REG(31 downto 8)           <= (others => '0');
                            DATA_OUT_REG(7 downto 0)            <= data_output_ctrl;
                            OCCUPANCY_TXFIFO_REG(31 downto 9)   <= (others => '0');
                            OCCUPANCY_TXFIFO_REG(8 downto 0)    <= status_send_ctrl;
                            OCCUPANCY_RXFIFO_REG(31 downto 9)   <= (others => '0');
                            OCCUPANCY_RXFIFO_REG(8 downto 0)    <= status_read_ctrl;
                            STATUS_REG(31)                      <= write_one_byte_done_ctrl;
                            STATUS_REG(30)                      <= read_one_byte_done_ctrl;
                            STATUS_REG(29 downto 5)             <= (others => '0');
                            STATUS_REG(4)                       <= cycle_done_ctrl;
                            STATUS_REG(3)                       <= receive_buffer_full_ctrl;
                            STATUS_REG(2)                       <= send_buffer_full_ctrl;
                            STATUS_REG(1)                       <= receive_buffer_empty_ctrl;
                            STATUS_REG(0)                       <= send_buffer_empty_ctrl;
                    end case;
                end if;
            end if;
        end if;
    end process SLAVE_REG_WRITE_PROC;

------------------------------------------------------------------------ 
-- Implement slave model software accessible register(s) read mux
------------------------------------------------------------------------ 
    SLAVE_REG_READ_PROC : process(slv_reg_read_sel, RESET_REG, STATUS_REG, 
    OCCUPANCY_RXFIFO_REG, OCCUPANCY_TXFIFO_REG, CONTROL_CYCLE_REG, DATA_IN_REG, 
    DATA_OUT_REG, CONTROL_FIFO_REG, MODES_REG, EN_I) is
    begin
        if EN_I = '1' then
            case slv_reg_read_sel is
                when "100000000" => slv_ip2bus_data <= RESET_REG;
                when "010000000" => slv_ip2bus_data <= STATUS_REG;
                when "001000000" => slv_ip2bus_data <= OCCUPANCY_RXFIFO_REG;
                when "000100000" => slv_ip2bus_data <= OCCUPANCY_TXFIFO_REG;
                when "000010000" => slv_ip2bus_data <= CONTROL_CYCLE_REG;
                when "000001000" => slv_ip2bus_data <= DATA_IN_REG;
                when "000000100" => slv_ip2bus_data <= DATA_OUT_REG;
                when "000000010" => slv_ip2bus_data <= CONTROL_FIFO_REG;
                when "000000001" => slv_ip2bus_data <= MODES_REG;
                when others => slv_ip2bus_data <= (others => '0');
            end case;
        end if;
    end process SLAVE_REG_READ_PROC;

    IP2Bus_Data  <= slv_ip2bus_data when slv_read_ack = '1' else (others => '0');
    IP2Bus_WrAck <= slv_write_ack;
    IP2Bus_RdAck <= slv_read_ack;
    IP2Bus_Error <= '0';

end Behavioral;

