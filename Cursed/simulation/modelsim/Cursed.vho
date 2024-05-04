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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "12/12/2023 23:18:52"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main IS
    PORT (
	inp : IN std_logic_vector(7 DOWNTO 0);
	Reset_1 : IN std_logic;
	Reset_2 : IN std_logic;
	Reset_3 : IN std_logic;
	Reset_4 : IN std_logic;
	gen_in : IN std_logic;
	priem_in : IN std_logic;
	clear_disp : IN std_logic;
	Disp1 : BUFFER std_logic_vector(3 DOWNTO 0);
	Disp2 : BUFFER std_logic_vector(3 DOWNTO 0);
	Disp3 : BUFFER std_logic_vector(3 DOWNTO 0);
	Disp4 : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END main;

ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inp : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Reset_1 : std_logic;
SIGNAL ww_Reset_2 : std_logic;
SIGNAL ww_Reset_3 : std_logic;
SIGNAL ww_Reset_4 : std_logic;
SIGNAL ww_gen_in : std_logic;
SIGNAL ww_priem_in : std_logic;
SIGNAL ww_clear_disp : std_logic;
SIGNAL ww_Disp1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Disp2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Disp3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Disp4 : std_logic_vector(3 DOWNTO 0);
SIGNAL \Disp1[0]~output_o\ : std_logic;
SIGNAL \Disp1[1]~output_o\ : std_logic;
SIGNAL \Disp1[2]~output_o\ : std_logic;
SIGNAL \Disp1[3]~output_o\ : std_logic;
SIGNAL \Disp2[0]~output_o\ : std_logic;
SIGNAL \Disp2[1]~output_o\ : std_logic;
SIGNAL \Disp2[2]~output_o\ : std_logic;
SIGNAL \Disp2[3]~output_o\ : std_logic;
SIGNAL \Disp3[0]~output_o\ : std_logic;
SIGNAL \Disp3[1]~output_o\ : std_logic;
SIGNAL \Disp3[2]~output_o\ : std_logic;
SIGNAL \Disp3[3]~output_o\ : std_logic;
SIGNAL \Disp4[0]~output_o\ : std_logic;
SIGNAL \Disp4[1]~output_o\ : std_logic;
SIGNAL \Disp4[2]~output_o\ : std_logic;
SIGNAL \Disp4[3]~output_o\ : std_logic;
SIGNAL \priem_in~input_o\ : std_logic;
SIGNAL \gen_in~input_o\ : std_logic;
SIGNAL \generator_1|Q[0]~2_combout\ : std_logic;
SIGNAL \generator_1|Q[1]~1_combout\ : std_logic;
SIGNAL \generator_1|nclk~0_combout\ : std_logic;
SIGNAL \generator_1|Q[2]~0_combout\ : std_logic;
SIGNAL \generator_1|clk~0_combout\ : std_logic;
SIGNAL \generator_1|clk~combout\ : std_logic;
SIGNAL \Display_1|U1|Q[0]~1_combout\ : std_logic;
SIGNAL \Display_1|U1|clear~0_combout\ : std_logic;
SIGNAL \Display_1|U1|Q[1]~0_combout\ : std_logic;
SIGNAL \Display_1|U2|Q[1]~1_combout\ : std_logic;
SIGNAL \Display_1|U2|clear~0_combout\ : std_logic;
SIGNAL \Display_1|U2|Q[0]~0_combout\ : std_logic;
SIGNAL \Display_1|clk1~1_combout\ : std_logic;
SIGNAL \inp[0]~input_o\ : std_logic;
SIGNAL \inp[7]~input_o\ : std_logic;
SIGNAL \inp[6]~input_o\ : std_logic;
SIGNAL \inp[2]~input_o\ : std_logic;
SIGNAL \inp[5]~input_o\ : std_logic;
SIGNAL \inp[1]~input_o\ : std_logic;
SIGNAL \inp[4]~input_o\ : std_logic;
SIGNAL \obrabotka_1|Equal0~0_combout\ : std_logic;
SIGNAL \inp[3]~input_o\ : std_logic;
SIGNAL \obrabotka_1|U1|clear~0_combout\ : std_logic;
SIGNAL \obrabotka_1|Equal0~1_combout\ : std_logic;
SIGNAL \obrabotka_1|Equal0~2_combout\ : std_logic;
SIGNAL \obrabotka_1|U2|Q[0]~1_combout\ : std_logic;
SIGNAL \obrabotka_1|U2|clear~0_combout\ : std_logic;
SIGNAL \obrabotka_1|U2|Q[1]~0_combout\ : std_logic;
SIGNAL \obrabotka_1|nclk~combout\ : std_logic;
SIGNAL \Reset_1~input_o\ : std_logic;
SIGNAL \obrabotka_1|res0~0_combout\ : std_logic;
SIGNAL \obrabotka_1|res1~combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|Equal0~0_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|Equal0~1_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|Equal0~2_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|Equal0~4_combout\ : std_logic;
SIGNAL \Reset_2~input_o\ : std_logic;
SIGNAL \obrabotka_1|res2~0_combout\ : std_logic;
SIGNAL \obrabotka_1|res2~combout\ : std_logic;
SIGNAL \Reset_3~input_o\ : std_logic;
SIGNAL \obrabotka_1|res3~combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|Equal5~0_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|Equal5~1_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|Equal0~3_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|Equal2~0_combout\ : std_logic;
SIGNAL \regist_1|right_~1_combout\ : std_logic;
SIGNAL \regist_1|right_~2_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|reset~4_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|reset~5_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|Equal2~1_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|reset~3_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|U1|Q[1]~1_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|U1|clear~0_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|U1|Q[2]~2_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|U1|Q[0]~0_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|U1|LessThan0~0_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|reset~2_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|ESC2~0_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|set~6_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|ESC2~q\ : std_logic;
SIGNAL \obrabotka_1|to_save_1|cur_left~0_combout\ : std_logic;
SIGNAL \obrabotka_1|sig~0_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|reset~1_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|ESC1~0_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|set~4_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|set~5_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|ESC1~q\ : std_logic;
SIGNAL \obrabotka_1|to_save_1|Equal0~0_combout\ : std_logic;
SIGNAL \obrabotka_1|to_save_1|Equal0~1_combout\ : std_logic;
SIGNAL \obrabotka_1|sig~1_combout\ : std_logic;
SIGNAL \obrabotka_1|sig~2_combout\ : std_logic;
SIGNAL \obrabotka_1|sig~3_combout\ : std_logic;
SIGNAL \obrabotka_1|sig~4_combout\ : std_logic;
SIGNAL \obrabotka_1|sig~5_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|reset~0_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|ESC3~0_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|set~7_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|ESC3~q\ : std_logic;
SIGNAL \obrabotka_1|sig~6_combout\ : std_logic;
SIGNAL \obrabotka_1|sig~7_combout\ : std_logic;
SIGNAL \obrabotka_1|sig~8_combout\ : std_logic;
SIGNAL \obrabotka_1|sig~9_combout\ : std_logic;
SIGNAL \obrabotka_1|sig~10_combout\ : std_logic;
SIGNAL \obrabotka_1|gate_1|w~0_combout\ : std_logic;
SIGNAL \Display_1|Equal0~0_combout\ : std_logic;
SIGNAL \Display_1|Equal0~1_combout\ : std_logic;
SIGNAL \Display_1|Equal0~2_combout\ : std_logic;
SIGNAL \Display_1|clk1~2_combout\ : std_logic;
SIGNAL \obrabotka_1|comands_1|U1|Q[1]~1_combout\ : std_logic;
SIGNAL \obrabotka_1|comands_1|U1|clear~0_combout\ : std_logic;
SIGNAL \obrabotka_1|comands_1|U1|Q[0]~0_combout\ : std_logic;
SIGNAL \obrabotka_1|comands_1|U2|Q[0]~1_combout\ : std_logic;
SIGNAL \obrabotka_1|comands_1|U2|Q[1]~2_combout\ : std_logic;
SIGNAL \obrabotka_1|comands_1|U2|clear~0_combout\ : std_logic;
SIGNAL \obrabotka_1|comands_1|U2|Q[2]~0_combout\ : std_logic;
SIGNAL \regist_1|Add1~0_combout\ : std_logic;
SIGNAL \obrabotka_1|comands_1|Equal7~0_combout\ : std_logic;
SIGNAL \obrabotka_1|comands_1|Enter~0_combout\ : std_logic;
SIGNAL \clear_disp~input_o\ : std_logic;
SIGNAL \first_pos~0_combout\ : std_logic;
SIGNAL \regist_1|Q[2]~22_combout\ : std_logic;
SIGNAL \obrabotka_1|comands_1|Equal7~1_combout\ : std_logic;
SIGNAL \regist_1|right_~3_combout\ : std_logic;
SIGNAL \regist_1|right_~4_combout\ : std_logic;
SIGNAL \regist_1|right_~5_combout\ : std_logic;
SIGNAL \regist_1|right_~6_combout\ : std_logic;
SIGNAL \regist_1|Q[2]~23_combout\ : std_logic;
SIGNAL \regist_1|Q[2]~24_combout\ : std_logic;
SIGNAL \regist_1|Q[2]~25_combout\ : std_logic;
SIGNAL \regist_1|Q[1]~6_combout\ : std_logic;
SIGNAL \regist_1|Q[1]~9_combout\ : std_logic;
SIGNAL \regist_1|Q[2]~0_combout\ : std_logic;
SIGNAL \regist_1|Q[1]~_emulated_q\ : std_logic;
SIGNAL \regist_1|Q[1]~8_combout\ : std_logic;
SIGNAL \regist_1|Q[1]~7_combout\ : std_logic;
SIGNAL \regist_1|Add0~0_combout\ : std_logic;
SIGNAL \regist_1|Q[2]~1_combout\ : std_logic;
SIGNAL \regist_1|Q[2]~4_combout\ : std_logic;
SIGNAL \regist_1|Q[2]~_emulated_q\ : std_logic;
SIGNAL \regist_1|Q[2]~3_combout\ : std_logic;
SIGNAL \regist_1|Q[2]~2_combout\ : std_logic;
SIGNAL \regist_1|right_~7_combout\ : std_logic;
SIGNAL \regist_1|right_~8_combout\ : std_logic;
SIGNAL \regist_1|right_~9_combout\ : std_logic;
SIGNAL \obrabotka_1|gate_1|U1|Q[1]~1_combout\ : std_logic;
SIGNAL \obrabotka_1|gate_1|U1|clear~0_combout\ : std_logic;
SIGNAL \obrabotka_1|gate_1|U1|Q[0]~0_combout\ : std_logic;
SIGNAL \obrabotka_1|gate_1|U2|Q[0]~1_combout\ : std_logic;
SIGNAL \obrabotka_1|gate_1|U2|Q[1]~2_combout\ : std_logic;
SIGNAL \obrabotka_1|gate_1|U2|clear~0_combout\ : std_logic;
SIGNAL \obrabotka_1|gate_1|U2|Q[2]~0_combout\ : std_logic;
SIGNAL \regist_1|right_~10_combout\ : std_logic;
SIGNAL \regist_1|right_~0_combout\ : std_logic;
SIGNAL \regist_1|Q[0]~11_combout\ : std_logic;
SIGNAL \regist_1|Q[0]~14_combout\ : std_logic;
SIGNAL \regist_1|Q[0]~_emulated_q\ : std_logic;
SIGNAL \regist_1|Q[0]~13_combout\ : std_logic;
SIGNAL \regist_1|Q[0]~12_combout\ : std_logic;
SIGNAL \Display_1|clk1~3_combout\ : std_logic;
SIGNAL \obrabotka_1|gate_1|res[7]~3_combout\ : std_logic;
SIGNAL \Reset_4~input_o\ : std_logic;
SIGNAL \obrabotka_1|res4~combout\ : std_logic;
SIGNAL \obrabotka_1|comands_1|Delete~0_combout\ : std_logic;
SIGNAL \obrabotka_1|comands_1|Delete~1_combout\ : std_logic;
SIGNAL \obrabotka_1|comands_1|Delete~2_combout\ : std_logic;
SIGNAL \obrabotka_1|comands_1|Delete~3_combout\ : std_logic;
SIGNAL \obrabotka_1|comands_1|Delete~4_combout\ : std_logic;
SIGNAL \obrabotka_1|comands_1|Delete~5_combout\ : std_logic;
SIGNAL \obrabotka_1|comands_1|Delete~6_combout\ : std_logic;
SIGNAL \res1~0_combout\ : std_logic;
SIGNAL \res1~combout\ : std_logic;
SIGNAL \obrabotka_1|gate_1|res[6]~4_combout\ : std_logic;
SIGNAL \obrabotka_1|gate_1|res[5]~1_combout\ : std_logic;
SIGNAL \obrabotka_1|gate_1|res[4]~2_combout\ : std_logic;
SIGNAL \Display_1|clk1~4_combout\ : std_logic;
SIGNAL \obrabotka_1|gate_1|res[1]~5_combout\ : std_logic;
SIGNAL \obrabotka_1|gate_1|res[2]~6_combout\ : std_logic;
SIGNAL \obrabotka_1|gate_1|res[3]~7_combout\ : std_logic;
SIGNAL \Display_1|clk1~5_combout\ : std_logic;
SIGNAL \Display_1|clk1~0_combout\ : std_logic;
SIGNAL \obrabotka_1|gate_1|res[0]~0_combout\ : std_logic;
SIGNAL \ascii_to_bcd_1|Equal0~0_combout\ : std_logic;
SIGNAL \ascii_to_bcd_1|BCD[0]~0_combout\ : std_logic;
SIGNAL \ascii_to_bcd_1|BCD[1]~1_combout\ : std_logic;
SIGNAL \ascii_to_bcd_1|BCD[2]~2_combout\ : std_logic;
SIGNAL \ascii_to_bcd_1|BCD[3]~3_combout\ : std_logic;
SIGNAL \res2~combout\ : std_logic;
SIGNAL \Display_1|clk2~1_combout\ : std_logic;
SIGNAL \Display_1|clk2~2_combout\ : std_logic;
SIGNAL \Display_1|clk2~3_combout\ : std_logic;
SIGNAL \Display_1|clk2~0_combout\ : std_logic;
SIGNAL \ascii_to_bcd_2|Equal0~0_combout\ : std_logic;
SIGNAL \ascii_to_bcd_2|BCD[0]~0_combout\ : std_logic;
SIGNAL \ascii_to_bcd_2|BCD[1]~1_combout\ : std_logic;
SIGNAL \ascii_to_bcd_2|BCD[2]~2_combout\ : std_logic;
SIGNAL \ascii_to_bcd_2|BCD[3]~3_combout\ : std_logic;
SIGNAL \res3~combout\ : std_logic;
SIGNAL \Display_1|clk3~1_combout\ : std_logic;
SIGNAL \Display_1|clk3~2_combout\ : std_logic;
SIGNAL \Display_1|clk3~0_combout\ : std_logic;
SIGNAL \ascii_to_bcd_3|Equal0~0_combout\ : std_logic;
SIGNAL \ascii_to_bcd_3|BCD[0]~0_combout\ : std_logic;
SIGNAL \ascii_to_bcd_3|BCD[1]~1_combout\ : std_logic;
SIGNAL \ascii_to_bcd_3|BCD[2]~2_combout\ : std_logic;
SIGNAL \ascii_to_bcd_3|BCD[3]~3_combout\ : std_logic;
SIGNAL \res4~0_combout\ : std_logic;
SIGNAL \obrabotka_1|comands_1|Delete~7_combout\ : std_logic;
SIGNAL \res4~combout\ : std_logic;
SIGNAL \Display_1|clk4~1_combout\ : std_logic;
SIGNAL \Display_1|clk4~2_combout\ : std_logic;
SIGNAL \Display_1|clk4~0_combout\ : std_logic;
SIGNAL \ascii_to_bcd_4|Equal0~0_combout\ : std_logic;
SIGNAL \ascii_to_bcd_4|BCD[0]~0_combout\ : std_logic;
SIGNAL \ascii_to_bcd_4|BCD[1]~1_combout\ : std_logic;
SIGNAL \ascii_to_bcd_4|BCD[2]~2_combout\ : std_logic;
SIGNAL \ascii_to_bcd_4|BCD[3]~3_combout\ : std_logic;
SIGNAL \Display_1|reg_1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Display_1|reg_2|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \obrabotka_1|U2|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Display_1|reg_3|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \obrabotka_1|reg_1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Display_1|reg_4|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \obrabotka_1|comands_1|U2|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \obrabotka_1|reg_2|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \obrabotka_1|gate_1|U2|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \obrabotka_1|reg_3|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \obrabotka_1|reg_4|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \obrabotka_1|comands_1|U1|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \generator_1|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \obrabotka_1|Cont_seq_1|U1|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Display_1|U1|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Display_1|U2|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \obrabotka_1|U1|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \obrabotka_1|gate_1|U1|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \obrabotka_1|Cont_seq_1|ALT_INV_set~7_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|ALT_INV_set~6_combout\ : std_logic;
SIGNAL \obrabotka_1|gate_1|U2|ALT_INV_clear~0_combout\ : std_logic;
SIGNAL \obrabotka_1|gate_1|U1|ALT_INV_clear~0_combout\ : std_logic;
SIGNAL \regist_1|ALT_INV_Q[2]~0_combout\ : std_logic;
SIGNAL \obrabotka_1|U2|ALT_INV_clear~0_combout\ : std_logic;
SIGNAL \obrabotka_1|U1|ALT_INV_clear~0_combout\ : std_logic;
SIGNAL \Display_1|U2|ALT_INV_clear~0_combout\ : std_logic;
SIGNAL \Display_1|U1|ALT_INV_clear~0_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|U1|ALT_INV_clear~0_combout\ : std_logic;
SIGNAL \obrabotka_1|comands_1|U1|ALT_INV_clear~0_combout\ : std_logic;
SIGNAL \obrabotka_1|ALT_INV_res4~combout\ : std_logic;
SIGNAL \obrabotka_1|ALT_INV_res3~combout\ : std_logic;
SIGNAL \obrabotka_1|ALT_INV_res2~combout\ : std_logic;
SIGNAL \obrabotka_1|ALT_INV_res1~combout\ : std_logic;
SIGNAL \obrabotka_1|comands_1|U2|ALT_INV_clear~0_combout\ : std_logic;
SIGNAL \obrabotka_1|Cont_seq_1|ALT_INV_set~5_combout\ : std_logic;
SIGNAL \ALT_INV_res4~combout\ : std_logic;
SIGNAL \ALT_INV_res3~combout\ : std_logic;
SIGNAL \ALT_INV_res2~combout\ : std_logic;
SIGNAL \ALT_INV_res1~combout\ : std_logic;

BEGIN

ww_inp <= inp;
ww_Reset_1 <= Reset_1;
ww_Reset_2 <= Reset_2;
ww_Reset_3 <= Reset_3;
ww_Reset_4 <= Reset_4;
ww_gen_in <= gen_in;
ww_priem_in <= priem_in;
ww_clear_disp <= clear_disp;
Disp1 <= ww_Disp1;
Disp2 <= ww_Disp2;
Disp3 <= ww_Disp3;
Disp4 <= ww_Disp4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\obrabotka_1|Cont_seq_1|ALT_INV_set~7_combout\ <= NOT \obrabotka_1|Cont_seq_1|set~7_combout\;
\obrabotka_1|Cont_seq_1|ALT_INV_set~6_combout\ <= NOT \obrabotka_1|Cont_seq_1|set~6_combout\;
\obrabotka_1|gate_1|U2|ALT_INV_clear~0_combout\ <= NOT \obrabotka_1|gate_1|U2|clear~0_combout\;
\obrabotka_1|gate_1|U1|ALT_INV_clear~0_combout\ <= NOT \obrabotka_1|gate_1|U1|clear~0_combout\;
\regist_1|ALT_INV_Q[2]~0_combout\ <= NOT \regist_1|Q[2]~0_combout\;
\obrabotka_1|U2|ALT_INV_clear~0_combout\ <= NOT \obrabotka_1|U2|clear~0_combout\;
\obrabotka_1|U1|ALT_INV_clear~0_combout\ <= NOT \obrabotka_1|U1|clear~0_combout\;
\Display_1|U2|ALT_INV_clear~0_combout\ <= NOT \Display_1|U2|clear~0_combout\;
\Display_1|U1|ALT_INV_clear~0_combout\ <= NOT \Display_1|U1|clear~0_combout\;
\obrabotka_1|Cont_seq_1|U1|ALT_INV_clear~0_combout\ <= NOT \obrabotka_1|Cont_seq_1|U1|clear~0_combout\;
\obrabotka_1|comands_1|U1|ALT_INV_clear~0_combout\ <= NOT \obrabotka_1|comands_1|U1|clear~0_combout\;
\obrabotka_1|ALT_INV_res4~combout\ <= NOT \obrabotka_1|res4~combout\;
\obrabotka_1|ALT_INV_res3~combout\ <= NOT \obrabotka_1|res3~combout\;
\obrabotka_1|ALT_INV_res2~combout\ <= NOT \obrabotka_1|res2~combout\;
\obrabotka_1|ALT_INV_res1~combout\ <= NOT \obrabotka_1|res1~combout\;
\obrabotka_1|comands_1|U2|ALT_INV_clear~0_combout\ <= NOT \obrabotka_1|comands_1|U2|clear~0_combout\;
\obrabotka_1|Cont_seq_1|ALT_INV_set~5_combout\ <= NOT \obrabotka_1|Cont_seq_1|set~5_combout\;
\ALT_INV_res4~combout\ <= NOT \res4~combout\;
\ALT_INV_res3~combout\ <= NOT \res3~combout\;
\ALT_INV_res2~combout\ <= NOT \res2~combout\;
\ALT_INV_res1~combout\ <= NOT \res1~combout\;

\Disp1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ascii_to_bcd_1|BCD[0]~0_combout\,
	devoe => ww_devoe,
	o => \Disp1[0]~output_o\);

\Disp1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ascii_to_bcd_1|BCD[1]~1_combout\,
	devoe => ww_devoe,
	o => \Disp1[1]~output_o\);

\Disp1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ascii_to_bcd_1|BCD[2]~2_combout\,
	devoe => ww_devoe,
	o => \Disp1[2]~output_o\);

\Disp1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ascii_to_bcd_1|BCD[3]~3_combout\,
	devoe => ww_devoe,
	o => \Disp1[3]~output_o\);

\Disp2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ascii_to_bcd_2|BCD[0]~0_combout\,
	devoe => ww_devoe,
	o => \Disp2[0]~output_o\);

\Disp2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ascii_to_bcd_2|BCD[1]~1_combout\,
	devoe => ww_devoe,
	o => \Disp2[1]~output_o\);

\Disp2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ascii_to_bcd_2|BCD[2]~2_combout\,
	devoe => ww_devoe,
	o => \Disp2[2]~output_o\);

\Disp2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ascii_to_bcd_2|BCD[3]~3_combout\,
	devoe => ww_devoe,
	o => \Disp2[3]~output_o\);

\Disp3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ascii_to_bcd_3|BCD[0]~0_combout\,
	devoe => ww_devoe,
	o => \Disp3[0]~output_o\);

\Disp3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ascii_to_bcd_3|BCD[1]~1_combout\,
	devoe => ww_devoe,
	o => \Disp3[1]~output_o\);

\Disp3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ascii_to_bcd_3|BCD[2]~2_combout\,
	devoe => ww_devoe,
	o => \Disp3[2]~output_o\);

\Disp3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ascii_to_bcd_3|BCD[3]~3_combout\,
	devoe => ww_devoe,
	o => \Disp3[3]~output_o\);

\Disp4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ascii_to_bcd_4|BCD[0]~0_combout\,
	devoe => ww_devoe,
	o => \Disp4[0]~output_o\);

\Disp4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ascii_to_bcd_4|BCD[1]~1_combout\,
	devoe => ww_devoe,
	o => \Disp4[1]~output_o\);

\Disp4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ascii_to_bcd_4|BCD[2]~2_combout\,
	devoe => ww_devoe,
	o => \Disp4[2]~output_o\);

\Disp4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ascii_to_bcd_4|BCD[3]~3_combout\,
	devoe => ww_devoe,
	o => \Disp4[3]~output_o\);

\priem_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_priem_in,
	o => \priem_in~input_o\);

\gen_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_gen_in,
	o => \gen_in~input_o\);

\generator_1|Q[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \generator_1|Q[0]~2_combout\ = !\generator_1|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generator_1|Q\(0),
	combout => \generator_1|Q[0]~2_combout\);

\generator_1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generator_1|nclk~0_combout\,
	d => \generator_1|Q[0]~2_combout\,
	clrn => \priem_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \generator_1|Q\(0));

\generator_1|Q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \generator_1|Q[1]~1_combout\ = \generator_1|Q\(1) $ (\generator_1|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \generator_1|Q\(1),
	datad => \generator_1|Q\(0),
	combout => \generator_1|Q[1]~1_combout\);

\generator_1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generator_1|nclk~0_combout\,
	d => \generator_1|Q[1]~1_combout\,
	clrn => \priem_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \generator_1|Q\(1));

\generator_1|nclk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generator_1|nclk~0_combout\ = LCELL((\gen_in~input_o\ & (((!\generator_1|Q\(0)) # (!\generator_1|Q\(1))) # (!\generator_1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_in~input_o\,
	datab => \generator_1|Q\(2),
	datac => \generator_1|Q\(1),
	datad => \generator_1|Q\(0),
	combout => \generator_1|nclk~0_combout\);

\generator_1|Q[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generator_1|Q[2]~0_combout\ = \generator_1|Q\(2) $ (((\generator_1|Q\(1) & \generator_1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \generator_1|Q\(2),
	datac => \generator_1|Q\(1),
	datad => \generator_1|Q\(0),
	combout => \generator_1|Q[2]~0_combout\);

\generator_1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generator_1|nclk~0_combout\,
	d => \generator_1|Q[2]~0_combout\,
	clrn => \priem_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \generator_1|Q\(2));

\generator_1|clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generator_1|clk~0_combout\ = (!\generator_1|Q\(0)) # (!\generator_1|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generator_1|Q\(1),
	datab => \generator_1|Q\(0),
	combout => \generator_1|clk~0_combout\);

\generator_1|clk\ : cycloneive_lcell_comb
-- Equation(s):
-- \generator_1|clk~combout\ = LCELL((\priem_in~input_o\ & (\gen_in~input_o\ & ((\generator_1|clk~0_combout\) # (!\generator_1|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \priem_in~input_o\,
	datab => \gen_in~input_o\,
	datac => \generator_1|Q\(2),
	datad => \generator_1|clk~0_combout\,
	combout => \generator_1|clk~combout\);

\Display_1|U1|Q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|U1|Q[0]~1_combout\ = \Display_1|U1|Q\(1) $ (!\Display_1|U1|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Display_1|U1|Q\(1),
	datad => \Display_1|U1|Q\(0),
	combout => \Display_1|U1|Q[0]~1_combout\);

\Display_1|U1|clear~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|U1|clear~0_combout\ = (\Display_1|U1|Q\(1) & (!\priem_in~input_o\ & !\Display_1|U1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|U1|Q\(1),
	datac => \priem_in~input_o\,
	datad => \Display_1|U1|Q\(0),
	combout => \Display_1|U1|clear~0_combout\);

\Display_1|U1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generator_1|clk~combout\,
	d => \Display_1|U1|Q[0]~1_combout\,
	clrn => \Display_1|U1|ALT_INV_clear~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|U1|Q\(0));

\Display_1|U1|Q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|U1|Q[1]~0_combout\ = (\Display_1|U1|Q\(1)) # (\Display_1|U1|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|U1|Q\(1),
	datab => \Display_1|U1|Q\(0),
	combout => \Display_1|U1|Q[1]~0_combout\);

\Display_1|U1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generator_1|clk~combout\,
	d => \Display_1|U1|Q[1]~0_combout\,
	clrn => \Display_1|U1|ALT_INV_clear~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|U1|Q\(1));

\Display_1|U2|Q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|U2|Q[1]~1_combout\ = (\Display_1|U2|Q\(0)) # (\Display_1|U2|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|U2|Q\(0),
	datab => \Display_1|U2|Q\(1),
	combout => \Display_1|U2|Q[1]~1_combout\);

\Display_1|U2|clear~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|U2|clear~0_combout\ = (\Display_1|U2|Q\(0) & (\Display_1|U2|Q\(1) & !\priem_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|U2|Q\(0),
	datab => \Display_1|U2|Q\(1),
	datad => \priem_in~input_o\,
	combout => \Display_1|U2|clear~0_combout\);

\Display_1|U2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generator_1|clk~combout\,
	d => \Display_1|U2|Q[1]~1_combout\,
	clrn => \Display_1|U2|ALT_INV_clear~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|U2|Q\(1));

\Display_1|U2|Q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|U2|Q[0]~0_combout\ = (\Display_1|U2|Q\(1)) # (!\Display_1|U2|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|U2|Q\(1),
	datad => \Display_1|U2|Q\(0),
	combout => \Display_1|U2|Q[0]~0_combout\);

\Display_1|U2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generator_1|clk~combout\,
	d => \Display_1|U2|Q[0]~0_combout\,
	clrn => \Display_1|U2|ALT_INV_clear~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|U2|Q\(0));

\Display_1|clk1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|clk1~1_combout\ = (\Display_1|U1|Q\(1) & ((!\Display_1|U2|Q\(1)) # (!\Display_1|U2|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|U1|Q\(1),
	datac => \Display_1|U2|Q\(0),
	datad => \Display_1|U2|Q\(1),
	combout => \Display_1|clk1~1_combout\);

\inp[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(0),
	o => \inp[0]~input_o\);

\inp[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(7),
	o => \inp[7]~input_o\);

\inp[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(6),
	o => \inp[6]~input_o\);

\inp[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(2),
	o => \inp[2]~input_o\);

\inp[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(5),
	o => \inp[5]~input_o\);

\inp[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(1),
	o => \inp[1]~input_o\);

\inp[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(4),
	o => \inp[4]~input_o\);

\obrabotka_1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Equal0~0_combout\ = (!\inp[5]~input_o\ & (!\inp[1]~input_o\ & (!\inp[4]~input_o\ & !\inp[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[5]~input_o\,
	datab => \inp[1]~input_o\,
	datac => \inp[4]~input_o\,
	datad => \inp[7]~input_o\,
	combout => \obrabotka_1|Equal0~0_combout\);

\inp[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(3),
	o => \inp[3]~input_o\);

\obrabotka_1|U1|clear~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|U1|clear~0_combout\ = (\obrabotka_1|U1|Q\(0) & !\priem_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|U1|Q\(0),
	datad => \priem_in~input_o\,
	combout => \obrabotka_1|U1|clear~0_combout\);

\obrabotka_1|U1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generator_1|clk~combout\,
	d => VCC,
	clrn => \obrabotka_1|U1|ALT_INV_clear~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|U1|Q\(0));

\obrabotka_1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Equal0~1_combout\ = (!\inp[0]~input_o\ & (!\inp[2]~input_o\ & !\inp[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inp[0]~input_o\,
	datac => \inp[2]~input_o\,
	datad => \inp[6]~input_o\,
	combout => \obrabotka_1|Equal0~1_combout\);

\obrabotka_1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Equal0~2_combout\ = (\obrabotka_1|Equal0~0_combout\ & (\obrabotka_1|Equal0~1_combout\ & !\inp[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|Equal0~0_combout\,
	datab => \obrabotka_1|Equal0~1_combout\,
	datad => \inp[3]~input_o\,
	combout => \obrabotka_1|Equal0~2_combout\);

\obrabotka_1|U2|Q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|U2|Q[0]~1_combout\ = \obrabotka_1|U2|Q\(1) $ (!\obrabotka_1|U2|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \obrabotka_1|U2|Q\(1),
	datad => \obrabotka_1|U2|Q\(0),
	combout => \obrabotka_1|U2|Q[0]~1_combout\);

\obrabotka_1|U2|clear~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|U2|clear~0_combout\ = (\obrabotka_1|U2|Q\(1) & (!\priem_in~input_o\ & !\obrabotka_1|U2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|U2|Q\(1),
	datac => \priem_in~input_o\,
	datad => \obrabotka_1|U2|Q\(0),
	combout => \obrabotka_1|U2|clear~0_combout\);

\obrabotka_1|U2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generator_1|clk~combout\,
	d => \obrabotka_1|U2|Q[0]~1_combout\,
	clrn => \obrabotka_1|U2|ALT_INV_clear~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|U2|Q\(0));

\obrabotka_1|U2|Q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|U2|Q[1]~0_combout\ = (\obrabotka_1|U2|Q\(1)) # (\obrabotka_1|U2|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|U2|Q\(1),
	datab => \obrabotka_1|U2|Q\(0),
	combout => \obrabotka_1|U2|Q[1]~0_combout\);

\obrabotka_1|U2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generator_1|clk~combout\,
	d => \obrabotka_1|U2|Q[1]~0_combout\,
	clrn => \obrabotka_1|U2|ALT_INV_clear~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|U2|Q\(1));

\obrabotka_1|nclk\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|nclk~combout\ = LCELL((\obrabotka_1|U1|Q\(0) & (!\obrabotka_1|Equal0~2_combout\ & (!\obrabotka_1|sig~10_combout\ & !\obrabotka_1|U2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|U1|Q\(0),
	datab => \obrabotka_1|Equal0~2_combout\,
	datac => \obrabotka_1|sig~10_combout\,
	datad => \obrabotka_1|U2|Q\(1),
	combout => \obrabotka_1|nclk~combout\);

\Reset_1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset_1,
	o => \Reset_1~input_o\);

\obrabotka_1|res0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|res0~0_combout\ = (\generator_1|clk~combout\ & (\obrabotka_1|sig~10_combout\ & (\obrabotka_1|U1|Q\(0) & !\obrabotka_1|U2|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generator_1|clk~combout\,
	datab => \obrabotka_1|sig~10_combout\,
	datac => \obrabotka_1|U1|Q\(0),
	datad => \obrabotka_1|U2|Q\(1),
	combout => \obrabotka_1|res0~0_combout\);

\obrabotka_1|res1\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|res1~combout\ = (\Reset_1~input_o\) # (\obrabotka_1|res0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_1~input_o\,
	datab => \obrabotka_1|res0~0_combout\,
	combout => \obrabotka_1|res1~combout\);

\obrabotka_1|reg_1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \inp[3]~input_o\,
	clrn => \obrabotka_1|ALT_INV_res1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_1|Q\(3));

\obrabotka_1|reg_1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \inp[5]~input_o\,
	clrn => \obrabotka_1|ALT_INV_res1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_1|Q\(5));

\obrabotka_1|Cont_seq_1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|Equal0~0_combout\ = (\obrabotka_1|reg_1|Q\(3) & !\obrabotka_1|reg_1|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|reg_1|Q\(3),
	datad => \obrabotka_1|reg_1|Q\(5),
	combout => \obrabotka_1|Cont_seq_1|Equal0~0_combout\);

\obrabotka_1|reg_1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \inp[0]~input_o\,
	clrn => \obrabotka_1|ALT_INV_res1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_1|Q\(0));

\obrabotka_1|reg_1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \inp[4]~input_o\,
	clrn => \obrabotka_1|ALT_INV_res1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_1|Q\(4));

\obrabotka_1|reg_1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \inp[1]~input_o\,
	clrn => \obrabotka_1|ALT_INV_res1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_1|Q\(1));

\obrabotka_1|reg_1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \inp[7]~input_o\,
	clrn => \obrabotka_1|ALT_INV_res1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_1|Q\(7));

\obrabotka_1|Cont_seq_1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|Equal0~1_combout\ = (\obrabotka_1|reg_1|Q\(4) & (\obrabotka_1|reg_1|Q\(1) & !\obrabotka_1|reg_1|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|reg_1|Q\(4),
	datab => \obrabotka_1|reg_1|Q\(1),
	datad => \obrabotka_1|reg_1|Q\(7),
	combout => \obrabotka_1|Cont_seq_1|Equal0~1_combout\);

\obrabotka_1|reg_1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \inp[2]~input_o\,
	clrn => \obrabotka_1|ALT_INV_res1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_1|Q\(2));

\obrabotka_1|Cont_seq_1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|Equal0~2_combout\ = (\obrabotka_1|Cont_seq_1|Equal0~0_combout\ & (\obrabotka_1|reg_1|Q\(0) & (\obrabotka_1|Cont_seq_1|Equal0~1_combout\ & !\obrabotka_1|reg_1|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|Cont_seq_1|Equal0~0_combout\,
	datab => \obrabotka_1|reg_1|Q\(0),
	datac => \obrabotka_1|Cont_seq_1|Equal0~1_combout\,
	datad => \obrabotka_1|reg_1|Q\(2),
	combout => \obrabotka_1|Cont_seq_1|Equal0~2_combout\);

\obrabotka_1|reg_1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \inp[6]~input_o\,
	clrn => \obrabotka_1|ALT_INV_res1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_1|Q\(6));

\obrabotka_1|Cont_seq_1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|Equal0~4_combout\ = (\obrabotka_1|Cont_seq_1|Equal0~2_combout\ & !\obrabotka_1|reg_1|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|Cont_seq_1|Equal0~2_combout\,
	datad => \obrabotka_1|reg_1|Q\(6),
	combout => \obrabotka_1|Cont_seq_1|Equal0~4_combout\);

\Reset_2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset_2,
	o => \Reset_2~input_o\);

\obrabotka_1|res2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|res2~0_combout\ = (\obrabotka_1|U1|Q\(0) & !\obrabotka_1|U2|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|U1|Q\(0),
	datab => \obrabotka_1|U2|Q\(1),
	combout => \obrabotka_1|res2~0_combout\);

\obrabotka_1|res2\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|res2~combout\ = (\Reset_2~input_o\) # ((\generator_1|clk~combout\ & (\obrabotka_1|sig~10_combout\ & \obrabotka_1|res2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_2~input_o\,
	datab => \generator_1|clk~combout\,
	datac => \obrabotka_1|sig~10_combout\,
	datad => \obrabotka_1|res2~0_combout\,
	combout => \obrabotka_1|res2~combout\);

\obrabotka_1|reg_2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \obrabotka_1|reg_1|Q\(4),
	clrn => \obrabotka_1|ALT_INV_res2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_2|Q\(4));

\Reset_3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset_3,
	o => \Reset_3~input_o\);

\obrabotka_1|res3\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|res3~combout\ = (\obrabotka_1|res0~0_combout\) # (\Reset_3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|res0~0_combout\,
	datab => \Reset_3~input_o\,
	combout => \obrabotka_1|res3~combout\);

\obrabotka_1|reg_3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \obrabotka_1|reg_2|Q\(4),
	clrn => \obrabotka_1|ALT_INV_res3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_3|Q\(4));

\obrabotka_1|reg_2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \obrabotka_1|reg_1|Q\(3),
	clrn => \obrabotka_1|ALT_INV_res2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_2|Q\(3));

\obrabotka_1|reg_3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \obrabotka_1|reg_2|Q\(3),
	clrn => \obrabotka_1|ALT_INV_res3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_3|Q\(3));

\obrabotka_1|reg_2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \obrabotka_1|reg_1|Q\(7),
	clrn => \obrabotka_1|ALT_INV_res2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_2|Q\(7));

\obrabotka_1|reg_3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \obrabotka_1|reg_2|Q\(7),
	clrn => \obrabotka_1|ALT_INV_res3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_3|Q\(7));

\obrabotka_1|reg_2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \obrabotka_1|reg_1|Q\(5),
	clrn => \obrabotka_1|ALT_INV_res2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_2|Q\(5));

\obrabotka_1|reg_3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \obrabotka_1|reg_2|Q\(5),
	clrn => \obrabotka_1|ALT_INV_res3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_3|Q\(5));

\obrabotka_1|Cont_seq_1|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|Equal5~0_combout\ = (\obrabotka_1|reg_3|Q\(4) & (\obrabotka_1|reg_3|Q\(3) & (!\obrabotka_1|reg_3|Q\(7) & !\obrabotka_1|reg_3|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|reg_3|Q\(4),
	datab => \obrabotka_1|reg_3|Q\(3),
	datac => \obrabotka_1|reg_3|Q\(7),
	datad => \obrabotka_1|reg_3|Q\(5),
	combout => \obrabotka_1|Cont_seq_1|Equal5~0_combout\);

\obrabotka_1|reg_2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \obrabotka_1|reg_1|Q\(1),
	clrn => \obrabotka_1|ALT_INV_res2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_2|Q\(1));

\obrabotka_1|reg_3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \obrabotka_1|reg_2|Q\(1),
	clrn => \obrabotka_1|ALT_INV_res3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_3|Q\(1));

\obrabotka_1|reg_2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \obrabotka_1|reg_1|Q\(0),
	clrn => \obrabotka_1|ALT_INV_res2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_2|Q\(0));

\obrabotka_1|reg_3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \obrabotka_1|reg_2|Q\(0),
	clrn => \obrabotka_1|ALT_INV_res3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_3|Q\(0));

\obrabotka_1|reg_2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \obrabotka_1|reg_1|Q\(2),
	clrn => \obrabotka_1|ALT_INV_res2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_2|Q\(2));

\obrabotka_1|reg_3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \obrabotka_1|reg_2|Q\(2),
	clrn => \obrabotka_1|ALT_INV_res3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_3|Q\(2));

\obrabotka_1|Cont_seq_1|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|Equal5~1_combout\ = (\obrabotka_1|Cont_seq_1|Equal5~0_combout\ & (\obrabotka_1|reg_3|Q\(1) & (\obrabotka_1|reg_3|Q\(0) & !\obrabotka_1|reg_3|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|Cont_seq_1|Equal5~0_combout\,
	datab => \obrabotka_1|reg_3|Q\(1),
	datac => \obrabotka_1|reg_3|Q\(0),
	datad => \obrabotka_1|reg_3|Q\(2),
	combout => \obrabotka_1|Cont_seq_1|Equal5~1_combout\);

\obrabotka_1|Cont_seq_1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|Equal0~3_combout\ = (\obrabotka_1|reg_1|Q\(0) & (\obrabotka_1|Cont_seq_1|Equal0~1_combout\ & !\obrabotka_1|reg_1|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|reg_1|Q\(0),
	datab => \obrabotka_1|Cont_seq_1|Equal0~1_combout\,
	datad => \obrabotka_1|reg_1|Q\(2),
	combout => \obrabotka_1|Cont_seq_1|Equal0~3_combout\);

\obrabotka_1|reg_2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \obrabotka_1|reg_1|Q\(6),
	clrn => \obrabotka_1|ALT_INV_res2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_2|Q\(6));

\obrabotka_1|Cont_seq_1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|Equal2~0_combout\ = (\obrabotka_1|reg_2|Q\(4) & (\obrabotka_1|reg_2|Q\(3) & (\obrabotka_1|reg_2|Q\(1) & !\obrabotka_1|reg_2|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|reg_2|Q\(4),
	datab => \obrabotka_1|reg_2|Q\(3),
	datac => \obrabotka_1|reg_2|Q\(1),
	datad => \obrabotka_1|reg_2|Q\(2),
	combout => \obrabotka_1|Cont_seq_1|Equal2~0_combout\);

\obrabotka_1|reg_3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \obrabotka_1|reg_2|Q\(6),
	clrn => \obrabotka_1|ALT_INV_res3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_3|Q\(6));

\regist_1|right_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|right_~1_combout\ = (!\obrabotka_1|reg_3|Q\(6) & (!\obrabotka_1|reg_2|Q\(7) & !\obrabotka_1|reg_2|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|reg_3|Q\(6),
	datab => \obrabotka_1|reg_2|Q\(7),
	datac => \obrabotka_1|reg_2|Q\(5),
	combout => \regist_1|right_~1_combout\);

\regist_1|right_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|right_~2_combout\ = (\obrabotka_1|reg_2|Q\(0) & (\obrabotka_1|reg_2|Q\(6) & (\obrabotka_1|Cont_seq_1|Equal2~0_combout\ & \regist_1|right_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|reg_2|Q\(0),
	datab => \obrabotka_1|reg_2|Q\(6),
	datac => \obrabotka_1|Cont_seq_1|Equal2~0_combout\,
	datad => \regist_1|right_~1_combout\,
	combout => \regist_1|right_~2_combout\);

\obrabotka_1|Cont_seq_1|reset~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|reset~4_combout\ = (\obrabotka_1|reg_1|Q\(5) & (!\obrabotka_1|reg_1|Q\(3) & !\obrabotka_1|reg_1|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|reg_1|Q\(5),
	datac => \obrabotka_1|reg_1|Q\(3),
	datad => \obrabotka_1|reg_1|Q\(6),
	combout => \obrabotka_1|Cont_seq_1|reset~4_combout\);

\obrabotka_1|Cont_seq_1|reset~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|reset~5_combout\ = (\obrabotka_1|Cont_seq_1|Equal5~1_combout\ & (\obrabotka_1|Cont_seq_1|Equal0~3_combout\ & (\regist_1|right_~2_combout\ & \obrabotka_1|Cont_seq_1|reset~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|Cont_seq_1|Equal5~1_combout\,
	datab => \obrabotka_1|Cont_seq_1|Equal0~3_combout\,
	datac => \regist_1|right_~2_combout\,
	datad => \obrabotka_1|Cont_seq_1|reset~4_combout\,
	combout => \obrabotka_1|Cont_seq_1|reset~5_combout\);

\obrabotka_1|Cont_seq_1|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|Equal2~1_combout\ = (\obrabotka_1|reg_2|Q\(0) & (\obrabotka_1|Cont_seq_1|Equal2~0_combout\ & (!\obrabotka_1|reg_2|Q\(7) & !\obrabotka_1|reg_2|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|reg_2|Q\(0),
	datab => \obrabotka_1|Cont_seq_1|Equal2~0_combout\,
	datac => \obrabotka_1|reg_2|Q\(7),
	datad => \obrabotka_1|reg_2|Q\(5),
	combout => \obrabotka_1|Cont_seq_1|Equal2~1_combout\);

\obrabotka_1|Cont_seq_1|reset~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|reset~3_combout\ = (\obrabotka_1|reg_1|Q\(6) & (\obrabotka_1|Cont_seq_1|Equal2~1_combout\ & (\obrabotka_1|Cont_seq_1|Equal0~2_combout\ & !\obrabotka_1|reg_2|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|reg_1|Q\(6),
	datab => \obrabotka_1|Cont_seq_1|Equal2~1_combout\,
	datac => \obrabotka_1|Cont_seq_1|Equal0~2_combout\,
	datad => \obrabotka_1|reg_2|Q\(6),
	combout => \obrabotka_1|Cont_seq_1|reset~3_combout\);

\obrabotka_1|Cont_seq_1|U1|Q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|U1|Q[1]~1_combout\ = \obrabotka_1|Cont_seq_1|U1|Q\(1) $ (((!\obrabotka_1|Cont_seq_1|U1|Q\(2) & \obrabotka_1|Cont_seq_1|U1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|Cont_seq_1|U1|Q\(1),
	datab => \obrabotka_1|Cont_seq_1|U1|Q\(2),
	datad => \obrabotka_1|Cont_seq_1|U1|Q\(0),
	combout => \obrabotka_1|Cont_seq_1|U1|Q[1]~1_combout\);

\obrabotka_1|Cont_seq_1|U1|clear~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|U1|clear~0_combout\ = (\obrabotka_1|Cont_seq_1|U1|Q\(2) & (\obrabotka_1|Cont_seq_1|U1|Q\(0) & (!\priem_in~input_o\ & !\obrabotka_1|Cont_seq_1|U1|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|Cont_seq_1|U1|Q\(2),
	datab => \obrabotka_1|Cont_seq_1|U1|Q\(0),
	datac => \priem_in~input_o\,
	datad => \obrabotka_1|Cont_seq_1|U1|Q\(1),
	combout => \obrabotka_1|Cont_seq_1|U1|clear~0_combout\);

\obrabotka_1|Cont_seq_1|U1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generator_1|clk~combout\,
	d => \obrabotka_1|Cont_seq_1|U1|Q[1]~1_combout\,
	clrn => \obrabotka_1|Cont_seq_1|U1|ALT_INV_clear~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|Cont_seq_1|U1|Q\(1));

\obrabotka_1|Cont_seq_1|U1|Q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|U1|Q[2]~2_combout\ = (\obrabotka_1|Cont_seq_1|U1|Q\(2)) # ((\obrabotka_1|Cont_seq_1|U1|Q\(0) & \obrabotka_1|Cont_seq_1|U1|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|Cont_seq_1|U1|Q\(2),
	datab => \obrabotka_1|Cont_seq_1|U1|Q\(0),
	datac => \obrabotka_1|Cont_seq_1|U1|Q\(1),
	combout => \obrabotka_1|Cont_seq_1|U1|Q[2]~2_combout\);

\obrabotka_1|Cont_seq_1|U1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generator_1|clk~combout\,
	d => \obrabotka_1|Cont_seq_1|U1|Q[2]~2_combout\,
	clrn => \obrabotka_1|Cont_seq_1|U1|ALT_INV_clear~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|Cont_seq_1|U1|Q\(2));

\obrabotka_1|Cont_seq_1|U1|Q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|U1|Q[0]~0_combout\ = (\obrabotka_1|Cont_seq_1|U1|Q\(2) & ((\obrabotka_1|Cont_seq_1|U1|Q\(0)) # (!\obrabotka_1|Cont_seq_1|U1|Q\(1)))) # (!\obrabotka_1|Cont_seq_1|U1|Q\(2) & (!\obrabotka_1|Cont_seq_1|U1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|Cont_seq_1|U1|Q\(2),
	datab => \obrabotka_1|Cont_seq_1|U1|Q\(0),
	datad => \obrabotka_1|Cont_seq_1|U1|Q\(1),
	combout => \obrabotka_1|Cont_seq_1|U1|Q[0]~0_combout\);

\obrabotka_1|Cont_seq_1|U1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generator_1|clk~combout\,
	d => \obrabotka_1|Cont_seq_1|U1|Q[0]~0_combout\,
	clrn => \obrabotka_1|Cont_seq_1|U1|ALT_INV_clear~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|Cont_seq_1|U1|Q\(0));

\obrabotka_1|Cont_seq_1|U1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|U1|LessThan0~0_combout\ = ((!\obrabotka_1|Cont_seq_1|U1|Q\(0) & !\obrabotka_1|Cont_seq_1|U1|Q\(1))) # (!\obrabotka_1|Cont_seq_1|U1|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \obrabotka_1|Cont_seq_1|U1|Q\(0),
	datac => \obrabotka_1|Cont_seq_1|U1|Q\(1),
	datad => \obrabotka_1|Cont_seq_1|U1|Q\(2),
	combout => \obrabotka_1|Cont_seq_1|U1|LessThan0~0_combout\);

\obrabotka_1|Cont_seq_1|reset~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|reset~2_combout\ = LCELL((!\obrabotka_1|Cont_seq_1|U1|LessThan0~0_combout\ & ((\obrabotka_1|Cont_seq_1|Equal0~4_combout\) # ((\obrabotka_1|Cont_seq_1|reset~5_combout\) # (!\obrabotka_1|Cont_seq_1|reset~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|Cont_seq_1|Equal0~4_combout\,
	datab => \obrabotka_1|Cont_seq_1|reset~5_combout\,
	datac => \obrabotka_1|Cont_seq_1|reset~3_combout\,
	datad => \obrabotka_1|Cont_seq_1|U1|LessThan0~0_combout\,
	combout => \obrabotka_1|Cont_seq_1|reset~2_combout\);

\obrabotka_1|Cont_seq_1|ESC2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|ESC2~0_combout\ = (\obrabotka_1|Cont_seq_1|ESC2~q\) # (\obrabotka_1|Cont_seq_1|reset~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \obrabotka_1|Cont_seq_1|ESC2~q\,
	datad => \obrabotka_1|Cont_seq_1|reset~2_combout\,
	combout => \obrabotka_1|Cont_seq_1|ESC2~0_combout\);

\obrabotka_1|Cont_seq_1|set~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|set~6_combout\ = (\obrabotka_1|Cont_seq_1|U1|Q\(2) & (\obrabotka_1|Cont_seq_1|reset~3_combout\ & ((\obrabotka_1|Cont_seq_1|U1|Q\(0)) # (\obrabotka_1|Cont_seq_1|U1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|Cont_seq_1|U1|Q\(0),
	datab => \obrabotka_1|Cont_seq_1|U1|Q\(1),
	datac => \obrabotka_1|Cont_seq_1|U1|Q\(2),
	datad => \obrabotka_1|Cont_seq_1|reset~3_combout\,
	combout => \obrabotka_1|Cont_seq_1|set~6_combout\);

\obrabotka_1|Cont_seq_1|ESC2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|Cont_seq_1|reset~2_combout\,
	d => \obrabotka_1|Cont_seq_1|ESC2~0_combout\,
	clrn => \obrabotka_1|Cont_seq_1|ALT_INV_set~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|Cont_seq_1|ESC2~q\);

\obrabotka_1|to_save_1|cur_left~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|to_save_1|cur_left~0_combout\ = (\obrabotka_1|Equal0~0_combout\ & (\inp[6]~input_o\ & (!\inp[3]~input_o\ & !\obrabotka_1|Cont_seq_1|ESC2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|Equal0~0_combout\,
	datab => \inp[6]~input_o\,
	datac => \inp[3]~input_o\,
	datad => \obrabotka_1|Cont_seq_1|ESC2~q\,
	combout => \obrabotka_1|to_save_1|cur_left~0_combout\);

\obrabotka_1|sig~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|sig~0_combout\ = (\inp[0]~input_o\ $ (!\inp[2]~input_o\)) # (!\obrabotka_1|to_save_1|cur_left~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[0]~input_o\,
	datab => \inp[2]~input_o\,
	datad => \obrabotka_1|to_save_1|cur_left~0_combout\,
	combout => \obrabotka_1|sig~0_combout\);

\obrabotka_1|Cont_seq_1|reset~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|reset~1_combout\ = LCELL((!\obrabotka_1|Cont_seq_1|U1|LessThan0~0_combout\ & ((\obrabotka_1|Cont_seq_1|reset~3_combout\) # ((\obrabotka_1|Cont_seq_1|reset~5_combout\) # (!\obrabotka_1|Cont_seq_1|Equal0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|Cont_seq_1|reset~3_combout\,
	datab => \obrabotka_1|Cont_seq_1|reset~5_combout\,
	datac => \obrabotka_1|Cont_seq_1|Equal0~4_combout\,
	datad => \obrabotka_1|Cont_seq_1|U1|LessThan0~0_combout\,
	combout => \obrabotka_1|Cont_seq_1|reset~1_combout\);

\obrabotka_1|Cont_seq_1|ESC1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|ESC1~0_combout\ = (\obrabotka_1|Cont_seq_1|ESC1~q\) # (\obrabotka_1|Cont_seq_1|reset~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \obrabotka_1|Cont_seq_1|ESC1~q\,
	datad => \obrabotka_1|Cont_seq_1|reset~1_combout\,
	combout => \obrabotka_1|Cont_seq_1|ESC1~0_combout\);

\obrabotka_1|Cont_seq_1|set~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|set~4_combout\ = (\obrabotka_1|Cont_seq_1|Equal0~2_combout\ & !\obrabotka_1|reg_1|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|Cont_seq_1|Equal0~2_combout\,
	datab => \obrabotka_1|reg_1|Q\(6),
	combout => \obrabotka_1|Cont_seq_1|set~4_combout\);

\obrabotka_1|Cont_seq_1|set~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|set~5_combout\ = (\obrabotka_1|Cont_seq_1|U1|Q\(2) & (\obrabotka_1|Cont_seq_1|set~4_combout\ & ((\obrabotka_1|Cont_seq_1|U1|Q\(0)) # (\obrabotka_1|Cont_seq_1|U1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|Cont_seq_1|U1|Q\(0),
	datab => \obrabotka_1|Cont_seq_1|U1|Q\(1),
	datac => \obrabotka_1|Cont_seq_1|U1|Q\(2),
	datad => \obrabotka_1|Cont_seq_1|set~4_combout\,
	combout => \obrabotka_1|Cont_seq_1|set~5_combout\);

\obrabotka_1|Cont_seq_1|ESC1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|Cont_seq_1|reset~1_combout\,
	d => \obrabotka_1|Cont_seq_1|ESC1~0_combout\,
	clrn => \obrabotka_1|Cont_seq_1|ALT_INV_set~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|Cont_seq_1|ESC1~q\);

\obrabotka_1|to_save_1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|to_save_1|Equal0~0_combout\ = (!\inp[2]~input_o\ & (\inp[1]~input_o\ & (\inp[4]~input_o\ & !\inp[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[2]~input_o\,
	datab => \inp[1]~input_o\,
	datac => \inp[4]~input_o\,
	datad => \inp[5]~input_o\,
	combout => \obrabotka_1|to_save_1|Equal0~0_combout\);

\obrabotka_1|to_save_1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|to_save_1|Equal0~1_combout\ = (\inp[0]~input_o\ & (!\inp[7]~input_o\ & (\inp[3]~input_o\ & \obrabotka_1|to_save_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[0]~input_o\,
	datab => \inp[7]~input_o\,
	datac => \inp[3]~input_o\,
	datad => \obrabotka_1|to_save_1|Equal0~0_combout\,
	combout => \obrabotka_1|to_save_1|Equal0~1_combout\);

\obrabotka_1|sig~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|sig~1_combout\ = ((\inp[6]~input_o\ & \obrabotka_1|Cont_seq_1|ESC1~q\)) # (!\obrabotka_1|to_save_1|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[6]~input_o\,
	datab => \obrabotka_1|Cont_seq_1|ESC1~q\,
	datad => \obrabotka_1|to_save_1|Equal0~1_combout\,
	combout => \obrabotka_1|sig~1_combout\);

\obrabotka_1|sig~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|sig~2_combout\ = (\inp[7]~input_o\) # ((\inp[6]~input_o\) # (\inp[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[7]~input_o\,
	datab => \inp[6]~input_o\,
	datac => \inp[2]~input_o\,
	combout => \obrabotka_1|sig~2_combout\);

\obrabotka_1|sig~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|sig~3_combout\ = (\inp[5]~input_o\ & ((!\obrabotka_1|Cont_seq_1|ESC2~q\) # (!\inp[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[5]~input_o\,
	datab => \inp[1]~input_o\,
	datac => \obrabotka_1|Cont_seq_1|ESC2~q\,
	combout => \obrabotka_1|sig~3_combout\);

\obrabotka_1|sig~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|sig~4_combout\ = (\inp[4]~input_o\ & ((\inp[3]~input_o\) # ((!\inp[1]~input_o\) # (!\inp[0]~input_o\)))) # (!\inp[4]~input_o\ & (((\inp[0]~input_o\) # (\inp[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[3]~input_o\,
	datab => \inp[4]~input_o\,
	datac => \inp[0]~input_o\,
	datad => \inp[1]~input_o\,
	combout => \obrabotka_1|sig~4_combout\);

\obrabotka_1|sig~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|sig~5_combout\ = (\obrabotka_1|sig~2_combout\) # ((\obrabotka_1|sig~4_combout\) # (\obrabotka_1|sig~3_combout\ $ (!\inp[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|sig~2_combout\,
	datab => \obrabotka_1|sig~3_combout\,
	datac => \inp[3]~input_o\,
	datad => \obrabotka_1|sig~4_combout\,
	combout => \obrabotka_1|sig~5_combout\);

\obrabotka_1|Cont_seq_1|reset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|reset~0_combout\ = LCELL((!\obrabotka_1|Cont_seq_1|U1|LessThan0~0_combout\ & ((\obrabotka_1|Cont_seq_1|reset~3_combout\) # (!\obrabotka_1|Cont_seq_1|reset~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|Cont_seq_1|reset~3_combout\,
	datac => \obrabotka_1|Cont_seq_1|reset~5_combout\,
	datad => \obrabotka_1|Cont_seq_1|U1|LessThan0~0_combout\,
	combout => \obrabotka_1|Cont_seq_1|reset~0_combout\);

\obrabotka_1|Cont_seq_1|ESC3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|ESC3~0_combout\ = (\obrabotka_1|Cont_seq_1|ESC3~q\) # (\obrabotka_1|Cont_seq_1|reset~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \obrabotka_1|Cont_seq_1|ESC3~q\,
	datad => \obrabotka_1|Cont_seq_1|reset~0_combout\,
	combout => \obrabotka_1|Cont_seq_1|ESC3~0_combout\);

\obrabotka_1|Cont_seq_1|set~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|Cont_seq_1|set~7_combout\ = (\obrabotka_1|Cont_seq_1|U1|Q\(2) & (\obrabotka_1|Cont_seq_1|reset~5_combout\ & ((\obrabotka_1|Cont_seq_1|U1|Q\(0)) # (\obrabotka_1|Cont_seq_1|U1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|Cont_seq_1|U1|Q\(0),
	datab => \obrabotka_1|Cont_seq_1|U1|Q\(1),
	datac => \obrabotka_1|Cont_seq_1|U1|Q\(2),
	datad => \obrabotka_1|Cont_seq_1|reset~5_combout\,
	combout => \obrabotka_1|Cont_seq_1|set~7_combout\);

\obrabotka_1|Cont_seq_1|ESC3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|Cont_seq_1|reset~0_combout\,
	d => \obrabotka_1|Cont_seq_1|ESC3~0_combout\,
	clrn => \obrabotka_1|Cont_seq_1|ALT_INV_set~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|Cont_seq_1|ESC3~q\);

\obrabotka_1|sig~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|sig~6_combout\ = (\inp[4]~input_o\ & (!\inp[7]~input_o\ & !\obrabotka_1|Cont_seq_1|ESC3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[4]~input_o\,
	datab => \inp[7]~input_o\,
	datac => \obrabotka_1|Cont_seq_1|ESC3~q\,
	combout => \obrabotka_1|sig~6_combout\);

\obrabotka_1|sig~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|sig~7_combout\ = (\inp[1]~input_o\ & (\inp[5]~input_o\ & \obrabotka_1|sig~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[1]~input_o\,
	datab => \inp[5]~input_o\,
	datac => \obrabotka_1|sig~6_combout\,
	combout => \obrabotka_1|sig~7_combout\);

\obrabotka_1|sig~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|sig~8_combout\ = (\inp[0]~input_o\ & (!\inp[6]~input_o\ & (\obrabotka_1|Equal0~0_combout\))) # (!\inp[0]~input_o\ & (\inp[6]~input_o\ & ((\obrabotka_1|sig~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[0]~input_o\,
	datab => \inp[6]~input_o\,
	datac => \obrabotka_1|Equal0~0_combout\,
	datad => \obrabotka_1|sig~7_combout\,
	combout => \obrabotka_1|sig~8_combout\);

\obrabotka_1|sig~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|sig~9_combout\ = ((!\obrabotka_1|sig~8_combout\) # (!\inp[3]~input_o\)) # (!\inp[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[2]~input_o\,
	datab => \inp[3]~input_o\,
	datac => \obrabotka_1|sig~8_combout\,
	combout => \obrabotka_1|sig~9_combout\);

\obrabotka_1|sig~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|sig~10_combout\ = (\obrabotka_1|sig~0_combout\ & (\obrabotka_1|sig~1_combout\ & (\obrabotka_1|sig~5_combout\ & \obrabotka_1|sig~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|sig~0_combout\,
	datab => \obrabotka_1|sig~1_combout\,
	datac => \obrabotka_1|sig~5_combout\,
	datad => \obrabotka_1|sig~9_combout\,
	combout => \obrabotka_1|sig~10_combout\);

\obrabotka_1|gate_1|w~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|gate_1|w~0_combout\ = (\generator_1|clk~combout\ & (\obrabotka_1|sig~10_combout\ & !\obrabotka_1|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generator_1|clk~combout\,
	datab => \obrabotka_1|sig~10_combout\,
	datad => \obrabotka_1|Equal0~2_combout\,
	combout => \obrabotka_1|gate_1|w~0_combout\);

\Display_1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|Equal0~0_combout\ = ((!\inp[0]~input_o\ & (!\inp[7]~input_o\ & !\inp[6]~input_o\))) # (!\obrabotka_1|gate_1|w~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[0]~input_o\,
	datab => \inp[7]~input_o\,
	datac => \inp[6]~input_o\,
	datad => \obrabotka_1|gate_1|w~0_combout\,
	combout => \Display_1|Equal0~0_combout\);

\Display_1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|Equal0~1_combout\ = ((!\inp[5]~input_o\ & (!\inp[1]~input_o\ & !\inp[4]~input_o\))) # (!\obrabotka_1|gate_1|w~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[5]~input_o\,
	datab => \inp[1]~input_o\,
	datac => \inp[4]~input_o\,
	datad => \obrabotka_1|gate_1|w~0_combout\,
	combout => \Display_1|Equal0~1_combout\);

\Display_1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|Equal0~2_combout\ = ((!\inp[3]~input_o\ & !\inp[2]~input_o\)) # (!\obrabotka_1|gate_1|w~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inp[3]~input_o\,
	datac => \inp[2]~input_o\,
	datad => \obrabotka_1|gate_1|w~0_combout\,
	combout => \Display_1|Equal0~2_combout\);

\Display_1|clk1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|clk1~2_combout\ = (\Display_1|clk1~1_combout\ & (((!\Display_1|Equal0~2_combout\) # (!\Display_1|Equal0~1_combout\)) # (!\Display_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|clk1~1_combout\,
	datab => \Display_1|Equal0~0_combout\,
	datac => \Display_1|Equal0~1_combout\,
	datad => \Display_1|Equal0~2_combout\,
	combout => \Display_1|clk1~2_combout\);

\obrabotka_1|comands_1|U1|Q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|comands_1|U1|Q[1]~1_combout\ = (\obrabotka_1|comands_1|U1|Q\(0)) # (\obrabotka_1|comands_1|U1|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|comands_1|U1|Q\(0),
	datab => \obrabotka_1|comands_1|U1|Q\(1),
	combout => \obrabotka_1|comands_1|U1|Q[1]~1_combout\);

\obrabotka_1|comands_1|U1|clear~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|comands_1|U1|clear~0_combout\ = (\obrabotka_1|comands_1|U1|Q\(0) & (\obrabotka_1|comands_1|U1|Q\(1) & !\priem_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|comands_1|U1|Q\(0),
	datab => \obrabotka_1|comands_1|U1|Q\(1),
	datad => \priem_in~input_o\,
	combout => \obrabotka_1|comands_1|U1|clear~0_combout\);

\obrabotka_1|comands_1|U1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generator_1|clk~combout\,
	d => \obrabotka_1|comands_1|U1|Q[1]~1_combout\,
	clrn => \obrabotka_1|comands_1|U1|ALT_INV_clear~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|comands_1|U1|Q\(1));

\obrabotka_1|comands_1|U1|Q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|comands_1|U1|Q[0]~0_combout\ = (\obrabotka_1|comands_1|U1|Q\(1)) # (!\obrabotka_1|comands_1|U1|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|comands_1|U1|Q\(1),
	datad => \obrabotka_1|comands_1|U1|Q\(0),
	combout => \obrabotka_1|comands_1|U1|Q[0]~0_combout\);

\obrabotka_1|comands_1|U1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generator_1|clk~combout\,
	d => \obrabotka_1|comands_1|U1|Q[0]~0_combout\,
	clrn => \obrabotka_1|comands_1|U1|ALT_INV_clear~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|comands_1|U1|Q\(0));

\obrabotka_1|comands_1|U2|Q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|comands_1|U2|Q[0]~1_combout\ = \obrabotka_1|comands_1|U2|Q\(2) $ (!\obrabotka_1|comands_1|U2|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \obrabotka_1|comands_1|U2|Q\(2),
	datad => \obrabotka_1|comands_1|U2|Q\(0),
	combout => \obrabotka_1|comands_1|U2|Q[0]~1_combout\);

\obrabotka_1|comands_1|U2|Q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|comands_1|U2|Q[1]~2_combout\ = \obrabotka_1|comands_1|U2|Q\(1) $ (((!\obrabotka_1|comands_1|U2|Q\(2) & \obrabotka_1|comands_1|U2|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|comands_1|U2|Q\(1),
	datab => \obrabotka_1|comands_1|U2|Q\(2),
	datad => \obrabotka_1|comands_1|U2|Q\(0),
	combout => \obrabotka_1|comands_1|U2|Q[1]~2_combout\);

\obrabotka_1|comands_1|U2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generator_1|clk~combout\,
	d => \obrabotka_1|comands_1|U2|Q[1]~2_combout\,
	clrn => \obrabotka_1|comands_1|U2|ALT_INV_clear~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|comands_1|U2|Q\(1));

\obrabotka_1|comands_1|U2|clear~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|comands_1|U2|clear~0_combout\ = (\obrabotka_1|comands_1|U2|Q\(2) & (!\priem_in~input_o\ & (!\obrabotka_1|comands_1|U2|Q\(0) & !\obrabotka_1|comands_1|U2|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|comands_1|U2|Q\(2),
	datab => \priem_in~input_o\,
	datac => \obrabotka_1|comands_1|U2|Q\(0),
	datad => \obrabotka_1|comands_1|U2|Q\(1),
	combout => \obrabotka_1|comands_1|U2|clear~0_combout\);

\obrabotka_1|comands_1|U2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generator_1|clk~combout\,
	d => \obrabotka_1|comands_1|U2|Q[0]~1_combout\,
	clrn => \obrabotka_1|comands_1|U2|ALT_INV_clear~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|comands_1|U2|Q\(0));

\obrabotka_1|comands_1|U2|Q[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|comands_1|U2|Q[2]~0_combout\ = (\obrabotka_1|comands_1|U2|Q\(2)) # ((\obrabotka_1|comands_1|U2|Q\(0) & \obrabotka_1|comands_1|U2|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|comands_1|U2|Q\(2),
	datab => \obrabotka_1|comands_1|U2|Q\(0),
	datac => \obrabotka_1|comands_1|U2|Q\(1),
	combout => \obrabotka_1|comands_1|U2|Q[2]~0_combout\);

\obrabotka_1|comands_1|U2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generator_1|clk~combout\,
	d => \obrabotka_1|comands_1|U2|Q[2]~0_combout\,
	clrn => \obrabotka_1|comands_1|U2|ALT_INV_clear~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|comands_1|U2|Q\(2));

\regist_1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|Add1~0_combout\ = \regist_1|Q[1]~7_combout\ $ (\regist_1|Q[0]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regist_1|Q[1]~7_combout\,
	datad => \regist_1|Q[0]~12_combout\,
	combout => \regist_1|Add1~0_combout\);

\obrabotka_1|comands_1|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|comands_1|Equal7~0_combout\ = (!\obrabotka_1|reg_1|Q\(6) & (!\obrabotka_1|reg_1|Q\(7) & (!\obrabotka_1|reg_1|Q\(4) & !\obrabotka_1|reg_1|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|reg_1|Q\(6),
	datab => \obrabotka_1|reg_1|Q\(7),
	datac => \obrabotka_1|reg_1|Q\(4),
	datad => \obrabotka_1|reg_1|Q\(1),
	combout => \obrabotka_1|comands_1|Equal7~0_combout\);

\obrabotka_1|comands_1|Enter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|comands_1|Enter~0_combout\ = (\obrabotka_1|reg_1|Q\(2) & (\obrabotka_1|reg_1|Q\(0) & (\obrabotka_1|comands_1|U1|Q\(0) & \obrabotka_1|comands_1|U1|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|reg_1|Q\(2),
	datab => \obrabotka_1|reg_1|Q\(0),
	datac => \obrabotka_1|comands_1|U1|Q\(0),
	datad => \obrabotka_1|comands_1|U1|Q\(1),
	combout => \obrabotka_1|comands_1|Enter~0_combout\);

\clear_disp~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear_disp,
	o => \clear_disp~input_o\);

\first_pos~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \first_pos~0_combout\ = (\clear_disp~input_o\) # ((\obrabotka_1|Cont_seq_1|Equal0~0_combout\ & (\obrabotka_1|comands_1|Equal7~0_combout\ & \obrabotka_1|comands_1|Enter~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|Cont_seq_1|Equal0~0_combout\,
	datab => \obrabotka_1|comands_1|Equal7~0_combout\,
	datac => \obrabotka_1|comands_1|Enter~0_combout\,
	datad => \clear_disp~input_o\,
	combout => \first_pos~0_combout\);

\regist_1|Q[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|Q[2]~22_combout\ = (\obrabotka_1|comands_1|U1|Q\(1) & (!\obrabotka_1|comands_1|U2|Q\(2) & ((\regist_1|Q[1]~7_combout\) # (\regist_1|Q[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regist_1|Q[1]~7_combout\,
	datab => \regist_1|Q[2]~2_combout\,
	datac => \obrabotka_1|comands_1|U1|Q\(1),
	datad => \obrabotka_1|comands_1|U2|Q\(2),
	combout => \regist_1|Q[2]~22_combout\);

\obrabotka_1|comands_1|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|comands_1|Equal7~1_combout\ = (\obrabotka_1|Cont_seq_1|Equal0~0_combout\ & (\obrabotka_1|comands_1|Equal7~0_combout\ & (!\obrabotka_1|reg_1|Q\(2) & !\obrabotka_1|reg_1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|Cont_seq_1|Equal0~0_combout\,
	datab => \obrabotka_1|comands_1|Equal7~0_combout\,
	datac => \obrabotka_1|reg_1|Q\(2),
	datad => \obrabotka_1|reg_1|Q\(0),
	combout => \obrabotka_1|comands_1|Equal7~1_combout\);

\regist_1|right_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|right_~3_combout\ = (!\obrabotka_1|reg_3|Q\(2) & (\obrabotka_1|reg_2|Q\(0) & (!\obrabotka_1|reg_2|Q\(7) & !\obrabotka_1|reg_2|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|reg_3|Q\(2),
	datab => \obrabotka_1|reg_2|Q\(0),
	datac => \obrabotka_1|reg_2|Q\(7),
	datad => \obrabotka_1|reg_2|Q\(5),
	combout => \regist_1|right_~3_combout\);

\regist_1|right_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|right_~4_combout\ = (\obrabotka_1|reg_2|Q\(6) & (!\obrabotka_1|reg_3|Q\(6) & (\obrabotka_1|reg_3|Q\(1) & \obrabotka_1|reg_3|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|reg_2|Q\(6),
	datab => \obrabotka_1|reg_3|Q\(6),
	datac => \obrabotka_1|reg_3|Q\(1),
	datad => \obrabotka_1|reg_3|Q\(0),
	combout => \regist_1|right_~4_combout\);

\regist_1|right_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|right_~5_combout\ = (\obrabotka_1|Cont_seq_1|Equal5~0_combout\ & (\obrabotka_1|Cont_seq_1|Equal2~0_combout\ & (\regist_1|right_~3_combout\ & \regist_1|right_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|Cont_seq_1|Equal5~0_combout\,
	datab => \obrabotka_1|Cont_seq_1|Equal2~0_combout\,
	datac => \regist_1|right_~3_combout\,
	datad => \regist_1|right_~4_combout\,
	combout => \regist_1|right_~5_combout\);

\regist_1|right_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|right_~6_combout\ = (!\obrabotka_1|reg_1|Q\(3) & (!\obrabotka_1|reg_1|Q\(7) & (!\obrabotka_1|reg_1|Q\(4) & !\obrabotka_1|reg_1|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|reg_1|Q\(3),
	datab => \obrabotka_1|reg_1|Q\(7),
	datac => \obrabotka_1|reg_1|Q\(4),
	datad => \obrabotka_1|reg_1|Q\(1),
	combout => \regist_1|right_~6_combout\);

\regist_1|Q[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|Q[2]~23_combout\ = (\obrabotka_1|reg_1|Q\(2) & (!\obrabotka_1|reg_1|Q\(0) & (\obrabotka_1|reg_1|Q\(6) & !\obrabotka_1|reg_1|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|reg_1|Q\(2),
	datab => \obrabotka_1|reg_1|Q\(0),
	datac => \obrabotka_1|reg_1|Q\(6),
	datad => \obrabotka_1|reg_1|Q\(5),
	combout => \regist_1|Q[2]~23_combout\);

\regist_1|Q[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|Q[2]~24_combout\ = (\obrabotka_1|comands_1|Equal7~1_combout\) # ((\regist_1|right_~5_combout\ & (\regist_1|right_~6_combout\ & \regist_1|Q[2]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|comands_1|Equal7~1_combout\,
	datab => \regist_1|right_~5_combout\,
	datac => \regist_1|right_~6_combout\,
	datad => \regist_1|Q[2]~23_combout\,
	combout => \regist_1|Q[2]~24_combout\);

\regist_1|Q[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|Q[2]~25_combout\ = (\obrabotka_1|comands_1|U1|Q\(0) & (!\first_pos~0_combout\ & (\regist_1|Q[2]~22_combout\ & \regist_1|Q[2]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|comands_1|U1|Q\(0),
	datab => \first_pos~0_combout\,
	datac => \regist_1|Q[2]~22_combout\,
	datad => \regist_1|Q[2]~24_combout\,
	combout => \regist_1|Q[2]~25_combout\);

\regist_1|Q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|Q[1]~6_combout\ = (!\first_pos~0_combout\ & ((\regist_1|Q[2]~25_combout\ & (!\regist_1|Add1~0_combout\)) # (!\regist_1|Q[2]~25_combout\ & ((\regist_1|Q[1]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regist_1|Add1~0_combout\,
	datab => \regist_1|Q[1]~6_combout\,
	datac => \regist_1|Q[2]~25_combout\,
	datad => \first_pos~0_combout\,
	combout => \regist_1|Q[1]~6_combout\);

\regist_1|Q[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|Q[1]~9_combout\ = \regist_1|Add1~0_combout\ $ (\regist_1|Q[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regist_1|Add1~0_combout\,
	datab => \regist_1|Q[1]~6_combout\,
	combout => \regist_1|Q[1]~9_combout\);

\regist_1|Q[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|Q[2]~0_combout\ = (\first_pos~0_combout\) # (\regist_1|Q[2]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \first_pos~0_combout\,
	datab => \regist_1|Q[2]~25_combout\,
	combout => \regist_1|Q[2]~0_combout\);

\regist_1|Q[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \regist_1|right_~0_combout\,
	d => \regist_1|Q[1]~9_combout\,
	clrn => \regist_1|ALT_INV_Q[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regist_1|Q[1]~_emulated_q\);

\regist_1|Q[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|Q[1]~8_combout\ = \regist_1|Q[1]~_emulated_q\ $ (\regist_1|Q[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regist_1|Q[1]~_emulated_q\,
	datab => \regist_1|Q[1]~6_combout\,
	combout => \regist_1|Q[1]~8_combout\);

\regist_1|Q[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|Q[1]~7_combout\ = (!\first_pos~0_combout\ & ((\regist_1|Q[2]~25_combout\ & ((!\regist_1|Add1~0_combout\))) # (!\regist_1|Q[2]~25_combout\ & (\regist_1|Q[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regist_1|Q[1]~8_combout\,
	datab => \regist_1|Q[2]~25_combout\,
	datac => \regist_1|Add1~0_combout\,
	datad => \first_pos~0_combout\,
	combout => \regist_1|Q[1]~7_combout\);

\regist_1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|Add0~0_combout\ = \regist_1|Q[2]~2_combout\ $ (((\regist_1|Q[1]~7_combout\) # (\regist_1|Q[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regist_1|Q[1]~7_combout\,
	datac => \regist_1|Q[0]~12_combout\,
	datad => \regist_1|Q[2]~2_combout\,
	combout => \regist_1|Add0~0_combout\);

\regist_1|Q[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|Q[2]~1_combout\ = (!\first_pos~0_combout\ & ((\regist_1|Q[2]~25_combout\ & (!\regist_1|Add0~0_combout\)) # (!\regist_1|Q[2]~25_combout\ & ((\regist_1|Q[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regist_1|Add0~0_combout\,
	datab => \regist_1|Q[2]~1_combout\,
	datac => \regist_1|Q[2]~25_combout\,
	datad => \first_pos~0_combout\,
	combout => \regist_1|Q[2]~1_combout\);

\regist_1|Q[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|Q[2]~4_combout\ = \regist_1|Q[2]~2_combout\ $ (\regist_1|Q[2]~1_combout\ $ (((\regist_1|Q[0]~12_combout\ & \regist_1|Q[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regist_1|Q[0]~12_combout\,
	datab => \regist_1|Q[1]~7_combout\,
	datac => \regist_1|Q[2]~2_combout\,
	datad => \regist_1|Q[2]~1_combout\,
	combout => \regist_1|Q[2]~4_combout\);

\regist_1|Q[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \regist_1|right_~0_combout\,
	d => \regist_1|Q[2]~4_combout\,
	clrn => \regist_1|ALT_INV_Q[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regist_1|Q[2]~_emulated_q\);

\regist_1|Q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|Q[2]~3_combout\ = \regist_1|Q[2]~_emulated_q\ $ (\regist_1|Q[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regist_1|Q[2]~_emulated_q\,
	datab => \regist_1|Q[2]~1_combout\,
	combout => \regist_1|Q[2]~3_combout\);

\regist_1|Q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|Q[2]~2_combout\ = (!\first_pos~0_combout\ & ((\regist_1|Q[2]~25_combout\ & ((!\regist_1|Add0~0_combout\))) # (!\regist_1|Q[2]~25_combout\ & (\regist_1|Q[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regist_1|Q[2]~3_combout\,
	datab => \regist_1|Q[2]~25_combout\,
	datac => \regist_1|Add0~0_combout\,
	datad => \first_pos~0_combout\,
	combout => \regist_1|Q[2]~2_combout\);

\regist_1|right_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|right_~7_combout\ = (\obrabotka_1|comands_1|U1|Q\(0) & (\obrabotka_1|comands_1|U1|Q\(1) & (!\obrabotka_1|comands_1|U2|Q\(2) & !\regist_1|Q[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|comands_1|U1|Q\(0),
	datab => \obrabotka_1|comands_1|U1|Q\(1),
	datac => \obrabotka_1|comands_1|U2|Q\(2),
	datad => \regist_1|Q[2]~2_combout\,
	combout => \regist_1|right_~7_combout\);

\regist_1|right_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|right_~8_combout\ = (\obrabotka_1|reg_1|Q\(6) & (\regist_1|right_~5_combout\ & (\obrabotka_1|reg_1|Q\(0) & !\obrabotka_1|reg_1|Q\(5)))) # (!\obrabotka_1|reg_1|Q\(6) & (((!\obrabotka_1|reg_1|Q\(0) & \obrabotka_1|reg_1|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regist_1|right_~5_combout\,
	datab => \obrabotka_1|reg_1|Q\(6),
	datac => \obrabotka_1|reg_1|Q\(0),
	datad => \obrabotka_1|reg_1|Q\(5),
	combout => \regist_1|right_~8_combout\);

\regist_1|right_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|right_~9_combout\ = (\regist_1|right_~7_combout\ & (\regist_1|right_~8_combout\ & (\regist_1|right_~6_combout\ & !\obrabotka_1|reg_1|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regist_1|right_~7_combout\,
	datab => \regist_1|right_~8_combout\,
	datac => \regist_1|right_~6_combout\,
	datad => \obrabotka_1|reg_1|Q\(2),
	combout => \regist_1|right_~9_combout\);

\obrabotka_1|gate_1|U1|Q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|gate_1|U1|Q[1]~1_combout\ = (\obrabotka_1|gate_1|U1|Q\(0)) # (\obrabotka_1|gate_1|U1|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|gate_1|U1|Q\(0),
	datab => \obrabotka_1|gate_1|U1|Q\(1),
	combout => \obrabotka_1|gate_1|U1|Q[1]~1_combout\);

\obrabotka_1|gate_1|U1|clear~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|gate_1|U1|clear~0_combout\ = (\obrabotka_1|gate_1|U1|Q\(0) & (\obrabotka_1|gate_1|U1|Q\(1) & !\priem_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|gate_1|U1|Q\(0),
	datab => \obrabotka_1|gate_1|U1|Q\(1),
	datad => \priem_in~input_o\,
	combout => \obrabotka_1|gate_1|U1|clear~0_combout\);

\obrabotka_1|gate_1|U1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generator_1|clk~combout\,
	d => \obrabotka_1|gate_1|U1|Q[1]~1_combout\,
	clrn => \obrabotka_1|gate_1|U1|ALT_INV_clear~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|gate_1|U1|Q\(1));

\obrabotka_1|gate_1|U1|Q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|gate_1|U1|Q[0]~0_combout\ = (\obrabotka_1|gate_1|U1|Q\(1)) # (!\obrabotka_1|gate_1|U1|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|gate_1|U1|Q\(1),
	datad => \obrabotka_1|gate_1|U1|Q\(0),
	combout => \obrabotka_1|gate_1|U1|Q[0]~0_combout\);

\obrabotka_1|gate_1|U1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generator_1|clk~combout\,
	d => \obrabotka_1|gate_1|U1|Q[0]~0_combout\,
	clrn => \obrabotka_1|gate_1|U1|ALT_INV_clear~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|gate_1|U1|Q\(0));

\obrabotka_1|gate_1|U2|Q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|gate_1|U2|Q[0]~1_combout\ = \obrabotka_1|gate_1|U2|Q\(2) $ (!\obrabotka_1|gate_1|U2|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \obrabotka_1|gate_1|U2|Q\(2),
	datad => \obrabotka_1|gate_1|U2|Q\(0),
	combout => \obrabotka_1|gate_1|U2|Q[0]~1_combout\);

\obrabotka_1|gate_1|U2|Q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|gate_1|U2|Q[1]~2_combout\ = \obrabotka_1|gate_1|U2|Q\(1) $ (((!\obrabotka_1|gate_1|U2|Q\(2) & \obrabotka_1|gate_1|U2|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|gate_1|U2|Q\(1),
	datab => \obrabotka_1|gate_1|U2|Q\(2),
	datad => \obrabotka_1|gate_1|U2|Q\(0),
	combout => \obrabotka_1|gate_1|U2|Q[1]~2_combout\);

\obrabotka_1|gate_1|U2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generator_1|clk~combout\,
	d => \obrabotka_1|gate_1|U2|Q[1]~2_combout\,
	clrn => \obrabotka_1|gate_1|U2|ALT_INV_clear~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|gate_1|U2|Q\(1));

\obrabotka_1|gate_1|U2|clear~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|gate_1|U2|clear~0_combout\ = (\obrabotka_1|gate_1|U2|Q\(2) & (!\priem_in~input_o\ & (!\obrabotka_1|gate_1|U2|Q\(0) & !\obrabotka_1|gate_1|U2|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|gate_1|U2|Q\(2),
	datab => \priem_in~input_o\,
	datac => \obrabotka_1|gate_1|U2|Q\(0),
	datad => \obrabotka_1|gate_1|U2|Q\(1),
	combout => \obrabotka_1|gate_1|U2|clear~0_combout\);

\obrabotka_1|gate_1|U2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generator_1|clk~combout\,
	d => \obrabotka_1|gate_1|U2|Q[0]~1_combout\,
	clrn => \obrabotka_1|gate_1|U2|ALT_INV_clear~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|gate_1|U2|Q\(0));

\obrabotka_1|gate_1|U2|Q[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|gate_1|U2|Q[2]~0_combout\ = (\obrabotka_1|gate_1|U2|Q\(2)) # ((\obrabotka_1|gate_1|U2|Q\(0) & \obrabotka_1|gate_1|U2|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|gate_1|U2|Q\(2),
	datab => \obrabotka_1|gate_1|U2|Q\(0),
	datac => \obrabotka_1|gate_1|U2|Q\(1),
	combout => \obrabotka_1|gate_1|U2|Q[2]~0_combout\);

\obrabotka_1|gate_1|U2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \generator_1|clk~combout\,
	d => \obrabotka_1|gate_1|U2|Q[2]~0_combout\,
	clrn => \obrabotka_1|gate_1|U2|ALT_INV_clear~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|gate_1|U2|Q\(2));

\regist_1|right_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|right_~10_combout\ = (\regist_1|right_~7_combout\ & (\obrabotka_1|gate_1|U1|Q\(0) & (\obrabotka_1|gate_1|U1|Q\(1) & !\obrabotka_1|gate_1|U2|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regist_1|right_~7_combout\,
	datab => \obrabotka_1|gate_1|U1|Q\(0),
	datac => \obrabotka_1|gate_1|U1|Q\(1),
	datad => \obrabotka_1|gate_1|U2|Q\(2),
	combout => \regist_1|right_~10_combout\);

\regist_1|right_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|right_~0_combout\ = LCELL((\regist_1|right_~9_combout\) # ((\obrabotka_1|sig~10_combout\ & (\regist_1|right_~10_combout\ & !\obrabotka_1|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regist_1|right_~9_combout\,
	datab => \obrabotka_1|sig~10_combout\,
	datac => \regist_1|right_~10_combout\,
	datad => \obrabotka_1|Equal0~2_combout\,
	combout => \regist_1|right_~0_combout\);

\regist_1|Q[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|Q[0]~11_combout\ = (\first_pos~0_combout\) # ((\regist_1|Q[2]~25_combout\ & (!\regist_1|Q[0]~12_combout\)) # (!\regist_1|Q[2]~25_combout\ & ((\regist_1|Q[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regist_1|Q[0]~12_combout\,
	datab => \regist_1|Q[0]~11_combout\,
	datac => \regist_1|Q[2]~25_combout\,
	datad => \first_pos~0_combout\,
	combout => \regist_1|Q[0]~11_combout\);

\regist_1|Q[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|Q[0]~14_combout\ = \regist_1|Q[0]~12_combout\ $ (!\regist_1|Q[0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regist_1|Q[0]~12_combout\,
	datab => \regist_1|Q[0]~11_combout\,
	combout => \regist_1|Q[0]~14_combout\);

\regist_1|Q[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \regist_1|right_~0_combout\,
	d => \regist_1|Q[0]~14_combout\,
	clrn => \regist_1|ALT_INV_Q[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regist_1|Q[0]~_emulated_q\);

\regist_1|Q[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|Q[0]~13_combout\ = \regist_1|Q[0]~_emulated_q\ $ (\regist_1|Q[0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regist_1|Q[0]~_emulated_q\,
	datab => \regist_1|Q[0]~11_combout\,
	combout => \regist_1|Q[0]~13_combout\);

\regist_1|Q[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \regist_1|Q[0]~12_combout\ = (\first_pos~0_combout\) # ((\regist_1|Q[2]~25_combout\ & ((!\regist_1|Q[0]~12_combout\))) # (!\regist_1|Q[2]~25_combout\ & (\regist_1|Q[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regist_1|Q[0]~13_combout\,
	datab => \regist_1|Q[2]~25_combout\,
	datac => \regist_1|Q[0]~12_combout\,
	datad => \first_pos~0_combout\,
	combout => \regist_1|Q[0]~12_combout\);

\Display_1|clk1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|clk1~3_combout\ = (\Display_1|clk1~2_combout\ & (\regist_1|Q[0]~12_combout\ & !\regist_1|Q[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|clk1~2_combout\,
	datab => \regist_1|Q[0]~12_combout\,
	datad => \regist_1|Q[2]~2_combout\,
	combout => \Display_1|clk1~3_combout\);

\obrabotka_1|gate_1|res[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|gate_1|res[7]~3_combout\ = (\generator_1|clk~combout\ & (\inp[7]~input_o\ & (\obrabotka_1|sig~10_combout\ & !\obrabotka_1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generator_1|clk~combout\,
	datab => \inp[7]~input_o\,
	datac => \obrabotka_1|sig~10_combout\,
	datad => \obrabotka_1|Equal0~2_combout\,
	combout => \obrabotka_1|gate_1|res[7]~3_combout\);

\Reset_4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset_4,
	o => \Reset_4~input_o\);

\obrabotka_1|res4\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|res4~combout\ = (\obrabotka_1|res0~0_combout\) # (\Reset_4~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|res0~0_combout\,
	datab => \Reset_4~input_o\,
	combout => \obrabotka_1|res4~combout\);

\obrabotka_1|reg_4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \obrabotka_1|reg_3|Q\(3),
	clrn => \obrabotka_1|ALT_INV_res4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_4|Q\(3));

\obrabotka_1|reg_4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \obrabotka_1|reg_3|Q\(1),
	clrn => \obrabotka_1|ALT_INV_res4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_4|Q\(1));

\obrabotka_1|reg_4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \obrabotka_1|reg_3|Q\(0),
	clrn => \obrabotka_1|ALT_INV_res4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_4|Q\(0));

\obrabotka_1|reg_4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \obrabotka_1|reg_3|Q\(2),
	clrn => \obrabotka_1|ALT_INV_res4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_4|Q\(2));

\obrabotka_1|comands_1|Delete~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|comands_1|Delete~0_combout\ = (\obrabotka_1|reg_4|Q\(3) & (\obrabotka_1|reg_4|Q\(1) & (\obrabotka_1|reg_4|Q\(0) & !\obrabotka_1|reg_4|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|reg_4|Q\(3),
	datab => \obrabotka_1|reg_4|Q\(1),
	datac => \obrabotka_1|reg_4|Q\(0),
	datad => \obrabotka_1|reg_4|Q\(2),
	combout => \obrabotka_1|comands_1|Delete~0_combout\);

\obrabotka_1|comands_1|Delete~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|comands_1|Delete~1_combout\ = (\obrabotka_1|reg_1|Q\(5) & (\obrabotka_1|reg_1|Q\(6) & (!\obrabotka_1|reg_1|Q\(0) & !\obrabotka_1|reg_2|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|reg_1|Q\(5),
	datab => \obrabotka_1|reg_1|Q\(6),
	datac => \obrabotka_1|reg_1|Q\(0),
	datad => \obrabotka_1|reg_2|Q\(6),
	combout => \obrabotka_1|comands_1|Delete~1_combout\);

\obrabotka_1|comands_1|Delete~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|comands_1|Delete~2_combout\ = (\obrabotka_1|reg_1|Q\(3) & (\obrabotka_1|Cont_seq_1|Equal0~1_combout\ & \obrabotka_1|comands_1|Delete~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|reg_1|Q\(3),
	datab => \obrabotka_1|Cont_seq_1|Equal0~1_combout\,
	datac => \obrabotka_1|comands_1|Delete~1_combout\,
	combout => \obrabotka_1|comands_1|Delete~2_combout\);

\obrabotka_1|comands_1|Delete~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|comands_1|Delete~3_combout\ = (\obrabotka_1|reg_1|Q\(2) & (\obrabotka_1|reg_2|Q\(7) & (\obrabotka_1|reg_2|Q\(5) & \obrabotka_1|reg_3|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|reg_1|Q\(2),
	datab => \obrabotka_1|reg_2|Q\(7),
	datac => \obrabotka_1|reg_2|Q\(5),
	datad => \obrabotka_1|reg_3|Q\(6),
	combout => \obrabotka_1|comands_1|Delete~3_combout\);

\obrabotka_1|reg_4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \obrabotka_1|reg_3|Q\(4),
	clrn => \obrabotka_1|ALT_INV_res4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_4|Q\(4));

\obrabotka_1|reg_4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \obrabotka_1|reg_3|Q\(7),
	clrn => \obrabotka_1|ALT_INV_res4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_4|Q\(7));

\obrabotka_1|reg_4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \obrabotka_1|reg_3|Q\(6),
	clrn => \obrabotka_1|ALT_INV_res4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_4|Q\(6));

\obrabotka_1|reg_4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \obrabotka_1|nclk~combout\,
	d => \obrabotka_1|reg_3|Q\(5),
	clrn => \obrabotka_1|ALT_INV_res4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obrabotka_1|reg_4|Q\(5));

\obrabotka_1|comands_1|Delete~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|comands_1|Delete~4_combout\ = (\obrabotka_1|reg_4|Q\(4) & (!\obrabotka_1|reg_4|Q\(7) & (!\obrabotka_1|reg_4|Q\(6) & !\obrabotka_1|reg_4|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|reg_4|Q\(4),
	datab => \obrabotka_1|reg_4|Q\(7),
	datac => \obrabotka_1|reg_4|Q\(6),
	datad => \obrabotka_1|reg_4|Q\(5),
	combout => \obrabotka_1|comands_1|Delete~4_combout\);

\obrabotka_1|comands_1|Delete~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|comands_1|Delete~5_combout\ = (\obrabotka_1|comands_1|Delete~0_combout\ & (\obrabotka_1|comands_1|Delete~2_combout\ & (\obrabotka_1|comands_1|Delete~3_combout\ & \obrabotka_1|comands_1|Delete~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|comands_1|Delete~0_combout\,
	datab => \obrabotka_1|comands_1|Delete~2_combout\,
	datac => \obrabotka_1|comands_1|Delete~3_combout\,
	datad => \obrabotka_1|comands_1|Delete~4_combout\,
	combout => \obrabotka_1|comands_1|Delete~5_combout\);

\obrabotka_1|comands_1|Delete~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|comands_1|Delete~6_combout\ = (\obrabotka_1|reg_2|Q\(0) & (\obrabotka_1|Cont_seq_1|Equal2~0_combout\ & (\obrabotka_1|Cont_seq_1|Equal5~1_combout\ & \obrabotka_1|comands_1|Delete~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|reg_2|Q\(0),
	datab => \obrabotka_1|Cont_seq_1|Equal2~0_combout\,
	datac => \obrabotka_1|Cont_seq_1|Equal5~1_combout\,
	datad => \obrabotka_1|comands_1|Delete~5_combout\,
	combout => \obrabotka_1|comands_1|Delete~6_combout\);

\res1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \res1~0_combout\ = (\obrabotka_1|comands_1|U2|Q\(2) & (!\regist_1|Q[2]~2_combout\ & ((\obrabotka_1|comands_1|Equal7~1_combout\) # (\obrabotka_1|comands_1|Delete~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|comands_1|U2|Q\(2),
	datab => \obrabotka_1|comands_1|Equal7~1_combout\,
	datac => \obrabotka_1|comands_1|Delete~6_combout\,
	datad => \regist_1|Q[2]~2_combout\,
	combout => \res1~0_combout\);

res1 : cycloneive_lcell_comb
-- Equation(s):
-- \res1~combout\ = (\first_pos~0_combout\) # ((\res1~0_combout\ & (\regist_1|Q[0]~12_combout\ & !\regist_1|Q[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res1~0_combout\,
	datab => \regist_1|Q[0]~12_combout\,
	datac => \regist_1|Q[1]~7_combout\,
	datad => \first_pos~0_combout\,
	combout => \res1~combout\);

\Display_1|reg_1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk1~0_combout\,
	d => \obrabotka_1|gate_1|res[7]~3_combout\,
	clrn => \ALT_INV_res1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_1|Q\(7));

\obrabotka_1|gate_1|res[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|gate_1|res[6]~4_combout\ = (\generator_1|clk~combout\ & (\inp[6]~input_o\ & (\obrabotka_1|sig~10_combout\ & !\obrabotka_1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generator_1|clk~combout\,
	datab => \inp[6]~input_o\,
	datac => \obrabotka_1|sig~10_combout\,
	datad => \obrabotka_1|Equal0~2_combout\,
	combout => \obrabotka_1|gate_1|res[6]~4_combout\);

\Display_1|reg_1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk1~0_combout\,
	d => \obrabotka_1|gate_1|res[6]~4_combout\,
	clrn => \ALT_INV_res1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_1|Q\(6));

\obrabotka_1|gate_1|res[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|gate_1|res[5]~1_combout\ = (\generator_1|clk~combout\ & (\inp[5]~input_o\ & (\obrabotka_1|sig~10_combout\ & !\obrabotka_1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generator_1|clk~combout\,
	datab => \inp[5]~input_o\,
	datac => \obrabotka_1|sig~10_combout\,
	datad => \obrabotka_1|Equal0~2_combout\,
	combout => \obrabotka_1|gate_1|res[5]~1_combout\);

\Display_1|reg_1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk1~0_combout\,
	d => \obrabotka_1|gate_1|res[5]~1_combout\,
	clrn => \ALT_INV_res1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_1|Q\(5));

\obrabotka_1|gate_1|res[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|gate_1|res[4]~2_combout\ = (\generator_1|clk~combout\ & (\inp[4]~input_o\ & (\obrabotka_1|sig~10_combout\ & !\obrabotka_1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generator_1|clk~combout\,
	datab => \inp[4]~input_o\,
	datac => \obrabotka_1|sig~10_combout\,
	datad => \obrabotka_1|Equal0~2_combout\,
	combout => \obrabotka_1|gate_1|res[4]~2_combout\);

\Display_1|reg_1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk1~0_combout\,
	d => \obrabotka_1|gate_1|res[4]~2_combout\,
	clrn => \ALT_INV_res1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_1|Q\(4));

\Display_1|clk1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|clk1~4_combout\ = (!\Display_1|reg_1|Q\(7) & (!\Display_1|reg_1|Q\(6) & (!\Display_1|reg_1|Q\(5) & !\Display_1|reg_1|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_1|Q\(7),
	datab => \Display_1|reg_1|Q\(6),
	datac => \Display_1|reg_1|Q\(5),
	datad => \Display_1|reg_1|Q\(4),
	combout => \Display_1|clk1~4_combout\);

\obrabotka_1|gate_1|res[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|gate_1|res[1]~5_combout\ = (\generator_1|clk~combout\ & (\inp[1]~input_o\ & (\obrabotka_1|sig~10_combout\ & !\obrabotka_1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generator_1|clk~combout\,
	datab => \inp[1]~input_o\,
	datac => \obrabotka_1|sig~10_combout\,
	datad => \obrabotka_1|Equal0~2_combout\,
	combout => \obrabotka_1|gate_1|res[1]~5_combout\);

\Display_1|reg_1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk1~0_combout\,
	d => \obrabotka_1|gate_1|res[1]~5_combout\,
	clrn => \ALT_INV_res1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_1|Q\(1));

\obrabotka_1|gate_1|res[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|gate_1|res[2]~6_combout\ = (\generator_1|clk~combout\ & (\inp[2]~input_o\ & (\obrabotka_1|sig~10_combout\ & !\obrabotka_1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generator_1|clk~combout\,
	datab => \inp[2]~input_o\,
	datac => \obrabotka_1|sig~10_combout\,
	datad => \obrabotka_1|Equal0~2_combout\,
	combout => \obrabotka_1|gate_1|res[2]~6_combout\);

\Display_1|reg_1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk1~0_combout\,
	d => \obrabotka_1|gate_1|res[2]~6_combout\,
	clrn => \ALT_INV_res1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_1|Q\(2));

\obrabotka_1|gate_1|res[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|gate_1|res[3]~7_combout\ = (\generator_1|clk~combout\ & (\inp[3]~input_o\ & (\obrabotka_1|sig~10_combout\ & !\obrabotka_1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generator_1|clk~combout\,
	datab => \inp[3]~input_o\,
	datac => \obrabotka_1|sig~10_combout\,
	datad => \obrabotka_1|Equal0~2_combout\,
	combout => \obrabotka_1|gate_1|res[3]~7_combout\);

\Display_1|reg_1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk1~0_combout\,
	d => \obrabotka_1|gate_1|res[3]~7_combout\,
	clrn => \ALT_INV_res1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_1|Q\(3));

\Display_1|clk1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|clk1~5_combout\ = (!\Display_1|reg_1|Q\(0) & (!\Display_1|reg_1|Q\(1) & (!\Display_1|reg_1|Q\(2) & !\Display_1|reg_1|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_1|Q\(0),
	datab => \Display_1|reg_1|Q\(1),
	datac => \Display_1|reg_1|Q\(2),
	datad => \Display_1|reg_1|Q\(3),
	combout => \Display_1|clk1~5_combout\);

\Display_1|clk1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|clk1~0_combout\ = LCELL((\Display_1|clk1~3_combout\ & (\Display_1|clk1~4_combout\ & (\Display_1|clk1~5_combout\ & !\regist_1|Q[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|clk1~3_combout\,
	datab => \Display_1|clk1~4_combout\,
	datac => \Display_1|clk1~5_combout\,
	datad => \regist_1|Q[1]~7_combout\,
	combout => \Display_1|clk1~0_combout\);

\obrabotka_1|gate_1|res[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|gate_1|res[0]~0_combout\ = (\inp[0]~input_o\ & (\generator_1|clk~combout\ & (\obrabotka_1|sig~10_combout\ & !\obrabotka_1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[0]~input_o\,
	datab => \generator_1|clk~combout\,
	datac => \obrabotka_1|sig~10_combout\,
	datad => \obrabotka_1|Equal0~2_combout\,
	combout => \obrabotka_1|gate_1|res[0]~0_combout\);

\Display_1|reg_1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk1~0_combout\,
	d => \obrabotka_1|gate_1|res[0]~0_combout\,
	clrn => \ALT_INV_res1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_1|Q\(0));

\ascii_to_bcd_1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ascii_to_bcd_1|Equal0~0_combout\ = (\Display_1|reg_1|Q\(5) & (\Display_1|reg_1|Q\(4) & (!\Display_1|reg_1|Q\(7) & !\Display_1|reg_1|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_1|Q\(5),
	datab => \Display_1|reg_1|Q\(4),
	datac => \Display_1|reg_1|Q\(7),
	datad => \Display_1|reg_1|Q\(6),
	combout => \ascii_to_bcd_1|Equal0~0_combout\);

\ascii_to_bcd_1|BCD[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ascii_to_bcd_1|BCD[0]~0_combout\ = (\Display_1|reg_1|Q\(0)) # (!\ascii_to_bcd_1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_1|Q\(0),
	datad => \ascii_to_bcd_1|Equal0~0_combout\,
	combout => \ascii_to_bcd_1|BCD[0]~0_combout\);

\ascii_to_bcd_1|BCD[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ascii_to_bcd_1|BCD[1]~1_combout\ = (\Display_1|reg_1|Q\(1)) # (!\ascii_to_bcd_1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_1|Q\(1),
	datad => \ascii_to_bcd_1|Equal0~0_combout\,
	combout => \ascii_to_bcd_1|BCD[1]~1_combout\);

\ascii_to_bcd_1|BCD[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ascii_to_bcd_1|BCD[2]~2_combout\ = (\Display_1|reg_1|Q\(2)) # (!\ascii_to_bcd_1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_1|Q\(2),
	datad => \ascii_to_bcd_1|Equal0~0_combout\,
	combout => \ascii_to_bcd_1|BCD[2]~2_combout\);

\ascii_to_bcd_1|BCD[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ascii_to_bcd_1|BCD[3]~3_combout\ = (\Display_1|reg_1|Q\(3)) # (!\ascii_to_bcd_1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_1|Q\(3),
	datad => \ascii_to_bcd_1|Equal0~0_combout\,
	combout => \ascii_to_bcd_1|BCD[3]~3_combout\);

res2 : cycloneive_lcell_comb
-- Equation(s):
-- \res2~combout\ = (\first_pos~0_combout\) # ((\res1~0_combout\ & (\regist_1|Q[1]~7_combout\ & !\regist_1|Q[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res1~0_combout\,
	datab => \regist_1|Q[1]~7_combout\,
	datac => \regist_1|Q[0]~12_combout\,
	datad => \first_pos~0_combout\,
	combout => \res2~combout\);

\Display_1|reg_2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk2~0_combout\,
	d => \obrabotka_1|gate_1|res[7]~3_combout\,
	clrn => \ALT_INV_res2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_2|Q\(7));

\Display_1|reg_2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk2~0_combout\,
	d => \obrabotka_1|gate_1|res[6]~4_combout\,
	clrn => \ALT_INV_res2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_2|Q\(6));

\Display_1|clk2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|clk2~1_combout\ = (\regist_1|Q[1]~7_combout\ & (!\Display_1|reg_2|Q\(7) & (!\Display_1|reg_2|Q\(6) & !\regist_1|Q[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regist_1|Q[1]~7_combout\,
	datab => \Display_1|reg_2|Q\(7),
	datac => \Display_1|reg_2|Q\(6),
	datad => \regist_1|Q[0]~12_combout\,
	combout => \Display_1|clk2~1_combout\);

\Display_1|reg_2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk2~0_combout\,
	d => \obrabotka_1|gate_1|res[5]~1_combout\,
	clrn => \ALT_INV_res2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_2|Q\(5));

\Display_1|reg_2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk2~0_combout\,
	d => \obrabotka_1|gate_1|res[4]~2_combout\,
	clrn => \ALT_INV_res2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_2|Q\(4));

\Display_1|reg_2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk2~0_combout\,
	d => \obrabotka_1|gate_1|res[2]~6_combout\,
	clrn => \ALT_INV_res2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_2|Q\(2));

\Display_1|reg_2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk2~0_combout\,
	d => \obrabotka_1|gate_1|res[3]~7_combout\,
	clrn => \ALT_INV_res2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_2|Q\(3));

\Display_1|clk2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|clk2~2_combout\ = (!\Display_1|reg_2|Q\(5) & (!\Display_1|reg_2|Q\(4) & (!\Display_1|reg_2|Q\(2) & !\Display_1|reg_2|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_2|Q\(5),
	datab => \Display_1|reg_2|Q\(4),
	datac => \Display_1|reg_2|Q\(2),
	datad => \Display_1|reg_2|Q\(3),
	combout => \Display_1|clk2~2_combout\);

\Display_1|reg_2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk2~0_combout\,
	d => \obrabotka_1|gate_1|res[1]~5_combout\,
	clrn => \ALT_INV_res2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_2|Q\(1));

\Display_1|clk2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|clk2~3_combout\ = (\Display_1|clk2~2_combout\ & (!\Display_1|reg_2|Q\(0) & !\Display_1|reg_2|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|clk2~2_combout\,
	datac => \Display_1|reg_2|Q\(0),
	datad => \Display_1|reg_2|Q\(1),
	combout => \Display_1|clk2~3_combout\);

\Display_1|clk2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|clk2~0_combout\ = LCELL((\Display_1|clk1~2_combout\ & (\Display_1|clk2~1_combout\ & (\Display_1|clk2~3_combout\ & !\regist_1|Q[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|clk1~2_combout\,
	datab => \Display_1|clk2~1_combout\,
	datac => \Display_1|clk2~3_combout\,
	datad => \regist_1|Q[2]~2_combout\,
	combout => \Display_1|clk2~0_combout\);

\Display_1|reg_2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk2~0_combout\,
	d => \obrabotka_1|gate_1|res[0]~0_combout\,
	clrn => \ALT_INV_res2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_2|Q\(0));

\ascii_to_bcd_2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ascii_to_bcd_2|Equal0~0_combout\ = (\Display_1|reg_2|Q\(5) & (\Display_1|reg_2|Q\(4) & (!\Display_1|reg_2|Q\(7) & !\Display_1|reg_2|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_2|Q\(5),
	datab => \Display_1|reg_2|Q\(4),
	datac => \Display_1|reg_2|Q\(7),
	datad => \Display_1|reg_2|Q\(6),
	combout => \ascii_to_bcd_2|Equal0~0_combout\);

\ascii_to_bcd_2|BCD[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ascii_to_bcd_2|BCD[0]~0_combout\ = (\Display_1|reg_2|Q\(0)) # (!\ascii_to_bcd_2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_2|Q\(0),
	datad => \ascii_to_bcd_2|Equal0~0_combout\,
	combout => \ascii_to_bcd_2|BCD[0]~0_combout\);

\ascii_to_bcd_2|BCD[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ascii_to_bcd_2|BCD[1]~1_combout\ = (\Display_1|reg_2|Q\(1)) # (!\ascii_to_bcd_2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_2|Q\(1),
	datad => \ascii_to_bcd_2|Equal0~0_combout\,
	combout => \ascii_to_bcd_2|BCD[1]~1_combout\);

\ascii_to_bcd_2|BCD[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ascii_to_bcd_2|BCD[2]~2_combout\ = (\Display_1|reg_2|Q\(2)) # (!\ascii_to_bcd_2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_2|Q\(2),
	datad => \ascii_to_bcd_2|Equal0~0_combout\,
	combout => \ascii_to_bcd_2|BCD[2]~2_combout\);

\ascii_to_bcd_2|BCD[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ascii_to_bcd_2|BCD[3]~3_combout\ = (\Display_1|reg_2|Q\(3)) # (!\ascii_to_bcd_2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_2|Q\(3),
	datad => \ascii_to_bcd_2|Equal0~0_combout\,
	combout => \ascii_to_bcd_2|BCD[3]~3_combout\);

res3 : cycloneive_lcell_comb
-- Equation(s):
-- \res3~combout\ = (\first_pos~0_combout\) # ((\res1~0_combout\ & (\regist_1|Q[1]~7_combout\ & \regist_1|Q[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res1~0_combout\,
	datab => \regist_1|Q[1]~7_combout\,
	datac => \regist_1|Q[0]~12_combout\,
	datad => \first_pos~0_combout\,
	combout => \res3~combout\);

\Display_1|reg_3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk3~0_combout\,
	d => \obrabotka_1|gate_1|res[7]~3_combout\,
	clrn => \ALT_INV_res3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_3|Q\(7));

\Display_1|reg_3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk3~0_combout\,
	d => \obrabotka_1|gate_1|res[6]~4_combout\,
	clrn => \ALT_INV_res3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_3|Q\(6));

\Display_1|reg_3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk3~0_combout\,
	d => \obrabotka_1|gate_1|res[5]~1_combout\,
	clrn => \ALT_INV_res3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_3|Q\(5));

\Display_1|reg_3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk3~0_combout\,
	d => \obrabotka_1|gate_1|res[4]~2_combout\,
	clrn => \ALT_INV_res3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_3|Q\(4));

\Display_1|clk3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|clk3~1_combout\ = (!\Display_1|reg_3|Q\(7) & (!\Display_1|reg_3|Q\(6) & (!\Display_1|reg_3|Q\(5) & !\Display_1|reg_3|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_3|Q\(7),
	datab => \Display_1|reg_3|Q\(6),
	datac => \Display_1|reg_3|Q\(5),
	datad => \Display_1|reg_3|Q\(4),
	combout => \Display_1|clk3~1_combout\);

\Display_1|reg_3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk3~0_combout\,
	d => \obrabotka_1|gate_1|res[1]~5_combout\,
	clrn => \ALT_INV_res3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_3|Q\(1));

\Display_1|reg_3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk3~0_combout\,
	d => \obrabotka_1|gate_1|res[2]~6_combout\,
	clrn => \ALT_INV_res3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_3|Q\(2));

\Display_1|reg_3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk3~0_combout\,
	d => \obrabotka_1|gate_1|res[3]~7_combout\,
	clrn => \ALT_INV_res3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_3|Q\(3));

\Display_1|clk3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|clk3~2_combout\ = (!\Display_1|reg_3|Q\(0) & (!\Display_1|reg_3|Q\(1) & (!\Display_1|reg_3|Q\(2) & !\Display_1|reg_3|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_3|Q\(0),
	datab => \Display_1|reg_3|Q\(1),
	datac => \Display_1|reg_3|Q\(2),
	datad => \Display_1|reg_3|Q\(3),
	combout => \Display_1|clk3~2_combout\);

\Display_1|clk3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|clk3~0_combout\ = LCELL((\Display_1|clk1~3_combout\ & (\regist_1|Q[1]~7_combout\ & (\Display_1|clk3~1_combout\ & \Display_1|clk3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|clk1~3_combout\,
	datab => \regist_1|Q[1]~7_combout\,
	datac => \Display_1|clk3~1_combout\,
	datad => \Display_1|clk3~2_combout\,
	combout => \Display_1|clk3~0_combout\);

\Display_1|reg_3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk3~0_combout\,
	d => \obrabotka_1|gate_1|res[0]~0_combout\,
	clrn => \ALT_INV_res3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_3|Q\(0));

\ascii_to_bcd_3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ascii_to_bcd_3|Equal0~0_combout\ = (\Display_1|reg_3|Q\(5) & (\Display_1|reg_3|Q\(4) & (!\Display_1|reg_3|Q\(7) & !\Display_1|reg_3|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_3|Q\(5),
	datab => \Display_1|reg_3|Q\(4),
	datac => \Display_1|reg_3|Q\(7),
	datad => \Display_1|reg_3|Q\(6),
	combout => \ascii_to_bcd_3|Equal0~0_combout\);

\ascii_to_bcd_3|BCD[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ascii_to_bcd_3|BCD[0]~0_combout\ = (\Display_1|reg_3|Q\(0)) # (!\ascii_to_bcd_3|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_3|Q\(0),
	datad => \ascii_to_bcd_3|Equal0~0_combout\,
	combout => \ascii_to_bcd_3|BCD[0]~0_combout\);

\ascii_to_bcd_3|BCD[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ascii_to_bcd_3|BCD[1]~1_combout\ = (\Display_1|reg_3|Q\(1)) # (!\ascii_to_bcd_3|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_3|Q\(1),
	datad => \ascii_to_bcd_3|Equal0~0_combout\,
	combout => \ascii_to_bcd_3|BCD[1]~1_combout\);

\ascii_to_bcd_3|BCD[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ascii_to_bcd_3|BCD[2]~2_combout\ = (\Display_1|reg_3|Q\(2)) # (!\ascii_to_bcd_3|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_3|Q\(2),
	datad => \ascii_to_bcd_3|Equal0~0_combout\,
	combout => \ascii_to_bcd_3|BCD[2]~2_combout\);

\ascii_to_bcd_3|BCD[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ascii_to_bcd_3|BCD[3]~3_combout\ = (\Display_1|reg_3|Q\(3)) # (!\ascii_to_bcd_3|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_3|Q\(3),
	datad => \ascii_to_bcd_3|Equal0~0_combout\,
	combout => \ascii_to_bcd_3|BCD[3]~3_combout\);

\res4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \res4~0_combout\ = (\regist_1|Q[2]~2_combout\ & (!\regist_1|Q[1]~7_combout\ & !\regist_1|Q[0]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regist_1|Q[2]~2_combout\,
	datac => \regist_1|Q[1]~7_combout\,
	datad => \regist_1|Q[0]~12_combout\,
	combout => \res4~0_combout\);

\obrabotka_1|comands_1|Delete~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \obrabotka_1|comands_1|Delete~7_combout\ = (\obrabotka_1|comands_1|U2|Q\(2) & ((\obrabotka_1|comands_1|Equal7~1_combout\) # (\obrabotka_1|comands_1|Delete~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|comands_1|U2|Q\(2),
	datab => \obrabotka_1|comands_1|Equal7~1_combout\,
	datac => \obrabotka_1|comands_1|Delete~6_combout\,
	combout => \obrabotka_1|comands_1|Delete~7_combout\);

res4 : cycloneive_lcell_comb
-- Equation(s):
-- \res4~combout\ = (\first_pos~0_combout\) # ((\obrabotka_1|comands_1|Delete~7_combout\ & \res4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obrabotka_1|comands_1|Delete~7_combout\,
	datab => \res4~0_combout\,
	datad => \first_pos~0_combout\,
	combout => \res4~combout\);

\Display_1|reg_4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk4~0_combout\,
	d => \obrabotka_1|gate_1|res[7]~3_combout\,
	clrn => \ALT_INV_res4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_4|Q\(7));

\Display_1|reg_4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk4~0_combout\,
	d => \obrabotka_1|gate_1|res[6]~4_combout\,
	clrn => \ALT_INV_res4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_4|Q\(6));

\Display_1|reg_4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk4~0_combout\,
	d => \obrabotka_1|gate_1|res[4]~2_combout\,
	clrn => \ALT_INV_res4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_4|Q\(4));

\Display_1|reg_4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk4~0_combout\,
	d => \obrabotka_1|gate_1|res[3]~7_combout\,
	clrn => \ALT_INV_res4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_4|Q\(3));

\Display_1|clk4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|clk4~1_combout\ = (!\Display_1|reg_4|Q\(7) & (!\Display_1|reg_4|Q\(6) & (!\Display_1|reg_4|Q\(4) & !\Display_1|reg_4|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_4|Q\(7),
	datab => \Display_1|reg_4|Q\(6),
	datac => \Display_1|reg_4|Q\(4),
	datad => \Display_1|reg_4|Q\(3),
	combout => \Display_1|clk4~1_combout\);

\Display_1|reg_4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk4~0_combout\,
	d => \obrabotka_1|gate_1|res[1]~5_combout\,
	clrn => \ALT_INV_res4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_4|Q\(1));

\Display_1|reg_4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk4~0_combout\,
	d => \obrabotka_1|gate_1|res[2]~6_combout\,
	clrn => \ALT_INV_res4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_4|Q\(2));

\Display_1|clk4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|clk4~2_combout\ = (\Display_1|clk4~1_combout\ & (!\Display_1|reg_4|Q\(0) & (!\Display_1|reg_4|Q\(1) & !\Display_1|reg_4|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|clk4~1_combout\,
	datab => \Display_1|reg_4|Q\(0),
	datac => \Display_1|reg_4|Q\(1),
	datad => \Display_1|reg_4|Q\(2),
	combout => \Display_1|clk4~2_combout\);

\Display_1|reg_4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk4~0_combout\,
	d => \obrabotka_1|gate_1|res[5]~1_combout\,
	clrn => \ALT_INV_res4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_4|Q\(5));

\Display_1|clk4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_1|clk4~0_combout\ = LCELL((\res4~0_combout\ & (\Display_1|clk1~2_combout\ & (\Display_1|clk4~2_combout\ & !\Display_1|reg_4|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res4~0_combout\,
	datab => \Display_1|clk1~2_combout\,
	datac => \Display_1|clk4~2_combout\,
	datad => \Display_1|reg_4|Q\(5),
	combout => \Display_1|clk4~0_combout\);

\Display_1|reg_4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_1|clk4~0_combout\,
	d => \obrabotka_1|gate_1|res[0]~0_combout\,
	clrn => \ALT_INV_res4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_1|reg_4|Q\(0));

\ascii_to_bcd_4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ascii_to_bcd_4|Equal0~0_combout\ = (\Display_1|reg_4|Q\(5) & (\Display_1|reg_4|Q\(4) & (!\Display_1|reg_4|Q\(7) & !\Display_1|reg_4|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_4|Q\(5),
	datab => \Display_1|reg_4|Q\(4),
	datac => \Display_1|reg_4|Q\(7),
	datad => \Display_1|reg_4|Q\(6),
	combout => \ascii_to_bcd_4|Equal0~0_combout\);

\ascii_to_bcd_4|BCD[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ascii_to_bcd_4|BCD[0]~0_combout\ = (\Display_1|reg_4|Q\(0)) # (!\ascii_to_bcd_4|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_4|Q\(0),
	datad => \ascii_to_bcd_4|Equal0~0_combout\,
	combout => \ascii_to_bcd_4|BCD[0]~0_combout\);

\ascii_to_bcd_4|BCD[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ascii_to_bcd_4|BCD[1]~1_combout\ = (\Display_1|reg_4|Q\(1)) # (!\ascii_to_bcd_4|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_4|Q\(1),
	datad => \ascii_to_bcd_4|Equal0~0_combout\,
	combout => \ascii_to_bcd_4|BCD[1]~1_combout\);

\ascii_to_bcd_4|BCD[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ascii_to_bcd_4|BCD[2]~2_combout\ = (\Display_1|reg_4|Q\(2)) # (!\ascii_to_bcd_4|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_4|Q\(2),
	datad => \ascii_to_bcd_4|Equal0~0_combout\,
	combout => \ascii_to_bcd_4|BCD[2]~2_combout\);

\ascii_to_bcd_4|BCD[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ascii_to_bcd_4|BCD[3]~3_combout\ = (\Display_1|reg_4|Q\(3)) # (!\ascii_to_bcd_4|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_1|reg_4|Q\(3),
	datad => \ascii_to_bcd_4|Equal0~0_combout\,
	combout => \ascii_to_bcd_4|BCD[3]~3_combout\);

ww_Disp1(0) <= \Disp1[0]~output_o\;

ww_Disp1(1) <= \Disp1[1]~output_o\;

ww_Disp1(2) <= \Disp1[2]~output_o\;

ww_Disp1(3) <= \Disp1[3]~output_o\;

ww_Disp2(0) <= \Disp2[0]~output_o\;

ww_Disp2(1) <= \Disp2[1]~output_o\;

ww_Disp2(2) <= \Disp2[2]~output_o\;

ww_Disp2(3) <= \Disp2[3]~output_o\;

ww_Disp3(0) <= \Disp3[0]~output_o\;

ww_Disp3(1) <= \Disp3[1]~output_o\;

ww_Disp3(2) <= \Disp3[2]~output_o\;

ww_Disp3(3) <= \Disp3[3]~output_o\;

ww_Disp4(0) <= \Disp4[0]~output_o\;

ww_Disp4(1) <= \Disp4[1]~output_o\;

ww_Disp4(2) <= \Disp4[2]~output_o\;

ww_Disp4(3) <= \Disp4[3]~output_o\;
END structure;


