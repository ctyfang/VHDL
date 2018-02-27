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

-- DATE "02/20/2018 08:43:47"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counter_RST9 IS
    PORT (
	Clock : IN std_logic;
	Reset : IN std_logic;
	Load : IN std_logic;
	D : IN std_logic_vector(3 DOWNTO 0);
	Q : OUT std_logic_vector(3 DOWNTO 0);
	Carry : OUT std_logic
	);
END counter_RST9;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Carry	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Load	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter_RST9 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Load : std_logic;
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Carry : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Load~input_o\ : std_logic;
SIGNAL \Count[3]~21_combout\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \Count[0]~1_combout\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Count[0]~3_combout\ : std_logic;
SIGNAL \Count[0]~0_combout\ : std_logic;
SIGNAL \Count[0]~_emulated_q\ : std_logic;
SIGNAL \Count[0]~2_combout\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \Count[1]~5_combout\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \Count[3]~13_combout\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \Count[2]~9_combout\ : std_logic;
SIGNAL \Count[2]~11_combout\ : std_logic;
SIGNAL \Count[2]~_emulated_q\ : std_logic;
SIGNAL \Count[2]~10_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Count[3]~15_combout\ : std_logic;
SIGNAL \Count[3]~_emulated_q\ : std_logic;
SIGNAL \Count[3]~14_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Count[1]~7_combout\ : std_logic;
SIGNAL \Count[1]~_emulated_q\ : std_logic;
SIGNAL \Count[1]~6_combout\ : std_logic;
SIGNAL \Carry~0_combout\ : std_logic;
SIGNAL \Carry~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Count[3]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_Count[2]~10_combout\ : std_logic;
SIGNAL \ALT_INV_Count[2]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_Count[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Count[1]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_Count[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Count[0]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_Count[3]~14_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Carry~0_combout\ : std_logic;
SIGNAL \ALT_INV_Count[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Count[3]~21_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Count[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Count[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Count[2]~9_combout\ : std_logic;
SIGNAL \ALT_INV_D[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Count[3]~13_combout\ : std_logic;
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;
SIGNAL \ALT_INV_D[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Load~input_o\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_Reset <= Reset;
ww_Load <= Load;
ww_D <= D;
Q <= ww_Q;
Carry <= ww_Carry;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Count[3]~_emulated_q\ <= NOT \Count[3]~_emulated_q\;
\ALT_INV_Count[2]~10_combout\ <= NOT \Count[2]~10_combout\;
\ALT_INV_Count[2]~_emulated_q\ <= NOT \Count[2]~_emulated_q\;
\ALT_INV_Count[1]~6_combout\ <= NOT \Count[1]~6_combout\;
\ALT_INV_Count[1]~_emulated_q\ <= NOT \Count[1]~_emulated_q\;
\ALT_INV_Count[0]~2_combout\ <= NOT \Count[0]~2_combout\;
\ALT_INV_Count[0]~_emulated_q\ <= NOT \Count[0]~_emulated_q\;
\ALT_INV_Count[3]~14_combout\ <= NOT \Count[3]~14_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Carry~0_combout\ <= NOT \Carry~0_combout\;
\ALT_INV_Count[0]~0_combout\ <= NOT \Count[0]~0_combout\;
\ALT_INV_Count[3]~21_combout\ <= NOT \Count[3]~21_combout\;
\ALT_INV_Add0~0_combout\ <= NOT \Add0~0_combout\;
\ALT_INV_Count[0]~1_combout\ <= NOT \Count[0]~1_combout\;
\ALT_INV_Count[1]~5_combout\ <= NOT \Count[1]~5_combout\;
\ALT_INV_Count[2]~9_combout\ <= NOT \Count[2]~9_combout\;
\ALT_INV_D[0]~input_o\ <= NOT \D[0]~input_o\;
\ALT_INV_Count[3]~13_combout\ <= NOT \Count[3]~13_combout\;
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;
\ALT_INV_D[1]~input_o\ <= NOT \D[1]~input_o\;
\ALT_INV_D[3]~input_o\ <= NOT \D[3]~input_o\;
\ALT_INV_D[2]~input_o\ <= NOT \D[2]~input_o\;
\ALT_INV_Load~input_o\ <= NOT \Load~input_o\;

-- Location: IOOBUF_X54_Y21_N5
\Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_Q(0));

-- Location: IOOBUF_X54_Y21_N22
\Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[1]~6_combout\,
	devoe => ww_devoe,
	o => ww_Q(1));

-- Location: IOOBUF_X54_Y21_N39
\Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[2]~10_combout\,
	devoe => ww_devoe,
	o => ww_Q(2));

-- Location: IOOBUF_X54_Y20_N39
\Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[3]~14_combout\,
	devoe => ww_devoe,
	o => ww_Q(3));

-- Location: IOOBUF_X54_Y20_N56
\Carry~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Carry~reg0_q\,
	devoe => ww_devoe,
	o => ww_Carry);

-- Location: IOIBUF_X54_Y20_N4
\Reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: IOIBUF_X54_Y21_N55
\Load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Load,
	o => \Load~input_o\);

-- Location: LABCELL_X53_Y21_N45
\Count[3]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[3]~21_combout\ = ( \Load~input_o\ & ( !\Reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Reset~input_o\,
	dataf => \ALT_INV_Load~input_o\,
	combout => \Count[3]~21_combout\);

-- Location: IOIBUF_X54_Y19_N4
\D[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: LABCELL_X53_Y21_N0
\Count[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[0]~1_combout\ = ( \Count[0]~1_combout\ & ( (!\Reset~input_o\ & ((!\Count[3]~21_combout\) # (\D[0]~input_o\))) ) ) # ( !\Count[0]~1_combout\ & ( (!\Reset~input_o\ & (\Count[3]~21_combout\ & \D[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001010001000101010101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reset~input_o\,
	datab => \ALT_INV_Count[3]~21_combout\,
	datad => \ALT_INV_D[0]~input_o\,
	dataf => \ALT_INV_Count[0]~1_combout\,
	combout => \Count[0]~1_combout\);

-- Location: IOIBUF_X54_Y18_N61
\Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G10
\Clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~input_o\,
	outclk => \Clock~inputCLKENA0_outclk\);

-- Location: LABCELL_X53_Y21_N6
\Count[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[0]~3_combout\ = ( \Count[0]~2_combout\ & ( \Count[0]~1_combout\ ) ) # ( !\Count[0]~2_combout\ & ( !\Count[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Count[0]~1_combout\,
	dataf => \ALT_INV_Count[0]~2_combout\,
	combout => \Count[0]~3_combout\);

-- Location: LABCELL_X53_Y21_N36
\Count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[0]~0_combout\ = (\Reset~input_o\) # (\Count[3]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Count[3]~21_combout\,
	datac => \ALT_INV_Reset~input_o\,
	combout => \Count[0]~0_combout\);

-- Location: FF_X53_Y21_N8
\Count[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Count[0]~3_combout\,
	clrn => \ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[0]~_emulated_q\);

-- Location: LABCELL_X53_Y21_N57
\Count[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[0]~2_combout\ = ( \Count[0]~1_combout\ & ( \Count[0]~_emulated_q\ & ( (\Count[3]~21_combout\ & (\D[0]~input_o\ & !\Reset~input_o\)) ) ) ) # ( !\Count[0]~1_combout\ & ( \Count[0]~_emulated_q\ & ( (!\Reset~input_o\ & ((!\Count[3]~21_combout\) # 
-- (\D[0]~input_o\))) ) ) ) # ( \Count[0]~1_combout\ & ( !\Count[0]~_emulated_q\ & ( (!\Reset~input_o\ & ((!\Count[3]~21_combout\) # (\D[0]~input_o\))) ) ) ) # ( !\Count[0]~1_combout\ & ( !\Count[0]~_emulated_q\ & ( (\Count[3]~21_combout\ & (\D[0]~input_o\ & 
-- !\Reset~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000101011110000000010101111000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Count[3]~21_combout\,
	datac => \ALT_INV_D[0]~input_o\,
	datad => \ALT_INV_Reset~input_o\,
	datae => \ALT_INV_Count[0]~1_combout\,
	dataf => \ALT_INV_Count[0]~_emulated_q\,
	combout => \Count[0]~2_combout\);

-- Location: IOIBUF_X54_Y19_N21
\D[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LABCELL_X53_Y21_N18
\Count[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[1]~5_combout\ = ( \Count[1]~5_combout\ & ( (!\Reset~input_o\ & ((!\Count[3]~21_combout\) # (\D[1]~input_o\))) ) ) # ( !\Count[1]~5_combout\ & ( (!\Reset~input_o\ & (\D[1]~input_o\ & \Count[3]~21_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001010101010001000101010101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reset~input_o\,
	datab => \ALT_INV_D[1]~input_o\,
	datad => \ALT_INV_Count[3]~21_combout\,
	dataf => \ALT_INV_Count[1]~5_combout\,
	combout => \Count[1]~5_combout\);

-- Location: IOIBUF_X54_Y19_N55
\D[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: LABCELL_X53_Y21_N3
\Count[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[3]~13_combout\ = ( \Count[3]~21_combout\ & ( (!\Reset~input_o\ & \D[3]~input_o\) ) ) # ( !\Count[3]~21_combout\ & ( (!\Reset~input_o\ & \Count[3]~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reset~input_o\,
	datac => \ALT_INV_D[3]~input_o\,
	datad => \ALT_INV_Count[3]~13_combout\,
	dataf => \ALT_INV_Count[3]~21_combout\,
	combout => \Count[3]~13_combout\);

-- Location: IOIBUF_X54_Y20_N21
\D[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: LABCELL_X53_Y21_N21
\Count[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[2]~9_combout\ = ( \D[2]~input_o\ & ( (!\Reset~input_o\ & ((\Count[2]~9_combout\) # (\Count[3]~21_combout\))) ) ) # ( !\D[2]~input_o\ & ( (!\Reset~input_o\ & (!\Count[3]~21_combout\ & \Count[2]~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reset~input_o\,
	datac => \ALT_INV_Count[3]~21_combout\,
	datad => \ALT_INV_Count[2]~9_combout\,
	dataf => \ALT_INV_D[2]~input_o\,
	combout => \Count[2]~9_combout\);

-- Location: LABCELL_X53_Y21_N33
\Count[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[2]~11_combout\ = ( \Count[0]~2_combout\ & ( !\Count[1]~6_combout\ $ (!\Count[2]~9_combout\ $ (\Count[2]~10_combout\)) ) ) # ( !\Count[0]~2_combout\ & ( !\Count[2]~9_combout\ $ (!\Count[2]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110001101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Count[1]~6_combout\,
	datab => \ALT_INV_Count[2]~9_combout\,
	datac => \ALT_INV_Count[2]~10_combout\,
	dataf => \ALT_INV_Count[0]~2_combout\,
	combout => \Count[2]~11_combout\);

-- Location: FF_X53_Y21_N35
\Count[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Count[2]~11_combout\,
	clrn => \ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[2]~_emulated_q\);

-- Location: LABCELL_X53_Y21_N24
\Count[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[2]~10_combout\ = ( \Count[2]~9_combout\ & ( \Count[2]~_emulated_q\ & ( (\Count[3]~21_combout\ & (!\Reset~input_o\ & \D[2]~input_o\)) ) ) ) # ( !\Count[2]~9_combout\ & ( \Count[2]~_emulated_q\ & ( (!\Reset~input_o\ & ((!\Count[3]~21_combout\) # 
-- (\D[2]~input_o\))) ) ) ) # ( \Count[2]~9_combout\ & ( !\Count[2]~_emulated_q\ & ( (!\Reset~input_o\ & ((!\Count[3]~21_combout\) # (\D[2]~input_o\))) ) ) ) # ( !\Count[2]~9_combout\ & ( !\Count[2]~_emulated_q\ & ( (\Count[3]~21_combout\ & (!\Reset~input_o\ 
-- & \D[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000101000001111000010100000111100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Count[3]~21_combout\,
	datac => \ALT_INV_Reset~input_o\,
	datad => \ALT_INV_D[2]~input_o\,
	datae => \ALT_INV_Count[2]~9_combout\,
	dataf => \ALT_INV_Count[2]~_emulated_q\,
	combout => \Count[2]~10_combout\);

-- Location: LABCELL_X53_Y21_N15
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( \Count[2]~10_combout\ & ( (\Count[1]~6_combout\ & \Count[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Count[1]~6_combout\,
	datad => \ALT_INV_Count[0]~2_combout\,
	dataf => \ALT_INV_Count[2]~10_combout\,
	combout => \Add0~0_combout\);

-- Location: LABCELL_X53_Y21_N39
\Count[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[3]~15_combout\ = ( \Equal0~0_combout\ & ( !\Count[3]~13_combout\ $ (!\Add0~0_combout\ $ (!\Count[3]~14_combout\)) ) ) # ( !\Equal0~0_combout\ & ( !\Count[3]~13_combout\ $ (!\Add0~0_combout\ $ (\Count[3]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Count[3]~13_combout\,
	datac => \ALT_INV_Add0~0_combout\,
	datad => \ALT_INV_Count[3]~14_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Count[3]~15_combout\);

-- Location: FF_X53_Y21_N41
\Count[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Count[3]~15_combout\,
	clrn => \ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[3]~_emulated_q\);

-- Location: LABCELL_X53_Y21_N9
\Count[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[3]~14_combout\ = ( \Count[3]~_emulated_q\ & ( (!\Reset~input_o\ & ((!\Count[3]~21_combout\ & ((!\Count[3]~13_combout\))) # (\Count[3]~21_combout\ & (\D[3]~input_o\)))) ) ) # ( !\Count[3]~_emulated_q\ & ( (!\Reset~input_o\ & ((!\Count[3]~21_combout\ 
-- & ((\Count[3]~13_combout\))) # (\Count[3]~21_combout\ & (\D[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000100001011000010110000000100001011000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Count[3]~21_combout\,
	datab => \ALT_INV_D[3]~input_o\,
	datac => \ALT_INV_Reset~input_o\,
	datad => \ALT_INV_Count[3]~13_combout\,
	dataf => \ALT_INV_Count[3]~_emulated_q\,
	combout => \Count[3]~14_combout\);

-- Location: LABCELL_X53_Y21_N51
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \Count[0]~2_combout\ & ( !\Count[2]~10_combout\ & ( (\Count[3]~14_combout\ & !\Count[1]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Count[3]~14_combout\,
	datab => \ALT_INV_Count[1]~6_combout\,
	datae => \ALT_INV_Count[0]~2_combout\,
	dataf => \ALT_INV_Count[2]~10_combout\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X53_Y21_N42
\Count[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[1]~7_combout\ = ( \Equal0~0_combout\ & ( !\Count[1]~6_combout\ $ (!\Count[0]~2_combout\ $ (!\Count[1]~5_combout\)) ) ) # ( !\Equal0~0_combout\ & ( !\Count[1]~6_combout\ $ (!\Count[0]~2_combout\ $ (\Count[1]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Count[1]~6_combout\,
	datab => \ALT_INV_Count[0]~2_combout\,
	datac => \ALT_INV_Count[1]~5_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Count[1]~7_combout\);

-- Location: FF_X53_Y21_N44
\Count[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Count[1]~7_combout\,
	clrn => \ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[1]~_emulated_q\);

-- Location: LABCELL_X53_Y21_N12
\Count[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[1]~6_combout\ = ( \Count[1]~_emulated_q\ & ( (!\Reset~input_o\ & ((!\Count[3]~21_combout\ & (!\Count[1]~5_combout\)) # (\Count[3]~21_combout\ & ((\D[1]~input_o\))))) ) ) # ( !\Count[1]~_emulated_q\ & ( (!\Reset~input_o\ & ((!\Count[3]~21_combout\ & 
-- (\Count[1]~5_combout\)) # (\Count[3]~21_combout\ & ((\D[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110010000000110001001000000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Count[3]~21_combout\,
	datab => \ALT_INV_Reset~input_o\,
	datac => \ALT_INV_Count[1]~5_combout\,
	datad => \ALT_INV_D[1]~input_o\,
	dataf => \ALT_INV_Count[1]~_emulated_q\,
	combout => \Count[1]~6_combout\);

-- Location: LABCELL_X53_Y21_N30
\Carry~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Carry~0_combout\ = ( \Load~input_o\ ) # ( !\Load~input_o\ & ( \Reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Reset~input_o\,
	dataf => \ALT_INV_Load~input_o\,
	combout => \Carry~0_combout\);

-- Location: FF_X53_Y21_N52
\Carry~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Equal0~0_combout\,
	clrn => \ALT_INV_Carry~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Carry~reg0_q\);

-- Location: MLABCELL_X37_Y21_N0
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


