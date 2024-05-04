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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "12/12/2023 23:13:07"
                                                            
-- Vhdl Test Bench template for design  :  main
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY main_vhd_tst IS
END main_vhd_tst;
ARCHITECTURE main_arch OF main_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Disp1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Disp2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Disp3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Disp4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Reset_1 : STD_LOGIC;
SIGNAL Reset_2 : STD_LOGIC;
SIGNAL Reset_3 : STD_LOGIC;
SIGNAL Reset_4 : STD_LOGIC;
SIGNAL clear_disp : STD_LOGIC;
SIGNAL gen_in : STD_LOGIC;
SIGNAL inp : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL priem_in : STD_LOGIC;
COMPONENT main
	PORT (
	Disp1 : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	Disp2 : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	Disp3 : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	Disp4 : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	Reset_1 : IN STD_LOGIC;
	Reset_2 : IN STD_LOGIC;
	Reset_3 : IN STD_LOGIC;
	Reset_4 : IN STD_LOGIC;
	clear_disp : IN STD_LOGIC;
	gen_in : IN STD_LOGIC;
	inp : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	priem_in : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : main
	PORT MAP (
-- list connections between master ports and signals
	Disp1 => Disp1,
	Disp2 => Disp2,
	Disp3 => Disp3,
	Disp4 => Disp4,
	Reset_1 => Reset_1,
	Reset_2 => Reset_2,
	Reset_3 => Reset_3,
	Reset_4 => Reset_4,
	clear_disp => clear_disp,
	gen_in => gen_in,
	inp => inp,
	priem_in => priem_in
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END main_arch;
