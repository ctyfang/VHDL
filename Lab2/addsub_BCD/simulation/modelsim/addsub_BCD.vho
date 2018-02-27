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

-- DATE "02/26/2018 09:41:20"

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

ENTITY 	addsub_BCD IS
    PORT (
	ones : IN std_logic_vector(3 DOWNTO 0);
	tens : IN std_logic_vector(3 DOWNTO 0);
	a_save : IN std_logic;
	b_save : IN std_logic;
	sub : IN std_logic;
	overflow : BUFFER std_logic;
	hexA1 : OUT std_logic_vector(0 TO 6);
	hexA10 : OUT std_logic_vector(0 TO 6);
	hexB1 : OUT std_logic_vector(0 TO 6);
	hexB10 : OUT std_logic_vector(0 TO 6);
	hexAns1 : OUT std_logic_vector(0 TO 6);
	hexAns10 : OUT std_logic_vector(0 TO 6)
	);
END addsub_BCD;

-- Design Ports Information
-- overflow	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexA1[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexA1[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexA1[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexA1[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexA1[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexA1[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexA1[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexA10[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexA10[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexA10[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexA10[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexA10[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexA10[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexA10[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexB1[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexB1[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexB1[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexB1[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexB1[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexB1[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexB1[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexB10[6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexB10[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexB10[4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexB10[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexB10[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexB10[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexB10[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexAns1[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexAns1[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexAns1[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexAns1[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexAns1[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexAns1[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexAns1[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexAns10[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexAns10[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexAns10[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexAns10[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexAns10[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexAns10[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexAns10[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sub	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ones[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_save	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ones[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ones[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ones[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_save	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF addsub_BCD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ones : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_tens : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_a_save : std_logic;
SIGNAL ww_b_save : std_logic;
SIGNAL ww_sub : std_logic;
SIGNAL ww_overflow : std_logic;
SIGNAL ww_hexA1 : std_logic_vector(0 TO 6);
SIGNAL ww_hexA10 : std_logic_vector(0 TO 6);
SIGNAL ww_hexB1 : std_logic_vector(0 TO 6);
SIGNAL ww_hexB10 : std_logic_vector(0 TO 6);
SIGNAL ww_hexAns1 : std_logic_vector(0 TO 6);
SIGNAL ww_hexAns10 : std_logic_vector(0 TO 6);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \tens[3]~input_o\ : std_logic;
SIGNAL \b_save~input_o\ : std_logic;
SIGNAL \tens[2]~input_o\ : std_logic;
SIGNAL \tens[1]~input_o\ : std_logic;
SIGNAL \OperateTens|Mux0~0_combout\ : std_logic;
SIGNAL \sub~input_o\ : std_logic;
SIGNAL \a_save~input_o\ : std_logic;
SIGNAL \tens[0]~input_o\ : std_logic;
SIGNAL \OperateTens|Mux3~0_combout\ : std_logic;
SIGNAL \ones[3]~input_o\ : std_logic;
SIGNAL \ones[1]~input_o\ : std_logic;
SIGNAL \ones[0]~input_o\ : std_logic;
SIGNAL \ones[2]~input_o\ : std_logic;
SIGNAL \OperateOnes|Mux3~0_combout\ : std_logic;
SIGNAL \OperateOnes|Add0~22_cout\ : std_logic;
SIGNAL \OperateOnes|Add0~2\ : std_logic;
SIGNAL \OperateOnes|Add0~9_sumout\ : std_logic;
SIGNAL \OperateOnes|Add0~10\ : std_logic;
SIGNAL \OperateOnes|Add0~13_sumout\ : std_logic;
SIGNAL \OperateOnes|LessThan0~0_combout\ : std_logic;
SIGNAL \OperateOnes|Mux0~0_combout\ : std_logic;
SIGNAL \OperateOnes|Add0~14\ : std_logic;
SIGNAL \OperateOnes|Add0~5_sumout\ : std_logic;
SIGNAL \OperateOnes|Add0~6\ : std_logic;
SIGNAL \OperateOnes|Add0~17_sumout\ : std_logic;
SIGNAL \OperateTens|Add0~22_cout\ : std_logic;
SIGNAL \OperateTens|Add0~18\ : std_logic;
SIGNAL \OperateTens|Add0~2\ : std_logic;
SIGNAL \OperateTens|Add0~6\ : std_logic;
SIGNAL \OperateTens|Add0~9_sumout\ : std_logic;
SIGNAL \OperateTens|Add0~10\ : std_logic;
SIGNAL \OperateTens|Add0~13_sumout\ : std_logic;
SIGNAL \OperateTens|Add0~1_sumout\ : std_logic;
SIGNAL \OperateTens|Add0~5_sumout\ : std_logic;
SIGNAL \OperateTens|LessThan0~0_combout\ : std_logic;
SIGNAL \A1_Disp|Mux6~0_combout\ : std_logic;
SIGNAL \A1_Disp|Mux5~0_combout\ : std_logic;
SIGNAL \A1_Disp|Mux4~0_combout\ : std_logic;
SIGNAL \A1_Disp|Mux3~0_combout\ : std_logic;
SIGNAL \A1_Disp|Mux2~0_combout\ : std_logic;
SIGNAL \A1_Disp|Mux1~0_combout\ : std_logic;
SIGNAL \A1_Disp|Mux0~0_combout\ : std_logic;
SIGNAL \A10_Disp|Mux6~0_combout\ : std_logic;
SIGNAL \A10_Disp|Mux5~0_combout\ : std_logic;
SIGNAL \A10_Disp|Mux4~0_combout\ : std_logic;
SIGNAL \A10_Disp|Mux3~0_combout\ : std_logic;
SIGNAL \A10_Disp|Mux2~0_combout\ : std_logic;
SIGNAL \A10_Disp|Mux1~0_combout\ : std_logic;
SIGNAL \A10_Disp|Mux0~0_combout\ : std_logic;
SIGNAL \B1_Disp|Mux6~0_combout\ : std_logic;
SIGNAL \B1_Disp|Mux5~0_combout\ : std_logic;
SIGNAL \B1_Disp|Mux4~0_combout\ : std_logic;
SIGNAL \B1_Disp|Mux3~0_combout\ : std_logic;
SIGNAL \B1_Disp|Mux2~0_combout\ : std_logic;
SIGNAL \B1_Disp|Mux1~0_combout\ : std_logic;
SIGNAL \B1_Disp|Mux0~0_combout\ : std_logic;
SIGNAL \B10_Disp|Mux6~0_combout\ : std_logic;
SIGNAL \B10_Disp|Mux5~0_combout\ : std_logic;
SIGNAL \B10_Disp|Mux4~0_combout\ : std_logic;
SIGNAL \B10_Disp|Mux3~0_combout\ : std_logic;
SIGNAL \B10_Disp|Mux2~0_combout\ : std_logic;
SIGNAL \B10_Disp|Mux1~0_combout\ : std_logic;
SIGNAL \B10_Disp|Mux0~0_combout\ : std_logic;
SIGNAL \OperateOnes|sum[3]~2_combout\ : std_logic;
SIGNAL \OperateOnes|sum[2]~1_combout\ : std_logic;
SIGNAL \OperateOnes|Add0~1_sumout\ : std_logic;
SIGNAL \OperateOnes|sum[1]~0_combout\ : std_logic;
SIGNAL \Ans1_Disp|Mux6~0_combout\ : std_logic;
SIGNAL \Ans1_Disp|Mux5~0_combout\ : std_logic;
SIGNAL \Ans1_Disp|Mux4~0_combout\ : std_logic;
SIGNAL \Ans1_Disp|Mux3~0_combout\ : std_logic;
SIGNAL \Ans1_Disp|Mux2~0_combout\ : std_logic;
SIGNAL \Ans1_Disp|Mux1~0_combout\ : std_logic;
SIGNAL \Ans1_Disp|Mux0~0_combout\ : std_logic;
SIGNAL \OperateTens|Add0~17_sumout\ : std_logic;
SIGNAL \OperateTens|sum[2]~1_combout\ : std_logic;
SIGNAL \OperateTens|sum[3]~2_combout\ : std_logic;
SIGNAL \OperateTens|sum[1]~0_combout\ : std_logic;
SIGNAL \Ans10_Disp|Mux6~0_combout\ : std_logic;
SIGNAL \Ans10_Disp|Mux5~0_combout\ : std_logic;
SIGNAL \Ans10_Disp|Mux4~0_combout\ : std_logic;
SIGNAL \Ans10_Disp|Mux3~0_combout\ : std_logic;
SIGNAL \Ans10_Disp|Mux2~0_combout\ : std_logic;
SIGNAL \Ans10_Disp|Mux1~0_combout\ : std_logic;
SIGNAL \Ans10_Disp|Mux0~0_combout\ : std_logic;
SIGNAL \A1_Latch|DATA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \B1_Latch|DATA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A10_Latch|DATA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \B10_Latch|DATA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_b_save~input_o\ : std_logic;
SIGNAL \ALT_INV_tens[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_tens[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_tens[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_tens[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ones[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_ones[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ones[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a_save~input_o\ : std_logic;
SIGNAL \ALT_INV_ones[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sub~input_o\ : std_logic;
SIGNAL \B10_Latch|ALT_INV_DATA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \B1_Latch|ALT_INV_DATA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A10_Latch|ALT_INV_DATA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A1_Latch|ALT_INV_DATA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OperateTens|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \OperateOnes|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \OperateOnes|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \OperateTens|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Ans10_Disp|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \OperateTens|ALT_INV_sum[3]~2_combout\ : std_logic;
SIGNAL \OperateTens|ALT_INV_sum[2]~1_combout\ : std_logic;
SIGNAL \OperateTens|ALT_INV_sum[1]~0_combout\ : std_logic;
SIGNAL \Ans1_Disp|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \OperateOnes|ALT_INV_sum[3]~2_combout\ : std_logic;
SIGNAL \OperateOnes|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \OperateOnes|ALT_INV_sum[2]~1_combout\ : std_logic;
SIGNAL \OperateOnes|ALT_INV_sum[1]~0_combout\ : std_logic;
SIGNAL \B10_Disp|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \B1_Disp|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \A10_Disp|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \A1_Disp|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \OperateTens|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \OperateOnes|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \OperateOnes|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \OperateOnes|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \OperateOnes|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \OperateOnes|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \OperateTens|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \OperateTens|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \OperateTens|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \OperateTens|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_ones <= ones;
ww_tens <= tens;
ww_a_save <= a_save;
ww_b_save <= b_save;
ww_sub <= sub;
overflow <= ww_overflow;
hexA1 <= ww_hexA1;
hexA10 <= ww_hexA10;
hexB1 <= ww_hexB1;
hexB10 <= ww_hexB10;
hexAns1 <= ww_hexAns1;
hexAns10 <= ww_hexAns10;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_b_save~input_o\ <= NOT \b_save~input_o\;
\ALT_INV_tens[3]~input_o\ <= NOT \tens[3]~input_o\;
\ALT_INV_tens[2]~input_o\ <= NOT \tens[2]~input_o\;
\ALT_INV_tens[1]~input_o\ <= NOT \tens[1]~input_o\;
\ALT_INV_tens[0]~input_o\ <= NOT \tens[0]~input_o\;
\ALT_INV_ones[3]~input_o\ <= NOT \ones[3]~input_o\;
\ALT_INV_ones[2]~input_o\ <= NOT \ones[2]~input_o\;
\ALT_INV_ones[1]~input_o\ <= NOT \ones[1]~input_o\;
\ALT_INV_a_save~input_o\ <= NOT \a_save~input_o\;
\ALT_INV_ones[0]~input_o\ <= NOT \ones[0]~input_o\;
\ALT_INV_sub~input_o\ <= NOT \sub~input_o\;
\B10_Latch|ALT_INV_DATA\(3) <= NOT \B10_Latch|DATA\(3);
\B10_Latch|ALT_INV_DATA\(2) <= NOT \B10_Latch|DATA\(2);
\B10_Latch|ALT_INV_DATA\(1) <= NOT \B10_Latch|DATA\(1);
\B10_Latch|ALT_INV_DATA\(0) <= NOT \B10_Latch|DATA\(0);
\B1_Latch|ALT_INV_DATA\(3) <= NOT \B1_Latch|DATA\(3);
\B1_Latch|ALT_INV_DATA\(2) <= NOT \B1_Latch|DATA\(2);
\B1_Latch|ALT_INV_DATA\(1) <= NOT \B1_Latch|DATA\(1);
\B1_Latch|ALT_INV_DATA\(0) <= NOT \B1_Latch|DATA\(0);
\A10_Latch|ALT_INV_DATA\(3) <= NOT \A10_Latch|DATA\(3);
\A10_Latch|ALT_INV_DATA\(2) <= NOT \A10_Latch|DATA\(2);
\A10_Latch|ALT_INV_DATA\(1) <= NOT \A10_Latch|DATA\(1);
\A10_Latch|ALT_INV_DATA\(0) <= NOT \A10_Latch|DATA\(0);
\A1_Latch|ALT_INV_DATA\(3) <= NOT \A1_Latch|DATA\(3);
\A1_Latch|ALT_INV_DATA\(2) <= NOT \A1_Latch|DATA\(2);
\A1_Latch|ALT_INV_DATA\(1) <= NOT \A1_Latch|DATA\(1);
\A1_Latch|ALT_INV_DATA\(0) <= NOT \A1_Latch|DATA\(0);
\OperateTens|ALT_INV_Mux3~0_combout\ <= NOT \OperateTens|Mux3~0_combout\;
\OperateOnes|ALT_INV_Mux0~0_combout\ <= NOT \OperateOnes|Mux0~0_combout\;
\OperateOnes|ALT_INV_Mux3~0_combout\ <= NOT \OperateOnes|Mux3~0_combout\;
\OperateTens|ALT_INV_Mux0~0_combout\ <= NOT \OperateTens|Mux0~0_combout\;
\Ans10_Disp|ALT_INV_Mux6~0_combout\ <= NOT \Ans10_Disp|Mux6~0_combout\;
\OperateTens|ALT_INV_sum[3]~2_combout\ <= NOT \OperateTens|sum[3]~2_combout\;
\OperateTens|ALT_INV_sum[2]~1_combout\ <= NOT \OperateTens|sum[2]~1_combout\;
\OperateTens|ALT_INV_sum[1]~0_combout\ <= NOT \OperateTens|sum[1]~0_combout\;
\Ans1_Disp|ALT_INV_Mux6~0_combout\ <= NOT \Ans1_Disp|Mux6~0_combout\;
\OperateOnes|ALT_INV_sum[3]~2_combout\ <= NOT \OperateOnes|sum[3]~2_combout\;
\OperateOnes|ALT_INV_LessThan0~0_combout\ <= NOT \OperateOnes|LessThan0~0_combout\;
\OperateOnes|ALT_INV_sum[2]~1_combout\ <= NOT \OperateOnes|sum[2]~1_combout\;
\OperateOnes|ALT_INV_sum[1]~0_combout\ <= NOT \OperateOnes|sum[1]~0_combout\;
\B10_Disp|ALT_INV_Mux6~0_combout\ <= NOT \B10_Disp|Mux6~0_combout\;
\B1_Disp|ALT_INV_Mux6~0_combout\ <= NOT \B1_Disp|Mux6~0_combout\;
\A10_Disp|ALT_INV_Mux6~0_combout\ <= NOT \A10_Disp|Mux6~0_combout\;
\A1_Disp|ALT_INV_Mux6~0_combout\ <= NOT \A1_Disp|Mux6~0_combout\;
\OperateTens|ALT_INV_Add0~17_sumout\ <= NOT \OperateTens|Add0~17_sumout\;
\OperateOnes|ALT_INV_Add0~17_sumout\ <= NOT \OperateOnes|Add0~17_sumout\;
\OperateOnes|ALT_INV_Add0~13_sumout\ <= NOT \OperateOnes|Add0~13_sumout\;
\OperateOnes|ALT_INV_Add0~9_sumout\ <= NOT \OperateOnes|Add0~9_sumout\;
\OperateOnes|ALT_INV_Add0~5_sumout\ <= NOT \OperateOnes|Add0~5_sumout\;
\OperateOnes|ALT_INV_Add0~1_sumout\ <= NOT \OperateOnes|Add0~1_sumout\;
\OperateTens|ALT_INV_Add0~13_sumout\ <= NOT \OperateTens|Add0~13_sumout\;
\OperateTens|ALT_INV_Add0~9_sumout\ <= NOT \OperateTens|Add0~9_sumout\;
\OperateTens|ALT_INV_Add0~5_sumout\ <= NOT \OperateTens|Add0~5_sumout\;
\OperateTens|ALT_INV_Add0~1_sumout\ <= NOT \OperateTens|Add0~1_sumout\;

-- Location: IOOBUF_X0_Y18_N45
\overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OperateTens|LessThan0~0_combout\,
	devoe => ww_devoe,
	o => ww_overflow);

-- Location: IOOBUF_X29_Y0_N19
\hexA1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1_Disp|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hexA1(6));

-- Location: IOOBUF_X36_Y0_N2
\hexA1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1_Disp|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hexA1(5));

-- Location: IOOBUF_X43_Y0_N2
\hexA1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1_Disp|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hexA1(4));

-- Location: IOOBUF_X52_Y0_N19
\hexA1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1_Disp|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hexA1(3));

-- Location: IOOBUF_X44_Y0_N19
\hexA1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1_Disp|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hexA1(2));

-- Location: IOOBUF_X48_Y0_N59
\hexA1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1_Disp|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hexA1(1));

-- Location: IOOBUF_X52_Y0_N36
\hexA1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1_Disp|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hexA1(0));

-- Location: IOOBUF_X44_Y0_N2
\hexA10[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A10_Disp|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hexA10(6));

-- Location: IOOBUF_X0_Y21_N39
\hexA10[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A10_Disp|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hexA10(5));

-- Location: IOOBUF_X0_Y21_N56
\hexA10[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A10_Disp|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hexA10(4));

-- Location: IOOBUF_X50_Y0_N19
\hexA10[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A10_Disp|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hexA10(3));

-- Location: IOOBUF_X43_Y0_N19
\hexA10[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A10_Disp|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hexA10(2));

-- Location: IOOBUF_X22_Y0_N19
\hexA10[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A10_Disp|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hexA10(1));

-- Location: IOOBUF_X29_Y0_N2
\hexA10[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A10_Disp|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hexA10(0));

-- Location: IOOBUF_X40_Y0_N76
\hexB1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B1_Disp|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hexB1(6));

-- Location: IOOBUF_X46_Y0_N53
\hexB1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B1_Disp|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hexB1(5));

-- Location: IOOBUF_X38_Y0_N19
\hexB1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B1_Disp|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hexB1(4));

-- Location: IOOBUF_X36_Y0_N19
\hexB1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B1_Disp|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hexB1(3));

-- Location: IOOBUF_X22_Y0_N53
\hexB1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B1_Disp|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hexB1(2));

-- Location: IOOBUF_X38_Y0_N53
\hexB1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B1_Disp|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hexB1(1));

-- Location: IOOBUF_X48_Y0_N42
\hexB1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B1_Disp|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hexB1(0));

-- Location: IOOBUF_X51_Y0_N19
\hexB10[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B10_Disp|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hexB10(6));

-- Location: IOOBUF_X51_Y0_N2
\hexB10[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B10_Disp|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hexB10(5));

-- Location: IOOBUF_X52_Y0_N2
\hexB10[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B10_Disp|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hexB10(4));

-- Location: IOOBUF_X46_Y0_N19
\hexB10[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B10_Disp|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hexB10(3));

-- Location: IOOBUF_X40_Y0_N42
\hexB10[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B10_Disp|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hexB10(2));

-- Location: IOOBUF_X46_Y0_N2
\hexB10[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B10_Disp|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hexB10(1));

-- Location: IOOBUF_X40_Y0_N59
\hexB10[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B10_Disp|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hexB10(0));

-- Location: IOOBUF_X46_Y0_N36
\hexAns1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Ans1_Disp|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hexAns1(6));

-- Location: IOOBUF_X50_Y0_N53
\hexAns1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Ans1_Disp|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hexAns1(5));

-- Location: IOOBUF_X48_Y0_N93
\hexAns1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Ans1_Disp|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hexAns1(4));

-- Location: IOOBUF_X50_Y0_N36
\hexAns1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Ans1_Disp|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hexAns1(3));

-- Location: IOOBUF_X48_Y0_N76
\hexAns1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Ans1_Disp|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hexAns1(2));

-- Location: IOOBUF_X51_Y0_N36
\hexAns1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Ans1_Disp|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hexAns1(1));

-- Location: IOOBUF_X52_Y0_N53
\hexAns1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Ans1_Disp|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hexAns1(0));

-- Location: IOOBUF_X51_Y0_N53
\hexAns10[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Ans10_Disp|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hexAns10(6));

-- Location: IOOBUF_X43_Y0_N53
\hexAns10[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Ans10_Disp|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hexAns10(5));

-- Location: IOOBUF_X38_Y0_N36
\hexAns10[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Ans10_Disp|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hexAns10(4));

-- Location: IOOBUF_X43_Y0_N36
\hexAns10[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Ans10_Disp|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hexAns10(3));

-- Location: IOOBUF_X44_Y0_N53
\hexAns10[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Ans10_Disp|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hexAns10(2));

-- Location: IOOBUF_X40_Y0_N93
\hexAns10[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Ans10_Disp|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hexAns10(1));

-- Location: IOOBUF_X44_Y0_N36
\hexAns10[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Ans10_Disp|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hexAns10(0));

-- Location: IOIBUF_X34_Y0_N35
\tens[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tens(3),
	o => \tens[3]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\b_save~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_save,
	o => \b_save~input_o\);

-- Location: LABCELL_X10_Y1_N18
\B10_Latch|DATA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \B10_Latch|DATA\(3) = ( \B10_Latch|DATA\(3) & ( (\b_save~input_o\) # (\tens[3]~input_o\) ) ) # ( !\B10_Latch|DATA\(3) & ( (\tens[3]~input_o\ & !\b_save~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_tens[3]~input_o\,
	datac => \ALT_INV_b_save~input_o\,
	dataf => \B10_Latch|ALT_INV_DATA\(3),
	combout => \B10_Latch|DATA\(3));

-- Location: IOIBUF_X34_Y0_N52
\tens[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tens(2),
	o => \tens[2]~input_o\);

-- Location: LABCELL_X10_Y1_N15
\B10_Latch|DATA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \B10_Latch|DATA\(2) = ( \b_save~input_o\ & ( \B10_Latch|DATA\(2) ) ) # ( !\b_save~input_o\ & ( \tens[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tens[2]~input_o\,
	datac => \B10_Latch|ALT_INV_DATA\(2),
	dataf => \ALT_INV_b_save~input_o\,
	combout => \B10_Latch|DATA\(2));

-- Location: IOIBUF_X36_Y0_N52
\tens[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tens(1),
	o => \tens[1]~input_o\);

-- Location: LABCELL_X10_Y1_N6
\B10_Latch|DATA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \B10_Latch|DATA\(1) = ( \tens[1]~input_o\ & ( \B10_Latch|DATA\(1) ) ) # ( !\tens[1]~input_o\ & ( \B10_Latch|DATA\(1) & ( \b_save~input_o\ ) ) ) # ( \tens[1]~input_o\ & ( !\B10_Latch|DATA\(1) & ( !\b_save~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_b_save~input_o\,
	datae => \ALT_INV_tens[1]~input_o\,
	dataf => \B10_Latch|ALT_INV_DATA\(1),
	combout => \B10_Latch|DATA\(1));

-- Location: LABCELL_X19_Y1_N0
\OperateTens|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \OperateTens|Mux0~0_combout\ = ( !\B10_Latch|DATA\(1) & ( (!\B10_Latch|DATA\(3) & !\B10_Latch|DATA\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B10_Latch|ALT_INV_DATA\(3),
	datac => \B10_Latch|ALT_INV_DATA\(2),
	dataf => \B10_Latch|ALT_INV_DATA\(1),
	combout => \OperateTens|Mux0~0_combout\);

-- Location: IOIBUF_X33_Y0_N75
\sub~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sub,
	o => \sub~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\a_save~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_save,
	o => \a_save~input_o\);

-- Location: LABCELL_X14_Y1_N18
\A10_Latch|DATA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \A10_Latch|DATA\(3) = ( \tens[3]~input_o\ & ( \A10_Latch|DATA\(3) ) ) # ( !\tens[3]~input_o\ & ( \A10_Latch|DATA\(3) & ( \a_save~input_o\ ) ) ) # ( \tens[3]~input_o\ & ( !\A10_Latch|DATA\(3) & ( !\a_save~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_a_save~input_o\,
	datae => \ALT_INV_tens[3]~input_o\,
	dataf => \A10_Latch|ALT_INV_DATA\(3),
	combout => \A10_Latch|DATA\(3));

-- Location: LABCELL_X10_Y1_N48
\A10_Latch|DATA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \A10_Latch|DATA\(2) = ( \a_save~input_o\ & ( \A10_Latch|DATA\(2) ) ) # ( !\a_save~input_o\ & ( \A10_Latch|DATA\(2) & ( \tens[2]~input_o\ ) ) ) # ( !\a_save~input_o\ & ( !\A10_Latch|DATA\(2) & ( \tens[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_tens[2]~input_o\,
	datae => \ALT_INV_a_save~input_o\,
	dataf => \A10_Latch|ALT_INV_DATA\(2),
	combout => \A10_Latch|DATA\(2));

-- Location: LABCELL_X10_Y1_N42
\A10_Latch|DATA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \A10_Latch|DATA\(1) = ( \a_save~input_o\ & ( \A10_Latch|DATA\(1) ) ) # ( !\a_save~input_o\ & ( \A10_Latch|DATA\(1) & ( \tens[1]~input_o\ ) ) ) # ( !\a_save~input_o\ & ( !\A10_Latch|DATA\(1) & ( \tens[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_tens[1]~input_o\,
	datae => \ALT_INV_a_save~input_o\,
	dataf => \A10_Latch|ALT_INV_DATA\(1),
	combout => \A10_Latch|DATA\(1));

-- Location: IOIBUF_X36_Y0_N35
\tens[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tens(0),
	o => \tens[0]~input_o\);

-- Location: LABCELL_X10_Y1_N0
\B10_Latch|DATA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \B10_Latch|DATA\(0) = ( \B10_Latch|DATA\(0) & ( \b_save~input_o\ ) ) # ( \B10_Latch|DATA\(0) & ( !\b_save~input_o\ & ( \tens[0]~input_o\ ) ) ) # ( !\B10_Latch|DATA\(0) & ( !\b_save~input_o\ & ( \tens[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_tens[0]~input_o\,
	datae => \B10_Latch|ALT_INV_DATA\(0),
	dataf => \ALT_INV_b_save~input_o\,
	combout => \B10_Latch|DATA\(0));

-- Location: LABCELL_X19_Y1_N21
\OperateTens|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \OperateTens|Mux3~0_combout\ = ( \B10_Latch|DATA\(0) & ( \B10_Latch|DATA\(1) ) ) # ( !\B10_Latch|DATA\(0) & ( \B10_Latch|DATA\(1) & ( \B10_Latch|DATA\(3) ) ) ) # ( \B10_Latch|DATA\(0) & ( !\B10_Latch|DATA\(1) ) ) # ( !\B10_Latch|DATA\(0) & ( 
-- !\B10_Latch|DATA\(1) & ( (\B10_Latch|DATA\(2) & \B10_Latch|DATA\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B10_Latch|ALT_INV_DATA\(2),
	datac => \B10_Latch|ALT_INV_DATA\(3),
	datae => \B10_Latch|ALT_INV_DATA\(0),
	dataf => \B10_Latch|ALT_INV_DATA\(1),
	combout => \OperateTens|Mux3~0_combout\);

-- Location: LABCELL_X10_Y1_N39
\A10_Latch|DATA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \A10_Latch|DATA\(0) = ( \a_save~input_o\ & ( \A10_Latch|DATA\(0) ) ) # ( !\a_save~input_o\ & ( \A10_Latch|DATA\(0) & ( \tens[0]~input_o\ ) ) ) # ( !\a_save~input_o\ & ( !\A10_Latch|DATA\(0) & ( \tens[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tens[0]~input_o\,
	datae => \ALT_INV_a_save~input_o\,
	dataf => \A10_Latch|ALT_INV_DATA\(0),
	combout => \A10_Latch|DATA\(0));

-- Location: IOIBUF_X34_Y0_N18
\ones[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ones(3),
	o => \ones[3]~input_o\);

-- Location: LABCELL_X10_Y1_N57
\B1_Latch|DATA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1_Latch|DATA\(3) = ( \B1_Latch|DATA\(3) & ( \b_save~input_o\ ) ) # ( \B1_Latch|DATA\(3) & ( !\b_save~input_o\ & ( \ones[3]~input_o\ ) ) ) # ( !\B1_Latch|DATA\(3) & ( !\b_save~input_o\ & ( \ones[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ones[3]~input_o\,
	datae => \B1_Latch|ALT_INV_DATA\(3),
	dataf => \ALT_INV_b_save~input_o\,
	combout => \B1_Latch|DATA\(3));

-- Location: IOIBUF_X33_Y0_N58
\ones[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ones(1),
	o => \ones[1]~input_o\);

-- Location: LABCELL_X12_Y1_N57
\B1_Latch|DATA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1_Latch|DATA\(1) = ( \B1_Latch|DATA\(1) & ( \b_save~input_o\ ) ) # ( \B1_Latch|DATA\(1) & ( !\b_save~input_o\ & ( \ones[1]~input_o\ ) ) ) # ( !\B1_Latch|DATA\(1) & ( !\b_save~input_o\ & ( \ones[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ones[1]~input_o\,
	datae => \B1_Latch|ALT_INV_DATA\(1),
	dataf => \ALT_INV_b_save~input_o\,
	combout => \B1_Latch|DATA\(1));

-- Location: LABCELL_X12_Y1_N6
\A1_Latch|DATA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1_Latch|DATA\(1) = ( \ones[1]~input_o\ & ( \A1_Latch|DATA\(1) ) ) # ( !\ones[1]~input_o\ & ( \A1_Latch|DATA\(1) & ( \a_save~input_o\ ) ) ) # ( \ones[1]~input_o\ & ( !\A1_Latch|DATA\(1) & ( !\a_save~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_a_save~input_o\,
	datae => \ALT_INV_ones[1]~input_o\,
	dataf => \A1_Latch|ALT_INV_DATA\(1),
	combout => \A1_Latch|DATA\(1));

-- Location: IOIBUF_X33_Y0_N41
\ones[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ones(0),
	o => \ones[0]~input_o\);

-- Location: LABCELL_X12_Y1_N51
\B1_Latch|DATA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1_Latch|DATA\(0) = ( \b_save~input_o\ & ( \B1_Latch|DATA\(0) ) ) # ( !\b_save~input_o\ & ( \B1_Latch|DATA\(0) & ( \ones[0]~input_o\ ) ) ) # ( !\b_save~input_o\ & ( !\B1_Latch|DATA\(0) & ( \ones[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ones[0]~input_o\,
	datae => \ALT_INV_b_save~input_o\,
	dataf => \B1_Latch|ALT_INV_DATA\(0),
	combout => \B1_Latch|DATA\(0));

-- Location: LABCELL_X12_Y1_N30
\A1_Latch|DATA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1_Latch|DATA\(0) = ( \A1_Latch|DATA\(0) & ( (\a_save~input_o\) # (\ones[0]~input_o\) ) ) # ( !\A1_Latch|DATA\(0) & ( (\ones[0]~input_o\ & !\a_save~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ones[0]~input_o\,
	datad => \ALT_INV_a_save~input_o\,
	dataf => \A1_Latch|ALT_INV_DATA\(0),
	combout => \A1_Latch|DATA\(0));

-- Location: IOIBUF_X34_Y0_N1
\ones[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ones(2),
	o => \ones[2]~input_o\);

-- Location: LABCELL_X16_Y1_N33
\B1_Latch|DATA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1_Latch|DATA\(2) = ( \B1_Latch|DATA\(2) & ( (\ones[2]~input_o\) # (\b_save~input_o\) ) ) # ( !\B1_Latch|DATA\(2) & ( (!\b_save~input_o\ & \ones[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b_save~input_o\,
	datac => \ALT_INV_ones[2]~input_o\,
	dataf => \B1_Latch|ALT_INV_DATA\(2),
	combout => \B1_Latch|DATA\(2));

-- Location: LABCELL_X17_Y1_N48
\OperateOnes|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \OperateOnes|Mux3~0_combout\ = ( \B1_Latch|DATA\(0) ) # ( !\B1_Latch|DATA\(0) & ( (\B1_Latch|DATA\(3) & ((\B1_Latch|DATA\(2)) # (\B1_Latch|DATA\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111111111111111111100000111000001111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1_Latch|ALT_INV_DATA\(1),
	datab => \B1_Latch|ALT_INV_DATA\(2),
	datac => \B1_Latch|ALT_INV_DATA\(3),
	datae => \B1_Latch|ALT_INV_DATA\(0),
	combout => \OperateOnes|Mux3~0_combout\);

-- Location: LABCELL_X17_Y1_N30
\OperateOnes|Add0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \OperateOnes|Add0~22_cout\ = CARRY(( \sub~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sub~input_o\,
	cin => GND,
	cout => \OperateOnes|Add0~22_cout\);

-- Location: LABCELL_X17_Y1_N33
\OperateOnes|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \OperateOnes|Add0~1_sumout\ = SUM(( \A1_Latch|DATA\(0) ) + ( (!\sub~input_o\ & (\B1_Latch|DATA\(0))) # (\sub~input_o\ & ((!\OperateOnes|Mux3~0_combout\))) ) + ( \OperateOnes|Add0~22_cout\ ))
-- \OperateOnes|Add0~2\ = CARRY(( \A1_Latch|DATA\(0) ) + ( (!\sub~input_o\ & (\B1_Latch|DATA\(0))) # (\sub~input_o\ & ((!\OperateOnes|Mux3~0_combout\))) ) + ( \OperateOnes|Add0~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001011101100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1_Latch|ALT_INV_DATA\(0),
	datab => \ALT_INV_sub~input_o\,
	datac => \A1_Latch|ALT_INV_DATA\(0),
	dataf => \OperateOnes|ALT_INV_Mux3~0_combout\,
	cin => \OperateOnes|Add0~22_cout\,
	sumout => \OperateOnes|Add0~1_sumout\,
	cout => \OperateOnes|Add0~2\);

-- Location: LABCELL_X17_Y1_N36
\OperateOnes|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \OperateOnes|Add0~9_sumout\ = SUM(( (\B1_Latch|DATA\(1) & ((!\B1_Latch|DATA\(3)) # (!\sub~input_o\))) ) + ( \A1_Latch|DATA\(1) ) + ( \OperateOnes|Add0~2\ ))
-- \OperateOnes|Add0~10\ = CARRY(( (\B1_Latch|DATA\(1) & ((!\B1_Latch|DATA\(3)) # (!\sub~input_o\))) ) + ( \A1_Latch|DATA\(1) ) + ( \OperateOnes|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1_Latch|ALT_INV_DATA\(3),
	datab => \ALT_INV_sub~input_o\,
	datac => \B1_Latch|ALT_INV_DATA\(1),
	dataf => \A1_Latch|ALT_INV_DATA\(1),
	cin => \OperateOnes|Add0~2\,
	sumout => \OperateOnes|Add0~9_sumout\,
	cout => \OperateOnes|Add0~10\);

-- Location: LABCELL_X12_Y1_N15
\A1_Latch|DATA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1_Latch|DATA\(2) = ( \A1_Latch|DATA\(2) & ( (\ones[2]~input_o\) # (\a_save~input_o\) ) ) # ( !\A1_Latch|DATA\(2) & ( (!\a_save~input_o\ & \ones[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a_save~input_o\,
	datac => \ALT_INV_ones[2]~input_o\,
	dataf => \A1_Latch|ALT_INV_DATA\(2),
	combout => \A1_Latch|DATA\(2));

-- Location: LABCELL_X17_Y1_N39
\OperateOnes|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \OperateOnes|Add0~13_sumout\ = SUM(( (!\sub~input_o\ & (((\B1_Latch|DATA\(2))))) # (\sub~input_o\ & (!\B1_Latch|DATA\(3) & (!\B1_Latch|DATA\(1) $ (!\B1_Latch|DATA\(2))))) ) + ( \A1_Latch|DATA\(2) ) + ( \OperateOnes|Add0~10\ ))
-- \OperateOnes|Add0~14\ = CARRY(( (!\sub~input_o\ & (((\B1_Latch|DATA\(2))))) # (\sub~input_o\ & (!\B1_Latch|DATA\(3) & (!\B1_Latch|DATA\(1) $ (!\B1_Latch|DATA\(2))))) ) + ( \A1_Latch|DATA\(2) ) + ( \OperateOnes|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1_Latch|ALT_INV_DATA\(3),
	datab => \ALT_INV_sub~input_o\,
	datac => \B1_Latch|ALT_INV_DATA\(1),
	datad => \B1_Latch|ALT_INV_DATA\(2),
	dataf => \A1_Latch|ALT_INV_DATA\(2),
	cin => \OperateOnes|Add0~10\,
	sumout => \OperateOnes|Add0~13_sumout\,
	cout => \OperateOnes|Add0~14\);

-- Location: LABCELL_X24_Y1_N3
\OperateOnes|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \OperateOnes|LessThan0~0_combout\ = ( \OperateOnes|Add0~13_sumout\ ) # ( !\OperateOnes|Add0~13_sumout\ & ( \OperateOnes|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \OperateOnes|ALT_INV_Add0~9_sumout\,
	dataf => \OperateOnes|ALT_INV_Add0~13_sumout\,
	combout => \OperateOnes|LessThan0~0_combout\);

-- Location: LABCELL_X10_Y1_N30
\A1_Latch|DATA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1_Latch|DATA\(3) = ( \a_save~input_o\ & ( \A1_Latch|DATA\(3) ) ) # ( !\a_save~input_o\ & ( \A1_Latch|DATA\(3) & ( \ones[3]~input_o\ ) ) ) # ( !\a_save~input_o\ & ( !\A1_Latch|DATA\(3) & ( \ones[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ones[3]~input_o\,
	datae => \ALT_INV_a_save~input_o\,
	dataf => \A1_Latch|ALT_INV_DATA\(3),
	combout => \A1_Latch|DATA\(3));

-- Location: LABCELL_X17_Y1_N54
\OperateOnes|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \OperateOnes|Mux0~0_combout\ = ( !\B1_Latch|DATA\(2) & ( !\B1_Latch|DATA\(3) & ( !\B1_Latch|DATA\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1_Latch|ALT_INV_DATA\(1),
	datae => \B1_Latch|ALT_INV_DATA\(2),
	dataf => \B1_Latch|ALT_INV_DATA\(3),
	combout => \OperateOnes|Mux0~0_combout\);

-- Location: LABCELL_X17_Y1_N42
\OperateOnes|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \OperateOnes|Add0~5_sumout\ = SUM(( (!\sub~input_o\ & (\B1_Latch|DATA\(3))) # (\sub~input_o\ & ((\OperateOnes|Mux0~0_combout\))) ) + ( \A1_Latch|DATA\(3) ) + ( \OperateOnes|Add0~14\ ))
-- \OperateOnes|Add0~6\ = CARRY(( (!\sub~input_o\ & (\B1_Latch|DATA\(3))) # (\sub~input_o\ & ((\OperateOnes|Mux0~0_combout\))) ) + ( \A1_Latch|DATA\(3) ) + ( \OperateOnes|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1_Latch|ALT_INV_DATA\(3),
	datab => \ALT_INV_sub~input_o\,
	datac => \B1_Latch|ALT_INV_DATA\(3),
	datad => \OperateOnes|ALT_INV_Mux0~0_combout\,
	cin => \OperateOnes|Add0~14\,
	sumout => \OperateOnes|Add0~5_sumout\,
	cout => \OperateOnes|Add0~6\);

-- Location: LABCELL_X17_Y1_N45
\OperateOnes|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \OperateOnes|Add0~17_sumout\ = SUM(( GND ) + ( GND ) + ( \OperateOnes|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \OperateOnes|Add0~6\,
	sumout => \OperateOnes|Add0~17_sumout\);

-- Location: LABCELL_X19_Y1_N30
\OperateTens|Add0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \OperateTens|Add0~22_cout\ = CARRY(( ((\OperateOnes|LessThan0~0_combout\ & \OperateOnes|Add0~5_sumout\)) # (\OperateOnes|Add0~17_sumout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \OperateOnes|ALT_INV_LessThan0~0_combout\,
	datac => \OperateOnes|ALT_INV_Add0~5_sumout\,
	datad => \OperateOnes|ALT_INV_Add0~17_sumout\,
	cin => GND,
	cout => \OperateTens|Add0~22_cout\);

-- Location: LABCELL_X19_Y1_N33
\OperateTens|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \OperateTens|Add0~17_sumout\ = SUM(( (!\sub~input_o\ & (\B10_Latch|DATA\(0))) # (\sub~input_o\ & ((!\OperateTens|Mux3~0_combout\))) ) + ( \A10_Latch|DATA\(0) ) + ( \OperateTens|Add0~22_cout\ ))
-- \OperateTens|Add0~18\ = CARRY(( (!\sub~input_o\ & (\B10_Latch|DATA\(0))) # (\sub~input_o\ & ((!\OperateTens|Mux3~0_combout\))) ) + ( \A10_Latch|DATA\(0) ) + ( \OperateTens|Add0~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sub~input_o\,
	datac => \B10_Latch|ALT_INV_DATA\(0),
	datad => \OperateTens|ALT_INV_Mux3~0_combout\,
	dataf => \A10_Latch|ALT_INV_DATA\(0),
	cin => \OperateTens|Add0~22_cout\,
	sumout => \OperateTens|Add0~17_sumout\,
	cout => \OperateTens|Add0~18\);

-- Location: LABCELL_X19_Y1_N36
\OperateTens|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \OperateTens|Add0~1_sumout\ = SUM(( \A10_Latch|DATA\(1) ) + ( (\B10_Latch|DATA\(1) & ((!\sub~input_o\) # (!\B10_Latch|DATA\(3)))) ) + ( \OperateTens|Add0~18\ ))
-- \OperateTens|Add0~2\ = CARRY(( \A10_Latch|DATA\(1) ) + ( (\B10_Latch|DATA\(1) & ((!\sub~input_o\) # (!\B10_Latch|DATA\(3)))) ) + ( \OperateTens|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110001000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sub~input_o\,
	datab => \B10_Latch|ALT_INV_DATA\(3),
	datad => \A10_Latch|ALT_INV_DATA\(1),
	dataf => \B10_Latch|ALT_INV_DATA\(1),
	cin => \OperateTens|Add0~18\,
	sumout => \OperateTens|Add0~1_sumout\,
	cout => \OperateTens|Add0~2\);

-- Location: LABCELL_X19_Y1_N39
\OperateTens|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \OperateTens|Add0~5_sumout\ = SUM(( \A10_Latch|DATA\(2) ) + ( (!\sub~input_o\ & (((\B10_Latch|DATA\(2))))) # (\sub~input_o\ & (!\B10_Latch|DATA\(3) & (!\B10_Latch|DATA\(1) $ (!\B10_Latch|DATA\(2))))) ) + ( \OperateTens|Add0~2\ ))
-- \OperateTens|Add0~6\ = CARRY(( \A10_Latch|DATA\(2) ) + ( (!\sub~input_o\ & (((\B10_Latch|DATA\(2))))) # (\sub~input_o\ & (!\B10_Latch|DATA\(3) & (!\B10_Latch|DATA\(1) $ (!\B10_Latch|DATA\(2))))) ) + ( \OperateTens|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110001010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sub~input_o\,
	datab => \B10_Latch|ALT_INV_DATA\(3),
	datac => \B10_Latch|ALT_INV_DATA\(1),
	datad => \A10_Latch|ALT_INV_DATA\(2),
	dataf => \B10_Latch|ALT_INV_DATA\(2),
	cin => \OperateTens|Add0~2\,
	sumout => \OperateTens|Add0~5_sumout\,
	cout => \OperateTens|Add0~6\);

-- Location: LABCELL_X19_Y1_N42
\OperateTens|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \OperateTens|Add0~9_sumout\ = SUM(( (!\sub~input_o\ & ((\B10_Latch|DATA\(3)))) # (\sub~input_o\ & (\OperateTens|Mux0~0_combout\)) ) + ( \A10_Latch|DATA\(3) ) + ( \OperateTens|Add0~6\ ))
-- \OperateTens|Add0~10\ = CARRY(( (!\sub~input_o\ & ((\B10_Latch|DATA\(3)))) # (\sub~input_o\ & (\OperateTens|Mux0~0_combout\)) ) + ( \A10_Latch|DATA\(3) ) + ( \OperateTens|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OperateTens|ALT_INV_Mux0~0_combout\,
	datab => \B10_Latch|ALT_INV_DATA\(3),
	datac => \ALT_INV_sub~input_o\,
	dataf => \A10_Latch|ALT_INV_DATA\(3),
	cin => \OperateTens|Add0~6\,
	sumout => \OperateTens|Add0~9_sumout\,
	cout => \OperateTens|Add0~10\);

-- Location: LABCELL_X19_Y1_N45
\OperateTens|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \OperateTens|Add0~13_sumout\ = SUM(( GND ) + ( GND ) + ( \OperateTens|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \OperateTens|Add0~10\,
	sumout => \OperateTens|Add0~13_sumout\);

-- Location: LABCELL_X20_Y1_N30
\OperateTens|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \OperateTens|LessThan0~0_combout\ = ( \OperateTens|Add0~5_sumout\ & ( (\OperateTens|Add0~13_sumout\) # (\OperateTens|Add0~9_sumout\) ) ) # ( !\OperateTens|Add0~5_sumout\ & ( ((\OperateTens|Add0~9_sumout\ & \OperateTens|Add0~1_sumout\)) # 
-- (\OperateTens|Add0~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \OperateTens|ALT_INV_Add0~9_sumout\,
	datac => \OperateTens|ALT_INV_Add0~13_sumout\,
	datad => \OperateTens|ALT_INV_Add0~1_sumout\,
	dataf => \OperateTens|ALT_INV_Add0~5_sumout\,
	combout => \OperateTens|LessThan0~0_combout\);

-- Location: LABCELL_X20_Y1_N9
\A1_Disp|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1_Disp|Mux6~0_combout\ = ( \A1_Latch|DATA\(1) & ( \A1_Latch|DATA\(0) & ( (!\A1_Latch|DATA\(3) & !\A1_Latch|DATA\(2)) ) ) ) # ( !\A1_Latch|DATA\(1) & ( \A1_Latch|DATA\(0) & ( !\A1_Latch|DATA\(3) $ (!\A1_Latch|DATA\(2)) ) ) ) # ( \A1_Latch|DATA\(1) & ( 
-- !\A1_Latch|DATA\(0) & ( !\A1_Latch|DATA\(3) ) ) ) # ( !\A1_Latch|DATA\(1) & ( !\A1_Latch|DATA\(0) & ( !\A1_Latch|DATA\(3) $ (!\A1_Latch|DATA\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101010101010101001011010010110101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1_Latch|ALT_INV_DATA\(3),
	datac => \A1_Latch|ALT_INV_DATA\(2),
	datae => \A1_Latch|ALT_INV_DATA\(1),
	dataf => \A1_Latch|ALT_INV_DATA\(0),
	combout => \A1_Disp|Mux6~0_combout\);

-- Location: LABCELL_X14_Y1_N0
\A1_Disp|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1_Disp|Mux5~0_combout\ = ( \A1_Latch|DATA\(3) & ( \A1_Latch|DATA\(0) & ( (\A1_Latch|DATA\(1)) # (\A1_Latch|DATA\(2)) ) ) ) # ( !\A1_Latch|DATA\(3) & ( \A1_Latch|DATA\(0) & ( (!\A1_Latch|DATA\(2)) # (\A1_Latch|DATA\(1)) ) ) ) # ( \A1_Latch|DATA\(3) & ( 
-- !\A1_Latch|DATA\(0) & ( (\A1_Latch|DATA\(1)) # (\A1_Latch|DATA\(2)) ) ) ) # ( !\A1_Latch|DATA\(3) & ( !\A1_Latch|DATA\(0) & ( (!\A1_Latch|DATA\(2) & \A1_Latch|DATA\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111111001111110011110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A1_Latch|ALT_INV_DATA\(2),
	datac => \A1_Latch|ALT_INV_DATA\(1),
	datae => \A1_Latch|ALT_INV_DATA\(3),
	dataf => \A1_Latch|ALT_INV_DATA\(0),
	combout => \A1_Disp|Mux5~0_combout\);

-- Location: LABCELL_X20_Y1_N12
\A1_Disp|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1_Disp|Mux4~0_combout\ = ( \A1_Latch|DATA\(1) & ( \A1_Latch|DATA\(0) ) ) # ( !\A1_Latch|DATA\(1) & ( \A1_Latch|DATA\(0) ) ) # ( \A1_Latch|DATA\(1) & ( !\A1_Latch|DATA\(0) & ( \A1_Latch|DATA\(3) ) ) ) # ( !\A1_Latch|DATA\(1) & ( !\A1_Latch|DATA\(0) & ( 
-- \A1_Latch|DATA\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A1_Latch|ALT_INV_DATA\(2),
	datac => \A1_Latch|ALT_INV_DATA\(3),
	datae => \A1_Latch|ALT_INV_DATA\(1),
	dataf => \A1_Latch|ALT_INV_DATA\(0),
	combout => \A1_Disp|Mux4~0_combout\);

-- Location: LABCELL_X14_Y1_N39
\A1_Disp|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1_Disp|Mux3~0_combout\ = ( \A1_Latch|DATA\(3) & ( \A1_Latch|DATA\(0) & ( (\A1_Latch|DATA\(2)) # (\A1_Latch|DATA\(1)) ) ) ) # ( !\A1_Latch|DATA\(3) & ( \A1_Latch|DATA\(0) & ( !\A1_Latch|DATA\(1) $ (\A1_Latch|DATA\(2)) ) ) ) # ( \A1_Latch|DATA\(3) & ( 
-- !\A1_Latch|DATA\(0) & ( (\A1_Latch|DATA\(2)) # (\A1_Latch|DATA\(1)) ) ) ) # ( !\A1_Latch|DATA\(3) & ( !\A1_Latch|DATA\(0) & ( (!\A1_Latch|DATA\(1) & \A1_Latch|DATA\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111110100101101001010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1_Latch|ALT_INV_DATA\(1),
	datac => \A1_Latch|ALT_INV_DATA\(2),
	datae => \A1_Latch|ALT_INV_DATA\(3),
	dataf => \A1_Latch|ALT_INV_DATA\(0),
	combout => \A1_Disp|Mux3~0_combout\);

-- Location: LABCELL_X14_Y1_N42
\A1_Disp|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1_Disp|Mux2~0_combout\ = ( \A1_Latch|DATA\(0) & ( (\A1_Latch|DATA\(3) & ((\A1_Latch|DATA\(2)) # (\A1_Latch|DATA\(1)))) ) ) # ( !\A1_Latch|DATA\(0) & ( (!\A1_Latch|DATA\(2) & (\A1_Latch|DATA\(1))) # (\A1_Latch|DATA\(2) & ((\A1_Latch|DATA\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100000000011101110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1_Latch|ALT_INV_DATA\(1),
	datab => \A1_Latch|ALT_INV_DATA\(2),
	datad => \A1_Latch|ALT_INV_DATA\(3),
	dataf => \A1_Latch|ALT_INV_DATA\(0),
	combout => \A1_Disp|Mux2~0_combout\);

-- Location: LABCELL_X14_Y1_N45
\A1_Disp|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1_Disp|Mux1~0_combout\ = ( \A1_Latch|DATA\(0) & ( (!\A1_Latch|DATA\(1) & (\A1_Latch|DATA\(2))) # (\A1_Latch|DATA\(1) & ((\A1_Latch|DATA\(3)))) ) ) # ( !\A1_Latch|DATA\(0) & ( (!\A1_Latch|DATA\(1) & (\A1_Latch|DATA\(2) & \A1_Latch|DATA\(3))) # 
-- (\A1_Latch|DATA\(1) & ((\A1_Latch|DATA\(3)) # (\A1_Latch|DATA\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1_Latch|ALT_INV_DATA\(1),
	datab => \A1_Latch|ALT_INV_DATA\(2),
	datac => \A1_Latch|ALT_INV_DATA\(3),
	dataf => \A1_Latch|ALT_INV_DATA\(0),
	combout => \A1_Disp|Mux1~0_combout\);

-- Location: LABCELL_X20_Y1_N51
\A1_Disp|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1_Disp|Mux0~0_combout\ = ( \A1_Latch|DATA\(1) & ( \A1_Latch|DATA\(0) & ( \A1_Latch|DATA\(3) ) ) ) # ( !\A1_Latch|DATA\(1) & ( \A1_Latch|DATA\(0) & ( !\A1_Latch|DATA\(3) $ (\A1_Latch|DATA\(2)) ) ) ) # ( \A1_Latch|DATA\(1) & ( !\A1_Latch|DATA\(0) & ( 
-- \A1_Latch|DATA\(3) ) ) ) # ( !\A1_Latch|DATA\(1) & ( !\A1_Latch|DATA\(0) & ( \A1_Latch|DATA\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010110100101101001010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1_Latch|ALT_INV_DATA\(3),
	datac => \A1_Latch|ALT_INV_DATA\(2),
	datae => \A1_Latch|ALT_INV_DATA\(1),
	dataf => \A1_Latch|ALT_INV_DATA\(0),
	combout => \A1_Disp|Mux0~0_combout\);

-- Location: LABCELL_X24_Y2_N0
\A10_Disp|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A10_Disp|Mux6~0_combout\ = ( !\A10_Latch|DATA\(1) & ( \A10_Latch|DATA\(3) & ( !\A10_Latch|DATA\(2) ) ) ) # ( \A10_Latch|DATA\(1) & ( !\A10_Latch|DATA\(3) & ( (!\A10_Latch|DATA\(0)) # (!\A10_Latch|DATA\(2)) ) ) ) # ( !\A10_Latch|DATA\(1) & ( 
-- !\A10_Latch|DATA\(3) & ( \A10_Latch|DATA\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111110101111101011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A10_Latch|ALT_INV_DATA\(0),
	datac => \A10_Latch|ALT_INV_DATA\(2),
	datae => \A10_Latch|ALT_INV_DATA\(1),
	dataf => \A10_Latch|ALT_INV_DATA\(3),
	combout => \A10_Disp|Mux6~0_combout\);

-- Location: LABCELL_X24_Y2_N39
\A10_Disp|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A10_Disp|Mux5~0_combout\ = ( \A10_Latch|DATA\(3) & ( (\A10_Latch|DATA\(2)) # (\A10_Latch|DATA\(1)) ) ) # ( !\A10_Latch|DATA\(3) & ( (!\A10_Latch|DATA\(0) & (\A10_Latch|DATA\(1) & !\A10_Latch|DATA\(2))) # (\A10_Latch|DATA\(0) & ((!\A10_Latch|DATA\(2)) # 
-- (\A10_Latch|DATA\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A10_Latch|ALT_INV_DATA\(0),
	datab => \A10_Latch|ALT_INV_DATA\(1),
	datac => \A10_Latch|ALT_INV_DATA\(2),
	dataf => \A10_Latch|ALT_INV_DATA\(3),
	combout => \A10_Disp|Mux5~0_combout\);

-- Location: LABCELL_X24_Y2_N15
\A10_Disp|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A10_Disp|Mux4~0_combout\ = ( \A10_Latch|DATA\(3) & ( ((\A10_Latch|DATA\(2)) # (\A10_Latch|DATA\(1))) # (\A10_Latch|DATA\(0)) ) ) # ( !\A10_Latch|DATA\(3) & ( ((!\A10_Latch|DATA\(1) & \A10_Latch|DATA\(2))) # (\A10_Latch|DATA\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A10_Latch|ALT_INV_DATA\(0),
	datab => \A10_Latch|ALT_INV_DATA\(1),
	datac => \A10_Latch|ALT_INV_DATA\(2),
	dataf => \A10_Latch|ALT_INV_DATA\(3),
	combout => \A10_Disp|Mux4~0_combout\);

-- Location: LABCELL_X24_Y2_N51
\A10_Disp|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A10_Disp|Mux3~0_combout\ = ( \A10_Latch|DATA\(1) & ( \A10_Latch|DATA\(3) ) ) # ( !\A10_Latch|DATA\(1) & ( \A10_Latch|DATA\(3) & ( \A10_Latch|DATA\(2) ) ) ) # ( \A10_Latch|DATA\(1) & ( !\A10_Latch|DATA\(3) & ( (\A10_Latch|DATA\(2) & \A10_Latch|DATA\(0)) ) 
-- ) ) # ( !\A10_Latch|DATA\(1) & ( !\A10_Latch|DATA\(3) & ( !\A10_Latch|DATA\(2) $ (!\A10_Latch|DATA\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010000000000101010101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A10_Latch|ALT_INV_DATA\(2),
	datad => \A10_Latch|ALT_INV_DATA\(0),
	datae => \A10_Latch|ALT_INV_DATA\(1),
	dataf => \A10_Latch|ALT_INV_DATA\(3),
	combout => \A10_Disp|Mux3~0_combout\);

-- Location: LABCELL_X24_Y2_N36
\A10_Disp|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A10_Disp|Mux2~0_combout\ = ( \A10_Latch|DATA\(3) & ( (\A10_Latch|DATA\(2)) # (\A10_Latch|DATA\(1)) ) ) # ( !\A10_Latch|DATA\(3) & ( (\A10_Latch|DATA\(1) & (!\A10_Latch|DATA\(0) & !\A10_Latch|DATA\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A10_Latch|ALT_INV_DATA\(1),
	datac => \A10_Latch|ALT_INV_DATA\(0),
	datad => \A10_Latch|ALT_INV_DATA\(2),
	dataf => \A10_Latch|ALT_INV_DATA\(3),
	combout => \A10_Disp|Mux2~0_combout\);

-- Location: LABCELL_X24_Y2_N12
\A10_Disp|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A10_Disp|Mux1~0_combout\ = ( \A10_Latch|DATA\(3) & ( (\A10_Latch|DATA\(2)) # (\A10_Latch|DATA\(1)) ) ) # ( !\A10_Latch|DATA\(3) & ( (\A10_Latch|DATA\(2) & (!\A10_Latch|DATA\(0) $ (!\A10_Latch|DATA\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A10_Latch|ALT_INV_DATA\(0),
	datab => \A10_Latch|ALT_INV_DATA\(1),
	datac => \A10_Latch|ALT_INV_DATA\(2),
	dataf => \A10_Latch|ALT_INV_DATA\(3),
	combout => \A10_Disp|Mux1~0_combout\);

-- Location: LABCELL_X24_Y2_N24
\A10_Disp|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A10_Disp|Mux0~0_combout\ = ( \A10_Latch|DATA\(1) & ( \A10_Latch|DATA\(3) ) ) # ( !\A10_Latch|DATA\(1) & ( \A10_Latch|DATA\(3) & ( \A10_Latch|DATA\(2) ) ) ) # ( !\A10_Latch|DATA\(1) & ( !\A10_Latch|DATA\(3) & ( !\A10_Latch|DATA\(0) $ 
-- (!\A10_Latch|DATA\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A10_Latch|ALT_INV_DATA\(0),
	datac => \A10_Latch|ALT_INV_DATA\(2),
	datae => \A10_Latch|ALT_INV_DATA\(1),
	dataf => \A10_Latch|ALT_INV_DATA\(3),
	combout => \A10_Disp|Mux0~0_combout\);

-- Location: LABCELL_X24_Y1_N30
\B1_Disp|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1_Disp|Mux6~0_combout\ = ( \B1_Latch|DATA\(3) & ( (!\B1_Latch|DATA\(1) & !\B1_Latch|DATA\(2)) ) ) # ( !\B1_Latch|DATA\(3) & ( (!\B1_Latch|DATA\(1) & ((\B1_Latch|DATA\(2)))) # (\B1_Latch|DATA\(1) & ((!\B1_Latch|DATA\(0)) # (!\B1_Latch|DATA\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111100111100000000000000001111111111001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1_Latch|ALT_INV_DATA\(0),
	datac => \B1_Latch|ALT_INV_DATA\(1),
	datad => \B1_Latch|ALT_INV_DATA\(2),
	datae => \B1_Latch|ALT_INV_DATA\(3),
	combout => \B1_Disp|Mux6~0_combout\);

-- Location: LABCELL_X24_Y1_N9
\B1_Disp|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1_Disp|Mux5~0_combout\ = ( \B1_Latch|DATA\(3) & ( (\B1_Latch|DATA\(2)) # (\B1_Latch|DATA\(1)) ) ) # ( !\B1_Latch|DATA\(3) & ( (!\B1_Latch|DATA\(1) & (!\B1_Latch|DATA\(2) & \B1_Latch|DATA\(0))) # (\B1_Latch|DATA\(1) & ((!\B1_Latch|DATA\(2)) # 
-- (\B1_Latch|DATA\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101001101011101110111011101001101010011010111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1_Latch|ALT_INV_DATA\(1),
	datab => \B1_Latch|ALT_INV_DATA\(2),
	datac => \B1_Latch|ALT_INV_DATA\(0),
	datae => \B1_Latch|ALT_INV_DATA\(3),
	combout => \B1_Disp|Mux5~0_combout\);

-- Location: LABCELL_X24_Y1_N45
\B1_Disp|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1_Disp|Mux4~0_combout\ = ( \B1_Latch|DATA\(3) & ( ((\B1_Latch|DATA\(0)) # (\B1_Latch|DATA\(2))) # (\B1_Latch|DATA\(1)) ) ) # ( !\B1_Latch|DATA\(3) & ( ((!\B1_Latch|DATA\(1) & \B1_Latch|DATA\(2))) # (\B1_Latch|DATA\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111011111110111111100101111001011110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1_Latch|ALT_INV_DATA\(1),
	datab => \B1_Latch|ALT_INV_DATA\(2),
	datac => \B1_Latch|ALT_INV_DATA\(0),
	datae => \B1_Latch|ALT_INV_DATA\(3),
	combout => \B1_Disp|Mux4~0_combout\);

-- Location: LABCELL_X17_Y1_N0
\B1_Disp|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1_Disp|Mux3~0_combout\ = ( \B1_Latch|DATA\(3) & ( (\B1_Latch|DATA\(1)) # (\B1_Latch|DATA\(2)) ) ) # ( !\B1_Latch|DATA\(3) & ( (!\B1_Latch|DATA\(0) & (\B1_Latch|DATA\(2) & !\B1_Latch|DATA\(1))) # (\B1_Latch|DATA\(0) & (!\B1_Latch|DATA\(2) $ 
-- (\B1_Latch|DATA\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001011000010110000100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1_Latch|ALT_INV_DATA\(0),
	datab => \B1_Latch|ALT_INV_DATA\(2),
	datac => \B1_Latch|ALT_INV_DATA\(1),
	dataf => \B1_Latch|ALT_INV_DATA\(3),
	combout => \B1_Disp|Mux3~0_combout\);

-- Location: LABCELL_X17_Y1_N6
\B1_Disp|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1_Disp|Mux2~0_combout\ = ( \B1_Latch|DATA\(0) & ( (\B1_Latch|DATA\(3) & ((\B1_Latch|DATA\(2)) # (\B1_Latch|DATA\(1)))) ) ) # ( !\B1_Latch|DATA\(0) & ( (!\B1_Latch|DATA\(2) & (\B1_Latch|DATA\(1))) # (\B1_Latch|DATA\(2) & ((\B1_Latch|DATA\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111000001110000011101000111010001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1_Latch|ALT_INV_DATA\(1),
	datab => \B1_Latch|ALT_INV_DATA\(2),
	datac => \B1_Latch|ALT_INV_DATA\(3),
	datae => \B1_Latch|ALT_INV_DATA\(0),
	combout => \B1_Disp|Mux2~0_combout\);

-- Location: LABCELL_X17_Y1_N3
\B1_Disp|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1_Disp|Mux1~0_combout\ = ( \B1_Latch|DATA\(3) & ( (\B1_Latch|DATA\(1)) # (\B1_Latch|DATA\(2)) ) ) # ( !\B1_Latch|DATA\(3) & ( (\B1_Latch|DATA\(2) & (!\B1_Latch|DATA\(0) $ (!\B1_Latch|DATA\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1_Latch|ALT_INV_DATA\(0),
	datab => \B1_Latch|ALT_INV_DATA\(2),
	datac => \B1_Latch|ALT_INV_DATA\(1),
	dataf => \B1_Latch|ALT_INV_DATA\(3),
	combout => \B1_Disp|Mux1~0_combout\);

-- Location: LABCELL_X17_Y1_N12
\B1_Disp|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1_Disp|Mux0~0_combout\ = ( \B1_Latch|DATA\(0) & ( !\B1_Latch|DATA\(3) $ (((\B1_Latch|DATA\(2)) # (\B1_Latch|DATA\(1)))) ) ) # ( !\B1_Latch|DATA\(0) & ( (!\B1_Latch|DATA\(1) & (\B1_Latch|DATA\(2))) # (\B1_Latch|DATA\(1) & ((\B1_Latch|DATA\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111100001111000011100100111001001111000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1_Latch|ALT_INV_DATA\(1),
	datab => \B1_Latch|ALT_INV_DATA\(2),
	datac => \B1_Latch|ALT_INV_DATA\(3),
	datae => \B1_Latch|ALT_INV_DATA\(0),
	combout => \B1_Disp|Mux0~0_combout\);

-- Location: LABCELL_X20_Y1_N24
\B10_Disp|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B10_Disp|Mux6~0_combout\ = ( \B10_Latch|DATA\(1) & ( (!\B10_Latch|DATA\(3) & ((!\B10_Latch|DATA\(2)) # (!\B10_Latch|DATA\(0)))) ) ) # ( !\B10_Latch|DATA\(1) & ( !\B10_Latch|DATA\(2) $ (!\B10_Latch|DATA\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011110000110000001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B10_Latch|ALT_INV_DATA\(2),
	datac => \B10_Latch|ALT_INV_DATA\(3),
	datad => \B10_Latch|ALT_INV_DATA\(0),
	dataf => \B10_Latch|ALT_INV_DATA\(1),
	combout => \B10_Disp|Mux6~0_combout\);

-- Location: LABCELL_X20_Y1_N27
\B10_Disp|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B10_Disp|Mux5~0_combout\ = ( \B10_Latch|DATA\(1) & ( (!\B10_Latch|DATA\(2)) # ((\B10_Latch|DATA\(3)) # (\B10_Latch|DATA\(0))) ) ) # ( !\B10_Latch|DATA\(1) & ( (!\B10_Latch|DATA\(2) & (\B10_Latch|DATA\(0) & !\B10_Latch|DATA\(3))) # (\B10_Latch|DATA\(2) & 
-- ((\B10_Latch|DATA\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110011000011000011001111001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B10_Latch|ALT_INV_DATA\(2),
	datac => \B10_Latch|ALT_INV_DATA\(0),
	datad => \B10_Latch|ALT_INV_DATA\(3),
	dataf => \B10_Latch|ALT_INV_DATA\(1),
	combout => \B10_Disp|Mux5~0_combout\);

-- Location: LABCELL_X20_Y1_N0
\B10_Disp|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B10_Disp|Mux4~0_combout\ = ( \B10_Latch|DATA\(1) & ( (\B10_Latch|DATA\(3)) # (\B10_Latch|DATA\(0)) ) ) # ( !\B10_Latch|DATA\(1) & ( (\B10_Latch|DATA\(0)) # (\B10_Latch|DATA\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B10_Latch|ALT_INV_DATA\(2),
	datab => \B10_Latch|ALT_INV_DATA\(0),
	datad => \B10_Latch|ALT_INV_DATA\(3),
	dataf => \B10_Latch|ALT_INV_DATA\(1),
	combout => \B10_Disp|Mux4~0_combout\);

-- Location: LABCELL_X20_Y1_N3
\B10_Disp|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B10_Disp|Mux3~0_combout\ = ( \B10_Latch|DATA\(1) & ( ((\B10_Latch|DATA\(0) & \B10_Latch|DATA\(2))) # (\B10_Latch|DATA\(3)) ) ) # ( !\B10_Latch|DATA\(1) & ( !\B10_Latch|DATA\(2) $ (((!\B10_Latch|DATA\(0)) # (\B10_Latch|DATA\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000001111001111000000111100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B10_Latch|ALT_INV_DATA\(0),
	datac => \B10_Latch|ALT_INV_DATA\(2),
	datad => \B10_Latch|ALT_INV_DATA\(3),
	dataf => \B10_Latch|ALT_INV_DATA\(1),
	combout => \B10_Disp|Mux3~0_combout\);

-- Location: LABCELL_X21_Y1_N30
\B10_Disp|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B10_Disp|Mux2~0_combout\ = ( \B10_Latch|DATA\(1) & ( ((!\B10_Latch|DATA\(0) & !\B10_Latch|DATA\(2))) # (\B10_Latch|DATA\(3)) ) ) # ( !\B10_Latch|DATA\(1) & ( (\B10_Latch|DATA\(3) & \B10_Latch|DATA\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111110011001100111111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B10_Latch|ALT_INV_DATA\(3),
	datac => \B10_Latch|ALT_INV_DATA\(0),
	datad => \B10_Latch|ALT_INV_DATA\(2),
	dataf => \B10_Latch|ALT_INV_DATA\(1),
	combout => \B10_Disp|Mux2~0_combout\);

-- Location: LABCELL_X19_Y1_N3
\B10_Disp|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B10_Disp|Mux1~0_combout\ = ( \B10_Latch|DATA\(1) & ( ((\B10_Latch|DATA\(2) & !\B10_Latch|DATA\(0))) # (\B10_Latch|DATA\(3)) ) ) # ( !\B10_Latch|DATA\(1) & ( (\B10_Latch|DATA\(2) & ((\B10_Latch|DATA\(0)) # (\B10_Latch|DATA\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100111111001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B10_Latch|ALT_INV_DATA\(3),
	datac => \B10_Latch|ALT_INV_DATA\(2),
	datad => \B10_Latch|ALT_INV_DATA\(0),
	dataf => \B10_Latch|ALT_INV_DATA\(1),
	combout => \B10_Disp|Mux1~0_combout\);

-- Location: LABCELL_X19_Y1_N6
\B10_Disp|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B10_Disp|Mux0~0_combout\ = ( \B10_Latch|DATA\(2) & ( \B10_Latch|DATA\(1) & ( \B10_Latch|DATA\(3) ) ) ) # ( !\B10_Latch|DATA\(2) & ( \B10_Latch|DATA\(1) & ( \B10_Latch|DATA\(3) ) ) ) # ( \B10_Latch|DATA\(2) & ( !\B10_Latch|DATA\(1) & ( 
-- (!\B10_Latch|DATA\(0)) # (\B10_Latch|DATA\(3)) ) ) ) # ( !\B10_Latch|DATA\(2) & ( !\B10_Latch|DATA\(1) & ( (!\B10_Latch|DATA\(3) & \B10_Latch|DATA\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100111111110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B10_Latch|ALT_INV_DATA\(3),
	datad => \B10_Latch|ALT_INV_DATA\(0),
	datae => \B10_Latch|ALT_INV_DATA\(2),
	dataf => \B10_Latch|ALT_INV_DATA\(1),
	combout => \B10_Disp|Mux0~0_combout\);

-- Location: LABCELL_X24_Y1_N0
\OperateOnes|sum[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \OperateOnes|sum[3]~2_combout\ = (!\OperateOnes|Add0~5_sumout\ & (\OperateOnes|Add0~17_sumout\ & \OperateOnes|LessThan0~0_combout\)) # (\OperateOnes|Add0~5_sumout\ & ((!\OperateOnes|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001010010101010000101001010101000010100101010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OperateOnes|ALT_INV_Add0~5_sumout\,
	datac => \OperateOnes|ALT_INV_Add0~17_sumout\,
	datad => \OperateOnes|ALT_INV_LessThan0~0_combout\,
	combout => \OperateOnes|sum[3]~2_combout\);

-- Location: LABCELL_X24_Y1_N54
\OperateOnes|sum[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \OperateOnes|sum[2]~1_combout\ = ( \OperateOnes|Add0~9_sumout\ & ( \OperateOnes|Add0~5_sumout\ & ( \OperateOnes|Add0~13_sumout\ ) ) ) # ( !\OperateOnes|Add0~9_sumout\ & ( \OperateOnes|Add0~5_sumout\ & ( (!\OperateOnes|Add0~13_sumout\ & 
-- \OperateOnes|Add0~17_sumout\) ) ) ) # ( \OperateOnes|Add0~9_sumout\ & ( !\OperateOnes|Add0~5_sumout\ & ( \OperateOnes|Add0~13_sumout\ ) ) ) # ( !\OperateOnes|Add0~9_sumout\ & ( !\OperateOnes|Add0~5_sumout\ & ( !\OperateOnes|Add0~13_sumout\ $ 
-- (!\OperateOnes|Add0~17_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010101010101010100001010000010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OperateOnes|ALT_INV_Add0~13_sumout\,
	datac => \OperateOnes|ALT_INV_Add0~17_sumout\,
	datae => \OperateOnes|ALT_INV_Add0~9_sumout\,
	dataf => \OperateOnes|ALT_INV_Add0~5_sumout\,
	combout => \OperateOnes|sum[2]~1_combout\);

-- Location: LABCELL_X24_Y1_N51
\OperateOnes|sum[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \OperateOnes|sum[1]~0_combout\ = ( !\OperateOnes|Add0~9_sumout\ & ( \OperateOnes|Add0~5_sumout\ & ( (\OperateOnes|Add0~13_sumout\) # (\OperateOnes|Add0~17_sumout\) ) ) ) # ( \OperateOnes|Add0~9_sumout\ & ( !\OperateOnes|Add0~5_sumout\ & ( 
-- !\OperateOnes|Add0~17_sumout\ ) ) ) # ( !\OperateOnes|Add0~9_sumout\ & ( !\OperateOnes|Add0~5_sumout\ & ( \OperateOnes|Add0~17_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101001010101111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OperateOnes|ALT_INV_Add0~17_sumout\,
	datad => \OperateOnes|ALT_INV_Add0~13_sumout\,
	datae => \OperateOnes|ALT_INV_Add0~9_sumout\,
	dataf => \OperateOnes|ALT_INV_Add0~5_sumout\,
	combout => \OperateOnes|sum[1]~0_combout\);

-- Location: LABCELL_X24_Y2_N33
\Ans1_Disp|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ans1_Disp|Mux6~0_combout\ = ( \OperateOnes|sum[1]~0_combout\ & ( (!\OperateOnes|sum[3]~2_combout\ & ((!\OperateOnes|sum[2]~1_combout\) # (!\OperateOnes|Add0~1_sumout\))) ) ) # ( !\OperateOnes|sum[1]~0_combout\ & ( !\OperateOnes|sum[3]~2_combout\ $ 
-- (!\OperateOnes|sum[2]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010101010101000001010101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OperateOnes|ALT_INV_sum[3]~2_combout\,
	datac => \OperateOnes|ALT_INV_sum[2]~1_combout\,
	datad => \OperateOnes|ALT_INV_Add0~1_sumout\,
	dataf => \OperateOnes|ALT_INV_sum[1]~0_combout\,
	combout => \Ans1_Disp|Mux6~0_combout\);

-- Location: LABCELL_X24_Y2_N30
\Ans1_Disp|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ans1_Disp|Mux5~0_combout\ = ( \OperateOnes|sum[1]~0_combout\ & ( ((!\OperateOnes|sum[2]~1_combout\) # (\OperateOnes|Add0~1_sumout\)) # (\OperateOnes|sum[3]~2_combout\) ) ) # ( !\OperateOnes|sum[1]~0_combout\ & ( (!\OperateOnes|sum[3]~2_combout\ & 
-- (!\OperateOnes|sum[2]~1_combout\ & \OperateOnes|Add0~1_sumout\)) # (\OperateOnes|sum[3]~2_combout\ & (\OperateOnes|sum[2]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110011001000100011001100111011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OperateOnes|ALT_INV_sum[3]~2_combout\,
	datab => \OperateOnes|ALT_INV_sum[2]~1_combout\,
	datad => \OperateOnes|ALT_INV_Add0~1_sumout\,
	dataf => \OperateOnes|ALT_INV_sum[1]~0_combout\,
	combout => \Ans1_Disp|Mux5~0_combout\);

-- Location: LABCELL_X24_Y2_N6
\Ans1_Disp|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ans1_Disp|Mux4~0_combout\ = ( \OperateOnes|sum[1]~0_combout\ & ( (\OperateOnes|Add0~1_sumout\) # (\OperateOnes|sum[3]~2_combout\) ) ) # ( !\OperateOnes|sum[1]~0_combout\ & ( (\OperateOnes|Add0~1_sumout\) # (\OperateOnes|sum[2]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \OperateOnes|ALT_INV_sum[2]~1_combout\,
	datac => \OperateOnes|ALT_INV_sum[3]~2_combout\,
	datad => \OperateOnes|ALT_INV_Add0~1_sumout\,
	dataf => \OperateOnes|ALT_INV_sum[1]~0_combout\,
	combout => \Ans1_Disp|Mux4~0_combout\);

-- Location: LABCELL_X24_Y2_N9
\Ans1_Disp|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ans1_Disp|Mux3~0_combout\ = ( \OperateOnes|sum[1]~0_combout\ & ( ((\OperateOnes|sum[2]~1_combout\ & \OperateOnes|Add0~1_sumout\)) # (\OperateOnes|sum[3]~2_combout\) ) ) # ( !\OperateOnes|sum[1]~0_combout\ & ( !\OperateOnes|sum[2]~1_combout\ $ 
-- (((!\OperateOnes|Add0~1_sumout\) # (\OperateOnes|sum[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OperateOnes|ALT_INV_sum[3]~2_combout\,
	datab => \OperateOnes|ALT_INV_sum[2]~1_combout\,
	datac => \OperateOnes|ALT_INV_Add0~1_sumout\,
	dataf => \OperateOnes|ALT_INV_sum[1]~0_combout\,
	combout => \Ans1_Disp|Mux3~0_combout\);

-- Location: LABCELL_X24_Y2_N42
\Ans1_Disp|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ans1_Disp|Mux2~0_combout\ = ( \OperateOnes|sum[1]~0_combout\ & ( ((!\OperateOnes|sum[2]~1_combout\ & !\OperateOnes|Add0~1_sumout\)) # (\OperateOnes|sum[3]~2_combout\) ) ) # ( !\OperateOnes|sum[1]~0_combout\ & ( (\OperateOnes|sum[2]~1_combout\ & 
-- \OperateOnes|sum[3]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111000011111100111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \OperateOnes|ALT_INV_sum[2]~1_combout\,
	datac => \OperateOnes|ALT_INV_sum[3]~2_combout\,
	datad => \OperateOnes|ALT_INV_Add0~1_sumout\,
	dataf => \OperateOnes|ALT_INV_sum[1]~0_combout\,
	combout => \Ans1_Disp|Mux2~0_combout\);

-- Location: LABCELL_X24_Y2_N45
\Ans1_Disp|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ans1_Disp|Mux1~0_combout\ = ( \OperateOnes|sum[1]~0_combout\ & ( ((\OperateOnes|sum[2]~1_combout\ & !\OperateOnes|Add0~1_sumout\)) # (\OperateOnes|sum[3]~2_combout\) ) ) # ( !\OperateOnes|sum[1]~0_combout\ & ( (\OperateOnes|sum[2]~1_combout\ & 
-- ((\OperateOnes|Add0~1_sumout\) # (\OperateOnes|sum[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001101110101011101010111010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OperateOnes|ALT_INV_sum[3]~2_combout\,
	datab => \OperateOnes|ALT_INV_sum[2]~1_combout\,
	datac => \OperateOnes|ALT_INV_Add0~1_sumout\,
	dataf => \OperateOnes|ALT_INV_sum[1]~0_combout\,
	combout => \Ans1_Disp|Mux1~0_combout\);

-- Location: LABCELL_X24_Y2_N18
\Ans1_Disp|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ans1_Disp|Mux0~0_combout\ = ( \OperateOnes|Add0~1_sumout\ & ( !\OperateOnes|sum[3]~2_combout\ $ (((\OperateOnes|sum[1]~0_combout\) # (\OperateOnes|sum[2]~1_combout\))) ) ) # ( !\OperateOnes|Add0~1_sumout\ & ( (!\OperateOnes|sum[1]~0_combout\ & 
-- (\OperateOnes|sum[2]~1_combout\)) # (\OperateOnes|sum[1]~0_combout\ & ((\OperateOnes|sum[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111111000000001111111100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \OperateOnes|ALT_INV_sum[2]~1_combout\,
	datac => \OperateOnes|ALT_INV_sum[1]~0_combout\,
	datad => \OperateOnes|ALT_INV_sum[3]~2_combout\,
	dataf => \OperateOnes|ALT_INV_Add0~1_sumout\,
	combout => \Ans1_Disp|Mux0~0_combout\);

-- Location: LABCELL_X19_Y1_N12
\OperateTens|sum[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \OperateTens|sum[2]~1_combout\ = ( \OperateTens|Add0~5_sumout\ & ( ((!\OperateTens|Add0~9_sumout\ & !\OperateTens|Add0~13_sumout\)) # (\OperateTens|Add0~1_sumout\) ) ) # ( !\OperateTens|Add0~5_sumout\ & ( (!\OperateTens|Add0~1_sumout\ & 
-- \OperateTens|Add0~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101011011101010101011101110101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OperateTens|ALT_INV_Add0~1_sumout\,
	datab => \OperateTens|ALT_INV_Add0~9_sumout\,
	datad => \OperateTens|ALT_INV_Add0~13_sumout\,
	dataf => \OperateTens|ALT_INV_Add0~5_sumout\,
	combout => \OperateTens|sum[2]~1_combout\);

-- Location: LABCELL_X19_Y1_N15
\OperateTens|sum[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \OperateTens|sum[3]~2_combout\ = ( \OperateTens|Add0~5_sumout\ & ( (!\OperateTens|Add0~9_sumout\ & \OperateTens|Add0~13_sumout\) ) ) # ( !\OperateTens|Add0~5_sumout\ & ( (!\OperateTens|Add0~1_sumout\ & (\OperateTens|Add0~9_sumout\)) # 
-- (\OperateTens|Add0~1_sumout\ & (!\OperateTens|Add0~9_sumout\ & \OperateTens|Add0~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011000100110001001100010011000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OperateTens|ALT_INV_Add0~1_sumout\,
	datab => \OperateTens|ALT_INV_Add0~9_sumout\,
	datac => \OperateTens|ALT_INV_Add0~13_sumout\,
	dataf => \OperateTens|ALT_INV_Add0~5_sumout\,
	combout => \OperateTens|sum[3]~2_combout\);

-- Location: LABCELL_X20_Y1_N33
\OperateTens|sum[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \OperateTens|sum[1]~0_combout\ = ( \OperateTens|Add0~5_sumout\ & ( !\OperateTens|Add0~1_sumout\ $ (((!\OperateTens|Add0~13_sumout\ & !\OperateTens|Add0~9_sumout\))) ) ) # ( !\OperateTens|Add0~5_sumout\ & ( (!\OperateTens|Add0~13_sumout\ & 
-- (!\OperateTens|Add0~9_sumout\ & \OperateTens|Add0~1_sumout\)) # (\OperateTens|Add0~13_sumout\ & ((!\OperateTens|Add0~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100001011000010110000101100001111000011110000111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OperateTens|ALT_INV_Add0~13_sumout\,
	datab => \OperateTens|ALT_INV_Add0~9_sumout\,
	datac => \OperateTens|ALT_INV_Add0~1_sumout\,
	dataf => \OperateTens|ALT_INV_Add0~5_sumout\,
	combout => \OperateTens|sum[1]~0_combout\);

-- Location: LABCELL_X19_Y1_N48
\Ans10_Disp|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ans10_Disp|Mux6~0_combout\ = ( \OperateTens|sum[1]~0_combout\ & ( (!\OperateTens|sum[3]~2_combout\ & ((!\OperateTens|Add0~17_sumout\) # (!\OperateTens|sum[2]~1_combout\))) ) ) # ( !\OperateTens|sum[1]~0_combout\ & ( !\OperateTens|sum[2]~1_combout\ $ 
-- (!\OperateTens|sum[3]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OperateTens|ALT_INV_Add0~17_sumout\,
	datab => \OperateTens|ALT_INV_sum[2]~1_combout\,
	datac => \OperateTens|ALT_INV_sum[3]~2_combout\,
	dataf => \OperateTens|ALT_INV_sum[1]~0_combout\,
	combout => \Ans10_Disp|Mux6~0_combout\);

-- Location: LABCELL_X24_Y2_N21
\Ans10_Disp|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ans10_Disp|Mux5~0_combout\ = ( \OperateTens|sum[1]~0_combout\ & ( ((!\OperateTens|sum[2]~1_combout\) # (\OperateTens|Add0~17_sumout\)) # (\OperateTens|sum[3]~2_combout\) ) ) # ( !\OperateTens|sum[1]~0_combout\ & ( (!\OperateTens|sum[3]~2_combout\ & 
-- (\OperateTens|Add0~17_sumout\ & !\OperateTens|sum[2]~1_combout\)) # (\OperateTens|sum[3]~2_combout\ & ((\OperateTens|sum[2]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010101000010100101010111111111010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OperateTens|ALT_INV_sum[3]~2_combout\,
	datac => \OperateTens|ALT_INV_Add0~17_sumout\,
	datad => \OperateTens|ALT_INV_sum[2]~1_combout\,
	dataf => \OperateTens|ALT_INV_sum[1]~0_combout\,
	combout => \Ans10_Disp|Mux5~0_combout\);

-- Location: LABCELL_X19_Y1_N54
\Ans10_Disp|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ans10_Disp|Mux4~0_combout\ = ( \OperateTens|sum[1]~0_combout\ & ( (\OperateTens|sum[3]~2_combout\) # (\OperateTens|Add0~17_sumout\) ) ) # ( !\OperateTens|sum[1]~0_combout\ & ( (\OperateTens|sum[2]~1_combout\) # (\OperateTens|Add0~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OperateTens|ALT_INV_Add0~17_sumout\,
	datab => \OperateTens|ALT_INV_sum[2]~1_combout\,
	datac => \OperateTens|ALT_INV_sum[3]~2_combout\,
	dataf => \OperateTens|ALT_INV_sum[1]~0_combout\,
	combout => \Ans10_Disp|Mux4~0_combout\);

-- Location: LABCELL_X24_Y2_N54
\Ans10_Disp|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ans10_Disp|Mux3~0_combout\ = ( \OperateTens|sum[1]~0_combout\ & ( ((\OperateTens|Add0~17_sumout\ & \OperateTens|sum[2]~1_combout\)) # (\OperateTens|sum[3]~2_combout\) ) ) # ( !\OperateTens|sum[1]~0_combout\ & ( !\OperateTens|sum[2]~1_combout\ $ 
-- (((!\OperateTens|Add0~17_sumout\) # (\OperateTens|sum[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110100101101001011010010110101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OperateTens|ALT_INV_sum[3]~2_combout\,
	datab => \OperateTens|ALT_INV_Add0~17_sumout\,
	datac => \OperateTens|ALT_INV_sum[2]~1_combout\,
	dataf => \OperateTens|ALT_INV_sum[1]~0_combout\,
	combout => \Ans10_Disp|Mux3~0_combout\);

-- Location: LABCELL_X19_Y1_N51
\Ans10_Disp|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ans10_Disp|Mux2~0_combout\ = ( \OperateTens|sum[1]~0_combout\ & ( ((!\OperateTens|Add0~17_sumout\ & !\OperateTens|sum[2]~1_combout\)) # (\OperateTens|sum[3]~2_combout\) ) ) # ( !\OperateTens|sum[1]~0_combout\ & ( (\OperateTens|sum[2]~1_combout\ & 
-- \OperateTens|sum[3]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111110100000111111111010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OperateTens|ALT_INV_Add0~17_sumout\,
	datac => \OperateTens|ALT_INV_sum[2]~1_combout\,
	datad => \OperateTens|ALT_INV_sum[3]~2_combout\,
	dataf => \OperateTens|ALT_INV_sum[1]~0_combout\,
	combout => \Ans10_Disp|Mux2~0_combout\);

-- Location: LABCELL_X19_Y1_N57
\Ans10_Disp|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ans10_Disp|Mux1~0_combout\ = ( \OperateTens|sum[1]~0_combout\ & ( ((!\OperateTens|Add0~17_sumout\ & \OperateTens|sum[2]~1_combout\)) # (\OperateTens|sum[3]~2_combout\) ) ) # ( !\OperateTens|sum[1]~0_combout\ & ( (\OperateTens|sum[2]~1_combout\ & 
-- ((\OperateTens|sum[3]~2_combout\) # (\OperateTens|Add0~17_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011000100010011001100100010111111110010001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OperateTens|ALT_INV_Add0~17_sumout\,
	datab => \OperateTens|ALT_INV_sum[2]~1_combout\,
	datad => \OperateTens|ALT_INV_sum[3]~2_combout\,
	dataf => \OperateTens|ALT_INV_sum[1]~0_combout\,
	combout => \Ans10_Disp|Mux1~0_combout\);

-- Location: LABCELL_X24_Y2_N57
\Ans10_Disp|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ans10_Disp|Mux0~0_combout\ = ( \OperateTens|sum[1]~0_combout\ & ( \OperateTens|sum[3]~2_combout\ ) ) # ( !\OperateTens|sum[1]~0_combout\ & ( !\OperateTens|sum[2]~1_combout\ $ (((!\OperateTens|Add0~17_sumout\) # (\OperateTens|sum[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011011101001000101101110101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \OperateTens|ALT_INV_sum[3]~2_combout\,
	datab => \OperateTens|ALT_INV_Add0~17_sumout\,
	datad => \OperateTens|ALT_INV_sum[2]~1_combout\,
	dataf => \OperateTens|ALT_INV_sum[1]~0_combout\,
	combout => \Ans10_Disp|Mux0~0_combout\);

-- Location: LABCELL_X29_Y15_N3
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


