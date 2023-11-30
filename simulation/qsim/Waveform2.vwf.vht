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
-- Generated on "11/29/2023 23:29:55"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MUX4_1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MUX4_1_vhd_vec_tst IS
END MUX4_1_vhd_vec_tst;
ARCHITECTURE MUX4_1_arch OF MUX4_1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL entrada_A : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL entrada_B : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL entrada_C : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL entrada_D : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL saida : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seletor : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT MUX4_1
	PORT (
	entrada_A : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	entrada_B : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	entrada_C : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	entrada_D : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	saida : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	seletor : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MUX4_1
	PORT MAP (
-- list connections between master ports and signals
	entrada_A => entrada_A,
	entrada_B => entrada_B,
	entrada_C => entrada_C,
	entrada_D => entrada_D,
	saida => saida,
	seletor => seletor
	);
-- entrada_A[6]
t_prcs_entrada_A_6: PROCESS
BEGIN
	entrada_A(6) <= '0';
WAIT;
END PROCESS t_prcs_entrada_A_6;
-- entrada_A[5]
t_prcs_entrada_A_5: PROCESS
BEGIN
	entrada_A(5) <= '0';
WAIT;
END PROCESS t_prcs_entrada_A_5;
-- entrada_A[4]
t_prcs_entrada_A_4: PROCESS
BEGIN
	entrada_A(4) <= '0';
WAIT;
END PROCESS t_prcs_entrada_A_4;
-- entrada_A[3]
t_prcs_entrada_A_3: PROCESS
BEGIN
	entrada_A(3) <= '0';
WAIT;
END PROCESS t_prcs_entrada_A_3;
-- entrada_A[2]
t_prcs_entrada_A_2: PROCESS
BEGIN
	entrada_A(2) <= '0';
WAIT;
END PROCESS t_prcs_entrada_A_2;
-- entrada_A[1]
t_prcs_entrada_A_1: PROCESS
BEGIN
	entrada_A(1) <= '0';
WAIT;
END PROCESS t_prcs_entrada_A_1;
-- entrada_A[0]
t_prcs_entrada_A_0: PROCESS
BEGIN
	entrada_A(0) <= '1';
WAIT;
END PROCESS t_prcs_entrada_A_0;
-- entrada_B[6]
t_prcs_entrada_B_6: PROCESS
BEGIN
	entrada_B(6) <= '0';
WAIT;
END PROCESS t_prcs_entrada_B_6;
-- entrada_B[5]
t_prcs_entrada_B_5: PROCESS
BEGIN
	entrada_B(5) <= '0';
WAIT;
END PROCESS t_prcs_entrada_B_5;
-- entrada_B[4]
t_prcs_entrada_B_4: PROCESS
BEGIN
	entrada_B(4) <= '0';
WAIT;
END PROCESS t_prcs_entrada_B_4;
-- entrada_B[3]
t_prcs_entrada_B_3: PROCESS
BEGIN
	entrada_B(3) <= '0';
WAIT;
END PROCESS t_prcs_entrada_B_3;
-- entrada_B[2]
t_prcs_entrada_B_2: PROCESS
BEGIN
	entrada_B(2) <= '0';
WAIT;
END PROCESS t_prcs_entrada_B_2;
-- entrada_B[1]
t_prcs_entrada_B_1: PROCESS
BEGIN
	entrada_B(1) <= '1';
WAIT;
END PROCESS t_prcs_entrada_B_1;
-- entrada_B[0]
t_prcs_entrada_B_0: PROCESS
BEGIN
	entrada_B(0) <= '0';
WAIT;
END PROCESS t_prcs_entrada_B_0;
-- entrada_C[6]
t_prcs_entrada_C_6: PROCESS
BEGIN
	entrada_C(6) <= '0';
WAIT;
END PROCESS t_prcs_entrada_C_6;
-- entrada_C[5]
t_prcs_entrada_C_5: PROCESS
BEGIN
	entrada_C(5) <= '0';
WAIT;
END PROCESS t_prcs_entrada_C_5;
-- entrada_C[4]
t_prcs_entrada_C_4: PROCESS
BEGIN
	entrada_C(4) <= '0';
WAIT;
END PROCESS t_prcs_entrada_C_4;
-- entrada_C[3]
t_prcs_entrada_C_3: PROCESS
BEGIN
	entrada_C(3) <= '0';
WAIT;
END PROCESS t_prcs_entrada_C_3;
-- entrada_C[2]
t_prcs_entrada_C_2: PROCESS
BEGIN
	entrada_C(2) <= '1';
WAIT;
END PROCESS t_prcs_entrada_C_2;
-- entrada_C[1]
t_prcs_entrada_C_1: PROCESS
BEGIN
	entrada_C(1) <= '0';
WAIT;
END PROCESS t_prcs_entrada_C_1;
-- entrada_C[0]
t_prcs_entrada_C_0: PROCESS
BEGIN
	entrada_C(0) <= '0';
WAIT;
END PROCESS t_prcs_entrada_C_0;
-- entrada_D[6]
t_prcs_entrada_D_6: PROCESS
BEGIN
	entrada_D(6) <= '0';
WAIT;
END PROCESS t_prcs_entrada_D_6;
-- entrada_D[5]
t_prcs_entrada_D_5: PROCESS
BEGIN
	entrada_D(5) <= '0';
WAIT;
END PROCESS t_prcs_entrada_D_5;
-- entrada_D[4]
t_prcs_entrada_D_4: PROCESS
BEGIN
	entrada_D(4) <= '0';
WAIT;
END PROCESS t_prcs_entrada_D_4;
-- entrada_D[3]
t_prcs_entrada_D_3: PROCESS
BEGIN
	entrada_D(3) <= '1';
WAIT;
END PROCESS t_prcs_entrada_D_3;
-- entrada_D[2]
t_prcs_entrada_D_2: PROCESS
BEGIN
	entrada_D(2) <= '0';
WAIT;
END PROCESS t_prcs_entrada_D_2;
-- entrada_D[1]
t_prcs_entrada_D_1: PROCESS
BEGIN
	entrada_D(1) <= '0';
WAIT;
END PROCESS t_prcs_entrada_D_1;
-- entrada_D[0]
t_prcs_entrada_D_0: PROCESS
BEGIN
	entrada_D(0) <= '0';
WAIT;
END PROCESS t_prcs_entrada_D_0;

-- seletor[0]
t_prcs_seletor_0: PROCESS
BEGIN
	seletor(0) <= '0';
	WAIT FOR 50000 ps;
	seletor(0) <= '1';
	WAIT FOR 80000 ps;
	seletor(0) <= '0';
	WAIT FOR 80000 ps;
	seletor(0) <= '1';
	WAIT FOR 90000 ps;
	seletor(0) <= '0';
WAIT;
END PROCESS t_prcs_seletor_0;

-- seletor[1]
t_prcs_seletor_1: PROCESS
BEGIN
	seletor(1) <= '0';
	WAIT FOR 130000 ps;
	seletor(1) <= '1';
	WAIT FOR 170000 ps;
	seletor(1) <= '0';
WAIT;
END PROCESS t_prcs_seletor_1;
END MUX4_1_arch;
