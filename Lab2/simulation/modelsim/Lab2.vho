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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "02/09/2018 16:09:23"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab2 IS
    PORT (
	INPUT_BYTE : IN std_logic_vector(7 DOWNTO 0);
	ADD_SUB : IN std_logic;
	A_PRESS : IN std_logic;
	B_PRESS : IN std_logic;
	RESULT : OUT std_logic_vector(7 DOWNTO 0)
	);
END Lab2;

-- Design Ports Information
-- RESULT[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[1]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[4]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[6]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_SUB	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT_BYTE[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_PRESS	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_PRESS	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT_BYTE[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT_BYTE[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT_BYTE[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT_BYTE[4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT_BYTE[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT_BYTE[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT_BYTE[7]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_INPUT_BYTE : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ADD_SUB : std_logic;
SIGNAL ww_A_PRESS : std_logic;
SIGNAL ww_B_PRESS : std_logic;
SIGNAL ww_RESULT : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \ADD_SUB~input_o\ : std_logic;
SIGNAL \B_PRESS~input_o\ : std_logic;
SIGNAL \INPUT_BYTE[0]~input_o\ : std_logic;
SIGNAL \A_PRESS~input_o\ : std_logic;
SIGNAL \Add0~34_cout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \INPUT_BYTE[1]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \INPUT_BYTE[2]~input_o\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \INPUT_BYTE[3]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \INPUT_BYTE[4]~input_o\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \INPUT_BYTE[5]~input_o\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \INPUT_BYTE[6]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \INPUT_BYTE[7]~input_o\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \B_Latch|DATA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A_Latch|DATA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_INPUT_BYTE[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT_BYTE[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT_BYTE[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT_BYTE[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT_BYTE[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT_BYTE[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT_BYTE[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_PRESS~input_o\ : std_logic;
SIGNAL \ALT_INV_B_PRESS~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT_BYTE[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADD_SUB~input_o\ : std_logic;
SIGNAL \A_Latch|ALT_INV_DATA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B_Latch|ALT_INV_DATA\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_INPUT_BYTE <= INPUT_BYTE;
ww_ADD_SUB <= ADD_SUB;
ww_A_PRESS <= A_PRESS;
ww_B_PRESS <= B_PRESS;
RESULT <= ww_RESULT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_INPUT_BYTE[7]~input_o\ <= NOT \INPUT_BYTE[7]~input_o\;
\ALT_INV_INPUT_BYTE[6]~input_o\ <= NOT \INPUT_BYTE[6]~input_o\;
\ALT_INV_INPUT_BYTE[5]~input_o\ <= NOT \INPUT_BYTE[5]~input_o\;
\ALT_INV_INPUT_BYTE[4]~input_o\ <= NOT \INPUT_BYTE[4]~input_o\;
\ALT_INV_INPUT_BYTE[3]~input_o\ <= NOT \INPUT_BYTE[3]~input_o\;
\ALT_INV_INPUT_BYTE[2]~input_o\ <= NOT \INPUT_BYTE[2]~input_o\;
\ALT_INV_INPUT_BYTE[1]~input_o\ <= NOT \INPUT_BYTE[1]~input_o\;
\ALT_INV_A_PRESS~input_o\ <= NOT \A_PRESS~input_o\;
\ALT_INV_B_PRESS~input_o\ <= NOT \B_PRESS~input_o\;
\ALT_INV_INPUT_BYTE[0]~input_o\ <= NOT \INPUT_BYTE[0]~input_o\;
\ALT_INV_ADD_SUB~input_o\ <= NOT \ADD_SUB~input_o\;
\A_Latch|ALT_INV_DATA\(7) <= NOT \A_Latch|DATA\(7);
\B_Latch|ALT_INV_DATA\(7) <= NOT \B_Latch|DATA\(7);
\A_Latch|ALT_INV_DATA\(6) <= NOT \A_Latch|DATA\(6);
\B_Latch|ALT_INV_DATA\(6) <= NOT \B_Latch|DATA\(6);
\A_Latch|ALT_INV_DATA\(5) <= NOT \A_Latch|DATA\(5);
\B_Latch|ALT_INV_DATA\(5) <= NOT \B_Latch|DATA\(5);
\A_Latch|ALT_INV_DATA\(4) <= NOT \A_Latch|DATA\(4);
\B_Latch|ALT_INV_DATA\(4) <= NOT \B_Latch|DATA\(4);
\A_Latch|ALT_INV_DATA\(3) <= NOT \A_Latch|DATA\(3);
\B_Latch|ALT_INV_DATA\(3) <= NOT \B_Latch|DATA\(3);
\A_Latch|ALT_INV_DATA\(2) <= NOT \A_Latch|DATA\(2);
\B_Latch|ALT_INV_DATA\(2) <= NOT \B_Latch|DATA\(2);
\A_Latch|ALT_INV_DATA\(1) <= NOT \A_Latch|DATA\(1);
\B_Latch|ALT_INV_DATA\(1) <= NOT \B_Latch|DATA\(1);
\A_Latch|ALT_INV_DATA\(0) <= NOT \A_Latch|DATA\(0);
\B_Latch|ALT_INV_DATA\(0) <= NOT \B_Latch|DATA\(0);

-- Location: IOOBUF_X32_Y45_N42
\RESULT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_RESULT(0));

-- Location: IOOBUF_X34_Y45_N19
\RESULT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_RESULT(1));

-- Location: IOOBUF_X38_Y45_N2
\RESULT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_RESULT(2));

-- Location: IOOBUF_X34_Y45_N53
\RESULT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_RESULT(3));

-- Location: IOOBUF_X40_Y45_N93
\RESULT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_RESULT(4));

-- Location: IOOBUF_X32_Y45_N76
\RESULT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_RESULT(5));

-- Location: IOOBUF_X34_Y45_N36
\RESULT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_RESULT(6));

-- Location: IOOBUF_X36_Y45_N53
\RESULT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_RESULT(7));

-- Location: IOIBUF_X40_Y45_N75
\ADD_SUB~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_SUB,
	o => \ADD_SUB~input_o\);

-- Location: IOIBUF_X34_Y45_N1
\B_PRESS~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_PRESS,
	o => \B_PRESS~input_o\);

-- Location: IOIBUF_X38_Y45_N52
\INPUT_BYTE[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_BYTE(0),
	o => \INPUT_BYTE[0]~input_o\);

-- Location: LABCELL_X35_Y44_N33
\B_Latch|DATA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_Latch|DATA\(0) = ( \B_Latch|DATA\(0) & ( (!\B_PRESS~input_o\) # (\INPUT_BYTE[0]~input_o\) ) ) # ( !\B_Latch|DATA\(0) & ( (\B_PRESS~input_o\ & \INPUT_BYTE[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_PRESS~input_o\,
	datab => \ALT_INV_INPUT_BYTE[0]~input_o\,
	dataf => \B_Latch|ALT_INV_DATA\(0),
	combout => \B_Latch|DATA\(0));

-- Location: IOIBUF_X36_Y45_N1
\A_PRESS~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_PRESS,
	o => \A_PRESS~input_o\);

-- Location: LABCELL_X35_Y44_N30
\A_Latch|DATA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_Latch|DATA\(0) = ( \A_Latch|DATA\(0) & ( (!\A_PRESS~input_o\) # (\INPUT_BYTE[0]~input_o\) ) ) # ( !\A_Latch|DATA\(0) & ( (\INPUT_BYTE[0]~input_o\ & \A_PRESS~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_INPUT_BYTE[0]~input_o\,
	datad => \ALT_INV_A_PRESS~input_o\,
	dataf => \A_Latch|ALT_INV_DATA\(0),
	combout => \A_Latch|DATA\(0));

-- Location: MLABCELL_X34_Y44_N30
\Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~34_cout\ = CARRY(( \ADD_SUB~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADD_SUB~input_o\,
	cin => GND,
	cout => \Add0~34_cout\);

-- Location: MLABCELL_X34_Y44_N33
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !\ADD_SUB~input_o\ $ (!\B_Latch|DATA\(0)) ) + ( \A_Latch|DATA\(0) ) + ( \Add0~34_cout\ ))
-- \Add0~2\ = CARRY(( !\ADD_SUB~input_o\ $ (!\B_Latch|DATA\(0)) ) + ( \A_Latch|DATA\(0) ) + ( \Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADD_SUB~input_o\,
	datac => \B_Latch|ALT_INV_DATA\(0),
	dataf => \A_Latch|ALT_INV_DATA\(0),
	cin => \Add0~34_cout\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: IOIBUF_X38_Y45_N35
\INPUT_BYTE[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_BYTE(1),
	o => \INPUT_BYTE[1]~input_o\);

-- Location: LABCELL_X35_Y44_N45
\A_Latch|DATA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_Latch|DATA\(1) = ( \A_Latch|DATA\(1) & ( \A_PRESS~input_o\ & ( \INPUT_BYTE[1]~input_o\ ) ) ) # ( !\A_Latch|DATA\(1) & ( \A_PRESS~input_o\ & ( \INPUT_BYTE[1]~input_o\ ) ) ) # ( \A_Latch|DATA\(1) & ( !\A_PRESS~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_INPUT_BYTE[1]~input_o\,
	datae => \A_Latch|ALT_INV_DATA\(1),
	dataf => \ALT_INV_A_PRESS~input_o\,
	combout => \A_Latch|DATA\(1));

-- Location: LABCELL_X35_Y44_N36
\B_Latch|DATA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_Latch|DATA\(1) = ( \B_Latch|DATA\(1) & ( \B_PRESS~input_o\ & ( \INPUT_BYTE[1]~input_o\ ) ) ) # ( !\B_Latch|DATA\(1) & ( \B_PRESS~input_o\ & ( \INPUT_BYTE[1]~input_o\ ) ) ) # ( \B_Latch|DATA\(1) & ( !\B_PRESS~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_INPUT_BYTE[1]~input_o\,
	datae => \B_Latch|ALT_INV_DATA\(1),
	dataf => \ALT_INV_B_PRESS~input_o\,
	combout => \B_Latch|DATA\(1));

-- Location: MLABCELL_X34_Y44_N36
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !\ADD_SUB~input_o\ $ (!\B_Latch|DATA\(1)) ) + ( \A_Latch|DATA\(1) ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( !\ADD_SUB~input_o\ $ (!\B_Latch|DATA\(1)) ) + ( \A_Latch|DATA\(1) ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADD_SUB~input_o\,
	datac => \A_Latch|ALT_INV_DATA\(1),
	datad => \B_Latch|ALT_INV_DATA\(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: IOIBUF_X40_Y45_N41
\INPUT_BYTE[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_BYTE(2),
	o => \INPUT_BYTE[2]~input_o\);

-- Location: LABCELL_X35_Y44_N18
\A_Latch|DATA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_Latch|DATA\(2) = ( \A_PRESS~input_o\ & ( \INPUT_BYTE[2]~input_o\ ) ) # ( !\A_PRESS~input_o\ & ( \A_Latch|DATA\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INPUT_BYTE[2]~input_o\,
	datac => \A_Latch|ALT_INV_DATA\(2),
	dataf => \ALT_INV_A_PRESS~input_o\,
	combout => \A_Latch|DATA\(2));

-- Location: LABCELL_X35_Y44_N21
\B_Latch|DATA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_Latch|DATA\(2) = ( \B_PRESS~input_o\ & ( \INPUT_BYTE[2]~input_o\ ) ) # ( !\B_PRESS~input_o\ & ( \B_Latch|DATA\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INPUT_BYTE[2]~input_o\,
	datad => \B_Latch|ALT_INV_DATA\(2),
	dataf => \ALT_INV_B_PRESS~input_o\,
	combout => \B_Latch|DATA\(2));

-- Location: MLABCELL_X34_Y44_N39
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \A_Latch|DATA\(2) ) + ( !\ADD_SUB~input_o\ $ (!\B_Latch|DATA\(2)) ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \A_Latch|DATA\(2) ) + ( !\ADD_SUB~input_o\ $ (!\B_Latch|DATA\(2)) ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADD_SUB~input_o\,
	datac => \A_Latch|ALT_INV_DATA\(2),
	dataf => \B_Latch|ALT_INV_DATA\(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: IOIBUF_X32_Y45_N58
\INPUT_BYTE[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_BYTE(3),
	o => \INPUT_BYTE[3]~input_o\);

-- Location: LABCELL_X35_Y44_N0
\A_Latch|DATA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_Latch|DATA\(3) = ( \A_Latch|DATA\(3) & ( \A_PRESS~input_o\ & ( \INPUT_BYTE[3]~input_o\ ) ) ) # ( !\A_Latch|DATA\(3) & ( \A_PRESS~input_o\ & ( \INPUT_BYTE[3]~input_o\ ) ) ) # ( \A_Latch|DATA\(3) & ( !\A_PRESS~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_INPUT_BYTE[3]~input_o\,
	datae => \A_Latch|ALT_INV_DATA\(3),
	dataf => \ALT_INV_A_PRESS~input_o\,
	combout => \A_Latch|DATA\(3));

-- Location: LABCELL_X35_Y44_N57
\B_Latch|DATA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_Latch|DATA\(3) = ( \B_Latch|DATA\(3) & ( \B_PRESS~input_o\ & ( \INPUT_BYTE[3]~input_o\ ) ) ) # ( !\B_Latch|DATA\(3) & ( \B_PRESS~input_o\ & ( \INPUT_BYTE[3]~input_o\ ) ) ) # ( \B_Latch|DATA\(3) & ( !\B_PRESS~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INPUT_BYTE[3]~input_o\,
	datae => \B_Latch|ALT_INV_DATA\(3),
	dataf => \ALT_INV_B_PRESS~input_o\,
	combout => \B_Latch|DATA\(3));

-- Location: MLABCELL_X34_Y44_N42
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \A_Latch|DATA\(3) ) + ( !\ADD_SUB~input_o\ $ (!\B_Latch|DATA\(3)) ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \A_Latch|DATA\(3) ) + ( !\ADD_SUB~input_o\ $ (!\B_Latch|DATA\(3)) ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADD_SUB~input_o\,
	datac => \A_Latch|ALT_INV_DATA\(3),
	dataf => \B_Latch|ALT_INV_DATA\(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: IOIBUF_X38_Y45_N18
\INPUT_BYTE[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_BYTE(4),
	o => \INPUT_BYTE[4]~input_o\);

-- Location: LABCELL_X35_Y44_N9
\B_Latch|DATA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_Latch|DATA\(4) = ( \B_PRESS~input_o\ & ( \INPUT_BYTE[4]~input_o\ ) ) # ( !\B_PRESS~input_o\ & ( \B_Latch|DATA\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INPUT_BYTE[4]~input_o\,
	datac => \B_Latch|ALT_INV_DATA\(4),
	dataf => \ALT_INV_B_PRESS~input_o\,
	combout => \B_Latch|DATA\(4));

-- Location: LABCELL_X35_Y44_N6
\A_Latch|DATA[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_Latch|DATA\(4) = ( \A_Latch|DATA\(4) & ( (!\A_PRESS~input_o\) # (\INPUT_BYTE[4]~input_o\) ) ) # ( !\A_Latch|DATA\(4) & ( (\INPUT_BYTE[4]~input_o\ & \A_PRESS~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INPUT_BYTE[4]~input_o\,
	datad => \ALT_INV_A_PRESS~input_o\,
	dataf => \A_Latch|ALT_INV_DATA\(4),
	combout => \A_Latch|DATA\(4));

-- Location: MLABCELL_X34_Y44_N45
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \A_Latch|DATA\(4) ) + ( !\ADD_SUB~input_o\ $ (!\B_Latch|DATA\(4)) ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \A_Latch|DATA\(4) ) + ( !\ADD_SUB~input_o\ $ (!\B_Latch|DATA\(4)) ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADD_SUB~input_o\,
	datac => \B_Latch|ALT_INV_DATA\(4),
	datad => \A_Latch|ALT_INV_DATA\(4),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: IOIBUF_X36_Y45_N18
\INPUT_BYTE[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_BYTE(5),
	o => \INPUT_BYTE[5]~input_o\);

-- Location: LABCELL_X35_Y44_N15
\A_Latch|DATA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_Latch|DATA\(5) = ( \INPUT_BYTE[5]~input_o\ & ( \A_PRESS~input_o\ ) ) # ( \INPUT_BYTE[5]~input_o\ & ( !\A_PRESS~input_o\ & ( \A_Latch|DATA\(5) ) ) ) # ( !\INPUT_BYTE[5]~input_o\ & ( !\A_PRESS~input_o\ & ( \A_Latch|DATA\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A_Latch|ALT_INV_DATA\(5),
	datae => \ALT_INV_INPUT_BYTE[5]~input_o\,
	dataf => \ALT_INV_A_PRESS~input_o\,
	combout => \A_Latch|DATA\(5));

-- Location: MLABCELL_X34_Y44_N0
\B_Latch|DATA[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_Latch|DATA\(5) = ( \B_PRESS~input_o\ & ( \B_Latch|DATA\(5) & ( \INPUT_BYTE[5]~input_o\ ) ) ) # ( !\B_PRESS~input_o\ & ( \B_Latch|DATA\(5) ) ) # ( \B_PRESS~input_o\ & ( !\B_Latch|DATA\(5) & ( \INPUT_BYTE[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_INPUT_BYTE[5]~input_o\,
	datae => \ALT_INV_B_PRESS~input_o\,
	dataf => \B_Latch|ALT_INV_DATA\(5),
	combout => \B_Latch|DATA\(5));

-- Location: MLABCELL_X34_Y44_N48
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !\ADD_SUB~input_o\ $ (!\B_Latch|DATA\(5)) ) + ( \A_Latch|DATA\(5) ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( !\ADD_SUB~input_o\ $ (!\B_Latch|DATA\(5)) ) + ( \A_Latch|DATA\(5) ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADD_SUB~input_o\,
	datac => \A_Latch|ALT_INV_DATA\(5),
	datad => \B_Latch|ALT_INV_DATA\(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: IOIBUF_X40_Y45_N58
\INPUT_BYTE[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_BYTE(6),
	o => \INPUT_BYTE[6]~input_o\);

-- Location: LABCELL_X35_Y44_N48
\B_Latch|DATA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_Latch|DATA\(6) = ( \B_Latch|DATA\(6) & ( (!\B_PRESS~input_o\) # (\INPUT_BYTE[6]~input_o\) ) ) # ( !\B_Latch|DATA\(6) & ( (\INPUT_BYTE[6]~input_o\ & \B_PRESS~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INPUT_BYTE[6]~input_o\,
	datac => \ALT_INV_B_PRESS~input_o\,
	dataf => \B_Latch|ALT_INV_DATA\(6),
	combout => \B_Latch|DATA\(6));

-- Location: LABCELL_X35_Y44_N51
\A_Latch|DATA[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_Latch|DATA\(6) = ( \A_Latch|DATA\(6) & ( (!\A_PRESS~input_o\) # (\INPUT_BYTE[6]~input_o\) ) ) # ( !\A_Latch|DATA\(6) & ( (\INPUT_BYTE[6]~input_o\ & \A_PRESS~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INPUT_BYTE[6]~input_o\,
	datad => \ALT_INV_A_PRESS~input_o\,
	dataf => \A_Latch|ALT_INV_DATA\(6),
	combout => \A_Latch|DATA\(6));

-- Location: MLABCELL_X34_Y44_N51
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \A_Latch|DATA\(6) ) + ( !\ADD_SUB~input_o\ $ (!\B_Latch|DATA\(6)) ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \A_Latch|DATA\(6) ) + ( !\ADD_SUB~input_o\ $ (!\B_Latch|DATA\(6)) ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADD_SUB~input_o\,
	datac => \B_Latch|ALT_INV_DATA\(6),
	datad => \A_Latch|ALT_INV_DATA\(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: IOIBUF_X36_Y45_N35
\INPUT_BYTE[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_BYTE(7),
	o => \INPUT_BYTE[7]~input_o\);

-- Location: LABCELL_X35_Y44_N27
\B_Latch|DATA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_Latch|DATA\(7) = ( \B_PRESS~input_o\ & ( \INPUT_BYTE[7]~input_o\ ) ) # ( !\B_PRESS~input_o\ & ( \B_Latch|DATA\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INPUT_BYTE[7]~input_o\,
	datad => \B_Latch|ALT_INV_DATA\(7),
	dataf => \ALT_INV_B_PRESS~input_o\,
	combout => \B_Latch|DATA\(7));

-- Location: LABCELL_X35_Y44_N24
\A_Latch|DATA[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_Latch|DATA\(7) = ( \A_PRESS~input_o\ & ( \INPUT_BYTE[7]~input_o\ ) ) # ( !\A_PRESS~input_o\ & ( \A_Latch|DATA\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INPUT_BYTE[7]~input_o\,
	datac => \A_Latch|ALT_INV_DATA\(7),
	dataf => \ALT_INV_A_PRESS~input_o\,
	combout => \A_Latch|DATA\(7));

-- Location: MLABCELL_X34_Y44_N54
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( !\B_Latch|DATA\(7) $ (!\ADD_SUB~input_o\) ) + ( \A_Latch|DATA\(7) ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B_Latch|ALT_INV_DATA\(7),
	datac => \ALT_INV_ADD_SUB~input_o\,
	dataf => \A_Latch|ALT_INV_DATA\(7),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\);

-- Location: MLABCELL_X45_Y4_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


