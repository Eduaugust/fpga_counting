-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/29/2023 19:36:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          bit1_mux4_1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bit1_mux4_1_vhd_vec_tst IS
END bit1_mux4_1_vhd_vec_tst;
ARCHITECTURE bit1_mux4_1_arch OF bit1_mux4_1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk1 : STD_LOGIC;
SIGNAL clk2 : STD_LOGIC;
SIGNAL clk3 : STD_LOGIC;
SIGNAL clk4 : STD_LOGIC;
SIGNAL controle : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL saida : STD_LOGIC;
COMPONENT bit1_mux4_1
	PORT (
	clk1 : IN STD_LOGIC;
	clk2 : IN STD_LOGIC;
	clk3 : IN STD_LOGIC;
	clk4 : IN STD_LOGIC;
	controle : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	saida : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : bit1_mux4_1
	PORT MAP (
-- list connections between master ports and signals
	clk1 => clk1,
	clk2 => clk2,
	clk3 => clk3,
	clk4 => clk4,
	controle => controle,
	saida => saida
	);

-- clk1
t_prcs_clk1: PROCESS
BEGIN
LOOP
	clk1 <= '0';
	WAIT FOR 10000 ps;
	clk1 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk1;

-- clk2
t_prcs_clk2: PROCESS
BEGIN
LOOP
	clk2 <= '0';
	WAIT FOR 20000 ps;
	clk2 <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk2;

-- clk3
t_prcs_clk3: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		clk3 <= '0';
		WAIT FOR 40000 ps;
		clk3 <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	clk3 <= '0';
WAIT;
END PROCESS t_prcs_clk3;

-- clk4
t_prcs_clk4: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		clk4 <= '0';
		WAIT FOR 80000 ps;
		clk4 <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	clk4 <= '0';
WAIT;
END PROCESS t_prcs_clk4;
-- controle[1]
t_prcs_controle_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		controle(1) <= '0';
		WAIT FOR 40000 ps;
		controle(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	controle(1) <= '0';
WAIT;
END PROCESS t_prcs_controle_1;
-- controle[0]
t_prcs_controle_0: PROCESS
BEGIN
LOOP
	controle(0) <= '0';
	WAIT FOR 20000 ps;
	controle(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_controle_0;
END bit1_mux4_1_arch;
