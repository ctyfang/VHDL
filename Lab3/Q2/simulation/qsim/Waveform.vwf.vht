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
-- Generated on "02/19/2018 20:32:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BCD_Counter_9RST
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BCD_Counter_9RST_vhd_vec_tst IS
END BCD_Counter_9RST_vhd_vec_tst;
ARCHITECTURE BCD_Counter_9RST_arch OF BCD_Counter_9RST_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Carry : STD_LOGIC;
SIGNAL Clock : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Load : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Reset : STD_LOGIC;
SIGNAL RST_VALUE : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT BCD_Counter_9RST
	PORT (
	Carry : OUT STD_LOGIC;
	Clock : IN STD_LOGIC;
	D : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Load : IN STD_LOGIC;
	Q : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	Reset : IN STD_LOGIC;
	RST_VALUE : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : BCD_Counter_9RST
	PORT MAP (
-- list connections between master ports and signals
	Carry => Carry,
	Clock => Clock,
	D => D,
	Load => Load,
	Q => Q,
	Reset => Reset,
	RST_VALUE => RST_VALUE
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
-- D[3]
t_prcs_D_3: PROCESS
BEGIN
	D(3) <= '0';
WAIT;
END PROCESS t_prcs_D_3;
-- D[2]
t_prcs_D_2: PROCESS
BEGIN
	D(2) <= '0';
WAIT;
END PROCESS t_prcs_D_2;
-- D[1]
t_prcs_D_1: PROCESS
BEGIN
	D(1) <= '0';
WAIT;
END PROCESS t_prcs_D_1;
-- D[0]
t_prcs_D_0: PROCESS
BEGIN
	D(0) <= '0';
WAIT;
END PROCESS t_prcs_D_0;

-- Load
t_prcs_Load: PROCESS
BEGIN
	Load <= '0';
WAIT;
END PROCESS t_prcs_Load;

-- Reset
t_prcs_Reset: PROCESS
BEGIN
	Reset <= '0';
	WAIT FOR 10000 ps;
	Reset <= '1';
	WAIT FOR 30000 ps;
	Reset <= '0';
WAIT;
END PROCESS t_prcs_Reset;
-- RST_VALUE[3]
t_prcs_RST_VALUE_3: PROCESS
BEGIN
	RST_VALUE(3) <= '1';
WAIT;
END PROCESS t_prcs_RST_VALUE_3;
-- RST_VALUE[2]
t_prcs_RST_VALUE_2: PROCESS
BEGIN
	RST_VALUE(2) <= '0';
WAIT;
END PROCESS t_prcs_RST_VALUE_2;
-- RST_VALUE[1]
t_prcs_RST_VALUE_1: PROCESS
BEGIN
	RST_VALUE(1) <= '0';
WAIT;
END PROCESS t_prcs_RST_VALUE_1;
-- RST_VALUE[0]
t_prcs_RST_VALUE_0: PROCESS
BEGIN
	RST_VALUE(0) <= '1';
WAIT;
END PROCESS t_prcs_RST_VALUE_0;
END BCD_Counter_9RST_arch;
