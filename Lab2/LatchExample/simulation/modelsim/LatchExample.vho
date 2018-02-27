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

-- DATE "02/09/2018 13:09:31"

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

ENTITY 	BCDto7Seg IS
    PORT (
	BCD : IN std_logic_vector(3 DOWNTO 0);
	DISPLAY : BUFFER std_logic_vector(0 TO 6)
	);
END BCDto7Seg;

-- Design Ports Information
-- DISPLAY[6]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[5]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[4]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[2]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[3]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BCDto7Seg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_BCD : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DISPLAY : std_logic_vector(0 TO 6);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \BCD[1]~input_o\ : std_logic;
SIGNAL \BCD[2]~input_o\ : std_logic;
SIGNAL \BCD[3]~input_o\ : std_logic;
SIGNAL \BCD[0]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_BCD[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_BCD[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_BCD[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_BCD[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_BCD <= BCD;
DISPLAY <= ww_DISPLAY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_BCD[3]~input_o\ <= NOT \BCD[3]~input_o\;
\ALT_INV_BCD[2]~input_o\ <= NOT \BCD[2]~input_o\;
\ALT_INV_BCD[1]~input_o\ <= NOT \BCD[1]~input_o\;
\ALT_INV_BCD[0]~input_o\ <= NOT \BCD[0]~input_o\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: IOOBUF_X54_Y19_N5
\DISPLAY[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY(6));

-- Location: IOOBUF_X54_Y17_N22
\DISPLAY[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY(5));

-- Location: IOOBUF_X54_Y21_N5
\DISPLAY[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY(4));

-- Location: IOOBUF_X54_Y19_N39
\DISPLAY[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY(3));

-- Location: IOOBUF_X54_Y17_N56
\DISPLAY[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY(2));

-- Location: IOOBUF_X54_Y19_N22
\DISPLAY[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY(1));

-- Location: IOOBUF_X54_Y19_N56
\DISPLAY[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY(0));

-- Location: IOIBUF_X54_Y21_N38
\BCD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD(1),
	o => \BCD[1]~input_o\);

-- Location: IOIBUF_X54_Y20_N38
\BCD[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD(2),
	o => \BCD[2]~input_o\);

-- Location: IOIBUF_X54_Y21_N21
\BCD[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD(3),
	o => \BCD[3]~input_o\);

-- Location: IOIBUF_X54_Y21_N55
\BCD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD(0),
	o => \BCD[0]~input_o\);

-- Location: LABCELL_X52_Y19_N0
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \BCD[3]~input_o\ & ( \BCD[0]~input_o\ & ( (!\BCD[1]~input_o\ & !\BCD[2]~input_o\) ) ) ) # ( !\BCD[3]~input_o\ & ( \BCD[0]~input_o\ & ( !\BCD[1]~input_o\ $ (!\BCD[2]~input_o\) ) ) ) # ( \BCD[3]~input_o\ & ( !\BCD[0]~input_o\ & ( 
-- (!\BCD[1]~input_o\ & !\BCD[2]~input_o\) ) ) ) # ( !\BCD[3]~input_o\ & ( !\BCD[0]~input_o\ & ( (\BCD[2]~input_o\) # (\BCD[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111110000001100000000111100001111001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BCD[1]~input_o\,
	datac => \ALT_INV_BCD[2]~input_o\,
	datae => \ALT_INV_BCD[3]~input_o\,
	dataf => \ALT_INV_BCD[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X52_Y19_N39
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \BCD[3]~input_o\ & ( \BCD[0]~input_o\ & ( (\BCD[1]~input_o\) # (\BCD[2]~input_o\) ) ) ) # ( !\BCD[3]~input_o\ & ( \BCD[0]~input_o\ & ( (!\BCD[2]~input_o\) # (\BCD[1]~input_o\) ) ) ) # ( \BCD[3]~input_o\ & ( !\BCD[0]~input_o\ & ( 
-- (\BCD[1]~input_o\) # (\BCD[2]~input_o\) ) ) ) # ( !\BCD[3]~input_o\ & ( !\BCD[0]~input_o\ & ( (!\BCD[2]~input_o\ & \BCD[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111110101111101011110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BCD[2]~input_o\,
	datac => \ALT_INV_BCD[1]~input_o\,
	datae => \ALT_INV_BCD[3]~input_o\,
	dataf => \ALT_INV_BCD[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X52_Y19_N12
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \BCD[3]~input_o\ & ( \BCD[0]~input_o\ ) ) # ( !\BCD[3]~input_o\ & ( \BCD[0]~input_o\ ) ) # ( \BCD[3]~input_o\ & ( !\BCD[0]~input_o\ & ( (\BCD[2]~input_o\) # (\BCD[1]~input_o\) ) ) ) # ( !\BCD[3]~input_o\ & ( !\BCD[0]~input_o\ & ( 
-- (!\BCD[1]~input_o\ & \BCD[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BCD[1]~input_o\,
	datac => \ALT_INV_BCD[2]~input_o\,
	datae => \ALT_INV_BCD[3]~input_o\,
	dataf => \ALT_INV_BCD[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X52_Y19_N51
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \BCD[3]~input_o\ & ( \BCD[0]~input_o\ & ( (\BCD[1]~input_o\) # (\BCD[2]~input_o\) ) ) ) # ( !\BCD[3]~input_o\ & ( \BCD[0]~input_o\ & ( !\BCD[2]~input_o\ $ (\BCD[1]~input_o\) ) ) ) # ( \BCD[3]~input_o\ & ( !\BCD[0]~input_o\ & ( 
-- (\BCD[1]~input_o\) # (\BCD[2]~input_o\) ) ) ) # ( !\BCD[3]~input_o\ & ( !\BCD[0]~input_o\ & ( (\BCD[2]~input_o\ & !\BCD[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111110100101101001010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BCD[2]~input_o\,
	datac => \ALT_INV_BCD[1]~input_o\,
	datae => \ALT_INV_BCD[3]~input_o\,
	dataf => \ALT_INV_BCD[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X52_Y19_N54
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \BCD[3]~input_o\ & ( \BCD[0]~input_o\ & ( (\BCD[2]~input_o\) # (\BCD[1]~input_o\) ) ) ) # ( \BCD[3]~input_o\ & ( !\BCD[0]~input_o\ & ( (\BCD[2]~input_o\) # (\BCD[1]~input_o\) ) ) ) # ( !\BCD[3]~input_o\ & ( !\BCD[0]~input_o\ & ( 
-- (\BCD[1]~input_o\ & !\BCD[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100000000000000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BCD[1]~input_o\,
	datac => \ALT_INV_BCD[2]~input_o\,
	datae => \ALT_INV_BCD[3]~input_o\,
	dataf => \ALT_INV_BCD[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X52_Y19_N33
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \BCD[3]~input_o\ & ( \BCD[0]~input_o\ & ( (\BCD[1]~input_o\) # (\BCD[2]~input_o\) ) ) ) # ( !\BCD[3]~input_o\ & ( \BCD[0]~input_o\ & ( (\BCD[2]~input_o\ & !\BCD[1]~input_o\) ) ) ) # ( \BCD[3]~input_o\ & ( !\BCD[0]~input_o\ & ( 
-- (\BCD[1]~input_o\) # (\BCD[2]~input_o\) ) ) ) # ( !\BCD[3]~input_o\ & ( !\BCD[0]~input_o\ & ( (\BCD[2]~input_o\ & \BCD[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010111110101111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BCD[2]~input_o\,
	datac => \ALT_INV_BCD[1]~input_o\,
	datae => \ALT_INV_BCD[3]~input_o\,
	dataf => \ALT_INV_BCD[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X52_Y19_N6
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \BCD[3]~input_o\ & ( \BCD[0]~input_o\ & ( (\BCD[2]~input_o\) # (\BCD[1]~input_o\) ) ) ) # ( !\BCD[3]~input_o\ & ( \BCD[0]~input_o\ & ( (!\BCD[1]~input_o\ & !\BCD[2]~input_o\) ) ) ) # ( \BCD[3]~input_o\ & ( !\BCD[0]~input_o\ & ( 
-- (\BCD[2]~input_o\) # (\BCD[1]~input_o\) ) ) ) # ( !\BCD[3]~input_o\ & ( !\BCD[0]~input_o\ & ( (!\BCD[1]~input_o\ & \BCD[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111111000000110000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BCD[1]~input_o\,
	datac => \ALT_INV_BCD[2]~input_o\,
	datae => \ALT_INV_BCD[3]~input_o\,
	dataf => \ALT_INV_BCD[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X25_Y16_N0
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


