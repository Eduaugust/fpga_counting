-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/29/2023 23:14:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          divisordeclock
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY divisordeclock_vhd_vec_tst IS
END divisordeclock_vhd_vec_tst;
ARCHITECTURE divisordeclock_arch OF divisordeclock_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clk_out : STD_LOGIC;
SIGNAL reset_signal : STD_LOGIC;
COMPONENT divisordeclock
	PORT (
	clk : IN STD_LOGIC;
	clk_out : BUFFER STD_LOGIC;
	reset_signal : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : divisordeclock
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clk_out => clk_out,
	reset_signal => reset_signal
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset_signal
t_prcs_reset_signal: PROCESS
BEGIN
	reset_signal <= '1';
	WAIT FOR 70000 ps;
	reset_signal <= '0';
WAIT;
END PROCESS t_prcs_reset_signal;
END divisordeclock_arch;
