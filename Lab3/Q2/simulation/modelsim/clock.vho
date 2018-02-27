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

-- DATE "02/20/2018 14:56:40"

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

ENTITY 	clock2 IS
    PORT (
	inclock : IN std_logic;
	rst : IN std_logic;
	sec : IN std_logic;
	min : IN std_logic;
	hr : IN std_logic;
	input_time : IN std_logic_vector(7 DOWNTO 0);
	hexsec1 : OUT std_logic_vector(0 TO 6);
	hexsec10 : OUT std_logic_vector(0 TO 6);
	hexmin1 : OUT std_logic_vector(0 TO 6);
	hexmin10 : OUT std_logic_vector(0 TO 6);
	hexhr1 : OUT std_logic_vector(0 TO 6);
	hexhr10 : OUT std_logic_vector(0 TO 6)
	);
END clock2;

-- Design Ports Information
-- rst	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexsec1[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexsec1[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexsec1[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexsec1[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexsec1[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexsec1[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexsec1[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexsec10[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexsec10[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexsec10[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexsec10[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexsec10[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexsec10[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexsec10[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexmin1[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexmin1[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexmin1[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexmin1[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexmin1[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexmin1[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexmin1[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexmin10[6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexmin10[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexmin10[4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexmin10[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexmin10[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexmin10[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexmin10[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexhr1[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexhr1[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexhr1[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexhr1[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexhr1[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexhr1[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexhr1[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexhr10[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexhr10[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexhr10[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexhr10[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexhr10[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexhr10[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexhr10[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_time[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_time[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_time[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_time[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_time[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_time[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_time[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_time[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hr	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inclock	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clock2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inclock : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_sec : std_logic;
SIGNAL ww_min : std_logic;
SIGNAL ww_hr : std_logic;
SIGNAL ww_input_time : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hexsec1 : std_logic_vector(0 TO 6);
SIGNAL ww_hexsec10 : std_logic_vector(0 TO 6);
SIGNAL ww_hexmin1 : std_logic_vector(0 TO 6);
SIGNAL ww_hexmin10 : std_logic_vector(0 TO 6);
SIGNAL ww_hexhr1 : std_logic_vector(0 TO 6);
SIGNAL ww_hexhr10 : std_logic_vector(0 TO 6);
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \inclock~input_o\ : std_logic;
SIGNAL \inclock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \scaled_clock|Add0~41_sumout\ : std_logic;
SIGNAL \scaled_clock|Add0~90\ : std_logic;
SIGNAL \scaled_clock|Add0~85_sumout\ : std_logic;
SIGNAL \scaled_clock|Add0~86\ : std_logic;
SIGNAL \scaled_clock|Add0~81_sumout\ : std_logic;
SIGNAL \scaled_clock|Add0~82\ : std_logic;
SIGNAL \scaled_clock|Add0~73_sumout\ : std_logic;
SIGNAL \scaled_clock|Count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \scaled_clock|Add0~74\ : std_logic;
SIGNAL \scaled_clock|Add0~77_sumout\ : std_logic;
SIGNAL \scaled_clock|Add0~78\ : std_logic;
SIGNAL \scaled_clock|Add0~69_sumout\ : std_logic;
SIGNAL \scaled_clock|Add0~70\ : std_logic;
SIGNAL \scaled_clock|Add0~65_sumout\ : std_logic;
SIGNAL \scaled_clock|Add0~66\ : std_logic;
SIGNAL \scaled_clock|Add0~61_sumout\ : std_logic;
SIGNAL \scaled_clock|Add0~62\ : std_logic;
SIGNAL \scaled_clock|Add0~57_sumout\ : std_logic;
SIGNAL \scaled_clock|Add0~58\ : std_logic;
SIGNAL \scaled_clock|Add0~53_sumout\ : std_logic;
SIGNAL \scaled_clock|Add0~54\ : std_logic;
SIGNAL \scaled_clock|Add0~5_sumout\ : std_logic;
SIGNAL \scaled_clock|Add0~6\ : std_logic;
SIGNAL \scaled_clock|Add0~45_sumout\ : std_logic;
SIGNAL \scaled_clock|Add0~46\ : std_logic;
SIGNAL \scaled_clock|Add0~1_sumout\ : std_logic;
SIGNAL \scaled_clock|Equal0~2_combout\ : std_logic;
SIGNAL \scaled_clock|Add0~2\ : std_logic;
SIGNAL \scaled_clock|Add0~49_sumout\ : std_logic;
SIGNAL \scaled_clock|Count[19]~DUPLICATE_q\ : std_logic;
SIGNAL \scaled_clock|Add0~50\ : std_logic;
SIGNAL \scaled_clock|Add0~9_sumout\ : std_logic;
SIGNAL \scaled_clock|Add0~10\ : std_logic;
SIGNAL \scaled_clock|Add0~13_sumout\ : std_logic;
SIGNAL \scaled_clock|Add0~14\ : std_logic;
SIGNAL \scaled_clock|Add0~17_sumout\ : std_logic;
SIGNAL \scaled_clock|Add0~18\ : std_logic;
SIGNAL \scaled_clock|Add0~21_sumout\ : std_logic;
SIGNAL \scaled_clock|Add0~22\ : std_logic;
SIGNAL \scaled_clock|Add0~25_sumout\ : std_logic;
SIGNAL \scaled_clock|Equal0~0_combout\ : std_logic;
SIGNAL \scaled_clock|Equal0~1_combout\ : std_logic;
SIGNAL \scaled_clock|Equal0~4_combout\ : std_logic;
SIGNAL \scaled_clock|Count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \scaled_clock|Add0~42\ : std_logic;
SIGNAL \scaled_clock|Add0~37_sumout\ : std_logic;
SIGNAL \scaled_clock|Add0~38\ : std_logic;
SIGNAL \scaled_clock|Add0~33_sumout\ : std_logic;
SIGNAL \scaled_clock|Add0~34\ : std_logic;
SIGNAL \scaled_clock|Add0~29_sumout\ : std_logic;
SIGNAL \scaled_clock|Add0~30\ : std_logic;
SIGNAL \scaled_clock|Add0~97_sumout\ : std_logic;
SIGNAL \scaled_clock|Count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \scaled_clock|Add0~98\ : std_logic;
SIGNAL \scaled_clock|Add0~93_sumout\ : std_logic;
SIGNAL \scaled_clock|Add0~94\ : std_logic;
SIGNAL \scaled_clock|Add0~89_sumout\ : std_logic;
SIGNAL \scaled_clock|Count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \scaled_clock|Equal0~3_combout\ : std_logic;
SIGNAL \scaled_clock|Curr~0_combout\ : std_logic;
SIGNAL \scaled_clock|Curr~q\ : std_logic;
SIGNAL \input_time[0]~input_o\ : std_logic;
SIGNAL \sec~input_o\ : std_logic;
SIGNAL \hr~input_o\ : std_logic;
SIGNAL \HR10|Count[3]~21_combout\ : std_logic;
SIGNAL \input_time[6]~input_o\ : std_logic;
SIGNAL \HR10|Count[2]~9_combout\ : std_logic;
SIGNAL \input_time[2]~input_o\ : std_logic;
SIGNAL \SEC1|Count[2]~9_combout\ : std_logic;
SIGNAL \input_time[1]~input_o\ : std_logic;
SIGNAL \SEC1|Count[1]~5_combout\ : std_logic;
SIGNAL \input_time[3]~input_o\ : std_logic;
SIGNAL \SEC1|Count[3]~13_combout\ : std_logic;
SIGNAL \SEC1|Count[3]~15_combout\ : std_logic;
SIGNAL \SEC1|Count[0]~0_combout\ : std_logic;
SIGNAL \SEC1|Count[3]~_emulated_q\ : std_logic;
SIGNAL \SEC1|Count[3]~14_combout\ : std_logic;
SIGNAL \SEC1|Count[1]~7_combout\ : std_logic;
SIGNAL \SEC1|Count[1]~_emulated_q\ : std_logic;
SIGNAL \SEC1|Count[1]~6_combout\ : std_logic;
SIGNAL \SEC1|Count[2]~11_combout\ : std_logic;
SIGNAL \SEC1|Count[2]~_emulated_q\ : std_logic;
SIGNAL \SEC1|Count[2]~10_combout\ : std_logic;
SIGNAL \SEC1|Equal0~0_combout\ : std_logic;
SIGNAL \SEC1|Carry~0_combout\ : std_logic;
SIGNAL \SEC1|Carry~q\ : std_logic;
SIGNAL \SEC10|Count[3]~22_combout\ : std_logic;
SIGNAL \SEC10|Count[2]~9_combout\ : std_logic;
SIGNAL \input_time[4]~input_o\ : std_logic;
SIGNAL \SEC10|Count[0]~1_combout\ : std_logic;
SIGNAL \SEC10|Count[0]~3_combout\ : std_logic;
SIGNAL \SEC10|Count[0]~0_combout\ : std_logic;
SIGNAL \SEC10|Count[0]~_emulated_q\ : std_logic;
SIGNAL \SEC10|Count[0]~2_combout\ : std_logic;
SIGNAL \input_time[5]~input_o\ : std_logic;
SIGNAL \SEC10|Count[1]~5_combout\ : std_logic;
SIGNAL \input_time[7]~input_o\ : std_logic;
SIGNAL \SEC10|Count[3]~13_combout\ : std_logic;
SIGNAL \SEC10|Count[3]~15_combout\ : std_logic;
SIGNAL \SEC10|Count[3]~_emulated_q\ : std_logic;
SIGNAL \SEC10|Count[3]~14_combout\ : std_logic;
SIGNAL \SEC10|Count[1]~7_combout\ : std_logic;
SIGNAL \SEC10|Count[1]~_emulated_q\ : std_logic;
SIGNAL \SEC10|Count[1]~6_combout\ : std_logic;
SIGNAL \SEC10|Count[2]~11_combout\ : std_logic;
SIGNAL \SEC10|Count[2]~_emulated_q\ : std_logic;
SIGNAL \SEC10|Count[2]~10_combout\ : std_logic;
SIGNAL \SEC10|Equal0~0_combout\ : std_logic;
SIGNAL \SEC10|Carry~q\ : std_logic;
SIGNAL \min~input_o\ : std_logic;
SIGNAL \MIN1|Count[3]~21_combout\ : std_logic;
SIGNAL \MIN1|Count[0]~1_combout\ : std_logic;
SIGNAL \MIN1|Count[0]~3_combout\ : std_logic;
SIGNAL \MIN1|Count[0]~0_combout\ : std_logic;
SIGNAL \MIN1|Count[0]~_emulated_q\ : std_logic;
SIGNAL \MIN1|Count[0]~2_combout\ : std_logic;
SIGNAL \MIN1|Count[3]~13_combout\ : std_logic;
SIGNAL \MIN1|Count[1]~5_combout\ : std_logic;
SIGNAL \MIN1|Count[1]~7_combout\ : std_logic;
SIGNAL \MIN1|Count[1]~_emulated_q\ : std_logic;
SIGNAL \MIN1|Count[1]~6_combout\ : std_logic;
SIGNAL \MIN1|Count[2]~9_combout\ : std_logic;
SIGNAL \MIN1|Count[2]~11_combout\ : std_logic;
SIGNAL \MIN1|Count[2]~_emulated_q\ : std_logic;
SIGNAL \MIN1|Count[2]~10_combout\ : std_logic;
SIGNAL \MIN1|Add0~0_combout\ : std_logic;
SIGNAL \MIN1|Count[3]~15_combout\ : std_logic;
SIGNAL \MIN1|Count[3]~_emulated_q\ : std_logic;
SIGNAL \MIN1|Count[3]~14_combout\ : std_logic;
SIGNAL \MIN1|Equal0~0_combout\ : std_logic;
SIGNAL \MIN10|Carry~0_combout\ : std_logic;
SIGNAL \MIN1|Carry~q\ : std_logic;
SIGNAL \MIN10|Count[3]~21_combout\ : std_logic;
SIGNAL \MIN10|Count[2]~9_combout\ : std_logic;
SIGNAL \MIN10|Count[0]~1_combout\ : std_logic;
SIGNAL \MIN10|Count[0]~3_combout\ : std_logic;
SIGNAL \MIN10|Count[0]~0_combout\ : std_logic;
SIGNAL \MIN10|Count[0]~_emulated_q\ : std_logic;
SIGNAL \MIN10|Count[0]~2_combout\ : std_logic;
SIGNAL \MIN10|Count[1]~5_combout\ : std_logic;
SIGNAL \MIN10|Count[1]~7_combout\ : std_logic;
SIGNAL \MIN10|Count[1]~_emulated_q\ : std_logic;
SIGNAL \MIN10|Count[1]~6_combout\ : std_logic;
SIGNAL \MIN10|Add0~0_combout\ : std_logic;
SIGNAL \MIN10|Count[2]~11_combout\ : std_logic;
SIGNAL \MIN10|Count[2]~_emulated_q\ : std_logic;
SIGNAL \MIN10|Count[2]~10_combout\ : std_logic;
SIGNAL \MIN10|Count[3]~13_combout\ : std_logic;
SIGNAL \MIN10|Count[3]~15_combout\ : std_logic;
SIGNAL \MIN10|Count[3]~_emulated_q\ : std_logic;
SIGNAL \MIN10|Count[3]~14_combout\ : std_logic;
SIGNAL \MIN10|Equal0~0_combout\ : std_logic;
SIGNAL \MIN10|Carry~q\ : std_logic;
SIGNAL \HR1|Count[1]~5_combout\ : std_logic;
SIGNAL \HR1|Count[0]~1_combout\ : std_logic;
SIGNAL \HR1|Count[0]~3_combout\ : std_logic;
SIGNAL \HR1|Count[0]~0_combout\ : std_logic;
SIGNAL \HR1|Count[0]~_emulated_q\ : std_logic;
SIGNAL \HR1|Count[0]~2_combout\ : std_logic;
SIGNAL \HR1|Count[1]~7_combout\ : std_logic;
SIGNAL \HR1|Count[1]~_emulated_q\ : std_logic;
SIGNAL \HR1|Count[1]~6_combout\ : std_logic;
SIGNAL \HR1|Count[2]~9_combout\ : std_logic;
SIGNAL \HR1|Count[2]~11_combout\ : std_logic;
SIGNAL \HR1|Count[2]~_emulated_q\ : std_logic;
SIGNAL \HR1|Count[2]~10_combout\ : std_logic;
SIGNAL \HR1|Count[3]~13_combout\ : std_logic;
SIGNAL \HR1|Add0~0_combout\ : std_logic;
SIGNAL \HR1|Count[3]~15_combout\ : std_logic;
SIGNAL \HR1|Count[3]~_emulated_q\ : std_logic;
SIGNAL \HR1|Count[3]~14_combout\ : std_logic;
SIGNAL \HR1|Equal0~0_combout\ : std_logic;
SIGNAL \HR1|Carry~q\ : std_logic;
SIGNAL \HR10|Count[0]~1_combout\ : std_logic;
SIGNAL \HR10|Count[0]~3_combout\ : std_logic;
SIGNAL \HR10|Count[0]~0_combout\ : std_logic;
SIGNAL \HR10|Count[0]~_emulated_q\ : std_logic;
SIGNAL \HR10|Count[0]~2_combout\ : std_logic;
SIGNAL \HR10|Count[3]~13_combout\ : std_logic;
SIGNAL \HR10|Count[1]~5_combout\ : std_logic;
SIGNAL \HR10|Equal0~0_combout\ : std_logic;
SIGNAL \HR10|Count[1]~7_combout\ : std_logic;
SIGNAL \HR10|Count[1]~_emulated_q\ : std_logic;
SIGNAL \HR10|Count[1]~6_combout\ : std_logic;
SIGNAL \HR10|Add0~0_combout\ : std_logic;
SIGNAL \HR10|Count[3]~15_combout\ : std_logic;
SIGNAL \HR10|Count[3]~_emulated_q\ : std_logic;
SIGNAL \HR10|Count[3]~14_combout\ : std_logic;
SIGNAL \HR10|Equal0~1_combout\ : std_logic;
SIGNAL \HR10|Count[2]~11_combout\ : std_logic;
SIGNAL \HR10|Count[2]~_emulated_q\ : std_logic;
SIGNAL \HR10|Count[2]~10_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \SEC1|Count[3]~21_combout\ : std_logic;
SIGNAL \SEC1|Count[0]~1_combout\ : std_logic;
SIGNAL \SEC1|Count[0]~3_combout\ : std_logic;
SIGNAL \SEC1|Count[0]~_emulated_q\ : std_logic;
SIGNAL \SEC1|Count[0]~2_combout\ : std_logic;
SIGNAL \sec1_Disp|Mux6~0_combout\ : std_logic;
SIGNAL \sec1_Disp|Mux5~0_combout\ : std_logic;
SIGNAL \sec1_Disp|Mux4~0_combout\ : std_logic;
SIGNAL \sec1_Disp|Mux3~0_combout\ : std_logic;
SIGNAL \sec1_Disp|Mux2~0_combout\ : std_logic;
SIGNAL \sec1_Disp|Mux1~0_combout\ : std_logic;
SIGNAL \sec1_Disp|Mux0~0_combout\ : std_logic;
SIGNAL \sec10_Disp|Mux6~0_combout\ : std_logic;
SIGNAL \sec10_Disp|Mux5~0_combout\ : std_logic;
SIGNAL \sec10_Disp|Mux4~0_combout\ : std_logic;
SIGNAL \sec10_Disp|Mux3~0_combout\ : std_logic;
SIGNAL \sec10_Disp|Mux2~0_combout\ : std_logic;
SIGNAL \sec10_Disp|Mux1~0_combout\ : std_logic;
SIGNAL \sec10_Disp|Mux0~0_combout\ : std_logic;
SIGNAL \min1_Disp|Mux6~0_combout\ : std_logic;
SIGNAL \min1_Disp|Mux5~0_combout\ : std_logic;
SIGNAL \min1_Disp|Mux4~0_combout\ : std_logic;
SIGNAL \min1_Disp|Mux3~0_combout\ : std_logic;
SIGNAL \min1_Disp|Mux2~0_combout\ : std_logic;
SIGNAL \min1_Disp|Mux1~0_combout\ : std_logic;
SIGNAL \min1_Disp|Mux0~0_combout\ : std_logic;
SIGNAL \min10_Disp|Mux6~0_combout\ : std_logic;
SIGNAL \min10_Disp|Mux5~0_combout\ : std_logic;
SIGNAL \min10_Disp|Mux4~0_combout\ : std_logic;
SIGNAL \min10_Disp|Mux3~0_combout\ : std_logic;
SIGNAL \min10_Disp|Mux2~0_combout\ : std_logic;
SIGNAL \min10_Disp|Mux1~0_combout\ : std_logic;
SIGNAL \min10_Disp|Mux0~0_combout\ : std_logic;
SIGNAL \hr1_Disp|Mux6~0_combout\ : std_logic;
SIGNAL \hr1_Disp|Mux5~0_combout\ : std_logic;
SIGNAL \hr1_Disp|Mux4~0_combout\ : std_logic;
SIGNAL \hr1_Disp|Mux3~0_combout\ : std_logic;
SIGNAL \hr1_Disp|Mux2~0_combout\ : std_logic;
SIGNAL \hr1_Disp|Mux1~0_combout\ : std_logic;
SIGNAL \hr1_Disp|Mux0~0_combout\ : std_logic;
SIGNAL \hr10_Disp|Mux6~0_combout\ : std_logic;
SIGNAL \hr10_Disp|Mux5~0_combout\ : std_logic;
SIGNAL \hr10_Disp|Mux4~0_combout\ : std_logic;
SIGNAL \hr10_Disp|Mux3~0_combout\ : std_logic;
SIGNAL \hr10_Disp|Mux2~0_combout\ : std_logic;
SIGNAL \hr10_Disp|Mux1~0_combout\ : std_logic;
SIGNAL \hr10_Disp|Mux0~0_combout\ : std_logic;
SIGNAL \scaled_clock|Count\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \scaled_clock|ALT_INV_Count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \scaled_clock|ALT_INV_Count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \scaled_clock|ALT_INV_Count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \scaled_clock|ALT_INV_Count[19]~DUPLICATE_q\ : std_logic;
SIGNAL \scaled_clock|ALT_INV_Count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hr~input_o\ : std_logic;
SIGNAL \ALT_INV_min~input_o\ : std_logic;
SIGNAL \ALT_INV_input_time[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_time[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_time[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_time[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_time[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_time[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_time[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_time[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sec~input_o\ : std_logic;
SIGNAL \HR10|ALT_INV_Count[3]~13_combout\ : std_logic;
SIGNAL \HR10|ALT_INV_Count[2]~9_combout\ : std_logic;
SIGNAL \HR10|ALT_INV_Count[1]~5_combout\ : std_logic;
SIGNAL \HR10|ALT_INV_Count[0]~1_combout\ : std_logic;
SIGNAL \HR1|ALT_INV_Count[3]~13_combout\ : std_logic;
SIGNAL \HR1|ALT_INV_Count[2]~9_combout\ : std_logic;
SIGNAL \HR1|ALT_INV_Count[1]~5_combout\ : std_logic;
SIGNAL \HR1|ALT_INV_Count[0]~1_combout\ : std_logic;
SIGNAL \MIN10|ALT_INV_Count[3]~13_combout\ : std_logic;
SIGNAL \MIN10|ALT_INV_Count[2]~9_combout\ : std_logic;
SIGNAL \MIN10|ALT_INV_Count[1]~5_combout\ : std_logic;
SIGNAL \MIN10|ALT_INV_Count[0]~1_combout\ : std_logic;
SIGNAL \MIN1|ALT_INV_Count[3]~13_combout\ : std_logic;
SIGNAL \MIN1|ALT_INV_Count[2]~9_combout\ : std_logic;
SIGNAL \MIN1|ALT_INV_Count[1]~5_combout\ : std_logic;
SIGNAL \MIN1|ALT_INV_Count[0]~1_combout\ : std_logic;
SIGNAL \SEC10|ALT_INV_Count[3]~13_combout\ : std_logic;
SIGNAL \SEC10|ALT_INV_Count[2]~9_combout\ : std_logic;
SIGNAL \SEC10|ALT_INV_Count[1]~5_combout\ : std_logic;
SIGNAL \SEC10|ALT_INV_Count[0]~1_combout\ : std_logic;
SIGNAL \SEC1|ALT_INV_Count[3]~13_combout\ : std_logic;
SIGNAL \SEC1|ALT_INV_Count[2]~9_combout\ : std_logic;
SIGNAL \SEC1|ALT_INV_Count[1]~5_combout\ : std_logic;
SIGNAL \SEC1|ALT_INV_Count[0]~1_combout\ : std_logic;
SIGNAL \MIN10|ALT_INV_Carry~0_combout\ : std_logic;
SIGNAL \SEC1|ALT_INV_Carry~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \scaled_clock|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \scaled_clock|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \scaled_clock|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \scaled_clock|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \HR10|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \HR10|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \HR10|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \HR10|ALT_INV_Count[3]~21_combout\ : std_logic;
SIGNAL \HR10|ALT_INV_Count[0]~0_combout\ : std_logic;
SIGNAL \HR1|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \HR1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \HR1|ALT_INV_Count[0]~0_combout\ : std_logic;
SIGNAL \MIN10|ALT_INV_Carry~q\ : std_logic;
SIGNAL \MIN10|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \MIN10|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \MIN10|ALT_INV_Count[3]~21_combout\ : std_logic;
SIGNAL \MIN10|ALT_INV_Count[0]~0_combout\ : std_logic;
SIGNAL \MIN1|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \MIN1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \MIN1|ALT_INV_Count[3]~21_combout\ : std_logic;
SIGNAL \MIN1|ALT_INV_Count[0]~0_combout\ : std_logic;
SIGNAL \SEC10|ALT_INV_Count[3]~22_combout\ : std_logic;
SIGNAL \SEC10|ALT_INV_Count[0]~0_combout\ : std_logic;
SIGNAL \SEC1|ALT_INV_Count[3]~21_combout\ : std_logic;
SIGNAL \SEC1|ALT_INV_Count[0]~0_combout\ : std_logic;
SIGNAL \scaled_clock|ALT_INV_Curr~q\ : std_logic;
SIGNAL \HR10|ALT_INV_Count[3]~14_combout\ : std_logic;
SIGNAL \HR10|ALT_INV_Count[3]~_emulated_q\ : std_logic;
SIGNAL \HR10|ALT_INV_Count[2]~10_combout\ : std_logic;
SIGNAL \HR10|ALT_INV_Count[2]~_emulated_q\ : std_logic;
SIGNAL \HR10|ALT_INV_Count[1]~6_combout\ : std_logic;
SIGNAL \HR10|ALT_INV_Count[1]~_emulated_q\ : std_logic;
SIGNAL \HR10|ALT_INV_Count[0]~2_combout\ : std_logic;
SIGNAL \HR10|ALT_INV_Count[0]~_emulated_q\ : std_logic;
SIGNAL \HR1|ALT_INV_Count[3]~14_combout\ : std_logic;
SIGNAL \HR1|ALT_INV_Count[3]~_emulated_q\ : std_logic;
SIGNAL \HR1|ALT_INV_Count[2]~10_combout\ : std_logic;
SIGNAL \HR1|ALT_INV_Count[2]~_emulated_q\ : std_logic;
SIGNAL \HR1|ALT_INV_Count[1]~6_combout\ : std_logic;
SIGNAL \HR1|ALT_INV_Count[1]~_emulated_q\ : std_logic;
SIGNAL \HR1|ALT_INV_Count[0]~2_combout\ : std_logic;
SIGNAL \HR1|ALT_INV_Count[0]~_emulated_q\ : std_logic;
SIGNAL \MIN10|ALT_INV_Count[3]~14_combout\ : std_logic;
SIGNAL \MIN10|ALT_INV_Count[3]~_emulated_q\ : std_logic;
SIGNAL \MIN10|ALT_INV_Count[2]~10_combout\ : std_logic;
SIGNAL \MIN10|ALT_INV_Count[2]~_emulated_q\ : std_logic;
SIGNAL \MIN10|ALT_INV_Count[1]~6_combout\ : std_logic;
SIGNAL \MIN10|ALT_INV_Count[1]~_emulated_q\ : std_logic;
SIGNAL \MIN10|ALT_INV_Count[0]~2_combout\ : std_logic;
SIGNAL \MIN10|ALT_INV_Count[0]~_emulated_q\ : std_logic;
SIGNAL \MIN1|ALT_INV_Count[3]~14_combout\ : std_logic;
SIGNAL \MIN1|ALT_INV_Count[3]~_emulated_q\ : std_logic;
SIGNAL \MIN1|ALT_INV_Count[2]~10_combout\ : std_logic;
SIGNAL \MIN1|ALT_INV_Count[2]~_emulated_q\ : std_logic;
SIGNAL \MIN1|ALT_INV_Count[1]~6_combout\ : std_logic;
SIGNAL \MIN1|ALT_INV_Count[1]~_emulated_q\ : std_logic;
SIGNAL \MIN1|ALT_INV_Count[0]~2_combout\ : std_logic;
SIGNAL \MIN1|ALT_INV_Count[0]~_emulated_q\ : std_logic;
SIGNAL \SEC10|ALT_INV_Count[3]~14_combout\ : std_logic;
SIGNAL \SEC10|ALT_INV_Count[3]~_emulated_q\ : std_logic;
SIGNAL \SEC10|ALT_INV_Count[2]~10_combout\ : std_logic;
SIGNAL \SEC10|ALT_INV_Count[2]~_emulated_q\ : std_logic;
SIGNAL \SEC10|ALT_INV_Count[1]~6_combout\ : std_logic;
SIGNAL \SEC10|ALT_INV_Count[1]~_emulated_q\ : std_logic;
SIGNAL \SEC10|ALT_INV_Count[0]~2_combout\ : std_logic;
SIGNAL \SEC10|ALT_INV_Count[0]~_emulated_q\ : std_logic;
SIGNAL \SEC1|ALT_INV_Count[3]~14_combout\ : std_logic;
SIGNAL \SEC1|ALT_INV_Count[3]~_emulated_q\ : std_logic;
SIGNAL \SEC1|ALT_INV_Count[2]~10_combout\ : std_logic;
SIGNAL \SEC1|ALT_INV_Count[2]~_emulated_q\ : std_logic;
SIGNAL \SEC1|ALT_INV_Count[1]~6_combout\ : std_logic;
SIGNAL \SEC1|ALT_INV_Count[1]~_emulated_q\ : std_logic;
SIGNAL \SEC1|ALT_INV_Count[0]~2_combout\ : std_logic;
SIGNAL \SEC1|ALT_INV_Count[0]~_emulated_q\ : std_logic;
SIGNAL \hr10_Disp|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \hr1_Disp|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \min10_Disp|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \min1_Disp|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \sec10_Disp|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \sec1_Disp|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \scaled_clock|ALT_INV_Count\ : std_logic_vector(24 DOWNTO 0);

BEGIN

ww_inclock <= inclock;
ww_rst <= rst;
ww_sec <= sec;
ww_min <= min;
ww_hr <= hr;
ww_input_time <= input_time;
hexsec1 <= ww_hexsec1;
hexsec10 <= ww_hexsec10;
hexmin1 <= ww_hexmin1;
hexmin10 <= ww_hexmin10;
hexhr1 <= ww_hexhr1;
hexhr10 <= ww_hexhr10;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\scaled_clock|ALT_INV_Count[4]~DUPLICATE_q\ <= NOT \scaled_clock|Count[4]~DUPLICATE_q\;
\scaled_clock|ALT_INV_Count[10]~DUPLICATE_q\ <= NOT \scaled_clock|Count[10]~DUPLICATE_q\;
\scaled_clock|ALT_INV_Count[9]~DUPLICATE_q\ <= NOT \scaled_clock|Count[9]~DUPLICATE_q\;
\scaled_clock|ALT_INV_Count[19]~DUPLICATE_q\ <= NOT \scaled_clock|Count[19]~DUPLICATE_q\;
\scaled_clock|ALT_INV_Count[0]~DUPLICATE_q\ <= NOT \scaled_clock|Count[0]~DUPLICATE_q\;
\ALT_INV_hr~input_o\ <= NOT \hr~input_o\;
\ALT_INV_min~input_o\ <= NOT \min~input_o\;
\ALT_INV_input_time[7]~input_o\ <= NOT \input_time[7]~input_o\;
\ALT_INV_input_time[6]~input_o\ <= NOT \input_time[6]~input_o\;
\ALT_INV_input_time[5]~input_o\ <= NOT \input_time[5]~input_o\;
\ALT_INV_input_time[4]~input_o\ <= NOT \input_time[4]~input_o\;
\ALT_INV_input_time[3]~input_o\ <= NOT \input_time[3]~input_o\;
\ALT_INV_input_time[2]~input_o\ <= NOT \input_time[2]~input_o\;
\ALT_INV_input_time[1]~input_o\ <= NOT \input_time[1]~input_o\;
\ALT_INV_input_time[0]~input_o\ <= NOT \input_time[0]~input_o\;
\ALT_INV_sec~input_o\ <= NOT \sec~input_o\;
\HR10|ALT_INV_Count[3]~13_combout\ <= NOT \HR10|Count[3]~13_combout\;
\HR10|ALT_INV_Count[2]~9_combout\ <= NOT \HR10|Count[2]~9_combout\;
\HR10|ALT_INV_Count[1]~5_combout\ <= NOT \HR10|Count[1]~5_combout\;
\HR10|ALT_INV_Count[0]~1_combout\ <= NOT \HR10|Count[0]~1_combout\;
\HR1|ALT_INV_Count[3]~13_combout\ <= NOT \HR1|Count[3]~13_combout\;
\HR1|ALT_INV_Count[2]~9_combout\ <= NOT \HR1|Count[2]~9_combout\;
\HR1|ALT_INV_Count[1]~5_combout\ <= NOT \HR1|Count[1]~5_combout\;
\HR1|ALT_INV_Count[0]~1_combout\ <= NOT \HR1|Count[0]~1_combout\;
\MIN10|ALT_INV_Count[3]~13_combout\ <= NOT \MIN10|Count[3]~13_combout\;
\MIN10|ALT_INV_Count[2]~9_combout\ <= NOT \MIN10|Count[2]~9_combout\;
\MIN10|ALT_INV_Count[1]~5_combout\ <= NOT \MIN10|Count[1]~5_combout\;
\MIN10|ALT_INV_Count[0]~1_combout\ <= NOT \MIN10|Count[0]~1_combout\;
\MIN1|ALT_INV_Count[3]~13_combout\ <= NOT \MIN1|Count[3]~13_combout\;
\MIN1|ALT_INV_Count[2]~9_combout\ <= NOT \MIN1|Count[2]~9_combout\;
\MIN1|ALT_INV_Count[1]~5_combout\ <= NOT \MIN1|Count[1]~5_combout\;
\MIN1|ALT_INV_Count[0]~1_combout\ <= NOT \MIN1|Count[0]~1_combout\;
\SEC10|ALT_INV_Count[3]~13_combout\ <= NOT \SEC10|Count[3]~13_combout\;
\SEC10|ALT_INV_Count[2]~9_combout\ <= NOT \SEC10|Count[2]~9_combout\;
\SEC10|ALT_INV_Count[1]~5_combout\ <= NOT \SEC10|Count[1]~5_combout\;
\SEC10|ALT_INV_Count[0]~1_combout\ <= NOT \SEC10|Count[0]~1_combout\;
\SEC1|ALT_INV_Count[3]~13_combout\ <= NOT \SEC1|Count[3]~13_combout\;
\SEC1|ALT_INV_Count[2]~9_combout\ <= NOT \SEC1|Count[2]~9_combout\;
\SEC1|ALT_INV_Count[1]~5_combout\ <= NOT \SEC1|Count[1]~5_combout\;
\SEC1|ALT_INV_Count[0]~1_combout\ <= NOT \SEC1|Count[0]~1_combout\;
\MIN10|ALT_INV_Carry~0_combout\ <= NOT \MIN10|Carry~0_combout\;
\SEC1|ALT_INV_Carry~0_combout\ <= NOT \SEC1|Carry~0_combout\;
\ALT_INV_process_0~1_combout\ <= NOT \process_0~1_combout\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\scaled_clock|ALT_INV_Equal0~3_combout\ <= NOT \scaled_clock|Equal0~3_combout\;
\scaled_clock|ALT_INV_Equal0~2_combout\ <= NOT \scaled_clock|Equal0~2_combout\;
\scaled_clock|ALT_INV_Equal0~1_combout\ <= NOT \scaled_clock|Equal0~1_combout\;
\scaled_clock|ALT_INV_Equal0~0_combout\ <= NOT \scaled_clock|Equal0~0_combout\;
\HR10|ALT_INV_Add0~0_combout\ <= NOT \HR10|Add0~0_combout\;
\HR10|ALT_INV_Equal0~1_combout\ <= NOT \HR10|Equal0~1_combout\;
\HR10|ALT_INV_Equal0~0_combout\ <= NOT \HR10|Equal0~0_combout\;
\HR10|ALT_INV_Count[3]~21_combout\ <= NOT \HR10|Count[3]~21_combout\;
\HR10|ALT_INV_Count[0]~0_combout\ <= NOT \HR10|Count[0]~0_combout\;
\HR1|ALT_INV_Add0~0_combout\ <= NOT \HR1|Add0~0_combout\;
\HR1|ALT_INV_Equal0~0_combout\ <= NOT \HR1|Equal0~0_combout\;
\HR1|ALT_INV_Count[0]~0_combout\ <= NOT \HR1|Count[0]~0_combout\;
\MIN10|ALT_INV_Carry~q\ <= NOT \MIN10|Carry~q\;
\MIN10|ALT_INV_Add0~0_combout\ <= NOT \MIN10|Add0~0_combout\;
\MIN10|ALT_INV_Equal0~0_combout\ <= NOT \MIN10|Equal0~0_combout\;
\MIN10|ALT_INV_Count[3]~21_combout\ <= NOT \MIN10|Count[3]~21_combout\;
\MIN10|ALT_INV_Count[0]~0_combout\ <= NOT \MIN10|Count[0]~0_combout\;
\MIN1|ALT_INV_Add0~0_combout\ <= NOT \MIN1|Add0~0_combout\;
\MIN1|ALT_INV_Equal0~0_combout\ <= NOT \MIN1|Equal0~0_combout\;
\MIN1|ALT_INV_Count[3]~21_combout\ <= NOT \MIN1|Count[3]~21_combout\;
\MIN1|ALT_INV_Count[0]~0_combout\ <= NOT \MIN1|Count[0]~0_combout\;
\SEC10|ALT_INV_Count[3]~22_combout\ <= NOT \SEC10|Count[3]~22_combout\;
\SEC10|ALT_INV_Count[0]~0_combout\ <= NOT \SEC10|Count[0]~0_combout\;
\SEC1|ALT_INV_Count[3]~21_combout\ <= NOT \SEC1|Count[3]~21_combout\;
\SEC1|ALT_INV_Count[0]~0_combout\ <= NOT \SEC1|Count[0]~0_combout\;
\scaled_clock|ALT_INV_Curr~q\ <= NOT \scaled_clock|Curr~q\;
\HR10|ALT_INV_Count[3]~14_combout\ <= NOT \HR10|Count[3]~14_combout\;
\HR10|ALT_INV_Count[3]~_emulated_q\ <= NOT \HR10|Count[3]~_emulated_q\;
\HR10|ALT_INV_Count[2]~10_combout\ <= NOT \HR10|Count[2]~10_combout\;
\HR10|ALT_INV_Count[2]~_emulated_q\ <= NOT \HR10|Count[2]~_emulated_q\;
\HR10|ALT_INV_Count[1]~6_combout\ <= NOT \HR10|Count[1]~6_combout\;
\HR10|ALT_INV_Count[1]~_emulated_q\ <= NOT \HR10|Count[1]~_emulated_q\;
\HR10|ALT_INV_Count[0]~2_combout\ <= NOT \HR10|Count[0]~2_combout\;
\HR10|ALT_INV_Count[0]~_emulated_q\ <= NOT \HR10|Count[0]~_emulated_q\;
\HR1|ALT_INV_Count[3]~14_combout\ <= NOT \HR1|Count[3]~14_combout\;
\HR1|ALT_INV_Count[3]~_emulated_q\ <= NOT \HR1|Count[3]~_emulated_q\;
\HR1|ALT_INV_Count[2]~10_combout\ <= NOT \HR1|Count[2]~10_combout\;
\HR1|ALT_INV_Count[2]~_emulated_q\ <= NOT \HR1|Count[2]~_emulated_q\;
\HR1|ALT_INV_Count[1]~6_combout\ <= NOT \HR1|Count[1]~6_combout\;
\HR1|ALT_INV_Count[1]~_emulated_q\ <= NOT \HR1|Count[1]~_emulated_q\;
\HR1|ALT_INV_Count[0]~2_combout\ <= NOT \HR1|Count[0]~2_combout\;
\HR1|ALT_INV_Count[0]~_emulated_q\ <= NOT \HR1|Count[0]~_emulated_q\;
\MIN10|ALT_INV_Count[3]~14_combout\ <= NOT \MIN10|Count[3]~14_combout\;
\MIN10|ALT_INV_Count[3]~_emulated_q\ <= NOT \MIN10|Count[3]~_emulated_q\;
\MIN10|ALT_INV_Count[2]~10_combout\ <= NOT \MIN10|Count[2]~10_combout\;
\MIN10|ALT_INV_Count[2]~_emulated_q\ <= NOT \MIN10|Count[2]~_emulated_q\;
\MIN10|ALT_INV_Count[1]~6_combout\ <= NOT \MIN10|Count[1]~6_combout\;
\MIN10|ALT_INV_Count[1]~_emulated_q\ <= NOT \MIN10|Count[1]~_emulated_q\;
\MIN10|ALT_INV_Count[0]~2_combout\ <= NOT \MIN10|Count[0]~2_combout\;
\MIN10|ALT_INV_Count[0]~_emulated_q\ <= NOT \MIN10|Count[0]~_emulated_q\;
\MIN1|ALT_INV_Count[3]~14_combout\ <= NOT \MIN1|Count[3]~14_combout\;
\MIN1|ALT_INV_Count[3]~_emulated_q\ <= NOT \MIN1|Count[3]~_emulated_q\;
\MIN1|ALT_INV_Count[2]~10_combout\ <= NOT \MIN1|Count[2]~10_combout\;
\MIN1|ALT_INV_Count[2]~_emulated_q\ <= NOT \MIN1|Count[2]~_emulated_q\;
\MIN1|ALT_INV_Count[1]~6_combout\ <= NOT \MIN1|Count[1]~6_combout\;
\MIN1|ALT_INV_Count[1]~_emulated_q\ <= NOT \MIN1|Count[1]~_emulated_q\;
\MIN1|ALT_INV_Count[0]~2_combout\ <= NOT \MIN1|Count[0]~2_combout\;
\MIN1|ALT_INV_Count[0]~_emulated_q\ <= NOT \MIN1|Count[0]~_emulated_q\;
\SEC10|ALT_INV_Count[3]~14_combout\ <= NOT \SEC10|Count[3]~14_combout\;
\SEC10|ALT_INV_Count[3]~_emulated_q\ <= NOT \SEC10|Count[3]~_emulated_q\;
\SEC10|ALT_INV_Count[2]~10_combout\ <= NOT \SEC10|Count[2]~10_combout\;
\SEC10|ALT_INV_Count[2]~_emulated_q\ <= NOT \SEC10|Count[2]~_emulated_q\;
\SEC10|ALT_INV_Count[1]~6_combout\ <= NOT \SEC10|Count[1]~6_combout\;
\SEC10|ALT_INV_Count[1]~_emulated_q\ <= NOT \SEC10|Count[1]~_emulated_q\;
\SEC10|ALT_INV_Count[0]~2_combout\ <= NOT \SEC10|Count[0]~2_combout\;
\SEC10|ALT_INV_Count[0]~_emulated_q\ <= NOT \SEC10|Count[0]~_emulated_q\;
\SEC1|ALT_INV_Count[3]~14_combout\ <= NOT \SEC1|Count[3]~14_combout\;
\SEC1|ALT_INV_Count[3]~_emulated_q\ <= NOT \SEC1|Count[3]~_emulated_q\;
\SEC1|ALT_INV_Count[2]~10_combout\ <= NOT \SEC1|Count[2]~10_combout\;
\SEC1|ALT_INV_Count[2]~_emulated_q\ <= NOT \SEC1|Count[2]~_emulated_q\;
\SEC1|ALT_INV_Count[1]~6_combout\ <= NOT \SEC1|Count[1]~6_combout\;
\SEC1|ALT_INV_Count[1]~_emulated_q\ <= NOT \SEC1|Count[1]~_emulated_q\;
\SEC1|ALT_INV_Count[0]~2_combout\ <= NOT \SEC1|Count[0]~2_combout\;
\SEC1|ALT_INV_Count[0]~_emulated_q\ <= NOT \SEC1|Count[0]~_emulated_q\;
\hr10_Disp|ALT_INV_Mux6~0_combout\ <= NOT \hr10_Disp|Mux6~0_combout\;
\hr1_Disp|ALT_INV_Mux6~0_combout\ <= NOT \hr1_Disp|Mux6~0_combout\;
\min10_Disp|ALT_INV_Mux6~0_combout\ <= NOT \min10_Disp|Mux6~0_combout\;
\min1_Disp|ALT_INV_Mux6~0_combout\ <= NOT \min1_Disp|Mux6~0_combout\;
\sec10_Disp|ALT_INV_Mux6~0_combout\ <= NOT \sec10_Disp|Mux6~0_combout\;
\sec1_Disp|ALT_INV_Mux6~0_combout\ <= NOT \sec1_Disp|Mux6~0_combout\;
\scaled_clock|ALT_INV_Count\(4) <= NOT \scaled_clock|Count\(4);
\scaled_clock|ALT_INV_Count\(5) <= NOT \scaled_clock|Count\(5);
\scaled_clock|ALT_INV_Count\(6) <= NOT \scaled_clock|Count\(6);
\scaled_clock|ALT_INV_Count\(7) <= NOT \scaled_clock|Count\(7);
\scaled_clock|ALT_INV_Count\(8) <= NOT \scaled_clock|Count\(8);
\scaled_clock|ALT_INV_Count\(10) <= NOT \scaled_clock|Count\(10);
\scaled_clock|ALT_INV_Count\(9) <= NOT \scaled_clock|Count\(9);
\scaled_clock|ALT_INV_Count\(11) <= NOT \scaled_clock|Count\(11);
\scaled_clock|ALT_INV_Count\(12) <= NOT \scaled_clock|Count\(12);
\scaled_clock|ALT_INV_Count\(13) <= NOT \scaled_clock|Count\(13);
\scaled_clock|ALT_INV_Count\(14) <= NOT \scaled_clock|Count\(14);
\scaled_clock|ALT_INV_Count\(15) <= NOT \scaled_clock|Count\(15);
\scaled_clock|ALT_INV_Count\(19) <= NOT \scaled_clock|Count\(19);
\scaled_clock|ALT_INV_Count\(17) <= NOT \scaled_clock|Count\(17);
\scaled_clock|ALT_INV_Count\(0) <= NOT \scaled_clock|Count\(0);
\scaled_clock|ALT_INV_Count\(1) <= NOT \scaled_clock|Count\(1);
\scaled_clock|ALT_INV_Count\(2) <= NOT \scaled_clock|Count\(2);
\scaled_clock|ALT_INV_Count\(3) <= NOT \scaled_clock|Count\(3);
\scaled_clock|ALT_INV_Count\(24) <= NOT \scaled_clock|Count\(24);
\scaled_clock|ALT_INV_Count\(23) <= NOT \scaled_clock|Count\(23);
\scaled_clock|ALT_INV_Count\(22) <= NOT \scaled_clock|Count\(22);
\scaled_clock|ALT_INV_Count\(21) <= NOT \scaled_clock|Count\(21);
\scaled_clock|ALT_INV_Count\(20) <= NOT \scaled_clock|Count\(20);
\scaled_clock|ALT_INV_Count\(16) <= NOT \scaled_clock|Count\(16);
\scaled_clock|ALT_INV_Count\(18) <= NOT \scaled_clock|Count\(18);

-- Location: IOOBUF_X46_Y0_N36
\hexsec1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sec1_Disp|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hexsec1(6));

-- Location: IOOBUF_X50_Y0_N53
\hexsec1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sec1_Disp|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hexsec1(5));

-- Location: IOOBUF_X48_Y0_N93
\hexsec1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sec1_Disp|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hexsec1(4));

-- Location: IOOBUF_X50_Y0_N36
\hexsec1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sec1_Disp|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hexsec1(3));

-- Location: IOOBUF_X48_Y0_N76
\hexsec1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sec1_Disp|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hexsec1(2));

-- Location: IOOBUF_X51_Y0_N36
\hexsec1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sec1_Disp|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hexsec1(1));

-- Location: IOOBUF_X52_Y0_N53
\hexsec1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sec1_Disp|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hexsec1(0));

-- Location: IOOBUF_X51_Y0_N53
\hexsec10[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sec10_Disp|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hexsec10(6));

-- Location: IOOBUF_X43_Y0_N53
\hexsec10[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sec10_Disp|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hexsec10(5));

-- Location: IOOBUF_X38_Y0_N36
\hexsec10[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sec10_Disp|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hexsec10(4));

-- Location: IOOBUF_X43_Y0_N36
\hexsec10[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sec10_Disp|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hexsec10(3));

-- Location: IOOBUF_X44_Y0_N53
\hexsec10[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sec10_Disp|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hexsec10(2));

-- Location: IOOBUF_X40_Y0_N93
\hexsec10[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sec10_Disp|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hexsec10(1));

-- Location: IOOBUF_X44_Y0_N36
\hexsec10[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sec10_Disp|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hexsec10(0));

-- Location: IOOBUF_X40_Y0_N76
\hexmin1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \min1_Disp|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hexmin1(6));

-- Location: IOOBUF_X46_Y0_N53
\hexmin1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \min1_Disp|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hexmin1(5));

-- Location: IOOBUF_X38_Y0_N19
\hexmin1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \min1_Disp|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hexmin1(4));

-- Location: IOOBUF_X36_Y0_N19
\hexmin1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \min1_Disp|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hexmin1(3));

-- Location: IOOBUF_X22_Y0_N53
\hexmin1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \min1_Disp|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hexmin1(2));

-- Location: IOOBUF_X38_Y0_N53
\hexmin1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \min1_Disp|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hexmin1(1));

-- Location: IOOBUF_X48_Y0_N42
\hexmin1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \min1_Disp|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hexmin1(0));

-- Location: IOOBUF_X51_Y0_N19
\hexmin10[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \min10_Disp|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hexmin10(6));

-- Location: IOOBUF_X51_Y0_N2
\hexmin10[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \min10_Disp|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hexmin10(5));

-- Location: IOOBUF_X52_Y0_N2
\hexmin10[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \min10_Disp|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hexmin10(4));

-- Location: IOOBUF_X46_Y0_N19
\hexmin10[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \min10_Disp|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hexmin10(3));

-- Location: IOOBUF_X40_Y0_N42
\hexmin10[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \min10_Disp|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hexmin10(2));

-- Location: IOOBUF_X46_Y0_N2
\hexmin10[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \min10_Disp|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hexmin10(1));

-- Location: IOOBUF_X40_Y0_N59
\hexmin10[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \min10_Disp|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hexmin10(0));

-- Location: IOOBUF_X29_Y0_N19
\hexhr1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hr1_Disp|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hexhr1(6));

-- Location: IOOBUF_X36_Y0_N2
\hexhr1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hr1_Disp|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hexhr1(5));

-- Location: IOOBUF_X43_Y0_N2
\hexhr1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hr1_Disp|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hexhr1(4));

-- Location: IOOBUF_X52_Y0_N19
\hexhr1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hr1_Disp|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hexhr1(3));

-- Location: IOOBUF_X44_Y0_N19
\hexhr1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hr1_Disp|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hexhr1(2));

-- Location: IOOBUF_X48_Y0_N59
\hexhr1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hr1_Disp|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hexhr1(1));

-- Location: IOOBUF_X52_Y0_N36
\hexhr1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hr1_Disp|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hexhr1(0));

-- Location: IOOBUF_X44_Y0_N2
\hexhr10[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hr10_Disp|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hexhr10(6));

-- Location: IOOBUF_X0_Y21_N39
\hexhr10[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hr10_Disp|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hexhr10(5));

-- Location: IOOBUF_X0_Y21_N56
\hexhr10[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hr10_Disp|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hexhr10(4));

-- Location: IOOBUF_X50_Y0_N19
\hexhr10[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hr10_Disp|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hexhr10(3));

-- Location: IOOBUF_X43_Y0_N19
\hexhr10[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hr10_Disp|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hexhr10(2));

-- Location: IOOBUF_X22_Y0_N19
\hexhr10[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hr10_Disp|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hexhr10(1));

-- Location: IOOBUF_X29_Y0_N2
\hexhr10[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hr10_Disp|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hexhr10(0));

-- Location: IOIBUF_X22_Y0_N1
\inclock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inclock,
	o => \inclock~input_o\);

-- Location: CLKCTRL_G6
\inclock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \inclock~input_o\,
	outclk => \inclock~inputCLKENA0_outclk\);

-- Location: LABCELL_X19_Y3_N30
\scaled_clock|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~41_sumout\ = SUM(( \scaled_clock|Count[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \scaled_clock|Add0~42\ = CARRY(( \scaled_clock|Count[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \scaled_clock|ALT_INV_Count[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \scaled_clock|Add0~41_sumout\,
	cout => \scaled_clock|Add0~42\);

-- Location: LABCELL_X19_Y3_N48
\scaled_clock|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~89_sumout\ = SUM(( \scaled_clock|Count\(6) ) + ( GND ) + ( \scaled_clock|Add0~94\ ))
-- \scaled_clock|Add0~90\ = CARRY(( \scaled_clock|Count\(6) ) + ( GND ) + ( \scaled_clock|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \scaled_clock|ALT_INV_Count\(6),
	cin => \scaled_clock|Add0~94\,
	sumout => \scaled_clock|Add0~89_sumout\,
	cout => \scaled_clock|Add0~90\);

-- Location: LABCELL_X19_Y3_N51
\scaled_clock|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~85_sumout\ = SUM(( \scaled_clock|Count\(7) ) + ( GND ) + ( \scaled_clock|Add0~90\ ))
-- \scaled_clock|Add0~86\ = CARRY(( \scaled_clock|Count\(7) ) + ( GND ) + ( \scaled_clock|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \scaled_clock|ALT_INV_Count\(7),
	cin => \scaled_clock|Add0~90\,
	sumout => \scaled_clock|Add0~85_sumout\,
	cout => \scaled_clock|Add0~86\);

-- Location: FF_X19_Y3_N52
\scaled_clock|Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~85_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(7));

-- Location: LABCELL_X19_Y3_N54
\scaled_clock|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~81_sumout\ = SUM(( \scaled_clock|Count\(8) ) + ( GND ) + ( \scaled_clock|Add0~86\ ))
-- \scaled_clock|Add0~82\ = CARRY(( \scaled_clock|Count\(8) ) + ( GND ) + ( \scaled_clock|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \scaled_clock|ALT_INV_Count\(8),
	cin => \scaled_clock|Add0~86\,
	sumout => \scaled_clock|Add0~81_sumout\,
	cout => \scaled_clock|Add0~82\);

-- Location: FF_X19_Y3_N56
\scaled_clock|Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~81_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(8));

-- Location: LABCELL_X19_Y3_N57
\scaled_clock|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~73_sumout\ = SUM(( \scaled_clock|Count[9]~DUPLICATE_q\ ) + ( GND ) + ( \scaled_clock|Add0~82\ ))
-- \scaled_clock|Add0~74\ = CARRY(( \scaled_clock|Count[9]~DUPLICATE_q\ ) + ( GND ) + ( \scaled_clock|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \scaled_clock|ALT_INV_Count[9]~DUPLICATE_q\,
	cin => \scaled_clock|Add0~82\,
	sumout => \scaled_clock|Add0~73_sumout\,
	cout => \scaled_clock|Add0~74\);

-- Location: FF_X19_Y3_N59
\scaled_clock|Count[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~73_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count[9]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y2_N0
\scaled_clock|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~77_sumout\ = SUM(( \scaled_clock|Count\(10) ) + ( GND ) + ( \scaled_clock|Add0~74\ ))
-- \scaled_clock|Add0~78\ = CARRY(( \scaled_clock|Count\(10) ) + ( GND ) + ( \scaled_clock|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \scaled_clock|ALT_INV_Count\(10),
	cin => \scaled_clock|Add0~74\,
	sumout => \scaled_clock|Add0~77_sumout\,
	cout => \scaled_clock|Add0~78\);

-- Location: FF_X19_Y2_N2
\scaled_clock|Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~77_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(10));

-- Location: LABCELL_X19_Y2_N3
\scaled_clock|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~69_sumout\ = SUM(( \scaled_clock|Count\(11) ) + ( GND ) + ( \scaled_clock|Add0~78\ ))
-- \scaled_clock|Add0~70\ = CARRY(( \scaled_clock|Count\(11) ) + ( GND ) + ( \scaled_clock|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \scaled_clock|ALT_INV_Count\(11),
	cin => \scaled_clock|Add0~78\,
	sumout => \scaled_clock|Add0~69_sumout\,
	cout => \scaled_clock|Add0~70\);

-- Location: FF_X19_Y2_N5
\scaled_clock|Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~69_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(11));

-- Location: LABCELL_X19_Y2_N6
\scaled_clock|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~65_sumout\ = SUM(( \scaled_clock|Count\(12) ) + ( GND ) + ( \scaled_clock|Add0~70\ ))
-- \scaled_clock|Add0~66\ = CARRY(( \scaled_clock|Count\(12) ) + ( GND ) + ( \scaled_clock|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \scaled_clock|ALT_INV_Count\(12),
	cin => \scaled_clock|Add0~70\,
	sumout => \scaled_clock|Add0~65_sumout\,
	cout => \scaled_clock|Add0~66\);

-- Location: FF_X19_Y2_N7
\scaled_clock|Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~65_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(12));

-- Location: LABCELL_X19_Y2_N9
\scaled_clock|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~61_sumout\ = SUM(( \scaled_clock|Count\(13) ) + ( GND ) + ( \scaled_clock|Add0~66\ ))
-- \scaled_clock|Add0~62\ = CARRY(( \scaled_clock|Count\(13) ) + ( GND ) + ( \scaled_clock|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \scaled_clock|ALT_INV_Count\(13),
	cin => \scaled_clock|Add0~66\,
	sumout => \scaled_clock|Add0~61_sumout\,
	cout => \scaled_clock|Add0~62\);

-- Location: FF_X19_Y2_N11
\scaled_clock|Count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~61_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(13));

-- Location: LABCELL_X19_Y2_N12
\scaled_clock|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~57_sumout\ = SUM(( \scaled_clock|Count\(14) ) + ( GND ) + ( \scaled_clock|Add0~62\ ))
-- \scaled_clock|Add0~58\ = CARRY(( \scaled_clock|Count\(14) ) + ( GND ) + ( \scaled_clock|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \scaled_clock|ALT_INV_Count\(14),
	cin => \scaled_clock|Add0~62\,
	sumout => \scaled_clock|Add0~57_sumout\,
	cout => \scaled_clock|Add0~58\);

-- Location: FF_X19_Y2_N14
\scaled_clock|Count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~57_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(14));

-- Location: LABCELL_X19_Y2_N15
\scaled_clock|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~53_sumout\ = SUM(( \scaled_clock|Count\(15) ) + ( GND ) + ( \scaled_clock|Add0~58\ ))
-- \scaled_clock|Add0~54\ = CARRY(( \scaled_clock|Count\(15) ) + ( GND ) + ( \scaled_clock|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \scaled_clock|ALT_INV_Count\(15),
	cin => \scaled_clock|Add0~58\,
	sumout => \scaled_clock|Add0~53_sumout\,
	cout => \scaled_clock|Add0~54\);

-- Location: FF_X19_Y2_N17
\scaled_clock|Count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~53_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(15));

-- Location: LABCELL_X19_Y2_N18
\scaled_clock|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~5_sumout\ = SUM(( \scaled_clock|Count\(16) ) + ( GND ) + ( \scaled_clock|Add0~54\ ))
-- \scaled_clock|Add0~6\ = CARRY(( \scaled_clock|Count\(16) ) + ( GND ) + ( \scaled_clock|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \scaled_clock|ALT_INV_Count\(16),
	cin => \scaled_clock|Add0~54\,
	sumout => \scaled_clock|Add0~5_sumout\,
	cout => \scaled_clock|Add0~6\);

-- Location: FF_X19_Y2_N20
\scaled_clock|Count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~5_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(16));

-- Location: LABCELL_X19_Y2_N21
\scaled_clock|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~45_sumout\ = SUM(( \scaled_clock|Count\(17) ) + ( GND ) + ( \scaled_clock|Add0~6\ ))
-- \scaled_clock|Add0~46\ = CARRY(( \scaled_clock|Count\(17) ) + ( GND ) + ( \scaled_clock|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \scaled_clock|ALT_INV_Count\(17),
	cin => \scaled_clock|Add0~6\,
	sumout => \scaled_clock|Add0~45_sumout\,
	cout => \scaled_clock|Add0~46\);

-- Location: FF_X19_Y2_N22
\scaled_clock|Count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~45_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(17));

-- Location: LABCELL_X19_Y2_N24
\scaled_clock|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~1_sumout\ = SUM(( \scaled_clock|Count\(18) ) + ( GND ) + ( \scaled_clock|Add0~46\ ))
-- \scaled_clock|Add0~2\ = CARRY(( \scaled_clock|Count\(18) ) + ( GND ) + ( \scaled_clock|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \scaled_clock|ALT_INV_Count\(18),
	cin => \scaled_clock|Add0~46\,
	sumout => \scaled_clock|Add0~1_sumout\,
	cout => \scaled_clock|Add0~2\);

-- Location: FF_X19_Y2_N26
\scaled_clock|Count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~1_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(18));

-- Location: FF_X19_Y3_N58
\scaled_clock|Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~73_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(9));

-- Location: LABCELL_X19_Y3_N0
\scaled_clock|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Equal0~2_combout\ = ( \scaled_clock|Count\(11) & ( \scaled_clock|Count\(12) & ( (!\scaled_clock|Count\(9) & (!\scaled_clock|Count\(15) & (\scaled_clock|Count\(13) & \scaled_clock|Count\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scaled_clock|ALT_INV_Count\(9),
	datab => \scaled_clock|ALT_INV_Count\(15),
	datac => \scaled_clock|ALT_INV_Count\(13),
	datad => \scaled_clock|ALT_INV_Count\(14),
	datae => \scaled_clock|ALT_INV_Count\(11),
	dataf => \scaled_clock|ALT_INV_Count\(12),
	combout => \scaled_clock|Equal0~2_combout\);

-- Location: LABCELL_X19_Y2_N27
\scaled_clock|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~49_sumout\ = SUM(( \scaled_clock|Count[19]~DUPLICATE_q\ ) + ( GND ) + ( \scaled_clock|Add0~2\ ))
-- \scaled_clock|Add0~50\ = CARRY(( \scaled_clock|Count[19]~DUPLICATE_q\ ) + ( GND ) + ( \scaled_clock|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \scaled_clock|ALT_INV_Count[19]~DUPLICATE_q\,
	cin => \scaled_clock|Add0~2\,
	sumout => \scaled_clock|Add0~49_sumout\,
	cout => \scaled_clock|Add0~50\);

-- Location: FF_X19_Y2_N28
\scaled_clock|Count[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~49_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count[19]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y2_N30
\scaled_clock|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~9_sumout\ = SUM(( \scaled_clock|Count\(20) ) + ( GND ) + ( \scaled_clock|Add0~50\ ))
-- \scaled_clock|Add0~10\ = CARRY(( \scaled_clock|Count\(20) ) + ( GND ) + ( \scaled_clock|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \scaled_clock|ALT_INV_Count\(20),
	cin => \scaled_clock|Add0~50\,
	sumout => \scaled_clock|Add0~9_sumout\,
	cout => \scaled_clock|Add0~10\);

-- Location: FF_X19_Y2_N32
\scaled_clock|Count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~9_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(20));

-- Location: LABCELL_X19_Y2_N33
\scaled_clock|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~13_sumout\ = SUM(( \scaled_clock|Count\(21) ) + ( GND ) + ( \scaled_clock|Add0~10\ ))
-- \scaled_clock|Add0~14\ = CARRY(( \scaled_clock|Count\(21) ) + ( GND ) + ( \scaled_clock|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scaled_clock|ALT_INV_Count\(21),
	cin => \scaled_clock|Add0~10\,
	sumout => \scaled_clock|Add0~13_sumout\,
	cout => \scaled_clock|Add0~14\);

-- Location: FF_X19_Y2_N35
\scaled_clock|Count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~13_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(21));

-- Location: LABCELL_X19_Y2_N36
\scaled_clock|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~17_sumout\ = SUM(( \scaled_clock|Count\(22) ) + ( GND ) + ( \scaled_clock|Add0~14\ ))
-- \scaled_clock|Add0~18\ = CARRY(( \scaled_clock|Count\(22) ) + ( GND ) + ( \scaled_clock|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \scaled_clock|ALT_INV_Count\(22),
	cin => \scaled_clock|Add0~14\,
	sumout => \scaled_clock|Add0~17_sumout\,
	cout => \scaled_clock|Add0~18\);

-- Location: FF_X19_Y2_N38
\scaled_clock|Count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~17_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(22));

-- Location: LABCELL_X19_Y2_N39
\scaled_clock|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~21_sumout\ = SUM(( \scaled_clock|Count\(23) ) + ( GND ) + ( \scaled_clock|Add0~18\ ))
-- \scaled_clock|Add0~22\ = CARRY(( \scaled_clock|Count\(23) ) + ( GND ) + ( \scaled_clock|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \scaled_clock|ALT_INV_Count\(23),
	cin => \scaled_clock|Add0~18\,
	sumout => \scaled_clock|Add0~21_sumout\,
	cout => \scaled_clock|Add0~22\);

-- Location: FF_X19_Y2_N41
\scaled_clock|Count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~21_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(23));

-- Location: LABCELL_X19_Y2_N42
\scaled_clock|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~25_sumout\ = SUM(( \scaled_clock|Count\(24) ) + ( GND ) + ( \scaled_clock|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \scaled_clock|ALT_INV_Count\(24),
	cin => \scaled_clock|Add0~22\,
	sumout => \scaled_clock|Add0~25_sumout\);

-- Location: FF_X19_Y2_N44
\scaled_clock|Count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~25_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(24));

-- Location: LABCELL_X19_Y2_N48
\scaled_clock|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Equal0~0_combout\ = ( \scaled_clock|Count\(22) & ( \scaled_clock|Count\(20) & ( (\scaled_clock|Count\(21) & (!\scaled_clock|Count\(23) & (\scaled_clock|Count\(16) & \scaled_clock|Count\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scaled_clock|ALT_INV_Count\(21),
	datab => \scaled_clock|ALT_INV_Count\(23),
	datac => \scaled_clock|ALT_INV_Count\(16),
	datad => \scaled_clock|ALT_INV_Count\(24),
	datae => \scaled_clock|ALT_INV_Count\(22),
	dataf => \scaled_clock|ALT_INV_Count\(20),
	combout => \scaled_clock|Equal0~0_combout\);

-- Location: FF_X19_Y3_N32
\scaled_clock|Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~41_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(0));

-- Location: FF_X19_Y2_N29
\scaled_clock|Count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~49_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(19));

-- Location: LABCELL_X19_Y3_N12
\scaled_clock|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Equal0~1_combout\ = ( \scaled_clock|Count\(19) & ( !\scaled_clock|Count\(17) & ( (\scaled_clock|Count\(2) & (\scaled_clock|Count\(0) & (\scaled_clock|Count\(1) & \scaled_clock|Count\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scaled_clock|ALT_INV_Count\(2),
	datab => \scaled_clock|ALT_INV_Count\(0),
	datac => \scaled_clock|ALT_INV_Count\(1),
	datad => \scaled_clock|ALT_INV_Count\(3),
	datae => \scaled_clock|ALT_INV_Count\(19),
	dataf => \scaled_clock|ALT_INV_Count\(17),
	combout => \scaled_clock|Equal0~1_combout\);

-- Location: LABCELL_X19_Y3_N6
\scaled_clock|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Equal0~4_combout\ = ( \scaled_clock|Equal0~0_combout\ & ( \scaled_clock|Equal0~1_combout\ & ( (\scaled_clock|Equal0~3_combout\ & (\scaled_clock|Count\(18) & \scaled_clock|Equal0~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scaled_clock|ALT_INV_Equal0~3_combout\,
	datab => \scaled_clock|ALT_INV_Count\(18),
	datac => \scaled_clock|ALT_INV_Equal0~2_combout\,
	datae => \scaled_clock|ALT_INV_Equal0~0_combout\,
	dataf => \scaled_clock|ALT_INV_Equal0~1_combout\,
	combout => \scaled_clock|Equal0~4_combout\);

-- Location: FF_X19_Y3_N31
\scaled_clock|Count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~41_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count[0]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y3_N33
\scaled_clock|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~37_sumout\ = SUM(( \scaled_clock|Count\(1) ) + ( GND ) + ( \scaled_clock|Add0~42\ ))
-- \scaled_clock|Add0~38\ = CARRY(( \scaled_clock|Count\(1) ) + ( GND ) + ( \scaled_clock|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scaled_clock|ALT_INV_Count\(1),
	cin => \scaled_clock|Add0~42\,
	sumout => \scaled_clock|Add0~37_sumout\,
	cout => \scaled_clock|Add0~38\);

-- Location: FF_X19_Y3_N35
\scaled_clock|Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~37_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(1));

-- Location: LABCELL_X19_Y3_N36
\scaled_clock|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~33_sumout\ = SUM(( \scaled_clock|Count\(2) ) + ( GND ) + ( \scaled_clock|Add0~38\ ))
-- \scaled_clock|Add0~34\ = CARRY(( \scaled_clock|Count\(2) ) + ( GND ) + ( \scaled_clock|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \scaled_clock|ALT_INV_Count\(2),
	cin => \scaled_clock|Add0~38\,
	sumout => \scaled_clock|Add0~33_sumout\,
	cout => \scaled_clock|Add0~34\);

-- Location: FF_X19_Y3_N38
\scaled_clock|Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~33_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(2));

-- Location: LABCELL_X19_Y3_N39
\scaled_clock|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~29_sumout\ = SUM(( \scaled_clock|Count\(3) ) + ( GND ) + ( \scaled_clock|Add0~34\ ))
-- \scaled_clock|Add0~30\ = CARRY(( \scaled_clock|Count\(3) ) + ( GND ) + ( \scaled_clock|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \scaled_clock|ALT_INV_Count\(3),
	cin => \scaled_clock|Add0~34\,
	sumout => \scaled_clock|Add0~29_sumout\,
	cout => \scaled_clock|Add0~30\);

-- Location: FF_X19_Y3_N41
\scaled_clock|Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~29_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(3));

-- Location: LABCELL_X19_Y3_N42
\scaled_clock|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~97_sumout\ = SUM(( \scaled_clock|Count[4]~DUPLICATE_q\ ) + ( GND ) + ( \scaled_clock|Add0~30\ ))
-- \scaled_clock|Add0~98\ = CARRY(( \scaled_clock|Count[4]~DUPLICATE_q\ ) + ( GND ) + ( \scaled_clock|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \scaled_clock|ALT_INV_Count[4]~DUPLICATE_q\,
	cin => \scaled_clock|Add0~30\,
	sumout => \scaled_clock|Add0~97_sumout\,
	cout => \scaled_clock|Add0~98\);

-- Location: FF_X19_Y3_N43
\scaled_clock|Count[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~97_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count[4]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y3_N45
\scaled_clock|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Add0~93_sumout\ = SUM(( \scaled_clock|Count\(5) ) + ( GND ) + ( \scaled_clock|Add0~98\ ))
-- \scaled_clock|Add0~94\ = CARRY(( \scaled_clock|Count\(5) ) + ( GND ) + ( \scaled_clock|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \scaled_clock|ALT_INV_Count\(5),
	cin => \scaled_clock|Add0~98\,
	sumout => \scaled_clock|Add0~93_sumout\,
	cout => \scaled_clock|Add0~94\);

-- Location: FF_X19_Y3_N47
\scaled_clock|Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~93_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(5));

-- Location: FF_X19_Y3_N50
\scaled_clock|Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~89_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(6));

-- Location: FF_X19_Y3_N44
\scaled_clock|Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~97_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count\(4));

-- Location: FF_X19_Y2_N1
\scaled_clock|Count[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~inputCLKENA0_outclk\,
	d => \scaled_clock|Add0~77_sumout\,
	sclr => \scaled_clock|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Count[10]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y3_N18
\scaled_clock|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Equal0~3_combout\ = ( !\scaled_clock|Count\(7) & ( !\scaled_clock|Count[10]~DUPLICATE_q\ & ( (!\scaled_clock|Count\(6) & (\scaled_clock|Count\(5) & (!\scaled_clock|Count\(8) & \scaled_clock|Count\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scaled_clock|ALT_INV_Count\(6),
	datab => \scaled_clock|ALT_INV_Count\(5),
	datac => \scaled_clock|ALT_INV_Count\(8),
	datad => \scaled_clock|ALT_INV_Count\(4),
	datae => \scaled_clock|ALT_INV_Count\(7),
	dataf => \scaled_clock|ALT_INV_Count[10]~DUPLICATE_q\,
	combout => \scaled_clock|Equal0~3_combout\);

-- Location: LABCELL_X19_Y3_N24
\scaled_clock|Curr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \scaled_clock|Curr~0_combout\ = ( \scaled_clock|Equal0~0_combout\ & ( \scaled_clock|Curr~q\ & ( (!\scaled_clock|Equal0~3_combout\) # ((!\scaled_clock|Count\(18)) # ((!\scaled_clock|Equal0~2_combout\) # (!\scaled_clock|Equal0~1_combout\))) ) ) ) # ( 
-- !\scaled_clock|Equal0~0_combout\ & ( \scaled_clock|Curr~q\ ) ) # ( \scaled_clock|Equal0~0_combout\ & ( !\scaled_clock|Curr~q\ & ( (\scaled_clock|Equal0~3_combout\ & (\scaled_clock|Count\(18) & (\scaled_clock|Equal0~2_combout\ & 
-- \scaled_clock|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scaled_clock|ALT_INV_Equal0~3_combout\,
	datab => \scaled_clock|ALT_INV_Count\(18),
	datac => \scaled_clock|ALT_INV_Equal0~2_combout\,
	datad => \scaled_clock|ALT_INV_Equal0~1_combout\,
	datae => \scaled_clock|ALT_INV_Equal0~0_combout\,
	dataf => \scaled_clock|ALT_INV_Curr~q\,
	combout => \scaled_clock|Curr~0_combout\);

-- Location: FF_X19_Y3_N17
\scaled_clock|Curr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclock~input_o\,
	asdata => \scaled_clock|Curr~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scaled_clock|Curr~q\);

-- Location: IOIBUF_X33_Y0_N41
\input_time[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_time(0),
	o => \input_time[0]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\sec~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sec,
	o => \sec~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\hr~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hr,
	o => \hr~input_o\);

-- Location: MLABCELL_X13_Y1_N18
\HR10|Count[3]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR10|Count[3]~21_combout\ = ( \hr~input_o\ ) # ( !\hr~input_o\ & ( \process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_process_0~1_combout\,
	dataf => \ALT_INV_hr~input_o\,
	combout => \HR10|Count[3]~21_combout\);

-- Location: IOIBUF_X34_Y0_N52
\input_time[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_time(6),
	o => \input_time[6]~input_o\);

-- Location: MLABCELL_X13_Y1_N12
\HR10|Count[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR10|Count[2]~9_combout\ = ( !\process_0~1_combout\ & ( (!\HR10|Count[3]~21_combout\ & (\input_time[6]~input_o\)) # (\HR10|Count[3]~21_combout\ & ((\HR10|Count[2]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR10|ALT_INV_Count[3]~21_combout\,
	datac => \ALT_INV_input_time[6]~input_o\,
	datad => \HR10|ALT_INV_Count[2]~9_combout\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \HR10|Count[2]~9_combout\);

-- Location: IOIBUF_X34_Y0_N1
\input_time[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_time(2),
	o => \input_time[2]~input_o\);

-- Location: LABCELL_X17_Y1_N30
\SEC1|Count[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC1|Count[2]~9_combout\ = ( !\SEC1|Count[3]~21_combout\ & ( (!\sec~input_o\ & ((\input_time[2]~input_o\))) # (\sec~input_o\ & (\SEC1|Count[2]~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \SEC1|ALT_INV_Count[2]~9_combout\,
	datac => \ALT_INV_input_time[2]~input_o\,
	datad => \ALT_INV_sec~input_o\,
	dataf => \SEC1|ALT_INV_Count[3]~21_combout\,
	combout => \SEC1|Count[2]~9_combout\);

-- Location: IOIBUF_X33_Y0_N58
\input_time[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_time(1),
	o => \input_time[1]~input_o\);

-- Location: LABCELL_X17_Y1_N45
\SEC1|Count[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC1|Count[1]~5_combout\ = ( !\SEC1|Count[3]~21_combout\ & ( (!\sec~input_o\ & ((\input_time[1]~input_o\))) # (\sec~input_o\ & (\SEC1|Count[1]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEC1|ALT_INV_Count[1]~5_combout\,
	datac => \ALT_INV_input_time[1]~input_o\,
	datad => \ALT_INV_sec~input_o\,
	dataf => \SEC1|ALT_INV_Count[3]~21_combout\,
	combout => \SEC1|Count[1]~5_combout\);

-- Location: IOIBUF_X34_Y0_N18
\input_time[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_time(3),
	o => \input_time[3]~input_o\);

-- Location: LABCELL_X17_Y1_N33
\SEC1|Count[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC1|Count[3]~13_combout\ = ( !\SEC1|Count[3]~21_combout\ & ( (!\sec~input_o\ & ((\input_time[3]~input_o\))) # (\sec~input_o\ & (\SEC1|Count[3]~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEC1|ALT_INV_Count[3]~13_combout\,
	datac => \ALT_INV_input_time[3]~input_o\,
	datad => \ALT_INV_sec~input_o\,
	dataf => \SEC1|ALT_INV_Count[3]~21_combout\,
	combout => \SEC1|Count[3]~13_combout\);

-- Location: LABCELL_X17_Y1_N24
\SEC1|Count[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC1|Count[3]~15_combout\ = ( \SEC1|Count[2]~10_combout\ & ( !\SEC1|Count[3]~14_combout\ $ (!\SEC1|Count[3]~13_combout\ $ (((\SEC1|Count[1]~6_combout\ & \SEC1|Count[0]~2_combout\)))) ) ) # ( !\SEC1|Count[2]~10_combout\ & ( !\SEC1|Count[3]~13_combout\ $ 
-- (((!\SEC1|Count[3]~14_combout\) # ((!\SEC1|Count[1]~6_combout\ & \SEC1|Count[0]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000110101110010100011010111001010110101010010101011010101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEC1|ALT_INV_Count[3]~14_combout\,
	datab => \SEC1|ALT_INV_Count[1]~6_combout\,
	datac => \SEC1|ALT_INV_Count[0]~2_combout\,
	datad => \SEC1|ALT_INV_Count[3]~13_combout\,
	dataf => \SEC1|ALT_INV_Count[2]~10_combout\,
	combout => \SEC1|Count[3]~15_combout\);

-- Location: LABCELL_X17_Y1_N39
\SEC1|Count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC1|Count[0]~0_combout\ = ( \SEC1|Count[3]~21_combout\ ) # ( !\SEC1|Count[3]~21_combout\ & ( !\sec~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sec~input_o\,
	dataf => \SEC1|ALT_INV_Count[3]~21_combout\,
	combout => \SEC1|Count[0]~0_combout\);

-- Location: FF_X17_Y1_N26
\SEC1|Count[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \scaled_clock|Curr~q\,
	d => \SEC1|Count[3]~15_combout\,
	clrn => \SEC1|ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEC1|Count[3]~_emulated_q\);

-- Location: LABCELL_X17_Y1_N36
\SEC1|Count[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC1|Count[3]~14_combout\ = ( !\SEC1|Count[3]~21_combout\ & ( (!\sec~input_o\ & (((\input_time[3]~input_o\)))) # (\sec~input_o\ & (!\SEC1|Count[3]~_emulated_q\ $ ((!\SEC1|Count[3]~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001011011110000100101101111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEC1|ALT_INV_Count[3]~_emulated_q\,
	datab => \ALT_INV_sec~input_o\,
	datac => \SEC1|ALT_INV_Count[3]~13_combout\,
	datad => \ALT_INV_input_time[3]~input_o\,
	dataf => \SEC1|ALT_INV_Count[3]~21_combout\,
	combout => \SEC1|Count[3]~14_combout\);

-- Location: LABCELL_X17_Y1_N42
\SEC1|Count[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC1|Count[1]~7_combout\ = ( \SEC1|Count[2]~10_combout\ & ( !\SEC1|Count[1]~5_combout\ $ (!\SEC1|Count[1]~6_combout\ $ (\SEC1|Count[0]~2_combout\)) ) ) # ( !\SEC1|Count[2]~10_combout\ & ( !\SEC1|Count[1]~5_combout\ $ (((!\SEC1|Count[1]~6_combout\ & 
-- ((!\SEC1|Count[0]~2_combout\) # (\SEC1|Count[3]~14_combout\))) # (\SEC1|Count[1]~6_combout\ & (\SEC1|Count[0]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101100101011010010110010101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEC1|ALT_INV_Count[1]~5_combout\,
	datab => \SEC1|ALT_INV_Count[1]~6_combout\,
	datac => \SEC1|ALT_INV_Count[0]~2_combout\,
	datad => \SEC1|ALT_INV_Count[3]~14_combout\,
	dataf => \SEC1|ALT_INV_Count[2]~10_combout\,
	combout => \SEC1|Count[1]~7_combout\);

-- Location: FF_X17_Y1_N44
\SEC1|Count[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \scaled_clock|Curr~q\,
	d => \SEC1|Count[1]~7_combout\,
	clrn => \SEC1|ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEC1|Count[1]~_emulated_q\);

-- Location: LABCELL_X17_Y1_N57
\SEC1|Count[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC1|Count[1]~6_combout\ = ( !\SEC1|Count[3]~21_combout\ & ( (!\sec~input_o\ & (\input_time[1]~input_o\)) # (\sec~input_o\ & ((!\SEC1|Count[1]~_emulated_q\ $ (!\SEC1|Count[1]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100111100010101010011110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_time[1]~input_o\,
	datab => \SEC1|ALT_INV_Count[1]~_emulated_q\,
	datac => \SEC1|ALT_INV_Count[1]~5_combout\,
	datad => \ALT_INV_sec~input_o\,
	dataf => \SEC1|ALT_INV_Count[3]~21_combout\,
	combout => \SEC1|Count[1]~6_combout\);

-- Location: LABCELL_X17_Y1_N6
\SEC1|Count[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC1|Count[2]~11_combout\ = ( \SEC1|Count[2]~10_combout\ & ( !\SEC1|Count[2]~9_combout\ $ (((\SEC1|Count[1]~6_combout\ & \SEC1|Count[0]~2_combout\))) ) ) # ( !\SEC1|Count[2]~10_combout\ & ( !\SEC1|Count[2]~9_combout\ $ (((!\SEC1|Count[1]~6_combout\) # 
-- (!\SEC1|Count[0]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110011001100110000111100110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \SEC1|ALT_INV_Count[2]~9_combout\,
	datac => \SEC1|ALT_INV_Count[1]~6_combout\,
	datad => \SEC1|ALT_INV_Count[0]~2_combout\,
	dataf => \SEC1|ALT_INV_Count[2]~10_combout\,
	combout => \SEC1|Count[2]~11_combout\);

-- Location: FF_X17_Y1_N8
\SEC1|Count[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \scaled_clock|Curr~q\,
	d => \SEC1|Count[2]~11_combout\,
	clrn => \SEC1|ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEC1|Count[2]~_emulated_q\);

-- Location: LABCELL_X17_Y1_N9
\SEC1|Count[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC1|Count[2]~10_combout\ = ( !\SEC1|Count[3]~21_combout\ & ( (!\sec~input_o\ & (((\input_time[2]~input_o\)))) # (\sec~input_o\ & (!\SEC1|Count[2]~9_combout\ $ ((!\SEC1|Count[2]~_emulated_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010010111110000101001011111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sec~input_o\,
	datab => \SEC1|ALT_INV_Count[2]~9_combout\,
	datac => \SEC1|ALT_INV_Count[2]~_emulated_q\,
	datad => \ALT_INV_input_time[2]~input_o\,
	dataf => \SEC1|ALT_INV_Count[3]~21_combout\,
	combout => \SEC1|Count[2]~10_combout\);

-- Location: LABCELL_X17_Y1_N3
\SEC1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC1|Equal0~0_combout\ = ( \SEC1|Count[3]~14_combout\ & ( (\SEC1|Count[0]~2_combout\ & (!\SEC1|Count[2]~10_combout\ & !\SEC1|Count[1]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEC1|ALT_INV_Count[0]~2_combout\,
	datac => \SEC1|ALT_INV_Count[2]~10_combout\,
	datad => \SEC1|ALT_INV_Count[1]~6_combout\,
	dataf => \SEC1|ALT_INV_Count[3]~14_combout\,
	combout => \SEC1|Equal0~0_combout\);

-- Location: LABCELL_X17_Y1_N27
\SEC1|Carry~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC1|Carry~0_combout\ = ( \sec~input_o\ & ( \process_0~1_combout\ ) ) # ( !\sec~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~1_combout\,
	dataf => \ALT_INV_sec~input_o\,
	combout => \SEC1|Carry~0_combout\);

-- Location: FF_X17_Y1_N5
\SEC1|Carry\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \scaled_clock|Curr~q\,
	d => \SEC1|Equal0~0_combout\,
	clrn => \SEC1|ALT_INV_Carry~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEC1|Carry~q\);

-- Location: LABCELL_X16_Y1_N15
\SEC10|Count[3]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC10|Count[3]~22_combout\ = ( \sec~input_o\ ) # ( !\sec~input_o\ & ( \process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_process_0~1_combout\,
	dataf => \ALT_INV_sec~input_o\,
	combout => \SEC10|Count[3]~22_combout\);

-- Location: LABCELL_X17_Y1_N18
\SEC10|Count[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC10|Count[2]~9_combout\ = ( \SEC10|Count[3]~22_combout\ & ( (!\process_0~1_combout\ & \SEC10|Count[2]~9_combout\) ) ) # ( !\SEC10|Count[3]~22_combout\ & ( (!\process_0~1_combout\ & \input_time[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~1_combout\,
	datac => \SEC10|ALT_INV_Count[2]~9_combout\,
	datad => \ALT_INV_input_time[6]~input_o\,
	dataf => \SEC10|ALT_INV_Count[3]~22_combout\,
	combout => \SEC10|Count[2]~9_combout\);

-- Location: IOIBUF_X36_Y0_N35
\input_time[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_time(4),
	o => \input_time[4]~input_o\);

-- Location: LABCELL_X16_Y1_N3
\SEC10|Count[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC10|Count[0]~1_combout\ = ( !\process_0~1_combout\ & ( (!\SEC10|Count[3]~22_combout\ & (\input_time[4]~input_o\)) # (\SEC10|Count[3]~22_combout\ & ((\SEC10|Count[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_time[4]~input_o\,
	datac => \SEC10|ALT_INV_Count[3]~22_combout\,
	datad => \SEC10|ALT_INV_Count[0]~1_combout\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \SEC10|Count[0]~1_combout\);

-- Location: LABCELL_X16_Y1_N30
\SEC10|Count[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC10|Count[0]~3_combout\ = ( \SEC10|Count[0]~2_combout\ & ( \SEC10|Count[0]~1_combout\ ) ) # ( !\SEC10|Count[0]~2_combout\ & ( !\SEC10|Count[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \SEC10|ALT_INV_Count[0]~1_combout\,
	dataf => \SEC10|ALT_INV_Count[0]~2_combout\,
	combout => \SEC10|Count[0]~3_combout\);

-- Location: LABCELL_X16_Y1_N27
\SEC10|Count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC10|Count[0]~0_combout\ = ( \process_0~1_combout\ ) # ( !\process_0~1_combout\ & ( !\SEC10|Count[3]~22_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \SEC10|ALT_INV_Count[3]~22_combout\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \SEC10|Count[0]~0_combout\);

-- Location: FF_X16_Y1_N32
\SEC10|Count[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SEC1|Carry~q\,
	d => \SEC10|Count[0]~3_combout\,
	clrn => \SEC10|ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEC10|Count[0]~_emulated_q\);

-- Location: LABCELL_X16_Y1_N9
\SEC10|Count[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC10|Count[0]~2_combout\ = ( \SEC10|Count[0]~_emulated_q\ & ( (!\process_0~1_combout\ & ((!\SEC10|Count[3]~22_combout\ & ((\input_time[4]~input_o\))) # (\SEC10|Count[3]~22_combout\ & (!\SEC10|Count[0]~1_combout\)))) ) ) # ( !\SEC10|Count[0]~_emulated_q\ 
-- & ( (!\process_0~1_combout\ & ((!\SEC10|Count[3]~22_combout\ & ((\input_time[4]~input_o\))) # (\SEC10|Count[3]~22_combout\ & (\SEC10|Count[0]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110001000000110010000100000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEC10|ALT_INV_Count[3]~22_combout\,
	datab => \ALT_INV_process_0~1_combout\,
	datac => \SEC10|ALT_INV_Count[0]~1_combout\,
	datad => \ALT_INV_input_time[4]~input_o\,
	dataf => \SEC10|ALT_INV_Count[0]~_emulated_q\,
	combout => \SEC10|Count[0]~2_combout\);

-- Location: IOIBUF_X36_Y0_N52
\input_time[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_time(5),
	o => \input_time[5]~input_o\);

-- Location: LABCELL_X16_Y1_N36
\SEC10|Count[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC10|Count[1]~5_combout\ = ( !\process_0~1_combout\ & ( (!\SEC10|Count[3]~22_combout\ & ((\input_time[5]~input_o\))) # (\SEC10|Count[3]~22_combout\ & (\SEC10|Count[1]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEC10|ALT_INV_Count[1]~5_combout\,
	datac => \ALT_INV_input_time[5]~input_o\,
	datad => \SEC10|ALT_INV_Count[3]~22_combout\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \SEC10|Count[1]~5_combout\);

-- Location: IOIBUF_X34_Y0_N35
\input_time[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_time(7),
	o => \input_time[7]~input_o\);

-- Location: LABCELL_X16_Y1_N21
\SEC10|Count[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC10|Count[3]~13_combout\ = ( !\process_0~1_combout\ & ( (!\SEC10|Count[3]~22_combout\ & ((\input_time[7]~input_o\))) # (\SEC10|Count[3]~22_combout\ & (\SEC10|Count[3]~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEC10|ALT_INV_Count[3]~13_combout\,
	datac => \SEC10|ALT_INV_Count[3]~22_combout\,
	datad => \ALT_INV_input_time[7]~input_o\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \SEC10|Count[3]~13_combout\);

-- Location: LABCELL_X16_Y1_N18
\SEC10|Count[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC10|Count[3]~15_combout\ = ( \SEC10|Count[1]~6_combout\ & ( !\SEC10|Count[3]~13_combout\ $ (!\SEC10|Count[3]~14_combout\ $ (((\SEC10|Count[2]~10_combout\ & \SEC10|Count[0]~2_combout\)))) ) ) # ( !\SEC10|Count[1]~6_combout\ & ( 
-- !\SEC10|Count[3]~13_combout\ $ (!\SEC10|Count[3]~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010011010010101101001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEC10|ALT_INV_Count[3]~13_combout\,
	datab => \SEC10|ALT_INV_Count[2]~10_combout\,
	datac => \SEC10|ALT_INV_Count[3]~14_combout\,
	datad => \SEC10|ALT_INV_Count[0]~2_combout\,
	dataf => \SEC10|ALT_INV_Count[1]~6_combout\,
	combout => \SEC10|Count[3]~15_combout\);

-- Location: FF_X16_Y1_N19
\SEC10|Count[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SEC1|Carry~q\,
	d => \SEC10|Count[3]~15_combout\,
	clrn => \SEC10|ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEC10|Count[3]~_emulated_q\);

-- Location: LABCELL_X16_Y1_N54
\SEC10|Count[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC10|Count[3]~14_combout\ = ( \SEC10|Count[3]~_emulated_q\ & ( (!\process_0~1_combout\ & ((!\SEC10|Count[3]~22_combout\ & ((\input_time[7]~input_o\))) # (\SEC10|Count[3]~22_combout\ & (!\SEC10|Count[3]~13_combout\)))) ) ) # ( 
-- !\SEC10|Count[3]~_emulated_q\ & ( (!\process_0~1_combout\ & ((!\SEC10|Count[3]~22_combout\ & ((\input_time[7]~input_o\))) # (\SEC10|Count[3]~22_combout\ & (\SEC10|Count[3]~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110001000000110010000100000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEC10|ALT_INV_Count[3]~22_combout\,
	datab => \ALT_INV_process_0~1_combout\,
	datac => \SEC10|ALT_INV_Count[3]~13_combout\,
	datad => \ALT_INV_input_time[7]~input_o\,
	dataf => \SEC10|ALT_INV_Count[3]~_emulated_q\,
	combout => \SEC10|Count[3]~14_combout\);

-- Location: LABCELL_X16_Y1_N39
\SEC10|Count[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC10|Count[1]~7_combout\ = ( \SEC10|Count[1]~6_combout\ & ( !\SEC10|Count[1]~5_combout\ $ (\SEC10|Count[0]~2_combout\) ) ) # ( !\SEC10|Count[1]~6_combout\ & ( !\SEC10|Count[1]~5_combout\ $ (((!\SEC10|Count[0]~2_combout\) # ((\SEC10|Count[2]~10_combout\ 
-- & !\SEC10|Count[3]~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101100110011001010110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEC10|ALT_INV_Count[1]~5_combout\,
	datab => \SEC10|ALT_INV_Count[0]~2_combout\,
	datac => \SEC10|ALT_INV_Count[2]~10_combout\,
	datad => \SEC10|ALT_INV_Count[3]~14_combout\,
	dataf => \SEC10|ALT_INV_Count[1]~6_combout\,
	combout => \SEC10|Count[1]~7_combout\);

-- Location: FF_X16_Y1_N41
\SEC10|Count[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SEC1|Carry~q\,
	d => \SEC10|Count[1]~7_combout\,
	clrn => \SEC10|ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEC10|Count[1]~_emulated_q\);

-- Location: LABCELL_X16_Y1_N57
\SEC10|Count[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC10|Count[1]~6_combout\ = ( \SEC10|Count[1]~_emulated_q\ & ( (!\process_0~1_combout\ & ((!\SEC10|Count[3]~22_combout\ & ((\input_time[5]~input_o\))) # (\SEC10|Count[3]~22_combout\ & (!\SEC10|Count[1]~5_combout\)))) ) ) # ( !\SEC10|Count[1]~_emulated_q\ 
-- & ( (!\process_0~1_combout\ & ((!\SEC10|Count[3]~22_combout\ & ((\input_time[5]~input_o\))) # (\SEC10|Count[3]~22_combout\ & (\SEC10|Count[1]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110001000000110010000100000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEC10|ALT_INV_Count[3]~22_combout\,
	datab => \ALT_INV_process_0~1_combout\,
	datac => \SEC10|ALT_INV_Count[1]~5_combout\,
	datad => \ALT_INV_input_time[5]~input_o\,
	dataf => \SEC10|ALT_INV_Count[1]~_emulated_q\,
	combout => \SEC10|Count[1]~6_combout\);

-- Location: LABCELL_X16_Y1_N24
\SEC10|Count[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC10|Count[2]~11_combout\ = ( \SEC10|Count[3]~14_combout\ & ( !\SEC10|Count[2]~9_combout\ $ (!\SEC10|Count[2]~10_combout\ $ (((\SEC10|Count[0]~2_combout\ & \SEC10|Count[1]~6_combout\)))) ) ) # ( !\SEC10|Count[3]~14_combout\ & ( 
-- !\SEC10|Count[2]~9_combout\ $ (((!\SEC10|Count[2]~10_combout\ & ((!\SEC10|Count[0]~2_combout\) # (!\SEC10|Count[1]~6_combout\))) # (\SEC10|Count[2]~10_combout\ & (\SEC10|Count[0]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101101001011001010110100101100110011010010110011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEC10|ALT_INV_Count[2]~9_combout\,
	datab => \SEC10|ALT_INV_Count[2]~10_combout\,
	datac => \SEC10|ALT_INV_Count[0]~2_combout\,
	datad => \SEC10|ALT_INV_Count[1]~6_combout\,
	dataf => \SEC10|ALT_INV_Count[3]~14_combout\,
	combout => \SEC10|Count[2]~11_combout\);

-- Location: FF_X16_Y1_N26
\SEC10|Count[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SEC1|Carry~q\,
	d => \SEC10|Count[2]~11_combout\,
	clrn => \SEC10|ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEC10|Count[2]~_emulated_q\);

-- Location: LABCELL_X16_Y1_N6
\SEC10|Count[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC10|Count[2]~10_combout\ = ( \input_time[6]~input_o\ & ( (!\process_0~1_combout\ & ((!\SEC10|Count[3]~22_combout\) # (!\SEC10|Count[2]~9_combout\ $ (!\SEC10|Count[2]~_emulated_q\)))) ) ) # ( !\input_time[6]~input_o\ & ( (\SEC10|Count[3]~22_combout\ & 
-- (!\process_0~1_combout\ & (!\SEC10|Count[2]~9_combout\ $ (!\SEC10|Count[2]~_emulated_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000000000001000100000010001100110010001000110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEC10|ALT_INV_Count[3]~22_combout\,
	datab => \ALT_INV_process_0~1_combout\,
	datac => \SEC10|ALT_INV_Count[2]~9_combout\,
	datad => \SEC10|ALT_INV_Count[2]~_emulated_q\,
	dataf => \ALT_INV_input_time[6]~input_o\,
	combout => \SEC10|Count[2]~10_combout\);

-- Location: LABCELL_X16_Y1_N48
\SEC10|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC10|Equal0~0_combout\ = ( !\SEC10|Count[1]~6_combout\ & ( (\SEC10|Count[2]~10_combout\ & (!\SEC10|Count[3]~14_combout\ & \SEC10|Count[0]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \SEC10|ALT_INV_Count[2]~10_combout\,
	datac => \SEC10|ALT_INV_Count[3]~14_combout\,
	datad => \SEC10|ALT_INV_Count[0]~2_combout\,
	dataf => \SEC10|ALT_INV_Count[1]~6_combout\,
	combout => \SEC10|Equal0~0_combout\);

-- Location: FF_X16_Y1_N50
\SEC10|Carry\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SEC1|Carry~q\,
	d => \SEC10|Equal0~0_combout\,
	clrn => \SEC1|ALT_INV_Carry~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEC10|Carry~q\);

-- Location: IOIBUF_X14_Y0_N1
\min~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min,
	o => \min~input_o\);

-- Location: LABCELL_X19_Y1_N12
\MIN1|Count[3]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN1|Count[3]~21_combout\ = ( \process_0~1_combout\ & ( \min~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_min~input_o\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \MIN1|Count[3]~21_combout\);

-- Location: LABCELL_X19_Y1_N0
\MIN1|Count[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN1|Count[0]~1_combout\ = ( !\MIN1|Count[3]~21_combout\ & ( (!\min~input_o\ & ((\input_time[0]~input_o\))) # (\min~input_o\ & (\MIN1|Count[0]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_min~input_o\,
	datac => \MIN1|ALT_INV_Count[0]~1_combout\,
	datad => \ALT_INV_input_time[0]~input_o\,
	dataf => \MIN1|ALT_INV_Count[3]~21_combout\,
	combout => \MIN1|Count[0]~1_combout\);

-- Location: LABCELL_X19_Y1_N48
\MIN1|Count[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN1|Count[0]~3_combout\ = !\MIN1|Count[0]~2_combout\ $ (\MIN1|Count[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MIN1|ALT_INV_Count[0]~2_combout\,
	datad => \MIN1|ALT_INV_Count[0]~1_combout\,
	combout => \MIN1|Count[0]~3_combout\);

-- Location: LABCELL_X19_Y1_N57
\MIN1|Count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN1|Count[0]~0_combout\ = ( \MIN1|Count[3]~21_combout\ ) # ( !\MIN1|Count[3]~21_combout\ & ( !\min~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_min~input_o\,
	dataf => \MIN1|ALT_INV_Count[3]~21_combout\,
	combout => \MIN1|Count[0]~0_combout\);

-- Location: FF_X19_Y1_N50
\MIN1|Count[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SEC10|Carry~q\,
	d => \MIN1|Count[0]~3_combout\,
	clrn => \MIN1|ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MIN1|Count[0]~_emulated_q\);

-- Location: LABCELL_X19_Y1_N24
\MIN1|Count[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN1|Count[0]~2_combout\ = ( \MIN1|Count[0]~1_combout\ & ( !\MIN1|Count[3]~21_combout\ & ( (!\min~input_o\ & (\input_time[0]~input_o\)) # (\min~input_o\ & ((!\MIN1|Count[0]~_emulated_q\))) ) ) ) # ( !\MIN1|Count[0]~1_combout\ & ( 
-- !\MIN1|Count[3]~21_combout\ & ( (!\min~input_o\ & (\input_time[0]~input_o\)) # (\min~input_o\ & ((\MIN1|Count[0]~_emulated_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101011111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_time[0]~input_o\,
	datac => \MIN1|ALT_INV_Count[0]~_emulated_q\,
	datad => \ALT_INV_min~input_o\,
	datae => \MIN1|ALT_INV_Count[0]~1_combout\,
	dataf => \MIN1|ALT_INV_Count[3]~21_combout\,
	combout => \MIN1|Count[0]~2_combout\);

-- Location: LABCELL_X19_Y1_N9
\MIN1|Count[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN1|Count[3]~13_combout\ = ( !\MIN1|Count[3]~21_combout\ & ( (!\min~input_o\ & ((\input_time[3]~input_o\))) # (\min~input_o\ & (\MIN1|Count[3]~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MIN1|ALT_INV_Count[3]~13_combout\,
	datac => \ALT_INV_min~input_o\,
	datad => \ALT_INV_input_time[3]~input_o\,
	dataf => \MIN1|ALT_INV_Count[3]~21_combout\,
	combout => \MIN1|Count[3]~13_combout\);

-- Location: LABCELL_X19_Y1_N30
\MIN1|Count[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN1|Count[1]~5_combout\ = ( !\MIN1|Count[3]~21_combout\ & ( (!\min~input_o\ & ((\input_time[1]~input_o\))) # (\min~input_o\ & (\MIN1|Count[1]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MIN1|ALT_INV_Count[1]~5_combout\,
	datac => \ALT_INV_input_time[1]~input_o\,
	datad => \ALT_INV_min~input_o\,
	dataf => \MIN1|ALT_INV_Count[3]~21_combout\,
	combout => \MIN1|Count[1]~5_combout\);

-- Location: LABCELL_X19_Y1_N21
\MIN1|Count[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN1|Count[1]~7_combout\ = ( \MIN1|Count[3]~14_combout\ & ( \MIN1|Count[2]~10_combout\ & ( !\MIN1|Count[0]~2_combout\ $ (!\MIN1|Count[1]~6_combout\ $ (\MIN1|Count[1]~5_combout\)) ) ) ) # ( !\MIN1|Count[3]~14_combout\ & ( \MIN1|Count[2]~10_combout\ & ( 
-- !\MIN1|Count[0]~2_combout\ $ (!\MIN1|Count[1]~6_combout\ $ (\MIN1|Count[1]~5_combout\)) ) ) ) # ( \MIN1|Count[3]~14_combout\ & ( !\MIN1|Count[2]~10_combout\ & ( !\MIN1|Count[1]~5_combout\ $ (((!\MIN1|Count[1]~6_combout\) # (\MIN1|Count[0]~2_combout\))) ) 
-- ) ) # ( !\MIN1|Count[3]~14_combout\ & ( !\MIN1|Count[2]~10_combout\ & ( !\MIN1|Count[0]~2_combout\ $ (!\MIN1|Count[1]~6_combout\ $ (\MIN1|Count[1]~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001001011010010110101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MIN1|ALT_INV_Count[0]~2_combout\,
	datab => \MIN1|ALT_INV_Count[1]~6_combout\,
	datac => \MIN1|ALT_INV_Count[1]~5_combout\,
	datae => \MIN1|ALT_INV_Count[3]~14_combout\,
	dataf => \MIN1|ALT_INV_Count[2]~10_combout\,
	combout => \MIN1|Count[1]~7_combout\);

-- Location: FF_X19_Y1_N23
\MIN1|Count[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SEC10|Carry~q\,
	d => \MIN1|Count[1]~7_combout\,
	clrn => \MIN1|ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MIN1|Count[1]~_emulated_q\);

-- Location: LABCELL_X19_Y1_N36
\MIN1|Count[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN1|Count[1]~6_combout\ = ( \min~input_o\ & ( !\MIN1|Count[3]~21_combout\ & ( !\MIN1|Count[1]~_emulated_q\ $ (!\MIN1|Count[1]~5_combout\) ) ) ) # ( !\min~input_o\ & ( !\MIN1|Count[3]~21_combout\ & ( \input_time[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_time[1]~input_o\,
	datac => \MIN1|ALT_INV_Count[1]~_emulated_q\,
	datad => \MIN1|ALT_INV_Count[1]~5_combout\,
	datae => \ALT_INV_min~input_o\,
	dataf => \MIN1|ALT_INV_Count[3]~21_combout\,
	combout => \MIN1|Count[1]~6_combout\);

-- Location: LABCELL_X19_Y1_N3
\MIN1|Count[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN1|Count[2]~9_combout\ = ( !\MIN1|Count[3]~21_combout\ & ( (!\min~input_o\ & (\input_time[2]~input_o\)) # (\min~input_o\ & ((\MIN1|Count[2]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_time[2]~input_o\,
	datac => \ALT_INV_min~input_o\,
	datad => \MIN1|ALT_INV_Count[2]~9_combout\,
	dataf => \MIN1|ALT_INV_Count[3]~21_combout\,
	combout => \MIN1|Count[2]~9_combout\);

-- Location: LABCELL_X19_Y1_N15
\MIN1|Count[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN1|Count[2]~11_combout\ = ( \MIN1|Count[2]~9_combout\ & ( !\MIN1|Count[2]~10_combout\ $ (((\MIN1|Count[1]~6_combout\ & \MIN1|Count[0]~2_combout\))) ) ) # ( !\MIN1|Count[2]~9_combout\ & ( !\MIN1|Count[2]~10_combout\ $ (((!\MIN1|Count[1]~6_combout\) # 
-- (!\MIN1|Count[0]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000110110001101100011011011001001110010011100100111001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MIN1|ALT_INV_Count[1]~6_combout\,
	datab => \MIN1|ALT_INV_Count[2]~10_combout\,
	datac => \MIN1|ALT_INV_Count[0]~2_combout\,
	dataf => \MIN1|ALT_INV_Count[2]~9_combout\,
	combout => \MIN1|Count[2]~11_combout\);

-- Location: FF_X19_Y1_N17
\MIN1|Count[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SEC10|Carry~q\,
	d => \MIN1|Count[2]~11_combout\,
	clrn => \MIN1|ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MIN1|Count[2]~_emulated_q\);

-- Location: LABCELL_X19_Y1_N42
\MIN1|Count[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN1|Count[2]~10_combout\ = ( \MIN1|Count[2]~9_combout\ & ( !\MIN1|Count[3]~21_combout\ & ( (!\min~input_o\ & (\input_time[2]~input_o\)) # (\min~input_o\ & ((!\MIN1|Count[2]~_emulated_q\))) ) ) ) # ( !\MIN1|Count[2]~9_combout\ & ( 
-- !\MIN1|Count[3]~21_combout\ & ( (!\min~input_o\ & (\input_time[2]~input_o\)) # (\min~input_o\ & ((\MIN1|Count[2]~_emulated_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010111110101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_time[2]~input_o\,
	datac => \ALT_INV_min~input_o\,
	datad => \MIN1|ALT_INV_Count[2]~_emulated_q\,
	datae => \MIN1|ALT_INV_Count[2]~9_combout\,
	dataf => \MIN1|ALT_INV_Count[3]~21_combout\,
	combout => \MIN1|Count[2]~10_combout\);

-- Location: LABCELL_X19_Y1_N33
\MIN1|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN1|Add0~0_combout\ = ( \MIN1|Count[0]~2_combout\ & ( (\MIN1|Count[2]~10_combout\ & \MIN1|Count[1]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MIN1|ALT_INV_Count[2]~10_combout\,
	datad => \MIN1|ALT_INV_Count[1]~6_combout\,
	dataf => \MIN1|ALT_INV_Count[0]~2_combout\,
	combout => \MIN1|Add0~0_combout\);

-- Location: LABCELL_X19_Y1_N54
\MIN1|Count[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN1|Count[3]~15_combout\ = ( \MIN1|Add0~0_combout\ & ( !\MIN1|Count[3]~13_combout\ $ (((\MIN1|Count[3]~14_combout\) # (\MIN1|Equal0~0_combout\))) ) ) # ( !\MIN1|Add0~0_combout\ & ( !\MIN1|Count[3]~13_combout\ $ (((!\MIN1|Count[3]~14_combout\) # 
-- (\MIN1|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100101011001010110010101100110010101100101011001010110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MIN1|ALT_INV_Count[3]~13_combout\,
	datab => \MIN1|ALT_INV_Equal0~0_combout\,
	datac => \MIN1|ALT_INV_Count[3]~14_combout\,
	dataf => \MIN1|ALT_INV_Add0~0_combout\,
	combout => \MIN1|Count[3]~15_combout\);

-- Location: FF_X19_Y1_N56
\MIN1|Count[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SEC10|Carry~q\,
	d => \MIN1|Count[3]~15_combout\,
	clrn => \MIN1|ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MIN1|Count[3]~_emulated_q\);

-- Location: LABCELL_X19_Y1_N51
\MIN1|Count[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN1|Count[3]~14_combout\ = ( !\MIN1|Count[3]~21_combout\ & ( (!\min~input_o\ & (\input_time[3]~input_o\)) # (\min~input_o\ & ((!\MIN1|Count[3]~13_combout\ $ (!\MIN1|Count[3]~_emulated_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101110100010001110111010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_time[3]~input_o\,
	datab => \ALT_INV_min~input_o\,
	datac => \MIN1|ALT_INV_Count[3]~13_combout\,
	datad => \MIN1|ALT_INV_Count[3]~_emulated_q\,
	dataf => \MIN1|ALT_INV_Count[3]~21_combout\,
	combout => \MIN1|Count[3]~14_combout\);

-- Location: LABCELL_X19_Y1_N6
\MIN1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN1|Equal0~0_combout\ = ( !\MIN1|Count[2]~10_combout\ & ( (\MIN1|Count[0]~2_combout\ & (\MIN1|Count[3]~14_combout\ & !\MIN1|Count[1]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MIN1|ALT_INV_Count[0]~2_combout\,
	datac => \MIN1|ALT_INV_Count[3]~14_combout\,
	datad => \MIN1|ALT_INV_Count[1]~6_combout\,
	dataf => \MIN1|ALT_INV_Count[2]~10_combout\,
	combout => \MIN1|Equal0~0_combout\);

-- Location: MLABCELL_X18_Y1_N21
\MIN10|Carry~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN10|Carry~0_combout\ = ( \min~input_o\ & ( \process_0~1_combout\ ) ) # ( !\min~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~1_combout\,
	dataf => \ALT_INV_min~input_o\,
	combout => \MIN10|Carry~0_combout\);

-- Location: FF_X19_Y1_N40
\MIN1|Carry\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SEC10|Carry~q\,
	asdata => \MIN1|Equal0~0_combout\,
	clrn => \MIN10|ALT_INV_Carry~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MIN1|Carry~q\);

-- Location: MLABCELL_X18_Y1_N33
\MIN10|Count[3]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN10|Count[3]~21_combout\ = ( \min~input_o\ ) # ( !\min~input_o\ & ( \process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~1_combout\,
	dataf => \ALT_INV_min~input_o\,
	combout => \MIN10|Count[3]~21_combout\);

-- Location: MLABCELL_X18_Y1_N30
\MIN10|Count[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN10|Count[2]~9_combout\ = ( !\process_0~1_combout\ & ( (!\MIN10|Count[3]~21_combout\ & (\input_time[6]~input_o\)) # (\MIN10|Count[3]~21_combout\ & ((\MIN10|Count[2]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MIN10|ALT_INV_Count[3]~21_combout\,
	datab => \ALT_INV_input_time[6]~input_o\,
	datad => \MIN10|ALT_INV_Count[2]~9_combout\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \MIN10|Count[2]~9_combout\);

-- Location: MLABCELL_X18_Y1_N15
\MIN10|Count[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN10|Count[0]~1_combout\ = ( !\process_0~1_combout\ & ( (!\MIN10|Count[3]~21_combout\ & ((\input_time[4]~input_o\))) # (\MIN10|Count[3]~21_combout\ & (\MIN10|Count[0]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MIN10|ALT_INV_Count[3]~21_combout\,
	datac => \MIN10|ALT_INV_Count[0]~1_combout\,
	datad => \ALT_INV_input_time[4]~input_o\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \MIN10|Count[0]~1_combout\);

-- Location: MLABCELL_X18_Y1_N24
\MIN10|Count[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN10|Count[0]~3_combout\ = ( \MIN10|Count[0]~1_combout\ & ( \MIN10|Count[0]~2_combout\ ) ) # ( !\MIN10|Count[0]~1_combout\ & ( !\MIN10|Count[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MIN10|ALT_INV_Count[0]~2_combout\,
	dataf => \MIN10|ALT_INV_Count[0]~1_combout\,
	combout => \MIN10|Count[0]~3_combout\);

-- Location: MLABCELL_X18_Y1_N57
\MIN10|Count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN10|Count[0]~0_combout\ = ( \MIN10|Count[3]~21_combout\ & ( \process_0~1_combout\ ) ) # ( !\MIN10|Count[3]~21_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~1_combout\,
	dataf => \MIN10|ALT_INV_Count[3]~21_combout\,
	combout => \MIN10|Count[0]~0_combout\);

-- Location: FF_X18_Y1_N26
\MIN10|Count[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MIN1|Carry~q\,
	d => \MIN10|Count[0]~3_combout\,
	clrn => \MIN10|ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MIN10|Count[0]~_emulated_q\);

-- Location: MLABCELL_X18_Y1_N27
\MIN10|Count[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN10|Count[0]~2_combout\ = ( \MIN10|Count[0]~_emulated_q\ & ( (!\process_0~1_combout\ & ((!\MIN10|Count[3]~21_combout\ & ((\input_time[4]~input_o\))) # (\MIN10|Count[3]~21_combout\ & (!\MIN10|Count[0]~1_combout\)))) ) ) # ( !\MIN10|Count[0]~_emulated_q\ 
-- & ( (!\process_0~1_combout\ & ((!\MIN10|Count[3]~21_combout\ & ((\input_time[4]~input_o\))) # (\MIN10|Count[3]~21_combout\ & (\MIN10|Count[0]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110001000000110010000100000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MIN10|ALT_INV_Count[3]~21_combout\,
	datab => \ALT_INV_process_0~1_combout\,
	datac => \MIN10|ALT_INV_Count[0]~1_combout\,
	datad => \ALT_INV_input_time[4]~input_o\,
	dataf => \MIN10|ALT_INV_Count[0]~_emulated_q\,
	combout => \MIN10|Count[0]~2_combout\);

-- Location: MLABCELL_X18_Y1_N36
\MIN10|Count[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN10|Count[1]~5_combout\ = ( !\process_0~1_combout\ & ( (!\MIN10|Count[3]~21_combout\ & (\input_time[5]~input_o\)) # (\MIN10|Count[3]~21_combout\ & ((\MIN10|Count[1]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MIN10|ALT_INV_Count[3]~21_combout\,
	datac => \ALT_INV_input_time[5]~input_o\,
	datad => \MIN10|ALT_INV_Count[1]~5_combout\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \MIN10|Count[1]~5_combout\);

-- Location: MLABCELL_X18_Y1_N9
\MIN10|Count[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN10|Count[1]~7_combout\ = ( \MIN10|Count[1]~6_combout\ & ( !\MIN10|Count[1]~5_combout\ $ (((\MIN10|Equal0~0_combout\) # (\MIN10|Count[0]~2_combout\))) ) ) # ( !\MIN10|Count[1]~6_combout\ & ( !\MIN10|Count[1]~5_combout\ $ (((!\MIN10|Count[0]~2_combout\) 
-- # (\MIN10|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000110011001111000011001111000011001100111100001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MIN10|ALT_INV_Count[1]~5_combout\,
	datac => \MIN10|ALT_INV_Count[0]~2_combout\,
	datad => \MIN10|ALT_INV_Equal0~0_combout\,
	dataf => \MIN10|ALT_INV_Count[1]~6_combout\,
	combout => \MIN10|Count[1]~7_combout\);

-- Location: FF_X18_Y1_N11
\MIN10|Count[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MIN1|Carry~q\,
	d => \MIN10|Count[1]~7_combout\,
	clrn => \MIN10|ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MIN10|Count[1]~_emulated_q\);

-- Location: MLABCELL_X18_Y1_N6
\MIN10|Count[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN10|Count[1]~6_combout\ = ( \MIN10|Count[1]~_emulated_q\ & ( (!\process_0~1_combout\ & ((!\MIN10|Count[3]~21_combout\ & (\input_time[5]~input_o\)) # (\MIN10|Count[3]~21_combout\ & ((!\MIN10|Count[1]~5_combout\))))) ) ) # ( !\MIN10|Count[1]~_emulated_q\ 
-- & ( (!\process_0~1_combout\ & ((!\MIN10|Count[3]~21_combout\ & (\input_time[5]~input_o\)) # (\MIN10|Count[3]~21_combout\ & ((\MIN10|Count[1]~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000000001011100000000000101110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_time[5]~input_o\,
	datab => \MIN10|ALT_INV_Count[1]~5_combout\,
	datac => \MIN10|ALT_INV_Count[3]~21_combout\,
	datad => \ALT_INV_process_0~1_combout\,
	dataf => \MIN10|ALT_INV_Count[1]~_emulated_q\,
	combout => \MIN10|Count[1]~6_combout\);

-- Location: MLABCELL_X18_Y1_N0
\MIN10|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN10|Add0~0_combout\ = ( \MIN10|Count[1]~6_combout\ & ( \MIN10|Count[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MIN10|ALT_INV_Count[0]~2_combout\,
	dataf => \MIN10|ALT_INV_Count[1]~6_combout\,
	combout => \MIN10|Add0~0_combout\);

-- Location: MLABCELL_X18_Y1_N12
\MIN10|Count[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN10|Count[2]~11_combout\ = ( \MIN10|Add0~0_combout\ & ( !\MIN10|Count[2]~9_combout\ $ (((\MIN10|Count[2]~10_combout\) # (\MIN10|Equal0~0_combout\))) ) ) # ( !\MIN10|Add0~0_combout\ & ( !\MIN10|Count[2]~9_combout\ $ (((!\MIN10|Count[2]~10_combout\) # 
-- (\MIN10|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011110011000011001111001111000000001111111100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MIN10|ALT_INV_Equal0~0_combout\,
	datac => \MIN10|ALT_INV_Count[2]~10_combout\,
	datad => \MIN10|ALT_INV_Count[2]~9_combout\,
	dataf => \MIN10|ALT_INV_Add0~0_combout\,
	combout => \MIN10|Count[2]~11_combout\);

-- Location: FF_X18_Y1_N14
\MIN10|Count[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MIN1|Carry~q\,
	d => \MIN10|Count[2]~11_combout\,
	clrn => \MIN10|ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MIN10|Count[2]~_emulated_q\);

-- Location: MLABCELL_X18_Y1_N51
\MIN10|Count[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN10|Count[2]~10_combout\ = ( !\process_0~1_combout\ & ( \MIN10|Count[2]~_emulated_q\ & ( (!\MIN10|Count[3]~21_combout\ & (\input_time[6]~input_o\)) # (\MIN10|Count[3]~21_combout\ & ((!\MIN10|Count[2]~9_combout\))) ) ) ) # ( !\process_0~1_combout\ & ( 
-- !\MIN10|Count[2]~_emulated_q\ & ( (!\MIN10|Count[3]~21_combout\ & (\input_time[6]~input_o\)) # (\MIN10|Count[3]~21_combout\ & ((\MIN10|Count[2]~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111000000000000000000110011111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_time[6]~input_o\,
	datac => \MIN10|ALT_INV_Count[2]~9_combout\,
	datad => \MIN10|ALT_INV_Count[3]~21_combout\,
	datae => \ALT_INV_process_0~1_combout\,
	dataf => \MIN10|ALT_INV_Count[2]~_emulated_q\,
	combout => \MIN10|Count[2]~10_combout\);

-- Location: MLABCELL_X18_Y1_N39
\MIN10|Count[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN10|Count[3]~13_combout\ = ( !\process_0~1_combout\ & ( (!\MIN10|Count[3]~21_combout\ & (\input_time[7]~input_o\)) # (\MIN10|Count[3]~21_combout\ & ((\MIN10|Count[3]~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MIN10|ALT_INV_Count[3]~21_combout\,
	datab => \ALT_INV_input_time[7]~input_o\,
	datac => \MIN10|ALT_INV_Count[3]~13_combout\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \MIN10|Count[3]~13_combout\);

-- Location: MLABCELL_X18_Y1_N3
\MIN10|Count[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN10|Count[3]~15_combout\ = ( \MIN10|Add0~0_combout\ & ( !\MIN10|Count[3]~14_combout\ $ (!\MIN10|Count[3]~13_combout\ $ (\MIN10|Count[2]~10_combout\)) ) ) # ( !\MIN10|Add0~0_combout\ & ( !\MIN10|Count[3]~14_combout\ $ (!\MIN10|Count[3]~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MIN10|ALT_INV_Count[3]~14_combout\,
	datab => \MIN10|ALT_INV_Count[3]~13_combout\,
	datac => \MIN10|ALT_INV_Count[2]~10_combout\,
	dataf => \MIN10|ALT_INV_Add0~0_combout\,
	combout => \MIN10|Count[3]~15_combout\);

-- Location: FF_X18_Y1_N5
\MIN10|Count[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MIN1|Carry~q\,
	d => \MIN10|Count[3]~15_combout\,
	clrn => \MIN10|ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MIN10|Count[3]~_emulated_q\);

-- Location: MLABCELL_X18_Y1_N54
\MIN10|Count[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN10|Count[3]~14_combout\ = ( \MIN10|Count[3]~13_combout\ & ( (!\process_0~1_combout\ & ((!\MIN10|Count[3]~21_combout\ & (\input_time[7]~input_o\)) # (\MIN10|Count[3]~21_combout\ & ((!\MIN10|Count[3]~_emulated_q\))))) ) ) # ( 
-- !\MIN10|Count[3]~13_combout\ & ( (!\process_0~1_combout\ & ((!\MIN10|Count[3]~21_combout\ & (\input_time[7]~input_o\)) # (\MIN10|Count[3]~21_combout\ & ((\MIN10|Count[3]~_emulated_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001000000010101000101010001000000010101000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~1_combout\,
	datab => \ALT_INV_input_time[7]~input_o\,
	datac => \MIN10|ALT_INV_Count[3]~21_combout\,
	datad => \MIN10|ALT_INV_Count[3]~_emulated_q\,
	dataf => \MIN10|ALT_INV_Count[3]~13_combout\,
	combout => \MIN10|Count[3]~14_combout\);

-- Location: MLABCELL_X18_Y1_N45
\MIN10|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIN10|Equal0~0_combout\ = ( \MIN10|Count[0]~2_combout\ & ( (\MIN10|Count[2]~10_combout\ & (!\MIN10|Count[1]~6_combout\ & !\MIN10|Count[3]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MIN10|ALT_INV_Count[2]~10_combout\,
	datac => \MIN10|ALT_INV_Count[1]~6_combout\,
	datad => \MIN10|ALT_INV_Count[3]~14_combout\,
	dataf => \MIN10|ALT_INV_Count[0]~2_combout\,
	combout => \MIN10|Equal0~0_combout\);

-- Location: FF_X18_Y1_N41
\MIN10|Carry\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MIN1|Carry~q\,
	asdata => \MIN10|Equal0~0_combout\,
	clrn => \MIN10|ALT_INV_Carry~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MIN10|Carry~q\);

-- Location: LABCELL_X14_Y1_N21
\HR1|Count[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR1|Count[1]~5_combout\ = ( !\process_0~1_combout\ & ( (!\hr~input_o\ & (\input_time[1]~input_o\)) # (\hr~input_o\ & ((\HR1|Count[1]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hr~input_o\,
	datac => \ALT_INV_input_time[1]~input_o\,
	datad => \HR1|ALT_INV_Count[1]~5_combout\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \HR1|Count[1]~5_combout\);

-- Location: LABCELL_X17_Y1_N48
\HR1|Count[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR1|Count[0]~1_combout\ = ( \hr~input_o\ & ( (\HR1|Count[0]~1_combout\ & !\process_0~1_combout\) ) ) # ( !\hr~input_o\ & ( (!\input_time[0]~input_o\ & !\process_0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_time[0]~input_o\,
	datac => \HR1|ALT_INV_Count[0]~1_combout\,
	datad => \ALT_INV_process_0~1_combout\,
	dataf => \ALT_INV_hr~input_o\,
	combout => \HR1|Count[0]~1_combout\);

-- Location: LABCELL_X14_Y1_N9
\HR1|Count[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR1|Count[0]~3_combout\ = ( \HR1|Count[0]~2_combout\ & ( \HR1|Count[0]~1_combout\ ) ) # ( !\HR1|Count[0]~2_combout\ & ( !\HR1|Count[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR1|ALT_INV_Count[0]~1_combout\,
	dataf => \HR1|ALT_INV_Count[0]~2_combout\,
	combout => \HR1|Count[0]~3_combout\);

-- Location: LABCELL_X14_Y1_N15
\HR1|Count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR1|Count[0]~0_combout\ = ( \process_0~1_combout\ ) # ( !\process_0~1_combout\ & ( !\hr~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_hr~input_o\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \HR1|Count[0]~0_combout\);

-- Location: FF_X14_Y1_N11
\HR1|Count[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MIN10|Carry~q\,
	d => \HR1|Count[0]~3_combout\,
	clrn => \HR1|ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HR1|Count[0]~_emulated_q\);

-- Location: LABCELL_X14_Y1_N6
\HR1|Count[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR1|Count[0]~2_combout\ = ( \HR1|Count[0]~_emulated_q\ & ( (!\process_0~1_combout\ & ((!\hr~input_o\ & ((!\input_time[0]~input_o\))) # (\hr~input_o\ & (!\HR1|Count[0]~1_combout\)))) ) ) # ( !\HR1|Count[0]~_emulated_q\ & ( (!\process_0~1_combout\ & 
-- ((!\hr~input_o\ & ((!\input_time[0]~input_o\))) # (\hr~input_o\ & (\HR1|Count[0]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000001010000110000000101000011000000101000001100000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR1|ALT_INV_Count[0]~1_combout\,
	datab => \ALT_INV_input_time[0]~input_o\,
	datac => \ALT_INV_process_0~1_combout\,
	datad => \ALT_INV_hr~input_o\,
	dataf => \HR1|ALT_INV_Count[0]~_emulated_q\,
	combout => \HR1|Count[0]~2_combout\);

-- Location: LABCELL_X14_Y1_N51
\HR1|Count[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR1|Count[1]~7_combout\ = ( \HR1|Equal0~0_combout\ & ( \HR1|Count[1]~5_combout\ ) ) # ( !\HR1|Equal0~0_combout\ & ( !\HR1|Count[0]~2_combout\ $ (!\HR1|Count[1]~6_combout\ $ (!\HR1|Count[1]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010101011010101001010101101000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR1|ALT_INV_Count[0]~2_combout\,
	datac => \HR1|ALT_INV_Count[1]~6_combout\,
	datad => \HR1|ALT_INV_Count[1]~5_combout\,
	dataf => \HR1|ALT_INV_Equal0~0_combout\,
	combout => \HR1|Count[1]~7_combout\);

-- Location: FF_X14_Y1_N53
\HR1|Count[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MIN10|Carry~q\,
	d => \HR1|Count[1]~7_combout\,
	clrn => \HR1|ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HR1|Count[1]~_emulated_q\);

-- Location: LABCELL_X14_Y1_N3
\HR1|Count[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR1|Count[1]~6_combout\ = ( \hr~input_o\ & ( \HR1|Count[1]~_emulated_q\ & ( (!\HR1|Count[1]~5_combout\ & !\process_0~1_combout\) ) ) ) # ( !\hr~input_o\ & ( \HR1|Count[1]~_emulated_q\ & ( (\input_time[1]~input_o\ & !\process_0~1_combout\) ) ) ) # ( 
-- \hr~input_o\ & ( !\HR1|Count[1]~_emulated_q\ & ( (\HR1|Count[1]~5_combout\ & !\process_0~1_combout\) ) ) ) # ( !\hr~input_o\ & ( !\HR1|Count[1]~_emulated_q\ & ( (\input_time[1]~input_o\ & !\process_0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000001111000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR1|ALT_INV_Count[1]~5_combout\,
	datac => \ALT_INV_input_time[1]~input_o\,
	datad => \ALT_INV_process_0~1_combout\,
	datae => \ALT_INV_hr~input_o\,
	dataf => \HR1|ALT_INV_Count[1]~_emulated_q\,
	combout => \HR1|Count[1]~6_combout\);

-- Location: LABCELL_X14_Y1_N18
\HR1|Count[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR1|Count[2]~9_combout\ = ( !\process_0~1_combout\ & ( (!\hr~input_o\ & ((\input_time[2]~input_o\))) # (\hr~input_o\ & (\HR1|Count[2]~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hr~input_o\,
	datac => \HR1|ALT_INV_Count[2]~9_combout\,
	datad => \ALT_INV_input_time[2]~input_o\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \HR1|Count[2]~9_combout\);

-- Location: LABCELL_X14_Y1_N24
\HR1|Count[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR1|Count[2]~11_combout\ = ( \HR1|Count[2]~10_combout\ & ( !\HR1|Count[2]~9_combout\ $ (((\HR1|Count[1]~6_combout\ & !\HR1|Count[0]~2_combout\))) ) ) # ( !\HR1|Count[2]~10_combout\ & ( !\HR1|Count[2]~9_combout\ $ (((!\HR1|Count[1]~6_combout\) # 
-- (\HR1|Count[0]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010101111010100001010111110101111010100001010111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR1|ALT_INV_Count[1]~6_combout\,
	datac => \HR1|ALT_INV_Count[0]~2_combout\,
	datad => \HR1|ALT_INV_Count[2]~9_combout\,
	dataf => \HR1|ALT_INV_Count[2]~10_combout\,
	combout => \HR1|Count[2]~11_combout\);

-- Location: FF_X14_Y1_N26
\HR1|Count[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MIN10|Carry~q\,
	d => \HR1|Count[2]~11_combout\,
	clrn => \HR1|ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HR1|Count[2]~_emulated_q\);

-- Location: LABCELL_X14_Y1_N39
\HR1|Count[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR1|Count[2]~10_combout\ = ( !\process_0~1_combout\ & ( \HR1|Count[2]~_emulated_q\ & ( (!\hr~input_o\ & (\input_time[2]~input_o\)) # (\hr~input_o\ & ((!\HR1|Count[2]~9_combout\))) ) ) ) # ( !\process_0~1_combout\ & ( !\HR1|Count[2]~_emulated_q\ & ( 
-- (!\hr~input_o\ & (\input_time[2]~input_o\)) # (\hr~input_o\ & ((\HR1|Count[2]~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111000000000000000001011111010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_time[2]~input_o\,
	datac => \ALT_INV_hr~input_o\,
	datad => \HR1|ALT_INV_Count[2]~9_combout\,
	datae => \ALT_INV_process_0~1_combout\,
	dataf => \HR1|ALT_INV_Count[2]~_emulated_q\,
	combout => \HR1|Count[2]~10_combout\);

-- Location: LABCELL_X14_Y1_N48
\HR1|Count[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR1|Count[3]~13_combout\ = ( !\process_0~1_combout\ & ( (!\hr~input_o\ & (\input_time[3]~input_o\)) # (\hr~input_o\ & ((\HR1|Count[3]~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_time[3]~input_o\,
	datac => \HR1|ALT_INV_Count[3]~13_combout\,
	datad => \ALT_INV_hr~input_o\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \HR1|Count[3]~13_combout\);

-- Location: LABCELL_X14_Y1_N33
\HR1|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR1|Add0~0_combout\ = ( \HR1|Count[1]~6_combout\ & ( (\HR1|Count[2]~10_combout\ & !\HR1|Count[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR1|ALT_INV_Count[2]~10_combout\,
	datac => \HR1|ALT_INV_Count[0]~2_combout\,
	dataf => \HR1|ALT_INV_Count[1]~6_combout\,
	combout => \HR1|Add0~0_combout\);

-- Location: LABCELL_X14_Y1_N12
\HR1|Count[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR1|Count[3]~15_combout\ = ( \HR1|Equal0~0_combout\ & ( \HR1|Count[3]~13_combout\ ) ) # ( !\HR1|Equal0~0_combout\ & ( !\HR1|Count[3]~13_combout\ $ (!\HR1|Count[3]~14_combout\ $ (\HR1|Add0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR1|ALT_INV_Count[3]~13_combout\,
	datab => \HR1|ALT_INV_Count[3]~14_combout\,
	datac => \HR1|ALT_INV_Add0~0_combout\,
	dataf => \HR1|ALT_INV_Equal0~0_combout\,
	combout => \HR1|Count[3]~15_combout\);

-- Location: FF_X14_Y1_N14
\HR1|Count[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MIN10|Carry~q\,
	d => \HR1|Count[3]~15_combout\,
	clrn => \HR1|ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HR1|Count[3]~_emulated_q\);

-- Location: LABCELL_X14_Y1_N54
\HR1|Count[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR1|Count[3]~14_combout\ = ( \hr~input_o\ & ( \HR1|Count[3]~_emulated_q\ & ( (!\process_0~1_combout\ & !\HR1|Count[3]~13_combout\) ) ) ) # ( !\hr~input_o\ & ( \HR1|Count[3]~_emulated_q\ & ( (!\process_0~1_combout\ & \input_time[3]~input_o\) ) ) ) # ( 
-- \hr~input_o\ & ( !\HR1|Count[3]~_emulated_q\ & ( (!\process_0~1_combout\ & \HR1|Count[3]~13_combout\) ) ) ) # ( !\hr~input_o\ & ( !\HR1|Count[3]~_emulated_q\ & ( (!\process_0~1_combout\ & \input_time[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000010100000101000100010001000101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~1_combout\,
	datab => \ALT_INV_input_time[3]~input_o\,
	datac => \HR1|ALT_INV_Count[3]~13_combout\,
	datae => \ALT_INV_hr~input_o\,
	dataf => \HR1|ALT_INV_Count[3]~_emulated_q\,
	combout => \HR1|Count[3]~14_combout\);

-- Location: LABCELL_X14_Y1_N27
\HR1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR1|Equal0~0_combout\ = ( \HR1|Count[3]~14_combout\ & ( (!\HR1|Count[1]~6_combout\ & (!\HR1|Count[2]~10_combout\ & !\HR1|Count[0]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HR1|ALT_INV_Count[1]~6_combout\,
	datac => \HR1|ALT_INV_Count[2]~10_combout\,
	datad => \HR1|ALT_INV_Count[0]~2_combout\,
	dataf => \HR1|ALT_INV_Count[3]~14_combout\,
	combout => \HR1|Equal0~0_combout\);

-- Location: FF_X14_Y1_N43
\HR1|Carry\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MIN10|Carry~q\,
	asdata => \HR1|Equal0~0_combout\,
	clrn => \HR1|ALT_INV_Count[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HR1|Carry~q\);

-- Location: MLABCELL_X13_Y1_N0
\HR10|Count[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR10|Count[0]~1_combout\ = ( \HR10|Count[0]~1_combout\ & ( !\process_0~1_combout\ & ( (\HR10|Count[3]~21_combout\) # (\input_time[4]~input_o\) ) ) ) # ( !\HR10|Count[0]~1_combout\ & ( !\process_0~1_combout\ & ( (\input_time[4]~input_o\ & 
-- !\HR10|Count[3]~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_time[4]~input_o\,
	datac => \HR10|ALT_INV_Count[3]~21_combout\,
	datae => \HR10|ALT_INV_Count[0]~1_combout\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \HR10|Count[0]~1_combout\);

-- Location: MLABCELL_X13_Y1_N42
\HR10|Count[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR10|Count[0]~3_combout\ = ( \HR10|Count[0]~2_combout\ & ( \HR10|Count[0]~1_combout\ ) ) # ( !\HR10|Count[0]~2_combout\ & ( !\HR10|Count[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HR10|ALT_INV_Count[0]~1_combout\,
	dataf => \HR10|ALT_INV_Count[0]~2_combout\,
	combout => \HR10|Count[0]~3_combout\);

-- Location: MLABCELL_X13_Y1_N57
\HR10|Count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR10|Count[0]~0_combout\ = ( \HR10|Count[3]~21_combout\ & ( \process_0~1_combout\ ) ) # ( !\HR10|Count[3]~21_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_process_0~1_combout\,
	dataf => \HR10|ALT_INV_Count[3]~21_combout\,
	combout => \HR10|Count[0]~0_combout\);

-- Location: FF_X13_Y1_N44
\HR10|Count[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \HR1|Carry~q\,
	d => \HR10|Count[0]~3_combout\,
	clrn => \HR10|ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HR10|Count[0]~_emulated_q\);

-- Location: MLABCELL_X13_Y1_N45
\HR10|Count[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR10|Count[0]~2_combout\ = ( \HR10|Count[0]~_emulated_q\ & ( (!\process_0~1_combout\ & ((!\HR10|Count[3]~21_combout\ & ((\input_time[4]~input_o\))) # (\HR10|Count[3]~21_combout\ & (!\HR10|Count[0]~1_combout\)))) ) ) # ( !\HR10|Count[0]~_emulated_q\ & ( 
-- (!\process_0~1_combout\ & ((!\HR10|Count[3]~21_combout\ & ((\input_time[4]~input_o\))) # (\HR10|Count[3]~21_combout\ & (\HR10|Count[0]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000111010000000000011101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR10|ALT_INV_Count[0]~1_combout\,
	datab => \ALT_INV_input_time[4]~input_o\,
	datac => \HR10|ALT_INV_Count[3]~21_combout\,
	datad => \ALT_INV_process_0~1_combout\,
	dataf => \HR10|ALT_INV_Count[0]~_emulated_q\,
	combout => \HR10|Count[0]~2_combout\);

-- Location: MLABCELL_X13_Y1_N27
\HR10|Count[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR10|Count[3]~13_combout\ = ( !\process_0~1_combout\ & ( (!\HR10|Count[3]~21_combout\ & (\input_time[7]~input_o\)) # (\HR10|Count[3]~21_combout\ & ((\HR10|Count[3]~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR10|ALT_INV_Count[3]~21_combout\,
	datac => \ALT_INV_input_time[7]~input_o\,
	datad => \HR10|ALT_INV_Count[3]~13_combout\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \HR10|Count[3]~13_combout\);

-- Location: MLABCELL_X13_Y1_N24
\HR10|Count[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR10|Count[1]~5_combout\ = ( !\process_0~1_combout\ & ( (!\HR10|Count[3]~21_combout\ & ((\input_time[5]~input_o\))) # (\HR10|Count[3]~21_combout\ & (\HR10|Count[1]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR10|ALT_INV_Count[3]~21_combout\,
	datac => \HR10|ALT_INV_Count[1]~5_combout\,
	datad => \ALT_INV_input_time[5]~input_o\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \HR10|Count[1]~5_combout\);

-- Location: MLABCELL_X13_Y1_N9
\HR10|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR10|Equal0~0_combout\ = ( \HR10|Count[2]~10_combout\ & ( (\HR10|Count[0]~2_combout\ & (!\HR10|Count[1]~6_combout\ & !\HR10|Count[3]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HR10|ALT_INV_Count[0]~2_combout\,
	datac => \HR10|ALT_INV_Count[1]~6_combout\,
	datad => \HR10|ALT_INV_Count[3]~14_combout\,
	dataf => \HR10|ALT_INV_Count[2]~10_combout\,
	combout => \HR10|Equal0~0_combout\);

-- Location: MLABCELL_X13_Y1_N6
\HR10|Count[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR10|Count[1]~7_combout\ = ( \HR10|Count[1]~6_combout\ & ( !\HR10|Count[1]~5_combout\ $ (((\HR10|Equal0~0_combout\) # (\HR10|Count[0]~2_combout\))) ) ) # ( !\HR10|Count[1]~6_combout\ & ( !\HR10|Count[1]~5_combout\ $ (((!\HR10|Count[0]~2_combout\) # 
-- (\HR10|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010101111010100001010111110100000010111111010000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR10|ALT_INV_Count[0]~2_combout\,
	datac => \HR10|ALT_INV_Equal0~0_combout\,
	datad => \HR10|ALT_INV_Count[1]~5_combout\,
	dataf => \HR10|ALT_INV_Count[1]~6_combout\,
	combout => \HR10|Count[1]~7_combout\);

-- Location: FF_X13_Y1_N8
\HR10|Count[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \HR1|Carry~q\,
	d => \HR10|Count[1]~7_combout\,
	clrn => \HR10|ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HR10|Count[1]~_emulated_q\);

-- Location: MLABCELL_X13_Y1_N33
\HR10|Count[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR10|Count[1]~6_combout\ = ( \HR10|Count[1]~_emulated_q\ & ( (!\process_0~1_combout\ & ((!\HR10|Count[3]~21_combout\ & (\input_time[5]~input_o\)) # (\HR10|Count[3]~21_combout\ & ((!\HR10|Count[1]~5_combout\))))) ) ) # ( !\HR10|Count[1]~_emulated_q\ & ( 
-- (!\process_0~1_combout\ & ((!\HR10|Count[3]~21_combout\ & (\input_time[5]~input_o\)) # (\HR10|Count[3]~21_combout\ & ((\HR10|Count[1]~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110000000001110100000000000111010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_time[5]~input_o\,
	datab => \HR10|ALT_INV_Count[3]~21_combout\,
	datac => \HR10|ALT_INV_Count[1]~5_combout\,
	datad => \ALT_INV_process_0~1_combout\,
	dataf => \HR10|ALT_INV_Count[1]~_emulated_q\,
	combout => \HR10|Count[1]~6_combout\);

-- Location: MLABCELL_X13_Y1_N30
\HR10|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR10|Add0~0_combout\ = ( \HR10|Count[1]~6_combout\ & ( \HR10|Count[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HR10|ALT_INV_Count[0]~2_combout\,
	dataf => \HR10|ALT_INV_Count[1]~6_combout\,
	combout => \HR10|Add0~0_combout\);

-- Location: MLABCELL_X13_Y1_N15
\HR10|Count[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR10|Count[3]~15_combout\ = ( \HR10|Count[3]~14_combout\ & ( !\HR10|Count[3]~13_combout\ $ (((\HR10|Add0~0_combout\ & \HR10|Count[2]~10_combout\))) ) ) # ( !\HR10|Count[3]~14_combout\ & ( !\HR10|Count[3]~13_combout\ $ (((!\HR10|Add0~0_combout\) # 
-- (!\HR10|Count[2]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110011111100000000111111110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HR10|ALT_INV_Add0~0_combout\,
	datac => \HR10|ALT_INV_Count[2]~10_combout\,
	datad => \HR10|ALT_INV_Count[3]~13_combout\,
	dataf => \HR10|ALT_INV_Count[3]~14_combout\,
	combout => \HR10|Count[3]~15_combout\);

-- Location: FF_X13_Y1_N17
\HR10|Count[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \HR1|Carry~q\,
	d => \HR10|Count[3]~15_combout\,
	clrn => \HR10|ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HR10|Count[3]~_emulated_q\);

-- Location: MLABCELL_X13_Y1_N39
\HR10|Count[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR10|Count[3]~14_combout\ = ( \HR10|Count[3]~_emulated_q\ & ( (!\process_0~1_combout\ & ((!\HR10|Count[3]~21_combout\ & (\input_time[7]~input_o\)) # (\HR10|Count[3]~21_combout\ & ((!\HR10|Count[3]~13_combout\))))) ) ) # ( !\HR10|Count[3]~_emulated_q\ & ( 
-- (!\process_0~1_combout\ & ((!\HR10|Count[3]~21_combout\ & (\input_time[7]~input_o\)) # (\HR10|Count[3]~21_combout\ & ((\HR10|Count[3]~13_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000101010000010000010101000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~1_combout\,
	datab => \HR10|ALT_INV_Count[3]~21_combout\,
	datac => \ALT_INV_input_time[7]~input_o\,
	datad => \HR10|ALT_INV_Count[3]~13_combout\,
	dataf => \HR10|ALT_INV_Count[3]~_emulated_q\,
	combout => \HR10|Count[3]~14_combout\);

-- Location: MLABCELL_X13_Y1_N36
\HR10|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR10|Equal0~1_combout\ = ( !\HR10|Count[1]~6_combout\ & ( (\HR10|Count[0]~2_combout\ & !\HR10|Count[3]~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HR10|ALT_INV_Count[0]~2_combout\,
	datad => \HR10|ALT_INV_Count[3]~14_combout\,
	dataf => \HR10|ALT_INV_Count[1]~6_combout\,
	combout => \HR10|Equal0~1_combout\);

-- Location: MLABCELL_X13_Y1_N51
\HR10|Count[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR10|Count[2]~11_combout\ = ( \HR10|Add0~0_combout\ & ( !\HR10|Count[2]~10_combout\ $ (\HR10|Count[2]~9_combout\) ) ) # ( !\HR10|Add0~0_combout\ & ( !\HR10|Count[2]~9_combout\ $ (((!\HR10|Count[2]~10_combout\) # (\HR10|Equal0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001101100011011000110110001110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR10|ALT_INV_Count[2]~10_combout\,
	datab => \HR10|ALT_INV_Count[2]~9_combout\,
	datac => \HR10|ALT_INV_Equal0~1_combout\,
	dataf => \HR10|ALT_INV_Add0~0_combout\,
	combout => \HR10|Count[2]~11_combout\);

-- Location: FF_X13_Y1_N53
\HR10|Count[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \HR1|Carry~q\,
	d => \HR10|Count[2]~11_combout\,
	clrn => \HR10|ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HR10|Count[2]~_emulated_q\);

-- Location: MLABCELL_X13_Y1_N54
\HR10|Count[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \HR10|Count[2]~10_combout\ = ( \HR10|Count[2]~_emulated_q\ & ( (!\process_0~1_combout\ & ((!\HR10|Count[3]~21_combout\ & (\input_time[6]~input_o\)) # (\HR10|Count[3]~21_combout\ & ((!\HR10|Count[2]~9_combout\))))) ) ) # ( !\HR10|Count[2]~_emulated_q\ & ( 
-- (!\process_0~1_combout\ & ((!\HR10|Count[3]~21_combout\ & (\input_time[6]~input_o\)) # (\HR10|Count[3]~21_combout\ & ((\HR10|Count[2]~9_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110000000001110010000000000111001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR10|ALT_INV_Count[3]~21_combout\,
	datab => \ALT_INV_input_time[6]~input_o\,
	datac => \HR10|ALT_INV_Count[2]~9_combout\,
	datad => \ALT_INV_process_0~1_combout\,
	dataf => \HR10|ALT_INV_Count[2]~_emulated_q\,
	combout => \HR10|Count[2]~10_combout\);

-- Location: MLABCELL_X18_Y1_N18
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( \MIN10|Carry~q\ & ( (\HR1|Count[1]~6_combout\ & (!\HR1|Count[3]~14_combout\ & (\HR1|Count[0]~2_combout\ & !\HR1|Count[2]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR1|ALT_INV_Count[1]~6_combout\,
	datab => \HR1|ALT_INV_Count[3]~14_combout\,
	datac => \HR1|ALT_INV_Count[0]~2_combout\,
	datad => \HR1|ALT_INV_Count[2]~10_combout\,
	dataf => \MIN10|ALT_INV_Carry~q\,
	combout => \process_0~0_combout\);

-- Location: LABCELL_X17_Y1_N15
\process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = ( \process_0~0_combout\ & ( (!\HR10|Count[2]~10_combout\ & (\HR10|Count[0]~2_combout\ & (!\HR10|Count[3]~14_combout\ & !\HR10|Count[1]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR10|ALT_INV_Count[2]~10_combout\,
	datab => \HR10|ALT_INV_Count[0]~2_combout\,
	datac => \HR10|ALT_INV_Count[3]~14_combout\,
	datad => \HR10|ALT_INV_Count[1]~6_combout\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \process_0~1_combout\);

-- Location: LABCELL_X17_Y1_N12
\SEC1|Count[3]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC1|Count[3]~21_combout\ = ( \sec~input_o\ & ( \process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~1_combout\,
	dataf => \ALT_INV_sec~input_o\,
	combout => \SEC1|Count[3]~21_combout\);

-- Location: LABCELL_X17_Y1_N0
\SEC1|Count[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC1|Count[0]~1_combout\ = ( !\SEC1|Count[3]~21_combout\ & ( (!\sec~input_o\ & (\input_time[0]~input_o\)) # (\sec~input_o\ & ((\SEC1|Count[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_time[0]~input_o\,
	datac => \ALT_INV_sec~input_o\,
	datad => \SEC1|ALT_INV_Count[0]~1_combout\,
	dataf => \SEC1|ALT_INV_Count[3]~21_combout\,
	combout => \SEC1|Count[0]~1_combout\);

-- Location: LABCELL_X17_Y1_N54
\SEC1|Count[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC1|Count[0]~3_combout\ = ( \SEC1|Count[0]~2_combout\ & ( \SEC1|Count[0]~1_combout\ ) ) # ( !\SEC1|Count[0]~2_combout\ & ( !\SEC1|Count[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \SEC1|ALT_INV_Count[0]~1_combout\,
	dataf => \SEC1|ALT_INV_Count[0]~2_combout\,
	combout => \SEC1|Count[0]~3_combout\);

-- Location: FF_X17_Y1_N56
\SEC1|Count[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \scaled_clock|Curr~q\,
	d => \SEC1|Count[0]~3_combout\,
	clrn => \SEC1|ALT_INV_Count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEC1|Count[0]~_emulated_q\);

-- Location: LABCELL_X17_Y1_N51
\SEC1|Count[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEC1|Count[0]~2_combout\ = ( !\SEC1|Count[3]~21_combout\ & ( (!\sec~input_o\ & (((\input_time[0]~input_o\)))) # (\sec~input_o\ & (!\SEC1|Count[0]~_emulated_q\ $ (((!\SEC1|Count[0]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100111010001101010011101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEC1|ALT_INV_Count[0]~_emulated_q\,
	datab => \ALT_INV_input_time[0]~input_o\,
	datac => \ALT_INV_sec~input_o\,
	datad => \SEC1|ALT_INV_Count[0]~1_combout\,
	dataf => \SEC1|ALT_INV_Count[3]~21_combout\,
	combout => \SEC1|Count[0]~2_combout\);

-- Location: LABCELL_X20_Y1_N12
\sec1_Disp|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec1_Disp|Mux6~0_combout\ = ( !\SEC1|Count[2]~10_combout\ & ( \SEC1|Count[3]~14_combout\ & ( !\SEC1|Count[1]~6_combout\ ) ) ) # ( \SEC1|Count[2]~10_combout\ & ( !\SEC1|Count[3]~14_combout\ & ( (!\SEC1|Count[0]~2_combout\) # (!\SEC1|Count[1]~6_combout\) ) 
-- ) ) # ( !\SEC1|Count[2]~10_combout\ & ( !\SEC1|Count[3]~14_combout\ & ( \SEC1|Count[1]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111100110011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \SEC1|ALT_INV_Count[0]~2_combout\,
	datad => \SEC1|ALT_INV_Count[1]~6_combout\,
	datae => \SEC1|ALT_INV_Count[2]~10_combout\,
	dataf => \SEC1|ALT_INV_Count[3]~14_combout\,
	combout => \sec1_Disp|Mux6~0_combout\);

-- Location: LABCELL_X20_Y1_N57
\sec1_Disp|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec1_Disp|Mux5~0_combout\ = ( \SEC1|Count[3]~14_combout\ & ( (\SEC1|Count[1]~6_combout\) # (\SEC1|Count[2]~10_combout\) ) ) # ( !\SEC1|Count[3]~14_combout\ & ( (!\SEC1|Count[2]~10_combout\ & ((\SEC1|Count[0]~2_combout\) # (\SEC1|Count[1]~6_combout\))) # 
-- (\SEC1|Count[2]~10_combout\ & (\SEC1|Count[1]~6_combout\ & \SEC1|Count[0]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101111000010101010111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEC1|ALT_INV_Count[2]~10_combout\,
	datac => \SEC1|ALT_INV_Count[1]~6_combout\,
	datad => \SEC1|ALT_INV_Count[0]~2_combout\,
	dataf => \SEC1|ALT_INV_Count[3]~14_combout\,
	combout => \sec1_Disp|Mux5~0_combout\);

-- Location: LABCELL_X20_Y1_N24
\sec1_Disp|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec1_Disp|Mux4~0_combout\ = ( \SEC1|Count[3]~14_combout\ & ( ((\SEC1|Count[1]~6_combout\) # (\SEC1|Count[2]~10_combout\)) # (\SEC1|Count[0]~2_combout\) ) ) # ( !\SEC1|Count[3]~14_combout\ & ( ((\SEC1|Count[2]~10_combout\ & !\SEC1|Count[1]~6_combout\)) # 
-- (\SEC1|Count[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110011001111110011001100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \SEC1|ALT_INV_Count[0]~2_combout\,
	datac => \SEC1|ALT_INV_Count[2]~10_combout\,
	datad => \SEC1|ALT_INV_Count[1]~6_combout\,
	dataf => \SEC1|ALT_INV_Count[3]~14_combout\,
	combout => \sec1_Disp|Mux4~0_combout\);

-- Location: LABCELL_X20_Y1_N9
\sec1_Disp|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec1_Disp|Mux3~0_combout\ = ( \SEC1|Count[3]~14_combout\ & ( (\SEC1|Count[1]~6_combout\) # (\SEC1|Count[2]~10_combout\) ) ) # ( !\SEC1|Count[3]~14_combout\ & ( (!\SEC1|Count[2]~10_combout\ & (!\SEC1|Count[1]~6_combout\ & \SEC1|Count[0]~2_combout\)) # 
-- (\SEC1|Count[2]~10_combout\ & (!\SEC1|Count[1]~6_combout\ $ (\SEC1|Count[0]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100101010100001010010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEC1|ALT_INV_Count[2]~10_combout\,
	datac => \SEC1|ALT_INV_Count[1]~6_combout\,
	datad => \SEC1|ALT_INV_Count[0]~2_combout\,
	dataf => \SEC1|ALT_INV_Count[3]~14_combout\,
	combout => \sec1_Disp|Mux3~0_combout\);

-- Location: LABCELL_X20_Y1_N36
\sec1_Disp|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec1_Disp|Mux2~0_combout\ = ( \SEC1|Count[1]~6_combout\ & ( \SEC1|Count[3]~14_combout\ ) ) # ( !\SEC1|Count[1]~6_combout\ & ( \SEC1|Count[3]~14_combout\ & ( \SEC1|Count[2]~10_combout\ ) ) ) # ( \SEC1|Count[1]~6_combout\ & ( !\SEC1|Count[3]~14_combout\ & 
-- ( (!\SEC1|Count[0]~2_combout\ & !\SEC1|Count[2]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \SEC1|ALT_INV_Count[0]~2_combout\,
	datac => \SEC1|ALT_INV_Count[2]~10_combout\,
	datae => \SEC1|ALT_INV_Count[1]~6_combout\,
	dataf => \SEC1|ALT_INV_Count[3]~14_combout\,
	combout => \sec1_Disp|Mux2~0_combout\);

-- Location: LABCELL_X20_Y1_N18
\sec1_Disp|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec1_Disp|Mux1~0_combout\ = ( \SEC1|Count[1]~6_combout\ & ( \SEC1|Count[3]~14_combout\ ) ) # ( !\SEC1|Count[1]~6_combout\ & ( \SEC1|Count[3]~14_combout\ & ( \SEC1|Count[2]~10_combout\ ) ) ) # ( \SEC1|Count[1]~6_combout\ & ( !\SEC1|Count[3]~14_combout\ & 
-- ( (!\SEC1|Count[0]~2_combout\ & \SEC1|Count[2]~10_combout\) ) ) ) # ( !\SEC1|Count[1]~6_combout\ & ( !\SEC1|Count[3]~14_combout\ & ( (\SEC1|Count[0]~2_combout\ & \SEC1|Count[2]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011000000110000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \SEC1|ALT_INV_Count[0]~2_combout\,
	datac => \SEC1|ALT_INV_Count[2]~10_combout\,
	datae => \SEC1|ALT_INV_Count[1]~6_combout\,
	dataf => \SEC1|ALT_INV_Count[3]~14_combout\,
	combout => \sec1_Disp|Mux1~0_combout\);

-- Location: LABCELL_X20_Y1_N3
\sec1_Disp|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec1_Disp|Mux0~0_combout\ = ( \SEC1|Count[3]~14_combout\ & ( (\SEC1|Count[1]~6_combout\) # (\SEC1|Count[2]~10_combout\) ) ) # ( !\SEC1|Count[3]~14_combout\ & ( (!\SEC1|Count[1]~6_combout\ & (!\SEC1|Count[2]~10_combout\ $ (!\SEC1|Count[0]~2_combout\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEC1|ALT_INV_Count[2]~10_combout\,
	datac => \SEC1|ALT_INV_Count[0]~2_combout\,
	datad => \SEC1|ALT_INV_Count[1]~6_combout\,
	dataf => \SEC1|ALT_INV_Count[3]~14_combout\,
	combout => \sec1_Disp|Mux0~0_combout\);

-- Location: LABCELL_X16_Y1_N45
\sec10_Disp|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec10_Disp|Mux6~0_combout\ = ( \SEC10|Count[0]~2_combout\ & ( (!\SEC10|Count[2]~10_combout\ & (!\SEC10|Count[3]~14_combout\ $ (!\SEC10|Count[1]~6_combout\))) # (\SEC10|Count[2]~10_combout\ & (!\SEC10|Count[3]~14_combout\ & !\SEC10|Count[1]~6_combout\)) ) 
-- ) # ( !\SEC10|Count[0]~2_combout\ & ( !\SEC10|Count[3]~14_combout\ $ (((!\SEC10|Count[2]~10_combout\ & !\SEC10|Count[1]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011110000010110101111000001011010101000000101101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEC10|ALT_INV_Count[2]~10_combout\,
	datac => \SEC10|ALT_INV_Count[3]~14_combout\,
	datad => \SEC10|ALT_INV_Count[1]~6_combout\,
	dataf => \SEC10|ALT_INV_Count[0]~2_combout\,
	combout => \sec10_Disp|Mux6~0_combout\);

-- Location: LABCELL_X16_Y1_N12
\sec10_Disp|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec10_Disp|Mux5~0_combout\ = ( \SEC10|Count[0]~2_combout\ & ( (!\SEC10|Count[3]~14_combout\ $ (\SEC10|Count[2]~10_combout\)) # (\SEC10|Count[1]~6_combout\) ) ) # ( !\SEC10|Count[0]~2_combout\ & ( (!\SEC10|Count[2]~10_combout\ & 
-- (\SEC10|Count[1]~6_combout\)) # (\SEC10|Count[2]~10_combout\ & ((\SEC10|Count[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001111010111110101111101011111010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEC10|ALT_INV_Count[1]~6_combout\,
	datab => \SEC10|ALT_INV_Count[3]~14_combout\,
	datac => \SEC10|ALT_INV_Count[2]~10_combout\,
	dataf => \SEC10|ALT_INV_Count[0]~2_combout\,
	combout => \sec10_Disp|Mux5~0_combout\);

-- Location: LABCELL_X16_Y1_N0
\sec10_Disp|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec10_Disp|Mux4~0_combout\ = ( \SEC10|Count[0]~2_combout\ ) # ( !\SEC10|Count[0]~2_combout\ & ( (!\SEC10|Count[1]~6_combout\ & ((\SEC10|Count[2]~10_combout\))) # (\SEC10|Count[1]~6_combout\ & (\SEC10|Count[3]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \SEC10|ALT_INV_Count[3]~14_combout\,
	datac => \SEC10|ALT_INV_Count[1]~6_combout\,
	datad => \SEC10|ALT_INV_Count[2]~10_combout\,
	dataf => \SEC10|ALT_INV_Count[0]~2_combout\,
	combout => \sec10_Disp|Mux4~0_combout\);

-- Location: LABCELL_X16_Y1_N51
\sec10_Disp|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec10_Disp|Mux3~0_combout\ = ( \SEC10|Count[0]~2_combout\ & ( (!\SEC10|Count[1]~6_combout\ & (!\SEC10|Count[3]~14_combout\ $ (\SEC10|Count[2]~10_combout\))) # (\SEC10|Count[1]~6_combout\ & ((\SEC10|Count[2]~10_combout\) # (\SEC10|Count[3]~14_combout\))) 
-- ) ) # ( !\SEC10|Count[0]~2_combout\ & ( (!\SEC10|Count[1]~6_combout\ & ((\SEC10|Count[2]~10_combout\))) # (\SEC10|Count[1]~6_combout\ & (\SEC10|Count[3]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111110100101010111111010010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEC10|ALT_INV_Count[1]~6_combout\,
	datac => \SEC10|ALT_INV_Count[3]~14_combout\,
	datad => \SEC10|ALT_INV_Count[2]~10_combout\,
	dataf => \SEC10|ALT_INV_Count[0]~2_combout\,
	combout => \sec10_Disp|Mux3~0_combout\);

-- Location: LABCELL_X16_Y1_N42
\sec10_Disp|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec10_Disp|Mux2~0_combout\ = ( \SEC10|Count[0]~2_combout\ & ( (\SEC10|Count[3]~14_combout\ & ((\SEC10|Count[1]~6_combout\) # (\SEC10|Count[2]~10_combout\))) ) ) # ( !\SEC10|Count[0]~2_combout\ & ( (!\SEC10|Count[2]~10_combout\ & 
-- ((\SEC10|Count[1]~6_combout\))) # (\SEC10|Count[2]~10_combout\ & (\SEC10|Count[3]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEC10|ALT_INV_Count[2]~10_combout\,
	datab => \SEC10|ALT_INV_Count[3]~14_combout\,
	datac => \SEC10|ALT_INV_Count[1]~6_combout\,
	dataf => \SEC10|ALT_INV_Count[0]~2_combout\,
	combout => \sec10_Disp|Mux2~0_combout\);

-- Location: LABCELL_X17_Y1_N21
\sec10_Disp|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec10_Disp|Mux1~0_combout\ = ( \SEC10|Count[2]~10_combout\ & ( (!\SEC10|Count[1]~6_combout\ $ (!\SEC10|Count[0]~2_combout\)) # (\SEC10|Count[3]~14_combout\) ) ) # ( !\SEC10|Count[2]~10_combout\ & ( (\SEC10|Count[1]~6_combout\ & 
-- \SEC10|Count[3]~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101011010111111110101101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEC10|ALT_INV_Count[1]~6_combout\,
	datac => \SEC10|ALT_INV_Count[0]~2_combout\,
	datad => \SEC10|ALT_INV_Count[3]~14_combout\,
	dataf => \SEC10|ALT_INV_Count[2]~10_combout\,
	combout => \sec10_Disp|Mux1~0_combout\);

-- Location: LABCELL_X16_Y1_N33
\sec10_Disp|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec10_Disp|Mux0~0_combout\ = ( \SEC10|Count[1]~6_combout\ & ( \SEC10|Count[3]~14_combout\ ) ) # ( !\SEC10|Count[1]~6_combout\ & ( !\SEC10|Count[2]~10_combout\ $ (((!\SEC10|Count[0]~2_combout\) # (\SEC10|Count[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011001111001100001100111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \SEC10|ALT_INV_Count[0]~2_combout\,
	datac => \SEC10|ALT_INV_Count[3]~14_combout\,
	datad => \SEC10|ALT_INV_Count[2]~10_combout\,
	dataf => \SEC10|ALT_INV_Count[1]~6_combout\,
	combout => \sec10_Disp|Mux0~0_combout\);

-- Location: LABCELL_X20_Y1_N45
\min1_Disp|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \min1_Disp|Mux6~0_combout\ = ( \MIN1|Count[0]~2_combout\ & ( (!\MIN1|Count[1]~6_combout\ & (!\MIN1|Count[2]~10_combout\ $ (!\MIN1|Count[3]~14_combout\))) # (\MIN1|Count[1]~6_combout\ & (!\MIN1|Count[2]~10_combout\ & !\MIN1|Count[3]~14_combout\)) ) ) # ( 
-- !\MIN1|Count[0]~2_combout\ & ( !\MIN1|Count[3]~14_combout\ $ (((!\MIN1|Count[1]~6_combout\ & !\MIN1|Count[2]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100000010111111010000001011010101000000101101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MIN1|ALT_INV_Count[1]~6_combout\,
	datac => \MIN1|ALT_INV_Count[2]~10_combout\,
	datad => \MIN1|ALT_INV_Count[3]~14_combout\,
	dataf => \MIN1|ALT_INV_Count[0]~2_combout\,
	combout => \min1_Disp|Mux6~0_combout\);

-- Location: LABCELL_X20_Y1_N42
\min1_Disp|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \min1_Disp|Mux5~0_combout\ = ( \MIN1|Count[0]~2_combout\ & ( (!\MIN1|Count[2]~10_combout\ $ (\MIN1|Count[3]~14_combout\)) # (\MIN1|Count[1]~6_combout\) ) ) # ( !\MIN1|Count[0]~2_combout\ & ( (!\MIN1|Count[2]~10_combout\ & (\MIN1|Count[1]~6_combout\)) # 
-- (\MIN1|Count[2]~10_combout\ & ((\MIN1|Count[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011111011101011101111101110101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MIN1|ALT_INV_Count[1]~6_combout\,
	datab => \MIN1|ALT_INV_Count[2]~10_combout\,
	datad => \MIN1|ALT_INV_Count[3]~14_combout\,
	dataf => \MIN1|ALT_INV_Count[0]~2_combout\,
	combout => \min1_Disp|Mux5~0_combout\);

-- Location: LABCELL_X20_Y1_N27
\min1_Disp|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \min1_Disp|Mux4~0_combout\ = ( \MIN1|Count[1]~6_combout\ & ( (\MIN1|Count[3]~14_combout\) # (\MIN1|Count[0]~2_combout\) ) ) # ( !\MIN1|Count[1]~6_combout\ & ( (\MIN1|Count[2]~10_combout\) # (\MIN1|Count[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MIN1|ALT_INV_Count[0]~2_combout\,
	datac => \MIN1|ALT_INV_Count[2]~10_combout\,
	datad => \MIN1|ALT_INV_Count[3]~14_combout\,
	dataf => \MIN1|ALT_INV_Count[1]~6_combout\,
	combout => \min1_Disp|Mux4~0_combout\);

-- Location: LABCELL_X20_Y1_N48
\min1_Disp|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \min1_Disp|Mux3~0_combout\ = ( \MIN1|Count[0]~2_combout\ & ( (!\MIN1|Count[1]~6_combout\ & (!\MIN1|Count[2]~10_combout\ $ (\MIN1|Count[3]~14_combout\))) # (\MIN1|Count[1]~6_combout\ & ((\MIN1|Count[3]~14_combout\) # (\MIN1|Count[2]~10_combout\))) ) ) # ( 
-- !\MIN1|Count[0]~2_combout\ & ( (!\MIN1|Count[1]~6_combout\ & (\MIN1|Count[2]~10_combout\)) # (\MIN1|Count[1]~6_combout\ & ((\MIN1|Count[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011110011001011101111001100101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MIN1|ALT_INV_Count[1]~6_combout\,
	datab => \MIN1|ALT_INV_Count[2]~10_combout\,
	datad => \MIN1|ALT_INV_Count[3]~14_combout\,
	dataf => \MIN1|ALT_INV_Count[0]~2_combout\,
	combout => \min1_Disp|Mux3~0_combout\);

-- Location: LABCELL_X20_Y1_N54
\min1_Disp|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \min1_Disp|Mux2~0_combout\ = ( \MIN1|Count[0]~2_combout\ & ( (\MIN1|Count[3]~14_combout\ & ((\MIN1|Count[1]~6_combout\) # (\MIN1|Count[2]~10_combout\))) ) ) # ( !\MIN1|Count[0]~2_combout\ & ( (!\MIN1|Count[2]~10_combout\ & (\MIN1|Count[1]~6_combout\)) # 
-- (\MIN1|Count[2]~10_combout\ & ((\MIN1|Count[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MIN1|ALT_INV_Count[2]~10_combout\,
	datac => \MIN1|ALT_INV_Count[1]~6_combout\,
	datad => \MIN1|ALT_INV_Count[3]~14_combout\,
	dataf => \MIN1|ALT_INV_Count[0]~2_combout\,
	combout => \min1_Disp|Mux2~0_combout\);

-- Location: LABCELL_X20_Y1_N6
\min1_Disp|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \min1_Disp|Mux1~0_combout\ = ( \MIN1|Count[0]~2_combout\ & ( (!\MIN1|Count[1]~6_combout\ & (\MIN1|Count[2]~10_combout\)) # (\MIN1|Count[1]~6_combout\ & ((\MIN1|Count[3]~14_combout\))) ) ) # ( !\MIN1|Count[0]~2_combout\ & ( (!\MIN1|Count[2]~10_combout\ & 
-- (\MIN1|Count[1]~6_combout\ & \MIN1|Count[3]~14_combout\)) # (\MIN1|Count[2]~10_combout\ & ((\MIN1|Count[3]~14_combout\) # (\MIN1|Count[1]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MIN1|ALT_INV_Count[2]~10_combout\,
	datac => \MIN1|ALT_INV_Count[1]~6_combout\,
	datad => \MIN1|ALT_INV_Count[3]~14_combout\,
	dataf => \MIN1|ALT_INV_Count[0]~2_combout\,
	combout => \min1_Disp|Mux1~0_combout\);

-- Location: LABCELL_X20_Y1_N51
\min1_Disp|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \min1_Disp|Mux0~0_combout\ = ( \MIN1|Count[0]~2_combout\ & ( !\MIN1|Count[3]~14_combout\ $ (((\MIN1|Count[2]~10_combout\) # (\MIN1|Count[1]~6_combout\))) ) ) # ( !\MIN1|Count[0]~2_combout\ & ( (!\MIN1|Count[1]~6_combout\ & (\MIN1|Count[2]~10_combout\)) # 
-- (\MIN1|Count[1]~6_combout\ & ((\MIN1|Count[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111110100000010111111010000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MIN1|ALT_INV_Count[1]~6_combout\,
	datac => \MIN1|ALT_INV_Count[2]~10_combout\,
	datad => \MIN1|ALT_INV_Count[3]~14_combout\,
	dataf => \MIN1|ALT_INV_Count[0]~2_combout\,
	combout => \min1_Disp|Mux0~0_combout\);

-- Location: LABCELL_X14_Y1_N30
\min10_Disp|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \min10_Disp|Mux6~0_combout\ = ( \MIN10|Count[1]~6_combout\ & ( (!\MIN10|Count[3]~14_combout\ & ((!\MIN10|Count[0]~2_combout\) # (!\MIN10|Count[2]~10_combout\))) ) ) # ( !\MIN10|Count[1]~6_combout\ & ( !\MIN10|Count[2]~10_combout\ $ 
-- (!\MIN10|Count[3]~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MIN10|ALT_INV_Count[0]~2_combout\,
	datac => \MIN10|ALT_INV_Count[2]~10_combout\,
	datad => \MIN10|ALT_INV_Count[3]~14_combout\,
	dataf => \MIN10|ALT_INV_Count[1]~6_combout\,
	combout => \min10_Disp|Mux6~0_combout\);

-- Location: LABCELL_X14_Y1_N45
\min10_Disp|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \min10_Disp|Mux5~0_combout\ = (!\MIN10|Count[0]~2_combout\ & ((!\MIN10|Count[2]~10_combout\ & (\MIN10|Count[1]~6_combout\)) # (\MIN10|Count[2]~10_combout\ & ((\MIN10|Count[3]~14_combout\))))) # (\MIN10|Count[0]~2_combout\ & ((!\MIN10|Count[3]~14_combout\ 
-- $ (\MIN10|Count[2]~10_combout\)) # (\MIN10|Count[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100011111011100110001111101110011000111110111001100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MIN10|ALT_INV_Count[0]~2_combout\,
	datab => \MIN10|ALT_INV_Count[1]~6_combout\,
	datac => \MIN10|ALT_INV_Count[3]~14_combout\,
	datad => \MIN10|ALT_INV_Count[2]~10_combout\,
	combout => \min10_Disp|Mux5~0_combout\);

-- Location: LABCELL_X14_Y1_N42
\min10_Disp|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \min10_Disp|Mux4~0_combout\ = ((!\MIN10|Count[1]~6_combout\ & (\MIN10|Count[2]~10_combout\)) # (\MIN10|Count[1]~6_combout\ & ((\MIN10|Count[3]~14_combout\)))) # (\MIN10|Count[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101111111010111010111111101011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MIN10|ALT_INV_Count[0]~2_combout\,
	datab => \MIN10|ALT_INV_Count[1]~6_combout\,
	datac => \MIN10|ALT_INV_Count[2]~10_combout\,
	datad => \MIN10|ALT_INV_Count[3]~14_combout\,
	combout => \min10_Disp|Mux4~0_combout\);

-- Location: LABCELL_X20_Y1_N0
\min10_Disp|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \min10_Disp|Mux3~0_combout\ = ( \MIN10|Count[1]~6_combout\ & ( ((\MIN10|Count[2]~10_combout\ & \MIN10|Count[0]~2_combout\)) # (\MIN10|Count[3]~14_combout\) ) ) # ( !\MIN10|Count[1]~6_combout\ & ( !\MIN10|Count[2]~10_combout\ $ 
-- (((!\MIN10|Count[0]~2_combout\) # (\MIN10|Count[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000110011001111000011001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MIN10|ALT_INV_Count[2]~10_combout\,
	datac => \MIN10|ALT_INV_Count[0]~2_combout\,
	datad => \MIN10|ALT_INV_Count[3]~14_combout\,
	dataf => \MIN10|ALT_INV_Count[1]~6_combout\,
	combout => \min10_Disp|Mux3~0_combout\);

-- Location: LABCELL_X20_Y1_N33
\min10_Disp|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \min10_Disp|Mux2~0_combout\ = ( \MIN10|Count[1]~6_combout\ & ( ((!\MIN10|Count[2]~10_combout\ & !\MIN10|Count[0]~2_combout\)) # (\MIN10|Count[3]~14_combout\) ) ) # ( !\MIN10|Count[1]~6_combout\ & ( (\MIN10|Count[3]~14_combout\ & 
-- \MIN10|Count[2]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101010101011111010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MIN10|ALT_INV_Count[3]~14_combout\,
	datac => \MIN10|ALT_INV_Count[2]~10_combout\,
	datad => \MIN10|ALT_INV_Count[0]~2_combout\,
	dataf => \MIN10|ALT_INV_Count[1]~6_combout\,
	combout => \min10_Disp|Mux2~0_combout\);

-- Location: LABCELL_X20_Y1_N30
\min10_Disp|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \min10_Disp|Mux1~0_combout\ = ( \MIN10|Count[1]~6_combout\ & ( ((\MIN10|Count[2]~10_combout\ & !\MIN10|Count[0]~2_combout\)) # (\MIN10|Count[3]~14_combout\) ) ) # ( !\MIN10|Count[1]~6_combout\ & ( (\MIN10|Count[2]~10_combout\ & 
-- ((\MIN10|Count[0]~2_combout\) # (\MIN10|Count[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001101110101011101010111010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MIN10|ALT_INV_Count[3]~14_combout\,
	datab => \MIN10|ALT_INV_Count[2]~10_combout\,
	datac => \MIN10|ALT_INV_Count[0]~2_combout\,
	dataf => \MIN10|ALT_INV_Count[1]~6_combout\,
	combout => \min10_Disp|Mux1~0_combout\);

-- Location: MLABCELL_X18_Y1_N42
\min10_Disp|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \min10_Disp|Mux0~0_combout\ = ( \MIN10|Count[1]~6_combout\ & ( \MIN10|Count[3]~14_combout\ ) ) # ( !\MIN10|Count[1]~6_combout\ & ( !\MIN10|Count[2]~10_combout\ $ (((!\MIN10|Count[0]~2_combout\) # (\MIN10|Count[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111000011001100111100001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MIN10|ALT_INV_Count[2]~10_combout\,
	datac => \MIN10|ALT_INV_Count[3]~14_combout\,
	datad => \MIN10|ALT_INV_Count[0]~2_combout\,
	dataf => \MIN10|ALT_INV_Count[1]~6_combout\,
	combout => \min10_Disp|Mux0~0_combout\);

-- Location: LABCELL_X35_Y2_N15
\hr1_Disp|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hr1_Disp|Mux6~0_combout\ = ( !\HR1|Count[1]~6_combout\ & ( \HR1|Count[3]~14_combout\ & ( !\HR1|Count[2]~10_combout\ ) ) ) # ( \HR1|Count[1]~6_combout\ & ( !\HR1|Count[3]~14_combout\ & ( (!\HR1|Count[2]~10_combout\) # (\HR1|Count[0]~2_combout\) ) ) ) # ( 
-- !\HR1|Count[1]~6_combout\ & ( !\HR1|Count[3]~14_combout\ & ( \HR1|Count[2]~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101011111010111110101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR1|ALT_INV_Count[2]~10_combout\,
	datac => \HR1|ALT_INV_Count[0]~2_combout\,
	datae => \HR1|ALT_INV_Count[1]~6_combout\,
	dataf => \HR1|ALT_INV_Count[3]~14_combout\,
	combout => \hr1_Disp|Mux6~0_combout\);

-- Location: LABCELL_X35_Y2_N54
\hr1_Disp|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hr1_Disp|Mux5~0_combout\ = ( \HR1|Count[1]~6_combout\ & ( \HR1|Count[3]~14_combout\ ) ) # ( !\HR1|Count[1]~6_combout\ & ( \HR1|Count[3]~14_combout\ & ( \HR1|Count[2]~10_combout\ ) ) ) # ( \HR1|Count[1]~6_combout\ & ( !\HR1|Count[3]~14_combout\ & ( 
-- (!\HR1|Count[0]~2_combout\) # (!\HR1|Count[2]~10_combout\) ) ) ) # ( !\HR1|Count[1]~6_combout\ & ( !\HR1|Count[3]~14_combout\ & ( (!\HR1|Count[0]~2_combout\ & !\HR1|Count[2]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000111111001111110000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HR1|ALT_INV_Count[0]~2_combout\,
	datac => \HR1|ALT_INV_Count[2]~10_combout\,
	datae => \HR1|ALT_INV_Count[1]~6_combout\,
	dataf => \HR1|ALT_INV_Count[3]~14_combout\,
	combout => \hr1_Disp|Mux5~0_combout\);

-- Location: LABCELL_X35_Y2_N39
\hr1_Disp|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hr1_Disp|Mux4~0_combout\ = ( \HR1|Count[1]~6_combout\ & ( \HR1|Count[3]~14_combout\ ) ) # ( !\HR1|Count[1]~6_combout\ & ( \HR1|Count[3]~14_combout\ & ( (!\HR1|Count[0]~2_combout\) # (\HR1|Count[2]~10_combout\) ) ) ) # ( \HR1|Count[1]~6_combout\ & ( 
-- !\HR1|Count[3]~14_combout\ & ( !\HR1|Count[0]~2_combout\ ) ) ) # ( !\HR1|Count[1]~6_combout\ & ( !\HR1|Count[3]~14_combout\ & ( (!\HR1|Count[0]~2_combout\) # (\HR1|Count[2]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111100001111000011110101111101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR1|ALT_INV_Count[2]~10_combout\,
	datac => \HR1|ALT_INV_Count[0]~2_combout\,
	datae => \HR1|ALT_INV_Count[1]~6_combout\,
	dataf => \HR1|ALT_INV_Count[3]~14_combout\,
	combout => \hr1_Disp|Mux4~0_combout\);

-- Location: LABCELL_X35_Y2_N42
\hr1_Disp|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hr1_Disp|Mux3~0_combout\ = ( \HR1|Count[1]~6_combout\ & ( \HR1|Count[3]~14_combout\ ) ) # ( !\HR1|Count[1]~6_combout\ & ( \HR1|Count[3]~14_combout\ & ( \HR1|Count[2]~10_combout\ ) ) ) # ( \HR1|Count[1]~6_combout\ & ( !\HR1|Count[3]~14_combout\ & ( 
-- (!\HR1|Count[0]~2_combout\ & \HR1|Count[2]~10_combout\) ) ) ) # ( !\HR1|Count[1]~6_combout\ & ( !\HR1|Count[3]~14_combout\ & ( !\HR1|Count[0]~2_combout\ $ (\HR1|Count[2]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011000011000000110000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HR1|ALT_INV_Count[0]~2_combout\,
	datac => \HR1|ALT_INV_Count[2]~10_combout\,
	datae => \HR1|ALT_INV_Count[1]~6_combout\,
	dataf => \HR1|ALT_INV_Count[3]~14_combout\,
	combout => \hr1_Disp|Mux3~0_combout\);

-- Location: LABCELL_X35_Y2_N27
\hr1_Disp|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hr1_Disp|Mux2~0_combout\ = ( \HR1|Count[1]~6_combout\ & ( \HR1|Count[3]~14_combout\ ) ) # ( !\HR1|Count[1]~6_combout\ & ( \HR1|Count[3]~14_combout\ & ( \HR1|Count[2]~10_combout\ ) ) ) # ( \HR1|Count[1]~6_combout\ & ( !\HR1|Count[3]~14_combout\ & ( 
-- (!\HR1|Count[2]~10_combout\ & \HR1|Count[0]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR1|ALT_INV_Count[2]~10_combout\,
	datac => \HR1|ALT_INV_Count[0]~2_combout\,
	datae => \HR1|ALT_INV_Count[1]~6_combout\,
	dataf => \HR1|ALT_INV_Count[3]~14_combout\,
	combout => \hr1_Disp|Mux2~0_combout\);

-- Location: LABCELL_X35_Y2_N30
\hr1_Disp|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hr1_Disp|Mux1~0_combout\ = ( \HR1|Count[1]~6_combout\ & ( \HR1|Count[3]~14_combout\ ) ) # ( !\HR1|Count[1]~6_combout\ & ( \HR1|Count[3]~14_combout\ & ( \HR1|Count[2]~10_combout\ ) ) ) # ( \HR1|Count[1]~6_combout\ & ( !\HR1|Count[3]~14_combout\ & ( 
-- (\HR1|Count[0]~2_combout\ & \HR1|Count[2]~10_combout\) ) ) ) # ( !\HR1|Count[1]~6_combout\ & ( !\HR1|Count[3]~14_combout\ & ( (!\HR1|Count[0]~2_combout\ & \HR1|Count[2]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000110000001100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HR1|ALT_INV_Count[0]~2_combout\,
	datac => \HR1|ALT_INV_Count[2]~10_combout\,
	datae => \HR1|ALT_INV_Count[1]~6_combout\,
	dataf => \HR1|ALT_INV_Count[3]~14_combout\,
	combout => \hr1_Disp|Mux1~0_combout\);

-- Location: LABCELL_X35_Y2_N0
\hr1_Disp|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hr1_Disp|Mux0~0_combout\ = ( \HR1|Count[1]~6_combout\ & ( \HR1|Count[3]~14_combout\ ) ) # ( !\HR1|Count[1]~6_combout\ & ( \HR1|Count[3]~14_combout\ & ( \HR1|Count[2]~10_combout\ ) ) ) # ( !\HR1|Count[1]~6_combout\ & ( !\HR1|Count[3]~14_combout\ & ( 
-- !\HR1|Count[0]~2_combout\ $ (\HR1|Count[2]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HR1|ALT_INV_Count[0]~2_combout\,
	datac => \HR1|ALT_INV_Count[2]~10_combout\,
	datae => \HR1|ALT_INV_Count[1]~6_combout\,
	dataf => \HR1|ALT_INV_Count[3]~14_combout\,
	combout => \hr1_Disp|Mux0~0_combout\);

-- Location: LABCELL_X14_Y3_N51
\hr10_Disp|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hr10_Disp|Mux6~0_combout\ = ( \HR10|Count[2]~10_combout\ & ( \HR10|Count[0]~2_combout\ & ( (!\HR10|Count[1]~6_combout\ & !\HR10|Count[3]~14_combout\) ) ) ) # ( !\HR10|Count[2]~10_combout\ & ( \HR10|Count[0]~2_combout\ & ( !\HR10|Count[1]~6_combout\ $ 
-- (!\HR10|Count[3]~14_combout\) ) ) ) # ( \HR10|Count[2]~10_combout\ & ( !\HR10|Count[0]~2_combout\ & ( !\HR10|Count[3]~14_combout\ ) ) ) # ( !\HR10|Count[2]~10_combout\ & ( !\HR10|Count[0]~2_combout\ & ( !\HR10|Count[1]~6_combout\ $ 
-- (!\HR10|Count[3]~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010111111110000000001010101101010101010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR10|ALT_INV_Count[1]~6_combout\,
	datad => \HR10|ALT_INV_Count[3]~14_combout\,
	datae => \HR10|ALT_INV_Count[2]~10_combout\,
	dataf => \HR10|ALT_INV_Count[0]~2_combout\,
	combout => \hr10_Disp|Mux6~0_combout\);

-- Location: LABCELL_X14_Y3_N9
\hr10_Disp|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hr10_Disp|Mux5~0_combout\ = ( \HR10|Count[2]~10_combout\ & ( \HR10|Count[0]~2_combout\ & ( (\HR10|Count[3]~14_combout\) # (\HR10|Count[1]~6_combout\) ) ) ) # ( !\HR10|Count[2]~10_combout\ & ( \HR10|Count[0]~2_combout\ & ( (!\HR10|Count[3]~14_combout\) # 
-- (\HR10|Count[1]~6_combout\) ) ) ) # ( \HR10|Count[2]~10_combout\ & ( !\HR10|Count[0]~2_combout\ & ( \HR10|Count[3]~14_combout\ ) ) ) # ( !\HR10|Count[2]~10_combout\ & ( !\HR10|Count[0]~2_combout\ & ( \HR10|Count[1]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111111111111010101010101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR10|ALT_INV_Count[1]~6_combout\,
	datad => \HR10|ALT_INV_Count[3]~14_combout\,
	datae => \HR10|ALT_INV_Count[2]~10_combout\,
	dataf => \HR10|ALT_INV_Count[0]~2_combout\,
	combout => \hr10_Disp|Mux5~0_combout\);

-- Location: MLABCELL_X13_Y1_N48
\hr10_Disp|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hr10_Disp|Mux4~0_combout\ = ( \HR10|Count[3]~14_combout\ & ( ((\HR10|Count[0]~2_combout\) # (\HR10|Count[1]~6_combout\)) # (\HR10|Count[2]~10_combout\) ) ) # ( !\HR10|Count[3]~14_combout\ & ( ((\HR10|Count[2]~10_combout\ & !\HR10|Count[1]~6_combout\)) # 
-- (\HR10|Count[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111111010100001111111101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR10|ALT_INV_Count[2]~10_combout\,
	datac => \HR10|ALT_INV_Count[1]~6_combout\,
	datad => \HR10|ALT_INV_Count[0]~2_combout\,
	dataf => \HR10|ALT_INV_Count[3]~14_combout\,
	combout => \hr10_Disp|Mux4~0_combout\);

-- Location: LABCELL_X14_Y3_N24
\hr10_Disp|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hr10_Disp|Mux3~0_combout\ = ( \HR10|Count[2]~10_combout\ & ( \HR10|Count[0]~2_combout\ & ( (\HR10|Count[1]~6_combout\) # (\HR10|Count[3]~14_combout\) ) ) ) # ( !\HR10|Count[2]~10_combout\ & ( \HR10|Count[0]~2_combout\ & ( !\HR10|Count[3]~14_combout\ $ 
-- (\HR10|Count[1]~6_combout\) ) ) ) # ( \HR10|Count[2]~10_combout\ & ( !\HR10|Count[0]~2_combout\ & ( (!\HR10|Count[1]~6_combout\) # (\HR10|Count[3]~14_combout\) ) ) ) # ( !\HR10|Count[2]~10_combout\ & ( !\HR10|Count[0]~2_combout\ & ( 
-- (\HR10|Count[3]~14_combout\ & \HR10|Count[1]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010110100101101001010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR10|ALT_INV_Count[3]~14_combout\,
	datac => \HR10|ALT_INV_Count[1]~6_combout\,
	datae => \HR10|ALT_INV_Count[2]~10_combout\,
	dataf => \HR10|ALT_INV_Count[0]~2_combout\,
	combout => \hr10_Disp|Mux3~0_combout\);

-- Location: LABCELL_X14_Y3_N57
\hr10_Disp|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hr10_Disp|Mux2~0_combout\ = ( \HR10|Count[2]~10_combout\ & ( \HR10|Count[0]~2_combout\ & ( \HR10|Count[3]~14_combout\ ) ) ) # ( !\HR10|Count[2]~10_combout\ & ( \HR10|Count[0]~2_combout\ & ( (\HR10|Count[1]~6_combout\ & \HR10|Count[3]~14_combout\) ) ) ) # 
-- ( \HR10|Count[2]~10_combout\ & ( !\HR10|Count[0]~2_combout\ & ( \HR10|Count[3]~14_combout\ ) ) ) # ( !\HR10|Count[2]~10_combout\ & ( !\HR10|Count[0]~2_combout\ & ( \HR10|Count[1]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100000000010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR10|ALT_INV_Count[1]~6_combout\,
	datad => \HR10|ALT_INV_Count[3]~14_combout\,
	datae => \HR10|ALT_INV_Count[2]~10_combout\,
	dataf => \HR10|ALT_INV_Count[0]~2_combout\,
	combout => \hr10_Disp|Mux2~0_combout\);

-- Location: MLABCELL_X13_Y1_N21
\hr10_Disp|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hr10_Disp|Mux1~0_combout\ = ( \HR10|Count[1]~6_combout\ & ( ((\HR10|Count[2]~10_combout\ & !\HR10|Count[0]~2_combout\)) # (\HR10|Count[3]~14_combout\) ) ) # ( !\HR10|Count[1]~6_combout\ & ( (\HR10|Count[2]~10_combout\ & ((\HR10|Count[3]~14_combout\) # 
-- (\HR10|Count[0]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR10|ALT_INV_Count[2]~10_combout\,
	datab => \HR10|ALT_INV_Count[0]~2_combout\,
	datac => \HR10|ALT_INV_Count[3]~14_combout\,
	dataf => \HR10|ALT_INV_Count[1]~6_combout\,
	combout => \hr10_Disp|Mux1~0_combout\);

-- Location: LABCELL_X14_Y3_N0
\hr10_Disp|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hr10_Disp|Mux0~0_combout\ = ( \HR10|Count[2]~10_combout\ & ( \HR10|Count[0]~2_combout\ & ( \HR10|Count[3]~14_combout\ ) ) ) # ( !\HR10|Count[2]~10_combout\ & ( \HR10|Count[0]~2_combout\ & ( !\HR10|Count[3]~14_combout\ $ (\HR10|Count[1]~6_combout\) ) ) ) 
-- # ( \HR10|Count[2]~10_combout\ & ( !\HR10|Count[0]~2_combout\ & ( (!\HR10|Count[1]~6_combout\) # (\HR10|Count[3]~14_combout\) ) ) ) # ( !\HR10|Count[2]~10_combout\ & ( !\HR10|Count[0]~2_combout\ & ( (\HR10|Count[3]~14_combout\ & \HR10|Count[1]~6_combout\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010110100101101001010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HR10|ALT_INV_Count[3]~14_combout\,
	datac => \HR10|ALT_INV_Count[1]~6_combout\,
	datae => \HR10|ALT_INV_Count[2]~10_combout\,
	dataf => \HR10|ALT_INV_Count[0]~2_combout\,
	combout => \hr10_Disp|Mux0~0_combout\);

-- Location: IOIBUF_X10_Y0_N92
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: MLABCELL_X34_Y38_N0
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


