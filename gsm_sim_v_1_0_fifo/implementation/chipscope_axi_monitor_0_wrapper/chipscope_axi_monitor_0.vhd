-------------------------------------------------------------------------------
-- Copyright (c) 2014 Xilinx, Inc.
-- All Rights Reserved
-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor     : Xilinx
-- \   \   \/     Version    : 14.7
--  \   \         Application: XILINX CORE Generator
--  /   /         Filename   : chipscope_axi_monitor_0.vhd
-- /___/   /\     Timestamp  : Tue May 27 23:33:37 CEST 2014
-- \   \  /  \
--  \___\/\___\
--
-- Design Name: VHDL Synthesis Wrapper
-------------------------------------------------------------------------------
-- This wrapper is used to integrate with Project Navigator and PlanAhead

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY chipscope_axi_monitor_0 IS
  port (
    CONTROL: inout std_logic_vector(35 downto 0);
    CLK: in std_logic;
    DATA: in std_logic_vector(185 downto 0);
    TRIG0: in std_logic_vector(31 downto 0);
    TRIG1: in std_logic_vector(4 downto 0);
    TRIG2: in std_logic_vector(31 downto 0);
    TRIG3: in std_logic_vector(4 downto 0);
    TRIG4: in std_logic_vector(3 downto 0);
    TRIG5: in std_logic_vector(33 downto 0);
    TRIG6: in std_logic_vector(31 downto 0);
    TRIG7: in std_logic_vector(3 downto 0);
    TRIG8: in std_logic_vector(31 downto 0);
    TRIG9: in std_logic_vector(5 downto 0);
    TRIG_OUT: out std_logic);
END chipscope_axi_monitor_0;

ARCHITECTURE chipscope_axi_monitor_0_a OF chipscope_axi_monitor_0 IS
BEGIN

END chipscope_axi_monitor_0_a;
