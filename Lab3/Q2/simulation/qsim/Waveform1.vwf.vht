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
-- Generated on "02/19/2018 20:52:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BCD_counter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BCD_counter_vhd_vec_tst IS
END BCD_counter_vhd_vec_tst;
ARCHITECTURE BCD_counter_arch OF BCD_counter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Carry : STD_LOGIC;
SIGNAL Clock : STD_LOGIC;
SIGNAL L : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL R : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Resetn : STD_LOGIC;
COMPONENT BCD_counter
	PORT (
	Carry : OUT STD_LOGIC;
	Clock : IN STD_LOGIC;
	L : IN STD_LOGIC;
	Q : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	R : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Resetn : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : BCD_counter
	PORT MAP (
-- list connections between master ports and signals
	Carry => Carry,
	Clock => Clock,
	L => L,
	Q => Q,
	R => R,
	Resetn => Resetn
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 25000 ps;
	Clock <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;

-- L
t_prcs_L: PROCESS
BEGIN
	L <= '0';
WAIT;
END PROCESS t_prcs_L;
-- R[3]
t_prcs_R_3: PROCESS
BEGIN
	R(3) <= '0';
WAIT;
END PROCESS t_prcs_R_3;
-- R[2]
t_prcs_R_2: PROCESS
BEGIN
	R(2) <= '0';
WAIT;
END PROCESS t_prcs_R_2;
-- R[1]
t_prcs_R_1: PROCESS
BEGIN
	R(1) <= '0';
WAIT;
END PROCESS t_prcs_R_1;
-- R[0]
t_prcs_R_0: PROCESS
BEGIN
	R(0) <= '1';
WAIT;
END PROCESS t_prcs_R_0;

-- Resetn
t_prcs_Resetn: PROCESS
BEGIN
	Resetn <= '0';
	WAIT FOR 10000 ps;
	Resetn <= '1';
	WAIT FOR 20000 ps;
	Resetn <= '0';
WAIT;
END PROCESS t_prcs_Resetn;
END BCD_counter_arch;
