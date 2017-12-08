-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.0 Build 200 06/17/2014 SJ Web Edition"

-- DATE "12/04/2017 22:08:58"

-- 
-- Device: Altera EP4CE10E22C6 Package TQFP144
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

ENTITY 	TicTacToe IS
    PORT (
	CLK : IN std_logic;
	VGA_CLOCK : OUT std_logic;
	RST : IN std_logic;
	p1_button : IN std_logic;
	p2_button : IN std_logic;
	PS2_CLK : IN std_logic;
	PS2_DAT : IN std_logic;
	HSYNC : OUT std_logic;
	VSYNC : OUT std_logic;
	RGB : OUT std_logic_vector(2 DOWNTO 0)
	);
END TicTacToe;

-- Design Ports Information
-- VGA_CLOCK	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1_button	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2_button	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSYNC	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VSYNC	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[0]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[1]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_CLK	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_DAT	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TicTacToe IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_VGA_CLOCK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_p1_button : std_logic;
SIGNAL ww_p2_button : std_logic;
SIGNAL ww_PS2_CLK : std_logic;
SIGNAL ww_PS2_DAT : std_logic;
SIGNAL ww_HSYNC : std_logic;
SIGNAL ww_VSYNC : std_logic;
SIGNAL ww_RGB : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult5|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult5|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult5|auto_generated|mac_out6_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult5|auto_generated|mac_out6_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult5|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult5|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult4|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult4|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult4|auto_generated|mac_out6_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult4|auto_generated|mac_out6_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult4|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult4|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_out6_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_out6_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_out6_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_out6_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult5|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult5|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult5|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult5|auto_generated|mac_mult5_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult5|auto_generated|mac_mult5_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult5|auto_generated|mac_mult5_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult5|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult5|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult5|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult4|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult4|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult4|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult4|auto_generated|mac_mult5_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult4|auto_generated|mac_mult5_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult4|auto_generated|mac_mult5_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult4|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult4|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult4|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_mult5_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_mult5_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_mult5_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult5_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult5_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult5_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk25~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \move|debounce_ps2_clk|result~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \move|ps2_code_new~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT22\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT23\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT24\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT25\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT26\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT27\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT28\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT29\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT30\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT31\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT14\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT15\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT16\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT17\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT18\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT19\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT20\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT21\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT22\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT23\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT24\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT25\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT26\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT27\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT28\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT29\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT30\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT31\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~0\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~1\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~2\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~3\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT33\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT34\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT35\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT22\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT23\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT24\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT25\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT26\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT27\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT28\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT29\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT30\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT31\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT14\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT15\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT16\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT17\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT18\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT19\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT20\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT21\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT22\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT23\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT24\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT25\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT26\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT27\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT28\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT29\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT30\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT31\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~0\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~1\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~2\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~3\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT33\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT34\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT35\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT22\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT23\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT24\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT25\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT26\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT27\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT28\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT29\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT30\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT31\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT14\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT15\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT16\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT17\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT18\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT19\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT20\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT21\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT22\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT23\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT24\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT25\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT26\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT27\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT28\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT29\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT30\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT31\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~0\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~1\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~2\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~3\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT33\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT34\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT35\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT22\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT23\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT24\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT25\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT26\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT27\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT28\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT29\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT30\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT31\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT14\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT15\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT16\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT17\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT18\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT19\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT20\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT21\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT22\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT23\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT24\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT25\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT26\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT27\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT28\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT29\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT30\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT31\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~0\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~3\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT33\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT34\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT35\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~14\ : std_logic;
SIGNAL \p1_button~input_o\ : std_logic;
SIGNAL \p2_button~input_o\ : std_logic;
SIGNAL \VGA_CLOCK~output_o\ : std_logic;
SIGNAL \HSYNC~output_o\ : std_logic;
SIGNAL \VSYNC~output_o\ : std_logic;
SIGNAL \RGB[0]~output_o\ : std_logic;
SIGNAL \RGB[1]~output_o\ : std_logic;
SIGNAL \RGB[2]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk25~0_combout\ : std_logic;
SIGNAL \clk25~feeder_combout\ : std_logic;
SIGNAL \clk25~q\ : std_logic;
SIGNAL \clk25~clkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \RGB~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \hPos~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \hPos~1_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \hPos~2_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \LessThan27~3_combout\ : std_logic;
SIGNAL \LessThan27~1_combout\ : std_logic;
SIGNAL \LessThan27~2_combout\ : std_logic;
SIGNAL \LessThan27~0_combout\ : std_logic;
SIGNAL \LessThan27~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Horizontal_Synchronisation~0_combout\ : std_logic;
SIGNAL \Horizontal_Synchronisation~1_combout\ : std_logic;
SIGNAL \Horizontal_Synchronisation~2_combout\ : std_logic;
SIGNAL \HSYNC~reg0_q\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \vPos~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \vPos~3_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \vPos~2_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \LessThan26~2_combout\ : std_logic;
SIGNAL \LessThan26~0_combout\ : std_logic;
SIGNAL \LessThan26~1_combout\ : std_logic;
SIGNAL \LessThan26~3_combout\ : std_logic;
SIGNAL \LessThan26~4_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \vPos~1_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \Vertical_Synchronisation~0_combout\ : std_logic;
SIGNAL \Vertical_Synchronisation~1_combout\ : std_logic;
SIGNAL \VSYNC~reg0_q\ : std_logic;
SIGNAL \draw~4_combout\ : std_logic;
SIGNAL \draw~3_combout\ : std_logic;
SIGNAL \draw~5_combout\ : std_logic;
SIGNAL \LessThan27~5_combout\ : std_logic;
SIGNAL \LessThan27~6_combout\ : std_logic;
SIGNAL \LessThan27~7_combout\ : std_logic;
SIGNAL \draw~6_combout\ : std_logic;
SIGNAL \draw~9_combout\ : std_logic;
SIGNAL \LessThan47~1_combout\ : std_logic;
SIGNAL \LessThan47~2_combout\ : std_logic;
SIGNAL \LessThan47~0_combout\ : std_logic;
SIGNAL \LessThan47~3_combout\ : std_logic;
SIGNAL \LessThan24~0_combout\ : std_logic;
SIGNAL \draw~22_combout\ : std_logic;
SIGNAL \LessThan22~0_combout\ : std_logic;
SIGNAL \draw~21_combout\ : std_logic;
SIGNAL \RGB~29_combout\ : std_logic;
SIGNAL \draw~2_combout\ : std_logic;
SIGNAL \RGB~30_combout\ : std_logic;
SIGNAL \draw~15_combout\ : std_logic;
SIGNAL \draw~7_combout\ : std_logic;
SIGNAL \draw~16_combout\ : std_logic;
SIGNAL \LessThan50~0_combout\ : std_logic;
SIGNAL \draw~17_combout\ : std_logic;
SIGNAL \LessThan48~0_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \draw~18_combout\ : std_logic;
SIGNAL \draw~19_combout\ : std_logic;
SIGNAL \LessThan26~5_combout\ : std_logic;
SIGNAL \draw~20_combout\ : std_logic;
SIGNAL \RGB~7_combout\ : std_logic;
SIGNAL \LessThan27~8_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \video_on~0_combout\ : std_logic;
SIGNAL \videoOn~q\ : std_logic;
SIGNAL \RGB~3_combout\ : std_logic;
SIGNAL \draw~11_combout\ : std_logic;
SIGNAL \draw~14_combout\ : std_logic;
SIGNAL \RGB~4_combout\ : std_logic;
SIGNAL \draw~12_combout\ : std_logic;
SIGNAL \draw~13_combout\ : std_logic;
SIGNAL \RGB~5_combout\ : std_logic;
SIGNAL \RGB~6_combout\ : std_logic;
SIGNAL \RGB~8_combout\ : std_logic;
SIGNAL \RGB~13_combout\ : std_logic;
SIGNAL \RGB~12_combout\ : std_logic;
SIGNAL \RGB~14_combout\ : std_logic;
SIGNAL \draw~24_combout\ : std_logic;
SIGNAL \RGB~9_combout\ : std_logic;
SIGNAL \RGB~10_combout\ : std_logic;
SIGNAL \draw~23_combout\ : std_logic;
SIGNAL \RGB~11_combout\ : std_logic;
SIGNAL \draw~30_combout\ : std_logic;
SIGNAL \LessThan44~0_combout\ : std_logic;
SIGNAL \draw~31_combout\ : std_logic;
SIGNAL \draw~25_combout\ : std_logic;
SIGNAL \RGB~15_combout\ : std_logic;
SIGNAL \draw~29_combout\ : std_logic;
SIGNAL \RGB~16_combout\ : std_logic;
SIGNAL \draw~27_combout\ : std_logic;
SIGNAL \draw~28_combout\ : std_logic;
SIGNAL \draw~26_combout\ : std_logic;
SIGNAL \RGB~17_combout\ : std_logic;
SIGNAL \draw~32_combout\ : std_logic;
SIGNAL \LessThan28~0_combout\ : std_logic;
SIGNAL \RGB~27_combout\ : std_logic;
SIGNAL \RGB~28_combout\ : std_logic;
SIGNAL \RGB~18_combout\ : std_logic;
SIGNAL \RGB~19_combout\ : std_logic;
SIGNAL \draw~10_combout\ : std_logic;
SIGNAL \RGB~1_combout\ : std_logic;
SIGNAL \draw~8_combout\ : std_logic;
SIGNAL \RGB~2_combout\ : std_logic;
SIGNAL \RGB~20_combout\ : std_logic;
SIGNAL \RGB[0]~reg0_q\ : std_logic;
SIGNAL \RGB[1]~reg0_q\ : std_logic;
SIGNAL \move|count_idle[0]~12_combout\ : std_logic;
SIGNAL \PS2_CLK~input_o\ : std_logic;
SIGNAL \move|sync_ffs[0]~feeder_combout\ : std_logic;
SIGNAL \move|debounce_ps2_clk|counter_out[0]~1_combout\ : std_logic;
SIGNAL \move|debounce_ps2_clk|result~1_combout\ : std_logic;
SIGNAL \move|debounce_ps2_clk|Add0~0_combout\ : std_logic;
SIGNAL \move|debounce_ps2_clk|counter_out[0]~9_combout\ : std_logic;
SIGNAL \move|debounce_ps2_clk|Add0~1\ : std_logic;
SIGNAL \move|debounce_ps2_clk|Add0~2_combout\ : std_logic;
SIGNAL \move|debounce_ps2_clk|counter_out[1]~8_combout\ : std_logic;
SIGNAL \move|debounce_ps2_clk|Add0~3\ : std_logic;
SIGNAL \move|debounce_ps2_clk|Add0~4_combout\ : std_logic;
SIGNAL \move|debounce_ps2_clk|counter_out[2]~7_combout\ : std_logic;
SIGNAL \move|debounce_ps2_clk|Add0~5\ : std_logic;
SIGNAL \move|debounce_ps2_clk|Add0~6_combout\ : std_logic;
SIGNAL \move|debounce_ps2_clk|counter_out[3]~6_combout\ : std_logic;
SIGNAL \move|debounce_ps2_clk|Add0~7\ : std_logic;
SIGNAL \move|debounce_ps2_clk|Add0~8_combout\ : std_logic;
SIGNAL \move|debounce_ps2_clk|counter_out[4]~5_combout\ : std_logic;
SIGNAL \move|debounce_ps2_clk|Add0~9\ : std_logic;
SIGNAL \move|debounce_ps2_clk|Add0~10_combout\ : std_logic;
SIGNAL \move|debounce_ps2_clk|counter_out[5]~4_combout\ : std_logic;
SIGNAL \move|debounce_ps2_clk|Add0~11\ : std_logic;
SIGNAL \move|debounce_ps2_clk|Add0~12_combout\ : std_logic;
SIGNAL \move|debounce_ps2_clk|counter_out[6]~3_combout\ : std_logic;
SIGNAL \move|debounce_ps2_clk|Add0~13\ : std_logic;
SIGNAL \move|debounce_ps2_clk|Add0~14_combout\ : std_logic;
SIGNAL \move|debounce_ps2_clk|counter_out[7]~2_combout\ : std_logic;
SIGNAL \move|debounce_ps2_clk|Add0~15\ : std_logic;
SIGNAL \move|debounce_ps2_clk|Add0~16_combout\ : std_logic;
SIGNAL \move|debounce_ps2_clk|counter_out~0_combout\ : std_logic;
SIGNAL \move|debounce_ps2_clk|result~0_combout\ : std_logic;
SIGNAL \move|debounce_ps2_clk|result~feeder_combout\ : std_logic;
SIGNAL \move|debounce_ps2_clk|result~q\ : std_logic;
SIGNAL \move|Equal0~0_combout\ : std_logic;
SIGNAL \move|count_idle[5]~24\ : std_logic;
SIGNAL \move|count_idle[6]~25_combout\ : std_logic;
SIGNAL \move|count_idle[6]~26\ : std_logic;
SIGNAL \move|count_idle[7]~27_combout\ : std_logic;
SIGNAL \move|count_idle[7]~28\ : std_logic;
SIGNAL \move|count_idle[8]~29_combout\ : std_logic;
SIGNAL \move|count_idle[8]~30\ : std_logic;
SIGNAL \move|count_idle[9]~31_combout\ : std_logic;
SIGNAL \move|count_idle[9]~32\ : std_logic;
SIGNAL \move|count_idle[10]~33_combout\ : std_logic;
SIGNAL \move|count_idle[10]~34\ : std_logic;
SIGNAL \move|count_idle[11]~35_combout\ : std_logic;
SIGNAL \move|Equal0~2_combout\ : std_logic;
SIGNAL \move|count_idle[11]~14_combout\ : std_logic;
SIGNAL \move|count_idle[0]~13\ : std_logic;
SIGNAL \move|count_idle[1]~15_combout\ : std_logic;
SIGNAL \move|count_idle[1]~16\ : std_logic;
SIGNAL \move|count_idle[2]~17_combout\ : std_logic;
SIGNAL \move|count_idle[2]~18\ : std_logic;
SIGNAL \move|count_idle[3]~19_combout\ : std_logic;
SIGNAL \move|count_idle[3]~20\ : std_logic;
SIGNAL \move|count_idle[4]~21_combout\ : std_logic;
SIGNAL \move|count_idle[4]~22\ : std_logic;
SIGNAL \move|count_idle[5]~23_combout\ : std_logic;
SIGNAL \move|Equal0~1_combout\ : std_logic;
SIGNAL \move|debounce_ps2_clk|result~clkctrl_outclk\ : std_logic;
SIGNAL \PS2_DAT~input_o\ : std_logic;
SIGNAL \move|debounce_ps2_data|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \move|debounce_ps2_data|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \move|debounce_ps2_data|counter_out[0]~1_combout\ : std_logic;
SIGNAL \move|debounce_ps2_data|result~1_combout\ : std_logic;
SIGNAL \move|debounce_ps2_data|Add0~0_combout\ : std_logic;
SIGNAL \move|debounce_ps2_data|counter_out[0]~9_combout\ : std_logic;
SIGNAL \move|debounce_ps2_data|Add0~1\ : std_logic;
SIGNAL \move|debounce_ps2_data|Add0~2_combout\ : std_logic;
SIGNAL \move|debounce_ps2_data|counter_out[1]~8_combout\ : std_logic;
SIGNAL \move|debounce_ps2_data|Add0~3\ : std_logic;
SIGNAL \move|debounce_ps2_data|Add0~4_combout\ : std_logic;
SIGNAL \move|debounce_ps2_data|counter_out[2]~7_combout\ : std_logic;
SIGNAL \move|debounce_ps2_data|Add0~5\ : std_logic;
SIGNAL \move|debounce_ps2_data|Add0~6_combout\ : std_logic;
SIGNAL \move|debounce_ps2_data|counter_out[3]~6_combout\ : std_logic;
SIGNAL \move|debounce_ps2_data|Add0~7\ : std_logic;
SIGNAL \move|debounce_ps2_data|Add0~8_combout\ : std_logic;
SIGNAL \move|debounce_ps2_data|counter_out[4]~5_combout\ : std_logic;
SIGNAL \move|debounce_ps2_data|Add0~9\ : std_logic;
SIGNAL \move|debounce_ps2_data|Add0~10_combout\ : std_logic;
SIGNAL \move|debounce_ps2_data|counter_out[5]~4_combout\ : std_logic;
SIGNAL \move|debounce_ps2_data|Add0~11\ : std_logic;
SIGNAL \move|debounce_ps2_data|Add0~12_combout\ : std_logic;
SIGNAL \move|debounce_ps2_data|counter_out[6]~3_combout\ : std_logic;
SIGNAL \move|debounce_ps2_data|Add0~13\ : std_logic;
SIGNAL \move|debounce_ps2_data|Add0~14_combout\ : std_logic;
SIGNAL \move|debounce_ps2_data|counter_out[7]~2_combout\ : std_logic;
SIGNAL \move|debounce_ps2_data|Add0~15\ : std_logic;
SIGNAL \move|debounce_ps2_data|Add0~16_combout\ : std_logic;
SIGNAL \move|debounce_ps2_data|counter_out~0_combout\ : std_logic;
SIGNAL \move|debounce_ps2_data|result~0_combout\ : std_logic;
SIGNAL \move|debounce_ps2_data|result~q\ : std_logic;
SIGNAL \move|ps2_word[10]~feeder_combout\ : std_logic;
SIGNAL \move|ps2_word[8]~feeder_combout\ : std_logic;
SIGNAL \move|ps2_word[7]~feeder_combout\ : std_logic;
SIGNAL \move|ps2_word[6]~feeder_combout\ : std_logic;
SIGNAL \move|ps2_word[5]~feeder_combout\ : std_logic;
SIGNAL \move|ps2_word[2]~feeder_combout\ : std_logic;
SIGNAL \move|ps2_word[1]~feeder_combout\ : std_logic;
SIGNAL \move|process_2~0_combout\ : std_logic;
SIGNAL \move|error~1_combout\ : std_logic;
SIGNAL \move|error~0_combout\ : std_logic;
SIGNAL \move|process_2~1_combout\ : std_logic;
SIGNAL \move|process_2~2_combout\ : std_logic;
SIGNAL \move|ps2_code_new~q\ : std_logic;
SIGNAL \move|ps2_code_new~clkctrl_outclk\ : std_logic;
SIGNAL \move|ps2_code[2]~feeder_combout\ : std_logic;
SIGNAL \move|ps2_code[5]~feeder_combout\ : std_logic;
SIGNAL \move|ps2_code[7]~feeder_combout\ : std_logic;
SIGNAL \move|ps2_code[3]~feeder_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \player1x~6_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \player1x~19_combout\ : std_logic;
SIGNAL \player1x[18]~42_combout\ : std_logic;
SIGNAL \player1x[30]~20_combout\ : std_logic;
SIGNAL \Add10~1\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \player1x~21_combout\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \player1x~22_combout\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \player1x~25_combout\ : std_logic;
SIGNAL \player1x~26_combout\ : std_logic;
SIGNAL \Add10~5\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \player1x[3]~27_combout\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \player1x[3]~28_combout\ : std_logic;
SIGNAL \player1x[3]~29_combout\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \player1x[4]~69_combout\ : std_logic;
SIGNAL \player1x[4]~70_combout\ : std_logic;
SIGNAL \Add10~9\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \player1x[5]~67_combout\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \player1x[5]~68_combout\ : std_logic;
SIGNAL \Add10~11\ : std_logic;
SIGNAL \Add10~12_combout\ : std_logic;
SIGNAL \player1x[6]~65_combout\ : std_logic;
SIGNAL \Add11~11\ : std_logic;
SIGNAL \Add11~12_combout\ : std_logic;
SIGNAL \player1x[6]~66_combout\ : std_logic;
SIGNAL \Add11~13\ : std_logic;
SIGNAL \Add11~14_combout\ : std_logic;
SIGNAL \player1x[7]~63_combout\ : std_logic;
SIGNAL \Add10~13\ : std_logic;
SIGNAL \Add10~14_combout\ : std_logic;
SIGNAL \player1x[7]~64_combout\ : std_logic;
SIGNAL \Add10~15\ : std_logic;
SIGNAL \Add10~16_combout\ : std_logic;
SIGNAL \Add11~15\ : std_logic;
SIGNAL \Add11~16_combout\ : std_logic;
SIGNAL \player1x[8]~61_combout\ : std_logic;
SIGNAL \player1x[8]~62_combout\ : std_logic;
SIGNAL \Add10~17\ : std_logic;
SIGNAL \Add10~18_combout\ : std_logic;
SIGNAL \player1x[9]~59_combout\ : std_logic;
SIGNAL \Add11~17\ : std_logic;
SIGNAL \Add11~18_combout\ : std_logic;
SIGNAL \player1x[9]~60_combout\ : std_logic;
SIGNAL \Add10~19\ : std_logic;
SIGNAL \Add10~20_combout\ : std_logic;
SIGNAL \player1x[10]~73_combout\ : std_logic;
SIGNAL \Add11~19\ : std_logic;
SIGNAL \Add11~20_combout\ : std_logic;
SIGNAL \player1x[10]~58_combout\ : std_logic;
SIGNAL \Add11~21\ : std_logic;
SIGNAL \Add11~22_combout\ : std_logic;
SIGNAL \Add10~21\ : std_logic;
SIGNAL \Add10~22_combout\ : std_logic;
SIGNAL \player1x[11]~56_combout\ : std_logic;
SIGNAL \player1x[11]~57_combout\ : std_logic;
SIGNAL \Add11~23\ : std_logic;
SIGNAL \Add11~24_combout\ : std_logic;
SIGNAL \Add10~23\ : std_logic;
SIGNAL \Add10~24_combout\ : std_logic;
SIGNAL \player1x[12]~72_combout\ : std_logic;
SIGNAL \player1x[12]~55_combout\ : std_logic;
SIGNAL \Add11~25\ : std_logic;
SIGNAL \Add11~26_combout\ : std_logic;
SIGNAL \Add10~25\ : std_logic;
SIGNAL \Add10~26_combout\ : std_logic;
SIGNAL \player1x[13]~53_combout\ : std_logic;
SIGNAL \player1x[13]~54_combout\ : std_logic;
SIGNAL \Add11~27\ : std_logic;
SIGNAL \Add11~28_combout\ : std_logic;
SIGNAL \Add10~27\ : std_logic;
SIGNAL \Add10~28_combout\ : std_logic;
SIGNAL \player1x[14]~51_combout\ : std_logic;
SIGNAL \player1x[14]~52_combout\ : std_logic;
SIGNAL \Add11~29\ : std_logic;
SIGNAL \Add11~30_combout\ : std_logic;
SIGNAL \Add10~29\ : std_logic;
SIGNAL \Add10~30_combout\ : std_logic;
SIGNAL \player1x[15]~49_combout\ : std_logic;
SIGNAL \player1x[15]~50_combout\ : std_logic;
SIGNAL \Add11~31\ : std_logic;
SIGNAL \Add11~32_combout\ : std_logic;
SIGNAL \Add10~31\ : std_logic;
SIGNAL \Add10~32_combout\ : std_logic;
SIGNAL \player1x[16]~47_combout\ : std_logic;
SIGNAL \player1x[16]~48_combout\ : std_logic;
SIGNAL \Add10~33\ : std_logic;
SIGNAL \Add10~34_combout\ : std_logic;
SIGNAL \Add11~33\ : std_logic;
SIGNAL \Add11~34_combout\ : std_logic;
SIGNAL \player1x[17]~45_combout\ : std_logic;
SIGNAL \player1x[17]~46_combout\ : std_logic;
SIGNAL \player1x~13_combout\ : std_logic;
SIGNAL \player1x~14_combout\ : std_logic;
SIGNAL \player1x~15_combout\ : std_logic;
SIGNAL \player1x~16_combout\ : std_logic;
SIGNAL \Add10~35\ : std_logic;
SIGNAL \Add10~36_combout\ : std_logic;
SIGNAL \Add11~35\ : std_logic;
SIGNAL \Add11~36_combout\ : std_logic;
SIGNAL \player1x[18]~43_combout\ : std_logic;
SIGNAL \player1x[18]~44_combout\ : std_logic;
SIGNAL \player1x[18]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add10~37\ : std_logic;
SIGNAL \Add10~38_combout\ : std_logic;
SIGNAL \player1x~23_combout\ : std_logic;
SIGNAL \Add11~37\ : std_logic;
SIGNAL \Add11~38_combout\ : std_logic;
SIGNAL \player1x[19]~41_combout\ : std_logic;
SIGNAL \player1x[19]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add11~39\ : std_logic;
SIGNAL \Add11~40_combout\ : std_logic;
SIGNAL \Add10~39\ : std_logic;
SIGNAL \Add10~40_combout\ : std_logic;
SIGNAL \player1x[20]~40_combout\ : std_logic;
SIGNAL \player1x[20]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \player1x[20]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add11~41\ : std_logic;
SIGNAL \Add11~42_combout\ : std_logic;
SIGNAL \Add10~41\ : std_logic;
SIGNAL \Add10~42_combout\ : std_logic;
SIGNAL \player1x[21]~39_combout\ : std_logic;
SIGNAL \player1x[21]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add11~43\ : std_logic;
SIGNAL \Add11~44_combout\ : std_logic;
SIGNAL \Add10~43\ : std_logic;
SIGNAL \Add10~44_combout\ : std_logic;
SIGNAL \player1x[22]~38_combout\ : std_logic;
SIGNAL \player1x[22]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add11~45\ : std_logic;
SIGNAL \Add11~46_combout\ : std_logic;
SIGNAL \Add10~45\ : std_logic;
SIGNAL \Add10~46_combout\ : std_logic;
SIGNAL \player1x[23]~37_combout\ : std_logic;
SIGNAL \player1x[23]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add10~47\ : std_logic;
SIGNAL \Add10~48_combout\ : std_logic;
SIGNAL \Add11~47\ : std_logic;
SIGNAL \Add11~48_combout\ : std_logic;
SIGNAL \player1x[24]~36_combout\ : std_logic;
SIGNAL \player1x[24]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add10~49\ : std_logic;
SIGNAL \Add10~50_combout\ : std_logic;
SIGNAL \Add11~49\ : std_logic;
SIGNAL \Add11~50_combout\ : std_logic;
SIGNAL \player1x[25]~35_combout\ : std_logic;
SIGNAL \player1x[25]~_Duplicate_1_q\ : std_logic;
SIGNAL \player1x~10_combout\ : std_logic;
SIGNAL \player1x~8_combout\ : std_logic;
SIGNAL \Add11~51\ : std_logic;
SIGNAL \Add11~52_combout\ : std_logic;
SIGNAL \Add10~51\ : std_logic;
SIGNAL \Add10~52_combout\ : std_logic;
SIGNAL \player1x[26]~34_combout\ : std_logic;
SIGNAL \player1x[26]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add11~53\ : std_logic;
SIGNAL \Add11~54_combout\ : std_logic;
SIGNAL \Add10~53\ : std_logic;
SIGNAL \Add10~54_combout\ : std_logic;
SIGNAL \player1x[27]~33_combout\ : std_logic;
SIGNAL \player1x[27]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add11~55\ : std_logic;
SIGNAL \Add11~56_combout\ : std_logic;
SIGNAL \Add10~55\ : std_logic;
SIGNAL \Add10~56_combout\ : std_logic;
SIGNAL \player1x[28]~32_combout\ : std_logic;
SIGNAL \player1x[28]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add10~57\ : std_logic;
SIGNAL \Add10~58_combout\ : std_logic;
SIGNAL \Add11~57\ : std_logic;
SIGNAL \Add11~58_combout\ : std_logic;
SIGNAL \player1x[29]~31_combout\ : std_logic;
SIGNAL \player1x[29]~_Duplicate_1_q\ : std_logic;
SIGNAL \player1x~9_combout\ : std_logic;
SIGNAL \player1x~11_combout\ : std_logic;
SIGNAL \player1x~12_combout\ : std_logic;
SIGNAL \player1x~17_combout\ : std_logic;
SIGNAL \player1x~71_combout\ : std_logic;
SIGNAL \Add10~59\ : std_logic;
SIGNAL \Add10~60_combout\ : std_logic;
SIGNAL \Add11~59\ : std_logic;
SIGNAL \Add11~60_combout\ : std_logic;
SIGNAL \player1x[30]~30_combout\ : std_logic;
SIGNAL \player1x[30]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add10~61\ : std_logic;
SIGNAL \Add10~62_combout\ : std_logic;
SIGNAL \Add11~61\ : std_logic;
SIGNAL \Add11~62_combout\ : std_logic;
SIGNAL \player1x~24_combout\ : std_logic;
SIGNAL \player1x[31]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \player1x~7_combout\ : std_logic;
SIGNAL \player1x~18_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT33\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT34\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT35\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~34_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~36_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~38_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add4~39\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add4~41\ : std_logic;
SIGNAL \Add4~42_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Add4~43\ : std_logic;
SIGNAL \Add4~44_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add4~45\ : std_logic;
SIGNAL \Add4~46_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~48_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add4~49\ : std_logic;
SIGNAL \Add4~50_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Add4~51\ : std_logic;
SIGNAL \Add4~52_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Add4~53\ : std_logic;
SIGNAL \Add4~54_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~21\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Add4~55\ : std_logic;
SIGNAL \Add4~56_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~11\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~23\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add4~57\ : std_logic;
SIGNAL \Add4~58_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~13\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~25\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add4~59\ : std_logic;
SIGNAL \Add4~60_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT22\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT23\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT24\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT25\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT26\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT27\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT28\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT29\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT30\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~DATAOUT31\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~dataout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT3\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT4\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT5\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT6\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT7\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT8\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT9\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT10\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT11\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT12\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT13\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT14\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT15\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT16\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT17\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT18\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT19\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT20\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT21\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT22\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT23\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT24\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT25\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT26\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT27\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT28\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT29\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT30\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~DATAOUT31\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~0\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult5~3\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT13\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT12\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT11\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT10\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT9\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT8\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT7\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT6\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT5\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT4\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT3\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~DATAOUT1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out6~dataout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~1\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~3\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~5\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~7\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~9\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~11\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~13\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~15\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~17\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~19\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~21\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~23\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~25\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~26_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~24_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~22_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~20_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~18_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~16_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~14_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~12_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~10_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~8_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~6_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~4_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~21\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~23\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~25\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \Add13~0_combout\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \player1y~5_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Add13~1\ : std_logic;
SIGNAL \Add13~2_combout\ : std_logic;
SIGNAL \Add12~1\ : std_logic;
SIGNAL \Add12~2_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \player1y[4]~4_combout\ : std_logic;
SIGNAL \player1y~7_combout\ : std_logic;
SIGNAL \player1y[4]~6_combout\ : std_logic;
SIGNAL \Add12~3\ : std_logic;
SIGNAL \Add12~4_combout\ : std_logic;
SIGNAL \Add13~3\ : std_logic;
SIGNAL \Add13~4_combout\ : std_logic;
SIGNAL \player1y~14_combout\ : std_logic;
SIGNAL \Add13~5\ : std_logic;
SIGNAL \Add13~6_combout\ : std_logic;
SIGNAL \Add12~5\ : std_logic;
SIGNAL \Add12~6_combout\ : std_logic;
SIGNAL \player1y[3]~12_combout\ : std_logic;
SIGNAL \LessThan55~10_combout\ : std_logic;
SIGNAL \player1y[3]~13_combout\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~8_combout\ : std_logic;
SIGNAL \Add13~7\ : std_logic;
SIGNAL \Add13~8_combout\ : std_logic;
SIGNAL \player1y[4]~41_combout\ : std_logic;
SIGNAL \Add13~9\ : std_logic;
SIGNAL \Add13~10_combout\ : std_logic;
SIGNAL \Add12~9\ : std_logic;
SIGNAL \Add12~10_combout\ : std_logic;
SIGNAL \player1y[5]~40_combout\ : std_logic;
SIGNAL \Add13~11\ : std_logic;
SIGNAL \Add13~12_combout\ : std_logic;
SIGNAL \Add12~11\ : std_logic;
SIGNAL \Add12~12_combout\ : std_logic;
SIGNAL \player1y[6]~39_combout\ : std_logic;
SIGNAL \Add12~13\ : std_logic;
SIGNAL \Add12~14_combout\ : std_logic;
SIGNAL \Add13~13\ : std_logic;
SIGNAL \Add13~14_combout\ : std_logic;
SIGNAL \player1y[7]~38_combout\ : std_logic;
SIGNAL \Add13~15\ : std_logic;
SIGNAL \Add13~16_combout\ : std_logic;
SIGNAL \Add12~15\ : std_logic;
SIGNAL \Add12~16_combout\ : std_logic;
SIGNAL \player1y[8]~37_combout\ : std_logic;
SIGNAL \Add13~17\ : std_logic;
SIGNAL \Add13~18_combout\ : std_logic;
SIGNAL \Add12~17\ : std_logic;
SIGNAL \Add12~18_combout\ : std_logic;
SIGNAL \player1y[9]~36_combout\ : std_logic;
SIGNAL \Add13~19\ : std_logic;
SIGNAL \Add13~20_combout\ : std_logic;
SIGNAL \Add12~19\ : std_logic;
SIGNAL \Add12~20_combout\ : std_logic;
SIGNAL \player1y[10]~35_combout\ : std_logic;
SIGNAL \Add13~21\ : std_logic;
SIGNAL \Add13~22_combout\ : std_logic;
SIGNAL \Add12~21\ : std_logic;
SIGNAL \Add12~22_combout\ : std_logic;
SIGNAL \player1y[11]~34_combout\ : std_logic;
SIGNAL \Add13~23\ : std_logic;
SIGNAL \Add13~24_combout\ : std_logic;
SIGNAL \Add12~23\ : std_logic;
SIGNAL \Add12~24_combout\ : std_logic;
SIGNAL \player1y[12]~33_combout\ : std_logic;
SIGNAL \Add13~25\ : std_logic;
SIGNAL \Add13~26_combout\ : std_logic;
SIGNAL \Add12~25\ : std_logic;
SIGNAL \Add12~26_combout\ : std_logic;
SIGNAL \player1y[13]~32_combout\ : std_logic;
SIGNAL \LessThan55~6_combout\ : std_logic;
SIGNAL \LessThan55~7_combout\ : std_logic;
SIGNAL \LessThan55~8_combout\ : std_logic;
SIGNAL \Add13~27\ : std_logic;
SIGNAL \Add13~28_combout\ : std_logic;
SIGNAL \Add12~27\ : std_logic;
SIGNAL \Add12~28_combout\ : std_logic;
SIGNAL \player1y[14]~31_combout\ : std_logic;
SIGNAL \Add12~29\ : std_logic;
SIGNAL \Add12~30_combout\ : std_logic;
SIGNAL \Add13~29\ : std_logic;
SIGNAL \Add13~30_combout\ : std_logic;
SIGNAL \player1y[15]~30_combout\ : std_logic;
SIGNAL \Add12~31\ : std_logic;
SIGNAL \Add12~32_combout\ : std_logic;
SIGNAL \Add13~31\ : std_logic;
SIGNAL \Add13~32_combout\ : std_logic;
SIGNAL \player1y[16]~29_combout\ : std_logic;
SIGNAL \Add12~33\ : std_logic;
SIGNAL \Add12~34_combout\ : std_logic;
SIGNAL \Add13~33\ : std_logic;
SIGNAL \Add13~34_combout\ : std_logic;
SIGNAL \player1y[17]~28_combout\ : std_logic;
SIGNAL \LessThan55~5_combout\ : std_logic;
SIGNAL \LessThan55~1_combout\ : std_logic;
SIGNAL \Add13~35\ : std_logic;
SIGNAL \Add13~36_combout\ : std_logic;
SIGNAL \Add12~35\ : std_logic;
SIGNAL \Add12~36_combout\ : std_logic;
SIGNAL \player1y[18]~27_combout\ : std_logic;
SIGNAL \player1y[18]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add13~37\ : std_logic;
SIGNAL \Add13~38_combout\ : std_logic;
SIGNAL \Add12~37\ : std_logic;
SIGNAL \Add12~38_combout\ : std_logic;
SIGNAL \player1y[19]~26_combout\ : std_logic;
SIGNAL \player1y[19]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add13~39\ : std_logic;
SIGNAL \Add13~40_combout\ : std_logic;
SIGNAL \Add12~39\ : std_logic;
SIGNAL \Add12~40_combout\ : std_logic;
SIGNAL \player1y[20]~25_combout\ : std_logic;
SIGNAL \player1y[20]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add12~41\ : std_logic;
SIGNAL \Add12~42_combout\ : std_logic;
SIGNAL \Add13~41\ : std_logic;
SIGNAL \Add13~42_combout\ : std_logic;
SIGNAL \player1y[21]~24_combout\ : std_logic;
SIGNAL \player1y[21]~_Duplicate_1_q\ : std_logic;
SIGNAL \LessThan55~3_combout\ : std_logic;
SIGNAL \Add13~43\ : std_logic;
SIGNAL \Add13~44_combout\ : std_logic;
SIGNAL \Add12~43\ : std_logic;
SIGNAL \Add12~44_combout\ : std_logic;
SIGNAL \player1y[22]~23_combout\ : std_logic;
SIGNAL \player1y[22]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add13~45\ : std_logic;
SIGNAL \Add13~46_combout\ : std_logic;
SIGNAL \Add12~45\ : std_logic;
SIGNAL \Add12~46_combout\ : std_logic;
SIGNAL \player1y[23]~22_combout\ : std_logic;
SIGNAL \player1y[23]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add12~47\ : std_logic;
SIGNAL \Add12~48_combout\ : std_logic;
SIGNAL \Add13~47\ : std_logic;
SIGNAL \Add13~48_combout\ : std_logic;
SIGNAL \player1y[24]~21_combout\ : std_logic;
SIGNAL \player1y[24]~_Duplicate_1_q\ : std_logic;
SIGNAL \LessThan55~2_combout\ : std_logic;
SIGNAL \LessThan55~0_combout\ : std_logic;
SIGNAL \LessThan55~4_combout\ : std_logic;
SIGNAL \LessThan55~9_combout\ : std_logic;
SIGNAL \player1y[29]~15_combout\ : std_logic;
SIGNAL \Add13~49\ : std_logic;
SIGNAL \Add13~50_combout\ : std_logic;
SIGNAL \Add12~49\ : std_logic;
SIGNAL \Add12~50_combout\ : std_logic;
SIGNAL \player1y[25]~20_combout\ : std_logic;
SIGNAL \player1y[25]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add12~51\ : std_logic;
SIGNAL \Add12~52_combout\ : std_logic;
SIGNAL \Add13~51\ : std_logic;
SIGNAL \Add13~52_combout\ : std_logic;
SIGNAL \player1y[26]~19_combout\ : std_logic;
SIGNAL \player1y[26]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add12~53\ : std_logic;
SIGNAL \Add12~54_combout\ : std_logic;
SIGNAL \Add13~53\ : std_logic;
SIGNAL \Add13~54_combout\ : std_logic;
SIGNAL \player1y[27]~18_combout\ : std_logic;
SIGNAL \player1y[27]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add13~55\ : std_logic;
SIGNAL \Add13~56_combout\ : std_logic;
SIGNAL \Add12~55\ : std_logic;
SIGNAL \Add12~56_combout\ : std_logic;
SIGNAL \player1y[28]~17_combout\ : std_logic;
SIGNAL \player1y[28]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add12~57\ : std_logic;
SIGNAL \Add12~58_combout\ : std_logic;
SIGNAL \Add13~57\ : std_logic;
SIGNAL \Add13~58_combout\ : std_logic;
SIGNAL \player1y[29]~16_combout\ : std_logic;
SIGNAL \player1y[29]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add12~59\ : std_logic;
SIGNAL \Add12~60_combout\ : std_logic;
SIGNAL \player1y~8_combout\ : std_logic;
SIGNAL \player1y[30]~10_combout\ : std_logic;
SIGNAL \Add13~59\ : std_logic;
SIGNAL \Add13~60_combout\ : std_logic;
SIGNAL \player1y[30]~11_combout\ : std_logic;
SIGNAL \player1y[30]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \player1y[30]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add13~61\ : std_logic;
SIGNAL \Add13~62_combout\ : std_logic;
SIGNAL \player1y~43_combout\ : std_logic;
SIGNAL \Add12~61\ : std_logic;
SIGNAL \Add12~62_combout\ : std_logic;
SIGNAL \player1y~9_combout\ : std_logic;
SIGNAL \player1y[31]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \player1y[31]~_Duplicate_1_q\ : std_logic;
SIGNAL \player1y~42_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add5~29\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add5~31\ : std_logic;
SIGNAL \Add5~32_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT33\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT34\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT35\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Add5~33\ : std_logic;
SIGNAL \Add5~34_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Add5~35\ : std_logic;
SIGNAL \Add5~36_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Add5~37\ : std_logic;
SIGNAL \Add5~38_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Add5~39\ : std_logic;
SIGNAL \Add5~40_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add5~41\ : std_logic;
SIGNAL \Add5~42_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Add5~43\ : std_logic;
SIGNAL \Add5~44_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Add5~45\ : std_logic;
SIGNAL \Add5~46_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~1\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Add5~47\ : std_logic;
SIGNAL \Add5~48_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~3\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~4_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add5~49\ : std_logic;
SIGNAL \Add5~50_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~5\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~6_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Add5~51\ : std_logic;
SIGNAL \Add5~52_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~7\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~8_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \Add5~53\ : std_logic;
SIGNAL \Add5~54_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~9\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~10_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~21\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \Add5~55\ : std_logic;
SIGNAL \Add5~56_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~11\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~12_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~23\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \Add5~57\ : std_logic;
SIGNAL \Add5~58_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~13\ : std_logic;
SIGNAL \Mult1|auto_generated|op_2~14_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~25\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~58_combout\ : std_logic;
SIGNAL \Add5~59\ : std_logic;
SIGNAL \Add5~60_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT22\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT23\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT24\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT25\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT26\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT27\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT28\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT29\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT30\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~DATAOUT31\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~dataout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT1\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT2\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT3\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT4\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT5\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT6\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT7\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT8\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT9\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT10\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT11\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT12\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT13\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT14\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT15\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT16\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT17\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT18\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT19\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT20\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT21\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT22\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT23\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT24\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT25\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT26\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT27\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT28\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT29\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT30\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~DATAOUT31\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~0\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~1\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~2\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult5~3\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT13\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT12\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT11\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT10\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT9\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT8\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT7\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT6\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT5\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT4\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT3\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT2\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~DATAOUT1\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out6~dataout\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~1\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~3\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~5\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~7\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~9\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~11\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~13\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~15\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~17\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~19\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~21\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~23\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~25\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~26_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~24_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~22_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~20_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~18_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~16_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~14_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~12_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~10_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~8_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~6_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~4_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~21\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~23\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~25\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Add6~1_cout\ : std_logic;
SIGNAL \Add6~3_cout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~19\ : std_logic;
SIGNAL \Add6~21\ : std_logic;
SIGNAL \Add6~23\ : std_logic;
SIGNAL \Add6~25\ : std_logic;
SIGNAL \Add6~27\ : std_logic;
SIGNAL \Add6~29\ : std_logic;
SIGNAL \Add6~31\ : std_logic;
SIGNAL \Add6~33\ : std_logic;
SIGNAL \Add6~35\ : std_logic;
SIGNAL \Add6~37\ : std_logic;
SIGNAL \Add6~39\ : std_logic;
SIGNAL \Add6~41\ : std_logic;
SIGNAL \Add6~43\ : std_logic;
SIGNAL \Add6~45\ : std_logic;
SIGNAL \Add6~47\ : std_logic;
SIGNAL \Add6~49\ : std_logic;
SIGNAL \Add6~51\ : std_logic;
SIGNAL \Add6~53\ : std_logic;
SIGNAL \Add6~55\ : std_logic;
SIGNAL \Add6~57\ : std_logic;
SIGNAL \Add6~58_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~18_combout\ : std_logic;
SIGNAL \Add7~19\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \Add7~21\ : std_logic;
SIGNAL \Add7~22_combout\ : std_logic;
SIGNAL \Add7~23\ : std_logic;
SIGNAL \Add7~24_combout\ : std_logic;
SIGNAL \Add7~25\ : std_logic;
SIGNAL \Add7~26_combout\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add7~28_combout\ : std_logic;
SIGNAL \Add7~29\ : std_logic;
SIGNAL \Add7~30_combout\ : std_logic;
SIGNAL \Add7~31\ : std_logic;
SIGNAL \Add7~32_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT33\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT34\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult1~DATAOUT35\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \Add7~33\ : std_logic;
SIGNAL \Add7~34_combout\ : std_logic;
SIGNAL \Add7~35\ : std_logic;
SIGNAL \Add7~36_combout\ : std_logic;
SIGNAL \Add7~37\ : std_logic;
SIGNAL \Add7~38_combout\ : std_logic;
SIGNAL \Add7~39\ : std_logic;
SIGNAL \Add7~40_combout\ : std_logic;
SIGNAL \Add7~41\ : std_logic;
SIGNAL \Add7~42_combout\ : std_logic;
SIGNAL \Add7~43\ : std_logic;
SIGNAL \Add7~44_combout\ : std_logic;
SIGNAL \Add7~45\ : std_logic;
SIGNAL \Add7~46_combout\ : std_logic;
SIGNAL \Add7~47\ : std_logic;
SIGNAL \Add7~48_combout\ : std_logic;
SIGNAL \Add7~49\ : std_logic;
SIGNAL \Add7~50_combout\ : std_logic;
SIGNAL \Add7~51\ : std_logic;
SIGNAL \Add7~52_combout\ : std_logic;
SIGNAL \Add7~53\ : std_logic;
SIGNAL \Add7~54_combout\ : std_logic;
SIGNAL \Add7~55\ : std_logic;
SIGNAL \Add7~56_combout\ : std_logic;
SIGNAL \Add7~57\ : std_logic;
SIGNAL \Add7~58_combout\ : std_logic;
SIGNAL \Add7~59\ : std_logic;
SIGNAL \Add7~60_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT22\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT23\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT24\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT25\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT26\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT27\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT28\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT29\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT30\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~DATAOUT31\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~dataout\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT1\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT2\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT3\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT4\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT5\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT6\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT7\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT8\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT9\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT10\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT11\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT12\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT13\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT14\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT15\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT16\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT17\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT18\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT19\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT20\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT21\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT22\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT23\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT24\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT25\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT26\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT27\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT28\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT29\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT30\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~DATAOUT31\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~0\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~1\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~2\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_mult5~3\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT13\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT12\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT11\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT10\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT9\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT8\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT7\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT6\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT5\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT4\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT3\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT2\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~DATAOUT1\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out6~dataout\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~1\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~3\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~5\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~7\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~9\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~11\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~13\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~15\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~17\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~19\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~21\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~23\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~25\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~26_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~24_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~22_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~20_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~18_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~16_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~14_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~12_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~10_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~8_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~6_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~4_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult4|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~21\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~23\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~25\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Add8~13\ : std_logic;
SIGNAL \Add8~14_combout\ : std_logic;
SIGNAL \Add8~15\ : std_logic;
SIGNAL \Add8~16_combout\ : std_logic;
SIGNAL \Add8~17\ : std_logic;
SIGNAL \Add8~18_combout\ : std_logic;
SIGNAL \Add8~19\ : std_logic;
SIGNAL \Add8~20_combout\ : std_logic;
SIGNAL \Add8~21\ : std_logic;
SIGNAL \Add8~22_combout\ : std_logic;
SIGNAL \Add8~23\ : std_logic;
SIGNAL \Add8~24_combout\ : std_logic;
SIGNAL \Add8~25\ : std_logic;
SIGNAL \Add8~26_combout\ : std_logic;
SIGNAL \Add8~27\ : std_logic;
SIGNAL \Add8~28_combout\ : std_logic;
SIGNAL \Add8~29\ : std_logic;
SIGNAL \Add8~30_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT33\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT34\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult1~DATAOUT35\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \Add8~31\ : std_logic;
SIGNAL \Add8~32_combout\ : std_logic;
SIGNAL \Add8~33\ : std_logic;
SIGNAL \Add8~34_combout\ : std_logic;
SIGNAL \Add8~35\ : std_logic;
SIGNAL \Add8~36_combout\ : std_logic;
SIGNAL \Add8~37\ : std_logic;
SIGNAL \Add8~38_combout\ : std_logic;
SIGNAL \Add8~39\ : std_logic;
SIGNAL \Add8~40_combout\ : std_logic;
SIGNAL \Add8~41\ : std_logic;
SIGNAL \Add8~42_combout\ : std_logic;
SIGNAL \Add8~43\ : std_logic;
SIGNAL \Add8~44_combout\ : std_logic;
SIGNAL \Add8~45\ : std_logic;
SIGNAL \Add8~46_combout\ : std_logic;
SIGNAL \Add8~47\ : std_logic;
SIGNAL \Add8~48_combout\ : std_logic;
SIGNAL \Add8~49\ : std_logic;
SIGNAL \Add8~50_combout\ : std_logic;
SIGNAL \Add8~51\ : std_logic;
SIGNAL \Add8~52_combout\ : std_logic;
SIGNAL \Add8~53\ : std_logic;
SIGNAL \Add8~54_combout\ : std_logic;
SIGNAL \Add8~55\ : std_logic;
SIGNAL \Add8~56_combout\ : std_logic;
SIGNAL \Add8~57\ : std_logic;
SIGNAL \Add8~58_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT22\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT23\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT24\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT25\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT26\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT27\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT28\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT29\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT30\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~DATAOUT31\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~dataout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT1\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT2\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT3\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT4\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT5\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT6\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT7\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT8\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT9\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT10\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT11\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT12\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT13\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT14\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT15\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT16\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT17\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT18\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT19\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT20\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT21\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT22\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT23\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT24\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT25\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT26\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT27\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT28\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT29\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT30\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~DATAOUT31\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~0\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~1\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~2\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_mult5~3\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT13\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT12\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT11\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT10\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT9\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT8\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT7\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT6\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT5\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT4\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT3\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT2\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~DATAOUT1\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out6~dataout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~1\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~3\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~5\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~7\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~9\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~11\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~13\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~15\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~17\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~19\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~21\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~23\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~25\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~26_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~24_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~22_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~20_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~18_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~16_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~14_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~12_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~10_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~8_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~6_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~4_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mult5|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~21\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~23\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~25\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Add9~1_cout\ : std_logic;
SIGNAL \Add9~3_cout\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~13\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~17\ : std_logic;
SIGNAL \Add9~19\ : std_logic;
SIGNAL \Add9~21\ : std_logic;
SIGNAL \Add9~23\ : std_logic;
SIGNAL \Add9~25\ : std_logic;
SIGNAL \Add9~27\ : std_logic;
SIGNAL \Add9~29\ : std_logic;
SIGNAL \Add9~31\ : std_logic;
SIGNAL \Add9~33\ : std_logic;
SIGNAL \Add9~35\ : std_logic;
SIGNAL \Add9~37\ : std_logic;
SIGNAL \Add9~39\ : std_logic;
SIGNAL \Add9~41\ : std_logic;
SIGNAL \Add9~43\ : std_logic;
SIGNAL \Add9~45\ : std_logic;
SIGNAL \Add9~47\ : std_logic;
SIGNAL \Add9~49\ : std_logic;
SIGNAL \Add9~51\ : std_logic;
SIGNAL \Add9~53\ : std_logic;
SIGNAL \Add9~55\ : std_logic;
SIGNAL \Add9~57\ : std_logic;
SIGNAL \Add9~58_combout\ : std_logic;
SIGNAL \Add9~52_combout\ : std_logic;
SIGNAL \Add9~48_combout\ : std_logic;
SIGNAL \Add9~46_combout\ : std_logic;
SIGNAL \Add9~50_combout\ : std_logic;
SIGNAL \LessThan52~1_combout\ : std_logic;
SIGNAL \Add9~34_combout\ : std_logic;
SIGNAL \Add9~30_combout\ : std_logic;
SIGNAL \Add9~32_combout\ : std_logic;
SIGNAL \Add9~36_combout\ : std_logic;
SIGNAL \LessThan52~0_combout\ : std_logic;
SIGNAL \Add9~40_combout\ : std_logic;
SIGNAL \Add9~44_combout\ : std_logic;
SIGNAL \Add9~54_combout\ : std_logic;
SIGNAL \LessThan52~2_combout\ : std_logic;
SIGNAL \Add9~38_combout\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \LessThan52~5_combout\ : std_logic;
SIGNAL \Add9~22_combout\ : std_logic;
SIGNAL \Add9~24_combout\ : std_logic;
SIGNAL \Add9~26_combout\ : std_logic;
SIGNAL \Add9~28_combout\ : std_logic;
SIGNAL \LessThan52~4_combout\ : std_logic;
SIGNAL \Add9~20_combout\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \Add9~18_combout\ : std_logic;
SIGNAL \LessThan52~3_combout\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \LessThan52~6_combout\ : std_logic;
SIGNAL \Add9~42_combout\ : std_logic;
SIGNAL \Add9~56_combout\ : std_logic;
SIGNAL \LessThan52~7_combout\ : std_logic;
SIGNAL \LessThan52~8_combout\ : std_logic;
SIGNAL \RGB~25_combout\ : std_logic;
SIGNAL \Add6~40_combout\ : std_logic;
SIGNAL \Add6~38_combout\ : std_logic;
SIGNAL \Add6~44_combout\ : std_logic;
SIGNAL \Add6~42_combout\ : std_logic;
SIGNAL \LessThan51~0_combout\ : std_logic;
SIGNAL \Add6~48_combout\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \LessThan51~3_combout\ : std_logic;
SIGNAL \Add6~24_combout\ : std_logic;
SIGNAL \Add6~22_combout\ : std_logic;
SIGNAL \Add6~28_combout\ : std_logic;
SIGNAL \Add6~26_combout\ : std_logic;
SIGNAL \LessThan51~2_combout\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \Add6~18_combout\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \LessThan51~1_combout\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \LessThan51~4_combout\ : std_logic;
SIGNAL \Add6~32_combout\ : std_logic;
SIGNAL \Add6~30_combout\ : std_logic;
SIGNAL \Add6~34_combout\ : std_logic;
SIGNAL \Add6~36_combout\ : std_logic;
SIGNAL \LessThan51~5_combout\ : std_logic;
SIGNAL \Add6~46_combout\ : std_logic;
SIGNAL \RGB~21_combout\ : std_logic;
SIGNAL \Add6~54_combout\ : std_logic;
SIGNAL \RGB~22_combout\ : std_logic;
SIGNAL \Add6~52_combout\ : std_logic;
SIGNAL \Add6~50_combout\ : std_logic;
SIGNAL \Add6~56_combout\ : std_logic;
SIGNAL \RGB~23_combout\ : std_logic;
SIGNAL \RGB~24_combout\ : std_logic;
SIGNAL \RGB~26_combout\ : std_logic;
SIGNAL \RGB[2]~reg0_q\ : std_logic;
SIGNAL \move|sync_ffs\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \move|debounce_ps2_clk|counter_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \move|debounce_ps2_clk|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult4|auto_generated|w569w\ : std_logic_vector(64 DOWNTO 0);
SIGNAL \Mult3|auto_generated|w569w\ : std_logic_vector(64 DOWNTO 0);
SIGNAL \Mult0|auto_generated|w248w\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \Mult5|auto_generated|w569w\ : std_logic_vector(64 DOWNTO 0);
SIGNAL \Mult2|auto_generated|w569w\ : std_logic_vector(64 DOWNTO 0);
SIGNAL \move|count_idle\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \move|ps2_word\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \move|ps2_code\ : std_logic_vector(7 DOWNTO 0);
SIGNAL player1x : std_logic_vector(31 DOWNTO 0);
SIGNAL hPos : std_logic_vector(31 DOWNTO 0);
SIGNAL player1y : std_logic_vector(31 DOWNTO 0);
SIGNAL vPos : std_logic_vector(31 DOWNTO 0);
SIGNAL \move|debounce_ps2_data|counter_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \move|debounce_ps2_data|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult1|auto_generated|w248w\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \move|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \move|debounce_ps2_clk|ALT_INV_result~q\ : std_logic;
SIGNAL ALT_INV_player1x : std_logic_vector(0 DOWNTO 0);
SIGNAL ALT_INV_player1y : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_RGB[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_RGB[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_RGB[0]~reg0_q\ : std_logic;

BEGIN

ww_CLK <= CLK;
VGA_CLOCK <= ww_VGA_CLOCK;
ww_RST <= RST;
ww_p1_button <= p1_button;
ww_p2_button <= p2_button;
ww_PS2_CLK <= PS2_CLK;
ww_PS2_DAT <= PS2_DAT;
HSYNC <= ww_HSYNC;
VSYNC <= ww_VSYNC;
RGB <= ww_RGB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult5|auto_generated|mac_out4_DATAA_bus\ <= (\Mult5|auto_generated|mac_mult3~DATAOUT31\ & \Mult5|auto_generated|mac_mult3~DATAOUT30\ & \Mult5|auto_generated|mac_mult3~DATAOUT29\ & \Mult5|auto_generated|mac_mult3~DATAOUT28\ & 
\Mult5|auto_generated|mac_mult3~DATAOUT27\ & \Mult5|auto_generated|mac_mult3~DATAOUT26\ & \Mult5|auto_generated|mac_mult3~DATAOUT25\ & \Mult5|auto_generated|mac_mult3~DATAOUT24\ & \Mult5|auto_generated|mac_mult3~DATAOUT23\ & 
\Mult5|auto_generated|mac_mult3~DATAOUT22\ & \Mult5|auto_generated|mac_mult3~DATAOUT21\ & \Mult5|auto_generated|mac_mult3~DATAOUT20\ & \Mult5|auto_generated|mac_mult3~DATAOUT19\ & \Mult5|auto_generated|mac_mult3~DATAOUT18\ & 
\Mult5|auto_generated|mac_mult3~DATAOUT17\ & \Mult5|auto_generated|mac_mult3~DATAOUT16\ & \Mult5|auto_generated|mac_mult3~DATAOUT15\ & \Mult5|auto_generated|mac_mult3~DATAOUT14\ & \Mult5|auto_generated|mac_mult3~DATAOUT13\ & 
\Mult5|auto_generated|mac_mult3~DATAOUT12\ & \Mult5|auto_generated|mac_mult3~DATAOUT11\ & \Mult5|auto_generated|mac_mult3~DATAOUT10\ & \Mult5|auto_generated|mac_mult3~DATAOUT9\ & \Mult5|auto_generated|mac_mult3~DATAOUT8\ & 
\Mult5|auto_generated|mac_mult3~DATAOUT7\ & \Mult5|auto_generated|mac_mult3~DATAOUT6\ & \Mult5|auto_generated|mac_mult3~DATAOUT5\ & \Mult5|auto_generated|mac_mult3~DATAOUT4\ & \Mult5|auto_generated|mac_mult3~DATAOUT3\ & 
\Mult5|auto_generated|mac_mult3~DATAOUT2\ & \Mult5|auto_generated|mac_mult3~DATAOUT1\ & \Mult5|auto_generated|mac_mult3~dataout\ & \Mult5|auto_generated|mac_mult3~3\ & \Mult5|auto_generated|mac_mult3~2\ & \Mult5|auto_generated|mac_mult3~1\ & 
\Mult5|auto_generated|mac_mult3~0\);

\Mult5|auto_generated|mac_out4~0\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(0);
\Mult5|auto_generated|mac_out4~1\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(1);
\Mult5|auto_generated|mac_out4~2\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(2);
\Mult5|auto_generated|mac_out4~3\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(3);
\Mult5|auto_generated|mac_out4~dataout\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(4);
\Mult5|auto_generated|mac_out4~DATAOUT1\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(5);
\Mult5|auto_generated|mac_out4~DATAOUT2\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(6);
\Mult5|auto_generated|mac_out4~DATAOUT3\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(7);
\Mult5|auto_generated|mac_out4~DATAOUT4\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(8);
\Mult5|auto_generated|mac_out4~DATAOUT5\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(9);
\Mult5|auto_generated|mac_out4~DATAOUT6\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(10);
\Mult5|auto_generated|mac_out4~DATAOUT7\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(11);
\Mult5|auto_generated|mac_out4~DATAOUT8\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(12);
\Mult5|auto_generated|mac_out4~DATAOUT9\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(13);
\Mult5|auto_generated|mac_out4~DATAOUT10\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(14);
\Mult5|auto_generated|mac_out4~DATAOUT11\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(15);
\Mult5|auto_generated|mac_out4~DATAOUT12\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(16);
\Mult5|auto_generated|mac_out4~DATAOUT13\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(17);
\Mult5|auto_generated|mac_out4~DATAOUT14\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(18);
\Mult5|auto_generated|mac_out4~DATAOUT15\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(19);
\Mult5|auto_generated|mac_out4~DATAOUT16\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(20);
\Mult5|auto_generated|mac_out4~DATAOUT17\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(21);
\Mult5|auto_generated|mac_out4~DATAOUT18\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(22);
\Mult5|auto_generated|mac_out4~DATAOUT19\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(23);
\Mult5|auto_generated|mac_out4~DATAOUT20\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(24);
\Mult5|auto_generated|mac_out4~DATAOUT21\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(25);
\Mult5|auto_generated|mac_out4~DATAOUT22\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(26);
\Mult5|auto_generated|mac_out4~DATAOUT23\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(27);
\Mult5|auto_generated|mac_out4~DATAOUT24\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(28);
\Mult5|auto_generated|mac_out4~DATAOUT25\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(29);
\Mult5|auto_generated|mac_out4~DATAOUT26\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(30);
\Mult5|auto_generated|mac_out4~DATAOUT27\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(31);
\Mult5|auto_generated|mac_out4~DATAOUT28\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(32);
\Mult5|auto_generated|mac_out4~DATAOUT29\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(33);
\Mult5|auto_generated|mac_out4~DATAOUT30\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(34);
\Mult5|auto_generated|mac_out4~DATAOUT31\ <= \Mult5|auto_generated|mac_out4_DATAOUT_bus\(35);

\Mult5|auto_generated|mac_out6_DATAA_bus\ <= (\Mult5|auto_generated|mac_mult5~DATAOUT31\ & \Mult5|auto_generated|mac_mult5~DATAOUT30\ & \Mult5|auto_generated|mac_mult5~DATAOUT29\ & \Mult5|auto_generated|mac_mult5~DATAOUT28\ & 
\Mult5|auto_generated|mac_mult5~DATAOUT27\ & \Mult5|auto_generated|mac_mult5~DATAOUT26\ & \Mult5|auto_generated|mac_mult5~DATAOUT25\ & \Mult5|auto_generated|mac_mult5~DATAOUT24\ & \Mult5|auto_generated|mac_mult5~DATAOUT23\ & 
\Mult5|auto_generated|mac_mult5~DATAOUT22\ & \Mult5|auto_generated|mac_mult5~DATAOUT21\ & \Mult5|auto_generated|mac_mult5~DATAOUT20\ & \Mult5|auto_generated|mac_mult5~DATAOUT19\ & \Mult5|auto_generated|mac_mult5~DATAOUT18\ & 
\Mult5|auto_generated|mac_mult5~DATAOUT17\ & \Mult5|auto_generated|mac_mult5~DATAOUT16\ & \Mult5|auto_generated|mac_mult5~DATAOUT15\ & \Mult5|auto_generated|mac_mult5~DATAOUT14\ & \Mult5|auto_generated|mac_mult5~DATAOUT13\ & 
\Mult5|auto_generated|mac_mult5~DATAOUT12\ & \Mult5|auto_generated|mac_mult5~DATAOUT11\ & \Mult5|auto_generated|mac_mult5~DATAOUT10\ & \Mult5|auto_generated|mac_mult5~DATAOUT9\ & \Mult5|auto_generated|mac_mult5~DATAOUT8\ & 
\Mult5|auto_generated|mac_mult5~DATAOUT7\ & \Mult5|auto_generated|mac_mult5~DATAOUT6\ & \Mult5|auto_generated|mac_mult5~DATAOUT5\ & \Mult5|auto_generated|mac_mult5~DATAOUT4\ & \Mult5|auto_generated|mac_mult5~DATAOUT3\ & 
\Mult5|auto_generated|mac_mult5~DATAOUT2\ & \Mult5|auto_generated|mac_mult5~DATAOUT1\ & \Mult5|auto_generated|mac_mult5~dataout\ & \Mult5|auto_generated|mac_mult5~3\ & \Mult5|auto_generated|mac_mult5~2\ & \Mult5|auto_generated|mac_mult5~1\ & 
\Mult5|auto_generated|mac_mult5~0\);

\Mult5|auto_generated|mac_out6~0\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(0);
\Mult5|auto_generated|mac_out6~1\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(1);
\Mult5|auto_generated|mac_out6~2\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(2);
\Mult5|auto_generated|mac_out6~3\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(3);
\Mult5|auto_generated|mac_out6~dataout\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(4);
\Mult5|auto_generated|mac_out6~DATAOUT1\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(5);
\Mult5|auto_generated|mac_out6~DATAOUT2\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(6);
\Mult5|auto_generated|mac_out6~DATAOUT3\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(7);
\Mult5|auto_generated|mac_out6~DATAOUT4\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(8);
\Mult5|auto_generated|mac_out6~DATAOUT5\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(9);
\Mult5|auto_generated|mac_out6~DATAOUT6\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(10);
\Mult5|auto_generated|mac_out6~DATAOUT7\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(11);
\Mult5|auto_generated|mac_out6~DATAOUT8\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(12);
\Mult5|auto_generated|mac_out6~DATAOUT9\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(13);
\Mult5|auto_generated|mac_out6~DATAOUT10\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(14);
\Mult5|auto_generated|mac_out6~DATAOUT11\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(15);
\Mult5|auto_generated|mac_out6~DATAOUT12\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(16);
\Mult5|auto_generated|mac_out6~DATAOUT13\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(17);
\Mult5|auto_generated|mac_out6~DATAOUT14\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(18);
\Mult5|auto_generated|mac_out6~DATAOUT15\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(19);
\Mult5|auto_generated|mac_out6~DATAOUT16\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(20);
\Mult5|auto_generated|mac_out6~DATAOUT17\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(21);
\Mult5|auto_generated|mac_out6~DATAOUT18\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(22);
\Mult5|auto_generated|mac_out6~DATAOUT19\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(23);
\Mult5|auto_generated|mac_out6~DATAOUT20\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(24);
\Mult5|auto_generated|mac_out6~DATAOUT21\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(25);
\Mult5|auto_generated|mac_out6~DATAOUT22\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(26);
\Mult5|auto_generated|mac_out6~DATAOUT23\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(27);
\Mult5|auto_generated|mac_out6~DATAOUT24\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(28);
\Mult5|auto_generated|mac_out6~DATAOUT25\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(29);
\Mult5|auto_generated|mac_out6~DATAOUT26\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(30);
\Mult5|auto_generated|mac_out6~DATAOUT27\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(31);
\Mult5|auto_generated|mac_out6~DATAOUT28\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(32);
\Mult5|auto_generated|mac_out6~DATAOUT29\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(33);
\Mult5|auto_generated|mac_out6~DATAOUT30\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(34);
\Mult5|auto_generated|mac_out6~DATAOUT31\ <= \Mult5|auto_generated|mac_out6_DATAOUT_bus\(35);

\Mult5|auto_generated|mac_out2_DATAA_bus\ <= (\Mult5|auto_generated|mac_mult1~DATAOUT35\ & \Mult5|auto_generated|mac_mult1~DATAOUT34\ & \Mult5|auto_generated|mac_mult1~DATAOUT33\ & \Mult5|auto_generated|mac_mult1~DATAOUT32\ & 
\Mult5|auto_generated|mac_mult1~DATAOUT31\ & \Mult5|auto_generated|mac_mult1~DATAOUT30\ & \Mult5|auto_generated|mac_mult1~DATAOUT29\ & \Mult5|auto_generated|mac_mult1~DATAOUT28\ & \Mult5|auto_generated|mac_mult1~DATAOUT27\ & 
\Mult5|auto_generated|mac_mult1~DATAOUT26\ & \Mult5|auto_generated|mac_mult1~DATAOUT25\ & \Mult5|auto_generated|mac_mult1~DATAOUT24\ & \Mult5|auto_generated|mac_mult1~DATAOUT23\ & \Mult5|auto_generated|mac_mult1~DATAOUT22\ & 
\Mult5|auto_generated|mac_mult1~DATAOUT21\ & \Mult5|auto_generated|mac_mult1~DATAOUT20\ & \Mult5|auto_generated|mac_mult1~DATAOUT19\ & \Mult5|auto_generated|mac_mult1~DATAOUT18\ & \Mult5|auto_generated|mac_mult1~DATAOUT17\ & 
\Mult5|auto_generated|mac_mult1~DATAOUT16\ & \Mult5|auto_generated|mac_mult1~DATAOUT15\ & \Mult5|auto_generated|mac_mult1~DATAOUT14\ & \Mult5|auto_generated|mac_mult1~DATAOUT13\ & \Mult5|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult5|auto_generated|mac_mult1~DATAOUT11\ & \Mult5|auto_generated|mac_mult1~DATAOUT10\ & \Mult5|auto_generated|mac_mult1~DATAOUT9\ & \Mult5|auto_generated|mac_mult1~DATAOUT8\ & \Mult5|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult5|auto_generated|mac_mult1~DATAOUT6\ & \Mult5|auto_generated|mac_mult1~DATAOUT5\ & \Mult5|auto_generated|mac_mult1~DATAOUT4\ & \Mult5|auto_generated|mac_mult1~DATAOUT3\ & \Mult5|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult5|auto_generated|mac_mult1~DATAOUT1\ & \Mult5|auto_generated|mac_mult1~dataout\);

\Mult5|auto_generated|w569w\(0) <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult5|auto_generated|w569w\(1) <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult5|auto_generated|w569w\(2) <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult5|auto_generated|w569w\(3) <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult5|auto_generated|w569w\(4) <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult5|auto_generated|w569w\(5) <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult5|auto_generated|w569w\(6) <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult5|auto_generated|w569w\(7) <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult5|auto_generated|w569w\(8) <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult5|auto_generated|w569w\(9) <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult5|auto_generated|w569w\(10) <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult5|auto_generated|w569w\(11) <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult5|auto_generated|w569w\(12) <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult5|auto_generated|w569w\(13) <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult5|auto_generated|w569w\(14) <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult5|auto_generated|w569w\(15) <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult5|auto_generated|w569w\(16) <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult5|auto_generated|w569w\(17) <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult5|auto_generated|mac_out2~DATAOUT18\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult5|auto_generated|mac_out2~DATAOUT19\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult5|auto_generated|mac_out2~DATAOUT20\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult5|auto_generated|mac_out2~DATAOUT21\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult5|auto_generated|mac_out2~DATAOUT22\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult5|auto_generated|mac_out2~DATAOUT23\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult5|auto_generated|mac_out2~DATAOUT24\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult5|auto_generated|mac_out2~DATAOUT25\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult5|auto_generated|mac_out2~DATAOUT26\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult5|auto_generated|mac_out2~DATAOUT27\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult5|auto_generated|mac_out2~DATAOUT28\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult5|auto_generated|mac_out2~DATAOUT29\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult5|auto_generated|mac_out2~DATAOUT30\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult5|auto_generated|mac_out2~DATAOUT31\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult5|auto_generated|mac_out2~DATAOUT32\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult5|auto_generated|mac_out2~DATAOUT33\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult5|auto_generated|mac_out2~DATAOUT34\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult5|auto_generated|mac_out2~DATAOUT35\ <= \Mult5|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult4|auto_generated|mac_out4_DATAA_bus\ <= (\Mult4|auto_generated|mac_mult3~DATAOUT31\ & \Mult4|auto_generated|mac_mult3~DATAOUT30\ & \Mult4|auto_generated|mac_mult3~DATAOUT29\ & \Mult4|auto_generated|mac_mult3~DATAOUT28\ & 
\Mult4|auto_generated|mac_mult3~DATAOUT27\ & \Mult4|auto_generated|mac_mult3~DATAOUT26\ & \Mult4|auto_generated|mac_mult3~DATAOUT25\ & \Mult4|auto_generated|mac_mult3~DATAOUT24\ & \Mult4|auto_generated|mac_mult3~DATAOUT23\ & 
\Mult4|auto_generated|mac_mult3~DATAOUT22\ & \Mult4|auto_generated|mac_mult3~DATAOUT21\ & \Mult4|auto_generated|mac_mult3~DATAOUT20\ & \Mult4|auto_generated|mac_mult3~DATAOUT19\ & \Mult4|auto_generated|mac_mult3~DATAOUT18\ & 
\Mult4|auto_generated|mac_mult3~DATAOUT17\ & \Mult4|auto_generated|mac_mult3~DATAOUT16\ & \Mult4|auto_generated|mac_mult3~DATAOUT15\ & \Mult4|auto_generated|mac_mult3~DATAOUT14\ & \Mult4|auto_generated|mac_mult3~DATAOUT13\ & 
\Mult4|auto_generated|mac_mult3~DATAOUT12\ & \Mult4|auto_generated|mac_mult3~DATAOUT11\ & \Mult4|auto_generated|mac_mult3~DATAOUT10\ & \Mult4|auto_generated|mac_mult3~DATAOUT9\ & \Mult4|auto_generated|mac_mult3~DATAOUT8\ & 
\Mult4|auto_generated|mac_mult3~DATAOUT7\ & \Mult4|auto_generated|mac_mult3~DATAOUT6\ & \Mult4|auto_generated|mac_mult3~DATAOUT5\ & \Mult4|auto_generated|mac_mult3~DATAOUT4\ & \Mult4|auto_generated|mac_mult3~DATAOUT3\ & 
\Mult4|auto_generated|mac_mult3~DATAOUT2\ & \Mult4|auto_generated|mac_mult3~DATAOUT1\ & \Mult4|auto_generated|mac_mult3~dataout\ & \Mult4|auto_generated|mac_mult3~3\ & \Mult4|auto_generated|mac_mult3~2\ & \Mult4|auto_generated|mac_mult3~1\ & 
\Mult4|auto_generated|mac_mult3~0\);

\Mult4|auto_generated|mac_out4~0\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(0);
\Mult4|auto_generated|mac_out4~1\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(1);
\Mult4|auto_generated|mac_out4~2\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(2);
\Mult4|auto_generated|mac_out4~3\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(3);
\Mult4|auto_generated|mac_out4~dataout\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(4);
\Mult4|auto_generated|mac_out4~DATAOUT1\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(5);
\Mult4|auto_generated|mac_out4~DATAOUT2\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(6);
\Mult4|auto_generated|mac_out4~DATAOUT3\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(7);
\Mult4|auto_generated|mac_out4~DATAOUT4\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(8);
\Mult4|auto_generated|mac_out4~DATAOUT5\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(9);
\Mult4|auto_generated|mac_out4~DATAOUT6\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(10);
\Mult4|auto_generated|mac_out4~DATAOUT7\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(11);
\Mult4|auto_generated|mac_out4~DATAOUT8\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(12);
\Mult4|auto_generated|mac_out4~DATAOUT9\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(13);
\Mult4|auto_generated|mac_out4~DATAOUT10\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(14);
\Mult4|auto_generated|mac_out4~DATAOUT11\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(15);
\Mult4|auto_generated|mac_out4~DATAOUT12\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(16);
\Mult4|auto_generated|mac_out4~DATAOUT13\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(17);
\Mult4|auto_generated|mac_out4~DATAOUT14\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(18);
\Mult4|auto_generated|mac_out4~DATAOUT15\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(19);
\Mult4|auto_generated|mac_out4~DATAOUT16\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(20);
\Mult4|auto_generated|mac_out4~DATAOUT17\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(21);
\Mult4|auto_generated|mac_out4~DATAOUT18\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(22);
\Mult4|auto_generated|mac_out4~DATAOUT19\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(23);
\Mult4|auto_generated|mac_out4~DATAOUT20\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(24);
\Mult4|auto_generated|mac_out4~DATAOUT21\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(25);
\Mult4|auto_generated|mac_out4~DATAOUT22\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(26);
\Mult4|auto_generated|mac_out4~DATAOUT23\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(27);
\Mult4|auto_generated|mac_out4~DATAOUT24\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(28);
\Mult4|auto_generated|mac_out4~DATAOUT25\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(29);
\Mult4|auto_generated|mac_out4~DATAOUT26\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(30);
\Mult4|auto_generated|mac_out4~DATAOUT27\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(31);
\Mult4|auto_generated|mac_out4~DATAOUT28\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(32);
\Mult4|auto_generated|mac_out4~DATAOUT29\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(33);
\Mult4|auto_generated|mac_out4~DATAOUT30\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(34);
\Mult4|auto_generated|mac_out4~DATAOUT31\ <= \Mult4|auto_generated|mac_out4_DATAOUT_bus\(35);

\Mult4|auto_generated|mac_out6_DATAA_bus\ <= (\Mult4|auto_generated|mac_mult5~DATAOUT31\ & \Mult4|auto_generated|mac_mult5~DATAOUT30\ & \Mult4|auto_generated|mac_mult5~DATAOUT29\ & \Mult4|auto_generated|mac_mult5~DATAOUT28\ & 
\Mult4|auto_generated|mac_mult5~DATAOUT27\ & \Mult4|auto_generated|mac_mult5~DATAOUT26\ & \Mult4|auto_generated|mac_mult5~DATAOUT25\ & \Mult4|auto_generated|mac_mult5~DATAOUT24\ & \Mult4|auto_generated|mac_mult5~DATAOUT23\ & 
\Mult4|auto_generated|mac_mult5~DATAOUT22\ & \Mult4|auto_generated|mac_mult5~DATAOUT21\ & \Mult4|auto_generated|mac_mult5~DATAOUT20\ & \Mult4|auto_generated|mac_mult5~DATAOUT19\ & \Mult4|auto_generated|mac_mult5~DATAOUT18\ & 
\Mult4|auto_generated|mac_mult5~DATAOUT17\ & \Mult4|auto_generated|mac_mult5~DATAOUT16\ & \Mult4|auto_generated|mac_mult5~DATAOUT15\ & \Mult4|auto_generated|mac_mult5~DATAOUT14\ & \Mult4|auto_generated|mac_mult5~DATAOUT13\ & 
\Mult4|auto_generated|mac_mult5~DATAOUT12\ & \Mult4|auto_generated|mac_mult5~DATAOUT11\ & \Mult4|auto_generated|mac_mult5~DATAOUT10\ & \Mult4|auto_generated|mac_mult5~DATAOUT9\ & \Mult4|auto_generated|mac_mult5~DATAOUT8\ & 
\Mult4|auto_generated|mac_mult5~DATAOUT7\ & \Mult4|auto_generated|mac_mult5~DATAOUT6\ & \Mult4|auto_generated|mac_mult5~DATAOUT5\ & \Mult4|auto_generated|mac_mult5~DATAOUT4\ & \Mult4|auto_generated|mac_mult5~DATAOUT3\ & 
\Mult4|auto_generated|mac_mult5~DATAOUT2\ & \Mult4|auto_generated|mac_mult5~DATAOUT1\ & \Mult4|auto_generated|mac_mult5~dataout\ & \Mult4|auto_generated|mac_mult5~3\ & \Mult4|auto_generated|mac_mult5~2\ & \Mult4|auto_generated|mac_mult5~1\ & 
\Mult4|auto_generated|mac_mult5~0\);

\Mult4|auto_generated|mac_out6~0\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(0);
\Mult4|auto_generated|mac_out6~1\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(1);
\Mult4|auto_generated|mac_out6~2\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(2);
\Mult4|auto_generated|mac_out6~3\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(3);
\Mult4|auto_generated|mac_out6~dataout\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(4);
\Mult4|auto_generated|mac_out6~DATAOUT1\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(5);
\Mult4|auto_generated|mac_out6~DATAOUT2\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(6);
\Mult4|auto_generated|mac_out6~DATAOUT3\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(7);
\Mult4|auto_generated|mac_out6~DATAOUT4\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(8);
\Mult4|auto_generated|mac_out6~DATAOUT5\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(9);
\Mult4|auto_generated|mac_out6~DATAOUT6\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(10);
\Mult4|auto_generated|mac_out6~DATAOUT7\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(11);
\Mult4|auto_generated|mac_out6~DATAOUT8\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(12);
\Mult4|auto_generated|mac_out6~DATAOUT9\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(13);
\Mult4|auto_generated|mac_out6~DATAOUT10\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(14);
\Mult4|auto_generated|mac_out6~DATAOUT11\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(15);
\Mult4|auto_generated|mac_out6~DATAOUT12\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(16);
\Mult4|auto_generated|mac_out6~DATAOUT13\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(17);
\Mult4|auto_generated|mac_out6~DATAOUT14\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(18);
\Mult4|auto_generated|mac_out6~DATAOUT15\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(19);
\Mult4|auto_generated|mac_out6~DATAOUT16\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(20);
\Mult4|auto_generated|mac_out6~DATAOUT17\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(21);
\Mult4|auto_generated|mac_out6~DATAOUT18\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(22);
\Mult4|auto_generated|mac_out6~DATAOUT19\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(23);
\Mult4|auto_generated|mac_out6~DATAOUT20\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(24);
\Mult4|auto_generated|mac_out6~DATAOUT21\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(25);
\Mult4|auto_generated|mac_out6~DATAOUT22\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(26);
\Mult4|auto_generated|mac_out6~DATAOUT23\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(27);
\Mult4|auto_generated|mac_out6~DATAOUT24\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(28);
\Mult4|auto_generated|mac_out6~DATAOUT25\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(29);
\Mult4|auto_generated|mac_out6~DATAOUT26\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(30);
\Mult4|auto_generated|mac_out6~DATAOUT27\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(31);
\Mult4|auto_generated|mac_out6~DATAOUT28\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(32);
\Mult4|auto_generated|mac_out6~DATAOUT29\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(33);
\Mult4|auto_generated|mac_out6~DATAOUT30\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(34);
\Mult4|auto_generated|mac_out6~DATAOUT31\ <= \Mult4|auto_generated|mac_out6_DATAOUT_bus\(35);

\Mult4|auto_generated|mac_out2_DATAA_bus\ <= (\Mult4|auto_generated|mac_mult1~DATAOUT35\ & \Mult4|auto_generated|mac_mult1~DATAOUT34\ & \Mult4|auto_generated|mac_mult1~DATAOUT33\ & \Mult4|auto_generated|mac_mult1~DATAOUT32\ & 
\Mult4|auto_generated|mac_mult1~DATAOUT31\ & \Mult4|auto_generated|mac_mult1~DATAOUT30\ & \Mult4|auto_generated|mac_mult1~DATAOUT29\ & \Mult4|auto_generated|mac_mult1~DATAOUT28\ & \Mult4|auto_generated|mac_mult1~DATAOUT27\ & 
\Mult4|auto_generated|mac_mult1~DATAOUT26\ & \Mult4|auto_generated|mac_mult1~DATAOUT25\ & \Mult4|auto_generated|mac_mult1~DATAOUT24\ & \Mult4|auto_generated|mac_mult1~DATAOUT23\ & \Mult4|auto_generated|mac_mult1~DATAOUT22\ & 
\Mult4|auto_generated|mac_mult1~DATAOUT21\ & \Mult4|auto_generated|mac_mult1~DATAOUT20\ & \Mult4|auto_generated|mac_mult1~DATAOUT19\ & \Mult4|auto_generated|mac_mult1~DATAOUT18\ & \Mult4|auto_generated|mac_mult1~DATAOUT17\ & 
\Mult4|auto_generated|mac_mult1~DATAOUT16\ & \Mult4|auto_generated|mac_mult1~DATAOUT15\ & \Mult4|auto_generated|mac_mult1~DATAOUT14\ & \Mult4|auto_generated|mac_mult1~DATAOUT13\ & \Mult4|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult4|auto_generated|mac_mult1~DATAOUT11\ & \Mult4|auto_generated|mac_mult1~DATAOUT10\ & \Mult4|auto_generated|mac_mult1~DATAOUT9\ & \Mult4|auto_generated|mac_mult1~DATAOUT8\ & \Mult4|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult4|auto_generated|mac_mult1~DATAOUT6\ & \Mult4|auto_generated|mac_mult1~DATAOUT5\ & \Mult4|auto_generated|mac_mult1~DATAOUT4\ & \Mult4|auto_generated|mac_mult1~DATAOUT3\ & \Mult4|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult4|auto_generated|mac_mult1~DATAOUT1\ & \Mult4|auto_generated|mac_mult1~dataout\);

\Mult4|auto_generated|w569w\(0) <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult4|auto_generated|w569w\(1) <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult4|auto_generated|w569w\(2) <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult4|auto_generated|w569w\(3) <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult4|auto_generated|w569w\(4) <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult4|auto_generated|w569w\(5) <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult4|auto_generated|w569w\(6) <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult4|auto_generated|w569w\(7) <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult4|auto_generated|w569w\(8) <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult4|auto_generated|w569w\(9) <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult4|auto_generated|w569w\(10) <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult4|auto_generated|w569w\(11) <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult4|auto_generated|w569w\(12) <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult4|auto_generated|w569w\(13) <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult4|auto_generated|w569w\(14) <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult4|auto_generated|w569w\(15) <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult4|auto_generated|w569w\(16) <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult4|auto_generated|w569w\(17) <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult4|auto_generated|mac_out2~DATAOUT18\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult4|auto_generated|mac_out2~DATAOUT19\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult4|auto_generated|mac_out2~DATAOUT20\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult4|auto_generated|mac_out2~DATAOUT21\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult4|auto_generated|mac_out2~DATAOUT22\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult4|auto_generated|mac_out2~DATAOUT23\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult4|auto_generated|mac_out2~DATAOUT24\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult4|auto_generated|mac_out2~DATAOUT25\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult4|auto_generated|mac_out2~DATAOUT26\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult4|auto_generated|mac_out2~DATAOUT27\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult4|auto_generated|mac_out2~DATAOUT28\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult4|auto_generated|mac_out2~DATAOUT29\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult4|auto_generated|mac_out2~DATAOUT30\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult4|auto_generated|mac_out2~DATAOUT31\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult4|auto_generated|mac_out2~DATAOUT32\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult4|auto_generated|mac_out2~DATAOUT33\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult4|auto_generated|mac_out2~DATAOUT34\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult4|auto_generated|mac_out2~DATAOUT35\ <= \Mult4|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult3|auto_generated|mac_out4_DATAA_bus\ <= (\Mult3|auto_generated|mac_mult3~DATAOUT31\ & \Mult3|auto_generated|mac_mult3~DATAOUT30\ & \Mult3|auto_generated|mac_mult3~DATAOUT29\ & \Mult3|auto_generated|mac_mult3~DATAOUT28\ & 
\Mult3|auto_generated|mac_mult3~DATAOUT27\ & \Mult3|auto_generated|mac_mult3~DATAOUT26\ & \Mult3|auto_generated|mac_mult3~DATAOUT25\ & \Mult3|auto_generated|mac_mult3~DATAOUT24\ & \Mult3|auto_generated|mac_mult3~DATAOUT23\ & 
\Mult3|auto_generated|mac_mult3~DATAOUT22\ & \Mult3|auto_generated|mac_mult3~DATAOUT21\ & \Mult3|auto_generated|mac_mult3~DATAOUT20\ & \Mult3|auto_generated|mac_mult3~DATAOUT19\ & \Mult3|auto_generated|mac_mult3~DATAOUT18\ & 
\Mult3|auto_generated|mac_mult3~DATAOUT17\ & \Mult3|auto_generated|mac_mult3~DATAOUT16\ & \Mult3|auto_generated|mac_mult3~DATAOUT15\ & \Mult3|auto_generated|mac_mult3~DATAOUT14\ & \Mult3|auto_generated|mac_mult3~DATAOUT13\ & 
\Mult3|auto_generated|mac_mult3~DATAOUT12\ & \Mult3|auto_generated|mac_mult3~DATAOUT11\ & \Mult3|auto_generated|mac_mult3~DATAOUT10\ & \Mult3|auto_generated|mac_mult3~DATAOUT9\ & \Mult3|auto_generated|mac_mult3~DATAOUT8\ & 
\Mult3|auto_generated|mac_mult3~DATAOUT7\ & \Mult3|auto_generated|mac_mult3~DATAOUT6\ & \Mult3|auto_generated|mac_mult3~DATAOUT5\ & \Mult3|auto_generated|mac_mult3~DATAOUT4\ & \Mult3|auto_generated|mac_mult3~DATAOUT3\ & 
\Mult3|auto_generated|mac_mult3~DATAOUT2\ & \Mult3|auto_generated|mac_mult3~DATAOUT1\ & \Mult3|auto_generated|mac_mult3~dataout\ & \Mult3|auto_generated|mac_mult3~3\ & \Mult3|auto_generated|mac_mult3~2\ & \Mult3|auto_generated|mac_mult3~1\ & 
\Mult3|auto_generated|mac_mult3~0\);

\Mult3|auto_generated|mac_out4~0\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(0);
\Mult3|auto_generated|mac_out4~1\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(1);
\Mult3|auto_generated|mac_out4~2\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(2);
\Mult3|auto_generated|mac_out4~3\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(3);
\Mult3|auto_generated|mac_out4~dataout\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(4);
\Mult3|auto_generated|mac_out4~DATAOUT1\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(5);
\Mult3|auto_generated|mac_out4~DATAOUT2\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(6);
\Mult3|auto_generated|mac_out4~DATAOUT3\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(7);
\Mult3|auto_generated|mac_out4~DATAOUT4\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(8);
\Mult3|auto_generated|mac_out4~DATAOUT5\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(9);
\Mult3|auto_generated|mac_out4~DATAOUT6\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(10);
\Mult3|auto_generated|mac_out4~DATAOUT7\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(11);
\Mult3|auto_generated|mac_out4~DATAOUT8\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(12);
\Mult3|auto_generated|mac_out4~DATAOUT9\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(13);
\Mult3|auto_generated|mac_out4~DATAOUT10\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(14);
\Mult3|auto_generated|mac_out4~DATAOUT11\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(15);
\Mult3|auto_generated|mac_out4~DATAOUT12\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(16);
\Mult3|auto_generated|mac_out4~DATAOUT13\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(17);
\Mult3|auto_generated|mac_out4~DATAOUT14\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(18);
\Mult3|auto_generated|mac_out4~DATAOUT15\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(19);
\Mult3|auto_generated|mac_out4~DATAOUT16\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(20);
\Mult3|auto_generated|mac_out4~DATAOUT17\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(21);
\Mult3|auto_generated|mac_out4~DATAOUT18\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(22);
\Mult3|auto_generated|mac_out4~DATAOUT19\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(23);
\Mult3|auto_generated|mac_out4~DATAOUT20\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(24);
\Mult3|auto_generated|mac_out4~DATAOUT21\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(25);
\Mult3|auto_generated|mac_out4~DATAOUT22\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(26);
\Mult3|auto_generated|mac_out4~DATAOUT23\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(27);
\Mult3|auto_generated|mac_out4~DATAOUT24\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(28);
\Mult3|auto_generated|mac_out4~DATAOUT25\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(29);
\Mult3|auto_generated|mac_out4~DATAOUT26\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(30);
\Mult3|auto_generated|mac_out4~DATAOUT27\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(31);
\Mult3|auto_generated|mac_out4~DATAOUT28\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(32);
\Mult3|auto_generated|mac_out4~DATAOUT29\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(33);
\Mult3|auto_generated|mac_out4~DATAOUT30\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(34);
\Mult3|auto_generated|mac_out4~DATAOUT31\ <= \Mult3|auto_generated|mac_out4_DATAOUT_bus\(35);

\Mult3|auto_generated|mac_out6_DATAA_bus\ <= (\Mult3|auto_generated|mac_mult5~DATAOUT31\ & \Mult3|auto_generated|mac_mult5~DATAOUT30\ & \Mult3|auto_generated|mac_mult5~DATAOUT29\ & \Mult3|auto_generated|mac_mult5~DATAOUT28\ & 
\Mult3|auto_generated|mac_mult5~DATAOUT27\ & \Mult3|auto_generated|mac_mult5~DATAOUT26\ & \Mult3|auto_generated|mac_mult5~DATAOUT25\ & \Mult3|auto_generated|mac_mult5~DATAOUT24\ & \Mult3|auto_generated|mac_mult5~DATAOUT23\ & 
\Mult3|auto_generated|mac_mult5~DATAOUT22\ & \Mult3|auto_generated|mac_mult5~DATAOUT21\ & \Mult3|auto_generated|mac_mult5~DATAOUT20\ & \Mult3|auto_generated|mac_mult5~DATAOUT19\ & \Mult3|auto_generated|mac_mult5~DATAOUT18\ & 
\Mult3|auto_generated|mac_mult5~DATAOUT17\ & \Mult3|auto_generated|mac_mult5~DATAOUT16\ & \Mult3|auto_generated|mac_mult5~DATAOUT15\ & \Mult3|auto_generated|mac_mult5~DATAOUT14\ & \Mult3|auto_generated|mac_mult5~DATAOUT13\ & 
\Mult3|auto_generated|mac_mult5~DATAOUT12\ & \Mult3|auto_generated|mac_mult5~DATAOUT11\ & \Mult3|auto_generated|mac_mult5~DATAOUT10\ & \Mult3|auto_generated|mac_mult5~DATAOUT9\ & \Mult3|auto_generated|mac_mult5~DATAOUT8\ & 
\Mult3|auto_generated|mac_mult5~DATAOUT7\ & \Mult3|auto_generated|mac_mult5~DATAOUT6\ & \Mult3|auto_generated|mac_mult5~DATAOUT5\ & \Mult3|auto_generated|mac_mult5~DATAOUT4\ & \Mult3|auto_generated|mac_mult5~DATAOUT3\ & 
\Mult3|auto_generated|mac_mult5~DATAOUT2\ & \Mult3|auto_generated|mac_mult5~DATAOUT1\ & \Mult3|auto_generated|mac_mult5~dataout\ & \Mult3|auto_generated|mac_mult5~3\ & \Mult3|auto_generated|mac_mult5~2\ & \Mult3|auto_generated|mac_mult5~1\ & 
\Mult3|auto_generated|mac_mult5~0\);

\Mult3|auto_generated|mac_out6~0\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(0);
\Mult3|auto_generated|mac_out6~1\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(1);
\Mult3|auto_generated|mac_out6~2\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(2);
\Mult3|auto_generated|mac_out6~3\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(3);
\Mult3|auto_generated|mac_out6~dataout\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(4);
\Mult3|auto_generated|mac_out6~DATAOUT1\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(5);
\Mult3|auto_generated|mac_out6~DATAOUT2\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(6);
\Mult3|auto_generated|mac_out6~DATAOUT3\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(7);
\Mult3|auto_generated|mac_out6~DATAOUT4\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(8);
\Mult3|auto_generated|mac_out6~DATAOUT5\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(9);
\Mult3|auto_generated|mac_out6~DATAOUT6\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(10);
\Mult3|auto_generated|mac_out6~DATAOUT7\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(11);
\Mult3|auto_generated|mac_out6~DATAOUT8\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(12);
\Mult3|auto_generated|mac_out6~DATAOUT9\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(13);
\Mult3|auto_generated|mac_out6~DATAOUT10\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(14);
\Mult3|auto_generated|mac_out6~DATAOUT11\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(15);
\Mult3|auto_generated|mac_out6~DATAOUT12\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(16);
\Mult3|auto_generated|mac_out6~DATAOUT13\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(17);
\Mult3|auto_generated|mac_out6~DATAOUT14\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(18);
\Mult3|auto_generated|mac_out6~DATAOUT15\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(19);
\Mult3|auto_generated|mac_out6~DATAOUT16\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(20);
\Mult3|auto_generated|mac_out6~DATAOUT17\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(21);
\Mult3|auto_generated|mac_out6~DATAOUT18\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(22);
\Mult3|auto_generated|mac_out6~DATAOUT19\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(23);
\Mult3|auto_generated|mac_out6~DATAOUT20\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(24);
\Mult3|auto_generated|mac_out6~DATAOUT21\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(25);
\Mult3|auto_generated|mac_out6~DATAOUT22\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(26);
\Mult3|auto_generated|mac_out6~DATAOUT23\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(27);
\Mult3|auto_generated|mac_out6~DATAOUT24\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(28);
\Mult3|auto_generated|mac_out6~DATAOUT25\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(29);
\Mult3|auto_generated|mac_out6~DATAOUT26\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(30);
\Mult3|auto_generated|mac_out6~DATAOUT27\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(31);
\Mult3|auto_generated|mac_out6~DATAOUT28\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(32);
\Mult3|auto_generated|mac_out6~DATAOUT29\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(33);
\Mult3|auto_generated|mac_out6~DATAOUT30\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(34);
\Mult3|auto_generated|mac_out6~DATAOUT31\ <= \Mult3|auto_generated|mac_out6_DATAOUT_bus\(35);

\Mult3|auto_generated|mac_out2_DATAA_bus\ <= (\Mult3|auto_generated|mac_mult1~DATAOUT35\ & \Mult3|auto_generated|mac_mult1~DATAOUT34\ & \Mult3|auto_generated|mac_mult1~DATAOUT33\ & \Mult3|auto_generated|mac_mult1~DATAOUT32\ & 
\Mult3|auto_generated|mac_mult1~DATAOUT31\ & \Mult3|auto_generated|mac_mult1~DATAOUT30\ & \Mult3|auto_generated|mac_mult1~DATAOUT29\ & \Mult3|auto_generated|mac_mult1~DATAOUT28\ & \Mult3|auto_generated|mac_mult1~DATAOUT27\ & 
\Mult3|auto_generated|mac_mult1~DATAOUT26\ & \Mult3|auto_generated|mac_mult1~DATAOUT25\ & \Mult3|auto_generated|mac_mult1~DATAOUT24\ & \Mult3|auto_generated|mac_mult1~DATAOUT23\ & \Mult3|auto_generated|mac_mult1~DATAOUT22\ & 
\Mult3|auto_generated|mac_mult1~DATAOUT21\ & \Mult3|auto_generated|mac_mult1~DATAOUT20\ & \Mult3|auto_generated|mac_mult1~DATAOUT19\ & \Mult3|auto_generated|mac_mult1~DATAOUT18\ & \Mult3|auto_generated|mac_mult1~DATAOUT17\ & 
\Mult3|auto_generated|mac_mult1~DATAOUT16\ & \Mult3|auto_generated|mac_mult1~DATAOUT15\ & \Mult3|auto_generated|mac_mult1~DATAOUT14\ & \Mult3|auto_generated|mac_mult1~DATAOUT13\ & \Mult3|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult3|auto_generated|mac_mult1~DATAOUT11\ & \Mult3|auto_generated|mac_mult1~DATAOUT10\ & \Mult3|auto_generated|mac_mult1~DATAOUT9\ & \Mult3|auto_generated|mac_mult1~DATAOUT8\ & \Mult3|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult3|auto_generated|mac_mult1~DATAOUT6\ & \Mult3|auto_generated|mac_mult1~DATAOUT5\ & \Mult3|auto_generated|mac_mult1~DATAOUT4\ & \Mult3|auto_generated|mac_mult1~DATAOUT3\ & \Mult3|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult3|auto_generated|mac_mult1~DATAOUT1\ & \Mult3|auto_generated|mac_mult1~dataout\);

\Mult3|auto_generated|w569w\(0) <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult3|auto_generated|w569w\(1) <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult3|auto_generated|w569w\(2) <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult3|auto_generated|w569w\(3) <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult3|auto_generated|w569w\(4) <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult3|auto_generated|w569w\(5) <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult3|auto_generated|w569w\(6) <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult3|auto_generated|w569w\(7) <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult3|auto_generated|w569w\(8) <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult3|auto_generated|w569w\(9) <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult3|auto_generated|w569w\(10) <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult3|auto_generated|w569w\(11) <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult3|auto_generated|w569w\(12) <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult3|auto_generated|w569w\(13) <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult3|auto_generated|w569w\(14) <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult3|auto_generated|w569w\(15) <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult3|auto_generated|w569w\(16) <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult3|auto_generated|w569w\(17) <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult3|auto_generated|mac_out2~DATAOUT18\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult3|auto_generated|mac_out2~DATAOUT19\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult3|auto_generated|mac_out2~DATAOUT20\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult3|auto_generated|mac_out2~DATAOUT21\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult3|auto_generated|mac_out2~DATAOUT22\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult3|auto_generated|mac_out2~DATAOUT23\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult3|auto_generated|mac_out2~DATAOUT24\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult3|auto_generated|mac_out2~DATAOUT25\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult3|auto_generated|mac_out2~DATAOUT26\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult3|auto_generated|mac_out2~DATAOUT27\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult3|auto_generated|mac_out2~DATAOUT28\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult3|auto_generated|mac_out2~DATAOUT29\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult3|auto_generated|mac_out2~DATAOUT30\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult3|auto_generated|mac_out2~DATAOUT31\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult3|auto_generated|mac_out2~DATAOUT32\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult3|auto_generated|mac_out2~DATAOUT33\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult3|auto_generated|mac_out2~DATAOUT34\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult3|auto_generated|mac_out2~DATAOUT35\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult2|auto_generated|mac_out4_DATAA_bus\ <= (\Mult2|auto_generated|mac_mult3~DATAOUT31\ & \Mult2|auto_generated|mac_mult3~DATAOUT30\ & \Mult2|auto_generated|mac_mult3~DATAOUT29\ & \Mult2|auto_generated|mac_mult3~DATAOUT28\ & 
\Mult2|auto_generated|mac_mult3~DATAOUT27\ & \Mult2|auto_generated|mac_mult3~DATAOUT26\ & \Mult2|auto_generated|mac_mult3~DATAOUT25\ & \Mult2|auto_generated|mac_mult3~DATAOUT24\ & \Mult2|auto_generated|mac_mult3~DATAOUT23\ & 
\Mult2|auto_generated|mac_mult3~DATAOUT22\ & \Mult2|auto_generated|mac_mult3~DATAOUT21\ & \Mult2|auto_generated|mac_mult3~DATAOUT20\ & \Mult2|auto_generated|mac_mult3~DATAOUT19\ & \Mult2|auto_generated|mac_mult3~DATAOUT18\ & 
\Mult2|auto_generated|mac_mult3~DATAOUT17\ & \Mult2|auto_generated|mac_mult3~DATAOUT16\ & \Mult2|auto_generated|mac_mult3~DATAOUT15\ & \Mult2|auto_generated|mac_mult3~DATAOUT14\ & \Mult2|auto_generated|mac_mult3~DATAOUT13\ & 
\Mult2|auto_generated|mac_mult3~DATAOUT12\ & \Mult2|auto_generated|mac_mult3~DATAOUT11\ & \Mult2|auto_generated|mac_mult3~DATAOUT10\ & \Mult2|auto_generated|mac_mult3~DATAOUT9\ & \Mult2|auto_generated|mac_mult3~DATAOUT8\ & 
\Mult2|auto_generated|mac_mult3~DATAOUT7\ & \Mult2|auto_generated|mac_mult3~DATAOUT6\ & \Mult2|auto_generated|mac_mult3~DATAOUT5\ & \Mult2|auto_generated|mac_mult3~DATAOUT4\ & \Mult2|auto_generated|mac_mult3~DATAOUT3\ & 
\Mult2|auto_generated|mac_mult3~DATAOUT2\ & \Mult2|auto_generated|mac_mult3~DATAOUT1\ & \Mult2|auto_generated|mac_mult3~dataout\ & \Mult2|auto_generated|mac_mult3~3\ & \Mult2|auto_generated|mac_mult3~2\ & \Mult2|auto_generated|mac_mult3~1\ & 
\Mult2|auto_generated|mac_mult3~0\);

\Mult2|auto_generated|mac_out4~0\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(0);
\Mult2|auto_generated|mac_out4~1\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(1);
\Mult2|auto_generated|mac_out4~2\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(2);
\Mult2|auto_generated|mac_out4~3\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(3);
\Mult2|auto_generated|mac_out4~dataout\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(4);
\Mult2|auto_generated|mac_out4~DATAOUT1\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(5);
\Mult2|auto_generated|mac_out4~DATAOUT2\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(6);
\Mult2|auto_generated|mac_out4~DATAOUT3\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(7);
\Mult2|auto_generated|mac_out4~DATAOUT4\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(8);
\Mult2|auto_generated|mac_out4~DATAOUT5\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(9);
\Mult2|auto_generated|mac_out4~DATAOUT6\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(10);
\Mult2|auto_generated|mac_out4~DATAOUT7\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(11);
\Mult2|auto_generated|mac_out4~DATAOUT8\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(12);
\Mult2|auto_generated|mac_out4~DATAOUT9\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(13);
\Mult2|auto_generated|mac_out4~DATAOUT10\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(14);
\Mult2|auto_generated|mac_out4~DATAOUT11\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(15);
\Mult2|auto_generated|mac_out4~DATAOUT12\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(16);
\Mult2|auto_generated|mac_out4~DATAOUT13\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(17);
\Mult2|auto_generated|mac_out4~DATAOUT14\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(18);
\Mult2|auto_generated|mac_out4~DATAOUT15\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(19);
\Mult2|auto_generated|mac_out4~DATAOUT16\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(20);
\Mult2|auto_generated|mac_out4~DATAOUT17\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(21);
\Mult2|auto_generated|mac_out4~DATAOUT18\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(22);
\Mult2|auto_generated|mac_out4~DATAOUT19\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(23);
\Mult2|auto_generated|mac_out4~DATAOUT20\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(24);
\Mult2|auto_generated|mac_out4~DATAOUT21\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(25);
\Mult2|auto_generated|mac_out4~DATAOUT22\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(26);
\Mult2|auto_generated|mac_out4~DATAOUT23\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(27);
\Mult2|auto_generated|mac_out4~DATAOUT24\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(28);
\Mult2|auto_generated|mac_out4~DATAOUT25\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(29);
\Mult2|auto_generated|mac_out4~DATAOUT26\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(30);
\Mult2|auto_generated|mac_out4~DATAOUT27\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(31);
\Mult2|auto_generated|mac_out4~DATAOUT28\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(32);
\Mult2|auto_generated|mac_out4~DATAOUT29\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(33);
\Mult2|auto_generated|mac_out4~DATAOUT30\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(34);
\Mult2|auto_generated|mac_out4~DATAOUT31\ <= \Mult2|auto_generated|mac_out4_DATAOUT_bus\(35);

\Mult2|auto_generated|mac_out6_DATAA_bus\ <= (\Mult2|auto_generated|mac_mult5~DATAOUT31\ & \Mult2|auto_generated|mac_mult5~DATAOUT30\ & \Mult2|auto_generated|mac_mult5~DATAOUT29\ & \Mult2|auto_generated|mac_mult5~DATAOUT28\ & 
\Mult2|auto_generated|mac_mult5~DATAOUT27\ & \Mult2|auto_generated|mac_mult5~DATAOUT26\ & \Mult2|auto_generated|mac_mult5~DATAOUT25\ & \Mult2|auto_generated|mac_mult5~DATAOUT24\ & \Mult2|auto_generated|mac_mult5~DATAOUT23\ & 
\Mult2|auto_generated|mac_mult5~DATAOUT22\ & \Mult2|auto_generated|mac_mult5~DATAOUT21\ & \Mult2|auto_generated|mac_mult5~DATAOUT20\ & \Mult2|auto_generated|mac_mult5~DATAOUT19\ & \Mult2|auto_generated|mac_mult5~DATAOUT18\ & 
\Mult2|auto_generated|mac_mult5~DATAOUT17\ & \Mult2|auto_generated|mac_mult5~DATAOUT16\ & \Mult2|auto_generated|mac_mult5~DATAOUT15\ & \Mult2|auto_generated|mac_mult5~DATAOUT14\ & \Mult2|auto_generated|mac_mult5~DATAOUT13\ & 
\Mult2|auto_generated|mac_mult5~DATAOUT12\ & \Mult2|auto_generated|mac_mult5~DATAOUT11\ & \Mult2|auto_generated|mac_mult5~DATAOUT10\ & \Mult2|auto_generated|mac_mult5~DATAOUT9\ & \Mult2|auto_generated|mac_mult5~DATAOUT8\ & 
\Mult2|auto_generated|mac_mult5~DATAOUT7\ & \Mult2|auto_generated|mac_mult5~DATAOUT6\ & \Mult2|auto_generated|mac_mult5~DATAOUT5\ & \Mult2|auto_generated|mac_mult5~DATAOUT4\ & \Mult2|auto_generated|mac_mult5~DATAOUT3\ & 
\Mult2|auto_generated|mac_mult5~DATAOUT2\ & \Mult2|auto_generated|mac_mult5~DATAOUT1\ & \Mult2|auto_generated|mac_mult5~dataout\ & \Mult2|auto_generated|mac_mult5~3\ & \Mult2|auto_generated|mac_mult5~2\ & \Mult2|auto_generated|mac_mult5~1\ & 
\Mult2|auto_generated|mac_mult5~0\);

\Mult2|auto_generated|mac_out6~0\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(0);
\Mult2|auto_generated|mac_out6~1\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(1);
\Mult2|auto_generated|mac_out6~2\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(2);
\Mult2|auto_generated|mac_out6~3\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(3);
\Mult2|auto_generated|mac_out6~dataout\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(4);
\Mult2|auto_generated|mac_out6~DATAOUT1\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(5);
\Mult2|auto_generated|mac_out6~DATAOUT2\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(6);
\Mult2|auto_generated|mac_out6~DATAOUT3\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(7);
\Mult2|auto_generated|mac_out6~DATAOUT4\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(8);
\Mult2|auto_generated|mac_out6~DATAOUT5\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(9);
\Mult2|auto_generated|mac_out6~DATAOUT6\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(10);
\Mult2|auto_generated|mac_out6~DATAOUT7\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(11);
\Mult2|auto_generated|mac_out6~DATAOUT8\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(12);
\Mult2|auto_generated|mac_out6~DATAOUT9\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(13);
\Mult2|auto_generated|mac_out6~DATAOUT10\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(14);
\Mult2|auto_generated|mac_out6~DATAOUT11\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(15);
\Mult2|auto_generated|mac_out6~DATAOUT12\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(16);
\Mult2|auto_generated|mac_out6~DATAOUT13\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(17);
\Mult2|auto_generated|mac_out6~DATAOUT14\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(18);
\Mult2|auto_generated|mac_out6~DATAOUT15\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(19);
\Mult2|auto_generated|mac_out6~DATAOUT16\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(20);
\Mult2|auto_generated|mac_out6~DATAOUT17\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(21);
\Mult2|auto_generated|mac_out6~DATAOUT18\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(22);
\Mult2|auto_generated|mac_out6~DATAOUT19\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(23);
\Mult2|auto_generated|mac_out6~DATAOUT20\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(24);
\Mult2|auto_generated|mac_out6~DATAOUT21\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(25);
\Mult2|auto_generated|mac_out6~DATAOUT22\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(26);
\Mult2|auto_generated|mac_out6~DATAOUT23\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(27);
\Mult2|auto_generated|mac_out6~DATAOUT24\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(28);
\Mult2|auto_generated|mac_out6~DATAOUT25\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(29);
\Mult2|auto_generated|mac_out6~DATAOUT26\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(30);
\Mult2|auto_generated|mac_out6~DATAOUT27\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(31);
\Mult2|auto_generated|mac_out6~DATAOUT28\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(32);
\Mult2|auto_generated|mac_out6~DATAOUT29\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(33);
\Mult2|auto_generated|mac_out6~DATAOUT30\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(34);
\Mult2|auto_generated|mac_out6~DATAOUT31\ <= \Mult2|auto_generated|mac_out6_DATAOUT_bus\(35);

\Mult2|auto_generated|mac_out2_DATAA_bus\ <= (\Mult2|auto_generated|mac_mult1~DATAOUT35\ & \Mult2|auto_generated|mac_mult1~DATAOUT34\ & \Mult2|auto_generated|mac_mult1~DATAOUT33\ & \Mult2|auto_generated|mac_mult1~DATAOUT32\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT31\ & \Mult2|auto_generated|mac_mult1~DATAOUT30\ & \Mult2|auto_generated|mac_mult1~DATAOUT29\ & \Mult2|auto_generated|mac_mult1~DATAOUT28\ & \Mult2|auto_generated|mac_mult1~DATAOUT27\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT26\ & \Mult2|auto_generated|mac_mult1~DATAOUT25\ & \Mult2|auto_generated|mac_mult1~DATAOUT24\ & \Mult2|auto_generated|mac_mult1~DATAOUT23\ & \Mult2|auto_generated|mac_mult1~DATAOUT22\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT21\ & \Mult2|auto_generated|mac_mult1~DATAOUT20\ & \Mult2|auto_generated|mac_mult1~DATAOUT19\ & \Mult2|auto_generated|mac_mult1~DATAOUT18\ & \Mult2|auto_generated|mac_mult1~DATAOUT17\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT16\ & \Mult2|auto_generated|mac_mult1~DATAOUT15\ & \Mult2|auto_generated|mac_mult1~DATAOUT14\ & \Mult2|auto_generated|mac_mult1~DATAOUT13\ & \Mult2|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT11\ & \Mult2|auto_generated|mac_mult1~DATAOUT10\ & \Mult2|auto_generated|mac_mult1~DATAOUT9\ & \Mult2|auto_generated|mac_mult1~DATAOUT8\ & \Mult2|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT6\ & \Mult2|auto_generated|mac_mult1~DATAOUT5\ & \Mult2|auto_generated|mac_mult1~DATAOUT4\ & \Mult2|auto_generated|mac_mult1~DATAOUT3\ & \Mult2|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT1\ & \Mult2|auto_generated|mac_mult1~dataout\);

\Mult2|auto_generated|w569w\(0) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult2|auto_generated|w569w\(1) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult2|auto_generated|w569w\(2) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult2|auto_generated|w569w\(3) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult2|auto_generated|w569w\(4) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult2|auto_generated|w569w\(5) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult2|auto_generated|w569w\(6) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult2|auto_generated|w569w\(7) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult2|auto_generated|w569w\(8) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult2|auto_generated|w569w\(9) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult2|auto_generated|w569w\(10) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult2|auto_generated|w569w\(11) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult2|auto_generated|w569w\(12) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult2|auto_generated|w569w\(13) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult2|auto_generated|w569w\(14) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult2|auto_generated|w569w\(15) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult2|auto_generated|w569w\(16) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult2|auto_generated|w569w\(17) <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult2|auto_generated|mac_out2~DATAOUT18\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult2|auto_generated|mac_out2~DATAOUT19\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult2|auto_generated|mac_out2~DATAOUT20\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult2|auto_generated|mac_out2~DATAOUT21\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult2|auto_generated|mac_out2~DATAOUT22\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult2|auto_generated|mac_out2~DATAOUT23\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult2|auto_generated|mac_out2~DATAOUT24\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult2|auto_generated|mac_out2~DATAOUT25\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult2|auto_generated|mac_out2~DATAOUT26\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult2|auto_generated|mac_out2~DATAOUT27\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult2|auto_generated|mac_out2~DATAOUT28\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult2|auto_generated|mac_out2~DATAOUT29\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult2|auto_generated|mac_out2~DATAOUT30\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult2|auto_generated|mac_out2~DATAOUT31\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult2|auto_generated|mac_out2~DATAOUT32\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult2|auto_generated|mac_out2~DATAOUT33\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult2|auto_generated|mac_out2~DATAOUT34\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult2|auto_generated|mac_out2~DATAOUT35\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult5|auto_generated|mac_mult3_DATAA_bus\ <= (\Add8~30_combout\ & \Add8~28_combout\ & \Add8~26_combout\ & \Add8~24_combout\ & \Add8~22_combout\ & \Add8~20_combout\ & \Add8~18_combout\ & \Add8~16_combout\ & \Add8~14_combout\ & \Add8~12_combout\ & 
\Add8~10_combout\ & \Add8~8_combout\ & \Add8~6_combout\ & \Add8~4_combout\ & \Add8~2_combout\ & \Add8~0_combout\ & vPos(1) & vPos(0));

\Mult5|auto_generated|mac_mult3_DATAB_bus\ <= (\Add8~58_combout\ & \Add8~56_combout\ & \Add8~54_combout\ & \Add8~52_combout\ & \Add8~50_combout\ & \Add8~48_combout\ & \Add8~46_combout\ & \Add8~44_combout\ & \Add8~42_combout\ & \Add8~40_combout\ & 
\Add8~38_combout\ & \Add8~36_combout\ & \Add8~34_combout\ & \Add8~32_combout\ & gnd & gnd & gnd & gnd);

\Mult5|auto_generated|mac_mult3~0\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(0);
\Mult5|auto_generated|mac_mult3~1\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(1);
\Mult5|auto_generated|mac_mult3~2\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(2);
\Mult5|auto_generated|mac_mult3~3\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(3);
\Mult5|auto_generated|mac_mult3~dataout\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(4);
\Mult5|auto_generated|mac_mult3~DATAOUT1\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(5);
\Mult5|auto_generated|mac_mult3~DATAOUT2\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(6);
\Mult5|auto_generated|mac_mult3~DATAOUT3\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(7);
\Mult5|auto_generated|mac_mult3~DATAOUT4\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(8);
\Mult5|auto_generated|mac_mult3~DATAOUT5\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(9);
\Mult5|auto_generated|mac_mult3~DATAOUT6\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(10);
\Mult5|auto_generated|mac_mult3~DATAOUT7\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(11);
\Mult5|auto_generated|mac_mult3~DATAOUT8\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(12);
\Mult5|auto_generated|mac_mult3~DATAOUT9\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(13);
\Mult5|auto_generated|mac_mult3~DATAOUT10\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(14);
\Mult5|auto_generated|mac_mult3~DATAOUT11\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(15);
\Mult5|auto_generated|mac_mult3~DATAOUT12\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(16);
\Mult5|auto_generated|mac_mult3~DATAOUT13\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(17);
\Mult5|auto_generated|mac_mult3~DATAOUT14\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(18);
\Mult5|auto_generated|mac_mult3~DATAOUT15\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(19);
\Mult5|auto_generated|mac_mult3~DATAOUT16\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(20);
\Mult5|auto_generated|mac_mult3~DATAOUT17\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(21);
\Mult5|auto_generated|mac_mult3~DATAOUT18\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(22);
\Mult5|auto_generated|mac_mult3~DATAOUT19\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(23);
\Mult5|auto_generated|mac_mult3~DATAOUT20\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(24);
\Mult5|auto_generated|mac_mult3~DATAOUT21\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(25);
\Mult5|auto_generated|mac_mult3~DATAOUT22\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(26);
\Mult5|auto_generated|mac_mult3~DATAOUT23\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(27);
\Mult5|auto_generated|mac_mult3~DATAOUT24\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(28);
\Mult5|auto_generated|mac_mult3~DATAOUT25\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(29);
\Mult5|auto_generated|mac_mult3~DATAOUT26\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(30);
\Mult5|auto_generated|mac_mult3~DATAOUT27\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(31);
\Mult5|auto_generated|mac_mult3~DATAOUT28\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(32);
\Mult5|auto_generated|mac_mult3~DATAOUT29\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(33);
\Mult5|auto_generated|mac_mult3~DATAOUT30\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(34);
\Mult5|auto_generated|mac_mult3~DATAOUT31\ <= \Mult5|auto_generated|mac_mult3_DATAOUT_bus\(35);

\Mult5|auto_generated|mac_mult5_DATAA_bus\ <= (\Add8~30_combout\ & \Add8~28_combout\ & \Add8~26_combout\ & \Add8~24_combout\ & \Add8~22_combout\ & \Add8~20_combout\ & \Add8~18_combout\ & \Add8~16_combout\ & \Add8~14_combout\ & \Add8~12_combout\ & 
\Add8~10_combout\ & \Add8~8_combout\ & \Add8~6_combout\ & \Add8~4_combout\ & \Add8~2_combout\ & \Add8~0_combout\ & vPos(1) & vPos(0));

\Mult5|auto_generated|mac_mult5_DATAB_bus\ <= (\Add8~58_combout\ & \Add8~56_combout\ & \Add8~54_combout\ & \Add8~52_combout\ & \Add8~50_combout\ & \Add8~48_combout\ & \Add8~46_combout\ & \Add8~44_combout\ & \Add8~42_combout\ & \Add8~40_combout\ & 
\Add8~38_combout\ & \Add8~36_combout\ & \Add8~34_combout\ & \Add8~32_combout\ & gnd & gnd & gnd & gnd);

\Mult5|auto_generated|mac_mult5~0\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(0);
\Mult5|auto_generated|mac_mult5~1\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(1);
\Mult5|auto_generated|mac_mult5~2\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(2);
\Mult5|auto_generated|mac_mult5~3\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(3);
\Mult5|auto_generated|mac_mult5~dataout\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(4);
\Mult5|auto_generated|mac_mult5~DATAOUT1\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(5);
\Mult5|auto_generated|mac_mult5~DATAOUT2\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(6);
\Mult5|auto_generated|mac_mult5~DATAOUT3\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(7);
\Mult5|auto_generated|mac_mult5~DATAOUT4\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(8);
\Mult5|auto_generated|mac_mult5~DATAOUT5\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(9);
\Mult5|auto_generated|mac_mult5~DATAOUT6\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(10);
\Mult5|auto_generated|mac_mult5~DATAOUT7\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(11);
\Mult5|auto_generated|mac_mult5~DATAOUT8\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(12);
\Mult5|auto_generated|mac_mult5~DATAOUT9\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(13);
\Mult5|auto_generated|mac_mult5~DATAOUT10\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(14);
\Mult5|auto_generated|mac_mult5~DATAOUT11\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(15);
\Mult5|auto_generated|mac_mult5~DATAOUT12\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(16);
\Mult5|auto_generated|mac_mult5~DATAOUT13\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(17);
\Mult5|auto_generated|mac_mult5~DATAOUT14\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(18);
\Mult5|auto_generated|mac_mult5~DATAOUT15\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(19);
\Mult5|auto_generated|mac_mult5~DATAOUT16\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(20);
\Mult5|auto_generated|mac_mult5~DATAOUT17\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(21);
\Mult5|auto_generated|mac_mult5~DATAOUT18\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(22);
\Mult5|auto_generated|mac_mult5~DATAOUT19\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(23);
\Mult5|auto_generated|mac_mult5~DATAOUT20\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(24);
\Mult5|auto_generated|mac_mult5~DATAOUT21\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(25);
\Mult5|auto_generated|mac_mult5~DATAOUT22\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(26);
\Mult5|auto_generated|mac_mult5~DATAOUT23\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(27);
\Mult5|auto_generated|mac_mult5~DATAOUT24\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(28);
\Mult5|auto_generated|mac_mult5~DATAOUT25\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(29);
\Mult5|auto_generated|mac_mult5~DATAOUT26\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(30);
\Mult5|auto_generated|mac_mult5~DATAOUT27\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(31);
\Mult5|auto_generated|mac_mult5~DATAOUT28\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(32);
\Mult5|auto_generated|mac_mult5~DATAOUT29\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(33);
\Mult5|auto_generated|mac_mult5~DATAOUT30\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(34);
\Mult5|auto_generated|mac_mult5~DATAOUT31\ <= \Mult5|auto_generated|mac_mult5_DATAOUT_bus\(35);

\Mult5|auto_generated|mac_mult1_DATAA_bus\ <= (\Add8~30_combout\ & \Add8~28_combout\ & \Add8~26_combout\ & \Add8~24_combout\ & \Add8~22_combout\ & \Add8~20_combout\ & \Add8~18_combout\ & \Add8~16_combout\ & \Add8~14_combout\ & \Add8~12_combout\ & 
\Add8~10_combout\ & \Add8~8_combout\ & \Add8~6_combout\ & \Add8~4_combout\ & \Add8~2_combout\ & \Add8~0_combout\ & vPos(1) & vPos(0));

\Mult5|auto_generated|mac_mult1_DATAB_bus\ <= (\Add8~30_combout\ & \Add8~28_combout\ & \Add8~26_combout\ & \Add8~24_combout\ & \Add8~22_combout\ & \Add8~20_combout\ & \Add8~18_combout\ & \Add8~16_combout\ & \Add8~14_combout\ & \Add8~12_combout\ & 
\Add8~10_combout\ & \Add8~8_combout\ & \Add8~6_combout\ & \Add8~4_combout\ & \Add8~2_combout\ & \Add8~0_combout\ & vPos(1) & vPos(0));

\Mult5|auto_generated|mac_mult1~dataout\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult5|auto_generated|mac_mult1~DATAOUT1\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult5|auto_generated|mac_mult1~DATAOUT2\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult5|auto_generated|mac_mult1~DATAOUT3\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult5|auto_generated|mac_mult1~DATAOUT4\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult5|auto_generated|mac_mult1~DATAOUT5\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult5|auto_generated|mac_mult1~DATAOUT6\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult5|auto_generated|mac_mult1~DATAOUT7\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult5|auto_generated|mac_mult1~DATAOUT8\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult5|auto_generated|mac_mult1~DATAOUT9\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult5|auto_generated|mac_mult1~DATAOUT10\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult5|auto_generated|mac_mult1~DATAOUT11\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult5|auto_generated|mac_mult1~DATAOUT12\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult5|auto_generated|mac_mult1~DATAOUT13\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult5|auto_generated|mac_mult1~DATAOUT14\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult5|auto_generated|mac_mult1~DATAOUT15\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult5|auto_generated|mac_mult1~DATAOUT16\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult5|auto_generated|mac_mult1~DATAOUT17\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult5|auto_generated|mac_mult1~DATAOUT18\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult5|auto_generated|mac_mult1~DATAOUT19\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult5|auto_generated|mac_mult1~DATAOUT20\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult5|auto_generated|mac_mult1~DATAOUT21\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult5|auto_generated|mac_mult1~DATAOUT22\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult5|auto_generated|mac_mult1~DATAOUT23\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult5|auto_generated|mac_mult1~DATAOUT24\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult5|auto_generated|mac_mult1~DATAOUT25\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult5|auto_generated|mac_mult1~DATAOUT26\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult5|auto_generated|mac_mult1~DATAOUT27\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult5|auto_generated|mac_mult1~DATAOUT28\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult5|auto_generated|mac_mult1~DATAOUT29\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult5|auto_generated|mac_mult1~DATAOUT30\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult5|auto_generated|mac_mult1~DATAOUT31\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult5|auto_generated|mac_mult1~DATAOUT32\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult5|auto_generated|mac_mult1~DATAOUT33\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult5|auto_generated|mac_mult1~DATAOUT34\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult5|auto_generated|mac_mult1~DATAOUT35\ <= \Mult5|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Mult4|auto_generated|mac_mult3_DATAA_bus\ <= (\Add7~32_combout\ & \Add7~30_combout\ & \Add7~28_combout\ & \Add7~26_combout\ & \Add7~24_combout\ & \Add7~22_combout\ & \Add7~20_combout\ & \Add7~18_combout\ & \Add7~16_combout\ & \Add7~14_combout\ & 
\Add7~12_combout\ & \Add7~10_combout\ & \Add7~8_combout\ & \Add7~6_combout\ & \Add7~4_combout\ & \Add7~2_combout\ & \Add7~0_combout\ & hPos(0));

\Mult4|auto_generated|mac_mult3_DATAB_bus\ <= (\Add7~60_combout\ & \Add7~58_combout\ & \Add7~56_combout\ & \Add7~54_combout\ & \Add7~52_combout\ & \Add7~50_combout\ & \Add7~48_combout\ & \Add7~46_combout\ & \Add7~44_combout\ & \Add7~42_combout\ & 
\Add7~40_combout\ & \Add7~38_combout\ & \Add7~36_combout\ & \Add7~34_combout\ & gnd & gnd & gnd & gnd);

\Mult4|auto_generated|mac_mult3~0\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(0);
\Mult4|auto_generated|mac_mult3~1\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(1);
\Mult4|auto_generated|mac_mult3~2\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(2);
\Mult4|auto_generated|mac_mult3~3\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(3);
\Mult4|auto_generated|mac_mult3~dataout\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(4);
\Mult4|auto_generated|mac_mult3~DATAOUT1\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(5);
\Mult4|auto_generated|mac_mult3~DATAOUT2\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(6);
\Mult4|auto_generated|mac_mult3~DATAOUT3\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(7);
\Mult4|auto_generated|mac_mult3~DATAOUT4\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(8);
\Mult4|auto_generated|mac_mult3~DATAOUT5\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(9);
\Mult4|auto_generated|mac_mult3~DATAOUT6\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(10);
\Mult4|auto_generated|mac_mult3~DATAOUT7\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(11);
\Mult4|auto_generated|mac_mult3~DATAOUT8\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(12);
\Mult4|auto_generated|mac_mult3~DATAOUT9\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(13);
\Mult4|auto_generated|mac_mult3~DATAOUT10\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(14);
\Mult4|auto_generated|mac_mult3~DATAOUT11\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(15);
\Mult4|auto_generated|mac_mult3~DATAOUT12\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(16);
\Mult4|auto_generated|mac_mult3~DATAOUT13\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(17);
\Mult4|auto_generated|mac_mult3~DATAOUT14\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(18);
\Mult4|auto_generated|mac_mult3~DATAOUT15\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(19);
\Mult4|auto_generated|mac_mult3~DATAOUT16\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(20);
\Mult4|auto_generated|mac_mult3~DATAOUT17\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(21);
\Mult4|auto_generated|mac_mult3~DATAOUT18\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(22);
\Mult4|auto_generated|mac_mult3~DATAOUT19\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(23);
\Mult4|auto_generated|mac_mult3~DATAOUT20\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(24);
\Mult4|auto_generated|mac_mult3~DATAOUT21\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(25);
\Mult4|auto_generated|mac_mult3~DATAOUT22\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(26);
\Mult4|auto_generated|mac_mult3~DATAOUT23\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(27);
\Mult4|auto_generated|mac_mult3~DATAOUT24\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(28);
\Mult4|auto_generated|mac_mult3~DATAOUT25\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(29);
\Mult4|auto_generated|mac_mult3~DATAOUT26\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(30);
\Mult4|auto_generated|mac_mult3~DATAOUT27\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(31);
\Mult4|auto_generated|mac_mult3~DATAOUT28\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(32);
\Mult4|auto_generated|mac_mult3~DATAOUT29\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(33);
\Mult4|auto_generated|mac_mult3~DATAOUT30\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(34);
\Mult4|auto_generated|mac_mult3~DATAOUT31\ <= \Mult4|auto_generated|mac_mult3_DATAOUT_bus\(35);

\Mult4|auto_generated|mac_mult5_DATAA_bus\ <= (\Add7~32_combout\ & \Add7~30_combout\ & \Add7~28_combout\ & \Add7~26_combout\ & \Add7~24_combout\ & \Add7~22_combout\ & \Add7~20_combout\ & \Add7~18_combout\ & \Add7~16_combout\ & \Add7~14_combout\ & 
\Add7~12_combout\ & \Add7~10_combout\ & \Add7~8_combout\ & \Add7~6_combout\ & \Add7~4_combout\ & \Add7~2_combout\ & \Add7~0_combout\ & hPos(0));

\Mult4|auto_generated|mac_mult5_DATAB_bus\ <= (\Add7~60_combout\ & \Add7~58_combout\ & \Add7~56_combout\ & \Add7~54_combout\ & \Add7~52_combout\ & \Add7~50_combout\ & \Add7~48_combout\ & \Add7~46_combout\ & \Add7~44_combout\ & \Add7~42_combout\ & 
\Add7~40_combout\ & \Add7~38_combout\ & \Add7~36_combout\ & \Add7~34_combout\ & gnd & gnd & gnd & gnd);

\Mult4|auto_generated|mac_mult5~0\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(0);
\Mult4|auto_generated|mac_mult5~1\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(1);
\Mult4|auto_generated|mac_mult5~2\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(2);
\Mult4|auto_generated|mac_mult5~3\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(3);
\Mult4|auto_generated|mac_mult5~dataout\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(4);
\Mult4|auto_generated|mac_mult5~DATAOUT1\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(5);
\Mult4|auto_generated|mac_mult5~DATAOUT2\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(6);
\Mult4|auto_generated|mac_mult5~DATAOUT3\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(7);
\Mult4|auto_generated|mac_mult5~DATAOUT4\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(8);
\Mult4|auto_generated|mac_mult5~DATAOUT5\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(9);
\Mult4|auto_generated|mac_mult5~DATAOUT6\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(10);
\Mult4|auto_generated|mac_mult5~DATAOUT7\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(11);
\Mult4|auto_generated|mac_mult5~DATAOUT8\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(12);
\Mult4|auto_generated|mac_mult5~DATAOUT9\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(13);
\Mult4|auto_generated|mac_mult5~DATAOUT10\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(14);
\Mult4|auto_generated|mac_mult5~DATAOUT11\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(15);
\Mult4|auto_generated|mac_mult5~DATAOUT12\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(16);
\Mult4|auto_generated|mac_mult5~DATAOUT13\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(17);
\Mult4|auto_generated|mac_mult5~DATAOUT14\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(18);
\Mult4|auto_generated|mac_mult5~DATAOUT15\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(19);
\Mult4|auto_generated|mac_mult5~DATAOUT16\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(20);
\Mult4|auto_generated|mac_mult5~DATAOUT17\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(21);
\Mult4|auto_generated|mac_mult5~DATAOUT18\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(22);
\Mult4|auto_generated|mac_mult5~DATAOUT19\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(23);
\Mult4|auto_generated|mac_mult5~DATAOUT20\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(24);
\Mult4|auto_generated|mac_mult5~DATAOUT21\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(25);
\Mult4|auto_generated|mac_mult5~DATAOUT22\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(26);
\Mult4|auto_generated|mac_mult5~DATAOUT23\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(27);
\Mult4|auto_generated|mac_mult5~DATAOUT24\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(28);
\Mult4|auto_generated|mac_mult5~DATAOUT25\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(29);
\Mult4|auto_generated|mac_mult5~DATAOUT26\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(30);
\Mult4|auto_generated|mac_mult5~DATAOUT27\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(31);
\Mult4|auto_generated|mac_mult5~DATAOUT28\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(32);
\Mult4|auto_generated|mac_mult5~DATAOUT29\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(33);
\Mult4|auto_generated|mac_mult5~DATAOUT30\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(34);
\Mult4|auto_generated|mac_mult5~DATAOUT31\ <= \Mult4|auto_generated|mac_mult5_DATAOUT_bus\(35);

\Mult4|auto_generated|mac_mult1_DATAA_bus\ <= (\Add7~32_combout\ & \Add7~30_combout\ & \Add7~28_combout\ & \Add7~26_combout\ & \Add7~24_combout\ & \Add7~22_combout\ & \Add7~20_combout\ & \Add7~18_combout\ & \Add7~16_combout\ & \Add7~14_combout\ & 
\Add7~12_combout\ & \Add7~10_combout\ & \Add7~8_combout\ & \Add7~6_combout\ & \Add7~4_combout\ & \Add7~2_combout\ & \Add7~0_combout\ & hPos(0));

\Mult4|auto_generated|mac_mult1_DATAB_bus\ <= (\Add7~32_combout\ & \Add7~30_combout\ & \Add7~28_combout\ & \Add7~26_combout\ & \Add7~24_combout\ & \Add7~22_combout\ & \Add7~20_combout\ & \Add7~18_combout\ & \Add7~16_combout\ & \Add7~14_combout\ & 
\Add7~12_combout\ & \Add7~10_combout\ & \Add7~8_combout\ & \Add7~6_combout\ & \Add7~4_combout\ & \Add7~2_combout\ & \Add7~0_combout\ & hPos(0));

\Mult4|auto_generated|mac_mult1~dataout\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult4|auto_generated|mac_mult1~DATAOUT1\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult4|auto_generated|mac_mult1~DATAOUT2\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult4|auto_generated|mac_mult1~DATAOUT3\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult4|auto_generated|mac_mult1~DATAOUT4\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult4|auto_generated|mac_mult1~DATAOUT5\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult4|auto_generated|mac_mult1~DATAOUT6\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult4|auto_generated|mac_mult1~DATAOUT7\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult4|auto_generated|mac_mult1~DATAOUT8\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult4|auto_generated|mac_mult1~DATAOUT9\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult4|auto_generated|mac_mult1~DATAOUT10\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult4|auto_generated|mac_mult1~DATAOUT11\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult4|auto_generated|mac_mult1~DATAOUT12\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult4|auto_generated|mac_mult1~DATAOUT13\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult4|auto_generated|mac_mult1~DATAOUT14\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult4|auto_generated|mac_mult1~DATAOUT15\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult4|auto_generated|mac_mult1~DATAOUT16\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult4|auto_generated|mac_mult1~DATAOUT17\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult4|auto_generated|mac_mult1~DATAOUT18\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult4|auto_generated|mac_mult1~DATAOUT19\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult4|auto_generated|mac_mult1~DATAOUT20\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult4|auto_generated|mac_mult1~DATAOUT21\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult4|auto_generated|mac_mult1~DATAOUT22\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult4|auto_generated|mac_mult1~DATAOUT23\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult4|auto_generated|mac_mult1~DATAOUT24\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult4|auto_generated|mac_mult1~DATAOUT25\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult4|auto_generated|mac_mult1~DATAOUT26\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult4|auto_generated|mac_mult1~DATAOUT27\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult4|auto_generated|mac_mult1~DATAOUT28\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult4|auto_generated|mac_mult1~DATAOUT29\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult4|auto_generated|mac_mult1~DATAOUT30\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult4|auto_generated|mac_mult1~DATAOUT31\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult4|auto_generated|mac_mult1~DATAOUT32\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult4|auto_generated|mac_mult1~DATAOUT33\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult4|auto_generated|mac_mult1~DATAOUT34\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult4|auto_generated|mac_mult1~DATAOUT35\ <= \Mult4|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Mult3|auto_generated|mac_mult3_DATAA_bus\ <= (\Add5~32_combout\ & \Add5~30_combout\ & \Add5~28_combout\ & \Add5~26_combout\ & \Add5~24_combout\ & \Add5~22_combout\ & \Add5~20_combout\ & \Add5~18_combout\ & \Add5~16_combout\ & \Add5~14_combout\ & 
\Add5~12_combout\ & \Add5~10_combout\ & \Add5~8_combout\ & \Add5~6_combout\ & \Add5~4_combout\ & \Add5~2_combout\ & \Add5~0_combout\ & vPos(0));

\Mult3|auto_generated|mac_mult3_DATAB_bus\ <= (\Add5~60_combout\ & \Add5~58_combout\ & \Add5~56_combout\ & \Add5~54_combout\ & \Add5~52_combout\ & \Add5~50_combout\ & \Add5~48_combout\ & \Add5~46_combout\ & \Add5~44_combout\ & \Add5~42_combout\ & 
\Add5~40_combout\ & \Add5~38_combout\ & \Add5~36_combout\ & \Add5~34_combout\ & gnd & gnd & gnd & gnd);

\Mult3|auto_generated|mac_mult3~0\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(0);
\Mult3|auto_generated|mac_mult3~1\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(1);
\Mult3|auto_generated|mac_mult3~2\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(2);
\Mult3|auto_generated|mac_mult3~3\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(3);
\Mult3|auto_generated|mac_mult3~dataout\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(4);
\Mult3|auto_generated|mac_mult3~DATAOUT1\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(5);
\Mult3|auto_generated|mac_mult3~DATAOUT2\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(6);
\Mult3|auto_generated|mac_mult3~DATAOUT3\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(7);
\Mult3|auto_generated|mac_mult3~DATAOUT4\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(8);
\Mult3|auto_generated|mac_mult3~DATAOUT5\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(9);
\Mult3|auto_generated|mac_mult3~DATAOUT6\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(10);
\Mult3|auto_generated|mac_mult3~DATAOUT7\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(11);
\Mult3|auto_generated|mac_mult3~DATAOUT8\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(12);
\Mult3|auto_generated|mac_mult3~DATAOUT9\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(13);
\Mult3|auto_generated|mac_mult3~DATAOUT10\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(14);
\Mult3|auto_generated|mac_mult3~DATAOUT11\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(15);
\Mult3|auto_generated|mac_mult3~DATAOUT12\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(16);
\Mult3|auto_generated|mac_mult3~DATAOUT13\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(17);
\Mult3|auto_generated|mac_mult3~DATAOUT14\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(18);
\Mult3|auto_generated|mac_mult3~DATAOUT15\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(19);
\Mult3|auto_generated|mac_mult3~DATAOUT16\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(20);
\Mult3|auto_generated|mac_mult3~DATAOUT17\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(21);
\Mult3|auto_generated|mac_mult3~DATAOUT18\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(22);
\Mult3|auto_generated|mac_mult3~DATAOUT19\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(23);
\Mult3|auto_generated|mac_mult3~DATAOUT20\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(24);
\Mult3|auto_generated|mac_mult3~DATAOUT21\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(25);
\Mult3|auto_generated|mac_mult3~DATAOUT22\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(26);
\Mult3|auto_generated|mac_mult3~DATAOUT23\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(27);
\Mult3|auto_generated|mac_mult3~DATAOUT24\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(28);
\Mult3|auto_generated|mac_mult3~DATAOUT25\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(29);
\Mult3|auto_generated|mac_mult3~DATAOUT26\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(30);
\Mult3|auto_generated|mac_mult3~DATAOUT27\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(31);
\Mult3|auto_generated|mac_mult3~DATAOUT28\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(32);
\Mult3|auto_generated|mac_mult3~DATAOUT29\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(33);
\Mult3|auto_generated|mac_mult3~DATAOUT30\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(34);
\Mult3|auto_generated|mac_mult3~DATAOUT31\ <= \Mult3|auto_generated|mac_mult3_DATAOUT_bus\(35);

\Mult3|auto_generated|mac_mult5_DATAA_bus\ <= (\Add5~32_combout\ & \Add5~30_combout\ & \Add5~28_combout\ & \Add5~26_combout\ & \Add5~24_combout\ & \Add5~22_combout\ & \Add5~20_combout\ & \Add5~18_combout\ & \Add5~16_combout\ & \Add5~14_combout\ & 
\Add5~12_combout\ & \Add5~10_combout\ & \Add5~8_combout\ & \Add5~6_combout\ & \Add5~4_combout\ & \Add5~2_combout\ & \Add5~0_combout\ & vPos(0));

\Mult3|auto_generated|mac_mult5_DATAB_bus\ <= (\Add5~60_combout\ & \Add5~58_combout\ & \Add5~56_combout\ & \Add5~54_combout\ & \Add5~52_combout\ & \Add5~50_combout\ & \Add5~48_combout\ & \Add5~46_combout\ & \Add5~44_combout\ & \Add5~42_combout\ & 
\Add5~40_combout\ & \Add5~38_combout\ & \Add5~36_combout\ & \Add5~34_combout\ & gnd & gnd & gnd & gnd);

\Mult3|auto_generated|mac_mult5~0\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(0);
\Mult3|auto_generated|mac_mult5~1\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(1);
\Mult3|auto_generated|mac_mult5~2\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(2);
\Mult3|auto_generated|mac_mult5~3\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(3);
\Mult3|auto_generated|mac_mult5~dataout\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(4);
\Mult3|auto_generated|mac_mult5~DATAOUT1\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(5);
\Mult3|auto_generated|mac_mult5~DATAOUT2\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(6);
\Mult3|auto_generated|mac_mult5~DATAOUT3\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(7);
\Mult3|auto_generated|mac_mult5~DATAOUT4\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(8);
\Mult3|auto_generated|mac_mult5~DATAOUT5\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(9);
\Mult3|auto_generated|mac_mult5~DATAOUT6\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(10);
\Mult3|auto_generated|mac_mult5~DATAOUT7\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(11);
\Mult3|auto_generated|mac_mult5~DATAOUT8\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(12);
\Mult3|auto_generated|mac_mult5~DATAOUT9\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(13);
\Mult3|auto_generated|mac_mult5~DATAOUT10\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(14);
\Mult3|auto_generated|mac_mult5~DATAOUT11\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(15);
\Mult3|auto_generated|mac_mult5~DATAOUT12\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(16);
\Mult3|auto_generated|mac_mult5~DATAOUT13\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(17);
\Mult3|auto_generated|mac_mult5~DATAOUT14\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(18);
\Mult3|auto_generated|mac_mult5~DATAOUT15\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(19);
\Mult3|auto_generated|mac_mult5~DATAOUT16\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(20);
\Mult3|auto_generated|mac_mult5~DATAOUT17\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(21);
\Mult3|auto_generated|mac_mult5~DATAOUT18\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(22);
\Mult3|auto_generated|mac_mult5~DATAOUT19\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(23);
\Mult3|auto_generated|mac_mult5~DATAOUT20\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(24);
\Mult3|auto_generated|mac_mult5~DATAOUT21\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(25);
\Mult3|auto_generated|mac_mult5~DATAOUT22\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(26);
\Mult3|auto_generated|mac_mult5~DATAOUT23\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(27);
\Mult3|auto_generated|mac_mult5~DATAOUT24\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(28);
\Mult3|auto_generated|mac_mult5~DATAOUT25\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(29);
\Mult3|auto_generated|mac_mult5~DATAOUT26\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(30);
\Mult3|auto_generated|mac_mult5~DATAOUT27\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(31);
\Mult3|auto_generated|mac_mult5~DATAOUT28\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(32);
\Mult3|auto_generated|mac_mult5~DATAOUT29\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(33);
\Mult3|auto_generated|mac_mult5~DATAOUT30\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(34);
\Mult3|auto_generated|mac_mult5~DATAOUT31\ <= \Mult3|auto_generated|mac_mult5_DATAOUT_bus\(35);

\Mult3|auto_generated|mac_mult1_DATAA_bus\ <= (\Add5~32_combout\ & \Add5~30_combout\ & \Add5~28_combout\ & \Add5~26_combout\ & \Add5~24_combout\ & \Add5~22_combout\ & \Add5~20_combout\ & \Add5~18_combout\ & \Add5~16_combout\ & \Add5~14_combout\ & 
\Add5~12_combout\ & \Add5~10_combout\ & \Add5~8_combout\ & \Add5~6_combout\ & \Add5~4_combout\ & \Add5~2_combout\ & \Add5~0_combout\ & vPos(0));

\Mult3|auto_generated|mac_mult1_DATAB_bus\ <= (\Add5~32_combout\ & \Add5~30_combout\ & \Add5~28_combout\ & \Add5~26_combout\ & \Add5~24_combout\ & \Add5~22_combout\ & \Add5~20_combout\ & \Add5~18_combout\ & \Add5~16_combout\ & \Add5~14_combout\ & 
\Add5~12_combout\ & \Add5~10_combout\ & \Add5~8_combout\ & \Add5~6_combout\ & \Add5~4_combout\ & \Add5~2_combout\ & \Add5~0_combout\ & vPos(0));

\Mult3|auto_generated|mac_mult1~dataout\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult3|auto_generated|mac_mult1~DATAOUT1\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult3|auto_generated|mac_mult1~DATAOUT2\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult3|auto_generated|mac_mult1~DATAOUT3\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult3|auto_generated|mac_mult1~DATAOUT4\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult3|auto_generated|mac_mult1~DATAOUT5\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult3|auto_generated|mac_mult1~DATAOUT6\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult3|auto_generated|mac_mult1~DATAOUT7\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult3|auto_generated|mac_mult1~DATAOUT8\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult3|auto_generated|mac_mult1~DATAOUT9\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult3|auto_generated|mac_mult1~DATAOUT10\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult3|auto_generated|mac_mult1~DATAOUT11\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult3|auto_generated|mac_mult1~DATAOUT12\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult3|auto_generated|mac_mult1~DATAOUT13\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult3|auto_generated|mac_mult1~DATAOUT14\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult3|auto_generated|mac_mult1~DATAOUT15\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult3|auto_generated|mac_mult1~DATAOUT16\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult3|auto_generated|mac_mult1~DATAOUT17\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult3|auto_generated|mac_mult1~DATAOUT18\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult3|auto_generated|mac_mult1~DATAOUT19\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult3|auto_generated|mac_mult1~DATAOUT20\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult3|auto_generated|mac_mult1~DATAOUT21\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult3|auto_generated|mac_mult1~DATAOUT22\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult3|auto_generated|mac_mult1~DATAOUT23\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult3|auto_generated|mac_mult1~DATAOUT24\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult3|auto_generated|mac_mult1~DATAOUT25\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult3|auto_generated|mac_mult1~DATAOUT26\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult3|auto_generated|mac_mult1~DATAOUT27\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult3|auto_generated|mac_mult1~DATAOUT28\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult3|auto_generated|mac_mult1~DATAOUT29\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult3|auto_generated|mac_mult1~DATAOUT30\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult3|auto_generated|mac_mult1~DATAOUT31\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult3|auto_generated|mac_mult1~DATAOUT32\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult3|auto_generated|mac_mult1~DATAOUT33\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult3|auto_generated|mac_mult1~DATAOUT34\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult3|auto_generated|mac_mult1~DATAOUT35\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Mult2|auto_generated|mac_mult3_DATAA_bus\ <= (\Add4~32_combout\ & \Add4~30_combout\ & \Add4~28_combout\ & \Add4~26_combout\ & \Add4~24_combout\ & \Add4~22_combout\ & \Add4~20_combout\ & \Add4~18_combout\ & \Add4~16_combout\ & \Add4~14_combout\ & 
\Add4~12_combout\ & \Add4~10_combout\ & \Add4~8_combout\ & \Add4~6_combout\ & \Add4~4_combout\ & \Add4~2_combout\ & \Add4~0_combout\ & hPos(0));

\Mult2|auto_generated|mac_mult3_DATAB_bus\ <= (\Add4~60_combout\ & \Add4~58_combout\ & \Add4~56_combout\ & \Add4~54_combout\ & \Add4~52_combout\ & \Add4~50_combout\ & \Add4~48_combout\ & \Add4~46_combout\ & \Add4~44_combout\ & \Add4~42_combout\ & 
\Add4~40_combout\ & \Add4~38_combout\ & \Add4~36_combout\ & \Add4~34_combout\ & gnd & gnd & gnd & gnd);

\Mult2|auto_generated|mac_mult3~0\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(0);
\Mult2|auto_generated|mac_mult3~1\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(1);
\Mult2|auto_generated|mac_mult3~2\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(2);
\Mult2|auto_generated|mac_mult3~3\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(3);
\Mult2|auto_generated|mac_mult3~dataout\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(4);
\Mult2|auto_generated|mac_mult3~DATAOUT1\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(5);
\Mult2|auto_generated|mac_mult3~DATAOUT2\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(6);
\Mult2|auto_generated|mac_mult3~DATAOUT3\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(7);
\Mult2|auto_generated|mac_mult3~DATAOUT4\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(8);
\Mult2|auto_generated|mac_mult3~DATAOUT5\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(9);
\Mult2|auto_generated|mac_mult3~DATAOUT6\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(10);
\Mult2|auto_generated|mac_mult3~DATAOUT7\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(11);
\Mult2|auto_generated|mac_mult3~DATAOUT8\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(12);
\Mult2|auto_generated|mac_mult3~DATAOUT9\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(13);
\Mult2|auto_generated|mac_mult3~DATAOUT10\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(14);
\Mult2|auto_generated|mac_mult3~DATAOUT11\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(15);
\Mult2|auto_generated|mac_mult3~DATAOUT12\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(16);
\Mult2|auto_generated|mac_mult3~DATAOUT13\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(17);
\Mult2|auto_generated|mac_mult3~DATAOUT14\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(18);
\Mult2|auto_generated|mac_mult3~DATAOUT15\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(19);
\Mult2|auto_generated|mac_mult3~DATAOUT16\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(20);
\Mult2|auto_generated|mac_mult3~DATAOUT17\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(21);
\Mult2|auto_generated|mac_mult3~DATAOUT18\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(22);
\Mult2|auto_generated|mac_mult3~DATAOUT19\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(23);
\Mult2|auto_generated|mac_mult3~DATAOUT20\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(24);
\Mult2|auto_generated|mac_mult3~DATAOUT21\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(25);
\Mult2|auto_generated|mac_mult3~DATAOUT22\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(26);
\Mult2|auto_generated|mac_mult3~DATAOUT23\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(27);
\Mult2|auto_generated|mac_mult3~DATAOUT24\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(28);
\Mult2|auto_generated|mac_mult3~DATAOUT25\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(29);
\Mult2|auto_generated|mac_mult3~DATAOUT26\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(30);
\Mult2|auto_generated|mac_mult3~DATAOUT27\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(31);
\Mult2|auto_generated|mac_mult3~DATAOUT28\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(32);
\Mult2|auto_generated|mac_mult3~DATAOUT29\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(33);
\Mult2|auto_generated|mac_mult3~DATAOUT30\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(34);
\Mult2|auto_generated|mac_mult3~DATAOUT31\ <= \Mult2|auto_generated|mac_mult3_DATAOUT_bus\(35);

\Mult2|auto_generated|mac_mult5_DATAA_bus\ <= (\Add4~32_combout\ & \Add4~30_combout\ & \Add4~28_combout\ & \Add4~26_combout\ & \Add4~24_combout\ & \Add4~22_combout\ & \Add4~20_combout\ & \Add4~18_combout\ & \Add4~16_combout\ & \Add4~14_combout\ & 
\Add4~12_combout\ & \Add4~10_combout\ & \Add4~8_combout\ & \Add4~6_combout\ & \Add4~4_combout\ & \Add4~2_combout\ & \Add4~0_combout\ & hPos(0));

\Mult2|auto_generated|mac_mult5_DATAB_bus\ <= (\Add4~60_combout\ & \Add4~58_combout\ & \Add4~56_combout\ & \Add4~54_combout\ & \Add4~52_combout\ & \Add4~50_combout\ & \Add4~48_combout\ & \Add4~46_combout\ & \Add4~44_combout\ & \Add4~42_combout\ & 
\Add4~40_combout\ & \Add4~38_combout\ & \Add4~36_combout\ & \Add4~34_combout\ & gnd & gnd & gnd & gnd);

\Mult2|auto_generated|mac_mult5~0\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(0);
\Mult2|auto_generated|mac_mult5~1\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(1);
\Mult2|auto_generated|mac_mult5~2\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(2);
\Mult2|auto_generated|mac_mult5~3\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(3);
\Mult2|auto_generated|mac_mult5~dataout\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(4);
\Mult2|auto_generated|mac_mult5~DATAOUT1\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(5);
\Mult2|auto_generated|mac_mult5~DATAOUT2\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(6);
\Mult2|auto_generated|mac_mult5~DATAOUT3\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(7);
\Mult2|auto_generated|mac_mult5~DATAOUT4\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(8);
\Mult2|auto_generated|mac_mult5~DATAOUT5\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(9);
\Mult2|auto_generated|mac_mult5~DATAOUT6\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(10);
\Mult2|auto_generated|mac_mult5~DATAOUT7\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(11);
\Mult2|auto_generated|mac_mult5~DATAOUT8\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(12);
\Mult2|auto_generated|mac_mult5~DATAOUT9\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(13);
\Mult2|auto_generated|mac_mult5~DATAOUT10\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(14);
\Mult2|auto_generated|mac_mult5~DATAOUT11\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(15);
\Mult2|auto_generated|mac_mult5~DATAOUT12\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(16);
\Mult2|auto_generated|mac_mult5~DATAOUT13\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(17);
\Mult2|auto_generated|mac_mult5~DATAOUT14\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(18);
\Mult2|auto_generated|mac_mult5~DATAOUT15\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(19);
\Mult2|auto_generated|mac_mult5~DATAOUT16\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(20);
\Mult2|auto_generated|mac_mult5~DATAOUT17\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(21);
\Mult2|auto_generated|mac_mult5~DATAOUT18\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(22);
\Mult2|auto_generated|mac_mult5~DATAOUT19\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(23);
\Mult2|auto_generated|mac_mult5~DATAOUT20\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(24);
\Mult2|auto_generated|mac_mult5~DATAOUT21\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(25);
\Mult2|auto_generated|mac_mult5~DATAOUT22\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(26);
\Mult2|auto_generated|mac_mult5~DATAOUT23\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(27);
\Mult2|auto_generated|mac_mult5~DATAOUT24\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(28);
\Mult2|auto_generated|mac_mult5~DATAOUT25\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(29);
\Mult2|auto_generated|mac_mult5~DATAOUT26\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(30);
\Mult2|auto_generated|mac_mult5~DATAOUT27\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(31);
\Mult2|auto_generated|mac_mult5~DATAOUT28\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(32);
\Mult2|auto_generated|mac_mult5~DATAOUT29\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(33);
\Mult2|auto_generated|mac_mult5~DATAOUT30\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(34);
\Mult2|auto_generated|mac_mult5~DATAOUT31\ <= \Mult2|auto_generated|mac_mult5_DATAOUT_bus\(35);

\Mult2|auto_generated|mac_mult1_DATAA_bus\ <= (\Add4~32_combout\ & \Add4~30_combout\ & \Add4~28_combout\ & \Add4~26_combout\ & \Add4~24_combout\ & \Add4~22_combout\ & \Add4~20_combout\ & \Add4~18_combout\ & \Add4~16_combout\ & \Add4~14_combout\ & 
\Add4~12_combout\ & \Add4~10_combout\ & \Add4~8_combout\ & \Add4~6_combout\ & \Add4~4_combout\ & \Add4~2_combout\ & \Add4~0_combout\ & hPos(0));

\Mult2|auto_generated|mac_mult1_DATAB_bus\ <= (\Add4~32_combout\ & \Add4~30_combout\ & \Add4~28_combout\ & \Add4~26_combout\ & \Add4~24_combout\ & \Add4~22_combout\ & \Add4~20_combout\ & \Add4~18_combout\ & \Add4~16_combout\ & \Add4~14_combout\ & 
\Add4~12_combout\ & \Add4~10_combout\ & \Add4~8_combout\ & \Add4~6_combout\ & \Add4~4_combout\ & \Add4~2_combout\ & \Add4~0_combout\ & hPos(0));

\Mult2|auto_generated|mac_mult1~dataout\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult2|auto_generated|mac_mult1~DATAOUT1\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult2|auto_generated|mac_mult1~DATAOUT2\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult2|auto_generated|mac_mult1~DATAOUT3\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult2|auto_generated|mac_mult1~DATAOUT4\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult2|auto_generated|mac_mult1~DATAOUT5\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult2|auto_generated|mac_mult1~DATAOUT6\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult2|auto_generated|mac_mult1~DATAOUT7\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult2|auto_generated|mac_mult1~DATAOUT8\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult2|auto_generated|mac_mult1~DATAOUT9\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult2|auto_generated|mac_mult1~DATAOUT10\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult2|auto_generated|mac_mult1~DATAOUT11\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult2|auto_generated|mac_mult1~DATAOUT12\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult2|auto_generated|mac_mult1~DATAOUT13\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult2|auto_generated|mac_mult1~DATAOUT14\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult2|auto_generated|mac_mult1~DATAOUT15\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult2|auto_generated|mac_mult1~DATAOUT16\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult2|auto_generated|mac_mult1~DATAOUT17\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult2|auto_generated|mac_mult1~DATAOUT18\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult2|auto_generated|mac_mult1~DATAOUT19\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult2|auto_generated|mac_mult1~DATAOUT20\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult2|auto_generated|mac_mult1~DATAOUT21\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult2|auto_generated|mac_mult1~DATAOUT22\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult2|auto_generated|mac_mult1~DATAOUT23\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult2|auto_generated|mac_mult1~DATAOUT24\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult2|auto_generated|mac_mult1~DATAOUT25\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult2|auto_generated|mac_mult1~DATAOUT26\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult2|auto_generated|mac_mult1~DATAOUT27\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult2|auto_generated|mac_mult1~DATAOUT28\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult2|auto_generated|mac_mult1~DATAOUT29\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult2|auto_generated|mac_mult1~DATAOUT30\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult2|auto_generated|mac_mult1~DATAOUT31\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult2|auto_generated|mac_mult1~DATAOUT32\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult2|auto_generated|mac_mult1~DATAOUT33\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult2|auto_generated|mac_mult1~DATAOUT34\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult2|auto_generated|mac_mult1~DATAOUT35\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\Mult1|auto_generated|mac_mult1~DATAOUT24\ & \Mult1|auto_generated|mac_mult1~DATAOUT23\ & \Mult1|auto_generated|mac_mult1~DATAOUT22\ & \Mult1|auto_generated|mac_mult1~DATAOUT21\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT20\ & \Mult1|auto_generated|mac_mult1~DATAOUT19\ & \Mult1|auto_generated|mac_mult1~DATAOUT18\ & \Mult1|auto_generated|mac_mult1~DATAOUT17\ & \Mult1|auto_generated|mac_mult1~DATAOUT16\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT15\ & \Mult1|auto_generated|mac_mult1~DATAOUT14\ & \Mult1|auto_generated|mac_mult1~DATAOUT13\ & \Mult1|auto_generated|mac_mult1~DATAOUT12\ & \Mult1|auto_generated|mac_mult1~DATAOUT11\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT10\ & \Mult1|auto_generated|mac_mult1~DATAOUT9\ & \Mult1|auto_generated|mac_mult1~DATAOUT8\ & \Mult1|auto_generated|mac_mult1~DATAOUT7\ & \Mult1|auto_generated|mac_mult1~DATAOUT6\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT5\ & \Mult1|auto_generated|mac_mult1~DATAOUT4\ & \Mult1|auto_generated|mac_mult1~DATAOUT3\ & \Mult1|auto_generated|mac_mult1~DATAOUT2\ & \Mult1|auto_generated|mac_mult1~DATAOUT1\ & 
\Mult1|auto_generated|mac_mult1~dataout\ & \Mult1|auto_generated|mac_mult1~10\ & \Mult1|auto_generated|mac_mult1~9\ & \Mult1|auto_generated|mac_mult1~8\ & \Mult1|auto_generated|mac_mult1~7\ & \Mult1|auto_generated|mac_mult1~6\ & 
\Mult1|auto_generated|mac_mult1~5\ & \Mult1|auto_generated|mac_mult1~4\ & \Mult1|auto_generated|mac_mult1~3\ & \Mult1|auto_generated|mac_mult1~2\ & \Mult1|auto_generated|mac_mult1~1\ & \Mult1|auto_generated|mac_mult1~0\);

\Mult1|auto_generated|mac_out2~0\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_out2~1\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_out2~2\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_out2~3\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_out2~4\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_out2~5\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_out2~6\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_out2~7\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_out2~8\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_out2~9\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_out2~10\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult1|auto_generated|w248w\(0) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult1|auto_generated|w248w\(1) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult1|auto_generated|w248w\(2) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult1|auto_generated|w248w\(3) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult1|auto_generated|w248w\(4) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult1|auto_generated|w248w\(5) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult1|auto_generated|w248w\(6) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult1|auto_generated|w248w\(7) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult1|auto_generated|w248w\(8) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult1|auto_generated|w248w\(9) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult1|auto_generated|w248w\(10) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult1|auto_generated|w248w\(11) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult1|auto_generated|w248w\(12) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult1|auto_generated|w248w\(13) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult1|auto_generated|w248w\(14) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult1|auto_generated|w248w\(15) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult1|auto_generated|w248w\(16) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult1|auto_generated|w248w\(17) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_out2~DATAOUT18\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_out2~DATAOUT19\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_out2~DATAOUT20\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_out2~DATAOUT21\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_out2~DATAOUT22\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_out2~DATAOUT23\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_out2~DATAOUT24\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_out4_DATAA_bus\ <= (\Mult1|auto_generated|mac_mult3~DATAOUT20\ & \Mult1|auto_generated|mac_mult3~DATAOUT19\ & \Mult1|auto_generated|mac_mult3~DATAOUT18\ & \Mult1|auto_generated|mac_mult3~DATAOUT17\ & 
\Mult1|auto_generated|mac_mult3~DATAOUT16\ & \Mult1|auto_generated|mac_mult3~DATAOUT15\ & \Mult1|auto_generated|mac_mult3~DATAOUT14\ & \Mult1|auto_generated|mac_mult3~DATAOUT13\ & \Mult1|auto_generated|mac_mult3~DATAOUT12\ & 
\Mult1|auto_generated|mac_mult3~DATAOUT11\ & \Mult1|auto_generated|mac_mult3~DATAOUT10\ & \Mult1|auto_generated|mac_mult3~DATAOUT9\ & \Mult1|auto_generated|mac_mult3~DATAOUT8\ & \Mult1|auto_generated|mac_mult3~DATAOUT7\ & 
\Mult1|auto_generated|mac_mult3~DATAOUT6\ & \Mult1|auto_generated|mac_mult3~DATAOUT5\ & \Mult1|auto_generated|mac_mult3~DATAOUT4\ & \Mult1|auto_generated|mac_mult3~DATAOUT3\ & \Mult1|auto_generated|mac_mult3~DATAOUT2\ & 
\Mult1|auto_generated|mac_mult3~DATAOUT1\ & \Mult1|auto_generated|mac_mult3~dataout\ & \Mult1|auto_generated|mac_mult3~14\ & \Mult1|auto_generated|mac_mult3~13\ & \Mult1|auto_generated|mac_mult3~12\ & \Mult1|auto_generated|mac_mult3~11\ & 
\Mult1|auto_generated|mac_mult3~10\ & \Mult1|auto_generated|mac_mult3~9\ & \Mult1|auto_generated|mac_mult3~8\ & \Mult1|auto_generated|mac_mult3~7\ & \Mult1|auto_generated|mac_mult3~6\ & \Mult1|auto_generated|mac_mult3~5\ & 
\Mult1|auto_generated|mac_mult3~4\ & \Mult1|auto_generated|mac_mult3~3\ & \Mult1|auto_generated|mac_mult3~2\ & \Mult1|auto_generated|mac_mult3~1\ & \Mult1|auto_generated|mac_mult3~0\);

\Mult1|auto_generated|mac_out4~0\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_out4~1\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_out4~2\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_out4~3\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_out4~4\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_out4~5\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_out4~6\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_out4~7\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_out4~8\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_out4~9\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_out4~10\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_out4~11\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_out4~12\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_out4~13\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_out4~14\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_out4~dataout\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_out4~DATAOUT1\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_out4~DATAOUT2\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_out4~DATAOUT3\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_out4~DATAOUT4\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_out4~DATAOUT5\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_out4~DATAOUT6\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_out4~DATAOUT7\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_out4~DATAOUT8\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_out4~DATAOUT9\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_out4~DATAOUT10\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_out4~DATAOUT11\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_out4~DATAOUT12\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_out4~DATAOUT13\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_out4~DATAOUT14\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_out4~DATAOUT15\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_out4~DATAOUT16\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_out4~DATAOUT17\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_out4~DATAOUT18\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_out4~DATAOUT19\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_out4~DATAOUT20\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT24\ & \Mult0|auto_generated|mac_mult1~DATAOUT23\ & \Mult0|auto_generated|mac_mult1~DATAOUT22\ & \Mult0|auto_generated|mac_mult1~DATAOUT21\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT20\ & \Mult0|auto_generated|mac_mult1~DATAOUT19\ & \Mult0|auto_generated|mac_mult1~DATAOUT18\ & \Mult0|auto_generated|mac_mult1~DATAOUT17\ & \Mult0|auto_generated|mac_mult1~DATAOUT16\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & \Mult0|auto_generated|mac_mult1~DATAOUT11\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & \Mult0|auto_generated|mac_mult1~DATAOUT6\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & \Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~10\ & \Mult0|auto_generated|mac_mult1~9\ & \Mult0|auto_generated|mac_mult1~8\ & \Mult0|auto_generated|mac_mult1~7\ & \Mult0|auto_generated|mac_mult1~6\ & 
\Mult0|auto_generated|mac_mult1~5\ & \Mult0|auto_generated|mac_mult1~4\ & \Mult0|auto_generated|mac_mult1~3\ & \Mult0|auto_generated|mac_mult1~2\ & \Mult0|auto_generated|mac_mult1~1\ & \Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out2~5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out2~6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out2~7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out2~8\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out2~9\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out2~10\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|w248w\(0) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|w248w\(1) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|w248w\(2) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|w248w\(3) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|w248w\(4) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|w248w\(5) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|w248w\(6) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult0|auto_generated|w248w\(7) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult0|auto_generated|w248w\(8) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult0|auto_generated|w248w\(9) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult0|auto_generated|w248w\(10) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult0|auto_generated|w248w\(11) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult0|auto_generated|w248w\(12) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult0|auto_generated|w248w\(13) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult0|auto_generated|w248w\(14) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult0|auto_generated|w248w\(15) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult0|auto_generated|w248w\(16) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult0|auto_generated|w248w\(17) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_out2~DATAOUT18\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_out2~DATAOUT19\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_out2~DATAOUT20\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_out2~DATAOUT21\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_out2~DATAOUT22\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_out2~DATAOUT23\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_out2~DATAOUT24\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_out4_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult3~DATAOUT20\ & \Mult0|auto_generated|mac_mult3~DATAOUT19\ & \Mult0|auto_generated|mac_mult3~DATAOUT18\ & \Mult0|auto_generated|mac_mult3~DATAOUT17\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT16\ & \Mult0|auto_generated|mac_mult3~DATAOUT15\ & \Mult0|auto_generated|mac_mult3~DATAOUT14\ & \Mult0|auto_generated|mac_mult3~DATAOUT13\ & \Mult0|auto_generated|mac_mult3~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT11\ & \Mult0|auto_generated|mac_mult3~DATAOUT10\ & \Mult0|auto_generated|mac_mult3~DATAOUT9\ & \Mult0|auto_generated|mac_mult3~DATAOUT8\ & \Mult0|auto_generated|mac_mult3~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT6\ & \Mult0|auto_generated|mac_mult3~DATAOUT5\ & \Mult0|auto_generated|mac_mult3~DATAOUT4\ & \Mult0|auto_generated|mac_mult3~DATAOUT3\ & \Mult0|auto_generated|mac_mult3~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT1\ & \Mult0|auto_generated|mac_mult3~dataout\ & \Mult0|auto_generated|mac_mult3~14\ & \Mult0|auto_generated|mac_mult3~13\ & \Mult0|auto_generated|mac_mult3~12\ & \Mult0|auto_generated|mac_mult3~11\ & 
\Mult0|auto_generated|mac_mult3~10\ & \Mult0|auto_generated|mac_mult3~9\ & \Mult0|auto_generated|mac_mult3~8\ & \Mult0|auto_generated|mac_mult3~7\ & \Mult0|auto_generated|mac_mult3~6\ & \Mult0|auto_generated|mac_mult3~5\ & 
\Mult0|auto_generated|mac_mult3~4\ & \Mult0|auto_generated|mac_mult3~3\ & \Mult0|auto_generated|mac_mult3~2\ & \Mult0|auto_generated|mac_mult3~1\ & \Mult0|auto_generated|mac_mult3~0\);

\Mult0|auto_generated|mac_out4~0\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out4~1\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out4~2\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out4~3\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out4~4\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out4~5\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out4~6\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out4~7\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out4~8\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out4~9\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out4~10\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out4~11\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out4~12\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out4~13\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out4~14\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out4~dataout\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out4~DATAOUT1\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out4~DATAOUT2\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_out4~DATAOUT3\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_out4~DATAOUT4\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_out4~DATAOUT5\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_out4~DATAOUT6\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_out4~DATAOUT7\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_out4~DATAOUT8\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_out4~DATAOUT9\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_out4~DATAOUT10\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_out4~DATAOUT11\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_out4~DATAOUT12\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_out4~DATAOUT13\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_out4~DATAOUT14\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_out4~DATAOUT15\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_out4~DATAOUT16\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_out4~DATAOUT17\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_out4~DATAOUT18\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_out4~DATAOUT19\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_out4~DATAOUT20\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (player1y(17) & player1y(16) & player1y(15) & player1y(14) & player1y(13) & player1y(12) & player1y(11) & player1y(10) & player1y(9) & player1y(8) & player1y(7) & player1y(6) & player1y(5) & 
player1y(4) & player1y(3) & player1y(2) & player1y(1) & NOT player1y(0));

\Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & gnd & vcc & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mult1|auto_generated|mac_mult1~0\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_mult1~1\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_mult1~2\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_mult1~3\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_mult1~4\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_mult1~5\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_mult1~6\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_mult1~7\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_mult1~8\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_mult1~9\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_mult1~10\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_mult1~dataout\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_mult1~DATAOUT20\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_mult1~DATAOUT21\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_mult1~DATAOUT22\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_mult1~DATAOUT23\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_mult1~DATAOUT24\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_mult3_DATAA_bus\ <= (\player1y~9_combout\ & \player1y[30]~11_combout\ & \player1y[29]~16_combout\ & \player1y[28]~17_combout\ & \player1y[27]~18_combout\ & \player1y[26]~19_combout\ & \player1y[25]~20_combout\ & 
\player1y[24]~21_combout\ & \player1y[23]~22_combout\ & \player1y[22]~23_combout\ & \player1y[21]~24_combout\ & \player1y[20]~25_combout\ & \player1y[19]~26_combout\ & \player1y[18]~27_combout\ & gnd & gnd & gnd & gnd);

\Mult1|auto_generated|mac_mult3_DATAB_bus\ <= (gnd & vcc & gnd & vcc & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mult1|auto_generated|mac_mult3~0\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_mult3~1\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_mult3~2\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_mult3~3\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_mult3~4\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_mult3~5\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_mult3~6\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_mult3~7\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_mult3~8\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_mult3~9\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_mult3~10\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_mult3~11\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_mult3~12\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_mult3~13\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_mult3~14\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_mult3~dataout\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_mult3~DATAOUT1\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_mult3~DATAOUT2\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_mult3~DATAOUT3\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_mult3~DATAOUT4\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_mult3~DATAOUT5\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_mult3~DATAOUT6\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_mult3~DATAOUT7\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_mult3~DATAOUT8\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_mult3~DATAOUT9\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_mult3~DATAOUT10\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_mult3~DATAOUT11\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_mult3~DATAOUT12\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_mult3~DATAOUT13\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_mult3~DATAOUT14\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_mult3~DATAOUT15\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_mult3~DATAOUT16\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_mult3~DATAOUT17\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_mult3~DATAOUT18\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_mult3~DATAOUT19\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_mult3~DATAOUT20\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (player1x(17) & player1x(16) & player1x(15) & player1x(14) & player1x(13) & player1x(12) & player1x(11) & player1x(10) & player1x(9) & player1x(8) & player1x(7) & player1x(6) & player1x(5) & 
player1x(4) & player1x(3) & player1x(2) & player1x(1) & NOT player1x(0));

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & gnd & vcc & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult1~0\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult3_DATAA_bus\ <= (\player1x~24_combout\ & \player1x[30]~30_combout\ & \player1x[29]~31_combout\ & \player1x[28]~32_combout\ & \player1x[27]~33_combout\ & \player1x[26]~34_combout\ & \player1x[25]~35_combout\ & 
\player1x[24]~36_combout\ & \player1x[23]~37_combout\ & \player1x[22]~38_combout\ & \player1x[21]~39_combout\ & \player1x[20]~40_combout\ & \player1x[19]~41_combout\ & \player1x[18]~44_combout\ & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult3_DATAB_bus\ <= (gnd & vcc & gnd & vcc & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult3~0\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult3~1\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult3~2\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult3~3\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult3~4\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult3~5\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult3~6\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult3~7\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult3~8\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult3~9\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult3~10\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult3~11\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult3~12\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult3~13\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult3~14\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult3~dataout\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult3~DATAOUT1\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult3~DATAOUT2\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult3~DATAOUT3\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult3~DATAOUT4\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult3~DATAOUT5\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult3~DATAOUT6\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult3~DATAOUT7\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult3~DATAOUT8\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult3~DATAOUT9\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult3~DATAOUT10\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult3~DATAOUT11\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult3~DATAOUT12\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult3~DATAOUT13\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult3~DATAOUT14\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult3~DATAOUT15\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult3~DATAOUT16\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult3~DATAOUT17\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult3~DATAOUT18\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult3~DATAOUT19\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult3~DATAOUT20\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(35);

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\clk25~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk25~q\);

\move|debounce_ps2_clk|result~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \move|debounce_ps2_clk|result~q\);

\move|ps2_code_new~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \move|ps2_code_new~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\move|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\ <= NOT \move|debounce_ps2_clk|result~clkctrl_outclk\;
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;
\move|debounce_ps2_clk|ALT_INV_result~q\ <= NOT \move|debounce_ps2_clk|result~q\;
ALT_INV_player1x(0) <= NOT player1x(0);
ALT_INV_player1y(0) <= NOT player1y(0);
\ALT_INV_RGB[2]~reg0_q\ <= NOT \RGB[2]~reg0_q\;
\ALT_INV_RGB[1]~reg0_q\ <= NOT \RGB[1]~reg0_q\;
\ALT_INV_RGB[0]~reg0_q\ <= NOT \RGB[0]~reg0_q\;

-- Location: IOOBUF_X34_Y10_N9
\VGA_CLOCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk25~q\,
	devoe => ww_devoe,
	o => \VGA_CLOCK~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\HSYNC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HSYNC~reg0_q\,
	devoe => ww_devoe,
	o => \HSYNC~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\VSYNC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VSYNC~reg0_q\,
	devoe => ww_devoe,
	o => \VSYNC~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\RGB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_RGB[0]~reg0_q\,
	devoe => ww_devoe,
	o => \RGB[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\RGB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_RGB[1]~reg0_q\,
	devoe => ww_devoe,
	o => \RGB[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\RGB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_RGB[2]~reg0_q\,
	devoe => ww_devoe,
	o => \RGB[2]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X33_Y11_N24
\clk25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk25~0_combout\ = !\clk25~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk25~q\,
	combout => \clk25~0_combout\);

-- Location: LCCOMB_X33_Y11_N30
\clk25~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk25~feeder_combout\ = \clk25~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk25~0_combout\,
	combout => \clk25~feeder_combout\);

-- Location: FF_X33_Y11_N31
clk25 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clk25~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk25~q\);

-- Location: CLKCTRL_G7
\clk25~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk25~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk25~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y20_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = hPos(0) $ (VCC)
-- \Add0~1\ = CARRY(hPos(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hPos(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X0_Y11_N15
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G1
\RST~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: FF_X19_Y20_N13
\hPos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add0~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(0));

-- Location: LCCOMB_X18_Y20_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (hPos(1) & (!\Add0~1\)) # (!hPos(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!hPos(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X18_Y20_N3
\hPos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(1));

-- Location: LCCOMB_X18_Y20_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (hPos(2) & (\Add0~3\ $ (GND))) # (!hPos(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((hPos(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X19_Y20_N29
\hPos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add0~4_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(2));

-- Location: LCCOMB_X18_Y20_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (hPos(3) & (!\Add0~5\)) # (!hPos(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!hPos(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X19_Y20_N5
\hPos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add0~6_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(3));

-- Location: LCCOMB_X18_Y20_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (hPos(4) & (\Add0~7\ $ (GND))) # (!hPos(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((hPos(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X18_Y20_N9
\hPos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(4));

-- Location: LCCOMB_X18_Y20_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (hPos(5) & (!\Add0~9\)) # (!hPos(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!hPos(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X16_Y18_N10
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (hPos(2) & (hPos(1) & hPos(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(2),
	datac => hPos(1),
	datad => hPos(3),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X17_Y18_N10
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!hPos(5) & (hPos(4) & (!hPos(6) & !hPos(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(5),
	datab => hPos(4),
	datac => hPos(6),
	datad => hPos(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X18_Y20_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (hPos(10) & (\Add0~19\ $ (GND))) # (!hPos(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((hPos(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X18_Y20_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (hPos(11) & (!\Add0~21\)) # (!hPos(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!hPos(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X19_Y20_N15
\hPos[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add0~22_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(11));

-- Location: LCCOMB_X18_Y20_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (hPos(12) & (\Add0~23\ $ (GND))) # (!hPos(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((hPos(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X19_Y20_N25
\hPos[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add0~24_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(12));

-- Location: LCCOMB_X18_Y20_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (hPos(13) & (!\Add0~25\)) # (!hPos(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!hPos(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X19_Y20_N19
\hPos[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add0~26_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(13));

-- Location: LCCOMB_X18_Y20_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (hPos(14) & (\Add0~27\ $ (GND))) # (!hPos(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((hPos(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X19_Y20_N21
\hPos[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add0~28_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(14));

-- Location: LCCOMB_X18_Y20_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (hPos(15) & (!\Add0~29\)) # (!hPos(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!hPos(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X18_Y20_N31
\hPos[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add0~30_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(15));

-- Location: LCCOMB_X18_Y19_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (hPos(16) & (\Add0~31\ $ (GND))) # (!hPos(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((hPos(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X19_Y19_N21
\hPos[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add0~32_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(16));

-- Location: LCCOMB_X18_Y19_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (hPos(17) & (!\Add0~33\)) # (!hPos(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!hPos(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X19_Y19_N13
\hPos[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add0~34_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(17));

-- Location: LCCOMB_X18_Y19_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (hPos(18) & (\Add0~35\ $ (GND))) # (!hPos(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((hPos(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X18_Y19_N5
\hPos[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add0~36_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(18));

-- Location: LCCOMB_X18_Y19_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (hPos(19) & (!\Add0~37\)) # (!hPos(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!hPos(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X19_Y19_N7
\hPos[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add0~38_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(19));

-- Location: LCCOMB_X18_Y19_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (hPos(20) & (\Add0~39\ $ (GND))) # (!hPos(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((hPos(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X19_Y19_N11
\hPos[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add0~40_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(20));

-- Location: LCCOMB_X18_Y19_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (hPos(21) & (!\Add0~41\)) # (!hPos(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!hPos(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X19_Y19_N17
\hPos[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add0~42_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(21));

-- Location: LCCOMB_X18_Y19_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (hPos(22) & (\Add0~43\ $ (GND))) # (!hPos(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((hPos(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X18_Y19_N13
\hPos[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add0~44_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(22));

-- Location: LCCOMB_X18_Y19_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (hPos(23) & (!\Add0~45\)) # (!hPos(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!hPos(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X18_Y19_N15
\hPos[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add0~46_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(23));

-- Location: LCCOMB_X18_Y19_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (hPos(24) & (\Add0~47\ $ (GND))) # (!hPos(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((hPos(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X18_Y19_N17
\hPos[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add0~48_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(24));

-- Location: LCCOMB_X18_Y19_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (hPos(25) & (!\Add0~49\)) # (!hPos(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!hPos(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X19_Y19_N9
\hPos[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add0~50_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(25));

-- Location: LCCOMB_X18_Y19_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (hPos(26) & (\Add0~51\ $ (GND))) # (!hPos(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((hPos(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X19_Y19_N19
\hPos[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add0~52_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(26));

-- Location: LCCOMB_X18_Y19_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (hPos(27) & (!\Add0~53\)) # (!hPos(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!hPos(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X18_Y19_N23
\hPos[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add0~54_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(27));

-- Location: LCCOMB_X18_Y19_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (hPos(28) & (\Add0~55\ $ (GND))) # (!hPos(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((hPos(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X18_Y19_N25
\hPos[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add0~56_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(28));

-- Location: LCCOMB_X18_Y19_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (hPos(29) & (!\Add0~57\)) # (!hPos(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!hPos(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X18_Y19_N27
\hPos[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add0~58_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(29));

-- Location: LCCOMB_X18_Y19_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (hPos(30) & (\Add0~59\ $ (GND))) # (!hPos(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((hPos(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X18_Y19_N29
\hPos[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add0~60_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(30));

-- Location: LCCOMB_X18_Y19_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = hPos(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X18_Y19_N31
\hPos[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add0~62_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(31));

-- Location: LCCOMB_X18_Y18_N16
\RGB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~0_combout\ = (!hPos(29) & (!hPos(31) & !hPos(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hPos(29),
	datac => hPos(31),
	datad => hPos(30),
	combout => \RGB~0_combout\);

-- Location: LCCOMB_X17_Y18_N16
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & (\RGB~0_combout\ & (hPos(9) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \RGB~0_combout\,
	datac => hPos(9),
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X16_Y18_N2
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (hPos(0) & (hPos(8) & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => hPos(0),
	datac => hPos(8),
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X19_Y17_N0
\hPos~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hPos~0_combout\ = (\Add0~10_combout\ & !\Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~10_combout\,
	datad => \Equal0~4_combout\,
	combout => \hPos~0_combout\);

-- Location: FF_X19_Y17_N1
\hPos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \hPos~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(5));

-- Location: LCCOMB_X18_Y20_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (hPos(6) & (\Add0~11\ $ (GND))) # (!hPos(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((hPos(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X18_Y20_N13
\hPos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(6));

-- Location: LCCOMB_X18_Y20_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (hPos(7) & (!\Add0~13\)) # (!hPos(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!hPos(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X18_Y20_N15
\hPos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add0~14_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(7));

-- Location: LCCOMB_X18_Y20_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (hPos(8) & (\Add0~15\ $ (GND))) # (!hPos(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((hPos(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X19_Y20_N0
\hPos~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hPos~1_combout\ = (\Add0~16_combout\ & !\Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~16_combout\,
	datad => \Equal0~4_combout\,
	combout => \hPos~1_combout\);

-- Location: FF_X19_Y20_N1
\hPos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \hPos~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(8));

-- Location: LCCOMB_X18_Y20_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (hPos(9) & (!\Add0~17\)) # (!hPos(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!hPos(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X18_Y17_N0
\hPos~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hPos~2_combout\ = (\Add0~18_combout\ & !\Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~18_combout\,
	datad => \Equal0~4_combout\,
	combout => \hPos~2_combout\);

-- Location: FF_X19_Y17_N15
\hPos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \hPos~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(9));

-- Location: FF_X19_Y20_N31
\hPos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hPos(10));

-- Location: LCCOMB_X19_Y18_N10
\LessThan27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan27~3_combout\ = (!hPos(12) & (!hPos(13) & (!hPos(11) & !hPos(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(12),
	datab => hPos(13),
	datac => hPos(11),
	datad => hPos(14),
	combout => \LessThan27~3_combout\);

-- Location: LCCOMB_X19_Y18_N18
\LessThan27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan27~1_combout\ = (!hPos(21) & (!hPos(19) & (!hPos(22) & !hPos(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(21),
	datab => hPos(19),
	datac => hPos(22),
	datad => hPos(20),
	combout => \LessThan27~1_combout\);

-- Location: LCCOMB_X19_Y18_N8
\LessThan27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan27~2_combout\ = (!hPos(18) & (!hPos(16) & (!hPos(17) & !hPos(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(18),
	datab => hPos(16),
	datac => hPos(17),
	datad => hPos(15),
	combout => \LessThan27~2_combout\);

-- Location: LCCOMB_X19_Y18_N12
\LessThan27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan27~0_combout\ = (!hPos(23) & (!hPos(26) & (!hPos(25) & !hPos(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(23),
	datab => hPos(26),
	datac => hPos(25),
	datad => hPos(24),
	combout => \LessThan27~0_combout\);

-- Location: LCCOMB_X19_Y18_N24
\LessThan27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan27~4_combout\ = (\LessThan27~3_combout\ & (\LessThan27~1_combout\ & (\LessThan27~2_combout\ & \LessThan27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan27~3_combout\,
	datab => \LessThan27~1_combout\,
	datac => \LessThan27~2_combout\,
	datad => \LessThan27~0_combout\,
	combout => \LessThan27~4_combout\);

-- Location: LCCOMB_X18_Y18_N6
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!hPos(10) & (!hPos(28) & (!hPos(27) & \LessThan27~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(10),
	datab => hPos(28),
	datac => hPos(27),
	datad => \LessThan27~4_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X17_Y18_N30
\Horizontal_Synchronisation~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Horizontal_Synchronisation~0_combout\ = (hPos(4) & (hPos(5) & (hPos(6) & hPos(7)))) # (!hPos(4) & (!hPos(5) & (!hPos(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(4),
	datab => hPos(5),
	datac => hPos(6),
	datad => hPos(7),
	combout => \Horizontal_Synchronisation~0_combout\);

-- Location: LCCOMB_X17_Y18_N28
\Horizontal_Synchronisation~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Horizontal_Synchronisation~1_combout\ = (hPos(8)) # ((\Horizontal_Synchronisation~0_combout\) # (!hPos(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hPos(8),
	datac => \Horizontal_Synchronisation~0_combout\,
	datad => hPos(7),
	combout => \Horizontal_Synchronisation~1_combout\);

-- Location: LCCOMB_X17_Y18_N24
\Horizontal_Synchronisation~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Horizontal_Synchronisation~2_combout\ = ((\Horizontal_Synchronisation~1_combout\) # ((!\RGB~0_combout\) # (!hPos(9)))) # (!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Horizontal_Synchronisation~1_combout\,
	datac => hPos(9),
	datad => \RGB~0_combout\,
	combout => \Horizontal_Synchronisation~2_combout\);

-- Location: FF_X17_Y18_N25
\HSYNC~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Horizontal_Synchronisation~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HSYNC~reg0_q\);

-- Location: LCCOMB_X22_Y6_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (vPos(8) & (\Add1~15\ $ (GND))) # (!vPos(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((vPos(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X22_Y6_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (vPos(9) & (!\Add1~17\)) # (!vPos(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!vPos(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X19_Y6_N16
\vPos~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vPos~0_combout\ = (!\Equal1~5_combout\ & \Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~5_combout\,
	datad => \Add1~18_combout\,
	combout => \vPos~0_combout\);

-- Location: FF_X21_Y6_N5
\vPos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \vPos~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(9));

-- Location: LCCOMB_X22_Y6_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = vPos(0) $ (VCC)
-- \Add1~1\ = CARRY(vPos(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => vPos(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X19_Y6_N4
\vPos~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vPos~3_combout\ = (!\Equal1~5_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~5_combout\,
	datad => \Add1~0_combout\,
	combout => \vPos~3_combout\);

-- Location: FF_X21_Y6_N25
\vPos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \vPos~3_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(0));

-- Location: LCCOMB_X22_Y6_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (vPos(1) & (!\Add1~1\)) # (!vPos(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!vPos(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X22_Y6_N3
\vPos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add1~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(1));

-- Location: LCCOMB_X22_Y6_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (vPos(2) & (\Add1~3\ $ (GND))) # (!vPos(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((vPos(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X21_Y6_N0
\vPos~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vPos~2_combout\ = (!\Equal1~5_combout\ & \Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datac => \Add1~4_combout\,
	combout => \vPos~2_combout\);

-- Location: FF_X21_Y6_N1
\vPos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \vPos~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(2));

-- Location: LCCOMB_X18_Y7_N30
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (vPos(9) & (!vPos(0) & (!vPos(1) & vPos(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(9),
	datab => vPos(0),
	datac => vPos(1),
	datad => vPos(2),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X18_Y8_N30
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!vPos(8) & (!vPos(7) & !vPos(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(8),
	datac => vPos(7),
	datad => vPos(6),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X22_Y6_N20
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (vPos(10) & (\Add1~19\ $ (GND))) # (!vPos(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((vPos(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X21_Y6_N15
\vPos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add1~20_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(10));

-- Location: LCCOMB_X22_Y6_N22
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (vPos(11) & (!\Add1~21\)) # (!vPos(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!vPos(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X21_Y6_N7
\vPos[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add1~22_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(11));

-- Location: LCCOMB_X22_Y6_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (vPos(12) & (\Add1~23\ $ (GND))) # (!vPos(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((vPos(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: FF_X22_Y6_N25
\vPos[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add1~24_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(12));

-- Location: LCCOMB_X22_Y6_N26
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (vPos(13) & (!\Add1~25\)) # (!vPos(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!vPos(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: FF_X21_Y6_N29
\vPos[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add1~26_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(13));

-- Location: LCCOMB_X22_Y6_N28
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (vPos(14) & (\Add1~27\ $ (GND))) # (!vPos(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((vPos(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: FF_X21_Y6_N19
\vPos[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add1~28_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(14));

-- Location: LCCOMB_X22_Y6_N30
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (vPos(15) & (!\Add1~29\)) # (!vPos(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!vPos(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: FF_X21_Y6_N31
\vPos[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add1~30_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(15));

-- Location: LCCOMB_X22_Y5_N0
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (vPos(16) & (\Add1~31\ $ (GND))) # (!vPos(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((vPos(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: FF_X22_Y5_N1
\vPos[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add1~32_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(16));

-- Location: LCCOMB_X22_Y5_N2
\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (vPos(17) & (!\Add1~33\)) # (!vPos(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!vPos(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: FF_X21_Y5_N31
\vPos[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add1~34_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(17));

-- Location: LCCOMB_X22_Y5_N4
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (vPos(18) & (\Add1~35\ $ (GND))) # (!vPos(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((vPos(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: FF_X21_Y5_N7
\vPos[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add1~36_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(18));

-- Location: LCCOMB_X22_Y5_N6
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (vPos(19) & (!\Add1~37\)) # (!vPos(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!vPos(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: FF_X21_Y5_N19
\vPos[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add1~38_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(19));

-- Location: LCCOMB_X22_Y5_N8
\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (vPos(20) & (\Add1~39\ $ (GND))) # (!vPos(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((vPos(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: FF_X22_Y5_N9
\vPos[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add1~40_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(20));

-- Location: LCCOMB_X22_Y5_N10
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (vPos(21) & (!\Add1~41\)) # (!vPos(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!vPos(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: FF_X21_Y5_N21
\vPos[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add1~42_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(21));

-- Location: LCCOMB_X22_Y5_N12
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (vPos(22) & (\Add1~43\ $ (GND))) # (!vPos(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((vPos(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: FF_X22_Y5_N13
\vPos[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add1~44_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(22));

-- Location: LCCOMB_X22_Y5_N14
\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (vPos(23) & (!\Add1~45\)) # (!vPos(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!vPos(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: FF_X21_Y5_N3
\vPos[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add1~46_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(23));

-- Location: LCCOMB_X22_Y5_N16
\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (vPos(24) & (\Add1~47\ $ (GND))) # (!vPos(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((vPos(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: FF_X21_Y5_N15
\vPos[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add1~48_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(24));

-- Location: LCCOMB_X22_Y5_N18
\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (vPos(25) & (!\Add1~49\)) # (!vPos(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!vPos(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: FF_X22_Y5_N19
\vPos[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add1~50_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(25));

-- Location: LCCOMB_X22_Y5_N20
\Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (vPos(26) & (\Add1~51\ $ (GND))) # (!vPos(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((vPos(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: FF_X21_Y5_N17
\vPos[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add1~52_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(26));

-- Location: LCCOMB_X22_Y5_N22
\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (vPos(27) & (!\Add1~53\)) # (!vPos(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!vPos(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: FF_X21_Y5_N9
\vPos[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add1~54_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(27));

-- Location: LCCOMB_X22_Y5_N24
\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (vPos(28) & (\Add1~55\ $ (GND))) # (!vPos(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((vPos(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: FF_X22_Y5_N25
\vPos[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add1~56_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(28));

-- Location: LCCOMB_X22_Y5_N26
\Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (vPos(29) & (!\Add1~57\)) # (!vPos(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!vPos(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: FF_X22_Y5_N27
\vPos[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add1~58_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(29));

-- Location: LCCOMB_X22_Y5_N28
\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (vPos(30) & (\Add1~59\ $ (GND))) # (!vPos(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((vPos(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: FF_X22_Y5_N29
\vPos[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add1~60_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(30));

-- Location: LCCOMB_X19_Y7_N28
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!vPos(29) & (!vPos(28) & (!vPos(27) & !vPos(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(29),
	datab => vPos(28),
	datac => vPos(27),
	datad => vPos(30),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X22_Y7_N28
\LessThan26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan26~2_combout\ = (!vPos(13) & (!vPos(15) & (!vPos(16) & !vPos(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(13),
	datab => vPos(15),
	datac => vPos(16),
	datad => vPos(14),
	combout => \LessThan26~2_combout\);

-- Location: LCCOMB_X19_Y7_N8
\LessThan26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan26~0_combout\ = (!vPos(21) & (!vPos(23) & (!vPos(22) & !vPos(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(21),
	datab => vPos(23),
	datac => vPos(22),
	datad => vPos(24),
	combout => \LessThan26~0_combout\);

-- Location: LCCOMB_X21_Y5_N30
\LessThan26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan26~1_combout\ = (!vPos(18) & (!vPos(20) & (!vPos(17) & !vPos(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(18),
	datab => vPos(20),
	datac => vPos(17),
	datad => vPos(19),
	combout => \LessThan26~1_combout\);

-- Location: LCCOMB_X21_Y8_N0
\LessThan26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan26~3_combout\ = (!vPos(10) & (!vPos(12) & !vPos(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(10),
	datab => vPos(12),
	datad => vPos(11),
	combout => \LessThan26~3_combout\);

-- Location: LCCOMB_X19_Y7_N18
\LessThan26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan26~4_combout\ = (\LessThan26~2_combout\ & (\LessThan26~0_combout\ & (\LessThan26~1_combout\ & \LessThan26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan26~2_combout\,
	datab => \LessThan26~0_combout\,
	datac => \LessThan26~1_combout\,
	datad => \LessThan26~3_combout\,
	combout => \LessThan26~4_combout\);

-- Location: LCCOMB_X18_Y7_N8
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!vPos(25) & (\Equal1~0_combout\ & (!vPos(26) & \LessThan26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(25),
	datab => \Equal1~0_combout\,
	datac => vPos(26),
	datad => \LessThan26~4_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X22_Y5_N30
\Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = vPos(31) $ (\Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: FF_X22_Y5_N31
\vPos[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add1~62_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(31));

-- Location: LCCOMB_X18_Y7_N2
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (vPos(3) & (!vPos(4) & (\Equal1~1_combout\ & !vPos(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(3),
	datab => vPos(4),
	datac => \Equal1~1_combout\,
	datad => vPos(31),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X18_Y7_N12
\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (\Equal1~4_combout\ & (!vPos(5) & (\Equal1~3_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => vPos(5),
	datac => \Equal1~3_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X22_Y6_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (vPos(3) & (!\Add1~5\)) # (!vPos(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!vPos(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X19_Y6_N30
\vPos~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vPos~1_combout\ = (!\Equal1~5_combout\ & \Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~5_combout\,
	datad => \Add1~6_combout\,
	combout => \vPos~1_combout\);

-- Location: FF_X21_Y8_N1
\vPos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \vPos~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(3));

-- Location: LCCOMB_X22_Y6_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (vPos(4) & (\Add1~7\ $ (GND))) # (!vPos(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((vPos(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X21_Y6_N13
\vPos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add1~8_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(4));

-- Location: LCCOMB_X22_Y6_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (vPos(5) & (!\Add1~9\)) # (!vPos(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!vPos(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X21_Y6_N21
\vPos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add1~10_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(5));

-- Location: LCCOMB_X22_Y6_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (vPos(6) & (\Add1~11\ $ (GND))) # (!vPos(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((vPos(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X21_Y6_N27
\vPos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add1~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(6));

-- Location: LCCOMB_X22_Y6_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (vPos(7) & (!\Add1~13\)) # (!vPos(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!vPos(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: FF_X22_Y6_N15
\vPos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Add1~14_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(7));

-- Location: FF_X21_Y6_N9
\vPos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \Add1~16_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vPos(8));

-- Location: LCCOMB_X18_Y8_N4
\LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (vPos(8) & (vPos(7) & vPos(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(8),
	datac => vPos(7),
	datad => vPos(6),
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X18_Y7_N22
\Vertical_Synchronisation~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vertical_Synchronisation~0_combout\ = (vPos(9)) # ((vPos(2) & (vPos(3))) # (!vPos(2) & ((!vPos(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(3),
	datab => vPos(1),
	datac => vPos(9),
	datad => vPos(2),
	combout => \Vertical_Synchronisation~0_combout\);

-- Location: LCCOMB_X18_Y7_N28
\Vertical_Synchronisation~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vertical_Synchronisation~1_combout\ = (((\Vertical_Synchronisation~0_combout\) # (!vPos(5))) # (!\Equal1~2_combout\)) # (!\LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => \Equal1~2_combout\,
	datac => \Vertical_Synchronisation~0_combout\,
	datad => vPos(5),
	combout => \Vertical_Synchronisation~1_combout\);

-- Location: FF_X18_Y7_N29
\VSYNC~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \Vertical_Synchronisation~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VSYNC~reg0_q\);

-- Location: LCCOMB_X18_Y18_N20
\draw~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~4_combout\ = (hPos(4) & (hPos(2) & ((hPos(1)) # (hPos(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(1),
	datab => hPos(4),
	datac => hPos(2),
	datad => hPos(0),
	combout => \draw~4_combout\);

-- Location: LCCOMB_X18_Y18_N10
\draw~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~3_combout\ = (hPos(6)) # ((hPos(5)) # ((hPos(7)) # (hPos(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(6),
	datab => hPos(5),
	datac => hPos(7),
	datad => hPos(8),
	combout => \draw~3_combout\);

-- Location: LCCOMB_X18_Y18_N26
\draw~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~5_combout\ = (hPos(9) & ((\draw~3_combout\) # ((hPos(3) & \draw~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(3),
	datab => \draw~4_combout\,
	datac => hPos(9),
	datad => \draw~3_combout\,
	combout => \draw~5_combout\);

-- Location: LCCOMB_X18_Y18_N0
\LessThan27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan27~5_combout\ = (((!hPos(5)) # (!hPos(3))) # (!hPos(4))) # (!hPos(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(6),
	datab => hPos(4),
	datac => hPos(3),
	datad => hPos(5),
	combout => \LessThan27~5_combout\);

-- Location: LCCOMB_X18_Y18_N22
\LessThan27~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan27~6_combout\ = (!hPos(7) & (!hPos(9) & !hPos(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(7),
	datac => hPos(9),
	datad => hPos(8),
	combout => \LessThan27~6_combout\);

-- Location: LCCOMB_X18_Y18_N4
\LessThan27~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan27~7_combout\ = (!hPos(10) & (\LessThan27~5_combout\ & (\LessThan27~6_combout\ & \LessThan27~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(10),
	datab => \LessThan27~5_combout\,
	datac => \LessThan27~6_combout\,
	datad => \LessThan27~4_combout\,
	combout => \LessThan27~7_combout\);

-- Location: LCCOMB_X18_Y18_N8
\draw~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~6_combout\ = (\draw~5_combout\) # (((\LessThan27~7_combout\) # (!\Equal0~0_combout\)) # (!\RGB~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw~5_combout\,
	datab => \RGB~0_combout\,
	datac => \LessThan27~7_combout\,
	datad => \Equal0~0_combout\,
	combout => \draw~6_combout\);

-- Location: LCCOMB_X18_Y8_N10
\draw~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~9_combout\ = (!vPos(5) & (vPos(4) & (vPos(3) & !vPos(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(5),
	datab => vPos(4),
	datac => vPos(3),
	datad => vPos(6),
	combout => \draw~9_combout\);

-- Location: LCCOMB_X18_Y7_N10
\LessThan47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan47~1_combout\ = (vPos(2) & (vPos(1) & vPos(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => vPos(2),
	datac => vPos(1),
	datad => vPos(3),
	combout => \LessThan47~1_combout\);

-- Location: LCCOMB_X18_Y7_N20
\LessThan47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan47~2_combout\ = (!vPos(9) & (\Equal1~3_combout\ & !vPos(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(9),
	datac => \Equal1~3_combout\,
	datad => vPos(5),
	combout => \LessThan47~2_combout\);

-- Location: LCCOMB_X19_Y7_N6
\LessThan47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan47~0_combout\ = (!vPos(26) & (!vPos(25) & \LessThan26~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => vPos(26),
	datac => vPos(25),
	datad => \LessThan26~4_combout\,
	combout => \LessThan47~0_combout\);

-- Location: LCCOMB_X18_Y7_N26
\LessThan47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan47~3_combout\ = (\LessThan47~2_combout\ & (\LessThan47~0_combout\ & ((!vPos(4)) # (!\LessThan47~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan47~1_combout\,
	datab => \LessThan47~2_combout\,
	datac => vPos(4),
	datad => \LessThan47~0_combout\,
	combout => \LessThan47~3_combout\);

-- Location: LCCOMB_X17_Y8_N4
\LessThan24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan24~0_combout\ = (vPos(0) & vPos(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => vPos(0),
	datad => vPos(1),
	combout => \LessThan24~0_combout\);

-- Location: LCCOMB_X17_Y8_N26
\draw~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~22_combout\ = (vPos(8)) # (((\LessThan24~0_combout\) # (!vPos(2))) # (!vPos(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(8),
	datab => vPos(7),
	datac => \LessThan24~0_combout\,
	datad => vPos(2),
	combout => \draw~22_combout\);

-- Location: LCCOMB_X18_Y8_N16
\LessThan22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan22~0_combout\ = (vPos(2)) # ((vPos(0)) # ((vPos(3)) # (vPos(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(2),
	datab => vPos(0),
	datac => vPos(3),
	datad => vPos(1),
	combout => \LessThan22~0_combout\);

-- Location: LCCOMB_X18_Y8_N24
\draw~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~21_combout\ = ((vPos(5) & ((\LessThan22~0_combout\) # (vPos(4))))) # (!\Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(5),
	datab => \LessThan22~0_combout\,
	datac => vPos(4),
	datad => \Equal1~3_combout\,
	combout => \draw~21_combout\);

-- Location: LCCOMB_X18_Y8_N0
\RGB~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~29_combout\ = (\draw~9_combout\ & (\draw~22_combout\ & ((\LessThan47~3_combout\) # (\draw~21_combout\)))) # (!\draw~9_combout\ & ((\LessThan47~3_combout\) # ((\draw~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw~9_combout\,
	datab => \LessThan47~3_combout\,
	datac => \draw~22_combout\,
	datad => \draw~21_combout\,
	combout => \RGB~29_combout\);

-- Location: LCCOMB_X18_Y7_N16
\draw~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~2_combout\ = (!vPos(31) & (\Equal1~0_combout\ & (!vPos(9) & \LessThan47~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(31),
	datab => \Equal1~0_combout\,
	datac => vPos(9),
	datad => \LessThan47~0_combout\,
	combout => \draw~2_combout\);

-- Location: LCCOMB_X18_Y8_N22
\RGB~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~30_combout\ = (\draw~6_combout\) # ((\RGB~29_combout\) # (!\draw~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw~6_combout\,
	datab => \RGB~29_combout\,
	datad => \draw~2_combout\,
	combout => \RGB~30_combout\);

-- Location: LCCOMB_X17_Y8_N10
\draw~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~15_combout\ = ((vPos(7)) # ((!vPos(4) & !\LessThan47~1_combout\))) # (!vPos(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(8),
	datab => vPos(4),
	datac => vPos(7),
	datad => \LessThan47~1_combout\,
	combout => \draw~15_combout\);

-- Location: LCCOMB_X18_Y8_N6
\draw~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~7_combout\ = (!\draw~6_combout\ & (\draw~2_combout\ & (vPos(5) & vPos(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw~6_combout\,
	datab => \draw~2_combout\,
	datac => vPos(5),
	datad => vPos(6),
	combout => \draw~7_combout\);

-- Location: LCCOMB_X17_Y8_N8
\draw~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~16_combout\ = (\draw~15_combout\) # (((\LessThan22~0_combout\ & vPos(4))) # (!\draw~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw~15_combout\,
	datab => \LessThan22~0_combout\,
	datac => vPos(4),
	datad => \draw~7_combout\,
	combout => \draw~16_combout\);

-- Location: LCCOMB_X16_Y18_N0
\LessThan50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan50~0_combout\ = (hPos(1) & hPos(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hPos(1),
	datad => hPos(0),
	combout => \LessThan50~0_combout\);

-- Location: LCCOMB_X16_Y18_N18
\draw~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~17_combout\ = (((hPos(8)) # (\LessThan50~0_combout\)) # (!hPos(3))) # (!hPos(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(2),
	datab => hPos(3),
	datac => hPos(8),
	datad => \LessThan50~0_combout\,
	combout => \draw~17_combout\);

-- Location: LCCOMB_X18_Y7_N14
\LessThan48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan48~0_combout\ = (vPos(2) & ((vPos(1)) # (vPos(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => vPos(1),
	datac => vPos(0),
	datad => vPos(2),
	combout => \LessThan48~0_combout\);

-- Location: LCCOMB_X18_Y7_N24
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!vPos(5) & (!vPos(4) & !vPos(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => vPos(5),
	datac => vPos(4),
	datad => vPos(3),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X18_Y7_N4
\draw~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~18_combout\ = (\draw~2_combout\ & (((!\LessThan48~0_combout\ & \LessThan2~0_combout\)) # (!\LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => \draw~2_combout\,
	datac => \LessThan48~0_combout\,
	datad => \LessThan2~0_combout\,
	combout => \draw~18_combout\);

-- Location: LCCOMB_X16_Y18_N20
\draw~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~19_combout\ = (\LessThan47~3_combout\) # ((\draw~17_combout\) # ((!\Equal0~2_combout\) # (!\draw~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan47~3_combout\,
	datab => \draw~17_combout\,
	datac => \draw~18_combout\,
	datad => \Equal0~2_combout\,
	combout => \draw~19_combout\);

-- Location: LCCOMB_X18_Y7_N6
\LessThan26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan26~5_combout\ = ((\LessThan2~0_combout\ & (!vPos(1) & !vPos(2)))) # (!\LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => \LessThan2~0_combout\,
	datac => vPos(1),
	datad => vPos(2),
	combout => \LessThan26~5_combout\);

-- Location: LCCOMB_X18_Y7_N0
\draw~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~20_combout\ = ((\LessThan26~5_combout\ & (!vPos(9) & \LessThan26~4_combout\))) # (!\draw~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan26~5_combout\,
	datab => \draw~18_combout\,
	datac => vPos(9),
	datad => \LessThan26~4_combout\,
	combout => \draw~20_combout\);

-- Location: LCCOMB_X17_Y8_N18
\RGB~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~7_combout\ = (\draw~16_combout\ & (\draw~19_combout\ & ((\draw~6_combout\) # (\draw~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw~6_combout\,
	datab => \draw~16_combout\,
	datac => \draw~19_combout\,
	datad => \draw~20_combout\,
	combout => \RGB~7_combout\);

-- Location: LCCOMB_X18_Y18_N24
\LessThan27~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan27~8_combout\ = (!hPos(7) & !hPos(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hPos(7),
	datad => hPos(8),
	combout => \LessThan27~8_combout\);

-- Location: LCCOMB_X18_Y18_N14
\LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (hPos(30)) # ((hPos(29)) # ((hPos(9) & !\LessThan27~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(30),
	datab => hPos(29),
	datac => hPos(9),
	datad => \LessThan27~8_combout\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X18_Y8_N8
\LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (vPos(5) & (vPos(8) & (vPos(7) & vPos(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(5),
	datab => vPos(8),
	datac => vPos(7),
	datad => vPos(6),
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X18_Y8_N18
\LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = (!vPos(31) & ((\LessThan5~1_combout\) # ((vPos(9)) # (!\Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(31),
	datab => \LessThan5~1_combout\,
	datac => \Equal1~1_combout\,
	datad => vPos(9),
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X17_Y18_N6
\video_on~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \video_on~0_combout\ = (!\LessThan5~2_combout\ & ((hPos(31)) # ((\Equal0~0_combout\ & !\LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \LessThan4~0_combout\,
	datac => \LessThan5~2_combout\,
	datad => hPos(31),
	combout => \video_on~0_combout\);

-- Location: FF_X17_Y18_N7
videoOn : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \video_on~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \videoOn~q\);

-- Location: LCCOMB_X17_Y8_N12
\RGB~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~3_combout\ = (vPos(7) & ((vPos(2)) # (!vPos(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => vPos(7),
	datac => vPos(0),
	datad => vPos(2),
	combout => \RGB~3_combout\);

-- Location: LCCOMB_X17_Y8_N28
\draw~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~11_combout\ = (!vPos(4) & !vPos(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => vPos(4),
	datad => vPos(5),
	combout => \draw~11_combout\);

-- Location: LCCOMB_X17_Y8_N22
\draw~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~14_combout\ = (!\draw~6_combout\ & (vPos(6) & (\draw~2_combout\ & \draw~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw~6_combout\,
	datab => vPos(6),
	datac => \draw~2_combout\,
	datad => \draw~11_combout\,
	combout => \draw~14_combout\);

-- Location: LCCOMB_X17_Y8_N30
\RGB~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~4_combout\ = (\RGB~3_combout\ & (\draw~14_combout\ & (vPos(1) $ (!vPos(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB~3_combout\,
	datab => vPos(1),
	datac => \draw~14_combout\,
	datad => vPos(2),
	combout => \RGB~4_combout\);

-- Location: LCCOMB_X17_Y8_N2
\draw~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~12_combout\ = (vPos(6) & (!vPos(7) & ((!vPos(1)) # (!vPos(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(6),
	datab => vPos(7),
	datac => vPos(0),
	datad => vPos(1),
	combout => \draw~12_combout\);

-- Location: LCCOMB_X17_Y8_N24
\draw~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~13_combout\ = (!\draw~6_combout\ & (\draw~11_combout\ & (\draw~2_combout\ & \draw~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw~6_combout\,
	datab => \draw~11_combout\,
	datac => \draw~2_combout\,
	datad => \draw~12_combout\,
	combout => \draw~13_combout\);

-- Location: LCCOMB_X17_Y8_N16
\RGB~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~5_combout\ = (vPos(8) & (vPos(2) & ((\draw~13_combout\)))) # (!vPos(8) & ((\RGB~4_combout\) # ((!vPos(2) & \draw~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(8),
	datab => vPos(2),
	datac => \RGB~4_combout\,
	datad => \draw~13_combout\,
	combout => \RGB~5_combout\);

-- Location: LCCOMB_X18_Y8_N2
\RGB~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~6_combout\ = (vPos(2) $ (!vPos(3))) # (!\RGB~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(2),
	datab => vPos(3),
	datac => \RGB~5_combout\,
	combout => \RGB~6_combout\);

-- Location: LCCOMB_X18_Y8_N26
\RGB~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~8_combout\ = (\RGB~30_combout\ & (\RGB~7_combout\ & (\videoOn~q\ & \RGB~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB~30_combout\,
	datab => \RGB~7_combout\,
	datac => \videoOn~q\,
	datad => \RGB~6_combout\,
	combout => \RGB~8_combout\);

-- Location: LCCOMB_X18_Y18_N2
\RGB~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~13_combout\ = (!hPos(3) & (!hPos(9) & (!hPos(7) & hPos(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(3),
	datab => hPos(9),
	datac => hPos(7),
	datad => hPos(5),
	combout => \RGB~13_combout\);

-- Location: LCCOMB_X17_Y18_N0
\RGB~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~12_combout\ = (hPos(8) & ((hPos(6) & (hPos(4) & hPos(2))) # (!hPos(6) & (!hPos(4) & !hPos(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(6),
	datab => hPos(4),
	datac => hPos(2),
	datad => hPos(8),
	combout => \RGB~12_combout\);

-- Location: LCCOMB_X17_Y18_N26
\RGB~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~14_combout\ = (\RGB~13_combout\ & (\RGB~12_combout\ & (!\LessThan50~0_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB~13_combout\,
	datab => \RGB~12_combout\,
	datac => \LessThan50~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \RGB~14_combout\);

-- Location: LCCOMB_X16_Y18_N22
\draw~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~24_combout\ = (hPos(2) & (!hPos(1) & !hPos(0))) # (!hPos(2) & (hPos(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(2),
	datac => hPos(1),
	datad => hPos(0),
	combout => \draw~24_combout\);

-- Location: LCCOMB_X16_Y18_N16
\RGB~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~9_combout\ = (hPos(3) & ((hPos(5)) # ((hPos(2) & hPos(6))))) # (!hPos(3) & (((hPos(6) & hPos(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(2),
	datab => hPos(3),
	datac => hPos(6),
	datad => hPos(5),
	combout => \RGB~9_combout\);

-- Location: LCCOMB_X16_Y18_N26
\RGB~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~10_combout\ = (\RGB~9_combout\ & (((!hPos(5) & !\LessThan50~0_combout\)))) # (!\RGB~9_combout\ & (\draw~24_combout\ & (hPos(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw~24_combout\,
	datab => \RGB~9_combout\,
	datac => hPos(5),
	datad => \LessThan50~0_combout\,
	combout => \RGB~10_combout\);

-- Location: LCCOMB_X17_Y18_N8
\draw~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~23_combout\ = (\Equal0~0_combout\ & (hPos(7) & (!hPos(9) & !hPos(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => hPos(7),
	datac => hPos(9),
	datad => hPos(8),
	combout => \draw~23_combout\);

-- Location: LCCOMB_X17_Y18_N14
\RGB~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~11_combout\ = (\RGB~10_combout\ & (\draw~23_combout\ & !hPos(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB~10_combout\,
	datac => \draw~23_combout\,
	datad => hPos(4),
	combout => \RGB~11_combout\);

-- Location: LCCOMB_X16_Y18_N14
\draw~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~30_combout\ = (hPos(2)) # ((hPos(3)) # ((hPos(1)) # (hPos(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(2),
	datab => hPos(3),
	datac => hPos(1),
	datad => hPos(0),
	combout => \draw~30_combout\);

-- Location: LCCOMB_X16_Y18_N30
\LessThan44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan44~0_combout\ = (hPos(3) & ((hPos(2)) # ((hPos(1) & hPos(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(2),
	datab => hPos(3),
	datac => hPos(1),
	datad => hPos(0),
	combout => \LessThan44~0_combout\);

-- Location: LCCOMB_X16_Y18_N28
\draw~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~31_combout\ = (hPos(6) & (hPos(4) & (hPos(5) & !hPos(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(6),
	datab => hPos(4),
	datac => hPos(5),
	datad => hPos(3),
	combout => \draw~31_combout\);

-- Location: LCCOMB_X16_Y18_N12
\draw~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~25_combout\ = (hPos(6) & (!hPos(4) & (!hPos(5) & hPos(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(6),
	datab => hPos(4),
	datac => hPos(5),
	datad => hPos(3),
	combout => \draw~25_combout\);

-- Location: LCCOMB_X16_Y18_N6
\RGB~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~15_combout\ = (\LessThan44~0_combout\ & (\draw~31_combout\ & (\draw~24_combout\))) # (!\LessThan44~0_combout\ & ((\draw~25_combout\) # ((\draw~31_combout\ & \draw~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan44~0_combout\,
	datab => \draw~31_combout\,
	datac => \draw~24_combout\,
	datad => \draw~25_combout\,
	combout => \RGB~15_combout\);

-- Location: LCCOMB_X16_Y18_N24
\draw~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~29_combout\ = (hPos(6)) # ((hPos(5) & (hPos(4))) # (!hPos(5) & ((!\Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(6),
	datab => hPos(4),
	datac => hPos(5),
	datad => \Equal0~3_combout\,
	combout => \draw~29_combout\);

-- Location: LCCOMB_X17_Y18_N22
\RGB~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~16_combout\ = (!\RGB~15_combout\ & ((\draw~29_combout\) # ((\draw~30_combout\ & !hPos(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw~30_combout\,
	datab => hPos(4),
	datac => \RGB~15_combout\,
	datad => \draw~29_combout\,
	combout => \RGB~16_combout\);

-- Location: LCCOMB_X16_Y18_N8
\draw~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~27_combout\ = (hPos(2) & ((hPos(3)) # ((!hPos(1))))) # (!hPos(2) & (((hPos(1)) # (hPos(0))) # (!hPos(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(2),
	datab => hPos(3),
	datac => hPos(1),
	datad => hPos(0),
	combout => \draw~27_combout\);

-- Location: LCCOMB_X17_Y18_N20
\draw~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~28_combout\ = (\draw~27_combout\) # (((!hPos(5)) # (!hPos(6))) # (!hPos(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw~27_combout\,
	datab => hPos(4),
	datac => hPos(6),
	datad => hPos(5),
	combout => \draw~28_combout\);

-- Location: LCCOMB_X17_Y18_N2
\draw~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~26_combout\ = (\Equal0~0_combout\ & (hPos(7) & (!hPos(9) & hPos(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => hPos(7),
	datac => hPos(9),
	datad => hPos(8),
	combout => \draw~26_combout\);

-- Location: LCCOMB_X17_Y18_N4
\RGB~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~17_combout\ = (\RGB~16_combout\ & (!\draw~28_combout\ & (\draw~23_combout\))) # (!\RGB~16_combout\ & ((\draw~26_combout\) # ((!\draw~28_combout\ & \draw~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB~16_combout\,
	datab => \draw~28_combout\,
	datac => \draw~23_combout\,
	datad => \draw~26_combout\,
	combout => \RGB~17_combout\);

-- Location: LCCOMB_X18_Y18_N12
\draw~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~32_combout\ = ((hPos(1) & (hPos(2))) # (!hPos(1) & ((hPos(0)) # (!hPos(2))))) # (!\draw~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(1),
	datab => \draw~25_combout\,
	datac => hPos(2),
	datad => hPos(0),
	combout => \draw~32_combout\);

-- Location: LCCOMB_X17_Y18_N12
\LessThan28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan28~0_combout\ = (\LessThan44~0_combout\ & (hPos(4) & (hPos(6) & hPos(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan44~0_combout\,
	datab => hPos(4),
	datac => hPos(6),
	datad => hPos(5),
	combout => \LessThan28~0_combout\);

-- Location: LCCOMB_X18_Y18_N30
\RGB~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~27_combout\ = (hPos(8) & (!\draw~32_combout\)) # (!hPos(8) & (((!\LessThan27~7_combout\ & !\LessThan28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw~32_combout\,
	datab => hPos(8),
	datac => \LessThan27~7_combout\,
	datad => \LessThan28~0_combout\,
	combout => \RGB~27_combout\);

-- Location: LCCOMB_X18_Y18_N28
\RGB~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~28_combout\ = (!hPos(7) & (!hPos(9) & (\RGB~27_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(7),
	datab => hPos(9),
	datac => \RGB~27_combout\,
	datad => \Equal0~0_combout\,
	combout => \RGB~28_combout\);

-- Location: LCCOMB_X17_Y18_N18
\RGB~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~18_combout\ = (\RGB~14_combout\) # ((\RGB~11_combout\) # ((\RGB~17_combout\) # (\RGB~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB~14_combout\,
	datab => \RGB~11_combout\,
	datac => \RGB~17_combout\,
	datad => \RGB~28_combout\,
	combout => \RGB~18_combout\);

-- Location: LCCOMB_X16_Y18_N4
\RGB~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~19_combout\ = (\RGB~0_combout\ & (\draw~18_combout\ & (!\LessThan47~3_combout\ & \RGB~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB~0_combout\,
	datab => \draw~18_combout\,
	datac => \LessThan47~3_combout\,
	datad => \RGB~18_combout\,
	combout => \RGB~19_combout\);

-- Location: LCCOMB_X18_Y8_N20
\draw~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~10_combout\ = (\draw~9_combout\ & (\draw~2_combout\ & (vPos(8) & !\draw~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw~9_combout\,
	datab => \draw~2_combout\,
	datac => vPos(8),
	datad => \draw~6_combout\,
	combout => \draw~10_combout\);

-- Location: LCCOMB_X18_Y8_N14
\RGB~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~1_combout\ = (vPos(0) & (!vPos(2) & (vPos(1) $ (vPos(7))))) # (!vPos(0) & (vPos(2) $ (((vPos(1)) # (vPos(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(2),
	datab => vPos(1),
	datac => vPos(0),
	datad => vPos(7),
	combout => \RGB~1_combout\);

-- Location: LCCOMB_X18_Y8_N28
\draw~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \draw~8_combout\ = (!vPos(8) & (!vPos(3) & (vPos(4) & \draw~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vPos(8),
	datab => vPos(3),
	datac => vPos(4),
	datad => \draw~7_combout\,
	combout => \draw~8_combout\);

-- Location: LCCOMB_X18_Y8_N12
\RGB~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~2_combout\ = ((!\draw~10_combout\ & !\draw~8_combout\)) # (!\RGB~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draw~10_combout\,
	datac => \RGB~1_combout\,
	datad => \draw~8_combout\,
	combout => \RGB~2_combout\);

-- Location: LCCOMB_X22_Y12_N16
\RGB~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~20_combout\ = ((\RGB~19_combout\) # (!\RGB~2_combout\)) # (!\RGB~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB~8_combout\,
	datac => \RGB~19_combout\,
	datad => \RGB~2_combout\,
	combout => \RGB~20_combout\);

-- Location: FF_X23_Y12_N11
\RGB[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	asdata => \RGB~20_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB[0]~reg0_q\);

-- Location: FF_X22_Y12_N17
\RGB[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \RGB~20_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB[1]~reg0_q\);

-- Location: LCCOMB_X13_Y14_N8
\move|count_idle[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|count_idle[0]~12_combout\ = \move|count_idle\(0) $ (VCC)
-- \move|count_idle[0]~13\ = CARRY(\move|count_idle\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move|count_idle\(0),
	datad => VCC,
	combout => \move|count_idle[0]~12_combout\,
	cout => \move|count_idle[0]~13\);

-- Location: IOIBUF_X9_Y24_N8
\PS2_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS2_CLK,
	o => \PS2_CLK~input_o\);

-- Location: LCCOMB_X8_Y22_N26
\move|sync_ffs[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|sync_ffs[0]~feeder_combout\ = \PS2_CLK~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS2_CLK~input_o\,
	combout => \move|sync_ffs[0]~feeder_combout\);

-- Location: FF_X8_Y22_N27
\move|sync_ffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|sync_ffs[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|sync_ffs\(0));

-- Location: FF_X8_Y22_N31
\move|debounce_ps2_clk|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \move|sync_ffs\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|debounce_ps2_clk|flipflops\(0));

-- Location: FF_X8_Y22_N25
\move|debounce_ps2_clk|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \move|debounce_ps2_clk|flipflops\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|debounce_ps2_clk|flipflops\(1));

-- Location: LCCOMB_X8_Y22_N22
\move|debounce_ps2_clk|counter_out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_clk|counter_out[0]~1_combout\ = (!\move|debounce_ps2_clk|counter_out\(8) & (\move|debounce_ps2_clk|flipflops\(0) $ (!\move|debounce_ps2_clk|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move|debounce_ps2_clk|counter_out\(8),
	datac => \move|debounce_ps2_clk|flipflops\(0),
	datad => \move|debounce_ps2_clk|flipflops\(1),
	combout => \move|debounce_ps2_clk|counter_out[0]~1_combout\);

-- Location: LCCOMB_X8_Y22_N28
\move|debounce_ps2_clk|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_clk|result~1_combout\ = (\move|debounce_ps2_clk|counter_out\(8) & (\move|debounce_ps2_clk|flipflops\(1) $ (!\move|debounce_ps2_clk|flipflops\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move|debounce_ps2_clk|flipflops\(1),
	datac => \move|debounce_ps2_clk|flipflops\(0),
	datad => \move|debounce_ps2_clk|counter_out\(8),
	combout => \move|debounce_ps2_clk|result~1_combout\);

-- Location: LCCOMB_X7_Y22_N0
\move|debounce_ps2_clk|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_clk|Add0~0_combout\ = \move|debounce_ps2_clk|counter_out\(0) $ (VCC)
-- \move|debounce_ps2_clk|Add0~1\ = CARRY(\move|debounce_ps2_clk|counter_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_clk|counter_out\(0),
	datad => VCC,
	combout => \move|debounce_ps2_clk|Add0~0_combout\,
	cout => \move|debounce_ps2_clk|Add0~1\);

-- Location: LCCOMB_X8_Y22_N6
\move|debounce_ps2_clk|counter_out[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_clk|counter_out[0]~9_combout\ = (\move|debounce_ps2_clk|Add0~0_combout\ & ((\move|debounce_ps2_clk|counter_out[0]~1_combout\) # ((\move|debounce_ps2_clk|counter_out\(0) & \move|debounce_ps2_clk|result~1_combout\)))) # 
-- (!\move|debounce_ps2_clk|Add0~0_combout\ & (((\move|debounce_ps2_clk|counter_out\(0) & \move|debounce_ps2_clk|result~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_clk|Add0~0_combout\,
	datab => \move|debounce_ps2_clk|counter_out[0]~1_combout\,
	datac => \move|debounce_ps2_clk|counter_out\(0),
	datad => \move|debounce_ps2_clk|result~1_combout\,
	combout => \move|debounce_ps2_clk|counter_out[0]~9_combout\);

-- Location: FF_X8_Y22_N7
\move|debounce_ps2_clk|counter_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|debounce_ps2_clk|counter_out[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|debounce_ps2_clk|counter_out\(0));

-- Location: LCCOMB_X7_Y22_N2
\move|debounce_ps2_clk|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_clk|Add0~2_combout\ = (\move|debounce_ps2_clk|counter_out\(1) & (!\move|debounce_ps2_clk|Add0~1\)) # (!\move|debounce_ps2_clk|counter_out\(1) & ((\move|debounce_ps2_clk|Add0~1\) # (GND)))
-- \move|debounce_ps2_clk|Add0~3\ = CARRY((!\move|debounce_ps2_clk|Add0~1\) # (!\move|debounce_ps2_clk|counter_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_clk|counter_out\(1),
	datad => VCC,
	cin => \move|debounce_ps2_clk|Add0~1\,
	combout => \move|debounce_ps2_clk|Add0~2_combout\,
	cout => \move|debounce_ps2_clk|Add0~3\);

-- Location: LCCOMB_X7_Y22_N22
\move|debounce_ps2_clk|counter_out[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_clk|counter_out[1]~8_combout\ = (\move|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\move|debounce_ps2_clk|Add0~2_combout\) # ((\move|debounce_ps2_clk|result~1_combout\ & \move|debounce_ps2_clk|counter_out\(1))))) # 
-- (!\move|debounce_ps2_clk|counter_out[0]~1_combout\ & (\move|debounce_ps2_clk|result~1_combout\ & (\move|debounce_ps2_clk|counter_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_clk|counter_out[0]~1_combout\,
	datab => \move|debounce_ps2_clk|result~1_combout\,
	datac => \move|debounce_ps2_clk|counter_out\(1),
	datad => \move|debounce_ps2_clk|Add0~2_combout\,
	combout => \move|debounce_ps2_clk|counter_out[1]~8_combout\);

-- Location: FF_X7_Y22_N23
\move|debounce_ps2_clk|counter_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|debounce_ps2_clk|counter_out[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|debounce_ps2_clk|counter_out\(1));

-- Location: LCCOMB_X7_Y22_N4
\move|debounce_ps2_clk|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_clk|Add0~4_combout\ = (\move|debounce_ps2_clk|counter_out\(2) & (\move|debounce_ps2_clk|Add0~3\ $ (GND))) # (!\move|debounce_ps2_clk|counter_out\(2) & (!\move|debounce_ps2_clk|Add0~3\ & VCC))
-- \move|debounce_ps2_clk|Add0~5\ = CARRY((\move|debounce_ps2_clk|counter_out\(2) & !\move|debounce_ps2_clk|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \move|debounce_ps2_clk|counter_out\(2),
	datad => VCC,
	cin => \move|debounce_ps2_clk|Add0~3\,
	combout => \move|debounce_ps2_clk|Add0~4_combout\,
	cout => \move|debounce_ps2_clk|Add0~5\);

-- Location: LCCOMB_X7_Y22_N20
\move|debounce_ps2_clk|counter_out[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_clk|counter_out[2]~7_combout\ = (\move|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\move|debounce_ps2_clk|Add0~4_combout\) # ((\move|debounce_ps2_clk|counter_out\(2) & \move|debounce_ps2_clk|result~1_combout\)))) # 
-- (!\move|debounce_ps2_clk|counter_out[0]~1_combout\ & (((\move|debounce_ps2_clk|counter_out\(2) & \move|debounce_ps2_clk|result~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_clk|counter_out[0]~1_combout\,
	datab => \move|debounce_ps2_clk|Add0~4_combout\,
	datac => \move|debounce_ps2_clk|counter_out\(2),
	datad => \move|debounce_ps2_clk|result~1_combout\,
	combout => \move|debounce_ps2_clk|counter_out[2]~7_combout\);

-- Location: FF_X7_Y22_N21
\move|debounce_ps2_clk|counter_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|debounce_ps2_clk|counter_out[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|debounce_ps2_clk|counter_out\(2));

-- Location: LCCOMB_X7_Y22_N6
\move|debounce_ps2_clk|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_clk|Add0~6_combout\ = (\move|debounce_ps2_clk|counter_out\(3) & (!\move|debounce_ps2_clk|Add0~5\)) # (!\move|debounce_ps2_clk|counter_out\(3) & ((\move|debounce_ps2_clk|Add0~5\) # (GND)))
-- \move|debounce_ps2_clk|Add0~7\ = CARRY((!\move|debounce_ps2_clk|Add0~5\) # (!\move|debounce_ps2_clk|counter_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_clk|counter_out\(3),
	datad => VCC,
	cin => \move|debounce_ps2_clk|Add0~5\,
	combout => \move|debounce_ps2_clk|Add0~6_combout\,
	cout => \move|debounce_ps2_clk|Add0~7\);

-- Location: LCCOMB_X7_Y22_N26
\move|debounce_ps2_clk|counter_out[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_clk|counter_out[3]~6_combout\ = (\move|debounce_ps2_clk|Add0~6_combout\ & ((\move|debounce_ps2_clk|counter_out[0]~1_combout\) # ((\move|debounce_ps2_clk|result~1_combout\ & \move|debounce_ps2_clk|counter_out\(3))))) # 
-- (!\move|debounce_ps2_clk|Add0~6_combout\ & (\move|debounce_ps2_clk|result~1_combout\ & (\move|debounce_ps2_clk|counter_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_clk|Add0~6_combout\,
	datab => \move|debounce_ps2_clk|result~1_combout\,
	datac => \move|debounce_ps2_clk|counter_out\(3),
	datad => \move|debounce_ps2_clk|counter_out[0]~1_combout\,
	combout => \move|debounce_ps2_clk|counter_out[3]~6_combout\);

-- Location: FF_X7_Y22_N27
\move|debounce_ps2_clk|counter_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|debounce_ps2_clk|counter_out[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|debounce_ps2_clk|counter_out\(3));

-- Location: LCCOMB_X7_Y22_N8
\move|debounce_ps2_clk|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_clk|Add0~8_combout\ = (\move|debounce_ps2_clk|counter_out\(4) & (\move|debounce_ps2_clk|Add0~7\ $ (GND))) # (!\move|debounce_ps2_clk|counter_out\(4) & (!\move|debounce_ps2_clk|Add0~7\ & VCC))
-- \move|debounce_ps2_clk|Add0~9\ = CARRY((\move|debounce_ps2_clk|counter_out\(4) & !\move|debounce_ps2_clk|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_clk|counter_out\(4),
	datad => VCC,
	cin => \move|debounce_ps2_clk|Add0~7\,
	combout => \move|debounce_ps2_clk|Add0~8_combout\,
	cout => \move|debounce_ps2_clk|Add0~9\);

-- Location: LCCOMB_X8_Y22_N20
\move|debounce_ps2_clk|counter_out[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_clk|counter_out[4]~5_combout\ = (\move|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\move|debounce_ps2_clk|Add0~8_combout\) # ((\move|debounce_ps2_clk|result~1_combout\ & \move|debounce_ps2_clk|counter_out\(4))))) # 
-- (!\move|debounce_ps2_clk|counter_out[0]~1_combout\ & (\move|debounce_ps2_clk|result~1_combout\ & (\move|debounce_ps2_clk|counter_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_clk|counter_out[0]~1_combout\,
	datab => \move|debounce_ps2_clk|result~1_combout\,
	datac => \move|debounce_ps2_clk|counter_out\(4),
	datad => \move|debounce_ps2_clk|Add0~8_combout\,
	combout => \move|debounce_ps2_clk|counter_out[4]~5_combout\);

-- Location: FF_X8_Y22_N21
\move|debounce_ps2_clk|counter_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|debounce_ps2_clk|counter_out[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|debounce_ps2_clk|counter_out\(4));

-- Location: LCCOMB_X7_Y22_N10
\move|debounce_ps2_clk|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_clk|Add0~10_combout\ = (\move|debounce_ps2_clk|counter_out\(5) & (!\move|debounce_ps2_clk|Add0~9\)) # (!\move|debounce_ps2_clk|counter_out\(5) & ((\move|debounce_ps2_clk|Add0~9\) # (GND)))
-- \move|debounce_ps2_clk|Add0~11\ = CARRY((!\move|debounce_ps2_clk|Add0~9\) # (!\move|debounce_ps2_clk|counter_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \move|debounce_ps2_clk|counter_out\(5),
	datad => VCC,
	cin => \move|debounce_ps2_clk|Add0~9\,
	combout => \move|debounce_ps2_clk|Add0~10_combout\,
	cout => \move|debounce_ps2_clk|Add0~11\);

-- Location: LCCOMB_X7_Y22_N28
\move|debounce_ps2_clk|counter_out[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_clk|counter_out[5]~4_combout\ = (\move|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\move|debounce_ps2_clk|Add0~10_combout\) # ((\move|debounce_ps2_clk|result~1_combout\ & \move|debounce_ps2_clk|counter_out\(5))))) # 
-- (!\move|debounce_ps2_clk|counter_out[0]~1_combout\ & (\move|debounce_ps2_clk|result~1_combout\ & (\move|debounce_ps2_clk|counter_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_clk|counter_out[0]~1_combout\,
	datab => \move|debounce_ps2_clk|result~1_combout\,
	datac => \move|debounce_ps2_clk|counter_out\(5),
	datad => \move|debounce_ps2_clk|Add0~10_combout\,
	combout => \move|debounce_ps2_clk|counter_out[5]~4_combout\);

-- Location: FF_X7_Y22_N29
\move|debounce_ps2_clk|counter_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|debounce_ps2_clk|counter_out[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|debounce_ps2_clk|counter_out\(5));

-- Location: LCCOMB_X7_Y22_N12
\move|debounce_ps2_clk|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_clk|Add0~12_combout\ = (\move|debounce_ps2_clk|counter_out\(6) & (\move|debounce_ps2_clk|Add0~11\ $ (GND))) # (!\move|debounce_ps2_clk|counter_out\(6) & (!\move|debounce_ps2_clk|Add0~11\ & VCC))
-- \move|debounce_ps2_clk|Add0~13\ = CARRY((\move|debounce_ps2_clk|counter_out\(6) & !\move|debounce_ps2_clk|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_clk|counter_out\(6),
	datad => VCC,
	cin => \move|debounce_ps2_clk|Add0~11\,
	combout => \move|debounce_ps2_clk|Add0~12_combout\,
	cout => \move|debounce_ps2_clk|Add0~13\);

-- Location: LCCOMB_X7_Y22_N30
\move|debounce_ps2_clk|counter_out[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_clk|counter_out[6]~3_combout\ = (\move|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\move|debounce_ps2_clk|Add0~12_combout\) # ((\move|debounce_ps2_clk|result~1_combout\ & \move|debounce_ps2_clk|counter_out\(6))))) # 
-- (!\move|debounce_ps2_clk|counter_out[0]~1_combout\ & (\move|debounce_ps2_clk|result~1_combout\ & (\move|debounce_ps2_clk|counter_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_clk|counter_out[0]~1_combout\,
	datab => \move|debounce_ps2_clk|result~1_combout\,
	datac => \move|debounce_ps2_clk|counter_out\(6),
	datad => \move|debounce_ps2_clk|Add0~12_combout\,
	combout => \move|debounce_ps2_clk|counter_out[6]~3_combout\);

-- Location: FF_X7_Y22_N31
\move|debounce_ps2_clk|counter_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|debounce_ps2_clk|counter_out[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|debounce_ps2_clk|counter_out\(6));

-- Location: LCCOMB_X7_Y22_N14
\move|debounce_ps2_clk|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_clk|Add0~14_combout\ = (\move|debounce_ps2_clk|counter_out\(7) & (!\move|debounce_ps2_clk|Add0~13\)) # (!\move|debounce_ps2_clk|counter_out\(7) & ((\move|debounce_ps2_clk|Add0~13\) # (GND)))
-- \move|debounce_ps2_clk|Add0~15\ = CARRY((!\move|debounce_ps2_clk|Add0~13\) # (!\move|debounce_ps2_clk|counter_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \move|debounce_ps2_clk|counter_out\(7),
	datad => VCC,
	cin => \move|debounce_ps2_clk|Add0~13\,
	combout => \move|debounce_ps2_clk|Add0~14_combout\,
	cout => \move|debounce_ps2_clk|Add0~15\);

-- Location: LCCOMB_X7_Y22_N24
\move|debounce_ps2_clk|counter_out[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_clk|counter_out[7]~2_combout\ = (\move|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\move|debounce_ps2_clk|Add0~14_combout\) # ((\move|debounce_ps2_clk|result~1_combout\ & \move|debounce_ps2_clk|counter_out\(7))))) # 
-- (!\move|debounce_ps2_clk|counter_out[0]~1_combout\ & (\move|debounce_ps2_clk|result~1_combout\ & (\move|debounce_ps2_clk|counter_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_clk|counter_out[0]~1_combout\,
	datab => \move|debounce_ps2_clk|result~1_combout\,
	datac => \move|debounce_ps2_clk|counter_out\(7),
	datad => \move|debounce_ps2_clk|Add0~14_combout\,
	combout => \move|debounce_ps2_clk|counter_out[7]~2_combout\);

-- Location: FF_X7_Y22_N25
\move|debounce_ps2_clk|counter_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|debounce_ps2_clk|counter_out[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|debounce_ps2_clk|counter_out\(7));

-- Location: LCCOMB_X7_Y22_N16
\move|debounce_ps2_clk|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_clk|Add0~16_combout\ = \move|debounce_ps2_clk|Add0~15\ $ (!\move|debounce_ps2_clk|counter_out\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \move|debounce_ps2_clk|counter_out\(8),
	cin => \move|debounce_ps2_clk|Add0~15\,
	combout => \move|debounce_ps2_clk|Add0~16_combout\);

-- Location: LCCOMB_X7_Y22_N18
\move|debounce_ps2_clk|counter_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_clk|counter_out~0_combout\ = (\move|debounce_ps2_clk|counter_out\(8) & (\move|debounce_ps2_clk|flipflops\(0) $ ((!\move|debounce_ps2_clk|flipflops\(1))))) # (!\move|debounce_ps2_clk|counter_out\(8) & 
-- (\move|debounce_ps2_clk|Add0~16_combout\ & (\move|debounce_ps2_clk|flipflops\(0) $ (!\move|debounce_ps2_clk|flipflops\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_clk|flipflops\(0),
	datab => \move|debounce_ps2_clk|flipflops\(1),
	datac => \move|debounce_ps2_clk|counter_out\(8),
	datad => \move|debounce_ps2_clk|Add0~16_combout\,
	combout => \move|debounce_ps2_clk|counter_out~0_combout\);

-- Location: FF_X7_Y22_N19
\move|debounce_ps2_clk|counter_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|debounce_ps2_clk|counter_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|debounce_ps2_clk|counter_out\(8));

-- Location: LCCOMB_X8_Y22_N12
\move|debounce_ps2_clk|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_clk|result~0_combout\ = (\move|debounce_ps2_clk|result~q\ & ((\move|debounce_ps2_clk|flipflops\(1)) # ((\move|debounce_ps2_clk|flipflops\(0)) # (!\move|debounce_ps2_clk|counter_out\(8))))) # (!\move|debounce_ps2_clk|result~q\ & 
-- (\move|debounce_ps2_clk|flipflops\(1) & (\move|debounce_ps2_clk|flipflops\(0) & \move|debounce_ps2_clk|counter_out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_clk|result~q\,
	datab => \move|debounce_ps2_clk|flipflops\(1),
	datac => \move|debounce_ps2_clk|flipflops\(0),
	datad => \move|debounce_ps2_clk|counter_out\(8),
	combout => \move|debounce_ps2_clk|result~0_combout\);

-- Location: LCCOMB_X10_Y18_N30
\move|debounce_ps2_clk|result~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_clk|result~feeder_combout\ = \move|debounce_ps2_clk|result~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move|debounce_ps2_clk|result~0_combout\,
	combout => \move|debounce_ps2_clk|result~feeder_combout\);

-- Location: FF_X10_Y18_N31
\move|debounce_ps2_clk|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|debounce_ps2_clk|result~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|debounce_ps2_clk|result~q\);

-- Location: LCCOMB_X13_Y14_N0
\move|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|Equal0~0_combout\ = (!\move|count_idle\(1) & (\move|count_idle\(3) & (\move|count_idle\(0) & !\move|count_idle\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|count_idle\(1),
	datab => \move|count_idle\(3),
	datac => \move|count_idle\(0),
	datad => \move|count_idle\(2),
	combout => \move|Equal0~0_combout\);

-- Location: LCCOMB_X13_Y14_N18
\move|count_idle[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|count_idle[5]~23_combout\ = (\move|count_idle\(5) & (!\move|count_idle[4]~22\)) # (!\move|count_idle\(5) & ((\move|count_idle[4]~22\) # (GND)))
-- \move|count_idle[5]~24\ = CARRY((!\move|count_idle[4]~22\) # (!\move|count_idle\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \move|count_idle\(5),
	datad => VCC,
	cin => \move|count_idle[4]~22\,
	combout => \move|count_idle[5]~23_combout\,
	cout => \move|count_idle[5]~24\);

-- Location: LCCOMB_X13_Y14_N20
\move|count_idle[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|count_idle[6]~25_combout\ = (\move|count_idle\(6) & (\move|count_idle[5]~24\ $ (GND))) # (!\move|count_idle\(6) & (!\move|count_idle[5]~24\ & VCC))
-- \move|count_idle[6]~26\ = CARRY((\move|count_idle\(6) & !\move|count_idle[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \move|count_idle\(6),
	datad => VCC,
	cin => \move|count_idle[5]~24\,
	combout => \move|count_idle[6]~25_combout\,
	cout => \move|count_idle[6]~26\);

-- Location: FF_X13_Y14_N21
\move|count_idle[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|count_idle[6]~25_combout\,
	sclr => \move|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \move|count_idle[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|count_idle\(6));

-- Location: LCCOMB_X13_Y14_N22
\move|count_idle[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|count_idle[7]~27_combout\ = (\move|count_idle\(7) & (!\move|count_idle[6]~26\)) # (!\move|count_idle\(7) & ((\move|count_idle[6]~26\) # (GND)))
-- \move|count_idle[7]~28\ = CARRY((!\move|count_idle[6]~26\) # (!\move|count_idle\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \move|count_idle\(7),
	datad => VCC,
	cin => \move|count_idle[6]~26\,
	combout => \move|count_idle[7]~27_combout\,
	cout => \move|count_idle[7]~28\);

-- Location: FF_X13_Y14_N23
\move|count_idle[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|count_idle[7]~27_combout\,
	sclr => \move|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \move|count_idle[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|count_idle\(7));

-- Location: LCCOMB_X13_Y14_N24
\move|count_idle[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|count_idle[8]~29_combout\ = (\move|count_idle\(8) & (\move|count_idle[7]~28\ $ (GND))) # (!\move|count_idle\(8) & (!\move|count_idle[7]~28\ & VCC))
-- \move|count_idle[8]~30\ = CARRY((\move|count_idle\(8) & !\move|count_idle[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \move|count_idle\(8),
	datad => VCC,
	cin => \move|count_idle[7]~28\,
	combout => \move|count_idle[8]~29_combout\,
	cout => \move|count_idle[8]~30\);

-- Location: FF_X13_Y14_N25
\move|count_idle[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|count_idle[8]~29_combout\,
	sclr => \move|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \move|count_idle[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|count_idle\(8));

-- Location: LCCOMB_X13_Y14_N26
\move|count_idle[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|count_idle[9]~31_combout\ = (\move|count_idle\(9) & (!\move|count_idle[8]~30\)) # (!\move|count_idle\(9) & ((\move|count_idle[8]~30\) # (GND)))
-- \move|count_idle[9]~32\ = CARRY((!\move|count_idle[8]~30\) # (!\move|count_idle\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \move|count_idle\(9),
	datad => VCC,
	cin => \move|count_idle[8]~30\,
	combout => \move|count_idle[9]~31_combout\,
	cout => \move|count_idle[9]~32\);

-- Location: FF_X13_Y14_N27
\move|count_idle[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|count_idle[9]~31_combout\,
	sclr => \move|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \move|count_idle[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|count_idle\(9));

-- Location: LCCOMB_X13_Y14_N28
\move|count_idle[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|count_idle[10]~33_combout\ = (\move|count_idle\(10) & (\move|count_idle[9]~32\ $ (GND))) # (!\move|count_idle\(10) & (!\move|count_idle[9]~32\ & VCC))
-- \move|count_idle[10]~34\ = CARRY((\move|count_idle\(10) & !\move|count_idle[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \move|count_idle\(10),
	datad => VCC,
	cin => \move|count_idle[9]~32\,
	combout => \move|count_idle[10]~33_combout\,
	cout => \move|count_idle[10]~34\);

-- Location: FF_X13_Y14_N29
\move|count_idle[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|count_idle[10]~33_combout\,
	sclr => \move|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \move|count_idle[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|count_idle\(10));

-- Location: LCCOMB_X13_Y14_N30
\move|count_idle[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|count_idle[11]~35_combout\ = \move|count_idle[10]~34\ $ (\move|count_idle\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \move|count_idle\(11),
	cin => \move|count_idle[10]~34\,
	combout => \move|count_idle[11]~35_combout\);

-- Location: FF_X13_Y14_N31
\move|count_idle[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|count_idle[11]~35_combout\,
	sclr => \move|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \move|count_idle[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|count_idle\(11));

-- Location: LCCOMB_X13_Y14_N4
\move|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|Equal0~2_combout\ = (\move|count_idle\(9) & (!\move|count_idle\(10) & (\move|count_idle\(11) & !\move|count_idle\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|count_idle\(9),
	datab => \move|count_idle\(10),
	datac => \move|count_idle\(11),
	datad => \move|count_idle\(8),
	combout => \move|Equal0~2_combout\);

-- Location: LCCOMB_X13_Y14_N2
\move|count_idle[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|count_idle[11]~14_combout\ = (((!\move|Equal0~1_combout\) # (!\move|Equal0~2_combout\)) # (!\move|Equal0~0_combout\)) # (!\move|debounce_ps2_clk|result~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_clk|result~q\,
	datab => \move|Equal0~0_combout\,
	datac => \move|Equal0~2_combout\,
	datad => \move|Equal0~1_combout\,
	combout => \move|count_idle[11]~14_combout\);

-- Location: FF_X13_Y14_N9
\move|count_idle[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|count_idle[0]~12_combout\,
	sclr => \move|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \move|count_idle[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|count_idle\(0));

-- Location: LCCOMB_X13_Y14_N10
\move|count_idle[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|count_idle[1]~15_combout\ = (\move|count_idle\(1) & (!\move|count_idle[0]~13\)) # (!\move|count_idle\(1) & ((\move|count_idle[0]~13\) # (GND)))
-- \move|count_idle[1]~16\ = CARRY((!\move|count_idle[0]~13\) # (!\move|count_idle\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \move|count_idle\(1),
	datad => VCC,
	cin => \move|count_idle[0]~13\,
	combout => \move|count_idle[1]~15_combout\,
	cout => \move|count_idle[1]~16\);

-- Location: FF_X13_Y14_N11
\move|count_idle[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|count_idle[1]~15_combout\,
	sclr => \move|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \move|count_idle[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|count_idle\(1));

-- Location: LCCOMB_X13_Y14_N12
\move|count_idle[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|count_idle[2]~17_combout\ = (\move|count_idle\(2) & (\move|count_idle[1]~16\ $ (GND))) # (!\move|count_idle\(2) & (!\move|count_idle[1]~16\ & VCC))
-- \move|count_idle[2]~18\ = CARRY((\move|count_idle\(2) & !\move|count_idle[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \move|count_idle\(2),
	datad => VCC,
	cin => \move|count_idle[1]~16\,
	combout => \move|count_idle[2]~17_combout\,
	cout => \move|count_idle[2]~18\);

-- Location: FF_X13_Y14_N13
\move|count_idle[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|count_idle[2]~17_combout\,
	sclr => \move|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \move|count_idle[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|count_idle\(2));

-- Location: LCCOMB_X13_Y14_N14
\move|count_idle[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|count_idle[3]~19_combout\ = (\move|count_idle\(3) & (!\move|count_idle[2]~18\)) # (!\move|count_idle\(3) & ((\move|count_idle[2]~18\) # (GND)))
-- \move|count_idle[3]~20\ = CARRY((!\move|count_idle[2]~18\) # (!\move|count_idle\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \move|count_idle\(3),
	datad => VCC,
	cin => \move|count_idle[2]~18\,
	combout => \move|count_idle[3]~19_combout\,
	cout => \move|count_idle[3]~20\);

-- Location: FF_X13_Y14_N15
\move|count_idle[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|count_idle[3]~19_combout\,
	sclr => \move|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \move|count_idle[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|count_idle\(3));

-- Location: LCCOMB_X13_Y14_N16
\move|count_idle[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|count_idle[4]~21_combout\ = (\move|count_idle\(4) & (\move|count_idle[3]~20\ $ (GND))) # (!\move|count_idle\(4) & (!\move|count_idle[3]~20\ & VCC))
-- \move|count_idle[4]~22\ = CARRY((\move|count_idle\(4) & !\move|count_idle[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \move|count_idle\(4),
	datad => VCC,
	cin => \move|count_idle[3]~20\,
	combout => \move|count_idle[4]~21_combout\,
	cout => \move|count_idle[4]~22\);

-- Location: FF_X13_Y14_N17
\move|count_idle[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|count_idle[4]~21_combout\,
	sclr => \move|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \move|count_idle[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|count_idle\(4));

-- Location: FF_X13_Y14_N19
\move|count_idle[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|count_idle[5]~23_combout\,
	sclr => \move|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \move|count_idle[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|count_idle\(5));

-- Location: LCCOMB_X13_Y14_N6
\move|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|Equal0~1_combout\ = (!\move|count_idle\(5) & (\move|count_idle\(4) & (\move|count_idle\(7) & \move|count_idle\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|count_idle\(5),
	datab => \move|count_idle\(4),
	datac => \move|count_idle\(7),
	datad => \move|count_idle\(6),
	combout => \move|Equal0~1_combout\);

-- Location: CLKCTRL_G0
\move|debounce_ps2_clk|result~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \move|debounce_ps2_clk|result~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \move|debounce_ps2_clk|result~clkctrl_outclk\);

-- Location: IOIBUF_X13_Y0_N15
\PS2_DAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS2_DAT,
	o => \PS2_DAT~input_o\);

-- Location: FF_X11_Y16_N29
\move|sync_ffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \PS2_DAT~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|sync_ffs\(1));

-- Location: LCCOMB_X11_Y16_N2
\move|debounce_ps2_data|flipflops[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_data|flipflops[0]~feeder_combout\ = \move|sync_ffs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move|sync_ffs\(1),
	combout => \move|debounce_ps2_data|flipflops[0]~feeder_combout\);

-- Location: FF_X11_Y16_N3
\move|debounce_ps2_data|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|debounce_ps2_data|flipflops[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|debounce_ps2_data|flipflops\(0));

-- Location: LCCOMB_X11_Y16_N8
\move|debounce_ps2_data|flipflops[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_data|flipflops[1]~feeder_combout\ = \move|debounce_ps2_data|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move|debounce_ps2_data|flipflops\(0),
	combout => \move|debounce_ps2_data|flipflops[1]~feeder_combout\);

-- Location: FF_X11_Y16_N9
\move|debounce_ps2_data|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|debounce_ps2_data|flipflops[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|debounce_ps2_data|flipflops\(1));

-- Location: LCCOMB_X11_Y16_N30
\move|debounce_ps2_data|counter_out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_data|counter_out[0]~1_combout\ = (!\move|debounce_ps2_data|counter_out\(8) & (\move|debounce_ps2_data|flipflops\(0) $ (!\move|debounce_ps2_data|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move|debounce_ps2_data|flipflops\(0),
	datac => \move|debounce_ps2_data|flipflops\(1),
	datad => \move|debounce_ps2_data|counter_out\(8),
	combout => \move|debounce_ps2_data|counter_out[0]~1_combout\);

-- Location: LCCOMB_X11_Y16_N24
\move|debounce_ps2_data|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_data|result~1_combout\ = (\move|debounce_ps2_data|counter_out\(8) & (\move|debounce_ps2_data|flipflops\(0) $ (!\move|debounce_ps2_data|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move|debounce_ps2_data|flipflops\(0),
	datac => \move|debounce_ps2_data|flipflops\(1),
	datad => \move|debounce_ps2_data|counter_out\(8),
	combout => \move|debounce_ps2_data|result~1_combout\);

-- Location: LCCOMB_X12_Y16_N4
\move|debounce_ps2_data|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_data|Add0~0_combout\ = \move|debounce_ps2_data|counter_out\(0) $ (VCC)
-- \move|debounce_ps2_data|Add0~1\ = CARRY(\move|debounce_ps2_data|counter_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_data|counter_out\(0),
	datad => VCC,
	combout => \move|debounce_ps2_data|Add0~0_combout\,
	cout => \move|debounce_ps2_data|Add0~1\);

-- Location: LCCOMB_X11_Y16_N16
\move|debounce_ps2_data|counter_out[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_data|counter_out[0]~9_combout\ = (\move|debounce_ps2_data|counter_out\(0) & ((\move|debounce_ps2_data|result~1_combout\) # ((\move|debounce_ps2_data|counter_out[0]~1_combout\ & \move|debounce_ps2_data|Add0~0_combout\)))) # 
-- (!\move|debounce_ps2_data|counter_out\(0) & (((\move|debounce_ps2_data|counter_out[0]~1_combout\ & \move|debounce_ps2_data|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_data|counter_out\(0),
	datab => \move|debounce_ps2_data|result~1_combout\,
	datac => \move|debounce_ps2_data|counter_out[0]~1_combout\,
	datad => \move|debounce_ps2_data|Add0~0_combout\,
	combout => \move|debounce_ps2_data|counter_out[0]~9_combout\);

-- Location: FF_X12_Y16_N11
\move|debounce_ps2_data|counter_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \move|debounce_ps2_data|counter_out[0]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|debounce_ps2_data|counter_out\(0));

-- Location: LCCOMB_X12_Y16_N6
\move|debounce_ps2_data|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_data|Add0~2_combout\ = (\move|debounce_ps2_data|counter_out\(1) & (!\move|debounce_ps2_data|Add0~1\)) # (!\move|debounce_ps2_data|counter_out\(1) & ((\move|debounce_ps2_data|Add0~1\) # (GND)))
-- \move|debounce_ps2_data|Add0~3\ = CARRY((!\move|debounce_ps2_data|Add0~1\) # (!\move|debounce_ps2_data|counter_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_data|counter_out\(1),
	datad => VCC,
	cin => \move|debounce_ps2_data|Add0~1\,
	combout => \move|debounce_ps2_data|Add0~2_combout\,
	cout => \move|debounce_ps2_data|Add0~3\);

-- Location: LCCOMB_X12_Y16_N22
\move|debounce_ps2_data|counter_out[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_data|counter_out[1]~8_combout\ = (\move|debounce_ps2_data|Add0~2_combout\ & ((\move|debounce_ps2_data|counter_out[0]~1_combout\) # ((\move|debounce_ps2_data|result~1_combout\ & \move|debounce_ps2_data|counter_out\(1))))) # 
-- (!\move|debounce_ps2_data|Add0~2_combout\ & (\move|debounce_ps2_data|result~1_combout\ & (\move|debounce_ps2_data|counter_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_data|Add0~2_combout\,
	datab => \move|debounce_ps2_data|result~1_combout\,
	datac => \move|debounce_ps2_data|counter_out\(1),
	datad => \move|debounce_ps2_data|counter_out[0]~1_combout\,
	combout => \move|debounce_ps2_data|counter_out[1]~8_combout\);

-- Location: FF_X12_Y16_N23
\move|debounce_ps2_data|counter_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|debounce_ps2_data|counter_out[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|debounce_ps2_data|counter_out\(1));

-- Location: LCCOMB_X12_Y16_N8
\move|debounce_ps2_data|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_data|Add0~4_combout\ = (\move|debounce_ps2_data|counter_out\(2) & (\move|debounce_ps2_data|Add0~3\ $ (GND))) # (!\move|debounce_ps2_data|counter_out\(2) & (!\move|debounce_ps2_data|Add0~3\ & VCC))
-- \move|debounce_ps2_data|Add0~5\ = CARRY((\move|debounce_ps2_data|counter_out\(2) & !\move|debounce_ps2_data|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \move|debounce_ps2_data|counter_out\(2),
	datad => VCC,
	cin => \move|debounce_ps2_data|Add0~3\,
	combout => \move|debounce_ps2_data|Add0~4_combout\,
	cout => \move|debounce_ps2_data|Add0~5\);

-- Location: LCCOMB_X12_Y16_N0
\move|debounce_ps2_data|counter_out[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_data|counter_out[2]~7_combout\ = (\move|debounce_ps2_data|counter_out[0]~1_combout\ & ((\move|debounce_ps2_data|Add0~4_combout\) # ((\move|debounce_ps2_data|counter_out\(2) & \move|debounce_ps2_data|result~1_combout\)))) # 
-- (!\move|debounce_ps2_data|counter_out[0]~1_combout\ & (((\move|debounce_ps2_data|counter_out\(2) & \move|debounce_ps2_data|result~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_data|counter_out[0]~1_combout\,
	datab => \move|debounce_ps2_data|Add0~4_combout\,
	datac => \move|debounce_ps2_data|counter_out\(2),
	datad => \move|debounce_ps2_data|result~1_combout\,
	combout => \move|debounce_ps2_data|counter_out[2]~7_combout\);

-- Location: FF_X12_Y16_N1
\move|debounce_ps2_data|counter_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|debounce_ps2_data|counter_out[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|debounce_ps2_data|counter_out\(2));

-- Location: LCCOMB_X12_Y16_N10
\move|debounce_ps2_data|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_data|Add0~6_combout\ = (\move|debounce_ps2_data|counter_out\(3) & (!\move|debounce_ps2_data|Add0~5\)) # (!\move|debounce_ps2_data|counter_out\(3) & ((\move|debounce_ps2_data|Add0~5\) # (GND)))
-- \move|debounce_ps2_data|Add0~7\ = CARRY((!\move|debounce_ps2_data|Add0~5\) # (!\move|debounce_ps2_data|counter_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_data|counter_out\(3),
	datad => VCC,
	cin => \move|debounce_ps2_data|Add0~5\,
	combout => \move|debounce_ps2_data|Add0~6_combout\,
	cout => \move|debounce_ps2_data|Add0~7\);

-- Location: LCCOMB_X12_Y16_N26
\move|debounce_ps2_data|counter_out[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_data|counter_out[3]~6_combout\ = (\move|debounce_ps2_data|result~1_combout\ & ((\move|debounce_ps2_data|counter_out\(3)) # ((\move|debounce_ps2_data|Add0~6_combout\ & \move|debounce_ps2_data|counter_out[0]~1_combout\)))) # 
-- (!\move|debounce_ps2_data|result~1_combout\ & (\move|debounce_ps2_data|Add0~6_combout\ & ((\move|debounce_ps2_data|counter_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_data|result~1_combout\,
	datab => \move|debounce_ps2_data|Add0~6_combout\,
	datac => \move|debounce_ps2_data|counter_out\(3),
	datad => \move|debounce_ps2_data|counter_out[0]~1_combout\,
	combout => \move|debounce_ps2_data|counter_out[3]~6_combout\);

-- Location: FF_X12_Y16_N27
\move|debounce_ps2_data|counter_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|debounce_ps2_data|counter_out[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|debounce_ps2_data|counter_out\(3));

-- Location: LCCOMB_X12_Y16_N12
\move|debounce_ps2_data|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_data|Add0~8_combout\ = (\move|debounce_ps2_data|counter_out\(4) & (\move|debounce_ps2_data|Add0~7\ $ (GND))) # (!\move|debounce_ps2_data|counter_out\(4) & (!\move|debounce_ps2_data|Add0~7\ & VCC))
-- \move|debounce_ps2_data|Add0~9\ = CARRY((\move|debounce_ps2_data|counter_out\(4) & !\move|debounce_ps2_data|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \move|debounce_ps2_data|counter_out\(4),
	datad => VCC,
	cin => \move|debounce_ps2_data|Add0~7\,
	combout => \move|debounce_ps2_data|Add0~8_combout\,
	cout => \move|debounce_ps2_data|Add0~9\);

-- Location: LCCOMB_X11_Y16_N6
\move|debounce_ps2_data|counter_out[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_data|counter_out[4]~5_combout\ = (\move|debounce_ps2_data|counter_out[0]~1_combout\ & ((\move|debounce_ps2_data|Add0~8_combout\) # ((\move|debounce_ps2_data|result~1_combout\ & \move|debounce_ps2_data|counter_out\(4))))) # 
-- (!\move|debounce_ps2_data|counter_out[0]~1_combout\ & (\move|debounce_ps2_data|result~1_combout\ & (\move|debounce_ps2_data|counter_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_data|counter_out[0]~1_combout\,
	datab => \move|debounce_ps2_data|result~1_combout\,
	datac => \move|debounce_ps2_data|counter_out\(4),
	datad => \move|debounce_ps2_data|Add0~8_combout\,
	combout => \move|debounce_ps2_data|counter_out[4]~5_combout\);

-- Location: FF_X11_Y16_N7
\move|debounce_ps2_data|counter_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|debounce_ps2_data|counter_out[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|debounce_ps2_data|counter_out\(4));

-- Location: LCCOMB_X12_Y16_N14
\move|debounce_ps2_data|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_data|Add0~10_combout\ = (\move|debounce_ps2_data|counter_out\(5) & (!\move|debounce_ps2_data|Add0~9\)) # (!\move|debounce_ps2_data|counter_out\(5) & ((\move|debounce_ps2_data|Add0~9\) # (GND)))
-- \move|debounce_ps2_data|Add0~11\ = CARRY((!\move|debounce_ps2_data|Add0~9\) # (!\move|debounce_ps2_data|counter_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \move|debounce_ps2_data|counter_out\(5),
	datad => VCC,
	cin => \move|debounce_ps2_data|Add0~9\,
	combout => \move|debounce_ps2_data|Add0~10_combout\,
	cout => \move|debounce_ps2_data|Add0~11\);

-- Location: LCCOMB_X12_Y16_N28
\move|debounce_ps2_data|counter_out[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_data|counter_out[5]~4_combout\ = (\move|debounce_ps2_data|counter_out[0]~1_combout\ & ((\move|debounce_ps2_data|Add0~10_combout\) # ((\move|debounce_ps2_data|result~1_combout\ & \move|debounce_ps2_data|counter_out\(5))))) # 
-- (!\move|debounce_ps2_data|counter_out[0]~1_combout\ & (\move|debounce_ps2_data|result~1_combout\ & (\move|debounce_ps2_data|counter_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_data|counter_out[0]~1_combout\,
	datab => \move|debounce_ps2_data|result~1_combout\,
	datac => \move|debounce_ps2_data|counter_out\(5),
	datad => \move|debounce_ps2_data|Add0~10_combout\,
	combout => \move|debounce_ps2_data|counter_out[5]~4_combout\);

-- Location: FF_X12_Y16_N29
\move|debounce_ps2_data|counter_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|debounce_ps2_data|counter_out[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|debounce_ps2_data|counter_out\(5));

-- Location: LCCOMB_X12_Y16_N16
\move|debounce_ps2_data|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_data|Add0~12_combout\ = (\move|debounce_ps2_data|counter_out\(6) & (\move|debounce_ps2_data|Add0~11\ $ (GND))) # (!\move|debounce_ps2_data|counter_out\(6) & (!\move|debounce_ps2_data|Add0~11\ & VCC))
-- \move|debounce_ps2_data|Add0~13\ = CARRY((\move|debounce_ps2_data|counter_out\(6) & !\move|debounce_ps2_data|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_data|counter_out\(6),
	datad => VCC,
	cin => \move|debounce_ps2_data|Add0~11\,
	combout => \move|debounce_ps2_data|Add0~12_combout\,
	cout => \move|debounce_ps2_data|Add0~13\);

-- Location: LCCOMB_X12_Y16_N30
\move|debounce_ps2_data|counter_out[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_data|counter_out[6]~3_combout\ = (\move|debounce_ps2_data|counter_out[0]~1_combout\ & ((\move|debounce_ps2_data|Add0~12_combout\) # ((\move|debounce_ps2_data|result~1_combout\ & \move|debounce_ps2_data|counter_out\(6))))) # 
-- (!\move|debounce_ps2_data|counter_out[0]~1_combout\ & (\move|debounce_ps2_data|result~1_combout\ & (\move|debounce_ps2_data|counter_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_data|counter_out[0]~1_combout\,
	datab => \move|debounce_ps2_data|result~1_combout\,
	datac => \move|debounce_ps2_data|counter_out\(6),
	datad => \move|debounce_ps2_data|Add0~12_combout\,
	combout => \move|debounce_ps2_data|counter_out[6]~3_combout\);

-- Location: FF_X12_Y16_N31
\move|debounce_ps2_data|counter_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|debounce_ps2_data|counter_out[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|debounce_ps2_data|counter_out\(6));

-- Location: LCCOMB_X12_Y16_N18
\move|debounce_ps2_data|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_data|Add0~14_combout\ = (\move|debounce_ps2_data|counter_out\(7) & (!\move|debounce_ps2_data|Add0~13\)) # (!\move|debounce_ps2_data|counter_out\(7) & ((\move|debounce_ps2_data|Add0~13\) # (GND)))
-- \move|debounce_ps2_data|Add0~15\ = CARRY((!\move|debounce_ps2_data|Add0~13\) # (!\move|debounce_ps2_data|counter_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \move|debounce_ps2_data|counter_out\(7),
	datad => VCC,
	cin => \move|debounce_ps2_data|Add0~13\,
	combout => \move|debounce_ps2_data|Add0~14_combout\,
	cout => \move|debounce_ps2_data|Add0~15\);

-- Location: LCCOMB_X12_Y16_N2
\move|debounce_ps2_data|counter_out[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_data|counter_out[7]~2_combout\ = (\move|debounce_ps2_data|counter_out[0]~1_combout\ & ((\move|debounce_ps2_data|Add0~14_combout\) # ((\move|debounce_ps2_data|result~1_combout\ & \move|debounce_ps2_data|counter_out\(7))))) # 
-- (!\move|debounce_ps2_data|counter_out[0]~1_combout\ & (\move|debounce_ps2_data|result~1_combout\ & (\move|debounce_ps2_data|counter_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_data|counter_out[0]~1_combout\,
	datab => \move|debounce_ps2_data|result~1_combout\,
	datac => \move|debounce_ps2_data|counter_out\(7),
	datad => \move|debounce_ps2_data|Add0~14_combout\,
	combout => \move|debounce_ps2_data|counter_out[7]~2_combout\);

-- Location: FF_X12_Y16_N3
\move|debounce_ps2_data|counter_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|debounce_ps2_data|counter_out[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|debounce_ps2_data|counter_out\(7));

-- Location: LCCOMB_X12_Y16_N20
\move|debounce_ps2_data|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_data|Add0~16_combout\ = \move|debounce_ps2_data|Add0~15\ $ (!\move|debounce_ps2_data|counter_out\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \move|debounce_ps2_data|counter_out\(8),
	cin => \move|debounce_ps2_data|Add0~15\,
	combout => \move|debounce_ps2_data|Add0~16_combout\);

-- Location: LCCOMB_X12_Y16_N24
\move|debounce_ps2_data|counter_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_data|counter_out~0_combout\ = (\move|debounce_ps2_data|counter_out\(8) & (\move|debounce_ps2_data|flipflops\(1) $ ((!\move|debounce_ps2_data|flipflops\(0))))) # (!\move|debounce_ps2_data|counter_out\(8) & 
-- (\move|debounce_ps2_data|Add0~16_combout\ & (\move|debounce_ps2_data|flipflops\(1) $ (!\move|debounce_ps2_data|flipflops\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_data|flipflops\(1),
	datab => \move|debounce_ps2_data|flipflops\(0),
	datac => \move|debounce_ps2_data|counter_out\(8),
	datad => \move|debounce_ps2_data|Add0~16_combout\,
	combout => \move|debounce_ps2_data|counter_out~0_combout\);

-- Location: FF_X12_Y16_N25
\move|debounce_ps2_data|counter_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|debounce_ps2_data|counter_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|debounce_ps2_data|counter_out\(8));

-- Location: LCCOMB_X17_Y14_N4
\move|debounce_ps2_data|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|debounce_ps2_data|result~0_combout\ = (\move|debounce_ps2_data|counter_out\(8) & ((\move|debounce_ps2_data|flipflops\(0) & ((\move|debounce_ps2_data|result~q\) # (\move|debounce_ps2_data|flipflops\(1)))) # (!\move|debounce_ps2_data|flipflops\(0) & 
-- (\move|debounce_ps2_data|result~q\ & \move|debounce_ps2_data|flipflops\(1))))) # (!\move|debounce_ps2_data|counter_out\(8) & (((\move|debounce_ps2_data|result~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|debounce_ps2_data|counter_out\(8),
	datab => \move|debounce_ps2_data|flipflops\(0),
	datac => \move|debounce_ps2_data|result~q\,
	datad => \move|debounce_ps2_data|flipflops\(1),
	combout => \move|debounce_ps2_data|result~0_combout\);

-- Location: FF_X17_Y14_N5
\move|debounce_ps2_data|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|debounce_ps2_data|result~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|debounce_ps2_data|result~q\);

-- Location: LCCOMB_X19_Y14_N4
\move|ps2_word[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|ps2_word[10]~feeder_combout\ = \move|debounce_ps2_data|result~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move|debounce_ps2_data|result~q\,
	combout => \move|ps2_word[10]~feeder_combout\);

-- Location: FF_X19_Y14_N5
\move|ps2_word[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \move|ps2_word[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|ps2_word\(10));

-- Location: FF_X19_Y14_N11
\move|ps2_word[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	asdata => \move|ps2_word\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|ps2_word\(9));

-- Location: LCCOMB_X19_Y14_N24
\move|ps2_word[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|ps2_word[8]~feeder_combout\ = \move|ps2_word\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move|ps2_word\(9),
	combout => \move|ps2_word[8]~feeder_combout\);

-- Location: FF_X19_Y14_N25
\move|ps2_word[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \move|ps2_word[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|ps2_word\(8));

-- Location: LCCOMB_X19_Y14_N26
\move|ps2_word[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|ps2_word[7]~feeder_combout\ = \move|ps2_word\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move|ps2_word\(8),
	combout => \move|ps2_word[7]~feeder_combout\);

-- Location: FF_X19_Y14_N27
\move|ps2_word[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \move|ps2_word[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|ps2_word\(7));

-- Location: LCCOMB_X19_Y14_N14
\move|ps2_word[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|ps2_word[6]~feeder_combout\ = \move|ps2_word\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move|ps2_word\(7),
	combout => \move|ps2_word[6]~feeder_combout\);

-- Location: FF_X19_Y14_N15
\move|ps2_word[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \move|ps2_word[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|ps2_word\(6));

-- Location: LCCOMB_X19_Y14_N8
\move|ps2_word[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|ps2_word[5]~feeder_combout\ = \move|ps2_word\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \move|ps2_word\(6),
	combout => \move|ps2_word[5]~feeder_combout\);

-- Location: FF_X19_Y14_N9
\move|ps2_word[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \move|ps2_word[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|ps2_word\(5));

-- Location: FF_X19_Y14_N31
\move|ps2_word[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	asdata => \move|ps2_word\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|ps2_word\(4));

-- Location: FF_X19_Y14_N19
\move|ps2_word[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	asdata => \move|ps2_word\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|ps2_word\(3));

-- Location: LCCOMB_X19_Y14_N0
\move|ps2_word[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|ps2_word[2]~feeder_combout\ = \move|ps2_word\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \move|ps2_word\(3),
	combout => \move|ps2_word[2]~feeder_combout\);

-- Location: FF_X19_Y14_N1
\move|ps2_word[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \move|ps2_word[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|ps2_word\(2));

-- Location: LCCOMB_X19_Y14_N22
\move|ps2_word[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|ps2_word[1]~feeder_combout\ = \move|ps2_word\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move|ps2_word\(2),
	combout => \move|ps2_word[1]~feeder_combout\);

-- Location: FF_X19_Y14_N23
\move|ps2_word[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \move|ps2_word[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|ps2_word\(1));

-- Location: FF_X19_Y14_N29
\move|ps2_word[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	asdata => \move|ps2_word\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|ps2_word\(0));

-- Location: LCCOMB_X19_Y14_N28
\move|process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|process_2~0_combout\ = (!\move|ps2_word\(0) & \move|ps2_word\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \move|ps2_word\(0),
	datad => \move|ps2_word\(10),
	combout => \move|process_2~0_combout\);

-- Location: LCCOMB_X19_Y14_N30
\move|error~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|error~1_combout\ = \move|ps2_word\(7) $ (\move|ps2_word\(6) $ (\move|ps2_word\(5) $ (\move|ps2_word\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|ps2_word\(7),
	datab => \move|ps2_word\(6),
	datac => \move|ps2_word\(5),
	datad => \move|ps2_word\(8),
	combout => \move|error~1_combout\);

-- Location: LCCOMB_X19_Y14_N18
\move|error~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|error~0_combout\ = \move|ps2_word\(4) $ (\move|ps2_word\(1) $ (\move|ps2_word\(3) $ (\move|ps2_word\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|ps2_word\(4),
	datab => \move|ps2_word\(1),
	datac => \move|ps2_word\(3),
	datad => \move|ps2_word\(2),
	combout => \move|error~0_combout\);

-- Location: LCCOMB_X19_Y14_N10
\move|process_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|process_2~1_combout\ = (\move|process_2~0_combout\ & (\move|error~1_combout\ $ (\move|ps2_word\(9) $ (\move|error~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|process_2~0_combout\,
	datab => \move|error~1_combout\,
	datac => \move|ps2_word\(9),
	datad => \move|error~0_combout\,
	combout => \move|process_2~1_combout\);

-- Location: LCCOMB_X18_Y14_N0
\move|process_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|process_2~2_combout\ = (\move|Equal0~1_combout\ & (\move|Equal0~0_combout\ & (\move|process_2~1_combout\ & \move|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|Equal0~1_combout\,
	datab => \move|Equal0~0_combout\,
	datac => \move|process_2~1_combout\,
	datad => \move|Equal0~2_combout\,
	combout => \move|process_2~2_combout\);

-- Location: FF_X18_Y14_N1
\move|ps2_code_new\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|ps2_code_new~q\);

-- Location: CLKCTRL_G3
\move|ps2_code_new~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \move|ps2_code_new~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \move|ps2_code_new~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y14_N10
\move|ps2_code[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|ps2_code[2]~feeder_combout\ = \move|ps2_word\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move|ps2_word\(3),
	combout => \move|ps2_code[2]~feeder_combout\);

-- Location: FF_X18_Y14_N11
\move|ps2_code[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|ps2_code[2]~feeder_combout\,
	ena => \move|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|ps2_code\(2));

-- Location: LCCOMB_X18_Y14_N26
\move|ps2_code[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|ps2_code[5]~feeder_combout\ = \move|ps2_word\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \move|ps2_word\(6),
	combout => \move|ps2_code[5]~feeder_combout\);

-- Location: FF_X18_Y14_N27
\move|ps2_code[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|ps2_code[5]~feeder_combout\,
	ena => \move|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|ps2_code\(5));

-- Location: FF_X18_Y14_N31
\move|ps2_code[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \move|ps2_word\(2),
	sload => VCC,
	ena => \move|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|ps2_code\(1));

-- Location: LCCOMB_X18_Y14_N12
\move|ps2_code[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|ps2_code[7]~feeder_combout\ = \move|ps2_word\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move|ps2_word\(8),
	combout => \move|ps2_code[7]~feeder_combout\);

-- Location: FF_X18_Y14_N13
\move|ps2_code[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|ps2_code[7]~feeder_combout\,
	ena => \move|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|ps2_code\(7));

-- Location: FF_X18_Y14_N29
\move|ps2_code[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \move|ps2_word\(7),
	sload => VCC,
	ena => \move|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|ps2_code\(6));

-- Location: FF_X18_Y14_N3
\move|ps2_code[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \move|ps2_word\(5),
	sload => VCC,
	ena => \move|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|ps2_code\(4));

-- Location: LCCOMB_X18_Y14_N8
\move|ps2_code[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move|ps2_code[3]~feeder_combout\ = \move|ps2_word\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move|ps2_word\(4),
	combout => \move|ps2_code[3]~feeder_combout\);

-- Location: FF_X18_Y14_N9
\move|ps2_code[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \move|ps2_code[3]~feeder_combout\,
	ena => \move|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|ps2_code\(3));

-- Location: LCCOMB_X18_Y14_N2
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\move|ps2_code\(7) & (!\move|ps2_code\(6) & (\move|ps2_code\(4) & \move|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|ps2_code\(7),
	datab => \move|ps2_code\(6),
	datac => \move|ps2_code\(4),
	datad => \move|ps2_code\(3),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X18_Y14_N30
\Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (\move|ps2_code\(2) & (!\move|ps2_code\(5) & (!\move|ps2_code\(1) & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|ps2_code\(2),
	datab => \move|ps2_code\(5),
	datac => \move|ps2_code\(1),
	datad => \Equal4~0_combout\,
	combout => \Equal4~1_combout\);

-- Location: FF_X18_Y14_N21
\move|ps2_code[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \move|ps2_word\(1),
	sload => VCC,
	ena => \move|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move|ps2_code\(0));

-- Location: LCCOMB_X18_Y14_N22
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!\move|ps2_code\(7) & (!\move|ps2_code\(4) & (\move|ps2_code\(5) & !\move|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|ps2_code\(7),
	datab => \move|ps2_code\(4),
	datac => \move|ps2_code\(5),
	datad => \move|ps2_code\(6),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X18_Y14_N20
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\move|ps2_code\(2) & (!\move|ps2_code\(3) & (\move|ps2_code\(0) & \move|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|ps2_code\(2),
	datab => \move|ps2_code\(3),
	datac => \move|ps2_code\(0),
	datad => \move|ps2_code\(1),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X18_Y14_N24
\player1x~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x~6_combout\ = (\Equal4~1_combout\ & (!\move|ps2_code\(0) & ((!\Equal3~0_combout\) # (!\Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \move|ps2_code\(0),
	datac => \Equal3~1_combout\,
	datad => \Equal3~0_combout\,
	combout => \player1x~6_combout\);

-- Location: LCCOMB_X16_Y17_N4
\Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (\Equal3~1_combout\ & \Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal3~1_combout\,
	datad => \Equal3~0_combout\,
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X17_Y17_N4
\player1x~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x~19_combout\ = (\player1x[31]~_Duplicate_1_q\) # (!\player1x~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \player1x[31]~_Duplicate_1_q\,
	datad => \player1x~17_combout\,
	combout => \player1x~19_combout\);

-- Location: LCCOMB_X16_Y17_N20
\player1x[18]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[18]~42_combout\ = (!\player1x~19_combout\ & ((\Equal3~2_combout\) # ((\Equal4~1_combout\ & !\move|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \move|ps2_code\(0),
	datac => \Equal3~2_combout\,
	datad => \player1x~19_combout\,
	combout => \player1x[18]~42_combout\);

-- Location: LCCOMB_X16_Y17_N8
\player1x[30]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[30]~20_combout\ = (\Equal3~2_combout\) # ((\player1x~19_combout\) # ((!\move|ps2_code\(0) & \Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~2_combout\,
	datab => \move|ps2_code\(0),
	datac => \Equal4~1_combout\,
	datad => \player1x~19_combout\,
	combout => \player1x[30]~20_combout\);

-- Location: LCCOMB_X17_Y16_N0
\Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = player1x(0) $ (GND)
-- \Add10~1\ = CARRY(!player1x(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player1x(0),
	datad => VCC,
	combout => \Add10~0_combout\,
	cout => \Add10~1\);

-- Location: LCCOMB_X17_Y16_N2
\Add10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = (player1x(1) & (!\Add10~1\)) # (!player1x(1) & ((\Add10~1\) # (GND)))
-- \Add10~3\ = CARRY((!\Add10~1\) # (!player1x(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1x(1),
	datad => VCC,
	cin => \Add10~1\,
	combout => \Add10~2_combout\,
	cout => \Add10~3\);

-- Location: LCCOMB_X16_Y17_N16
\player1x~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x~21_combout\ = (\Add10~2_combout\ & (\Equal3~1_combout\ & \Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~2_combout\,
	datab => \Equal3~1_combout\,
	datad => \Equal3~0_combout\,
	combout => \player1x~21_combout\);

-- Location: LCCOMB_X16_Y16_N0
\Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = player1x(0) $ (GND)
-- \Add11~1\ = CARRY(!player1x(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player1x(0),
	datad => VCC,
	combout => \Add11~0_combout\,
	cout => \Add11~1\);

-- Location: LCCOMB_X16_Y16_N2
\Add11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (player1x(1) & (\Add11~1\ & VCC)) # (!player1x(1) & (!\Add11~1\))
-- \Add11~3\ = CARRY((!player1x(1) & !\Add11~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1x(1),
	datad => VCC,
	cin => \Add11~1\,
	combout => \Add11~2_combout\,
	cout => \Add11~3\);

-- Location: LCCOMB_X16_Y17_N6
\player1x~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x~22_combout\ = (!\player1x~19_combout\ & ((\player1x~21_combout\) # ((\Add11~2_combout\ & \player1x~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1x~19_combout\,
	datab => \player1x~21_combout\,
	datac => \Add11~2_combout\,
	datad => \player1x~6_combout\,
	combout => \player1x~22_combout\);

-- Location: FF_X16_Y17_N7
\player1x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x~22_combout\,
	ena => \player1x[30]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1x(1));

-- Location: LCCOMB_X17_Y16_N4
\Add10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = (player1x(2) & (\Add10~3\ $ (GND))) # (!player1x(2) & (!\Add10~3\ & VCC))
-- \Add10~5\ = CARRY((player1x(2) & !\Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1x(2),
	datad => VCC,
	cin => \Add10~3\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: LCCOMB_X16_Y16_N4
\Add11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = (player1x(2) & ((GND) # (!\Add11~3\))) # (!player1x(2) & (\Add11~3\ $ (GND)))
-- \Add11~5\ = CARRY((player1x(2)) # (!\Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1x(2),
	datad => VCC,
	cin => \Add11~3\,
	combout => \Add11~4_combout\,
	cout => \Add11~5\);

-- Location: LCCOMB_X16_Y17_N14
\player1x~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x~25_combout\ = (\Add11~4_combout\ & (!\move|ps2_code\(0) & (\Equal4~1_combout\ & !\Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~4_combout\,
	datab => \move|ps2_code\(0),
	datac => \Equal4~1_combout\,
	datad => \Equal3~2_combout\,
	combout => \player1x~25_combout\);

-- Location: LCCOMB_X16_Y17_N0
\player1x~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x~26_combout\ = (!\player1x~19_combout\ & ((\player1x~25_combout\) # ((\Equal3~2_combout\ & \Add10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~2_combout\,
	datab => \Add10~4_combout\,
	datac => \player1x~25_combout\,
	datad => \player1x~19_combout\,
	combout => \player1x~26_combout\);

-- Location: FF_X16_Y17_N1
\player1x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x~26_combout\,
	ena => \player1x[30]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1x(2));

-- Location: LCCOMB_X17_Y16_N6
\Add10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~6_combout\ = (player1x(3) & (!\Add10~5\)) # (!player1x(3) & ((\Add10~5\) # (GND)))
-- \Add10~7\ = CARRY((!\Add10~5\) # (!player1x(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1x(3),
	datad => VCC,
	cin => \Add10~5\,
	combout => \Add10~6_combout\,
	cout => \Add10~7\);

-- Location: LCCOMB_X16_Y17_N12
\player1x[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[3]~27_combout\ = (\Add10~6_combout\ & (\Equal3~1_combout\ & \Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~6_combout\,
	datac => \Equal3~1_combout\,
	datad => \Equal3~0_combout\,
	combout => \player1x[3]~27_combout\);

-- Location: LCCOMB_X16_Y16_N6
\Add11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (player1x(3) & (\Add11~5\ & VCC)) # (!player1x(3) & (!\Add11~5\))
-- \Add11~7\ = CARRY((!player1x(3) & !\Add11~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1x(3),
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~6_combout\,
	cout => \Add11~7\);

-- Location: LCCOMB_X16_Y17_N10
\player1x[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[3]~28_combout\ = (\player1x~17_combout\ & ((\player1x[3]~27_combout\) # ((\Add11~6_combout\ & \player1x~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1x~17_combout\,
	datab => \player1x[3]~27_combout\,
	datac => \Add11~6_combout\,
	datad => \player1x~6_combout\,
	combout => \player1x[3]~28_combout\);

-- Location: LCCOMB_X16_Y17_N2
\player1x[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[3]~29_combout\ = (\player1x[30]~20_combout\ & ((\player1x[3]~28_combout\) # ((\player1x[31]~_Duplicate_1_q\)))) # (!\player1x[30]~20_combout\ & (((player1x(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1x[30]~20_combout\,
	datab => \player1x[3]~28_combout\,
	datac => player1x(3),
	datad => \player1x[31]~_Duplicate_1_q\,
	combout => \player1x[3]~29_combout\);

-- Location: FF_X16_Y17_N3
\player1x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1x(3));

-- Location: LCCOMB_X17_Y16_N8
\Add10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~8_combout\ = (player1x(4) & (\Add10~7\ $ (GND))) # (!player1x(4) & (!\Add10~7\ & VCC))
-- \Add10~9\ = CARRY((player1x(4) & !\Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1x(4),
	datad => VCC,
	cin => \Add10~7\,
	combout => \Add10~8_combout\,
	cout => \Add10~9\);

-- Location: LCCOMB_X16_Y16_N8
\Add11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~8_combout\ = (player1x(4) & ((GND) # (!\Add11~7\))) # (!player1x(4) & (\Add11~7\ $ (GND)))
-- \Add11~9\ = CARRY((player1x(4)) # (!\Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1x(4),
	datad => VCC,
	cin => \Add11~7\,
	combout => \Add11~8_combout\,
	cout => \Add11~9\);

-- Location: LCCOMB_X21_Y17_N20
\player1x[4]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[4]~69_combout\ = (\Add10~8_combout\ & ((\Equal3~2_combout\) # ((\player1x~6_combout\ & \Add11~8_combout\)))) # (!\Add10~8_combout\ & (\player1x~6_combout\ & (\Add11~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~8_combout\,
	datab => \player1x~6_combout\,
	datac => \Add11~8_combout\,
	datad => \Equal3~2_combout\,
	combout => \player1x[4]~69_combout\);

-- Location: LCCOMB_X21_Y17_N30
\player1x[4]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[4]~70_combout\ = (\player1x[18]~42_combout\ & \player1x[4]~69_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \player1x[18]~42_combout\,
	datad => \player1x[4]~69_combout\,
	combout => \player1x[4]~70_combout\);

-- Location: FF_X21_Y17_N31
\player1x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[4]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1x(4));

-- Location: LCCOMB_X17_Y16_N10
\Add10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~10_combout\ = (player1x(5) & (!\Add10~9\)) # (!player1x(5) & ((\Add10~9\) # (GND)))
-- \Add10~11\ = CARRY((!\Add10~9\) # (!player1x(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1x(5),
	datad => VCC,
	cin => \Add10~9\,
	combout => \Add10~10_combout\,
	cout => \Add10~11\);

-- Location: LCCOMB_X19_Y15_N26
\player1x[5]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[5]~67_combout\ = (\Equal3~0_combout\ & (\Add10~10_combout\ & \Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datac => \Add10~10_combout\,
	datad => \Equal3~1_combout\,
	combout => \player1x[5]~67_combout\);

-- Location: LCCOMB_X16_Y16_N10
\Add11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~10_combout\ = (player1x(5) & (\Add11~9\ & VCC)) # (!player1x(5) & (!\Add11~9\))
-- \Add11~11\ = CARRY((!player1x(5) & !\Add11~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1x(5),
	datad => VCC,
	cin => \Add11~9\,
	combout => \Add11~10_combout\,
	cout => \Add11~11\);

-- Location: LCCOMB_X19_Y15_N6
\player1x[5]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[5]~68_combout\ = (\player1x[18]~42_combout\ & ((\player1x[5]~67_combout\) # ((\player1x~6_combout\ & \Add11~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1x~6_combout\,
	datab => \player1x[5]~67_combout\,
	datac => \Add11~10_combout\,
	datad => \player1x[18]~42_combout\,
	combout => \player1x[5]~68_combout\);

-- Location: FF_X19_Y15_N7
\player1x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[5]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1x(5));

-- Location: LCCOMB_X17_Y16_N12
\Add10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~12_combout\ = (player1x(6) & (\Add10~11\ $ (GND))) # (!player1x(6) & (!\Add10~11\ & VCC))
-- \Add10~13\ = CARRY((player1x(6) & !\Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1x(6),
	datad => VCC,
	cin => \Add10~11\,
	combout => \Add10~12_combout\,
	cout => \Add10~13\);

-- Location: LCCOMB_X19_Y15_N16
\player1x[6]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[6]~65_combout\ = (\Equal3~0_combout\ & (\Add10~12_combout\ & \Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datac => \Add10~12_combout\,
	datad => \Equal3~1_combout\,
	combout => \player1x[6]~65_combout\);

-- Location: LCCOMB_X16_Y16_N12
\Add11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~12_combout\ = (player1x(6) & ((GND) # (!\Add11~11\))) # (!player1x(6) & (\Add11~11\ $ (GND)))
-- \Add11~13\ = CARRY((player1x(6)) # (!\Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1x(6),
	datad => VCC,
	cin => \Add11~11\,
	combout => \Add11~12_combout\,
	cout => \Add11~13\);

-- Location: LCCOMB_X19_Y15_N30
\player1x[6]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[6]~66_combout\ = (\player1x[18]~42_combout\ & ((\player1x[6]~65_combout\) # ((\player1x~6_combout\ & \Add11~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1x~6_combout\,
	datab => \player1x[6]~65_combout\,
	datac => \Add11~12_combout\,
	datad => \player1x[18]~42_combout\,
	combout => \player1x[6]~66_combout\);

-- Location: FF_X19_Y15_N31
\player1x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[6]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1x(6));

-- Location: LCCOMB_X16_Y16_N14
\Add11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~14_combout\ = (player1x(7) & (\Add11~13\ & VCC)) # (!player1x(7) & (!\Add11~13\))
-- \Add11~15\ = CARRY((!player1x(7) & !\Add11~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1x(7),
	datad => VCC,
	cin => \Add11~13\,
	combout => \Add11~14_combout\,
	cout => \Add11~15\);

-- Location: LCCOMB_X16_Y17_N26
\player1x[7]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[7]~63_combout\ = (\Add11~14_combout\ & (!\move|ps2_code\(0) & (\Equal4~1_combout\ & !\Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~14_combout\,
	datab => \move|ps2_code\(0),
	datac => \Equal4~1_combout\,
	datad => \Equal3~2_combout\,
	combout => \player1x[7]~63_combout\);

-- Location: LCCOMB_X17_Y16_N14
\Add10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~14_combout\ = (player1x(7) & (!\Add10~13\)) # (!player1x(7) & ((\Add10~13\) # (GND)))
-- \Add10~15\ = CARRY((!\Add10~13\) # (!player1x(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1x(7),
	datad => VCC,
	cin => \Add10~13\,
	combout => \Add10~14_combout\,
	cout => \Add10~15\);

-- Location: LCCOMB_X16_Y17_N18
\player1x[7]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[7]~64_combout\ = (\player1x[18]~42_combout\ & ((\player1x[7]~63_combout\) # ((\Add10~14_combout\ & \Equal3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1x[7]~63_combout\,
	datab => \player1x[18]~42_combout\,
	datac => \Add10~14_combout\,
	datad => \Equal3~2_combout\,
	combout => \player1x[7]~64_combout\);

-- Location: FF_X16_Y17_N19
\player1x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[7]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1x(7));

-- Location: LCCOMB_X17_Y16_N16
\Add10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~16_combout\ = (player1x(8) & (\Add10~15\ $ (GND))) # (!player1x(8) & (!\Add10~15\ & VCC))
-- \Add10~17\ = CARRY((player1x(8) & !\Add10~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1x(8),
	datad => VCC,
	cin => \Add10~15\,
	combout => \Add10~16_combout\,
	cout => \Add10~17\);

-- Location: LCCOMB_X16_Y16_N16
\Add11~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~16_combout\ = (player1x(8) & ((GND) # (!\Add11~15\))) # (!player1x(8) & (\Add11~15\ $ (GND)))
-- \Add11~17\ = CARRY((player1x(8)) # (!\Add11~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1x(8),
	datad => VCC,
	cin => \Add11~15\,
	combout => \Add11~16_combout\,
	cout => \Add11~17\);

-- Location: LCCOMB_X21_Y17_N10
\player1x[8]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[8]~61_combout\ = (\Add10~16_combout\ & ((\Equal3~2_combout\) # ((\player1x~6_combout\ & \Add11~16_combout\)))) # (!\Add10~16_combout\ & (\player1x~6_combout\ & (\Add11~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~16_combout\,
	datab => \player1x~6_combout\,
	datac => \Add11~16_combout\,
	datad => \Equal3~2_combout\,
	combout => \player1x[8]~61_combout\);

-- Location: LCCOMB_X21_Y17_N8
\player1x[8]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[8]~62_combout\ = (\player1x[18]~42_combout\ & \player1x[8]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \player1x[18]~42_combout\,
	datad => \player1x[8]~61_combout\,
	combout => \player1x[8]~62_combout\);

-- Location: FF_X21_Y17_N9
\player1x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[8]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1x(8));

-- Location: LCCOMB_X17_Y16_N18
\Add10~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~18_combout\ = (player1x(9) & (!\Add10~17\)) # (!player1x(9) & ((\Add10~17\) # (GND)))
-- \Add10~19\ = CARRY((!\Add10~17\) # (!player1x(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1x(9),
	datad => VCC,
	cin => \Add10~17\,
	combout => \Add10~18_combout\,
	cout => \Add10~19\);

-- Location: LCCOMB_X19_Y15_N2
\player1x[9]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[9]~59_combout\ = (\Equal3~0_combout\ & (\Add10~18_combout\ & \Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datac => \Add10~18_combout\,
	datad => \Equal3~1_combout\,
	combout => \player1x[9]~59_combout\);

-- Location: LCCOMB_X16_Y16_N18
\Add11~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~18_combout\ = (player1x(9) & (\Add11~17\ & VCC)) # (!player1x(9) & (!\Add11~17\))
-- \Add11~19\ = CARRY((!player1x(9) & !\Add11~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1x(9),
	datad => VCC,
	cin => \Add11~17\,
	combout => \Add11~18_combout\,
	cout => \Add11~19\);

-- Location: LCCOMB_X19_Y15_N0
\player1x[9]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[9]~60_combout\ = (\player1x[18]~42_combout\ & ((\player1x[9]~59_combout\) # ((\player1x~6_combout\ & \Add11~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1x~6_combout\,
	datab => \player1x[9]~59_combout\,
	datac => \Add11~18_combout\,
	datad => \player1x[18]~42_combout\,
	combout => \player1x[9]~60_combout\);

-- Location: FF_X19_Y15_N1
\player1x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[9]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1x(9));

-- Location: LCCOMB_X17_Y16_N20
\Add10~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~20_combout\ = (player1x(10) & (\Add10~19\ $ (GND))) # (!player1x(10) & (!\Add10~19\ & VCC))
-- \Add10~21\ = CARRY((player1x(10) & !\Add10~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1x(10),
	datad => VCC,
	cin => \Add10~19\,
	combout => \Add10~20_combout\,
	cout => \Add10~21\);

-- Location: LCCOMB_X19_Y15_N18
\player1x[10]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[10]~73_combout\ = (\Equal3~0_combout\ & (\Equal3~1_combout\ & \Add10~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal3~1_combout\,
	datad => \Add10~20_combout\,
	combout => \player1x[10]~73_combout\);

-- Location: LCCOMB_X16_Y16_N20
\Add11~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~20_combout\ = (player1x(10) & ((GND) # (!\Add11~19\))) # (!player1x(10) & (\Add11~19\ $ (GND)))
-- \Add11~21\ = CARRY((player1x(10)) # (!\Add11~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1x(10),
	datad => VCC,
	cin => \Add11~19\,
	combout => \Add11~20_combout\,
	cout => \Add11~21\);

-- Location: LCCOMB_X19_Y15_N10
\player1x[10]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[10]~58_combout\ = (\player1x[18]~42_combout\ & ((\player1x[10]~73_combout\) # ((\player1x~6_combout\ & \Add11~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1x~6_combout\,
	datab => \player1x[10]~73_combout\,
	datac => \Add11~20_combout\,
	datad => \player1x[18]~42_combout\,
	combout => \player1x[10]~58_combout\);

-- Location: FF_X19_Y15_N11
\player1x[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[10]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1x(10));

-- Location: LCCOMB_X16_Y16_N22
\Add11~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~22_combout\ = (player1x(11) & (\Add11~21\ & VCC)) # (!player1x(11) & (!\Add11~21\))
-- \Add11~23\ = CARRY((!player1x(11) & !\Add11~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1x(11),
	datad => VCC,
	cin => \Add11~21\,
	combout => \Add11~22_combout\,
	cout => \Add11~23\);

-- Location: LCCOMB_X17_Y16_N22
\Add10~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~22_combout\ = (player1x(11) & (!\Add10~21\)) # (!player1x(11) & ((\Add10~21\) # (GND)))
-- \Add10~23\ = CARRY((!\Add10~21\) # (!player1x(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1x(11),
	datad => VCC,
	cin => \Add10~21\,
	combout => \Add10~22_combout\,
	cout => \Add10~23\);

-- Location: LCCOMB_X21_Y17_N12
\player1x[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[11]~56_combout\ = (\Add11~22_combout\ & ((\player1x~6_combout\) # ((\Add10~22_combout\ & \Equal3~2_combout\)))) # (!\Add11~22_combout\ & (((\Add10~22_combout\ & \Equal3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~22_combout\,
	datab => \player1x~6_combout\,
	datac => \Add10~22_combout\,
	datad => \Equal3~2_combout\,
	combout => \player1x[11]~56_combout\);

-- Location: LCCOMB_X21_Y17_N22
\player1x[11]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[11]~57_combout\ = (\player1x[18]~42_combout\ & \player1x[11]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \player1x[18]~42_combout\,
	datad => \player1x[11]~56_combout\,
	combout => \player1x[11]~57_combout\);

-- Location: FF_X21_Y17_N23
\player1x[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1x(11));

-- Location: LCCOMB_X16_Y16_N24
\Add11~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~24_combout\ = (player1x(12) & ((GND) # (!\Add11~23\))) # (!player1x(12) & (\Add11~23\ $ (GND)))
-- \Add11~25\ = CARRY((player1x(12)) # (!\Add11~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1x(12),
	datad => VCC,
	cin => \Add11~23\,
	combout => \Add11~24_combout\,
	cout => \Add11~25\);

-- Location: LCCOMB_X17_Y16_N24
\Add10~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~24_combout\ = (player1x(12) & (\Add10~23\ $ (GND))) # (!player1x(12) & (!\Add10~23\ & VCC))
-- \Add10~25\ = CARRY((player1x(12) & !\Add10~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1x(12),
	datad => VCC,
	cin => \Add10~23\,
	combout => \Add10~24_combout\,
	cout => \Add10~25\);

-- Location: LCCOMB_X19_Y15_N4
\player1x[12]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[12]~72_combout\ = (\Equal3~0_combout\ & (\Add10~24_combout\ & \Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datac => \Add10~24_combout\,
	datad => \Equal3~1_combout\,
	combout => \player1x[12]~72_combout\);

-- Location: LCCOMB_X19_Y15_N24
\player1x[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[12]~55_combout\ = (\player1x[18]~42_combout\ & ((\player1x[12]~72_combout\) # ((\player1x~6_combout\ & \Add11~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1x~6_combout\,
	datab => \Add11~24_combout\,
	datac => \player1x[12]~72_combout\,
	datad => \player1x[18]~42_combout\,
	combout => \player1x[12]~55_combout\);

-- Location: FF_X19_Y15_N25
\player1x[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[12]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1x(12));

-- Location: LCCOMB_X16_Y16_N26
\Add11~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~26_combout\ = (player1x(13) & (\Add11~25\ & VCC)) # (!player1x(13) & (!\Add11~25\))
-- \Add11~27\ = CARRY((!player1x(13) & !\Add11~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1x(13),
	datad => VCC,
	cin => \Add11~25\,
	combout => \Add11~26_combout\,
	cout => \Add11~27\);

-- Location: LCCOMB_X17_Y16_N26
\Add10~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~26_combout\ = (player1x(13) & (!\Add10~25\)) # (!player1x(13) & ((\Add10~25\) # (GND)))
-- \Add10~27\ = CARRY((!\Add10~25\) # (!player1x(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1x(13),
	datad => VCC,
	cin => \Add10~25\,
	combout => \Add10~26_combout\,
	cout => \Add10~27\);

-- Location: LCCOMB_X19_Y15_N20
\player1x[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[13]~53_combout\ = (\player1x~6_combout\ & ((\Add11~26_combout\) # ((\Add10~26_combout\ & \Equal3~2_combout\)))) # (!\player1x~6_combout\ & (((\Add10~26_combout\ & \Equal3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1x~6_combout\,
	datab => \Add11~26_combout\,
	datac => \Add10~26_combout\,
	datad => \Equal3~2_combout\,
	combout => \player1x[13]~53_combout\);

-- Location: LCCOMB_X19_Y15_N22
\player1x[13]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[13]~54_combout\ = (\player1x[13]~53_combout\ & \player1x[18]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \player1x[13]~53_combout\,
	datad => \player1x[18]~42_combout\,
	combout => \player1x[13]~54_combout\);

-- Location: FF_X19_Y15_N23
\player1x[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[13]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1x(13));

-- Location: LCCOMB_X16_Y16_N28
\Add11~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~28_combout\ = (player1x(14) & ((GND) # (!\Add11~27\))) # (!player1x(14) & (\Add11~27\ $ (GND)))
-- \Add11~29\ = CARRY((player1x(14)) # (!\Add11~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1x(14),
	datad => VCC,
	cin => \Add11~27\,
	combout => \Add11~28_combout\,
	cout => \Add11~29\);

-- Location: LCCOMB_X17_Y16_N28
\Add10~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~28_combout\ = (player1x(14) & (\Add10~27\ $ (GND))) # (!player1x(14) & (!\Add10~27\ & VCC))
-- \Add10~29\ = CARRY((player1x(14) & !\Add10~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1x(14),
	datad => VCC,
	cin => \Add10~27\,
	combout => \Add10~28_combout\,
	cout => \Add10~29\);

-- Location: LCCOMB_X21_Y17_N18
\player1x[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[14]~51_combout\ = (\Equal3~1_combout\ & (\Equal3~0_combout\ & \Add10~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~1_combout\,
	datac => \Equal3~0_combout\,
	datad => \Add10~28_combout\,
	combout => \player1x[14]~51_combout\);

-- Location: LCCOMB_X21_Y17_N14
\player1x[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[14]~52_combout\ = (\player1x[18]~42_combout\ & ((\player1x[14]~51_combout\) # ((\Add11~28_combout\ & \player1x~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~28_combout\,
	datab => \player1x~6_combout\,
	datac => \player1x[14]~51_combout\,
	datad => \player1x[18]~42_combout\,
	combout => \player1x[14]~52_combout\);

-- Location: FF_X21_Y17_N15
\player1x[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[14]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1x(14));

-- Location: LCCOMB_X16_Y16_N30
\Add11~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~30_combout\ = (player1x(15) & (\Add11~29\ & VCC)) # (!player1x(15) & (!\Add11~29\))
-- \Add11~31\ = CARRY((!player1x(15) & !\Add11~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1x(15),
	datad => VCC,
	cin => \Add11~29\,
	combout => \Add11~30_combout\,
	cout => \Add11~31\);

-- Location: LCCOMB_X17_Y16_N30
\Add10~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~30_combout\ = (player1x(15) & (!\Add10~29\)) # (!player1x(15) & ((\Add10~29\) # (GND)))
-- \Add10~31\ = CARRY((!\Add10~29\) # (!player1x(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1x(15),
	datad => VCC,
	cin => \Add10~29\,
	combout => \Add10~30_combout\,
	cout => \Add10~31\);

-- Location: LCCOMB_X21_Y17_N28
\player1x[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[15]~49_combout\ = (\Equal3~0_combout\ & (\Add10~30_combout\ & \Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datac => \Add10~30_combout\,
	datad => \Equal3~1_combout\,
	combout => \player1x[15]~49_combout\);

-- Location: LCCOMB_X21_Y17_N16
\player1x[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[15]~50_combout\ = (\player1x[18]~42_combout\ & ((\player1x[15]~49_combout\) # ((\Add11~30_combout\ & \player1x~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~30_combout\,
	datab => \player1x[15]~49_combout\,
	datac => \player1x~6_combout\,
	datad => \player1x[18]~42_combout\,
	combout => \player1x[15]~50_combout\);

-- Location: FF_X21_Y17_N17
\player1x[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[15]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1x(15));

-- Location: LCCOMB_X16_Y15_N0
\Add11~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~32_combout\ = (player1x(16) & ((GND) # (!\Add11~31\))) # (!player1x(16) & (\Add11~31\ $ (GND)))
-- \Add11~33\ = CARRY((player1x(16)) # (!\Add11~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1x(16),
	datad => VCC,
	cin => \Add11~31\,
	combout => \Add11~32_combout\,
	cout => \Add11~33\);

-- Location: LCCOMB_X17_Y15_N0
\Add10~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~32_combout\ = (player1x(16) & (\Add10~31\ $ (GND))) # (!player1x(16) & (!\Add10~31\ & VCC))
-- \Add10~33\ = CARRY((player1x(16) & !\Add10~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1x(16),
	datad => VCC,
	cin => \Add10~31\,
	combout => \Add10~32_combout\,
	cout => \Add10~33\);

-- Location: LCCOMB_X21_Y17_N26
\player1x[16]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[16]~47_combout\ = (\Add11~32_combout\ & ((\player1x~6_combout\) # ((\Add10~32_combout\ & \Equal3~2_combout\)))) # (!\Add11~32_combout\ & (((\Add10~32_combout\ & \Equal3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~32_combout\,
	datab => \player1x~6_combout\,
	datac => \Add10~32_combout\,
	datad => \Equal3~2_combout\,
	combout => \player1x[16]~47_combout\);

-- Location: LCCOMB_X21_Y17_N2
\player1x[16]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[16]~48_combout\ = (\player1x[16]~47_combout\ & \player1x[18]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1x[16]~47_combout\,
	datad => \player1x[18]~42_combout\,
	combout => \player1x[16]~48_combout\);

-- Location: FF_X21_Y17_N3
\player1x[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[16]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1x(16));

-- Location: LCCOMB_X17_Y15_N2
\Add10~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~34_combout\ = (player1x(17) & (!\Add10~33\)) # (!player1x(17) & ((\Add10~33\) # (GND)))
-- \Add10~35\ = CARRY((!\Add10~33\) # (!player1x(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1x(17),
	datad => VCC,
	cin => \Add10~33\,
	combout => \Add10~34_combout\,
	cout => \Add10~35\);

-- Location: LCCOMB_X16_Y15_N2
\Add11~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~34_combout\ = (player1x(17) & (\Add11~33\ & VCC)) # (!player1x(17) & (!\Add11~33\))
-- \Add11~35\ = CARRY((!player1x(17) & !\Add11~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1x(17),
	datad => VCC,
	cin => \Add11~33\,
	combout => \Add11~34_combout\,
	cout => \Add11~35\);

-- Location: LCCOMB_X21_Y17_N0
\player1x[17]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[17]~45_combout\ = (!\Equal3~2_combout\ & (!\move|ps2_code\(0) & (\Add11~34_combout\ & \Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~2_combout\,
	datab => \move|ps2_code\(0),
	datac => \Add11~34_combout\,
	datad => \Equal4~1_combout\,
	combout => \player1x[17]~45_combout\);

-- Location: LCCOMB_X21_Y17_N24
\player1x[17]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[17]~46_combout\ = (\player1x[18]~42_combout\ & ((\player1x[17]~45_combout\) # ((\Equal3~2_combout\ & \Add10~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~2_combout\,
	datab => \player1x[18]~42_combout\,
	datac => \Add10~34_combout\,
	datad => \player1x[17]~45_combout\,
	combout => \player1x[17]~46_combout\);

-- Location: FF_X21_Y17_N25
\player1x[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[17]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1x(17));

-- Location: LCCOMB_X21_Y17_N4
\player1x~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x~13_combout\ = (!player1x(16) & (!player1x(15) & (!player1x(14) & !player1x(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player1x(16),
	datab => player1x(15),
	datac => player1x(14),
	datad => player1x(17),
	combout => \player1x~13_combout\);

-- Location: LCCOMB_X18_Y15_N18
\player1x~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x~14_combout\ = (!player1x(12) & (!player1x(13) & (!player1x(11) & !player1x(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player1x(12),
	datab => player1x(13),
	datac => player1x(11),
	datad => player1x(10),
	combout => \player1x~14_combout\);

-- Location: LCCOMB_X19_Y15_N28
\player1x~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x~15_combout\ = (!player1x(6) & (!player1x(9) & (!player1x(7) & !player1x(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player1x(6),
	datab => player1x(9),
	datac => player1x(7),
	datad => player1x(8),
	combout => \player1x~15_combout\);

-- Location: LCCOMB_X19_Y15_N8
\player1x~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x~16_combout\ = (!player1x(5) & (!player1x(4) & \player1x~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player1x(5),
	datab => player1x(4),
	datad => \player1x~15_combout\,
	combout => \player1x~16_combout\);

-- Location: LCCOMB_X17_Y15_N4
\Add10~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~36_combout\ = (\player1x[18]~_Duplicate_1_q\ & (\Add10~35\ $ (GND))) # (!\player1x[18]~_Duplicate_1_q\ & (!\Add10~35\ & VCC))
-- \Add10~37\ = CARRY((\player1x[18]~_Duplicate_1_q\ & !\Add10~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1x[18]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add10~35\,
	combout => \Add10~36_combout\,
	cout => \Add10~37\);

-- Location: LCCOMB_X16_Y15_N4
\Add11~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~36_combout\ = (\player1x[18]~_Duplicate_1_q\ & ((GND) # (!\Add11~35\))) # (!\player1x[18]~_Duplicate_1_q\ & (\Add11~35\ $ (GND)))
-- \Add11~37\ = CARRY((\player1x[18]~_Duplicate_1_q\) # (!\Add11~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1x[18]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add11~35\,
	combout => \Add11~36_combout\,
	cout => \Add11~37\);

-- Location: LCCOMB_X16_Y17_N30
\player1x[18]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[18]~43_combout\ = (\Equal4~1_combout\ & (\Add11~36_combout\ & (!\Equal3~2_combout\ & !\move|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \Add11~36_combout\,
	datac => \Equal3~2_combout\,
	datad => \move|ps2_code\(0),
	combout => \player1x[18]~43_combout\);

-- Location: LCCOMB_X16_Y17_N24
\player1x[18]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[18]~44_combout\ = (\player1x[18]~42_combout\ & ((\player1x[18]~43_combout\) # ((\Add10~36_combout\ & \Equal3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~36_combout\,
	datab => \Equal3~2_combout\,
	datac => \player1x[18]~43_combout\,
	datad => \player1x[18]~42_combout\,
	combout => \player1x[18]~44_combout\);

-- Location: FF_X16_Y17_N17
\player1x[18]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	asdata => \player1x[18]~44_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1x[18]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y15_N6
\Add10~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~38_combout\ = (\player1x[19]~_Duplicate_1_q\ & (!\Add10~37\)) # (!\player1x[19]~_Duplicate_1_q\ & ((\Add10~37\) # (GND)))
-- \Add10~39\ = CARRY((!\Add10~37\) # (!\player1x[19]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1x[19]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add10~37\,
	combout => \Add10~38_combout\,
	cout => \Add10~39\);

-- Location: LCCOMB_X18_Y14_N28
\player1x~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x~23_combout\ = (!\player1x[31]~_Duplicate_1_q\ & (\player1x~17_combout\ & \player1x~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1x[31]~_Duplicate_1_q\,
	datab => \player1x~17_combout\,
	datad => \player1x~6_combout\,
	combout => \player1x~23_combout\);

-- Location: LCCOMB_X16_Y15_N6
\Add11~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~38_combout\ = (\player1x[19]~_Duplicate_1_q\ & (\Add11~37\ & VCC)) # (!\player1x[19]~_Duplicate_1_q\ & (!\Add11~37\))
-- \Add11~39\ = CARRY((!\player1x[19]~_Duplicate_1_q\ & !\Add11~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1x[19]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add11~37\,
	combout => \Add11~38_combout\,
	cout => \Add11~39\);

-- Location: LCCOMB_X18_Y15_N8
\player1x[19]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[19]~41_combout\ = (\player1x~71_combout\ & ((\Add10~38_combout\) # ((\player1x~23_combout\ & \Add11~38_combout\)))) # (!\player1x~71_combout\ & (((\player1x~23_combout\ & \Add11~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1x~71_combout\,
	datab => \Add10~38_combout\,
	datac => \player1x~23_combout\,
	datad => \Add11~38_combout\,
	combout => \player1x[19]~41_combout\);

-- Location: FF_X18_Y15_N9
\player1x[19]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[19]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1x[19]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y15_N8
\Add11~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~40_combout\ = (\player1x[20]~_Duplicate_1_q\ & ((GND) # (!\Add11~39\))) # (!\player1x[20]~_Duplicate_1_q\ & (\Add11~39\ $ (GND)))
-- \Add11~41\ = CARRY((\player1x[20]~_Duplicate_1_q\) # (!\Add11~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1x[20]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add11~39\,
	combout => \Add11~40_combout\,
	cout => \Add11~41\);

-- Location: LCCOMB_X17_Y15_N8
\Add10~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~40_combout\ = (\player1x[20]~_Duplicate_1_q\ & (\Add10~39\ $ (GND))) # (!\player1x[20]~_Duplicate_1_q\ & (!\Add10~39\ & VCC))
-- \Add10~41\ = CARRY((\player1x[20]~_Duplicate_1_q\ & !\Add10~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1x[20]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add10~39\,
	combout => \Add10~40_combout\,
	cout => \Add10~41\);

-- Location: LCCOMB_X19_Y15_N14
\player1x[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[20]~40_combout\ = (\Add11~40_combout\ & ((\player1x~23_combout\) # ((\Add10~40_combout\ & \player1x~71_combout\)))) # (!\Add11~40_combout\ & (\Add10~40_combout\ & (\player1x~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~40_combout\,
	datab => \Add10~40_combout\,
	datac => \player1x~71_combout\,
	datad => \player1x~23_combout\,
	combout => \player1x[20]~40_combout\);

-- Location: LCCOMB_X19_Y15_N12
\player1x[20]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[20]~_Duplicate_1feeder_combout\ = \player1x[20]~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \player1x[20]~40_combout\,
	combout => \player1x[20]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y15_N13
\player1x[20]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[20]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1x[20]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y15_N10
\Add11~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~42_combout\ = (\player1x[21]~_Duplicate_1_q\ & (\Add11~41\ & VCC)) # (!\player1x[21]~_Duplicate_1_q\ & (!\Add11~41\))
-- \Add11~43\ = CARRY((!\player1x[21]~_Duplicate_1_q\ & !\Add11~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1x[21]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add11~41\,
	combout => \Add11~42_combout\,
	cout => \Add11~43\);

-- Location: LCCOMB_X17_Y15_N10
\Add10~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~42_combout\ = (\player1x[21]~_Duplicate_1_q\ & (!\Add10~41\)) # (!\player1x[21]~_Duplicate_1_q\ & ((\Add10~41\) # (GND)))
-- \Add10~43\ = CARRY((!\Add10~41\) # (!\player1x[21]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1x[21]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add10~41\,
	combout => \Add10~42_combout\,
	cout => \Add10~43\);

-- Location: LCCOMB_X18_Y15_N26
\player1x[21]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[21]~39_combout\ = (\player1x~71_combout\ & ((\Add10~42_combout\) # ((\Add11~42_combout\ & \player1x~23_combout\)))) # (!\player1x~71_combout\ & (\Add11~42_combout\ & (\player1x~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1x~71_combout\,
	datab => \Add11~42_combout\,
	datac => \player1x~23_combout\,
	datad => \Add10~42_combout\,
	combout => \player1x[21]~39_combout\);

-- Location: FF_X18_Y15_N27
\player1x[21]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1x[21]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y15_N12
\Add11~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~44_combout\ = (\player1x[22]~_Duplicate_1_q\ & ((GND) # (!\Add11~43\))) # (!\player1x[22]~_Duplicate_1_q\ & (\Add11~43\ $ (GND)))
-- \Add11~45\ = CARRY((\player1x[22]~_Duplicate_1_q\) # (!\Add11~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1x[22]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add11~43\,
	combout => \Add11~44_combout\,
	cout => \Add11~45\);

-- Location: LCCOMB_X17_Y15_N12
\Add10~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~44_combout\ = (\player1x[22]~_Duplicate_1_q\ & (\Add10~43\ $ (GND))) # (!\player1x[22]~_Duplicate_1_q\ & (!\Add10~43\ & VCC))
-- \Add10~45\ = CARRY((\player1x[22]~_Duplicate_1_q\ & !\Add10~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1x[22]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add10~43\,
	combout => \Add10~44_combout\,
	cout => \Add10~45\);

-- Location: LCCOMB_X18_Y15_N20
\player1x[22]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[22]~38_combout\ = (\player1x~71_combout\ & ((\Add10~44_combout\) # ((\Add11~44_combout\ & \player1x~23_combout\)))) # (!\player1x~71_combout\ & (\Add11~44_combout\ & (\player1x~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1x~71_combout\,
	datab => \Add11~44_combout\,
	datac => \player1x~23_combout\,
	datad => \Add10~44_combout\,
	combout => \player1x[22]~38_combout\);

-- Location: FF_X18_Y15_N21
\player1x[22]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[22]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1x[22]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y15_N14
\Add11~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~46_combout\ = (\player1x[23]~_Duplicate_1_q\ & (\Add11~45\ & VCC)) # (!\player1x[23]~_Duplicate_1_q\ & (!\Add11~45\))
-- \Add11~47\ = CARRY((!\player1x[23]~_Duplicate_1_q\ & !\Add11~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1x[23]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add11~45\,
	combout => \Add11~46_combout\,
	cout => \Add11~47\);

-- Location: LCCOMB_X17_Y15_N14
\Add10~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~46_combout\ = (\player1x[23]~_Duplicate_1_q\ & (!\Add10~45\)) # (!\player1x[23]~_Duplicate_1_q\ & ((\Add10~45\) # (GND)))
-- \Add10~47\ = CARRY((!\Add10~45\) # (!\player1x[23]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1x[23]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add10~45\,
	combout => \Add10~46_combout\,
	cout => \Add10~47\);

-- Location: LCCOMB_X18_Y15_N22
\player1x[23]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[23]~37_combout\ = (\player1x~71_combout\ & ((\Add10~46_combout\) # ((\Add11~46_combout\ & \player1x~23_combout\)))) # (!\player1x~71_combout\ & (\Add11~46_combout\ & (\player1x~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1x~71_combout\,
	datab => \Add11~46_combout\,
	datac => \player1x~23_combout\,
	datad => \Add10~46_combout\,
	combout => \player1x[23]~37_combout\);

-- Location: FF_X18_Y15_N23
\player1x[23]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[23]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1x[23]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y15_N16
\Add10~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~48_combout\ = (\player1x[24]~_Duplicate_1_q\ & (\Add10~47\ $ (GND))) # (!\player1x[24]~_Duplicate_1_q\ & (!\Add10~47\ & VCC))
-- \Add10~49\ = CARRY((\player1x[24]~_Duplicate_1_q\ & !\Add10~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1x[24]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add10~47\,
	combout => \Add10~48_combout\,
	cout => \Add10~49\);

-- Location: LCCOMB_X16_Y15_N16
\Add11~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~48_combout\ = (\player1x[24]~_Duplicate_1_q\ & ((GND) # (!\Add11~47\))) # (!\player1x[24]~_Duplicate_1_q\ & (\Add11~47\ $ (GND)))
-- \Add11~49\ = CARRY((\player1x[24]~_Duplicate_1_q\) # (!\Add11~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1x[24]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add11~47\,
	combout => \Add11~48_combout\,
	cout => \Add11~49\);

-- Location: LCCOMB_X18_Y15_N24
\player1x[24]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[24]~36_combout\ = (\Add10~48_combout\ & ((\player1x~71_combout\) # ((\Add11~48_combout\ & \player1x~23_combout\)))) # (!\Add10~48_combout\ & (\Add11~48_combout\ & (\player1x~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~48_combout\,
	datab => \Add11~48_combout\,
	datac => \player1x~23_combout\,
	datad => \player1x~71_combout\,
	combout => \player1x[24]~36_combout\);

-- Location: FF_X18_Y15_N25
\player1x[24]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[24]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1x[24]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y15_N18
\Add10~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~50_combout\ = (\player1x[25]~_Duplicate_1_q\ & (!\Add10~49\)) # (!\player1x[25]~_Duplicate_1_q\ & ((\Add10~49\) # (GND)))
-- \Add10~51\ = CARRY((!\Add10~49\) # (!\player1x[25]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1x[25]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add10~49\,
	combout => \Add10~50_combout\,
	cout => \Add10~51\);

-- Location: LCCOMB_X16_Y15_N18
\Add11~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~50_combout\ = (\player1x[25]~_Duplicate_1_q\ & (\Add11~49\ & VCC)) # (!\player1x[25]~_Duplicate_1_q\ & (!\Add11~49\))
-- \Add11~51\ = CARRY((!\player1x[25]~_Duplicate_1_q\ & !\Add11~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1x[25]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add11~49\,
	combout => \Add11~50_combout\,
	cout => \Add11~51\);

-- Location: LCCOMB_X18_Y15_N14
\player1x[25]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[25]~35_combout\ = (\player1x~71_combout\ & ((\Add10~50_combout\) # ((\player1x~23_combout\ & \Add11~50_combout\)))) # (!\player1x~71_combout\ & (((\player1x~23_combout\ & \Add11~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1x~71_combout\,
	datab => \Add10~50_combout\,
	datac => \player1x~23_combout\,
	datad => \Add11~50_combout\,
	combout => \player1x[25]~35_combout\);

-- Location: FF_X18_Y15_N15
\player1x[25]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[25]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1x[25]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y17_N30
\player1x~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x~10_combout\ = (!\player1x[24]~_Duplicate_1_q\ & (!\player1x[23]~_Duplicate_1_q\ & (!\player1x[22]~_Duplicate_1_q\ & !\player1x[25]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1x[24]~_Duplicate_1_q\,
	datab => \player1x[23]~_Duplicate_1_q\,
	datac => \player1x[22]~_Duplicate_1_q\,
	datad => \player1x[25]~_Duplicate_1_q\,
	combout => \player1x~10_combout\);

-- Location: LCCOMB_X17_Y17_N8
\player1x~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x~8_combout\ = (!\player1x[30]~_Duplicate_1_q\ & (((!player1x(2) & !player1x(1))) # (!player1x(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player1x(2),
	datab => player1x(3),
	datac => player1x(1),
	datad => \player1x[30]~_Duplicate_1_q\,
	combout => \player1x~8_combout\);

-- Location: LCCOMB_X16_Y15_N20
\Add11~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~52_combout\ = (\player1x[26]~_Duplicate_1_q\ & ((GND) # (!\Add11~51\))) # (!\player1x[26]~_Duplicate_1_q\ & (\Add11~51\ $ (GND)))
-- \Add11~53\ = CARRY((\player1x[26]~_Duplicate_1_q\) # (!\Add11~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1x[26]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add11~51\,
	combout => \Add11~52_combout\,
	cout => \Add11~53\);

-- Location: LCCOMB_X17_Y15_N20
\Add10~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~52_combout\ = (\player1x[26]~_Duplicate_1_q\ & (\Add10~51\ $ (GND))) # (!\player1x[26]~_Duplicate_1_q\ & (!\Add10~51\ & VCC))
-- \Add10~53\ = CARRY((\player1x[26]~_Duplicate_1_q\ & !\Add10~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1x[26]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add10~51\,
	combout => \Add10~52_combout\,
	cout => \Add10~53\);

-- Location: LCCOMB_X18_Y15_N2
\player1x[26]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[26]~34_combout\ = (\Add11~52_combout\ & ((\player1x~23_combout\) # ((\Add10~52_combout\ & \player1x~71_combout\)))) # (!\Add11~52_combout\ & (\Add10~52_combout\ & ((\player1x~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~52_combout\,
	datab => \Add10~52_combout\,
	datac => \player1x~23_combout\,
	datad => \player1x~71_combout\,
	combout => \player1x[26]~34_combout\);

-- Location: FF_X18_Y15_N3
\player1x[26]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1x[26]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y15_N22
\Add11~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~54_combout\ = (\player1x[27]~_Duplicate_1_q\ & (\Add11~53\ & VCC)) # (!\player1x[27]~_Duplicate_1_q\ & (!\Add11~53\))
-- \Add11~55\ = CARRY((!\player1x[27]~_Duplicate_1_q\ & !\Add11~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1x[27]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add11~53\,
	combout => \Add11~54_combout\,
	cout => \Add11~55\);

-- Location: LCCOMB_X17_Y15_N22
\Add10~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~54_combout\ = (\player1x[27]~_Duplicate_1_q\ & (!\Add10~53\)) # (!\player1x[27]~_Duplicate_1_q\ & ((\Add10~53\) # (GND)))
-- \Add10~55\ = CARRY((!\Add10~53\) # (!\player1x[27]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1x[27]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add10~53\,
	combout => \Add10~54_combout\,
	cout => \Add10~55\);

-- Location: LCCOMB_X18_Y15_N12
\player1x[27]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[27]~33_combout\ = (\Add11~54_combout\ & ((\player1x~23_combout\) # ((\Add10~54_combout\ & \player1x~71_combout\)))) # (!\Add11~54_combout\ & (\Add10~54_combout\ & ((\player1x~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~54_combout\,
	datab => \Add10~54_combout\,
	datac => \player1x~23_combout\,
	datad => \player1x~71_combout\,
	combout => \player1x[27]~33_combout\);

-- Location: FF_X18_Y15_N13
\player1x[27]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[27]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1x[27]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y15_N24
\Add11~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~56_combout\ = (\player1x[28]~_Duplicate_1_q\ & ((GND) # (!\Add11~55\))) # (!\player1x[28]~_Duplicate_1_q\ & (\Add11~55\ $ (GND)))
-- \Add11~57\ = CARRY((\player1x[28]~_Duplicate_1_q\) # (!\Add11~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1x[28]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add11~55\,
	combout => \Add11~56_combout\,
	cout => \Add11~57\);

-- Location: LCCOMB_X17_Y15_N24
\Add10~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~56_combout\ = (\player1x[28]~_Duplicate_1_q\ & (\Add10~55\ $ (GND))) # (!\player1x[28]~_Duplicate_1_q\ & (!\Add10~55\ & VCC))
-- \Add10~57\ = CARRY((\player1x[28]~_Duplicate_1_q\ & !\Add10~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1x[28]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add10~55\,
	combout => \Add10~56_combout\,
	cout => \Add10~57\);

-- Location: LCCOMB_X18_Y15_N30
\player1x[28]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[28]~32_combout\ = (\Add11~56_combout\ & ((\player1x~23_combout\) # ((\player1x~71_combout\ & \Add10~56_combout\)))) # (!\Add11~56_combout\ & (\player1x~71_combout\ & ((\Add10~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~56_combout\,
	datab => \player1x~71_combout\,
	datac => \player1x~23_combout\,
	datad => \Add10~56_combout\,
	combout => \player1x[28]~32_combout\);

-- Location: FF_X18_Y15_N31
\player1x[28]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[28]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1x[28]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y15_N26
\Add10~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~58_combout\ = (\player1x[29]~_Duplicate_1_q\ & (!\Add10~57\)) # (!\player1x[29]~_Duplicate_1_q\ & ((\Add10~57\) # (GND)))
-- \Add10~59\ = CARRY((!\Add10~57\) # (!\player1x[29]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1x[29]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add10~57\,
	combout => \Add10~58_combout\,
	cout => \Add10~59\);

-- Location: LCCOMB_X16_Y15_N26
\Add11~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~58_combout\ = (\player1x[29]~_Duplicate_1_q\ & (\Add11~57\ & VCC)) # (!\player1x[29]~_Duplicate_1_q\ & (!\Add11~57\))
-- \Add11~59\ = CARRY((!\player1x[29]~_Duplicate_1_q\ & !\Add11~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1x[29]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add11~57\,
	combout => \Add11~58_combout\,
	cout => \Add11~59\);

-- Location: LCCOMB_X18_Y15_N4
\player1x[29]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[29]~31_combout\ = (\Add10~58_combout\ & ((\player1x~71_combout\) # ((\Add11~58_combout\ & \player1x~23_combout\)))) # (!\Add10~58_combout\ & (\Add11~58_combout\ & (\player1x~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~58_combout\,
	datab => \Add11~58_combout\,
	datac => \player1x~23_combout\,
	datad => \player1x~71_combout\,
	combout => \player1x[29]~31_combout\);

-- Location: FF_X18_Y15_N5
\player1x[29]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[29]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1x[29]~_Duplicate_1_q\);

-- Location: LCCOMB_X18_Y15_N28
\player1x~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x~9_combout\ = (!\player1x[27]~_Duplicate_1_q\ & (!\player1x[29]~_Duplicate_1_q\ & (!\player1x[28]~_Duplicate_1_q\ & !\player1x[26]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1x[27]~_Duplicate_1_q\,
	datab => \player1x[29]~_Duplicate_1_q\,
	datac => \player1x[28]~_Duplicate_1_q\,
	datad => \player1x[26]~_Duplicate_1_q\,
	combout => \player1x~9_combout\);

-- Location: LCCOMB_X17_Y17_N28
\player1x~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x~11_combout\ = (!\player1x[18]~_Duplicate_1_q\ & (!\player1x[20]~_Duplicate_1_q\ & (!\player1x[19]~_Duplicate_1_q\ & !\player1x[21]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1x[18]~_Duplicate_1_q\,
	datab => \player1x[20]~_Duplicate_1_q\,
	datac => \player1x[19]~_Duplicate_1_q\,
	datad => \player1x[21]~_Duplicate_1_q\,
	combout => \player1x~11_combout\);

-- Location: LCCOMB_X17_Y17_N26
\player1x~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x~12_combout\ = (\player1x~10_combout\ & (\player1x~8_combout\ & (\player1x~9_combout\ & \player1x~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1x~10_combout\,
	datab => \player1x~8_combout\,
	datac => \player1x~9_combout\,
	datad => \player1x~11_combout\,
	combout => \player1x~12_combout\);

-- Location: LCCOMB_X18_Y15_N0
\player1x~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x~17_combout\ = (\player1x~13_combout\ & (\player1x~14_combout\ & (\player1x~16_combout\ & \player1x~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1x~13_combout\,
	datab => \player1x~14_combout\,
	datac => \player1x~16_combout\,
	datad => \player1x~12_combout\,
	combout => \player1x~17_combout\);

-- Location: LCCOMB_X18_Y15_N6
\player1x~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x~71_combout\ = (!\player1x[31]~_Duplicate_1_q\ & (\player1x~17_combout\ & (\Equal3~1_combout\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1x[31]~_Duplicate_1_q\,
	datab => \player1x~17_combout\,
	datac => \Equal3~1_combout\,
	datad => \Equal3~0_combout\,
	combout => \player1x~71_combout\);

-- Location: LCCOMB_X17_Y15_N28
\Add10~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~60_combout\ = (\player1x[30]~_Duplicate_1_q\ & (\Add10~59\ $ (GND))) # (!\player1x[30]~_Duplicate_1_q\ & (!\Add10~59\ & VCC))
-- \Add10~61\ = CARRY((\player1x[30]~_Duplicate_1_q\ & !\Add10~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1x[30]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add10~59\,
	combout => \Add10~60_combout\,
	cout => \Add10~61\);

-- Location: LCCOMB_X16_Y15_N28
\Add11~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~60_combout\ = (\player1x[30]~_Duplicate_1_q\ & ((GND) # (!\Add11~59\))) # (!\player1x[30]~_Duplicate_1_q\ & (\Add11~59\ $ (GND)))
-- \Add11~61\ = CARRY((\player1x[30]~_Duplicate_1_q\) # (!\Add11~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1x[30]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add11~59\,
	combout => \Add11~60_combout\,
	cout => \Add11~61\);

-- Location: LCCOMB_X18_Y15_N10
\player1x[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x[30]~30_combout\ = (\player1x~71_combout\ & ((\Add10~60_combout\) # ((\player1x~23_combout\ & \Add11~60_combout\)))) # (!\player1x~71_combout\ & (((\player1x~23_combout\ & \Add11~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1x~71_combout\,
	datab => \Add10~60_combout\,
	datac => \player1x~23_combout\,
	datad => \Add11~60_combout\,
	combout => \player1x[30]~30_combout\);

-- Location: FF_X18_Y15_N11
\player1x[30]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1x[30]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y15_N30
\Add10~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~62_combout\ = \Add10~61\ $ (\player1x[31]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \player1x[31]~_Duplicate_1_q\,
	cin => \Add10~61\,
	combout => \Add10~62_combout\);

-- Location: LCCOMB_X16_Y15_N30
\Add11~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~62_combout\ = \Add11~61\ $ (!\player1x[31]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \player1x[31]~_Duplicate_1_q\,
	cin => \Add11~61\,
	combout => \Add11~62_combout\);

-- Location: LCCOMB_X18_Y15_N16
\player1x~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x~24_combout\ = (\Add10~62_combout\ & ((\player1x~71_combout\) # ((\player1x~23_combout\ & \Add11~62_combout\)))) # (!\Add10~62_combout\ & (((\player1x~23_combout\ & \Add11~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~62_combout\,
	datab => \player1x~71_combout\,
	datac => \player1x~23_combout\,
	datad => \Add11~62_combout\,
	combout => \player1x~24_combout\);

-- Location: FF_X18_Y15_N17
\player1x[31]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1x[31]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y17_N22
\player1x~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x~7_combout\ = (\Equal3~2_combout\ & ((\Add10~0_combout\) # ((\Add11~0_combout\ & \player1x~6_combout\)))) # (!\Equal3~2_combout\ & (\Add11~0_combout\ & ((\player1x~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~2_combout\,
	datab => \Add11~0_combout\,
	datac => \Add10~0_combout\,
	datad => \player1x~6_combout\,
	combout => \player1x~7_combout\);

-- Location: LCCOMB_X16_Y17_N28
\player1x~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1x~18_combout\ = (!\player1x[31]~_Duplicate_1_q\ & ((!\player1x~17_combout\) # (!\player1x~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \player1x[31]~_Duplicate_1_q\,
	datac => \player1x~7_combout\,
	datad => \player1x~17_combout\,
	combout => \player1x~18_combout\);

-- Location: FF_X16_Y17_N29
\player1x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1x~18_combout\,
	ena => \player1x[30]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1x(0));

-- Location: LCCOMB_X18_Y17_N2
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = player1x(0) $ (GND)
-- \Add2~1\ = CARRY(!player1x(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player1x(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X19_Y17_N2
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (hPos(1) & ((GND) # (!\Add2~0_combout\))) # (!hPos(1) & (\Add2~0_combout\ $ (GND)))
-- \Add4~1\ = CARRY((hPos(1)) # (!\Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(1),
	datab => \Add2~0_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X18_Y17_N4
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (player1x(1) & (\Add2~1\ & VCC)) # (!player1x(1) & (!\Add2~1\))
-- \Add2~3\ = CARRY((!player1x(1) & !\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1x(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X19_Y17_N4
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (hPos(2) & ((\Add2~2_combout\ & (!\Add4~1\)) # (!\Add2~2_combout\ & (\Add4~1\ & VCC)))) # (!hPos(2) & ((\Add2~2_combout\ & ((\Add4~1\) # (GND))) # (!\Add2~2_combout\ & (!\Add4~1\))))
-- \Add4~3\ = CARRY((hPos(2) & (\Add2~2_combout\ & !\Add4~1\)) # (!hPos(2) & ((\Add2~2_combout\) # (!\Add4~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(2),
	datab => \Add2~2_combout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: DSPMULT_X20_Y17_N0
\Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y17_N2
\Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X18_Y17_N6
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\Mult0|auto_generated|w248w\(3) & ((GND) # (!\Add2~3\))) # (!\Mult0|auto_generated|w248w\(3) & (\Add2~3\ $ (GND)))
-- \Add2~5\ = CARRY((\Mult0|auto_generated|w248w\(3)) # (!\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|w248w\(3),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X19_Y17_N6
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = ((\Add2~4_combout\ $ (hPos(3) $ (\Add4~3\)))) # (GND)
-- \Add4~5\ = CARRY((\Add2~4_combout\ & (hPos(3) & !\Add4~3\)) # (!\Add2~4_combout\ & ((hPos(3)) # (!\Add4~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => hPos(3),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X18_Y17_N8
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Mult0|auto_generated|w248w\(4) & (!\Add2~5\)) # (!\Mult0|auto_generated|w248w\(4) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!\Mult0|auto_generated|w248w\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|w248w\(4),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X19_Y17_N8
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\Add2~6_combout\ & ((hPos(4) & (!\Add4~5\)) # (!hPos(4) & ((\Add4~5\) # (GND))))) # (!\Add2~6_combout\ & ((hPos(4) & (\Add4~5\ & VCC)) # (!hPos(4) & (!\Add4~5\))))
-- \Add4~7\ = CARRY((\Add2~6_combout\ & ((!\Add4~5\) # (!hPos(4)))) # (!\Add2~6_combout\ & (!hPos(4) & !\Add4~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => hPos(4),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X18_Y17_N10
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\Mult0|auto_generated|w248w\(5) & (\Add2~7\ $ (GND))) # (!\Mult0|auto_generated|w248w\(5) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((\Mult0|auto_generated|w248w\(5) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|w248w\(5),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X19_Y17_N10
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = ((\Add2~8_combout\ $ (hPos(5) $ (\Add4~7\)))) # (GND)
-- \Add4~9\ = CARRY((\Add2~8_combout\ & (hPos(5) & !\Add4~7\)) # (!\Add2~8_combout\ & ((hPos(5)) # (!\Add4~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => hPos(5),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X18_Y17_N12
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Mult0|auto_generated|w248w\(6) & (!\Add2~9\)) # (!\Mult0|auto_generated|w248w\(6) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!\Mult0|auto_generated|w248w\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|w248w\(6),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X19_Y17_N12
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\Add2~10_combout\ & ((hPos(6) & (!\Add4~9\)) # (!hPos(6) & ((\Add4~9\) # (GND))))) # (!\Add2~10_combout\ & ((hPos(6) & (\Add4~9\ & VCC)) # (!hPos(6) & (!\Add4~9\))))
-- \Add4~11\ = CARRY((\Add2~10_combout\ & ((!\Add4~9\) # (!hPos(6)))) # (!\Add2~10_combout\ & (!hPos(6) & !\Add4~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => hPos(6),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X18_Y17_N14
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\Mult0|auto_generated|w248w\(7) & ((GND) # (!\Add2~11\))) # (!\Mult0|auto_generated|w248w\(7) & (\Add2~11\ $ (GND)))
-- \Add2~13\ = CARRY((\Mult0|auto_generated|w248w\(7)) # (!\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|w248w\(7),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X19_Y17_N14
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = ((hPos(7) $ (\Add2~12_combout\ $ (\Add4~11\)))) # (GND)
-- \Add4~13\ = CARRY((hPos(7) & ((!\Add4~11\) # (!\Add2~12_combout\))) # (!hPos(7) & (!\Add2~12_combout\ & !\Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(7),
	datab => \Add2~12_combout\,
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X18_Y17_N16
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\Mult0|auto_generated|w248w\(8) & (!\Add2~13\)) # (!\Mult0|auto_generated|w248w\(8) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!\Mult0|auto_generated|w248w\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|w248w\(8),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X19_Y17_N16
\Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (\Add2~14_combout\ & ((hPos(8) & (!\Add4~13\)) # (!hPos(8) & ((\Add4~13\) # (GND))))) # (!\Add2~14_combout\ & ((hPos(8) & (\Add4~13\ & VCC)) # (!hPos(8) & (!\Add4~13\))))
-- \Add4~15\ = CARRY((\Add2~14_combout\ & ((!\Add4~13\) # (!hPos(8)))) # (!\Add2~14_combout\ & (!hPos(8) & !\Add4~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => hPos(8),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X18_Y17_N18
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (\Mult0|auto_generated|w248w\(9) & (\Add2~15\ $ (GND))) # (!\Mult0|auto_generated|w248w\(9) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((\Mult0|auto_generated|w248w\(9) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|w248w\(9),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X19_Y17_N18
\Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = ((hPos(9) $ (\Add2~16_combout\ $ (\Add4~15\)))) # (GND)
-- \Add4~17\ = CARRY((hPos(9) & ((!\Add4~15\) # (!\Add2~16_combout\))) # (!hPos(9) & (!\Add2~16_combout\ & !\Add4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(9),
	datab => \Add2~16_combout\,
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X18_Y17_N20
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\Mult0|auto_generated|w248w\(10) & (!\Add2~17\)) # (!\Mult0|auto_generated|w248w\(10) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!\Mult0|auto_generated|w248w\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|w248w\(10),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X19_Y17_N20
\Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (hPos(10) & ((\Add2~18_combout\ & (!\Add4~17\)) # (!\Add2~18_combout\ & (\Add4~17\ & VCC)))) # (!hPos(10) & ((\Add2~18_combout\ & ((\Add4~17\) # (GND))) # (!\Add2~18_combout\ & (!\Add4~17\))))
-- \Add4~19\ = CARRY((hPos(10) & (\Add2~18_combout\ & !\Add4~17\)) # (!hPos(10) & ((\Add2~18_combout\) # (!\Add4~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(10),
	datab => \Add2~18_combout\,
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: LCCOMB_X18_Y17_N22
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (\Mult0|auto_generated|w248w\(11) & (\Add2~19\ $ (GND))) # (!\Mult0|auto_generated|w248w\(11) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((\Mult0|auto_generated|w248w\(11) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|w248w\(11),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X19_Y17_N22
\Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = ((hPos(11) $ (\Add2~20_combout\ $ (\Add4~19\)))) # (GND)
-- \Add4~21\ = CARRY((hPos(11) & ((!\Add4~19\) # (!\Add2~20_combout\))) # (!hPos(11) & (!\Add2~20_combout\ & !\Add4~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(11),
	datab => \Add2~20_combout\,
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: LCCOMB_X18_Y17_N24
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\Mult0|auto_generated|w248w\(12) & (!\Add2~21\)) # (!\Mult0|auto_generated|w248w\(12) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!\Mult0|auto_generated|w248w\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|w248w\(12),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X19_Y17_N24
\Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (\Add2~22_combout\ & ((hPos(12) & (!\Add4~21\)) # (!hPos(12) & ((\Add4~21\) # (GND))))) # (!\Add2~22_combout\ & ((hPos(12) & (\Add4~21\ & VCC)) # (!hPos(12) & (!\Add4~21\))))
-- \Add4~23\ = CARRY((\Add2~22_combout\ & ((!\Add4~21\) # (!hPos(12)))) # (!\Add2~22_combout\ & (!hPos(12) & !\Add4~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~22_combout\,
	datab => hPos(12),
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: LCCOMB_X18_Y17_N26
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (\Mult0|auto_generated|w248w\(13) & (\Add2~23\ $ (GND))) # (!\Mult0|auto_generated|w248w\(13) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((\Mult0|auto_generated|w248w\(13) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|w248w\(13),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X19_Y17_N26
\Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = ((\Add2~24_combout\ $ (hPos(13) $ (\Add4~23\)))) # (GND)
-- \Add4~25\ = CARRY((\Add2~24_combout\ & (hPos(13) & !\Add4~23\)) # (!\Add2~24_combout\ & ((hPos(13)) # (!\Add4~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~24_combout\,
	datab => hPos(13),
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: LCCOMB_X18_Y17_N28
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\Mult0|auto_generated|w248w\(14) & (!\Add2~25\)) # (!\Mult0|auto_generated|w248w\(14) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!\Mult0|auto_generated|w248w\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|w248w\(14),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X19_Y17_N28
\Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (hPos(14) & ((\Add2~26_combout\ & (!\Add4~25\)) # (!\Add2~26_combout\ & (\Add4~25\ & VCC)))) # (!hPos(14) & ((\Add2~26_combout\ & ((\Add4~25\) # (GND))) # (!\Add2~26_combout\ & (!\Add4~25\))))
-- \Add4~27\ = CARRY((hPos(14) & (\Add2~26_combout\ & !\Add4~25\)) # (!hPos(14) & ((\Add2~26_combout\) # (!\Add4~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(14),
	datab => \Add2~26_combout\,
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: LCCOMB_X18_Y17_N30
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (\Mult0|auto_generated|w248w\(15) & (\Add2~27\ $ (GND))) # (!\Mult0|auto_generated|w248w\(15) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((\Mult0|auto_generated|w248w\(15) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|w248w\(15),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X19_Y17_N30
\Add4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = ((hPos(15) $ (\Add2~28_combout\ $ (\Add4~27\)))) # (GND)
-- \Add4~29\ = CARRY((hPos(15) & ((!\Add4~27\) # (!\Add2~28_combout\))) # (!hPos(15) & (!\Add2~28_combout\ & !\Add4~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(15),
	datab => \Add2~28_combout\,
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: LCCOMB_X18_Y16_N0
\Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (\Mult0|auto_generated|w248w\(16) & (!\Add2~29\)) # (!\Mult0|auto_generated|w248w\(16) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!\Mult0|auto_generated|w248w\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|w248w\(16),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X19_Y16_N0
\Add4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (\Add2~30_combout\ & ((hPos(16) & (!\Add4~29\)) # (!hPos(16) & ((\Add4~29\) # (GND))))) # (!\Add2~30_combout\ & ((hPos(16) & (\Add4~29\ & VCC)) # (!hPos(16) & (!\Add4~29\))))
-- \Add4~31\ = CARRY((\Add2~30_combout\ & ((!\Add4~29\) # (!hPos(16)))) # (!\Add2~30_combout\ & (!hPos(16) & !\Add4~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~30_combout\,
	datab => hPos(16),
	datad => VCC,
	cin => \Add4~29\,
	combout => \Add4~30_combout\,
	cout => \Add4~31\);

-- Location: LCCOMB_X18_Y16_N2
\Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (\Mult0|auto_generated|w248w\(17) & (\Add2~31\ $ (GND))) # (!\Mult0|auto_generated|w248w\(17) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((\Mult0|auto_generated|w248w\(17) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|w248w\(17),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X19_Y16_N2
\Add4~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = ((\Add2~32_combout\ $ (hPos(17) $ (\Add4~31\)))) # (GND)
-- \Add4~33\ = CARRY((\Add2~32_combout\ & (hPos(17) & !\Add4~31\)) # (!\Add2~32_combout\ & ((hPos(17)) # (!\Add4~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~32_combout\,
	datab => hPos(17),
	datad => VCC,
	cin => \Add4~31\,
	combout => \Add4~32_combout\,
	cout => \Add4~33\);

-- Location: DSPMULT_X20_Y14_N0
\Mult2|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Mult2|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult2|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult2|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y14_N2
\Mult2|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult2|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPMULT_X20_Y15_N0
\Mult0|auto_generated|mac_mult3\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \move|ps2_code_new~clkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \Mult0|auto_generated|mac_mult3_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y15_N2
\Mult0|auto_generated|mac_out4\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: LCCOMB_X21_Y16_N4
\Mult0|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~0_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT18\ & (\Mult0|auto_generated|mac_out4~dataout\ $ (VCC))) # (!\Mult0|auto_generated|mac_out2~DATAOUT18\ & (\Mult0|auto_generated|mac_out4~dataout\ & VCC))
-- \Mult0|auto_generated|op_1~1\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT18\ & \Mult0|auto_generated|mac_out4~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT18\,
	datab => \Mult0|auto_generated|mac_out4~dataout\,
	datad => VCC,
	combout => \Mult0|auto_generated|op_1~0_combout\,
	cout => \Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X18_Y16_N4
\Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (\Mult0|auto_generated|op_1~0_combout\ & (!\Add2~33\)) # (!\Mult0|auto_generated|op_1~0_combout\ & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!\Mult0|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X19_Y16_N4
\Add4~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~34_combout\ = (hPos(18) & ((\Add2~34_combout\ & (!\Add4~33\)) # (!\Add2~34_combout\ & (\Add4~33\ & VCC)))) # (!hPos(18) & ((\Add2~34_combout\ & ((\Add4~33\) # (GND))) # (!\Add2~34_combout\ & (!\Add4~33\))))
-- \Add4~35\ = CARRY((hPos(18) & (\Add2~34_combout\ & !\Add4~33\)) # (!hPos(18) & ((\Add2~34_combout\) # (!\Add4~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(18),
	datab => \Add2~34_combout\,
	datad => VCC,
	cin => \Add4~33\,
	combout => \Add4~34_combout\,
	cout => \Add4~35\);

-- Location: LCCOMB_X21_Y16_N6
\Mult0|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~2_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\Mult0|auto_generated|mac_out4~DATAOUT1\ & (\Mult0|auto_generated|op_1~1\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT1\ & (!\Mult0|auto_generated|op_1~1\)))) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\Mult0|auto_generated|mac_out4~DATAOUT1\ & (!\Mult0|auto_generated|op_1~1\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT1\ & ((\Mult0|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|auto_generated|op_1~3\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\Mult0|auto_generated|mac_out4~DATAOUT1\ & !\Mult0|auto_generated|op_1~1\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT19\ & ((!\Mult0|auto_generated|op_1~1\) # 
-- (!\Mult0|auto_generated|mac_out4~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT19\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT1\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~1\,
	combout => \Mult0|auto_generated|op_1~2_combout\,
	cout => \Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X18_Y16_N6
\Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (\Mult0|auto_generated|op_1~2_combout\ & (\Add2~35\ $ (GND))) # (!\Mult0|auto_generated|op_1~2_combout\ & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((\Mult0|auto_generated|op_1~2_combout\ & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X19_Y16_N6
\Add4~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~36_combout\ = ((hPos(19) $ (\Add2~36_combout\ $ (\Add4~35\)))) # (GND)
-- \Add4~37\ = CARRY((hPos(19) & ((!\Add4~35\) # (!\Add2~36_combout\))) # (!hPos(19) & (!\Add2~36_combout\ & !\Add4~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(19),
	datab => \Add2~36_combout\,
	datad => VCC,
	cin => \Add4~35\,
	combout => \Add4~36_combout\,
	cout => \Add4~37\);

-- Location: LCCOMB_X21_Y16_N8
\Mult0|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~4_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT2\ $ (\Mult0|auto_generated|mac_out2~DATAOUT20\ $ (!\Mult0|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|auto_generated|op_1~5\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT2\ & ((\Mult0|auto_generated|mac_out2~DATAOUT20\) # (!\Mult0|auto_generated|op_1~3\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT2\ & (\Mult0|auto_generated|mac_out2~DATAOUT20\ & 
-- !\Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT2\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~3\,
	combout => \Mult0|auto_generated|op_1~4_combout\,
	cout => \Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X18_Y16_N8
\Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (\Mult0|auto_generated|op_1~4_combout\ & (!\Add2~37\)) # (!\Mult0|auto_generated|op_1~4_combout\ & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!\Mult0|auto_generated|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X19_Y16_N8
\Add4~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~38_combout\ = (\Add2~38_combout\ & ((hPos(20) & (!\Add4~37\)) # (!hPos(20) & ((\Add4~37\) # (GND))))) # (!\Add2~38_combout\ & ((hPos(20) & (\Add4~37\ & VCC)) # (!hPos(20) & (!\Add4~37\))))
-- \Add4~39\ = CARRY((\Add2~38_combout\ & ((!\Add4~37\) # (!hPos(20)))) # (!\Add2~38_combout\ & (!hPos(20) & !\Add4~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~38_combout\,
	datab => hPos(20),
	datad => VCC,
	cin => \Add4~37\,
	combout => \Add4~38_combout\,
	cout => \Add4~39\);

-- Location: LCCOMB_X21_Y16_N10
\Mult0|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~6_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\Mult0|auto_generated|mac_out4~DATAOUT3\ & (\Mult0|auto_generated|op_1~5\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT3\ & (!\Mult0|auto_generated|op_1~5\)))) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\Mult0|auto_generated|mac_out4~DATAOUT3\ & (!\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT3\ & ((\Mult0|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|auto_generated|op_1~7\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT21\ & (!\Mult0|auto_generated|mac_out4~DATAOUT3\ & !\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT21\ & ((!\Mult0|auto_generated|op_1~5\) # 
-- (!\Mult0|auto_generated|mac_out4~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT21\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT3\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~5\,
	combout => \Mult0|auto_generated|op_1~6_combout\,
	cout => \Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X18_Y16_N10
\Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (\Mult0|auto_generated|op_1~6_combout\ & (\Add2~39\ $ (GND))) # (!\Mult0|auto_generated|op_1~6_combout\ & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((\Mult0|auto_generated|op_1~6_combout\ & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X19_Y16_N10
\Add4~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~40_combout\ = ((\Add2~40_combout\ $ (hPos(21) $ (\Add4~39\)))) # (GND)
-- \Add4~41\ = CARRY((\Add2~40_combout\ & (hPos(21) & !\Add4~39\)) # (!\Add2~40_combout\ & ((hPos(21)) # (!\Add4~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~40_combout\,
	datab => hPos(21),
	datad => VCC,
	cin => \Add4~39\,
	combout => \Add4~40_combout\,
	cout => \Add4~41\);

-- Location: LCCOMB_X21_Y16_N12
\Mult0|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~8_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT4\ $ (\Mult0|auto_generated|mac_out2~DATAOUT22\ $ (!\Mult0|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|auto_generated|op_1~9\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT4\ & ((\Mult0|auto_generated|mac_out2~DATAOUT22\) # (!\Mult0|auto_generated|op_1~7\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT4\ & (\Mult0|auto_generated|mac_out2~DATAOUT22\ & 
-- !\Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT4\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~7\,
	combout => \Mult0|auto_generated|op_1~8_combout\,
	cout => \Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X18_Y16_N12
\Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (\Mult0|auto_generated|op_1~8_combout\ & (!\Add2~41\)) # (!\Mult0|auto_generated|op_1~8_combout\ & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!\Mult0|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X19_Y16_N12
\Add4~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~42_combout\ = (\Add2~42_combout\ & ((hPos(22) & (!\Add4~41\)) # (!hPos(22) & ((\Add4~41\) # (GND))))) # (!\Add2~42_combout\ & ((hPos(22) & (\Add4~41\ & VCC)) # (!hPos(22) & (!\Add4~41\))))
-- \Add4~43\ = CARRY((\Add2~42_combout\ & ((!\Add4~41\) # (!hPos(22)))) # (!\Add2~42_combout\ & (!hPos(22) & !\Add4~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~42_combout\,
	datab => hPos(22),
	datad => VCC,
	cin => \Add4~41\,
	combout => \Add4~42_combout\,
	cout => \Add4~43\);

-- Location: LCCOMB_X21_Y16_N14
\Mult0|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~10_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\Mult0|auto_generated|mac_out4~DATAOUT5\ & (\Mult0|auto_generated|op_1~9\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT5\ & (!\Mult0|auto_generated|op_1~9\)))) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\Mult0|auto_generated|mac_out4~DATAOUT5\ & (!\Mult0|auto_generated|op_1~9\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT5\ & ((\Mult0|auto_generated|op_1~9\) # (GND)))))
-- \Mult0|auto_generated|op_1~11\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT23\ & (!\Mult0|auto_generated|mac_out4~DATAOUT5\ & !\Mult0|auto_generated|op_1~9\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT23\ & ((!\Mult0|auto_generated|op_1~9\) # 
-- (!\Mult0|auto_generated|mac_out4~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT23\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT5\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~9\,
	combout => \Mult0|auto_generated|op_1~10_combout\,
	cout => \Mult0|auto_generated|op_1~11\);

-- Location: LCCOMB_X18_Y16_N14
\Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (\Mult0|auto_generated|op_1~10_combout\ & (\Add2~43\ $ (GND))) # (!\Mult0|auto_generated|op_1~10_combout\ & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((\Mult0|auto_generated|op_1~10_combout\ & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X19_Y16_N14
\Add4~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~44_combout\ = ((\Add2~44_combout\ $ (hPos(23) $ (\Add4~43\)))) # (GND)
-- \Add4~45\ = CARRY((\Add2~44_combout\ & (hPos(23) & !\Add4~43\)) # (!\Add2~44_combout\ & ((hPos(23)) # (!\Add4~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~44_combout\,
	datab => hPos(23),
	datad => VCC,
	cin => \Add4~43\,
	combout => \Add4~44_combout\,
	cout => \Add4~45\);

-- Location: LCCOMB_X21_Y15_N14
\Mult0|auto_generated|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~0_combout\ = \Mult0|auto_generated|mac_out4~DATAOUT6\ $ (VCC)
-- \Mult0|auto_generated|op_2~1\ = CARRY(\Mult0|auto_generated|mac_out4~DATAOUT6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT6\,
	datad => VCC,
	combout => \Mult0|auto_generated|op_2~0_combout\,
	cout => \Mult0|auto_generated|op_2~1\);

-- Location: LCCOMB_X21_Y16_N16
\Mult0|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~12_combout\ = ((\Mult0|auto_generated|op_2~0_combout\ $ (\Mult0|auto_generated|mac_out2~DATAOUT24\ $ (\Mult0|auto_generated|op_1~11\)))) # (GND)
-- \Mult0|auto_generated|op_1~13\ = CARRY((\Mult0|auto_generated|op_2~0_combout\ & ((!\Mult0|auto_generated|op_1~11\) # (!\Mult0|auto_generated|mac_out2~DATAOUT24\))) # (!\Mult0|auto_generated|op_2~0_combout\ & (!\Mult0|auto_generated|mac_out2~DATAOUT24\ & 
-- !\Mult0|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~0_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~11\,
	combout => \Mult0|auto_generated|op_1~12_combout\,
	cout => \Mult0|auto_generated|op_1~13\);

-- Location: LCCOMB_X18_Y16_N16
\Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (\Mult0|auto_generated|op_1~12_combout\ & (!\Add2~45\)) # (!\Mult0|auto_generated|op_1~12_combout\ & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!\Mult0|auto_generated|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X19_Y16_N16
\Add4~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~46_combout\ = (\Add2~46_combout\ & ((hPos(24) & (!\Add4~45\)) # (!hPos(24) & ((\Add4~45\) # (GND))))) # (!\Add2~46_combout\ & ((hPos(24) & (\Add4~45\ & VCC)) # (!hPos(24) & (!\Add4~45\))))
-- \Add4~47\ = CARRY((\Add2~46_combout\ & ((!\Add4~45\) # (!hPos(24)))) # (!\Add2~46_combout\ & (!hPos(24) & !\Add4~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~46_combout\,
	datab => hPos(24),
	datad => VCC,
	cin => \Add4~45\,
	combout => \Add4~46_combout\,
	cout => \Add4~47\);

-- Location: LCCOMB_X21_Y15_N16
\Mult0|auto_generated|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~2_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT7\ & (!\Mult0|auto_generated|op_2~1\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT7\ & ((\Mult0|auto_generated|op_2~1\) # (GND)))
-- \Mult0|auto_generated|op_2~3\ = CARRY((!\Mult0|auto_generated|op_2~1\) # (!\Mult0|auto_generated|mac_out4~DATAOUT7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out4~DATAOUT7\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~1\,
	combout => \Mult0|auto_generated|op_2~2_combout\,
	cout => \Mult0|auto_generated|op_2~3\);

-- Location: LCCOMB_X21_Y16_N18
\Mult0|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~14_combout\ = (\Mult0|auto_generated|op_2~2_combout\ & (\Mult0|auto_generated|op_1~13\ & VCC)) # (!\Mult0|auto_generated|op_2~2_combout\ & (!\Mult0|auto_generated|op_1~13\))
-- \Mult0|auto_generated|op_1~15\ = CARRY((!\Mult0|auto_generated|op_2~2_combout\ & !\Mult0|auto_generated|op_1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|op_2~2_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~13\,
	combout => \Mult0|auto_generated|op_1~14_combout\,
	cout => \Mult0|auto_generated|op_1~15\);

-- Location: LCCOMB_X18_Y16_N18
\Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (\Mult0|auto_generated|op_1~14_combout\ & (\Add2~47\ $ (GND))) # (!\Mult0|auto_generated|op_1~14_combout\ & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((\Mult0|auto_generated|op_1~14_combout\ & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X19_Y16_N18
\Add4~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~48_combout\ = ((hPos(25) $ (\Add2~48_combout\ $ (\Add4~47\)))) # (GND)
-- \Add4~49\ = CARRY((hPos(25) & ((!\Add4~47\) # (!\Add2~48_combout\))) # (!hPos(25) & (!\Add2~48_combout\ & !\Add4~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(25),
	datab => \Add2~48_combout\,
	datad => VCC,
	cin => \Add4~47\,
	combout => \Add4~48_combout\,
	cout => \Add4~49\);

-- Location: LCCOMB_X21_Y15_N18
\Mult0|auto_generated|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~4_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT8\ & (\Mult0|auto_generated|op_2~3\ $ (GND))) # (!\Mult0|auto_generated|mac_out4~DATAOUT8\ & (!\Mult0|auto_generated|op_2~3\ & VCC))
-- \Mult0|auto_generated|op_2~5\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT8\ & !\Mult0|auto_generated|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT8\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~3\,
	combout => \Mult0|auto_generated|op_2~4_combout\,
	cout => \Mult0|auto_generated|op_2~5\);

-- Location: LCCOMB_X21_Y16_N20
\Mult0|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~16_combout\ = (\Mult0|auto_generated|op_2~4_combout\ & ((GND) # (!\Mult0|auto_generated|op_1~15\))) # (!\Mult0|auto_generated|op_2~4_combout\ & (\Mult0|auto_generated|op_1~15\ $ (GND)))
-- \Mult0|auto_generated|op_1~17\ = CARRY((\Mult0|auto_generated|op_2~4_combout\) # (!\Mult0|auto_generated|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|op_2~4_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~15\,
	combout => \Mult0|auto_generated|op_1~16_combout\,
	cout => \Mult0|auto_generated|op_1~17\);

-- Location: LCCOMB_X18_Y16_N20
\Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (\Mult0|auto_generated|op_1~16_combout\ & (!\Add2~49\)) # (!\Mult0|auto_generated|op_1~16_combout\ & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!\Mult0|auto_generated|op_1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X19_Y16_N20
\Add4~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~50_combout\ = (hPos(26) & ((\Add2~50_combout\ & (!\Add4~49\)) # (!\Add2~50_combout\ & (\Add4~49\ & VCC)))) # (!hPos(26) & ((\Add2~50_combout\ & ((\Add4~49\) # (GND))) # (!\Add2~50_combout\ & (!\Add4~49\))))
-- \Add4~51\ = CARRY((hPos(26) & (\Add2~50_combout\ & !\Add4~49\)) # (!hPos(26) & ((\Add2~50_combout\) # (!\Add4~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(26),
	datab => \Add2~50_combout\,
	datad => VCC,
	cin => \Add4~49\,
	combout => \Add4~50_combout\,
	cout => \Add4~51\);

-- Location: LCCOMB_X21_Y15_N20
\Mult0|auto_generated|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~6_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT9\ & (!\Mult0|auto_generated|op_2~5\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT9\ & ((\Mult0|auto_generated|op_2~5\) # (GND)))
-- \Mult0|auto_generated|op_2~7\ = CARRY((!\Mult0|auto_generated|op_2~5\) # (!\Mult0|auto_generated|mac_out4~DATAOUT9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT9\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~5\,
	combout => \Mult0|auto_generated|op_2~6_combout\,
	cout => \Mult0|auto_generated|op_2~7\);

-- Location: LCCOMB_X21_Y16_N22
\Mult0|auto_generated|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~18_combout\ = (\Mult0|auto_generated|op_2~6_combout\ & (\Mult0|auto_generated|op_1~17\ & VCC)) # (!\Mult0|auto_generated|op_2~6_combout\ & (!\Mult0|auto_generated|op_1~17\))
-- \Mult0|auto_generated|op_1~19\ = CARRY((!\Mult0|auto_generated|op_2~6_combout\ & !\Mult0|auto_generated|op_1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~6_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~17\,
	combout => \Mult0|auto_generated|op_1~18_combout\,
	cout => \Mult0|auto_generated|op_1~19\);

-- Location: LCCOMB_X18_Y16_N22
\Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (\Mult0|auto_generated|op_1~18_combout\ & (\Add2~51\ $ (GND))) # (!\Mult0|auto_generated|op_1~18_combout\ & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((\Mult0|auto_generated|op_1~18_combout\ & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X19_Y16_N22
\Add4~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~52_combout\ = ((hPos(27) $ (\Add2~52_combout\ $ (\Add4~51\)))) # (GND)
-- \Add4~53\ = CARRY((hPos(27) & ((!\Add4~51\) # (!\Add2~52_combout\))) # (!hPos(27) & (!\Add2~52_combout\ & !\Add4~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(27),
	datab => \Add2~52_combout\,
	datad => VCC,
	cin => \Add4~51\,
	combout => \Add4~52_combout\,
	cout => \Add4~53\);

-- Location: LCCOMB_X21_Y15_N22
\Mult0|auto_generated|op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~8_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT10\ & (\Mult0|auto_generated|op_2~7\ $ (GND))) # (!\Mult0|auto_generated|mac_out4~DATAOUT10\ & (!\Mult0|auto_generated|op_2~7\ & VCC))
-- \Mult0|auto_generated|op_2~9\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT10\ & !\Mult0|auto_generated|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT10\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~7\,
	combout => \Mult0|auto_generated|op_2~8_combout\,
	cout => \Mult0|auto_generated|op_2~9\);

-- Location: LCCOMB_X21_Y16_N24
\Mult0|auto_generated|op_1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~20_combout\ = (\Mult0|auto_generated|op_2~8_combout\ & ((GND) # (!\Mult0|auto_generated|op_1~19\))) # (!\Mult0|auto_generated|op_2~8_combout\ & (\Mult0|auto_generated|op_1~19\ $ (GND)))
-- \Mult0|auto_generated|op_1~21\ = CARRY((\Mult0|auto_generated|op_2~8_combout\) # (!\Mult0|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~8_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~19\,
	combout => \Mult0|auto_generated|op_1~20_combout\,
	cout => \Mult0|auto_generated|op_1~21\);

-- Location: LCCOMB_X18_Y16_N24
\Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (\Mult0|auto_generated|op_1~20_combout\ & (!\Add2~53\)) # (!\Mult0|auto_generated|op_1~20_combout\ & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!\Mult0|auto_generated|op_1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X19_Y16_N24
\Add4~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~54_combout\ = (hPos(28) & ((\Add2~54_combout\ & (!\Add4~53\)) # (!\Add2~54_combout\ & (\Add4~53\ & VCC)))) # (!hPos(28) & ((\Add2~54_combout\ & ((\Add4~53\) # (GND))) # (!\Add2~54_combout\ & (!\Add4~53\))))
-- \Add4~55\ = CARRY((hPos(28) & (\Add2~54_combout\ & !\Add4~53\)) # (!hPos(28) & ((\Add2~54_combout\) # (!\Add4~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(28),
	datab => \Add2~54_combout\,
	datad => VCC,
	cin => \Add4~53\,
	combout => \Add4~54_combout\,
	cout => \Add4~55\);

-- Location: LCCOMB_X21_Y15_N24
\Mult0|auto_generated|op_2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~10_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT11\ & (!\Mult0|auto_generated|op_2~9\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT11\ & ((\Mult0|auto_generated|op_2~9\) # (GND)))
-- \Mult0|auto_generated|op_2~11\ = CARRY((!\Mult0|auto_generated|op_2~9\) # (!\Mult0|auto_generated|mac_out4~DATAOUT11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT11\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~9\,
	combout => \Mult0|auto_generated|op_2~10_combout\,
	cout => \Mult0|auto_generated|op_2~11\);

-- Location: LCCOMB_X21_Y16_N26
\Mult0|auto_generated|op_1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~22_combout\ = (\Mult0|auto_generated|op_2~10_combout\ & (\Mult0|auto_generated|op_1~21\ & VCC)) # (!\Mult0|auto_generated|op_2~10_combout\ & (!\Mult0|auto_generated|op_1~21\))
-- \Mult0|auto_generated|op_1~23\ = CARRY((!\Mult0|auto_generated|op_2~10_combout\ & !\Mult0|auto_generated|op_1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|op_2~10_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~21\,
	combout => \Mult0|auto_generated|op_1~22_combout\,
	cout => \Mult0|auto_generated|op_1~23\);

-- Location: LCCOMB_X18_Y16_N26
\Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (\Mult0|auto_generated|op_1~22_combout\ & (\Add2~55\ $ (GND))) # (!\Mult0|auto_generated|op_1~22_combout\ & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((\Mult0|auto_generated|op_1~22_combout\ & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X19_Y16_N26
\Add4~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~56_combout\ = ((\Add2~56_combout\ $ (hPos(29) $ (\Add4~55\)))) # (GND)
-- \Add4~57\ = CARRY((\Add2~56_combout\ & (hPos(29) & !\Add4~55\)) # (!\Add2~56_combout\ & ((hPos(29)) # (!\Add4~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~56_combout\,
	datab => hPos(29),
	datad => VCC,
	cin => \Add4~55\,
	combout => \Add4~56_combout\,
	cout => \Add4~57\);

-- Location: LCCOMB_X21_Y15_N26
\Mult0|auto_generated|op_2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~12_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT12\ & (\Mult0|auto_generated|op_2~11\ $ (GND))) # (!\Mult0|auto_generated|mac_out4~DATAOUT12\ & (!\Mult0|auto_generated|op_2~11\ & VCC))
-- \Mult0|auto_generated|op_2~13\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT12\ & !\Mult0|auto_generated|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out4~DATAOUT12\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~11\,
	combout => \Mult0|auto_generated|op_2~12_combout\,
	cout => \Mult0|auto_generated|op_2~13\);

-- Location: LCCOMB_X21_Y16_N28
\Mult0|auto_generated|op_1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~24_combout\ = (\Mult0|auto_generated|op_2~12_combout\ & ((GND) # (!\Mult0|auto_generated|op_1~23\))) # (!\Mult0|auto_generated|op_2~12_combout\ & (\Mult0|auto_generated|op_1~23\ $ (GND)))
-- \Mult0|auto_generated|op_1~25\ = CARRY((\Mult0|auto_generated|op_2~12_combout\) # (!\Mult0|auto_generated|op_1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|op_2~12_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~23\,
	combout => \Mult0|auto_generated|op_1~24_combout\,
	cout => \Mult0|auto_generated|op_1~25\);

-- Location: LCCOMB_X18_Y16_N28
\Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (\Mult0|auto_generated|op_1~24_combout\ & (!\Add2~57\)) # (!\Mult0|auto_generated|op_1~24_combout\ & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!\Mult0|auto_generated|op_1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X19_Y16_N28
\Add4~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~58_combout\ = (hPos(30) & ((\Add2~58_combout\ & (!\Add4~57\)) # (!\Add2~58_combout\ & (\Add4~57\ & VCC)))) # (!hPos(30) & ((\Add2~58_combout\ & ((\Add4~57\) # (GND))) # (!\Add2~58_combout\ & (!\Add4~57\))))
-- \Add4~59\ = CARRY((hPos(30) & (\Add2~58_combout\ & !\Add4~57\)) # (!hPos(30) & ((\Add2~58_combout\) # (!\Add4~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(30),
	datab => \Add2~58_combout\,
	datad => VCC,
	cin => \Add4~57\,
	combout => \Add4~58_combout\,
	cout => \Add4~59\);

-- Location: LCCOMB_X21_Y15_N28
\Mult0|auto_generated|op_2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~14_combout\ = \Mult0|auto_generated|op_2~13\ $ (\Mult0|auto_generated|mac_out4~DATAOUT13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|auto_generated|mac_out4~DATAOUT13\,
	cin => \Mult0|auto_generated|op_2~13\,
	combout => \Mult0|auto_generated|op_2~14_combout\);

-- Location: LCCOMB_X21_Y16_N30
\Mult0|auto_generated|op_1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~26_combout\ = \Mult0|auto_generated|op_1~25\ $ (!\Mult0|auto_generated|op_2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|auto_generated|op_2~14_combout\,
	cin => \Mult0|auto_generated|op_1~25\,
	combout => \Mult0|auto_generated|op_1~26_combout\);

-- Location: LCCOMB_X18_Y16_N30
\Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = \Add2~59\ $ (!\Mult0|auto_generated|op_1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|auto_generated|op_1~26_combout\,
	cin => \Add2~59\,
	combout => \Add2~60_combout\);

-- Location: LCCOMB_X19_Y16_N30
\Add4~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~60_combout\ = hPos(31) $ (\Add4~59\ $ (\Add2~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(31),
	datad => \Add2~60_combout\,
	cin => \Add4~59\,
	combout => \Add4~60_combout\);

-- Location: DSPMULT_X20_Y13_N0
\Mult2|auto_generated|mac_mult3\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	dataa => \Mult2|auto_generated|mac_mult3_DATAA_bus\,
	datab => \Mult2|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult2|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y13_N2
\Mult2|auto_generated|mac_out4\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult2|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: DSPMULT_X20_Y16_N0
\Mult2|auto_generated|mac_mult5\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	dataa => \Mult2|auto_generated|mac_mult5_DATAA_bus\,
	datab => \Mult2|auto_generated|mac_mult5_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult2|auto_generated|mac_mult5_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y16_N2
\Mult2|auto_generated|mac_out6\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out6_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult2|auto_generated|mac_out6_DATAOUT_bus\);

-- Location: LCCOMB_X21_Y13_N2
\Mult2|auto_generated|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_2~0_combout\ = (\Mult2|auto_generated|mac_out6~dataout\ & (\Mult2|auto_generated|mac_out4~dataout\ $ (VCC))) # (!\Mult2|auto_generated|mac_out6~dataout\ & (\Mult2|auto_generated|mac_out4~dataout\ & VCC))
-- \Mult2|auto_generated|op_2~1\ = CARRY((\Mult2|auto_generated|mac_out6~dataout\ & \Mult2|auto_generated|mac_out4~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out6~dataout\,
	datab => \Mult2|auto_generated|mac_out4~dataout\,
	datad => VCC,
	combout => \Mult2|auto_generated|op_2~0_combout\,
	cout => \Mult2|auto_generated|op_2~1\);

-- Location: LCCOMB_X21_Y13_N4
\Mult2|auto_generated|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_2~2_combout\ = (\Mult2|auto_generated|mac_out4~DATAOUT1\ & ((\Mult2|auto_generated|mac_out6~DATAOUT1\ & (\Mult2|auto_generated|op_2~1\ & VCC)) # (!\Mult2|auto_generated|mac_out6~DATAOUT1\ & (!\Mult2|auto_generated|op_2~1\)))) # 
-- (!\Mult2|auto_generated|mac_out4~DATAOUT1\ & ((\Mult2|auto_generated|mac_out6~DATAOUT1\ & (!\Mult2|auto_generated|op_2~1\)) # (!\Mult2|auto_generated|mac_out6~DATAOUT1\ & ((\Mult2|auto_generated|op_2~1\) # (GND)))))
-- \Mult2|auto_generated|op_2~3\ = CARRY((\Mult2|auto_generated|mac_out4~DATAOUT1\ & (!\Mult2|auto_generated|mac_out6~DATAOUT1\ & !\Mult2|auto_generated|op_2~1\)) # (!\Mult2|auto_generated|mac_out4~DATAOUT1\ & ((!\Mult2|auto_generated|op_2~1\) # 
-- (!\Mult2|auto_generated|mac_out6~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out4~DATAOUT1\,
	datab => \Mult2|auto_generated|mac_out6~DATAOUT1\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_2~1\,
	combout => \Mult2|auto_generated|op_2~2_combout\,
	cout => \Mult2|auto_generated|op_2~3\);

-- Location: LCCOMB_X21_Y13_N6
\Mult2|auto_generated|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_2~4_combout\ = ((\Mult2|auto_generated|mac_out4~DATAOUT2\ $ (\Mult2|auto_generated|mac_out6~DATAOUT2\ $ (!\Mult2|auto_generated|op_2~3\)))) # (GND)
-- \Mult2|auto_generated|op_2~5\ = CARRY((\Mult2|auto_generated|mac_out4~DATAOUT2\ & ((\Mult2|auto_generated|mac_out6~DATAOUT2\) # (!\Mult2|auto_generated|op_2~3\))) # (!\Mult2|auto_generated|mac_out4~DATAOUT2\ & (\Mult2|auto_generated|mac_out6~DATAOUT2\ & 
-- !\Mult2|auto_generated|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out4~DATAOUT2\,
	datab => \Mult2|auto_generated|mac_out6~DATAOUT2\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_2~3\,
	combout => \Mult2|auto_generated|op_2~4_combout\,
	cout => \Mult2|auto_generated|op_2~5\);

-- Location: LCCOMB_X21_Y13_N8
\Mult2|auto_generated|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_2~6_combout\ = (\Mult2|auto_generated|mac_out6~DATAOUT3\ & ((\Mult2|auto_generated|mac_out4~DATAOUT3\ & (\Mult2|auto_generated|op_2~5\ & VCC)) # (!\Mult2|auto_generated|mac_out4~DATAOUT3\ & (!\Mult2|auto_generated|op_2~5\)))) # 
-- (!\Mult2|auto_generated|mac_out6~DATAOUT3\ & ((\Mult2|auto_generated|mac_out4~DATAOUT3\ & (!\Mult2|auto_generated|op_2~5\)) # (!\Mult2|auto_generated|mac_out4~DATAOUT3\ & ((\Mult2|auto_generated|op_2~5\) # (GND)))))
-- \Mult2|auto_generated|op_2~7\ = CARRY((\Mult2|auto_generated|mac_out6~DATAOUT3\ & (!\Mult2|auto_generated|mac_out4~DATAOUT3\ & !\Mult2|auto_generated|op_2~5\)) # (!\Mult2|auto_generated|mac_out6~DATAOUT3\ & ((!\Mult2|auto_generated|op_2~5\) # 
-- (!\Mult2|auto_generated|mac_out4~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out6~DATAOUT3\,
	datab => \Mult2|auto_generated|mac_out4~DATAOUT3\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_2~5\,
	combout => \Mult2|auto_generated|op_2~6_combout\,
	cout => \Mult2|auto_generated|op_2~7\);

-- Location: LCCOMB_X21_Y13_N10
\Mult2|auto_generated|op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_2~8_combout\ = ((\Mult2|auto_generated|mac_out4~DATAOUT4\ $ (\Mult2|auto_generated|mac_out6~DATAOUT4\ $ (!\Mult2|auto_generated|op_2~7\)))) # (GND)
-- \Mult2|auto_generated|op_2~9\ = CARRY((\Mult2|auto_generated|mac_out4~DATAOUT4\ & ((\Mult2|auto_generated|mac_out6~DATAOUT4\) # (!\Mult2|auto_generated|op_2~7\))) # (!\Mult2|auto_generated|mac_out4~DATAOUT4\ & (\Mult2|auto_generated|mac_out6~DATAOUT4\ & 
-- !\Mult2|auto_generated|op_2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out4~DATAOUT4\,
	datab => \Mult2|auto_generated|mac_out6~DATAOUT4\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_2~7\,
	combout => \Mult2|auto_generated|op_2~8_combout\,
	cout => \Mult2|auto_generated|op_2~9\);

-- Location: LCCOMB_X21_Y13_N12
\Mult2|auto_generated|op_2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_2~10_combout\ = (\Mult2|auto_generated|mac_out6~DATAOUT5\ & ((\Mult2|auto_generated|mac_out4~DATAOUT5\ & (\Mult2|auto_generated|op_2~9\ & VCC)) # (!\Mult2|auto_generated|mac_out4~DATAOUT5\ & (!\Mult2|auto_generated|op_2~9\)))) # 
-- (!\Mult2|auto_generated|mac_out6~DATAOUT5\ & ((\Mult2|auto_generated|mac_out4~DATAOUT5\ & (!\Mult2|auto_generated|op_2~9\)) # (!\Mult2|auto_generated|mac_out4~DATAOUT5\ & ((\Mult2|auto_generated|op_2~9\) # (GND)))))
-- \Mult2|auto_generated|op_2~11\ = CARRY((\Mult2|auto_generated|mac_out6~DATAOUT5\ & (!\Mult2|auto_generated|mac_out4~DATAOUT5\ & !\Mult2|auto_generated|op_2~9\)) # (!\Mult2|auto_generated|mac_out6~DATAOUT5\ & ((!\Mult2|auto_generated|op_2~9\) # 
-- (!\Mult2|auto_generated|mac_out4~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out6~DATAOUT5\,
	datab => \Mult2|auto_generated|mac_out4~DATAOUT5\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_2~9\,
	combout => \Mult2|auto_generated|op_2~10_combout\,
	cout => \Mult2|auto_generated|op_2~11\);

-- Location: LCCOMB_X21_Y13_N14
\Mult2|auto_generated|op_2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_2~12_combout\ = ((\Mult2|auto_generated|mac_out6~DATAOUT6\ $ (\Mult2|auto_generated|mac_out4~DATAOUT6\ $ (!\Mult2|auto_generated|op_2~11\)))) # (GND)
-- \Mult2|auto_generated|op_2~13\ = CARRY((\Mult2|auto_generated|mac_out6~DATAOUT6\ & ((\Mult2|auto_generated|mac_out4~DATAOUT6\) # (!\Mult2|auto_generated|op_2~11\))) # (!\Mult2|auto_generated|mac_out6~DATAOUT6\ & (\Mult2|auto_generated|mac_out4~DATAOUT6\ & 
-- !\Mult2|auto_generated|op_2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out6~DATAOUT6\,
	datab => \Mult2|auto_generated|mac_out4~DATAOUT6\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_2~11\,
	combout => \Mult2|auto_generated|op_2~12_combout\,
	cout => \Mult2|auto_generated|op_2~13\);

-- Location: LCCOMB_X21_Y13_N16
\Mult2|auto_generated|op_2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_2~14_combout\ = (\Mult2|auto_generated|mac_out4~DATAOUT7\ & ((\Mult2|auto_generated|mac_out6~DATAOUT7\ & (\Mult2|auto_generated|op_2~13\ & VCC)) # (!\Mult2|auto_generated|mac_out6~DATAOUT7\ & (!\Mult2|auto_generated|op_2~13\)))) # 
-- (!\Mult2|auto_generated|mac_out4~DATAOUT7\ & ((\Mult2|auto_generated|mac_out6~DATAOUT7\ & (!\Mult2|auto_generated|op_2~13\)) # (!\Mult2|auto_generated|mac_out6~DATAOUT7\ & ((\Mult2|auto_generated|op_2~13\) # (GND)))))
-- \Mult2|auto_generated|op_2~15\ = CARRY((\Mult2|auto_generated|mac_out4~DATAOUT7\ & (!\Mult2|auto_generated|mac_out6~DATAOUT7\ & !\Mult2|auto_generated|op_2~13\)) # (!\Mult2|auto_generated|mac_out4~DATAOUT7\ & ((!\Mult2|auto_generated|op_2~13\) # 
-- (!\Mult2|auto_generated|mac_out6~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out4~DATAOUT7\,
	datab => \Mult2|auto_generated|mac_out6~DATAOUT7\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_2~13\,
	combout => \Mult2|auto_generated|op_2~14_combout\,
	cout => \Mult2|auto_generated|op_2~15\);

-- Location: LCCOMB_X21_Y13_N18
\Mult2|auto_generated|op_2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_2~16_combout\ = ((\Mult2|auto_generated|mac_out4~DATAOUT8\ $ (\Mult2|auto_generated|mac_out6~DATAOUT8\ $ (!\Mult2|auto_generated|op_2~15\)))) # (GND)
-- \Mult2|auto_generated|op_2~17\ = CARRY((\Mult2|auto_generated|mac_out4~DATAOUT8\ & ((\Mult2|auto_generated|mac_out6~DATAOUT8\) # (!\Mult2|auto_generated|op_2~15\))) # (!\Mult2|auto_generated|mac_out4~DATAOUT8\ & (\Mult2|auto_generated|mac_out6~DATAOUT8\ & 
-- !\Mult2|auto_generated|op_2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out4~DATAOUT8\,
	datab => \Mult2|auto_generated|mac_out6~DATAOUT8\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_2~15\,
	combout => \Mult2|auto_generated|op_2~16_combout\,
	cout => \Mult2|auto_generated|op_2~17\);

-- Location: LCCOMB_X21_Y13_N20
\Mult2|auto_generated|op_2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_2~18_combout\ = (\Mult2|auto_generated|mac_out6~DATAOUT9\ & ((\Mult2|auto_generated|mac_out4~DATAOUT9\ & (\Mult2|auto_generated|op_2~17\ & VCC)) # (!\Mult2|auto_generated|mac_out4~DATAOUT9\ & (!\Mult2|auto_generated|op_2~17\)))) # 
-- (!\Mult2|auto_generated|mac_out6~DATAOUT9\ & ((\Mult2|auto_generated|mac_out4~DATAOUT9\ & (!\Mult2|auto_generated|op_2~17\)) # (!\Mult2|auto_generated|mac_out4~DATAOUT9\ & ((\Mult2|auto_generated|op_2~17\) # (GND)))))
-- \Mult2|auto_generated|op_2~19\ = CARRY((\Mult2|auto_generated|mac_out6~DATAOUT9\ & (!\Mult2|auto_generated|mac_out4~DATAOUT9\ & !\Mult2|auto_generated|op_2~17\)) # (!\Mult2|auto_generated|mac_out6~DATAOUT9\ & ((!\Mult2|auto_generated|op_2~17\) # 
-- (!\Mult2|auto_generated|mac_out4~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out6~DATAOUT9\,
	datab => \Mult2|auto_generated|mac_out4~DATAOUT9\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_2~17\,
	combout => \Mult2|auto_generated|op_2~18_combout\,
	cout => \Mult2|auto_generated|op_2~19\);

-- Location: LCCOMB_X21_Y13_N22
\Mult2|auto_generated|op_2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_2~20_combout\ = ((\Mult2|auto_generated|mac_out4~DATAOUT10\ $ (\Mult2|auto_generated|mac_out6~DATAOUT10\ $ (!\Mult2|auto_generated|op_2~19\)))) # (GND)
-- \Mult2|auto_generated|op_2~21\ = CARRY((\Mult2|auto_generated|mac_out4~DATAOUT10\ & ((\Mult2|auto_generated|mac_out6~DATAOUT10\) # (!\Mult2|auto_generated|op_2~19\))) # (!\Mult2|auto_generated|mac_out4~DATAOUT10\ & 
-- (\Mult2|auto_generated|mac_out6~DATAOUT10\ & !\Mult2|auto_generated|op_2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out4~DATAOUT10\,
	datab => \Mult2|auto_generated|mac_out6~DATAOUT10\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_2~19\,
	combout => \Mult2|auto_generated|op_2~20_combout\,
	cout => \Mult2|auto_generated|op_2~21\);

-- Location: LCCOMB_X21_Y13_N24
\Mult2|auto_generated|op_2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_2~22_combout\ = (\Mult2|auto_generated|mac_out6~DATAOUT11\ & ((\Mult2|auto_generated|mac_out4~DATAOUT11\ & (\Mult2|auto_generated|op_2~21\ & VCC)) # (!\Mult2|auto_generated|mac_out4~DATAOUT11\ & 
-- (!\Mult2|auto_generated|op_2~21\)))) # (!\Mult2|auto_generated|mac_out6~DATAOUT11\ & ((\Mult2|auto_generated|mac_out4~DATAOUT11\ & (!\Mult2|auto_generated|op_2~21\)) # (!\Mult2|auto_generated|mac_out4~DATAOUT11\ & ((\Mult2|auto_generated|op_2~21\) # 
-- (GND)))))
-- \Mult2|auto_generated|op_2~23\ = CARRY((\Mult2|auto_generated|mac_out6~DATAOUT11\ & (!\Mult2|auto_generated|mac_out4~DATAOUT11\ & !\Mult2|auto_generated|op_2~21\)) # (!\Mult2|auto_generated|mac_out6~DATAOUT11\ & ((!\Mult2|auto_generated|op_2~21\) # 
-- (!\Mult2|auto_generated|mac_out4~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out6~DATAOUT11\,
	datab => \Mult2|auto_generated|mac_out4~DATAOUT11\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_2~21\,
	combout => \Mult2|auto_generated|op_2~22_combout\,
	cout => \Mult2|auto_generated|op_2~23\);

-- Location: LCCOMB_X21_Y13_N26
\Mult2|auto_generated|op_2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_2~24_combout\ = ((\Mult2|auto_generated|mac_out4~DATAOUT12\ $ (\Mult2|auto_generated|mac_out6~DATAOUT12\ $ (!\Mult2|auto_generated|op_2~23\)))) # (GND)
-- \Mult2|auto_generated|op_2~25\ = CARRY((\Mult2|auto_generated|mac_out4~DATAOUT12\ & ((\Mult2|auto_generated|mac_out6~DATAOUT12\) # (!\Mult2|auto_generated|op_2~23\))) # (!\Mult2|auto_generated|mac_out4~DATAOUT12\ & 
-- (\Mult2|auto_generated|mac_out6~DATAOUT12\ & !\Mult2|auto_generated|op_2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out4~DATAOUT12\,
	datab => \Mult2|auto_generated|mac_out6~DATAOUT12\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_2~23\,
	combout => \Mult2|auto_generated|op_2~24_combout\,
	cout => \Mult2|auto_generated|op_2~25\);

-- Location: LCCOMB_X21_Y13_N28
\Mult2|auto_generated|op_2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_2~26_combout\ = \Mult2|auto_generated|mac_out4~DATAOUT13\ $ (\Mult2|auto_generated|op_2~25\ $ (\Mult2|auto_generated|mac_out6~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|mac_out4~DATAOUT13\,
	datad => \Mult2|auto_generated|mac_out6~DATAOUT13\,
	cin => \Mult2|auto_generated|op_2~25\,
	combout => \Mult2|auto_generated|op_2~26_combout\);

-- Location: LCCOMB_X22_Y13_N0
\Mult2|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_1~0_combout\ = (\Mult2|auto_generated|op_2~0_combout\ & (\Mult2|auto_generated|mac_out2~DATAOUT18\ $ (VCC))) # (!\Mult2|auto_generated|op_2~0_combout\ & (\Mult2|auto_generated|mac_out2~DATAOUT18\ & VCC))
-- \Mult2|auto_generated|op_1~1\ = CARRY((\Mult2|auto_generated|op_2~0_combout\ & \Mult2|auto_generated|mac_out2~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|op_2~0_combout\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	combout => \Mult2|auto_generated|op_1~0_combout\,
	cout => \Mult2|auto_generated|op_1~1\);

-- Location: LCCOMB_X22_Y13_N2
\Mult2|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_1~2_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT19\ & ((\Mult2|auto_generated|op_2~2_combout\ & (\Mult2|auto_generated|op_1~1\ & VCC)) # (!\Mult2|auto_generated|op_2~2_combout\ & (!\Mult2|auto_generated|op_1~1\)))) # 
-- (!\Mult2|auto_generated|mac_out2~DATAOUT19\ & ((\Mult2|auto_generated|op_2~2_combout\ & (!\Mult2|auto_generated|op_1~1\)) # (!\Mult2|auto_generated|op_2~2_combout\ & ((\Mult2|auto_generated|op_1~1\) # (GND)))))
-- \Mult2|auto_generated|op_1~3\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT19\ & (!\Mult2|auto_generated|op_2~2_combout\ & !\Mult2|auto_generated|op_1~1\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT19\ & ((!\Mult2|auto_generated|op_1~1\) # 
-- (!\Mult2|auto_generated|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT19\,
	datab => \Mult2|auto_generated|op_2~2_combout\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_1~1\,
	combout => \Mult2|auto_generated|op_1~2_combout\,
	cout => \Mult2|auto_generated|op_1~3\);

-- Location: LCCOMB_X22_Y13_N4
\Mult2|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_1~4_combout\ = ((\Mult2|auto_generated|mac_out2~DATAOUT20\ $ (\Mult2|auto_generated|op_2~4_combout\ $ (!\Mult2|auto_generated|op_1~3\)))) # (GND)
-- \Mult2|auto_generated|op_1~5\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT20\ & ((\Mult2|auto_generated|op_2~4_combout\) # (!\Mult2|auto_generated|op_1~3\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT20\ & (\Mult2|auto_generated|op_2~4_combout\ & 
-- !\Mult2|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT20\,
	datab => \Mult2|auto_generated|op_2~4_combout\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_1~3\,
	combout => \Mult2|auto_generated|op_1~4_combout\,
	cout => \Mult2|auto_generated|op_1~5\);

-- Location: LCCOMB_X22_Y13_N6
\Mult2|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_1~6_combout\ = (\Mult2|auto_generated|op_2~6_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT21\ & (\Mult2|auto_generated|op_1~5\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT21\ & (!\Mult2|auto_generated|op_1~5\)))) # 
-- (!\Mult2|auto_generated|op_2~6_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT21\ & (!\Mult2|auto_generated|op_1~5\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT21\ & ((\Mult2|auto_generated|op_1~5\) # (GND)))))
-- \Mult2|auto_generated|op_1~7\ = CARRY((\Mult2|auto_generated|op_2~6_combout\ & (!\Mult2|auto_generated|mac_out2~DATAOUT21\ & !\Mult2|auto_generated|op_1~5\)) # (!\Mult2|auto_generated|op_2~6_combout\ & ((!\Mult2|auto_generated|op_1~5\) # 
-- (!\Mult2|auto_generated|mac_out2~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|op_2~6_combout\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_1~5\,
	combout => \Mult2|auto_generated|op_1~6_combout\,
	cout => \Mult2|auto_generated|op_1~7\);

-- Location: LCCOMB_X22_Y13_N8
\Mult2|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_1~8_combout\ = ((\Mult2|auto_generated|op_2~8_combout\ $ (\Mult2|auto_generated|mac_out2~DATAOUT22\ $ (!\Mult2|auto_generated|op_1~7\)))) # (GND)
-- \Mult2|auto_generated|op_1~9\ = CARRY((\Mult2|auto_generated|op_2~8_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT22\) # (!\Mult2|auto_generated|op_1~7\))) # (!\Mult2|auto_generated|op_2~8_combout\ & (\Mult2|auto_generated|mac_out2~DATAOUT22\ & 
-- !\Mult2|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|op_2~8_combout\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_1~7\,
	combout => \Mult2|auto_generated|op_1~8_combout\,
	cout => \Mult2|auto_generated|op_1~9\);

-- Location: LCCOMB_X22_Y13_N10
\Mult2|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_1~10_combout\ = (\Mult2|auto_generated|op_2~10_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT23\ & (\Mult2|auto_generated|op_1~9\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT23\ & (!\Mult2|auto_generated|op_1~9\)))) # 
-- (!\Mult2|auto_generated|op_2~10_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT23\ & (!\Mult2|auto_generated|op_1~9\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT23\ & ((\Mult2|auto_generated|op_1~9\) # (GND)))))
-- \Mult2|auto_generated|op_1~11\ = CARRY((\Mult2|auto_generated|op_2~10_combout\ & (!\Mult2|auto_generated|mac_out2~DATAOUT23\ & !\Mult2|auto_generated|op_1~9\)) # (!\Mult2|auto_generated|op_2~10_combout\ & ((!\Mult2|auto_generated|op_1~9\) # 
-- (!\Mult2|auto_generated|mac_out2~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|op_2~10_combout\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_1~9\,
	combout => \Mult2|auto_generated|op_1~10_combout\,
	cout => \Mult2|auto_generated|op_1~11\);

-- Location: LCCOMB_X22_Y13_N12
\Mult2|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_1~12_combout\ = ((\Mult2|auto_generated|op_2~12_combout\ $ (\Mult2|auto_generated|mac_out2~DATAOUT24\ $ (!\Mult2|auto_generated|op_1~11\)))) # (GND)
-- \Mult2|auto_generated|op_1~13\ = CARRY((\Mult2|auto_generated|op_2~12_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT24\) # (!\Mult2|auto_generated|op_1~11\))) # (!\Mult2|auto_generated|op_2~12_combout\ & (\Mult2|auto_generated|mac_out2~DATAOUT24\ & 
-- !\Mult2|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|op_2~12_combout\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_1~11\,
	combout => \Mult2|auto_generated|op_1~12_combout\,
	cout => \Mult2|auto_generated|op_1~13\);

-- Location: LCCOMB_X22_Y13_N14
\Mult2|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_1~14_combout\ = (\Mult2|auto_generated|op_2~14_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT25\ & (\Mult2|auto_generated|op_1~13\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT25\ & (!\Mult2|auto_generated|op_1~13\)))) # 
-- (!\Mult2|auto_generated|op_2~14_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT25\ & (!\Mult2|auto_generated|op_1~13\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT25\ & ((\Mult2|auto_generated|op_1~13\) # (GND)))))
-- \Mult2|auto_generated|op_1~15\ = CARRY((\Mult2|auto_generated|op_2~14_combout\ & (!\Mult2|auto_generated|mac_out2~DATAOUT25\ & !\Mult2|auto_generated|op_1~13\)) # (!\Mult2|auto_generated|op_2~14_combout\ & ((!\Mult2|auto_generated|op_1~13\) # 
-- (!\Mult2|auto_generated|mac_out2~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|op_2~14_combout\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_1~13\,
	combout => \Mult2|auto_generated|op_1~14_combout\,
	cout => \Mult2|auto_generated|op_1~15\);

-- Location: LCCOMB_X22_Y13_N16
\Mult2|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_1~16_combout\ = ((\Mult2|auto_generated|mac_out2~DATAOUT26\ $ (\Mult2|auto_generated|op_2~16_combout\ $ (!\Mult2|auto_generated|op_1~15\)))) # (GND)
-- \Mult2|auto_generated|op_1~17\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT26\ & ((\Mult2|auto_generated|op_2~16_combout\) # (!\Mult2|auto_generated|op_1~15\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT26\ & (\Mult2|auto_generated|op_2~16_combout\ & 
-- !\Mult2|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT26\,
	datab => \Mult2|auto_generated|op_2~16_combout\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_1~15\,
	combout => \Mult2|auto_generated|op_1~16_combout\,
	cout => \Mult2|auto_generated|op_1~17\);

-- Location: LCCOMB_X22_Y13_N18
\Mult2|auto_generated|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_1~18_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT27\ & ((\Mult2|auto_generated|op_2~18_combout\ & (\Mult2|auto_generated|op_1~17\ & VCC)) # (!\Mult2|auto_generated|op_2~18_combout\ & (!\Mult2|auto_generated|op_1~17\)))) # 
-- (!\Mult2|auto_generated|mac_out2~DATAOUT27\ & ((\Mult2|auto_generated|op_2~18_combout\ & (!\Mult2|auto_generated|op_1~17\)) # (!\Mult2|auto_generated|op_2~18_combout\ & ((\Mult2|auto_generated|op_1~17\) # (GND)))))
-- \Mult2|auto_generated|op_1~19\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT27\ & (!\Mult2|auto_generated|op_2~18_combout\ & !\Mult2|auto_generated|op_1~17\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT27\ & ((!\Mult2|auto_generated|op_1~17\) # 
-- (!\Mult2|auto_generated|op_2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT27\,
	datab => \Mult2|auto_generated|op_2~18_combout\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_1~17\,
	combout => \Mult2|auto_generated|op_1~18_combout\,
	cout => \Mult2|auto_generated|op_1~19\);

-- Location: LCCOMB_X22_Y13_N20
\Mult2|auto_generated|op_1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_1~20_combout\ = ((\Mult2|auto_generated|mac_out2~DATAOUT28\ $ (\Mult2|auto_generated|op_2~20_combout\ $ (!\Mult2|auto_generated|op_1~19\)))) # (GND)
-- \Mult2|auto_generated|op_1~21\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT28\ & ((\Mult2|auto_generated|op_2~20_combout\) # (!\Mult2|auto_generated|op_1~19\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT28\ & (\Mult2|auto_generated|op_2~20_combout\ & 
-- !\Mult2|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT28\,
	datab => \Mult2|auto_generated|op_2~20_combout\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_1~19\,
	combout => \Mult2|auto_generated|op_1~20_combout\,
	cout => \Mult2|auto_generated|op_1~21\);

-- Location: LCCOMB_X22_Y13_N22
\Mult2|auto_generated|op_1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_1~22_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT29\ & ((\Mult2|auto_generated|op_2~22_combout\ & (\Mult2|auto_generated|op_1~21\ & VCC)) # (!\Mult2|auto_generated|op_2~22_combout\ & (!\Mult2|auto_generated|op_1~21\)))) # 
-- (!\Mult2|auto_generated|mac_out2~DATAOUT29\ & ((\Mult2|auto_generated|op_2~22_combout\ & (!\Mult2|auto_generated|op_1~21\)) # (!\Mult2|auto_generated|op_2~22_combout\ & ((\Mult2|auto_generated|op_1~21\) # (GND)))))
-- \Mult2|auto_generated|op_1~23\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT29\ & (!\Mult2|auto_generated|op_2~22_combout\ & !\Mult2|auto_generated|op_1~21\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT29\ & ((!\Mult2|auto_generated|op_1~21\) # 
-- (!\Mult2|auto_generated|op_2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT29\,
	datab => \Mult2|auto_generated|op_2~22_combout\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_1~21\,
	combout => \Mult2|auto_generated|op_1~22_combout\,
	cout => \Mult2|auto_generated|op_1~23\);

-- Location: LCCOMB_X22_Y13_N24
\Mult2|auto_generated|op_1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_1~24_combout\ = ((\Mult2|auto_generated|op_2~24_combout\ $ (\Mult2|auto_generated|mac_out2~DATAOUT30\ $ (!\Mult2|auto_generated|op_1~23\)))) # (GND)
-- \Mult2|auto_generated|op_1~25\ = CARRY((\Mult2|auto_generated|op_2~24_combout\ & ((\Mult2|auto_generated|mac_out2~DATAOUT30\) # (!\Mult2|auto_generated|op_1~23\))) # (!\Mult2|auto_generated|op_2~24_combout\ & (\Mult2|auto_generated|mac_out2~DATAOUT30\ & 
-- !\Mult2|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|op_2~24_combout\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT30\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_1~23\,
	combout => \Mult2|auto_generated|op_1~24_combout\,
	cout => \Mult2|auto_generated|op_1~25\);

-- Location: LCCOMB_X22_Y13_N26
\Mult2|auto_generated|op_1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_1~26_combout\ = \Mult2|auto_generated|mac_out2~DATAOUT31\ $ (\Mult2|auto_generated|op_1~25\ $ (\Mult2|auto_generated|op_2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT31\,
	datad => \Mult2|auto_generated|op_2~26_combout\,
	cin => \Mult2|auto_generated|op_1~25\,
	combout => \Mult2|auto_generated|op_1~26_combout\);

-- Location: LCCOMB_X18_Y11_N0
\Add13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~0_combout\ = player1y(0) $ (GND)
-- \Add13~1\ = CARRY(!player1y(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player1y(0),
	datad => VCC,
	combout => \Add13~0_combout\,
	cout => \Add13~1\);

-- Location: LCCOMB_X18_Y13_N0
\Add12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = player1y(0) $ (GND)
-- \Add12~1\ = CARRY(!player1y(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => player1y(0),
	datad => VCC,
	combout => \Add12~0_combout\,
	cout => \Add12~1\);

-- Location: LCCOMB_X19_Y12_N10
\player1y~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y~5_combout\ = (\Equal4~1_combout\ & ((\move|ps2_code\(0) & ((\Add12~0_combout\))) # (!\move|ps2_code\(0) & (\Add13~0_combout\)))) # (!\Equal4~1_combout\ & (\Add13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~0_combout\,
	datab => \Equal4~1_combout\,
	datac => \move|ps2_code\(0),
	datad => \Add12~0_combout\,
	combout => \player1y~5_combout\);

-- Location: LCCOMB_X18_Y14_N14
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\move|ps2_code\(5) & \move|ps2_code\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|ps2_code\(5),
	datac => \move|ps2_code\(0),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X18_Y14_N6
\Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (\move|ps2_code\(2) & (!\move|ps2_code\(1) & (\Equal5~0_combout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|ps2_code\(2),
	datab => \move|ps2_code\(1),
	datac => \Equal5~0_combout\,
	datad => \Equal4~0_combout\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X18_Y11_N2
\Add13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~2_combout\ = (player1y(1) & (!\Add13~1\)) # (!player1y(1) & ((\Add13~1\) # (GND)))
-- \Add13~3\ = CARRY((!\Add13~1\) # (!player1y(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1y(1),
	datad => VCC,
	cin => \Add13~1\,
	combout => \Add13~2_combout\,
	cout => \Add13~3\);

-- Location: LCCOMB_X18_Y13_N2
\Add12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~2_combout\ = (player1y(1) & (\Add12~1\ & VCC)) # (!player1y(1) & (!\Add12~1\))
-- \Add12~3\ = CARRY((!player1y(1) & !\Add12~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1y(1),
	datad => VCC,
	cin => \Add12~1\,
	combout => \Add12~2_combout\,
	cout => \Add12~3\);

-- Location: LCCOMB_X18_Y14_N4
\Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (\move|ps2_code\(0) & !\move|ps2_code\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \move|ps2_code\(0),
	datad => \move|ps2_code\(2),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X18_Y14_N16
\Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (!\move|ps2_code\(5) & (\move|ps2_code\(1) & (\Equal6~0_combout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move|ps2_code\(5),
	datab => \move|ps2_code\(1),
	datac => \Equal6~0_combout\,
	datad => \Equal4~0_combout\,
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X19_Y12_N20
\player1y[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[4]~4_combout\ = (\LessThan55~9_combout\) # ((\player1y[31]~_Duplicate_1_q\) # ((!\Equal5~1_combout\ & !\Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \LessThan55~9_combout\,
	datac => \Equal6~1_combout\,
	datad => \player1y[31]~_Duplicate_1_q\,
	combout => \player1y[4]~4_combout\);

-- Location: LCCOMB_X19_Y12_N2
\player1y~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y~7_combout\ = (!\player1y[4]~4_combout\ & ((\Equal5~1_combout\ & ((\Add12~2_combout\))) # (!\Equal5~1_combout\ & (\Add13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Add13~2_combout\,
	datac => \Add12~2_combout\,
	datad => \player1y[4]~4_combout\,
	combout => \player1y~7_combout\);

-- Location: LCCOMB_X18_Y14_N18
\player1y[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[4]~6_combout\ = (\player1y[31]~_Duplicate_1_q\) # ((\LessThan55~9_combout\) # (\Equal5~1_combout\ $ (\Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \player1y[31]~_Duplicate_1_q\,
	datac => \Equal6~1_combout\,
	datad => \LessThan55~9_combout\,
	combout => \player1y[4]~6_combout\);

-- Location: FF_X19_Y12_N3
\player1y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1y~7_combout\,
	ena => \player1y[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1y(1));

-- Location: LCCOMB_X18_Y13_N4
\Add12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~4_combout\ = (player1y(2) & ((GND) # (!\Add12~3\))) # (!player1y(2) & (\Add12~3\ $ (GND)))
-- \Add12~5\ = CARRY((player1y(2)) # (!\Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1y(2),
	datad => VCC,
	cin => \Add12~3\,
	combout => \Add12~4_combout\,
	cout => \Add12~5\);

-- Location: LCCOMB_X18_Y11_N4
\Add13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~4_combout\ = (player1y(2) & (\Add13~3\ $ (GND))) # (!player1y(2) & (!\Add13~3\ & VCC))
-- \Add13~5\ = CARRY((player1y(2) & !\Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1y(2),
	datad => VCC,
	cin => \Add13~3\,
	combout => \Add13~4_combout\,
	cout => \Add13~5\);

-- Location: LCCOMB_X19_Y12_N28
\player1y~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y~14_combout\ = (!\player1y[4]~4_combout\ & ((\Equal5~1_combout\ & (\Add12~4_combout\)) # (!\Equal5~1_combout\ & ((\Add13~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Add12~4_combout\,
	datac => \Add13~4_combout\,
	datad => \player1y[4]~4_combout\,
	combout => \player1y~14_combout\);

-- Location: FF_X19_Y12_N29
\player1y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1y~14_combout\,
	ena => \player1y[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1y(2));

-- Location: LCCOMB_X18_Y11_N6
\Add13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~6_combout\ = (player1y(3) & (!\Add13~5\)) # (!player1y(3) & ((\Add13~5\) # (GND)))
-- \Add13~7\ = CARRY((!\Add13~5\) # (!player1y(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1y(3),
	datad => VCC,
	cin => \Add13~5\,
	combout => \Add13~6_combout\,
	cout => \Add13~7\);

-- Location: LCCOMB_X18_Y13_N6
\Add12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~6_combout\ = (player1y(3) & (\Add12~5\ & VCC)) # (!player1y(3) & (!\Add12~5\))
-- \Add12~7\ = CARRY((!player1y(3) & !\Add12~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1y(3),
	datad => VCC,
	cin => \Add12~5\,
	combout => \Add12~6_combout\,
	cout => \Add12~7\);

-- Location: LCCOMB_X19_Y12_N8
\player1y[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[3]~12_combout\ = (\player1y[4]~4_combout\) # ((\Equal5~1_combout\ & ((\Add12~6_combout\))) # (!\Equal5~1_combout\ & (\Add13~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Add13~6_combout\,
	datac => \Add12~6_combout\,
	datad => \player1y[4]~4_combout\,
	combout => \player1y[3]~12_combout\);

-- Location: LCCOMB_X19_Y12_N0
\LessThan55~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan55~10_combout\ = (\LessThan55~9_combout\ & !\player1y[31]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan55~9_combout\,
	datad => \player1y[31]~_Duplicate_1_q\,
	combout => \LessThan55~10_combout\);

-- Location: LCCOMB_X19_Y12_N6
\player1y[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[3]~13_combout\ = (\player1y[4]~6_combout\ & (\player1y[3]~12_combout\ & (!\LessThan55~10_combout\))) # (!\player1y[4]~6_combout\ & (((player1y(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1y[3]~12_combout\,
	datab => \LessThan55~10_combout\,
	datac => player1y(3),
	datad => \player1y[4]~6_combout\,
	combout => \player1y[3]~13_combout\);

-- Location: FF_X19_Y12_N7
\player1y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1y[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1y(3));

-- Location: LCCOMB_X18_Y13_N8
\Add12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~8_combout\ = (player1y(4) & ((GND) # (!\Add12~7\))) # (!player1y(4) & (\Add12~7\ $ (GND)))
-- \Add12~9\ = CARRY((player1y(4)) # (!\Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1y(4),
	datad => VCC,
	cin => \Add12~7\,
	combout => \Add12~8_combout\,
	cout => \Add12~9\);

-- Location: LCCOMB_X18_Y11_N8
\Add13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~8_combout\ = (player1y(4) & (\Add13~7\ $ (GND))) # (!player1y(4) & (!\Add13~7\ & VCC))
-- \Add13~9\ = CARRY((player1y(4) & !\Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1y(4),
	datad => VCC,
	cin => \Add13~7\,
	combout => \Add13~8_combout\,
	cout => \Add13~9\);

-- Location: LCCOMB_X17_Y11_N12
\player1y[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[4]~41_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & (\Add12~8_combout\)) # (!\Equal5~1_combout\ & ((\Add13~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Add12~8_combout\,
	datac => \Add13~8_combout\,
	datad => \player1y[29]~15_combout\,
	combout => \player1y[4]~41_combout\);

-- Location: FF_X18_Y11_N25
\player1y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	asdata => \player1y[4]~41_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1y(4));

-- Location: LCCOMB_X18_Y11_N10
\Add13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~10_combout\ = (player1y(5) & (!\Add13~9\)) # (!player1y(5) & ((\Add13~9\) # (GND)))
-- \Add13~11\ = CARRY((!\Add13~9\) # (!player1y(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1y(5),
	datad => VCC,
	cin => \Add13~9\,
	combout => \Add13~10_combout\,
	cout => \Add13~11\);

-- Location: LCCOMB_X18_Y13_N10
\Add12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~10_combout\ = (player1y(5) & (\Add12~9\ & VCC)) # (!player1y(5) & (!\Add12~9\))
-- \Add12~11\ = CARRY((!player1y(5) & !\Add12~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1y(5),
	datad => VCC,
	cin => \Add12~9\,
	combout => \Add12~10_combout\,
	cout => \Add12~11\);

-- Location: LCCOMB_X19_Y11_N4
\player1y[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[5]~40_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & ((\Add12~10_combout\))) # (!\Equal5~1_combout\ & (\Add13~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~10_combout\,
	datab => \Add12~10_combout\,
	datac => \Equal5~1_combout\,
	datad => \player1y[29]~15_combout\,
	combout => \player1y[5]~40_combout\);

-- Location: FF_X19_Y11_N5
\player1y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1y[5]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1y(5));

-- Location: LCCOMB_X18_Y11_N12
\Add13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~12_combout\ = (player1y(6) & (\Add13~11\ $ (GND))) # (!player1y(6) & (!\Add13~11\ & VCC))
-- \Add13~13\ = CARRY((player1y(6) & !\Add13~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1y(6),
	datad => VCC,
	cin => \Add13~11\,
	combout => \Add13~12_combout\,
	cout => \Add13~13\);

-- Location: LCCOMB_X18_Y13_N12
\Add12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~12_combout\ = (player1y(6) & ((GND) # (!\Add12~11\))) # (!player1y(6) & (\Add12~11\ $ (GND)))
-- \Add12~13\ = CARRY((player1y(6)) # (!\Add12~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1y(6),
	datad => VCC,
	cin => \Add12~11\,
	combout => \Add12~12_combout\,
	cout => \Add12~13\);

-- Location: LCCOMB_X17_Y11_N22
\player1y[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[6]~39_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & ((\Add12~12_combout\))) # (!\Equal5~1_combout\ & (\Add13~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Add13~12_combout\,
	datac => \Add12~12_combout\,
	datad => \player1y[29]~15_combout\,
	combout => \player1y[6]~39_combout\);

-- Location: FF_X18_Y11_N19
\player1y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	asdata => \player1y[6]~39_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1y(6));

-- Location: LCCOMB_X18_Y13_N14
\Add12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~14_combout\ = (player1y(7) & (\Add12~13\ & VCC)) # (!player1y(7) & (!\Add12~13\))
-- \Add12~15\ = CARRY((!player1y(7) & !\Add12~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1y(7),
	datad => VCC,
	cin => \Add12~13\,
	combout => \Add12~14_combout\,
	cout => \Add12~15\);

-- Location: LCCOMB_X18_Y11_N14
\Add13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~14_combout\ = (player1y(7) & (!\Add13~13\)) # (!player1y(7) & ((\Add13~13\) # (GND)))
-- \Add13~15\ = CARRY((!\Add13~13\) # (!player1y(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1y(7),
	datad => VCC,
	cin => \Add13~13\,
	combout => \Add13~14_combout\,
	cout => \Add13~15\);

-- Location: LCCOMB_X17_Y11_N0
\player1y[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[7]~38_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & (\Add12~14_combout\)) # (!\Equal5~1_combout\ & ((\Add13~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~14_combout\,
	datab => \player1y[29]~15_combout\,
	datac => \Add13~14_combout\,
	datad => \Equal5~1_combout\,
	combout => \player1y[7]~38_combout\);

-- Location: FF_X18_Y11_N13
\player1y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	asdata => \player1y[7]~38_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1y(7));

-- Location: LCCOMB_X18_Y11_N16
\Add13~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~16_combout\ = (player1y(8) & (\Add13~15\ $ (GND))) # (!player1y(8) & (!\Add13~15\ & VCC))
-- \Add13~17\ = CARRY((player1y(8) & !\Add13~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1y(8),
	datad => VCC,
	cin => \Add13~15\,
	combout => \Add13~16_combout\,
	cout => \Add13~17\);

-- Location: LCCOMB_X18_Y13_N16
\Add12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~16_combout\ = (player1y(8) & ((GND) # (!\Add12~15\))) # (!player1y(8) & (\Add12~15\ $ (GND)))
-- \Add12~17\ = CARRY((player1y(8)) # (!\Add12~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1y(8),
	datad => VCC,
	cin => \Add12~15\,
	combout => \Add12~16_combout\,
	cout => \Add12~17\);

-- Location: LCCOMB_X17_Y11_N6
\player1y[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[8]~37_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & ((\Add12~16_combout\))) # (!\Equal5~1_combout\ & (\Add13~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Add13~16_combout\,
	datac => \Add12~16_combout\,
	datad => \player1y[29]~15_combout\,
	combout => \player1y[8]~37_combout\);

-- Location: FF_X18_Y11_N15
\player1y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	asdata => \player1y[8]~37_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1y(8));

-- Location: LCCOMB_X18_Y11_N18
\Add13~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~18_combout\ = (player1y(9) & (!\Add13~17\)) # (!player1y(9) & ((\Add13~17\) # (GND)))
-- \Add13~19\ = CARRY((!\Add13~17\) # (!player1y(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1y(9),
	datad => VCC,
	cin => \Add13~17\,
	combout => \Add13~18_combout\,
	cout => \Add13~19\);

-- Location: LCCOMB_X18_Y13_N18
\Add12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~18_combout\ = (player1y(9) & (\Add12~17\ & VCC)) # (!player1y(9) & (!\Add12~17\))
-- \Add12~19\ = CARRY((!player1y(9) & !\Add12~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1y(9),
	datad => VCC,
	cin => \Add12~17\,
	combout => \Add12~18_combout\,
	cout => \Add12~19\);

-- Location: LCCOMB_X17_Y11_N16
\player1y[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[9]~36_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & ((\Add12~18_combout\))) # (!\Equal5~1_combout\ & (\Add13~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Add13~18_combout\,
	datac => \Add12~18_combout\,
	datad => \player1y[29]~15_combout\,
	combout => \player1y[9]~36_combout\);

-- Location: FF_X18_Y11_N5
\player1y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	asdata => \player1y[9]~36_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1y(9));

-- Location: LCCOMB_X18_Y11_N20
\Add13~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~20_combout\ = (player1y(10) & (\Add13~19\ $ (GND))) # (!player1y(10) & (!\Add13~19\ & VCC))
-- \Add13~21\ = CARRY((player1y(10) & !\Add13~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1y(10),
	datad => VCC,
	cin => \Add13~19\,
	combout => \Add13~20_combout\,
	cout => \Add13~21\);

-- Location: LCCOMB_X18_Y13_N20
\Add12~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~20_combout\ = (player1y(10) & ((GND) # (!\Add12~19\))) # (!player1y(10) & (\Add12~19\ $ (GND)))
-- \Add12~21\ = CARRY((player1y(10)) # (!\Add12~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1y(10),
	datad => VCC,
	cin => \Add12~19\,
	combout => \Add12~20_combout\,
	cout => \Add12~21\);

-- Location: LCCOMB_X17_Y11_N8
\player1y[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[10]~35_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & ((\Add12~20_combout\))) # (!\Equal5~1_combout\ & (\Add13~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~20_combout\,
	datab => \player1y[29]~15_combout\,
	datac => \Add12~20_combout\,
	datad => \Equal5~1_combout\,
	combout => \player1y[10]~35_combout\);

-- Location: FF_X17_Y11_N9
\player1y[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1y[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1y(10));

-- Location: LCCOMB_X18_Y11_N22
\Add13~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~22_combout\ = (player1y(11) & (!\Add13~21\)) # (!player1y(11) & ((\Add13~21\) # (GND)))
-- \Add13~23\ = CARRY((!\Add13~21\) # (!player1y(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1y(11),
	datad => VCC,
	cin => \Add13~21\,
	combout => \Add13~22_combout\,
	cout => \Add13~23\);

-- Location: LCCOMB_X18_Y13_N22
\Add12~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~22_combout\ = (player1y(11) & (\Add12~21\ & VCC)) # (!player1y(11) & (!\Add12~21\))
-- \Add12~23\ = CARRY((!player1y(11) & !\Add12~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1y(11),
	datad => VCC,
	cin => \Add12~21\,
	combout => \Add12~22_combout\,
	cout => \Add12~23\);

-- Location: LCCOMB_X17_Y11_N2
\player1y[11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[11]~34_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & ((\Add12~22_combout\))) # (!\Equal5~1_combout\ & (\Add13~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Add13~22_combout\,
	datac => \Add12~22_combout\,
	datad => \player1y[29]~15_combout\,
	combout => \player1y[11]~34_combout\);

-- Location: FF_X17_Y11_N3
\player1y[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1y[11]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1y(11));

-- Location: LCCOMB_X18_Y11_N24
\Add13~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~24_combout\ = (player1y(12) & (\Add13~23\ $ (GND))) # (!player1y(12) & (!\Add13~23\ & VCC))
-- \Add13~25\ = CARRY((player1y(12) & !\Add13~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1y(12),
	datad => VCC,
	cin => \Add13~23\,
	combout => \Add13~24_combout\,
	cout => \Add13~25\);

-- Location: LCCOMB_X18_Y13_N24
\Add12~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~24_combout\ = (player1y(12) & ((GND) # (!\Add12~23\))) # (!player1y(12) & (\Add12~23\ $ (GND)))
-- \Add12~25\ = CARRY((player1y(12)) # (!\Add12~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1y(12),
	datad => VCC,
	cin => \Add12~23\,
	combout => \Add12~24_combout\,
	cout => \Add12~25\);

-- Location: LCCOMB_X17_Y11_N26
\player1y[12]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[12]~33_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & ((\Add12~24_combout\))) # (!\Equal5~1_combout\ & (\Add13~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Add13~24_combout\,
	datac => \Add12~24_combout\,
	datad => \player1y[29]~15_combout\,
	combout => \player1y[12]~33_combout\);

-- Location: FF_X18_Y11_N27
\player1y[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	asdata => \player1y[12]~33_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1y(12));

-- Location: LCCOMB_X18_Y11_N26
\Add13~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~26_combout\ = (player1y(13) & (!\Add13~25\)) # (!player1y(13) & ((\Add13~25\) # (GND)))
-- \Add13~27\ = CARRY((!\Add13~25\) # (!player1y(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1y(13),
	datad => VCC,
	cin => \Add13~25\,
	combout => \Add13~26_combout\,
	cout => \Add13~27\);

-- Location: LCCOMB_X18_Y13_N26
\Add12~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~26_combout\ = (player1y(13) & (\Add12~25\ & VCC)) # (!player1y(13) & (!\Add12~25\))
-- \Add12~27\ = CARRY((!player1y(13) & !\Add12~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1y(13),
	datad => VCC,
	cin => \Add12~25\,
	combout => \Add12~26_combout\,
	cout => \Add12~27\);

-- Location: LCCOMB_X17_Y11_N4
\player1y[13]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[13]~32_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & ((\Add12~26_combout\))) # (!\Equal5~1_combout\ & (\Add13~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Add13~26_combout\,
	datac => \Add12~26_combout\,
	datad => \player1y[29]~15_combout\,
	combout => \player1y[13]~32_combout\);

-- Location: FF_X18_Y11_N11
\player1y[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	asdata => \player1y[13]~32_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1y(13));

-- Location: LCCOMB_X17_Y11_N30
\LessThan55~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan55~6_combout\ = (player1y(12)) # ((player1y(11)) # ((player1y(10)) # (player1y(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player1y(12),
	datab => player1y(11),
	datac => player1y(10),
	datad => player1y(13),
	combout => \LessThan55~6_combout\);

-- Location: LCCOMB_X17_Y11_N24
\LessThan55~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan55~7_combout\ = (player1y(6)) # ((player1y(9)) # ((player1y(7)) # (player1y(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player1y(6),
	datab => player1y(9),
	datac => player1y(7),
	datad => player1y(8),
	combout => \LessThan55~7_combout\);

-- Location: LCCOMB_X17_Y11_N18
\LessThan55~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan55~8_combout\ = (player1y(4)) # ((player1y(5)) # (\LessThan55~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => player1y(4),
	datac => player1y(5),
	datad => \LessThan55~7_combout\,
	combout => \LessThan55~8_combout\);

-- Location: LCCOMB_X18_Y11_N28
\Add13~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~28_combout\ = (player1y(14) & (\Add13~27\ $ (GND))) # (!player1y(14) & (!\Add13~27\ & VCC))
-- \Add13~29\ = CARRY((player1y(14) & !\Add13~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1y(14),
	datad => VCC,
	cin => \Add13~27\,
	combout => \Add13~28_combout\,
	cout => \Add13~29\);

-- Location: LCCOMB_X18_Y13_N28
\Add12~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~28_combout\ = (player1y(14) & ((GND) # (!\Add12~27\))) # (!player1y(14) & (\Add12~27\ $ (GND)))
-- \Add12~29\ = CARRY((player1y(14)) # (!\Add12~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1y(14),
	datad => VCC,
	cin => \Add12~27\,
	combout => \Add12~28_combout\,
	cout => \Add12~29\);

-- Location: LCCOMB_X19_Y11_N24
\player1y[14]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[14]~31_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & ((\Add12~28_combout\))) # (!\Equal5~1_combout\ & (\Add13~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~28_combout\,
	datab => \Equal5~1_combout\,
	datac => \Add12~28_combout\,
	datad => \player1y[29]~15_combout\,
	combout => \player1y[14]~31_combout\);

-- Location: FF_X19_Y11_N25
\player1y[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1y[14]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1y(14));

-- Location: LCCOMB_X18_Y13_N30
\Add12~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~30_combout\ = (player1y(15) & (\Add12~29\ & VCC)) # (!player1y(15) & (!\Add12~29\))
-- \Add12~31\ = CARRY((!player1y(15) & !\Add12~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1y(15),
	datad => VCC,
	cin => \Add12~29\,
	combout => \Add12~30_combout\,
	cout => \Add12~31\);

-- Location: LCCOMB_X18_Y11_N30
\Add13~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~30_combout\ = (player1y(15) & (!\Add13~29\)) # (!player1y(15) & ((\Add13~29\) # (GND)))
-- \Add13~31\ = CARRY((!\Add13~29\) # (!player1y(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1y(15),
	datad => VCC,
	cin => \Add13~29\,
	combout => \Add13~30_combout\,
	cout => \Add13~31\);

-- Location: LCCOMB_X19_Y11_N26
\player1y[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[15]~30_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & (\Add12~30_combout\)) # (!\Equal5~1_combout\ & ((\Add13~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~30_combout\,
	datab => \Equal5~1_combout\,
	datac => \Add13~30_combout\,
	datad => \player1y[29]~15_combout\,
	combout => \player1y[15]~30_combout\);

-- Location: FF_X19_Y11_N27
\player1y[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1y[15]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1y(15));

-- Location: LCCOMB_X18_Y12_N0
\Add12~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~32_combout\ = (player1y(16) & ((GND) # (!\Add12~31\))) # (!player1y(16) & (\Add12~31\ $ (GND)))
-- \Add12~33\ = CARRY((player1y(16)) # (!\Add12~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1y(16),
	datad => VCC,
	cin => \Add12~31\,
	combout => \Add12~32_combout\,
	cout => \Add12~33\);

-- Location: LCCOMB_X18_Y10_N0
\Add13~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~32_combout\ = (player1y(16) & (\Add13~31\ $ (GND))) # (!player1y(16) & (!\Add13~31\ & VCC))
-- \Add13~33\ = CARRY((player1y(16) & !\Add13~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => player1y(16),
	datad => VCC,
	cin => \Add13~31\,
	combout => \Add13~32_combout\,
	cout => \Add13~33\);

-- Location: LCCOMB_X19_Y11_N8
\player1y[16]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[16]~29_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & (\Add12~32_combout\)) # (!\Equal5~1_combout\ & ((\Add13~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~32_combout\,
	datab => \player1y[29]~15_combout\,
	datac => \Equal5~1_combout\,
	datad => \Add13~32_combout\,
	combout => \player1y[16]~29_combout\);

-- Location: FF_X19_Y11_N9
\player1y[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1y[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1y(16));

-- Location: LCCOMB_X18_Y12_N2
\Add12~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~34_combout\ = (player1y(17) & (\Add12~33\ & VCC)) # (!player1y(17) & (!\Add12~33\))
-- \Add12~35\ = CARRY((!player1y(17) & !\Add12~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1y(17),
	datad => VCC,
	cin => \Add12~33\,
	combout => \Add12~34_combout\,
	cout => \Add12~35\);

-- Location: LCCOMB_X18_Y10_N2
\Add13~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~34_combout\ = (player1y(17) & (!\Add13~33\)) # (!player1y(17) & ((\Add13~33\) # (GND)))
-- \Add13~35\ = CARRY((!\Add13~33\) # (!player1y(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => player1y(17),
	datad => VCC,
	cin => \Add13~33\,
	combout => \Add13~34_combout\,
	cout => \Add13~35\);

-- Location: LCCOMB_X17_Y11_N14
\player1y[17]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[17]~28_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & (\Add12~34_combout\)) # (!\Equal5~1_combout\ & ((\Add13~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \player1y[29]~15_combout\,
	datac => \Add12~34_combout\,
	datad => \Add13~34_combout\,
	combout => \player1y[17]~28_combout\);

-- Location: FF_X18_Y11_N31
\player1y[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	asdata => \player1y[17]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1y(17));

-- Location: LCCOMB_X19_Y11_N2
\LessThan55~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan55~5_combout\ = (player1y(15)) # ((player1y(16)) # ((player1y(17)) # (player1y(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player1y(15),
	datab => player1y(16),
	datac => player1y(17),
	datad => player1y(14),
	combout => \LessThan55~5_combout\);

-- Location: LCCOMB_X19_Y14_N16
\LessThan55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan55~1_combout\ = (\player1y[28]~_Duplicate_1_q\) # ((\player1y[29]~_Duplicate_1_q\) # ((\player1y[26]~_Duplicate_1_q\) # (\player1y[27]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1y[28]~_Duplicate_1_q\,
	datab => \player1y[29]~_Duplicate_1_q\,
	datac => \player1y[26]~_Duplicate_1_q\,
	datad => \player1y[27]~_Duplicate_1_q\,
	combout => \LessThan55~1_combout\);

-- Location: LCCOMB_X18_Y10_N4
\Add13~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~36_combout\ = (\player1y[18]~_Duplicate_1_q\ & (\Add13~35\ $ (GND))) # (!\player1y[18]~_Duplicate_1_q\ & (!\Add13~35\ & VCC))
-- \Add13~37\ = CARRY((\player1y[18]~_Duplicate_1_q\ & !\Add13~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1y[18]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add13~35\,
	combout => \Add13~36_combout\,
	cout => \Add13~37\);

-- Location: LCCOMB_X18_Y12_N4
\Add12~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~36_combout\ = (\player1y[18]~_Duplicate_1_q\ & ((GND) # (!\Add12~35\))) # (!\player1y[18]~_Duplicate_1_q\ & (\Add12~35\ $ (GND)))
-- \Add12~37\ = CARRY((\player1y[18]~_Duplicate_1_q\) # (!\Add12~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1y[18]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add12~35\,
	combout => \Add12~36_combout\,
	cout => \Add12~37\);

-- Location: LCCOMB_X19_Y11_N0
\player1y[18]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[18]~27_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & ((\Add12~36_combout\))) # (!\Equal5~1_combout\ & (\Add13~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~36_combout\,
	datab => \Equal5~1_combout\,
	datac => \Add12~36_combout\,
	datad => \player1y[29]~15_combout\,
	combout => \player1y[18]~27_combout\);

-- Location: FF_X19_Y11_N1
\player1y[18]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1y[18]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1y[18]~_Duplicate_1_q\);

-- Location: LCCOMB_X18_Y10_N6
\Add13~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~38_combout\ = (\player1y[19]~_Duplicate_1_q\ & (!\Add13~37\)) # (!\player1y[19]~_Duplicate_1_q\ & ((\Add13~37\) # (GND)))
-- \Add13~39\ = CARRY((!\Add13~37\) # (!\player1y[19]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1y[19]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add13~37\,
	combout => \Add13~38_combout\,
	cout => \Add13~39\);

-- Location: LCCOMB_X18_Y12_N6
\Add12~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~38_combout\ = (\player1y[19]~_Duplicate_1_q\ & (\Add12~37\ & VCC)) # (!\player1y[19]~_Duplicate_1_q\ & (!\Add12~37\))
-- \Add12~39\ = CARRY((!\player1y[19]~_Duplicate_1_q\ & !\Add12~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1y[19]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add12~37\,
	combout => \Add12~38_combout\,
	cout => \Add12~39\);

-- Location: LCCOMB_X19_Y11_N14
\player1y[19]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[19]~26_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & ((\Add12~38_combout\))) # (!\Equal5~1_combout\ & (\Add13~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~38_combout\,
	datab => \player1y[29]~15_combout\,
	datac => \Equal5~1_combout\,
	datad => \Add12~38_combout\,
	combout => \player1y[19]~26_combout\);

-- Location: FF_X19_Y11_N15
\player1y[19]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1y[19]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1y[19]~_Duplicate_1_q\);

-- Location: LCCOMB_X18_Y10_N8
\Add13~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~40_combout\ = (\player1y[20]~_Duplicate_1_q\ & (\Add13~39\ $ (GND))) # (!\player1y[20]~_Duplicate_1_q\ & (!\Add13~39\ & VCC))
-- \Add13~41\ = CARRY((\player1y[20]~_Duplicate_1_q\ & !\Add13~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1y[20]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add13~39\,
	combout => \Add13~40_combout\,
	cout => \Add13~41\);

-- Location: LCCOMB_X18_Y12_N8
\Add12~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~40_combout\ = (\player1y[20]~_Duplicate_1_q\ & ((GND) # (!\Add12~39\))) # (!\player1y[20]~_Duplicate_1_q\ & (\Add12~39\ $ (GND)))
-- \Add12~41\ = CARRY((\player1y[20]~_Duplicate_1_q\) # (!\Add12~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1y[20]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add12~39\,
	combout => \Add12~40_combout\,
	cout => \Add12~41\);

-- Location: LCCOMB_X19_Y11_N16
\player1y[20]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[20]~25_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & ((\Add12~40_combout\))) # (!\Equal5~1_combout\ & (\Add13~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~40_combout\,
	datab => \Equal5~1_combout\,
	datac => \Add12~40_combout\,
	datad => \player1y[29]~15_combout\,
	combout => \player1y[20]~25_combout\);

-- Location: FF_X19_Y11_N17
\player1y[20]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1y[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1y[20]~_Duplicate_1_q\);

-- Location: LCCOMB_X18_Y12_N10
\Add12~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~42_combout\ = (\player1y[21]~_Duplicate_1_q\ & (\Add12~41\ & VCC)) # (!\player1y[21]~_Duplicate_1_q\ & (!\Add12~41\))
-- \Add12~43\ = CARRY((!\player1y[21]~_Duplicate_1_q\ & !\Add12~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1y[21]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add12~41\,
	combout => \Add12~42_combout\,
	cout => \Add12~43\);

-- Location: LCCOMB_X18_Y10_N10
\Add13~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~42_combout\ = (\player1y[21]~_Duplicate_1_q\ & (!\Add13~41\)) # (!\player1y[21]~_Duplicate_1_q\ & ((\Add13~41\) # (GND)))
-- \Add13~43\ = CARRY((!\Add13~41\) # (!\player1y[21]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1y[21]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add13~41\,
	combout => \Add13~42_combout\,
	cout => \Add13~43\);

-- Location: LCCOMB_X19_Y11_N10
\player1y[21]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[21]~24_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & (\Add12~42_combout\)) # (!\Equal5~1_combout\ & ((\Add13~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~42_combout\,
	datab => \player1y[29]~15_combout\,
	datac => \Equal5~1_combout\,
	datad => \Add13~42_combout\,
	combout => \player1y[21]~24_combout\);

-- Location: FF_X19_Y11_N11
\player1y[21]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1y[21]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1y[21]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y11_N22
\LessThan55~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan55~3_combout\ = (\player1y[21]~_Duplicate_1_q\) # ((\player1y[18]~_Duplicate_1_q\) # ((\player1y[19]~_Duplicate_1_q\) # (\player1y[20]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1y[21]~_Duplicate_1_q\,
	datab => \player1y[18]~_Duplicate_1_q\,
	datac => \player1y[19]~_Duplicate_1_q\,
	datad => \player1y[20]~_Duplicate_1_q\,
	combout => \LessThan55~3_combout\);

-- Location: LCCOMB_X18_Y10_N12
\Add13~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~44_combout\ = (\player1y[22]~_Duplicate_1_q\ & (\Add13~43\ $ (GND))) # (!\player1y[22]~_Duplicate_1_q\ & (!\Add13~43\ & VCC))
-- \Add13~45\ = CARRY((\player1y[22]~_Duplicate_1_q\ & !\Add13~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1y[22]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add13~43\,
	combout => \Add13~44_combout\,
	cout => \Add13~45\);

-- Location: LCCOMB_X18_Y12_N12
\Add12~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~44_combout\ = (\player1y[22]~_Duplicate_1_q\ & ((GND) # (!\Add12~43\))) # (!\player1y[22]~_Duplicate_1_q\ & (\Add12~43\ $ (GND)))
-- \Add12~45\ = CARRY((\player1y[22]~_Duplicate_1_q\) # (!\Add12~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1y[22]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add12~43\,
	combout => \Add12~44_combout\,
	cout => \Add12~45\);

-- Location: LCCOMB_X19_Y11_N6
\player1y[22]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[22]~23_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & ((\Add12~44_combout\))) # (!\Equal5~1_combout\ & (\Add13~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \player1y[29]~15_combout\,
	datac => \Add13~44_combout\,
	datad => \Add12~44_combout\,
	combout => \player1y[22]~23_combout\);

-- Location: FF_X19_Y11_N7
\player1y[22]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1y[22]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1y[22]~_Duplicate_1_q\);

-- Location: LCCOMB_X18_Y10_N14
\Add13~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~46_combout\ = (\player1y[23]~_Duplicate_1_q\ & (!\Add13~45\)) # (!\player1y[23]~_Duplicate_1_q\ & ((\Add13~45\) # (GND)))
-- \Add13~47\ = CARRY((!\Add13~45\) # (!\player1y[23]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1y[23]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add13~45\,
	combout => \Add13~46_combout\,
	cout => \Add13~47\);

-- Location: LCCOMB_X18_Y12_N14
\Add12~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~46_combout\ = (\player1y[23]~_Duplicate_1_q\ & (\Add12~45\ & VCC)) # (!\player1y[23]~_Duplicate_1_q\ & (!\Add12~45\))
-- \Add12~47\ = CARRY((!\player1y[23]~_Duplicate_1_q\ & !\Add12~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1y[23]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add12~45\,
	combout => \Add12~46_combout\,
	cout => \Add12~47\);

-- Location: LCCOMB_X19_Y11_N12
\player1y[23]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[23]~22_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & ((\Add12~46_combout\))) # (!\Equal5~1_combout\ & (\Add13~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~46_combout\,
	datab => \Equal5~1_combout\,
	datac => \Add12~46_combout\,
	datad => \player1y[29]~15_combout\,
	combout => \player1y[23]~22_combout\);

-- Location: FF_X19_Y11_N13
\player1y[23]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1y[23]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1y[23]~_Duplicate_1_q\);

-- Location: LCCOMB_X18_Y12_N16
\Add12~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~48_combout\ = (\player1y[24]~_Duplicate_1_q\ & ((GND) # (!\Add12~47\))) # (!\player1y[24]~_Duplicate_1_q\ & (\Add12~47\ $ (GND)))
-- \Add12~49\ = CARRY((\player1y[24]~_Duplicate_1_q\) # (!\Add12~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1y[24]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add12~47\,
	combout => \Add12~48_combout\,
	cout => \Add12~49\);

-- Location: LCCOMB_X18_Y10_N16
\Add13~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~48_combout\ = (\player1y[24]~_Duplicate_1_q\ & (\Add13~47\ $ (GND))) # (!\player1y[24]~_Duplicate_1_q\ & (!\Add13~47\ & VCC))
-- \Add13~49\ = CARRY((\player1y[24]~_Duplicate_1_q\ & !\Add13~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1y[24]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add13~47\,
	combout => \Add13~48_combout\,
	cout => \Add13~49\);

-- Location: LCCOMB_X19_Y11_N30
\player1y[24]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[24]~21_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & (\Add12~48_combout\)) # (!\Equal5~1_combout\ & ((\Add13~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \player1y[29]~15_combout\,
	datac => \Add12~48_combout\,
	datad => \Add13~48_combout\,
	combout => \player1y[24]~21_combout\);

-- Location: FF_X19_Y11_N31
\player1y[24]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1y[24]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1y[24]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y11_N20
\LessThan55~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan55~2_combout\ = (\player1y[22]~_Duplicate_1_q\) # ((\player1y[25]~_Duplicate_1_q\) # ((\player1y[24]~_Duplicate_1_q\) # (\player1y[23]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1y[22]~_Duplicate_1_q\,
	datab => \player1y[25]~_Duplicate_1_q\,
	datac => \player1y[24]~_Duplicate_1_q\,
	datad => \player1y[23]~_Duplicate_1_q\,
	combout => \LessThan55~2_combout\);

-- Location: LCCOMB_X19_Y12_N22
\LessThan55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan55~0_combout\ = (\player1y[30]~_Duplicate_1_q\) # ((player1y(3) & ((player1y(2)) # (player1y(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player1y(3),
	datab => \player1y[30]~_Duplicate_1_q\,
	datac => player1y(2),
	datad => player1y(1),
	combout => \LessThan55~0_combout\);

-- Location: LCCOMB_X17_Y11_N20
\LessThan55~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan55~4_combout\ = (\LessThan55~1_combout\) # ((\LessThan55~3_combout\) # ((\LessThan55~2_combout\) # (\LessThan55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan55~1_combout\,
	datab => \LessThan55~3_combout\,
	datac => \LessThan55~2_combout\,
	datad => \LessThan55~0_combout\,
	combout => \LessThan55~4_combout\);

-- Location: LCCOMB_X17_Y11_N28
\LessThan55~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan55~9_combout\ = (\LessThan55~6_combout\) # ((\LessThan55~8_combout\) # ((\LessThan55~5_combout\) # (\LessThan55~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan55~6_combout\,
	datab => \LessThan55~8_combout\,
	datac => \LessThan55~5_combout\,
	datad => \LessThan55~4_combout\,
	combout => \LessThan55~9_combout\);

-- Location: LCCOMB_X19_Y11_N18
\player1y[29]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[29]~15_combout\ = (!\player1y[31]~_Duplicate_1_q\ & (!\LessThan55~9_combout\ & (\Equal5~1_combout\ $ (\Equal6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1y[31]~_Duplicate_1_q\,
	datab => \LessThan55~9_combout\,
	datac => \Equal5~1_combout\,
	datad => \Equal6~1_combout\,
	combout => \player1y[29]~15_combout\);

-- Location: LCCOMB_X18_Y10_N18
\Add13~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~50_combout\ = (\player1y[25]~_Duplicate_1_q\ & (!\Add13~49\)) # (!\player1y[25]~_Duplicate_1_q\ & ((\Add13~49\) # (GND)))
-- \Add13~51\ = CARRY((!\Add13~49\) # (!\player1y[25]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1y[25]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add13~49\,
	combout => \Add13~50_combout\,
	cout => \Add13~51\);

-- Location: LCCOMB_X18_Y12_N18
\Add12~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~50_combout\ = (\player1y[25]~_Duplicate_1_q\ & (\Add12~49\ & VCC)) # (!\player1y[25]~_Duplicate_1_q\ & (!\Add12~49\))
-- \Add12~51\ = CARRY((!\player1y[25]~_Duplicate_1_q\ & !\Add12~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1y[25]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add12~49\,
	combout => \Add12~50_combout\,
	cout => \Add12~51\);

-- Location: LCCOMB_X19_Y11_N28
\player1y[25]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[25]~20_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & ((\Add12~50_combout\))) # (!\Equal5~1_combout\ & (\Add13~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \player1y[29]~15_combout\,
	datac => \Add13~50_combout\,
	datad => \Add12~50_combout\,
	combout => \player1y[25]~20_combout\);

-- Location: FF_X19_Y11_N29
\player1y[25]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1y[25]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1y[25]~_Duplicate_1_q\);

-- Location: LCCOMB_X18_Y12_N20
\Add12~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~52_combout\ = (\player1y[26]~_Duplicate_1_q\ & ((GND) # (!\Add12~51\))) # (!\player1y[26]~_Duplicate_1_q\ & (\Add12~51\ $ (GND)))
-- \Add12~53\ = CARRY((\player1y[26]~_Duplicate_1_q\) # (!\Add12~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1y[26]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add12~51\,
	combout => \Add12~52_combout\,
	cout => \Add12~53\);

-- Location: LCCOMB_X18_Y10_N20
\Add13~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~52_combout\ = (\player1y[26]~_Duplicate_1_q\ & (\Add13~51\ $ (GND))) # (!\player1y[26]~_Duplicate_1_q\ & (!\Add13~51\ & VCC))
-- \Add13~53\ = CARRY((\player1y[26]~_Duplicate_1_q\ & !\Add13~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1y[26]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add13~51\,
	combout => \Add13~52_combout\,
	cout => \Add13~53\);

-- Location: LCCOMB_X19_Y14_N6
\player1y[26]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[26]~19_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & (\Add12~52_combout\)) # (!\Equal5~1_combout\ & ((\Add13~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Add12~52_combout\,
	datac => \player1y[29]~15_combout\,
	datad => \Add13~52_combout\,
	combout => \player1y[26]~19_combout\);

-- Location: FF_X19_Y14_N7
\player1y[26]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1y[26]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1y[26]~_Duplicate_1_q\);

-- Location: LCCOMB_X18_Y12_N22
\Add12~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~54_combout\ = (\player1y[27]~_Duplicate_1_q\ & (\Add12~53\ & VCC)) # (!\player1y[27]~_Duplicate_1_q\ & (!\Add12~53\))
-- \Add12~55\ = CARRY((!\player1y[27]~_Duplicate_1_q\ & !\Add12~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1y[27]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add12~53\,
	combout => \Add12~54_combout\,
	cout => \Add12~55\);

-- Location: LCCOMB_X18_Y10_N22
\Add13~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~54_combout\ = (\player1y[27]~_Duplicate_1_q\ & (!\Add13~53\)) # (!\player1y[27]~_Duplicate_1_q\ & ((\Add13~53\) # (GND)))
-- \Add13~55\ = CARRY((!\Add13~53\) # (!\player1y[27]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1y[27]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add13~53\,
	combout => \Add13~54_combout\,
	cout => \Add13~55\);

-- Location: LCCOMB_X19_Y14_N2
\player1y[27]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[27]~18_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & (\Add12~54_combout\)) # (!\Equal5~1_combout\ & ((\Add13~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Add12~54_combout\,
	datac => \player1y[29]~15_combout\,
	datad => \Add13~54_combout\,
	combout => \player1y[27]~18_combout\);

-- Location: FF_X19_Y14_N3
\player1y[27]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1y[27]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1y[27]~_Duplicate_1_q\);

-- Location: LCCOMB_X18_Y10_N24
\Add13~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~56_combout\ = (\player1y[28]~_Duplicate_1_q\ & (\Add13~55\ $ (GND))) # (!\player1y[28]~_Duplicate_1_q\ & (!\Add13~55\ & VCC))
-- \Add13~57\ = CARRY((\player1y[28]~_Duplicate_1_q\ & !\Add13~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1y[28]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add13~55\,
	combout => \Add13~56_combout\,
	cout => \Add13~57\);

-- Location: LCCOMB_X18_Y12_N24
\Add12~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~56_combout\ = (\player1y[28]~_Duplicate_1_q\ & ((GND) # (!\Add12~55\))) # (!\player1y[28]~_Duplicate_1_q\ & (\Add12~55\ $ (GND)))
-- \Add12~57\ = CARRY((\player1y[28]~_Duplicate_1_q\) # (!\Add12~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1y[28]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add12~55\,
	combout => \Add12~56_combout\,
	cout => \Add12~57\);

-- Location: LCCOMB_X19_Y14_N12
\player1y[28]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[28]~17_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & ((\Add12~56_combout\))) # (!\Equal5~1_combout\ & (\Add13~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~56_combout\,
	datab => \Equal5~1_combout\,
	datac => \player1y[29]~15_combout\,
	datad => \Add12~56_combout\,
	combout => \player1y[28]~17_combout\);

-- Location: FF_X19_Y14_N13
\player1y[28]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1y[28]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1y[28]~_Duplicate_1_q\);

-- Location: LCCOMB_X18_Y12_N26
\Add12~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~58_combout\ = (\player1y[29]~_Duplicate_1_q\ & (\Add12~57\ & VCC)) # (!\player1y[29]~_Duplicate_1_q\ & (!\Add12~57\))
-- \Add12~59\ = CARRY((!\player1y[29]~_Duplicate_1_q\ & !\Add12~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1y[29]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add12~57\,
	combout => \Add12~58_combout\,
	cout => \Add12~59\);

-- Location: LCCOMB_X18_Y10_N26
\Add13~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~58_combout\ = (\player1y[29]~_Duplicate_1_q\ & (!\Add13~57\)) # (!\player1y[29]~_Duplicate_1_q\ & ((\Add13~57\) # (GND)))
-- \Add13~59\ = CARRY((!\Add13~57\) # (!\player1y[29]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1y[29]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add13~57\,
	combout => \Add13~58_combout\,
	cout => \Add13~59\);

-- Location: LCCOMB_X19_Y14_N20
\player1y[29]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[29]~16_combout\ = (\player1y[29]~15_combout\ & ((\Equal5~1_combout\ & (\Add12~58_combout\)) # (!\Equal5~1_combout\ & ((\Add13~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Add12~58_combout\,
	datac => \Add13~58_combout\,
	datad => \player1y[29]~15_combout\,
	combout => \player1y[29]~16_combout\);

-- Location: FF_X19_Y14_N21
\player1y[29]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1y[29]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1y[29]~_Duplicate_1_q\);

-- Location: LCCOMB_X18_Y12_N28
\Add12~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~60_combout\ = (\player1y[30]~_Duplicate_1_q\ & ((GND) # (!\Add12~59\))) # (!\player1y[30]~_Duplicate_1_q\ & (\Add12~59\ $ (GND)))
-- \Add12~61\ = CARRY((\player1y[30]~_Duplicate_1_q\) # (!\Add12~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1y[30]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add12~59\,
	combout => \Add12~60_combout\,
	cout => \Add12~61\);

-- Location: LCCOMB_X19_Y12_N18
\player1y~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y~8_combout\ = (!\LessThan55~9_combout\ & !\player1y[31]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan55~9_combout\,
	datad => \player1y[31]~_Duplicate_1_q\,
	combout => \player1y~8_combout\);

-- Location: LCCOMB_X19_Y12_N4
\player1y[30]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[30]~10_combout\ = (\player1y~8_combout\ & (\player1y[4]~6_combout\ & ((\Equal5~1_combout\) # (\Equal6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \player1y~8_combout\,
	datac => \Equal6~1_combout\,
	datad => \player1y[4]~6_combout\,
	combout => \player1y[30]~10_combout\);

-- Location: LCCOMB_X18_Y10_N28
\Add13~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~60_combout\ = (\player1y[30]~_Duplicate_1_q\ & (\Add13~59\ $ (GND))) # (!\player1y[30]~_Duplicate_1_q\ & (!\Add13~59\ & VCC))
-- \Add13~61\ = CARRY((\player1y[30]~_Duplicate_1_q\ & !\Add13~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1y[30]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add13~59\,
	combout => \Add13~60_combout\,
	cout => \Add13~61\);

-- Location: LCCOMB_X19_Y12_N14
\player1y[30]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[30]~11_combout\ = (\player1y[30]~10_combout\ & ((\Equal5~1_combout\ & (\Add12~60_combout\)) # (!\Equal5~1_combout\ & ((\Add13~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~60_combout\,
	datab => \Equal5~1_combout\,
	datac => \player1y[30]~10_combout\,
	datad => \Add13~60_combout\,
	combout => \player1y[30]~11_combout\);

-- Location: LCCOMB_X19_Y12_N24
\player1y[30]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[30]~_Duplicate_1feeder_combout\ = \player1y[30]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \player1y[30]~11_combout\,
	combout => \player1y[30]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y12_N25
\player1y[30]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1y[30]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1y[30]~_Duplicate_1_q\);

-- Location: LCCOMB_X18_Y10_N30
\Add13~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~62_combout\ = \player1y[31]~_Duplicate_1_q\ $ (\Add13~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \player1y[31]~_Duplicate_1_q\,
	cin => \Add13~61\,
	combout => \Add13~62_combout\);

-- Location: LCCOMB_X19_Y10_N4
\player1y~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y~43_combout\ = (!\player1y[31]~_Duplicate_1_q\ & (!\LessThan55~9_combout\ & ((\Equal5~1_combout\) # (\Equal6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1y[31]~_Duplicate_1_q\,
	datab => \LessThan55~9_combout\,
	datac => \Equal5~1_combout\,
	datad => \Equal6~1_combout\,
	combout => \player1y~43_combout\);

-- Location: LCCOMB_X18_Y12_N30
\Add12~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~62_combout\ = \player1y[31]~_Duplicate_1_q\ $ (!\Add12~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \player1y[31]~_Duplicate_1_q\,
	cin => \Add12~61\,
	combout => \Add12~62_combout\);

-- Location: LCCOMB_X19_Y10_N6
\player1y~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y~9_combout\ = (\player1y~43_combout\ & ((\Equal5~1_combout\ & ((\Add12~62_combout\))) # (!\Equal5~1_combout\ & (\Add13~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~62_combout\,
	datab => \Equal5~1_combout\,
	datac => \player1y~43_combout\,
	datad => \Add12~62_combout\,
	combout => \player1y~9_combout\);

-- Location: LCCOMB_X19_Y10_N0
\player1y[31]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y[31]~_Duplicate_1feeder_combout\ = \player1y~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \player1y~9_combout\,
	combout => \player1y[31]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y10_N1
\player1y[31]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1y[31]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \player1y[31]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y12_N12
\player1y~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1y~42_combout\ = (\player1y~5_combout\ & (!\player1y[31]~_Duplicate_1_q\ & (\LessThan55~9_combout\))) # (!\player1y~5_combout\ & (((!\player1y[31]~_Duplicate_1_q\ & \LessThan55~9_combout\)) # (!\player1y[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1y~5_combout\,
	datab => \player1y[31]~_Duplicate_1_q\,
	datac => \LessThan55~9_combout\,
	datad => \player1y[4]~4_combout\,
	combout => \player1y~42_combout\);

-- Location: FF_X19_Y12_N13
\player1y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \move|ps2_code_new~clkctrl_outclk\,
	d => \player1y~42_combout\,
	ena => \player1y[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1y(0));

-- Location: LCCOMB_X21_Y8_N2
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (player1y(0) & ((vPos(1)) # (GND))) # (!player1y(0) & (vPos(1) $ (VCC)))
-- \Add5~1\ = CARRY((player1y(0)) # (vPos(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player1y(0),
	datab => vPos(1),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X22_Y11_N2
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = player1y(1) $ (VCC)
-- \Add3~1\ = CARRY(player1y(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => player1y(1),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X21_Y8_N4
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\Add3~0_combout\ & ((vPos(2) & (!\Add5~1\)) # (!vPos(2) & ((\Add5~1\) # (GND))))) # (!\Add3~0_combout\ & ((vPos(2) & (\Add5~1\ & VCC)) # (!vPos(2) & (!\Add5~1\))))
-- \Add5~3\ = CARRY((\Add3~0_combout\ & ((!\Add5~1\) # (!vPos(2)))) # (!\Add3~0_combout\ & (!vPos(2) & !\Add5~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => vPos(2),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: DSPMULT_X20_Y11_N0
\Mult1|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	dataa => \Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y11_N2
\Mult1|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X22_Y11_N4
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\Mult1|auto_generated|w248w\(3) & (!\Add3~1\)) # (!\Mult1|auto_generated|w248w\(3) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!\Mult1|auto_generated|w248w\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|w248w\(3),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X21_Y8_N6
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = ((\Add3~2_combout\ $ (vPos(3) $ (\Add5~3\)))) # (GND)
-- \Add5~5\ = CARRY((\Add3~2_combout\ & (vPos(3) & !\Add5~3\)) # (!\Add3~2_combout\ & ((vPos(3)) # (!\Add5~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => vPos(3),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X22_Y11_N6
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\Mult1|auto_generated|w248w\(4) & ((GND) # (!\Add3~3\))) # (!\Mult1|auto_generated|w248w\(4) & (\Add3~3\ $ (GND)))
-- \Add3~5\ = CARRY((\Mult1|auto_generated|w248w\(4)) # (!\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|w248w\(4),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X21_Y8_N8
\Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\Add3~4_combout\ & ((vPos(4) & (!\Add5~5\)) # (!vPos(4) & ((\Add5~5\) # (GND))))) # (!\Add3~4_combout\ & ((vPos(4) & (\Add5~5\ & VCC)) # (!vPos(4) & (!\Add5~5\))))
-- \Add5~7\ = CARRY((\Add3~4_combout\ & ((!\Add5~5\) # (!vPos(4)))) # (!\Add3~4_combout\ & (!vPos(4) & !\Add5~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => vPos(4),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X22_Y11_N8
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\Mult1|auto_generated|w248w\(5) & (\Add3~5\ & VCC)) # (!\Mult1|auto_generated|w248w\(5) & (!\Add3~5\))
-- \Add3~7\ = CARRY((!\Mult1|auto_generated|w248w\(5) & !\Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w248w\(5),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X21_Y8_N10
\Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = ((vPos(5) $ (\Add3~6_combout\ $ (\Add5~7\)))) # (GND)
-- \Add5~9\ = CARRY((vPos(5) & ((!\Add5~7\) # (!\Add3~6_combout\))) # (!vPos(5) & (!\Add3~6_combout\ & !\Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(5),
	datab => \Add3~6_combout\,
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X22_Y11_N10
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\Mult1|auto_generated|w248w\(6) & (\Add3~7\ $ (GND))) # (!\Mult1|auto_generated|w248w\(6) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((\Mult1|auto_generated|w248w\(6) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|w248w\(6),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X21_Y8_N12
\Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (vPos(6) & ((\Add3~8_combout\ & (!\Add5~9\)) # (!\Add3~8_combout\ & (\Add5~9\ & VCC)))) # (!vPos(6) & ((\Add3~8_combout\ & ((\Add5~9\) # (GND))) # (!\Add3~8_combout\ & (!\Add5~9\))))
-- \Add5~11\ = CARRY((vPos(6) & (\Add3~8_combout\ & !\Add5~9\)) # (!vPos(6) & ((\Add3~8_combout\) # (!\Add5~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(6),
	datab => \Add3~8_combout\,
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X22_Y11_N12
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\Mult1|auto_generated|w248w\(7) & (!\Add3~9\)) # (!\Mult1|auto_generated|w248w\(7) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!\Mult1|auto_generated|w248w\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w248w\(7),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X21_Y8_N14
\Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = ((vPos(7) $ (\Add3~10_combout\ $ (\Add5~11\)))) # (GND)
-- \Add5~13\ = CARRY((vPos(7) & ((!\Add5~11\) # (!\Add3~10_combout\))) # (!vPos(7) & (!\Add3~10_combout\ & !\Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(7),
	datab => \Add3~10_combout\,
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X22_Y11_N14
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\Mult1|auto_generated|w248w\(8) & (\Add3~11\ $ (GND))) # (!\Mult1|auto_generated|w248w\(8) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((\Mult1|auto_generated|w248w\(8) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w248w\(8),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X21_Y8_N16
\Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (vPos(8) & ((\Add3~12_combout\ & (!\Add5~13\)) # (!\Add3~12_combout\ & (\Add5~13\ & VCC)))) # (!vPos(8) & ((\Add3~12_combout\ & ((\Add5~13\) # (GND))) # (!\Add3~12_combout\ & (!\Add5~13\))))
-- \Add5~15\ = CARRY((vPos(8) & (\Add3~12_combout\ & !\Add5~13\)) # (!vPos(8) & ((\Add3~12_combout\) # (!\Add5~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(8),
	datab => \Add3~12_combout\,
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X22_Y11_N16
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\Mult1|auto_generated|w248w\(9) & (!\Add3~13\)) # (!\Mult1|auto_generated|w248w\(9) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!\Mult1|auto_generated|w248w\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w248w\(9),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X21_Y8_N18
\Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = ((\Add3~14_combout\ $ (vPos(9) $ (\Add5~15\)))) # (GND)
-- \Add5~17\ = CARRY((\Add3~14_combout\ & (vPos(9) & !\Add5~15\)) # (!\Add3~14_combout\ & ((vPos(9)) # (!\Add5~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~14_combout\,
	datab => vPos(9),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: LCCOMB_X22_Y11_N18
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (\Mult1|auto_generated|w248w\(10) & (\Add3~15\ $ (GND))) # (!\Mult1|auto_generated|w248w\(10) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((\Mult1|auto_generated|w248w\(10) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|w248w\(10),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X21_Y8_N20
\Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (vPos(10) & ((\Add3~16_combout\ & (!\Add5~17\)) # (!\Add3~16_combout\ & (\Add5~17\ & VCC)))) # (!vPos(10) & ((\Add3~16_combout\ & ((\Add5~17\) # (GND))) # (!\Add3~16_combout\ & (!\Add5~17\))))
-- \Add5~19\ = CARRY((vPos(10) & (\Add3~16_combout\ & !\Add5~17\)) # (!vPos(10) & ((\Add3~16_combout\) # (!\Add5~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(10),
	datab => \Add3~16_combout\,
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: LCCOMB_X22_Y11_N20
\Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (\Mult1|auto_generated|w248w\(11) & (!\Add3~17\)) # (!\Mult1|auto_generated|w248w\(11) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!\Mult1|auto_generated|w248w\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|w248w\(11),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X21_Y8_N22
\Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = ((\Add3~18_combout\ $ (vPos(11) $ (\Add5~19\)))) # (GND)
-- \Add5~21\ = CARRY((\Add3~18_combout\ & (vPos(11) & !\Add5~19\)) # (!\Add3~18_combout\ & ((vPos(11)) # (!\Add5~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~18_combout\,
	datab => vPos(11),
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: LCCOMB_X22_Y11_N22
\Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (\Mult1|auto_generated|w248w\(12) & (\Add3~19\ $ (GND))) # (!\Mult1|auto_generated|w248w\(12) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((\Mult1|auto_generated|w248w\(12) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w248w\(12),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X21_Y8_N24
\Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (vPos(12) & ((\Add3~20_combout\ & (!\Add5~21\)) # (!\Add3~20_combout\ & (\Add5~21\ & VCC)))) # (!vPos(12) & ((\Add3~20_combout\ & ((\Add5~21\) # (GND))) # (!\Add3~20_combout\ & (!\Add5~21\))))
-- \Add5~23\ = CARRY((vPos(12) & (\Add3~20_combout\ & !\Add5~21\)) # (!vPos(12) & ((\Add3~20_combout\) # (!\Add5~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(12),
	datab => \Add3~20_combout\,
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: LCCOMB_X22_Y11_N24
\Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (\Mult1|auto_generated|w248w\(13) & (!\Add3~21\)) # (!\Mult1|auto_generated|w248w\(13) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!\Mult1|auto_generated|w248w\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w248w\(13),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X21_Y8_N26
\Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = ((\Add3~22_combout\ $ (vPos(13) $ (\Add5~23\)))) # (GND)
-- \Add5~25\ = CARRY((\Add3~22_combout\ & (vPos(13) & !\Add5~23\)) # (!\Add3~22_combout\ & ((vPos(13)) # (!\Add5~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~22_combout\,
	datab => vPos(13),
	datad => VCC,
	cin => \Add5~23\,
	combout => \Add5~24_combout\,
	cout => \Add5~25\);

-- Location: LCCOMB_X22_Y11_N26
\Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (\Mult1|auto_generated|w248w\(14) & (\Add3~23\ $ (GND))) # (!\Mult1|auto_generated|w248w\(14) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((\Mult1|auto_generated|w248w\(14) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|w248w\(14),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X21_Y8_N28
\Add5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (vPos(14) & ((\Add3~24_combout\ & (!\Add5~25\)) # (!\Add3~24_combout\ & (\Add5~25\ & VCC)))) # (!vPos(14) & ((\Add3~24_combout\ & ((\Add5~25\) # (GND))) # (!\Add3~24_combout\ & (!\Add5~25\))))
-- \Add5~27\ = CARRY((vPos(14) & (\Add3~24_combout\ & !\Add5~25\)) # (!vPos(14) & ((\Add3~24_combout\) # (!\Add5~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(14),
	datab => \Add3~24_combout\,
	datad => VCC,
	cin => \Add5~25\,
	combout => \Add5~26_combout\,
	cout => \Add5~27\);

-- Location: LCCOMB_X22_Y11_N28
\Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (\Mult1|auto_generated|w248w\(15) & (!\Add3~25\)) # (!\Mult1|auto_generated|w248w\(15) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!\Mult1|auto_generated|w248w\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w248w\(15),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X21_Y8_N30
\Add5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = ((vPos(15) $ (\Add3~26_combout\ $ (\Add5~27\)))) # (GND)
-- \Add5~29\ = CARRY((vPos(15) & ((!\Add5~27\) # (!\Add3~26_combout\))) # (!vPos(15) & (!\Add3~26_combout\ & !\Add5~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(15),
	datab => \Add3~26_combout\,
	datad => VCC,
	cin => \Add5~27\,
	combout => \Add5~28_combout\,
	cout => \Add5~29\);

-- Location: LCCOMB_X22_Y11_N30
\Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (\Mult1|auto_generated|w248w\(16) & (\Add3~27\ $ (GND))) # (!\Mult1|auto_generated|w248w\(16) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((\Mult1|auto_generated|w248w\(16) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w248w\(16),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X21_Y7_N0
\Add5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = (\Add3~28_combout\ & ((vPos(16) & (!\Add5~29\)) # (!vPos(16) & ((\Add5~29\) # (GND))))) # (!\Add3~28_combout\ & ((vPos(16) & (\Add5~29\ & VCC)) # (!vPos(16) & (!\Add5~29\))))
-- \Add5~31\ = CARRY((\Add3~28_combout\ & ((!\Add5~29\) # (!vPos(16)))) # (!\Add3~28_combout\ & (!vPos(16) & !\Add5~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~28_combout\,
	datab => vPos(16),
	datad => VCC,
	cin => \Add5~29\,
	combout => \Add5~30_combout\,
	cout => \Add5~31\);

-- Location: LCCOMB_X22_Y10_N0
\Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (\Mult1|auto_generated|w248w\(17) & (!\Add3~29\)) # (!\Mult1|auto_generated|w248w\(17) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!\Mult1|auto_generated|w248w\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w248w\(17),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X21_Y7_N2
\Add5~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~32_combout\ = ((vPos(17) $ (\Add3~30_combout\ $ (\Add5~31\)))) # (GND)
-- \Add5~33\ = CARRY((vPos(17) & ((!\Add5~31\) # (!\Add3~30_combout\))) # (!vPos(17) & (!\Add3~30_combout\ & !\Add5~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(17),
	datab => \Add3~30_combout\,
	datad => VCC,
	cin => \Add5~31\,
	combout => \Add5~32_combout\,
	cout => \Add5~33\);

-- Location: DSPMULT_X20_Y8_N0
\Mult3|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Mult3|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult3|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult3|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y8_N2
\Mult3|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult3|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPMULT_X20_Y10_N0
\Mult1|auto_generated|mac_mult3\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \move|ps2_code_new~clkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \Mult1|auto_generated|mac_mult3_DATAA_bus\,
	datab => \Mult1|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y10_N2
\Mult1|auto_generated|mac_out4\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: LCCOMB_X21_Y10_N4
\Mult1|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~0_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT18\ & (\Mult1|auto_generated|mac_out4~dataout\ $ (VCC))) # (!\Mult1|auto_generated|mac_out2~DATAOUT18\ & (\Mult1|auto_generated|mac_out4~dataout\ & VCC))
-- \Mult1|auto_generated|op_1~1\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT18\ & \Mult1|auto_generated|mac_out4~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT18\,
	datab => \Mult1|auto_generated|mac_out4~dataout\,
	datad => VCC,
	combout => \Mult1|auto_generated|op_1~0_combout\,
	cout => \Mult1|auto_generated|op_1~1\);

-- Location: LCCOMB_X22_Y10_N2
\Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (\Mult1|auto_generated|op_1~0_combout\ & (\Add3~31\ $ (GND))) # (!\Mult1|auto_generated|op_1~0_combout\ & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((\Mult1|auto_generated|op_1~0_combout\ & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X21_Y7_N4
\Add5~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~34_combout\ = (\Add3~32_combout\ & ((vPos(18) & (!\Add5~33\)) # (!vPos(18) & ((\Add5~33\) # (GND))))) # (!\Add3~32_combout\ & ((vPos(18) & (\Add5~33\ & VCC)) # (!vPos(18) & (!\Add5~33\))))
-- \Add5~35\ = CARRY((\Add3~32_combout\ & ((!\Add5~33\) # (!vPos(18)))) # (!\Add3~32_combout\ & (!vPos(18) & !\Add5~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~32_combout\,
	datab => vPos(18),
	datad => VCC,
	cin => \Add5~33\,
	combout => \Add5~34_combout\,
	cout => \Add5~35\);

-- Location: LCCOMB_X21_Y10_N6
\Mult1|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~2_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT19\ & ((\Mult1|auto_generated|mac_out4~DATAOUT1\ & (\Mult1|auto_generated|op_1~1\ & VCC)) # (!\Mult1|auto_generated|mac_out4~DATAOUT1\ & (!\Mult1|auto_generated|op_1~1\)))) # 
-- (!\Mult1|auto_generated|mac_out2~DATAOUT19\ & ((\Mult1|auto_generated|mac_out4~DATAOUT1\ & (!\Mult1|auto_generated|op_1~1\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT1\ & ((\Mult1|auto_generated|op_1~1\) # (GND)))))
-- \Mult1|auto_generated|op_1~3\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT19\ & (!\Mult1|auto_generated|mac_out4~DATAOUT1\ & !\Mult1|auto_generated|op_1~1\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT19\ & ((!\Mult1|auto_generated|op_1~1\) # 
-- (!\Mult1|auto_generated|mac_out4~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT19\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT1\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~1\,
	combout => \Mult1|auto_generated|op_1~2_combout\,
	cout => \Mult1|auto_generated|op_1~3\);

-- Location: LCCOMB_X22_Y10_N4
\Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (\Mult1|auto_generated|op_1~2_combout\ & (!\Add3~33\)) # (!\Mult1|auto_generated|op_1~2_combout\ & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!\Mult1|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X21_Y7_N6
\Add5~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~36_combout\ = ((\Add3~34_combout\ $ (vPos(19) $ (\Add5~35\)))) # (GND)
-- \Add5~37\ = CARRY((\Add3~34_combout\ & (vPos(19) & !\Add5~35\)) # (!\Add3~34_combout\ & ((vPos(19)) # (!\Add5~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~34_combout\,
	datab => vPos(19),
	datad => VCC,
	cin => \Add5~35\,
	combout => \Add5~36_combout\,
	cout => \Add5~37\);

-- Location: LCCOMB_X21_Y10_N8
\Mult1|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~4_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT20\ $ (\Mult1|auto_generated|mac_out4~DATAOUT2\ $ (!\Mult1|auto_generated|op_1~3\)))) # (GND)
-- \Mult1|auto_generated|op_1~5\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT20\ & ((\Mult1|auto_generated|mac_out4~DATAOUT2\) # (!\Mult1|auto_generated|op_1~3\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT20\ & (\Mult1|auto_generated|mac_out4~DATAOUT2\ & 
-- !\Mult1|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT20\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT2\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~3\,
	combout => \Mult1|auto_generated|op_1~4_combout\,
	cout => \Mult1|auto_generated|op_1~5\);

-- Location: LCCOMB_X22_Y10_N6
\Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (\Mult1|auto_generated|op_1~4_combout\ & (\Add3~35\ $ (GND))) # (!\Mult1|auto_generated|op_1~4_combout\ & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((\Mult1|auto_generated|op_1~4_combout\ & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X21_Y7_N8
\Add5~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~38_combout\ = (\Add3~36_combout\ & ((vPos(20) & (!\Add5~37\)) # (!vPos(20) & ((\Add5~37\) # (GND))))) # (!\Add3~36_combout\ & ((vPos(20) & (\Add5~37\ & VCC)) # (!vPos(20) & (!\Add5~37\))))
-- \Add5~39\ = CARRY((\Add3~36_combout\ & ((!\Add5~37\) # (!vPos(20)))) # (!\Add3~36_combout\ & (!vPos(20) & !\Add5~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~36_combout\,
	datab => vPos(20),
	datad => VCC,
	cin => \Add5~37\,
	combout => \Add5~38_combout\,
	cout => \Add5~39\);

-- Location: LCCOMB_X21_Y10_N10
\Mult1|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~6_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT3\ & ((\Mult1|auto_generated|mac_out2~DATAOUT21\ & (\Mult1|auto_generated|op_1~5\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT21\ & (!\Mult1|auto_generated|op_1~5\)))) # 
-- (!\Mult1|auto_generated|mac_out4~DATAOUT3\ & ((\Mult1|auto_generated|mac_out2~DATAOUT21\ & (!\Mult1|auto_generated|op_1~5\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT21\ & ((\Mult1|auto_generated|op_1~5\) # (GND)))))
-- \Mult1|auto_generated|op_1~7\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT3\ & (!\Mult1|auto_generated|mac_out2~DATAOUT21\ & !\Mult1|auto_generated|op_1~5\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT3\ & ((!\Mult1|auto_generated|op_1~5\) # 
-- (!\Mult1|auto_generated|mac_out2~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT3\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~5\,
	combout => \Mult1|auto_generated|op_1~6_combout\,
	cout => \Mult1|auto_generated|op_1~7\);

-- Location: LCCOMB_X22_Y10_N8
\Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (\Mult1|auto_generated|op_1~6_combout\ & (!\Add3~37\)) # (!\Mult1|auto_generated|op_1~6_combout\ & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!\Mult1|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCCOMB_X21_Y7_N10
\Add5~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~40_combout\ = ((vPos(21) $ (\Add3~38_combout\ $ (\Add5~39\)))) # (GND)
-- \Add5~41\ = CARRY((vPos(21) & ((!\Add5~39\) # (!\Add3~38_combout\))) # (!vPos(21) & (!\Add3~38_combout\ & !\Add5~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(21),
	datab => \Add3~38_combout\,
	datad => VCC,
	cin => \Add5~39\,
	combout => \Add5~40_combout\,
	cout => \Add5~41\);

-- Location: LCCOMB_X21_Y10_N12
\Mult1|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~8_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT22\ $ (\Mult1|auto_generated|mac_out4~DATAOUT4\ $ (!\Mult1|auto_generated|op_1~7\)))) # (GND)
-- \Mult1|auto_generated|op_1~9\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT22\ & ((\Mult1|auto_generated|mac_out4~DATAOUT4\) # (!\Mult1|auto_generated|op_1~7\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT22\ & (\Mult1|auto_generated|mac_out4~DATAOUT4\ & 
-- !\Mult1|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT22\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT4\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~7\,
	combout => \Mult1|auto_generated|op_1~8_combout\,
	cout => \Mult1|auto_generated|op_1~9\);

-- Location: LCCOMB_X22_Y10_N10
\Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (\Mult1|auto_generated|op_1~8_combout\ & (\Add3~39\ $ (GND))) # (!\Mult1|auto_generated|op_1~8_combout\ & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((\Mult1|auto_generated|op_1~8_combout\ & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X21_Y7_N12
\Add5~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~42_combout\ = (vPos(22) & ((\Add3~40_combout\ & (!\Add5~41\)) # (!\Add3~40_combout\ & (\Add5~41\ & VCC)))) # (!vPos(22) & ((\Add3~40_combout\ & ((\Add5~41\) # (GND))) # (!\Add3~40_combout\ & (!\Add5~41\))))
-- \Add5~43\ = CARRY((vPos(22) & (\Add3~40_combout\ & !\Add5~41\)) # (!vPos(22) & ((\Add3~40_combout\) # (!\Add5~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(22),
	datab => \Add3~40_combout\,
	datad => VCC,
	cin => \Add5~41\,
	combout => \Add5~42_combout\,
	cout => \Add5~43\);

-- Location: LCCOMB_X21_Y10_N14
\Mult1|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~10_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Mult1|auto_generated|mac_out4~DATAOUT5\ & (\Mult1|auto_generated|op_1~9\ & VCC)) # (!\Mult1|auto_generated|mac_out4~DATAOUT5\ & (!\Mult1|auto_generated|op_1~9\)))) # 
-- (!\Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Mult1|auto_generated|mac_out4~DATAOUT5\ & (!\Mult1|auto_generated|op_1~9\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT5\ & ((\Mult1|auto_generated|op_1~9\) # (GND)))))
-- \Mult1|auto_generated|op_1~11\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT23\ & (!\Mult1|auto_generated|mac_out4~DATAOUT5\ & !\Mult1|auto_generated|op_1~9\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT23\ & ((!\Mult1|auto_generated|op_1~9\) # 
-- (!\Mult1|auto_generated|mac_out4~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT23\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT5\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~9\,
	combout => \Mult1|auto_generated|op_1~10_combout\,
	cout => \Mult1|auto_generated|op_1~11\);

-- Location: LCCOMB_X22_Y10_N12
\Add3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (\Mult1|auto_generated|op_1~10_combout\ & (!\Add3~41\)) # (!\Mult1|auto_generated|op_1~10_combout\ & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!\Mult1|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X21_Y7_N14
\Add5~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~44_combout\ = ((vPos(23) $ (\Add3~42_combout\ $ (\Add5~43\)))) # (GND)
-- \Add5~45\ = CARRY((vPos(23) & ((!\Add5~43\) # (!\Add3~42_combout\))) # (!vPos(23) & (!\Add3~42_combout\ & !\Add5~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(23),
	datab => \Add3~42_combout\,
	datad => VCC,
	cin => \Add5~43\,
	combout => \Add5~44_combout\,
	cout => \Add5~45\);

-- Location: LCCOMB_X19_Y10_N8
\Mult1|auto_generated|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_2~0_combout\ = \Mult1|auto_generated|mac_out4~DATAOUT6\ $ (VCC)
-- \Mult1|auto_generated|op_2~1\ = CARRY(\Mult1|auto_generated|mac_out4~DATAOUT6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT6\,
	datad => VCC,
	combout => \Mult1|auto_generated|op_2~0_combout\,
	cout => \Mult1|auto_generated|op_2~1\);

-- Location: LCCOMB_X21_Y10_N16
\Mult1|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~12_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT24\ $ (\Mult1|auto_generated|op_2~0_combout\ $ (\Mult1|auto_generated|op_1~11\)))) # (GND)
-- \Mult1|auto_generated|op_1~13\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT24\ & (\Mult1|auto_generated|op_2~0_combout\ & !\Mult1|auto_generated|op_1~11\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT24\ & ((\Mult1|auto_generated|op_2~0_combout\) # 
-- (!\Mult1|auto_generated|op_1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT24\,
	datab => \Mult1|auto_generated|op_2~0_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~11\,
	combout => \Mult1|auto_generated|op_1~12_combout\,
	cout => \Mult1|auto_generated|op_1~13\);

-- Location: LCCOMB_X22_Y10_N14
\Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (\Mult1|auto_generated|op_1~12_combout\ & (\Add3~43\ $ (GND))) # (!\Mult1|auto_generated|op_1~12_combout\ & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((\Mult1|auto_generated|op_1~12_combout\ & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X21_Y7_N16
\Add5~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~46_combout\ = (vPos(24) & ((\Add3~44_combout\ & (!\Add5~45\)) # (!\Add3~44_combout\ & (\Add5~45\ & VCC)))) # (!vPos(24) & ((\Add3~44_combout\ & ((\Add5~45\) # (GND))) # (!\Add3~44_combout\ & (!\Add5~45\))))
-- \Add5~47\ = CARRY((vPos(24) & (\Add3~44_combout\ & !\Add5~45\)) # (!vPos(24) & ((\Add3~44_combout\) # (!\Add5~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(24),
	datab => \Add3~44_combout\,
	datad => VCC,
	cin => \Add5~45\,
	combout => \Add5~46_combout\,
	cout => \Add5~47\);

-- Location: LCCOMB_X19_Y10_N10
\Mult1|auto_generated|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_2~2_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT7\ & (!\Mult1|auto_generated|op_2~1\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT7\ & ((\Mult1|auto_generated|op_2~1\) # (GND)))
-- \Mult1|auto_generated|op_2~3\ = CARRY((!\Mult1|auto_generated|op_2~1\) # (!\Mult1|auto_generated|mac_out4~DATAOUT7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out4~DATAOUT7\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_2~1\,
	combout => \Mult1|auto_generated|op_2~2_combout\,
	cout => \Mult1|auto_generated|op_2~3\);

-- Location: LCCOMB_X21_Y10_N18
\Mult1|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~14_combout\ = (\Mult1|auto_generated|op_2~2_combout\ & (\Mult1|auto_generated|op_1~13\ & VCC)) # (!\Mult1|auto_generated|op_2~2_combout\ & (!\Mult1|auto_generated|op_1~13\))
-- \Mult1|auto_generated|op_1~15\ = CARRY((!\Mult1|auto_generated|op_2~2_combout\ & !\Mult1|auto_generated|op_1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_2~2_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~13\,
	combout => \Mult1|auto_generated|op_1~14_combout\,
	cout => \Mult1|auto_generated|op_1~15\);

-- Location: LCCOMB_X22_Y10_N16
\Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (\Mult1|auto_generated|op_1~14_combout\ & (!\Add3~45\)) # (!\Mult1|auto_generated|op_1~14_combout\ & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!\Mult1|auto_generated|op_1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCCOMB_X21_Y7_N18
\Add5~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~48_combout\ = ((\Add3~46_combout\ $ (vPos(25) $ (\Add5~47\)))) # (GND)
-- \Add5~49\ = CARRY((\Add3~46_combout\ & (vPos(25) & !\Add5~47\)) # (!\Add3~46_combout\ & ((vPos(25)) # (!\Add5~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~46_combout\,
	datab => vPos(25),
	datad => VCC,
	cin => \Add5~47\,
	combout => \Add5~48_combout\,
	cout => \Add5~49\);

-- Location: LCCOMB_X19_Y10_N12
\Mult1|auto_generated|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_2~4_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT8\ & (\Mult1|auto_generated|op_2~3\ $ (GND))) # (!\Mult1|auto_generated|mac_out4~DATAOUT8\ & (!\Mult1|auto_generated|op_2~3\ & VCC))
-- \Mult1|auto_generated|op_2~5\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT8\ & !\Mult1|auto_generated|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out4~DATAOUT8\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_2~3\,
	combout => \Mult1|auto_generated|op_2~4_combout\,
	cout => \Mult1|auto_generated|op_2~5\);

-- Location: LCCOMB_X21_Y10_N20
\Mult1|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~16_combout\ = (\Mult1|auto_generated|op_2~4_combout\ & ((GND) # (!\Mult1|auto_generated|op_1~15\))) # (!\Mult1|auto_generated|op_2~4_combout\ & (\Mult1|auto_generated|op_1~15\ $ (GND)))
-- \Mult1|auto_generated|op_1~17\ = CARRY((\Mult1|auto_generated|op_2~4_combout\) # (!\Mult1|auto_generated|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|op_2~4_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~15\,
	combout => \Mult1|auto_generated|op_1~16_combout\,
	cout => \Mult1|auto_generated|op_1~17\);

-- Location: LCCOMB_X22_Y10_N18
\Add3~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (\Mult1|auto_generated|op_1~16_combout\ & (\Add3~47\ $ (GND))) # (!\Mult1|auto_generated|op_1~16_combout\ & (!\Add3~47\ & VCC))
-- \Add3~49\ = CARRY((\Mult1|auto_generated|op_1~16_combout\ & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: LCCOMB_X21_Y7_N20
\Add5~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~50_combout\ = (vPos(26) & ((\Add3~48_combout\ & (!\Add5~49\)) # (!\Add3~48_combout\ & (\Add5~49\ & VCC)))) # (!vPos(26) & ((\Add3~48_combout\ & ((\Add5~49\) # (GND))) # (!\Add3~48_combout\ & (!\Add5~49\))))
-- \Add5~51\ = CARRY((vPos(26) & (\Add3~48_combout\ & !\Add5~49\)) # (!vPos(26) & ((\Add3~48_combout\) # (!\Add5~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(26),
	datab => \Add3~48_combout\,
	datad => VCC,
	cin => \Add5~49\,
	combout => \Add5~50_combout\,
	cout => \Add5~51\);

-- Location: LCCOMB_X19_Y10_N14
\Mult1|auto_generated|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_2~6_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT9\ & (!\Mult1|auto_generated|op_2~5\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT9\ & ((\Mult1|auto_generated|op_2~5\) # (GND)))
-- \Mult1|auto_generated|op_2~7\ = CARRY((!\Mult1|auto_generated|op_2~5\) # (!\Mult1|auto_generated|mac_out4~DATAOUT9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT9\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_2~5\,
	combout => \Mult1|auto_generated|op_2~6_combout\,
	cout => \Mult1|auto_generated|op_2~7\);

-- Location: LCCOMB_X21_Y10_N22
\Mult1|auto_generated|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~18_combout\ = (\Mult1|auto_generated|op_2~6_combout\ & (\Mult1|auto_generated|op_1~17\ & VCC)) # (!\Mult1|auto_generated|op_2~6_combout\ & (!\Mult1|auto_generated|op_1~17\))
-- \Mult1|auto_generated|op_1~19\ = CARRY((!\Mult1|auto_generated|op_2~6_combout\ & !\Mult1|auto_generated|op_1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_2~6_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~17\,
	combout => \Mult1|auto_generated|op_1~18_combout\,
	cout => \Mult1|auto_generated|op_1~19\);

-- Location: LCCOMB_X22_Y10_N20
\Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (\Mult1|auto_generated|op_1~18_combout\ & (!\Add3~49\)) # (!\Mult1|auto_generated|op_1~18_combout\ & ((\Add3~49\) # (GND)))
-- \Add3~51\ = CARRY((!\Add3~49\) # (!\Mult1|auto_generated|op_1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: LCCOMB_X21_Y7_N22
\Add5~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~52_combout\ = ((vPos(27) $ (\Add3~50_combout\ $ (\Add5~51\)))) # (GND)
-- \Add5~53\ = CARRY((vPos(27) & ((!\Add5~51\) # (!\Add3~50_combout\))) # (!vPos(27) & (!\Add3~50_combout\ & !\Add5~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(27),
	datab => \Add3~50_combout\,
	datad => VCC,
	cin => \Add5~51\,
	combout => \Add5~52_combout\,
	cout => \Add5~53\);

-- Location: LCCOMB_X19_Y10_N16
\Mult1|auto_generated|op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_2~8_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT10\ & (\Mult1|auto_generated|op_2~7\ $ (GND))) # (!\Mult1|auto_generated|mac_out4~DATAOUT10\ & (!\Mult1|auto_generated|op_2~7\ & VCC))
-- \Mult1|auto_generated|op_2~9\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT10\ & !\Mult1|auto_generated|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT10\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_2~7\,
	combout => \Mult1|auto_generated|op_2~8_combout\,
	cout => \Mult1|auto_generated|op_2~9\);

-- Location: LCCOMB_X21_Y10_N24
\Mult1|auto_generated|op_1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~20_combout\ = (\Mult1|auto_generated|op_2~8_combout\ & ((GND) # (!\Mult1|auto_generated|op_1~19\))) # (!\Mult1|auto_generated|op_2~8_combout\ & (\Mult1|auto_generated|op_1~19\ $ (GND)))
-- \Mult1|auto_generated|op_1~21\ = CARRY((\Mult1|auto_generated|op_2~8_combout\) # (!\Mult1|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|op_2~8_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~19\,
	combout => \Mult1|auto_generated|op_1~20_combout\,
	cout => \Mult1|auto_generated|op_1~21\);

-- Location: LCCOMB_X22_Y10_N22
\Add3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = (\Mult1|auto_generated|op_1~20_combout\ & (\Add3~51\ $ (GND))) # (!\Mult1|auto_generated|op_1~20_combout\ & (!\Add3~51\ & VCC))
-- \Add3~53\ = CARRY((\Mult1|auto_generated|op_1~20_combout\ & !\Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: LCCOMB_X21_Y7_N24
\Add5~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~54_combout\ = (\Add3~52_combout\ & ((vPos(28) & (!\Add5~53\)) # (!vPos(28) & ((\Add5~53\) # (GND))))) # (!\Add3~52_combout\ & ((vPos(28) & (\Add5~53\ & VCC)) # (!vPos(28) & (!\Add5~53\))))
-- \Add5~55\ = CARRY((\Add3~52_combout\ & ((!\Add5~53\) # (!vPos(28)))) # (!\Add3~52_combout\ & (!vPos(28) & !\Add5~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~52_combout\,
	datab => vPos(28),
	datad => VCC,
	cin => \Add5~53\,
	combout => \Add5~54_combout\,
	cout => \Add5~55\);

-- Location: LCCOMB_X19_Y10_N18
\Mult1|auto_generated|op_2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_2~10_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT11\ & (!\Mult1|auto_generated|op_2~9\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT11\ & ((\Mult1|auto_generated|op_2~9\) # (GND)))
-- \Mult1|auto_generated|op_2~11\ = CARRY((!\Mult1|auto_generated|op_2~9\) # (!\Mult1|auto_generated|mac_out4~DATAOUT11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out4~DATAOUT11\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_2~9\,
	combout => \Mult1|auto_generated|op_2~10_combout\,
	cout => \Mult1|auto_generated|op_2~11\);

-- Location: LCCOMB_X21_Y10_N26
\Mult1|auto_generated|op_1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~22_combout\ = (\Mult1|auto_generated|op_2~10_combout\ & (\Mult1|auto_generated|op_1~21\ & VCC)) # (!\Mult1|auto_generated|op_2~10_combout\ & (!\Mult1|auto_generated|op_1~21\))
-- \Mult1|auto_generated|op_1~23\ = CARRY((!\Mult1|auto_generated|op_2~10_combout\ & !\Mult1|auto_generated|op_1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|op_2~10_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~21\,
	combout => \Mult1|auto_generated|op_1~22_combout\,
	cout => \Mult1|auto_generated|op_1~23\);

-- Location: LCCOMB_X22_Y10_N24
\Add3~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = (\Mult1|auto_generated|op_1~22_combout\ & (!\Add3~53\)) # (!\Mult1|auto_generated|op_1~22_combout\ & ((\Add3~53\) # (GND)))
-- \Add3~55\ = CARRY((!\Add3~53\) # (!\Mult1|auto_generated|op_1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \Add3~53\,
	combout => \Add3~54_combout\,
	cout => \Add3~55\);

-- Location: LCCOMB_X21_Y7_N26
\Add5~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~56_combout\ = ((vPos(29) $ (\Add3~54_combout\ $ (\Add5~55\)))) # (GND)
-- \Add5~57\ = CARRY((vPos(29) & ((!\Add5~55\) # (!\Add3~54_combout\))) # (!vPos(29) & (!\Add3~54_combout\ & !\Add5~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(29),
	datab => \Add3~54_combout\,
	datad => VCC,
	cin => \Add5~55\,
	combout => \Add5~56_combout\,
	cout => \Add5~57\);

-- Location: LCCOMB_X19_Y10_N20
\Mult1|auto_generated|op_2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_2~12_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT12\ & (\Mult1|auto_generated|op_2~11\ $ (GND))) # (!\Mult1|auto_generated|mac_out4~DATAOUT12\ & (!\Mult1|auto_generated|op_2~11\ & VCC))
-- \Mult1|auto_generated|op_2~13\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT12\ & !\Mult1|auto_generated|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out4~DATAOUT12\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_2~11\,
	combout => \Mult1|auto_generated|op_2~12_combout\,
	cout => \Mult1|auto_generated|op_2~13\);

-- Location: LCCOMB_X21_Y10_N28
\Mult1|auto_generated|op_1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~24_combout\ = (\Mult1|auto_generated|op_2~12_combout\ & ((GND) # (!\Mult1|auto_generated|op_1~23\))) # (!\Mult1|auto_generated|op_2~12_combout\ & (\Mult1|auto_generated|op_1~23\ $ (GND)))
-- \Mult1|auto_generated|op_1~25\ = CARRY((\Mult1|auto_generated|op_2~12_combout\) # (!\Mult1|auto_generated|op_1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|op_2~12_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~23\,
	combout => \Mult1|auto_generated|op_1~24_combout\,
	cout => \Mult1|auto_generated|op_1~25\);

-- Location: LCCOMB_X22_Y10_N26
\Add3~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = (\Mult1|auto_generated|op_1~24_combout\ & (\Add3~55\ $ (GND))) # (!\Mult1|auto_generated|op_1~24_combout\ & (!\Add3~55\ & VCC))
-- \Add3~57\ = CARRY((\Mult1|auto_generated|op_1~24_combout\ & !\Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \Add3~55\,
	combout => \Add3~56_combout\,
	cout => \Add3~57\);

-- Location: LCCOMB_X21_Y7_N28
\Add5~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~58_combout\ = (vPos(30) & ((\Add3~56_combout\ & (!\Add5~57\)) # (!\Add3~56_combout\ & (\Add5~57\ & VCC)))) # (!vPos(30) & ((\Add3~56_combout\ & ((\Add5~57\) # (GND))) # (!\Add3~56_combout\ & (!\Add5~57\))))
-- \Add5~59\ = CARRY((vPos(30) & (\Add3~56_combout\ & !\Add5~57\)) # (!vPos(30) & ((\Add3~56_combout\) # (!\Add5~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(30),
	datab => \Add3~56_combout\,
	datad => VCC,
	cin => \Add5~57\,
	combout => \Add5~58_combout\,
	cout => \Add5~59\);

-- Location: LCCOMB_X19_Y10_N22
\Mult1|auto_generated|op_2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_2~14_combout\ = \Mult1|auto_generated|op_2~13\ $ (\Mult1|auto_generated|mac_out4~DATAOUT13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult1|auto_generated|mac_out4~DATAOUT13\,
	cin => \Mult1|auto_generated|op_2~13\,
	combout => \Mult1|auto_generated|op_2~14_combout\);

-- Location: LCCOMB_X21_Y10_N30
\Mult1|auto_generated|op_1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~26_combout\ = \Mult1|auto_generated|op_1~25\ $ (!\Mult1|auto_generated|op_2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult1|auto_generated|op_2~14_combout\,
	cin => \Mult1|auto_generated|op_1~25\,
	combout => \Mult1|auto_generated|op_1~26_combout\);

-- Location: LCCOMB_X22_Y10_N28
\Add3~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~58_combout\ = \Add3~57\ $ (\Mult1|auto_generated|op_1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult1|auto_generated|op_1~26_combout\,
	cin => \Add3~57\,
	combout => \Add3~58_combout\);

-- Location: LCCOMB_X21_Y7_N30
\Add5~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~60_combout\ = vPos(31) $ (\Add5~59\ $ (\Add3~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(31),
	datad => \Add3~58_combout\,
	cin => \Add5~59\,
	combout => \Add5~60_combout\);

-- Location: DSPMULT_X20_Y7_N0
\Mult3|auto_generated|mac_mult3\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	dataa => \Mult3|auto_generated|mac_mult3_DATAA_bus\,
	datab => \Mult3|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult3|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y7_N2
\Mult3|auto_generated|mac_out4\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult3|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: DSPMULT_X20_Y9_N0
\Mult3|auto_generated|mac_mult5\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	dataa => \Mult3|auto_generated|mac_mult5_DATAA_bus\,
	datab => \Mult3|auto_generated|mac_mult5_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult3|auto_generated|mac_mult5_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y9_N2
\Mult3|auto_generated|mac_out6\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out6_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult3|auto_generated|mac_out6_DATAOUT_bus\);

-- Location: LCCOMB_X21_Y9_N2
\Mult3|auto_generated|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_2~0_combout\ = (\Mult3|auto_generated|mac_out4~dataout\ & (\Mult3|auto_generated|mac_out6~dataout\ $ (VCC))) # (!\Mult3|auto_generated|mac_out4~dataout\ & (\Mult3|auto_generated|mac_out6~dataout\ & VCC))
-- \Mult3|auto_generated|op_2~1\ = CARRY((\Mult3|auto_generated|mac_out4~dataout\ & \Mult3|auto_generated|mac_out6~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out4~dataout\,
	datab => \Mult3|auto_generated|mac_out6~dataout\,
	datad => VCC,
	combout => \Mult3|auto_generated|op_2~0_combout\,
	cout => \Mult3|auto_generated|op_2~1\);

-- Location: LCCOMB_X21_Y9_N4
\Mult3|auto_generated|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_2~2_combout\ = (\Mult3|auto_generated|mac_out6~DATAOUT1\ & ((\Mult3|auto_generated|mac_out4~DATAOUT1\ & (\Mult3|auto_generated|op_2~1\ & VCC)) # (!\Mult3|auto_generated|mac_out4~DATAOUT1\ & (!\Mult3|auto_generated|op_2~1\)))) # 
-- (!\Mult3|auto_generated|mac_out6~DATAOUT1\ & ((\Mult3|auto_generated|mac_out4~DATAOUT1\ & (!\Mult3|auto_generated|op_2~1\)) # (!\Mult3|auto_generated|mac_out4~DATAOUT1\ & ((\Mult3|auto_generated|op_2~1\) # (GND)))))
-- \Mult3|auto_generated|op_2~3\ = CARRY((\Mult3|auto_generated|mac_out6~DATAOUT1\ & (!\Mult3|auto_generated|mac_out4~DATAOUT1\ & !\Mult3|auto_generated|op_2~1\)) # (!\Mult3|auto_generated|mac_out6~DATAOUT1\ & ((!\Mult3|auto_generated|op_2~1\) # 
-- (!\Mult3|auto_generated|mac_out4~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out6~DATAOUT1\,
	datab => \Mult3|auto_generated|mac_out4~DATAOUT1\,
	datad => VCC,
	cin => \Mult3|auto_generated|op_2~1\,
	combout => \Mult3|auto_generated|op_2~2_combout\,
	cout => \Mult3|auto_generated|op_2~3\);

-- Location: LCCOMB_X21_Y9_N6
\Mult3|auto_generated|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_2~4_combout\ = ((\Mult3|auto_generated|mac_out4~DATAOUT2\ $ (\Mult3|auto_generated|mac_out6~DATAOUT2\ $ (!\Mult3|auto_generated|op_2~3\)))) # (GND)
-- \Mult3|auto_generated|op_2~5\ = CARRY((\Mult3|auto_generated|mac_out4~DATAOUT2\ & ((\Mult3|auto_generated|mac_out6~DATAOUT2\) # (!\Mult3|auto_generated|op_2~3\))) # (!\Mult3|auto_generated|mac_out4~DATAOUT2\ & (\Mult3|auto_generated|mac_out6~DATAOUT2\ & 
-- !\Mult3|auto_generated|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out4~DATAOUT2\,
	datab => \Mult3|auto_generated|mac_out6~DATAOUT2\,
	datad => VCC,
	cin => \Mult3|auto_generated|op_2~3\,
	combout => \Mult3|auto_generated|op_2~4_combout\,
	cout => \Mult3|auto_generated|op_2~5\);

-- Location: LCCOMB_X21_Y9_N8
\Mult3|auto_generated|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_2~6_combout\ = (\Mult3|auto_generated|mac_out4~DATAOUT3\ & ((\Mult3|auto_generated|mac_out6~DATAOUT3\ & (\Mult3|auto_generated|op_2~5\ & VCC)) # (!\Mult3|auto_generated|mac_out6~DATAOUT3\ & (!\Mult3|auto_generated|op_2~5\)))) # 
-- (!\Mult3|auto_generated|mac_out4~DATAOUT3\ & ((\Mult3|auto_generated|mac_out6~DATAOUT3\ & (!\Mult3|auto_generated|op_2~5\)) # (!\Mult3|auto_generated|mac_out6~DATAOUT3\ & ((\Mult3|auto_generated|op_2~5\) # (GND)))))
-- \Mult3|auto_generated|op_2~7\ = CARRY((\Mult3|auto_generated|mac_out4~DATAOUT3\ & (!\Mult3|auto_generated|mac_out6~DATAOUT3\ & !\Mult3|auto_generated|op_2~5\)) # (!\Mult3|auto_generated|mac_out4~DATAOUT3\ & ((!\Mult3|auto_generated|op_2~5\) # 
-- (!\Mult3|auto_generated|mac_out6~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out4~DATAOUT3\,
	datab => \Mult3|auto_generated|mac_out6~DATAOUT3\,
	datad => VCC,
	cin => \Mult3|auto_generated|op_2~5\,
	combout => \Mult3|auto_generated|op_2~6_combout\,
	cout => \Mult3|auto_generated|op_2~7\);

-- Location: LCCOMB_X21_Y9_N10
\Mult3|auto_generated|op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_2~8_combout\ = ((\Mult3|auto_generated|mac_out6~DATAOUT4\ $ (\Mult3|auto_generated|mac_out4~DATAOUT4\ $ (!\Mult3|auto_generated|op_2~7\)))) # (GND)
-- \Mult3|auto_generated|op_2~9\ = CARRY((\Mult3|auto_generated|mac_out6~DATAOUT4\ & ((\Mult3|auto_generated|mac_out4~DATAOUT4\) # (!\Mult3|auto_generated|op_2~7\))) # (!\Mult3|auto_generated|mac_out6~DATAOUT4\ & (\Mult3|auto_generated|mac_out4~DATAOUT4\ & 
-- !\Mult3|auto_generated|op_2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out6~DATAOUT4\,
	datab => \Mult3|auto_generated|mac_out4~DATAOUT4\,
	datad => VCC,
	cin => \Mult3|auto_generated|op_2~7\,
	combout => \Mult3|auto_generated|op_2~8_combout\,
	cout => \Mult3|auto_generated|op_2~9\);

-- Location: LCCOMB_X21_Y9_N12
\Mult3|auto_generated|op_2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_2~10_combout\ = (\Mult3|auto_generated|mac_out6~DATAOUT5\ & ((\Mult3|auto_generated|mac_out4~DATAOUT5\ & (\Mult3|auto_generated|op_2~9\ & VCC)) # (!\Mult3|auto_generated|mac_out4~DATAOUT5\ & (!\Mult3|auto_generated|op_2~9\)))) # 
-- (!\Mult3|auto_generated|mac_out6~DATAOUT5\ & ((\Mult3|auto_generated|mac_out4~DATAOUT5\ & (!\Mult3|auto_generated|op_2~9\)) # (!\Mult3|auto_generated|mac_out4~DATAOUT5\ & ((\Mult3|auto_generated|op_2~9\) # (GND)))))
-- \Mult3|auto_generated|op_2~11\ = CARRY((\Mult3|auto_generated|mac_out6~DATAOUT5\ & (!\Mult3|auto_generated|mac_out4~DATAOUT5\ & !\Mult3|auto_generated|op_2~9\)) # (!\Mult3|auto_generated|mac_out6~DATAOUT5\ & ((!\Mult3|auto_generated|op_2~9\) # 
-- (!\Mult3|auto_generated|mac_out4~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out6~DATAOUT5\,
	datab => \Mult3|auto_generated|mac_out4~DATAOUT5\,
	datad => VCC,
	cin => \Mult3|auto_generated|op_2~9\,
	combout => \Mult3|auto_generated|op_2~10_combout\,
	cout => \Mult3|auto_generated|op_2~11\);

-- Location: LCCOMB_X21_Y9_N14
\Mult3|auto_generated|op_2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_2~12_combout\ = ((\Mult3|auto_generated|mac_out4~DATAOUT6\ $ (\Mult3|auto_generated|mac_out6~DATAOUT6\ $ (!\Mult3|auto_generated|op_2~11\)))) # (GND)
-- \Mult3|auto_generated|op_2~13\ = CARRY((\Mult3|auto_generated|mac_out4~DATAOUT6\ & ((\Mult3|auto_generated|mac_out6~DATAOUT6\) # (!\Mult3|auto_generated|op_2~11\))) # (!\Mult3|auto_generated|mac_out4~DATAOUT6\ & (\Mult3|auto_generated|mac_out6~DATAOUT6\ & 
-- !\Mult3|auto_generated|op_2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out4~DATAOUT6\,
	datab => \Mult3|auto_generated|mac_out6~DATAOUT6\,
	datad => VCC,
	cin => \Mult3|auto_generated|op_2~11\,
	combout => \Mult3|auto_generated|op_2~12_combout\,
	cout => \Mult3|auto_generated|op_2~13\);

-- Location: LCCOMB_X21_Y9_N16
\Mult3|auto_generated|op_2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_2~14_combout\ = (\Mult3|auto_generated|mac_out6~DATAOUT7\ & ((\Mult3|auto_generated|mac_out4~DATAOUT7\ & (\Mult3|auto_generated|op_2~13\ & VCC)) # (!\Mult3|auto_generated|mac_out4~DATAOUT7\ & (!\Mult3|auto_generated|op_2~13\)))) # 
-- (!\Mult3|auto_generated|mac_out6~DATAOUT7\ & ((\Mult3|auto_generated|mac_out4~DATAOUT7\ & (!\Mult3|auto_generated|op_2~13\)) # (!\Mult3|auto_generated|mac_out4~DATAOUT7\ & ((\Mult3|auto_generated|op_2~13\) # (GND)))))
-- \Mult3|auto_generated|op_2~15\ = CARRY((\Mult3|auto_generated|mac_out6~DATAOUT7\ & (!\Mult3|auto_generated|mac_out4~DATAOUT7\ & !\Mult3|auto_generated|op_2~13\)) # (!\Mult3|auto_generated|mac_out6~DATAOUT7\ & ((!\Mult3|auto_generated|op_2~13\) # 
-- (!\Mult3|auto_generated|mac_out4~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out6~DATAOUT7\,
	datab => \Mult3|auto_generated|mac_out4~DATAOUT7\,
	datad => VCC,
	cin => \Mult3|auto_generated|op_2~13\,
	combout => \Mult3|auto_generated|op_2~14_combout\,
	cout => \Mult3|auto_generated|op_2~15\);

-- Location: LCCOMB_X21_Y9_N18
\Mult3|auto_generated|op_2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_2~16_combout\ = ((\Mult3|auto_generated|mac_out6~DATAOUT8\ $ (\Mult3|auto_generated|mac_out4~DATAOUT8\ $ (!\Mult3|auto_generated|op_2~15\)))) # (GND)
-- \Mult3|auto_generated|op_2~17\ = CARRY((\Mult3|auto_generated|mac_out6~DATAOUT8\ & ((\Mult3|auto_generated|mac_out4~DATAOUT8\) # (!\Mult3|auto_generated|op_2~15\))) # (!\Mult3|auto_generated|mac_out6~DATAOUT8\ & (\Mult3|auto_generated|mac_out4~DATAOUT8\ & 
-- !\Mult3|auto_generated|op_2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out6~DATAOUT8\,
	datab => \Mult3|auto_generated|mac_out4~DATAOUT8\,
	datad => VCC,
	cin => \Mult3|auto_generated|op_2~15\,
	combout => \Mult3|auto_generated|op_2~16_combout\,
	cout => \Mult3|auto_generated|op_2~17\);

-- Location: LCCOMB_X21_Y9_N20
\Mult3|auto_generated|op_2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_2~18_combout\ = (\Mult3|auto_generated|mac_out4~DATAOUT9\ & ((\Mult3|auto_generated|mac_out6~DATAOUT9\ & (\Mult3|auto_generated|op_2~17\ & VCC)) # (!\Mult3|auto_generated|mac_out6~DATAOUT9\ & (!\Mult3|auto_generated|op_2~17\)))) # 
-- (!\Mult3|auto_generated|mac_out4~DATAOUT9\ & ((\Mult3|auto_generated|mac_out6~DATAOUT9\ & (!\Mult3|auto_generated|op_2~17\)) # (!\Mult3|auto_generated|mac_out6~DATAOUT9\ & ((\Mult3|auto_generated|op_2~17\) # (GND)))))
-- \Mult3|auto_generated|op_2~19\ = CARRY((\Mult3|auto_generated|mac_out4~DATAOUT9\ & (!\Mult3|auto_generated|mac_out6~DATAOUT9\ & !\Mult3|auto_generated|op_2~17\)) # (!\Mult3|auto_generated|mac_out4~DATAOUT9\ & ((!\Mult3|auto_generated|op_2~17\) # 
-- (!\Mult3|auto_generated|mac_out6~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out4~DATAOUT9\,
	datab => \Mult3|auto_generated|mac_out6~DATAOUT9\,
	datad => VCC,
	cin => \Mult3|auto_generated|op_2~17\,
	combout => \Mult3|auto_generated|op_2~18_combout\,
	cout => \Mult3|auto_generated|op_2~19\);

-- Location: LCCOMB_X21_Y9_N22
\Mult3|auto_generated|op_2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_2~20_combout\ = ((\Mult3|auto_generated|mac_out6~DATAOUT10\ $ (\Mult3|auto_generated|mac_out4~DATAOUT10\ $ (!\Mult3|auto_generated|op_2~19\)))) # (GND)
-- \Mult3|auto_generated|op_2~21\ = CARRY((\Mult3|auto_generated|mac_out6~DATAOUT10\ & ((\Mult3|auto_generated|mac_out4~DATAOUT10\) # (!\Mult3|auto_generated|op_2~19\))) # (!\Mult3|auto_generated|mac_out6~DATAOUT10\ & 
-- (\Mult3|auto_generated|mac_out4~DATAOUT10\ & !\Mult3|auto_generated|op_2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out6~DATAOUT10\,
	datab => \Mult3|auto_generated|mac_out4~DATAOUT10\,
	datad => VCC,
	cin => \Mult3|auto_generated|op_2~19\,
	combout => \Mult3|auto_generated|op_2~20_combout\,
	cout => \Mult3|auto_generated|op_2~21\);

-- Location: LCCOMB_X21_Y9_N24
\Mult3|auto_generated|op_2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_2~22_combout\ = (\Mult3|auto_generated|mac_out4~DATAOUT11\ & ((\Mult3|auto_generated|mac_out6~DATAOUT11\ & (\Mult3|auto_generated|op_2~21\ & VCC)) # (!\Mult3|auto_generated|mac_out6~DATAOUT11\ & 
-- (!\Mult3|auto_generated|op_2~21\)))) # (!\Mult3|auto_generated|mac_out4~DATAOUT11\ & ((\Mult3|auto_generated|mac_out6~DATAOUT11\ & (!\Mult3|auto_generated|op_2~21\)) # (!\Mult3|auto_generated|mac_out6~DATAOUT11\ & ((\Mult3|auto_generated|op_2~21\) # 
-- (GND)))))
-- \Mult3|auto_generated|op_2~23\ = CARRY((\Mult3|auto_generated|mac_out4~DATAOUT11\ & (!\Mult3|auto_generated|mac_out6~DATAOUT11\ & !\Mult3|auto_generated|op_2~21\)) # (!\Mult3|auto_generated|mac_out4~DATAOUT11\ & ((!\Mult3|auto_generated|op_2~21\) # 
-- (!\Mult3|auto_generated|mac_out6~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out4~DATAOUT11\,
	datab => \Mult3|auto_generated|mac_out6~DATAOUT11\,
	datad => VCC,
	cin => \Mult3|auto_generated|op_2~21\,
	combout => \Mult3|auto_generated|op_2~22_combout\,
	cout => \Mult3|auto_generated|op_2~23\);

-- Location: LCCOMB_X21_Y9_N26
\Mult3|auto_generated|op_2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_2~24_combout\ = ((\Mult3|auto_generated|mac_out4~DATAOUT12\ $ (\Mult3|auto_generated|mac_out6~DATAOUT12\ $ (!\Mult3|auto_generated|op_2~23\)))) # (GND)
-- \Mult3|auto_generated|op_2~25\ = CARRY((\Mult3|auto_generated|mac_out4~DATAOUT12\ & ((\Mult3|auto_generated|mac_out6~DATAOUT12\) # (!\Mult3|auto_generated|op_2~23\))) # (!\Mult3|auto_generated|mac_out4~DATAOUT12\ & 
-- (\Mult3|auto_generated|mac_out6~DATAOUT12\ & !\Mult3|auto_generated|op_2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out4~DATAOUT12\,
	datab => \Mult3|auto_generated|mac_out6~DATAOUT12\,
	datad => VCC,
	cin => \Mult3|auto_generated|op_2~23\,
	combout => \Mult3|auto_generated|op_2~24_combout\,
	cout => \Mult3|auto_generated|op_2~25\);

-- Location: LCCOMB_X21_Y9_N28
\Mult3|auto_generated|op_2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_2~26_combout\ = \Mult3|auto_generated|mac_out4~DATAOUT13\ $ (\Mult3|auto_generated|op_2~25\ $ (\Mult3|auto_generated|mac_out6~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult3|auto_generated|mac_out4~DATAOUT13\,
	datad => \Mult3|auto_generated|mac_out6~DATAOUT13\,
	cin => \Mult3|auto_generated|op_2~25\,
	combout => \Mult3|auto_generated|op_2~26_combout\);

-- Location: LCCOMB_X22_Y9_N4
\Mult3|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_1~0_combout\ = (\Mult3|auto_generated|op_2~0_combout\ & (\Mult3|auto_generated|mac_out2~DATAOUT18\ $ (VCC))) # (!\Mult3|auto_generated|op_2~0_combout\ & (\Mult3|auto_generated|mac_out2~DATAOUT18\ & VCC))
-- \Mult3|auto_generated|op_1~1\ = CARRY((\Mult3|auto_generated|op_2~0_combout\ & \Mult3|auto_generated|mac_out2~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|op_2~0_combout\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	combout => \Mult3|auto_generated|op_1~0_combout\,
	cout => \Mult3|auto_generated|op_1~1\);

-- Location: LCCOMB_X22_Y9_N6
\Mult3|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_1~2_combout\ = (\Mult3|auto_generated|mac_out2~DATAOUT19\ & ((\Mult3|auto_generated|op_2~2_combout\ & (\Mult3|auto_generated|op_1~1\ & VCC)) # (!\Mult3|auto_generated|op_2~2_combout\ & (!\Mult3|auto_generated|op_1~1\)))) # 
-- (!\Mult3|auto_generated|mac_out2~DATAOUT19\ & ((\Mult3|auto_generated|op_2~2_combout\ & (!\Mult3|auto_generated|op_1~1\)) # (!\Mult3|auto_generated|op_2~2_combout\ & ((\Mult3|auto_generated|op_1~1\) # (GND)))))
-- \Mult3|auto_generated|op_1~3\ = CARRY((\Mult3|auto_generated|mac_out2~DATAOUT19\ & (!\Mult3|auto_generated|op_2~2_combout\ & !\Mult3|auto_generated|op_1~1\)) # (!\Mult3|auto_generated|mac_out2~DATAOUT19\ & ((!\Mult3|auto_generated|op_1~1\) # 
-- (!\Mult3|auto_generated|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT19\,
	datab => \Mult3|auto_generated|op_2~2_combout\,
	datad => VCC,
	cin => \Mult3|auto_generated|op_1~1\,
	combout => \Mult3|auto_generated|op_1~2_combout\,
	cout => \Mult3|auto_generated|op_1~3\);

-- Location: LCCOMB_X22_Y9_N8
\Mult3|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_1~4_combout\ = ((\Mult3|auto_generated|mac_out2~DATAOUT20\ $ (\Mult3|auto_generated|op_2~4_combout\ $ (!\Mult3|auto_generated|op_1~3\)))) # (GND)
-- \Mult3|auto_generated|op_1~5\ = CARRY((\Mult3|auto_generated|mac_out2~DATAOUT20\ & ((\Mult3|auto_generated|op_2~4_combout\) # (!\Mult3|auto_generated|op_1~3\))) # (!\Mult3|auto_generated|mac_out2~DATAOUT20\ & (\Mult3|auto_generated|op_2~4_combout\ & 
-- !\Mult3|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT20\,
	datab => \Mult3|auto_generated|op_2~4_combout\,
	datad => VCC,
	cin => \Mult3|auto_generated|op_1~3\,
	combout => \Mult3|auto_generated|op_1~4_combout\,
	cout => \Mult3|auto_generated|op_1~5\);

-- Location: LCCOMB_X22_Y9_N10
\Mult3|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_1~6_combout\ = (\Mult3|auto_generated|op_2~6_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT21\ & (\Mult3|auto_generated|op_1~5\ & VCC)) # (!\Mult3|auto_generated|mac_out2~DATAOUT21\ & (!\Mult3|auto_generated|op_1~5\)))) # 
-- (!\Mult3|auto_generated|op_2~6_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT21\ & (!\Mult3|auto_generated|op_1~5\)) # (!\Mult3|auto_generated|mac_out2~DATAOUT21\ & ((\Mult3|auto_generated|op_1~5\) # (GND)))))
-- \Mult3|auto_generated|op_1~7\ = CARRY((\Mult3|auto_generated|op_2~6_combout\ & (!\Mult3|auto_generated|mac_out2~DATAOUT21\ & !\Mult3|auto_generated|op_1~5\)) # (!\Mult3|auto_generated|op_2~6_combout\ & ((!\Mult3|auto_generated|op_1~5\) # 
-- (!\Mult3|auto_generated|mac_out2~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|op_2~6_combout\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \Mult3|auto_generated|op_1~5\,
	combout => \Mult3|auto_generated|op_1~6_combout\,
	cout => \Mult3|auto_generated|op_1~7\);

-- Location: LCCOMB_X22_Y9_N12
\Mult3|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_1~8_combout\ = ((\Mult3|auto_generated|op_2~8_combout\ $ (\Mult3|auto_generated|mac_out2~DATAOUT22\ $ (!\Mult3|auto_generated|op_1~7\)))) # (GND)
-- \Mult3|auto_generated|op_1~9\ = CARRY((\Mult3|auto_generated|op_2~8_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT22\) # (!\Mult3|auto_generated|op_1~7\))) # (!\Mult3|auto_generated|op_2~8_combout\ & (\Mult3|auto_generated|mac_out2~DATAOUT22\ & 
-- !\Mult3|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|op_2~8_combout\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \Mult3|auto_generated|op_1~7\,
	combout => \Mult3|auto_generated|op_1~8_combout\,
	cout => \Mult3|auto_generated|op_1~9\);

-- Location: LCCOMB_X22_Y9_N14
\Mult3|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_1~10_combout\ = (\Mult3|auto_generated|op_2~10_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT23\ & (\Mult3|auto_generated|op_1~9\ & VCC)) # (!\Mult3|auto_generated|mac_out2~DATAOUT23\ & (!\Mult3|auto_generated|op_1~9\)))) # 
-- (!\Mult3|auto_generated|op_2~10_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT23\ & (!\Mult3|auto_generated|op_1~9\)) # (!\Mult3|auto_generated|mac_out2~DATAOUT23\ & ((\Mult3|auto_generated|op_1~9\) # (GND)))))
-- \Mult3|auto_generated|op_1~11\ = CARRY((\Mult3|auto_generated|op_2~10_combout\ & (!\Mult3|auto_generated|mac_out2~DATAOUT23\ & !\Mult3|auto_generated|op_1~9\)) # (!\Mult3|auto_generated|op_2~10_combout\ & ((!\Mult3|auto_generated|op_1~9\) # 
-- (!\Mult3|auto_generated|mac_out2~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|op_2~10_combout\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \Mult3|auto_generated|op_1~9\,
	combout => \Mult3|auto_generated|op_1~10_combout\,
	cout => \Mult3|auto_generated|op_1~11\);

-- Location: LCCOMB_X22_Y9_N16
\Mult3|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_1~12_combout\ = ((\Mult3|auto_generated|op_2~12_combout\ $ (\Mult3|auto_generated|mac_out2~DATAOUT24\ $ (!\Mult3|auto_generated|op_1~11\)))) # (GND)
-- \Mult3|auto_generated|op_1~13\ = CARRY((\Mult3|auto_generated|op_2~12_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT24\) # (!\Mult3|auto_generated|op_1~11\))) # (!\Mult3|auto_generated|op_2~12_combout\ & (\Mult3|auto_generated|mac_out2~DATAOUT24\ & 
-- !\Mult3|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|op_2~12_combout\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \Mult3|auto_generated|op_1~11\,
	combout => \Mult3|auto_generated|op_1~12_combout\,
	cout => \Mult3|auto_generated|op_1~13\);

-- Location: LCCOMB_X22_Y9_N18
\Mult3|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_1~14_combout\ = (\Mult3|auto_generated|op_2~14_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT25\ & (\Mult3|auto_generated|op_1~13\ & VCC)) # (!\Mult3|auto_generated|mac_out2~DATAOUT25\ & (!\Mult3|auto_generated|op_1~13\)))) # 
-- (!\Mult3|auto_generated|op_2~14_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT25\ & (!\Mult3|auto_generated|op_1~13\)) # (!\Mult3|auto_generated|mac_out2~DATAOUT25\ & ((\Mult3|auto_generated|op_1~13\) # (GND)))))
-- \Mult3|auto_generated|op_1~15\ = CARRY((\Mult3|auto_generated|op_2~14_combout\ & (!\Mult3|auto_generated|mac_out2~DATAOUT25\ & !\Mult3|auto_generated|op_1~13\)) # (!\Mult3|auto_generated|op_2~14_combout\ & ((!\Mult3|auto_generated|op_1~13\) # 
-- (!\Mult3|auto_generated|mac_out2~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|op_2~14_combout\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \Mult3|auto_generated|op_1~13\,
	combout => \Mult3|auto_generated|op_1~14_combout\,
	cout => \Mult3|auto_generated|op_1~15\);

-- Location: LCCOMB_X22_Y9_N20
\Mult3|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_1~16_combout\ = ((\Mult3|auto_generated|mac_out2~DATAOUT26\ $ (\Mult3|auto_generated|op_2~16_combout\ $ (!\Mult3|auto_generated|op_1~15\)))) # (GND)
-- \Mult3|auto_generated|op_1~17\ = CARRY((\Mult3|auto_generated|mac_out2~DATAOUT26\ & ((\Mult3|auto_generated|op_2~16_combout\) # (!\Mult3|auto_generated|op_1~15\))) # (!\Mult3|auto_generated|mac_out2~DATAOUT26\ & (\Mult3|auto_generated|op_2~16_combout\ & 
-- !\Mult3|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT26\,
	datab => \Mult3|auto_generated|op_2~16_combout\,
	datad => VCC,
	cin => \Mult3|auto_generated|op_1~15\,
	combout => \Mult3|auto_generated|op_1~16_combout\,
	cout => \Mult3|auto_generated|op_1~17\);

-- Location: LCCOMB_X22_Y9_N22
\Mult3|auto_generated|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_1~18_combout\ = (\Mult3|auto_generated|mac_out2~DATAOUT27\ & ((\Mult3|auto_generated|op_2~18_combout\ & (\Mult3|auto_generated|op_1~17\ & VCC)) # (!\Mult3|auto_generated|op_2~18_combout\ & (!\Mult3|auto_generated|op_1~17\)))) # 
-- (!\Mult3|auto_generated|mac_out2~DATAOUT27\ & ((\Mult3|auto_generated|op_2~18_combout\ & (!\Mult3|auto_generated|op_1~17\)) # (!\Mult3|auto_generated|op_2~18_combout\ & ((\Mult3|auto_generated|op_1~17\) # (GND)))))
-- \Mult3|auto_generated|op_1~19\ = CARRY((\Mult3|auto_generated|mac_out2~DATAOUT27\ & (!\Mult3|auto_generated|op_2~18_combout\ & !\Mult3|auto_generated|op_1~17\)) # (!\Mult3|auto_generated|mac_out2~DATAOUT27\ & ((!\Mult3|auto_generated|op_1~17\) # 
-- (!\Mult3|auto_generated|op_2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT27\,
	datab => \Mult3|auto_generated|op_2~18_combout\,
	datad => VCC,
	cin => \Mult3|auto_generated|op_1~17\,
	combout => \Mult3|auto_generated|op_1~18_combout\,
	cout => \Mult3|auto_generated|op_1~19\);

-- Location: LCCOMB_X22_Y9_N24
\Mult3|auto_generated|op_1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_1~20_combout\ = ((\Mult3|auto_generated|mac_out2~DATAOUT28\ $ (\Mult3|auto_generated|op_2~20_combout\ $ (!\Mult3|auto_generated|op_1~19\)))) # (GND)
-- \Mult3|auto_generated|op_1~21\ = CARRY((\Mult3|auto_generated|mac_out2~DATAOUT28\ & ((\Mult3|auto_generated|op_2~20_combout\) # (!\Mult3|auto_generated|op_1~19\))) # (!\Mult3|auto_generated|mac_out2~DATAOUT28\ & (\Mult3|auto_generated|op_2~20_combout\ & 
-- !\Mult3|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT28\,
	datab => \Mult3|auto_generated|op_2~20_combout\,
	datad => VCC,
	cin => \Mult3|auto_generated|op_1~19\,
	combout => \Mult3|auto_generated|op_1~20_combout\,
	cout => \Mult3|auto_generated|op_1~21\);

-- Location: LCCOMB_X22_Y9_N26
\Mult3|auto_generated|op_1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_1~22_combout\ = (\Mult3|auto_generated|mac_out2~DATAOUT29\ & ((\Mult3|auto_generated|op_2~22_combout\ & (\Mult3|auto_generated|op_1~21\ & VCC)) # (!\Mult3|auto_generated|op_2~22_combout\ & (!\Mult3|auto_generated|op_1~21\)))) # 
-- (!\Mult3|auto_generated|mac_out2~DATAOUT29\ & ((\Mult3|auto_generated|op_2~22_combout\ & (!\Mult3|auto_generated|op_1~21\)) # (!\Mult3|auto_generated|op_2~22_combout\ & ((\Mult3|auto_generated|op_1~21\) # (GND)))))
-- \Mult3|auto_generated|op_1~23\ = CARRY((\Mult3|auto_generated|mac_out2~DATAOUT29\ & (!\Mult3|auto_generated|op_2~22_combout\ & !\Mult3|auto_generated|op_1~21\)) # (!\Mult3|auto_generated|mac_out2~DATAOUT29\ & ((!\Mult3|auto_generated|op_1~21\) # 
-- (!\Mult3|auto_generated|op_2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT29\,
	datab => \Mult3|auto_generated|op_2~22_combout\,
	datad => VCC,
	cin => \Mult3|auto_generated|op_1~21\,
	combout => \Mult3|auto_generated|op_1~22_combout\,
	cout => \Mult3|auto_generated|op_1~23\);

-- Location: LCCOMB_X22_Y9_N28
\Mult3|auto_generated|op_1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_1~24_combout\ = ((\Mult3|auto_generated|op_2~24_combout\ $ (\Mult3|auto_generated|mac_out2~DATAOUT30\ $ (!\Mult3|auto_generated|op_1~23\)))) # (GND)
-- \Mult3|auto_generated|op_1~25\ = CARRY((\Mult3|auto_generated|op_2~24_combout\ & ((\Mult3|auto_generated|mac_out2~DATAOUT30\) # (!\Mult3|auto_generated|op_1~23\))) # (!\Mult3|auto_generated|op_2~24_combout\ & (\Mult3|auto_generated|mac_out2~DATAOUT30\ & 
-- !\Mult3|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|op_2~24_combout\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT30\,
	datad => VCC,
	cin => \Mult3|auto_generated|op_1~23\,
	combout => \Mult3|auto_generated|op_1~24_combout\,
	cout => \Mult3|auto_generated|op_1~25\);

-- Location: LCCOMB_X22_Y9_N30
\Mult3|auto_generated|op_1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_1~26_combout\ = \Mult3|auto_generated|mac_out2~DATAOUT31\ $ (\Mult3|auto_generated|op_1~25\ $ (\Mult3|auto_generated|op_2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT31\,
	datad => \Mult3|auto_generated|op_2~26_combout\,
	cin => \Mult3|auto_generated|op_1~25\,
	combout => \Mult3|auto_generated|op_1~26_combout\);

-- Location: LCCOMB_X23_Y13_N2
\Add6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~1_cout\ = CARRY((\Mult3|auto_generated|w569w\(2) & \Mult2|auto_generated|w569w\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|w569w\(2),
	datab => \Mult2|auto_generated|w569w\(2),
	datad => VCC,
	cout => \Add6~1_cout\);

-- Location: LCCOMB_X23_Y13_N4
\Add6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~3_cout\ = CARRY((\Mult2|auto_generated|w569w\(3) & (!\Mult3|auto_generated|w569w\(3) & !\Add6~1_cout\)) # (!\Mult2|auto_generated|w569w\(3) & ((!\Add6~1_cout\) # (!\Mult3|auto_generated|w569w\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|w569w\(3),
	datab => \Mult3|auto_generated|w569w\(3),
	datad => VCC,
	cin => \Add6~1_cout\,
	cout => \Add6~3_cout\);

-- Location: LCCOMB_X23_Y13_N6
\Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = ((\Mult2|auto_generated|w569w\(4) $ (\Mult3|auto_generated|w569w\(4) $ (!\Add6~3_cout\)))) # (GND)
-- \Add6~5\ = CARRY((\Mult2|auto_generated|w569w\(4) & ((\Mult3|auto_generated|w569w\(4)) # (!\Add6~3_cout\))) # (!\Mult2|auto_generated|w569w\(4) & (\Mult3|auto_generated|w569w\(4) & !\Add6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|w569w\(4),
	datab => \Mult3|auto_generated|w569w\(4),
	datad => VCC,
	cin => \Add6~3_cout\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X23_Y13_N8
\Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (\Mult3|auto_generated|w569w\(5) & ((\Mult2|auto_generated|w569w\(5) & (\Add6~5\ & VCC)) # (!\Mult2|auto_generated|w569w\(5) & (!\Add6~5\)))) # (!\Mult3|auto_generated|w569w\(5) & ((\Mult2|auto_generated|w569w\(5) & (!\Add6~5\)) # 
-- (!\Mult2|auto_generated|w569w\(5) & ((\Add6~5\) # (GND)))))
-- \Add6~7\ = CARRY((\Mult3|auto_generated|w569w\(5) & (!\Mult2|auto_generated|w569w\(5) & !\Add6~5\)) # (!\Mult3|auto_generated|w569w\(5) & ((!\Add6~5\) # (!\Mult2|auto_generated|w569w\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|w569w\(5),
	datab => \Mult2|auto_generated|w569w\(5),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X23_Y13_N10
\Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = ((\Mult2|auto_generated|w569w\(6) $ (\Mult3|auto_generated|w569w\(6) $ (!\Add6~7\)))) # (GND)
-- \Add6~9\ = CARRY((\Mult2|auto_generated|w569w\(6) & ((\Mult3|auto_generated|w569w\(6)) # (!\Add6~7\))) # (!\Mult2|auto_generated|w569w\(6) & (\Mult3|auto_generated|w569w\(6) & !\Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|w569w\(6),
	datab => \Mult3|auto_generated|w569w\(6),
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X23_Y13_N12
\Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (\Mult2|auto_generated|w569w\(7) & ((\Mult3|auto_generated|w569w\(7) & (\Add6~9\ & VCC)) # (!\Mult3|auto_generated|w569w\(7) & (!\Add6~9\)))) # (!\Mult2|auto_generated|w569w\(7) & ((\Mult3|auto_generated|w569w\(7) & (!\Add6~9\)) # 
-- (!\Mult3|auto_generated|w569w\(7) & ((\Add6~9\) # (GND)))))
-- \Add6~11\ = CARRY((\Mult2|auto_generated|w569w\(7) & (!\Mult3|auto_generated|w569w\(7) & !\Add6~9\)) # (!\Mult2|auto_generated|w569w\(7) & ((!\Add6~9\) # (!\Mult3|auto_generated|w569w\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|w569w\(7),
	datab => \Mult3|auto_generated|w569w\(7),
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X23_Y13_N14
\Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = ((\Mult3|auto_generated|w569w\(8) $ (\Mult2|auto_generated|w569w\(8) $ (!\Add6~11\)))) # (GND)
-- \Add6~13\ = CARRY((\Mult3|auto_generated|w569w\(8) & ((\Mult2|auto_generated|w569w\(8)) # (!\Add6~11\))) # (!\Mult3|auto_generated|w569w\(8) & (\Mult2|auto_generated|w569w\(8) & !\Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|w569w\(8),
	datab => \Mult2|auto_generated|w569w\(8),
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: LCCOMB_X23_Y13_N16
\Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (\Mult2|auto_generated|w569w\(9) & ((\Mult3|auto_generated|w569w\(9) & (\Add6~13\ & VCC)) # (!\Mult3|auto_generated|w569w\(9) & (!\Add6~13\)))) # (!\Mult2|auto_generated|w569w\(9) & ((\Mult3|auto_generated|w569w\(9) & (!\Add6~13\)) # 
-- (!\Mult3|auto_generated|w569w\(9) & ((\Add6~13\) # (GND)))))
-- \Add6~15\ = CARRY((\Mult2|auto_generated|w569w\(9) & (!\Mult3|auto_generated|w569w\(9) & !\Add6~13\)) # (!\Mult2|auto_generated|w569w\(9) & ((!\Add6~13\) # (!\Mult3|auto_generated|w569w\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|w569w\(9),
	datab => \Mult3|auto_generated|w569w\(9),
	datad => VCC,
	cin => \Add6~13\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

-- Location: LCCOMB_X23_Y13_N18
\Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = ((\Mult3|auto_generated|w569w\(10) $ (\Mult2|auto_generated|w569w\(10) $ (!\Add6~15\)))) # (GND)
-- \Add6~17\ = CARRY((\Mult3|auto_generated|w569w\(10) & ((\Mult2|auto_generated|w569w\(10)) # (!\Add6~15\))) # (!\Mult3|auto_generated|w569w\(10) & (\Mult2|auto_generated|w569w\(10) & !\Add6~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|w569w\(10),
	datab => \Mult2|auto_generated|w569w\(10),
	datad => VCC,
	cin => \Add6~15\,
	combout => \Add6~16_combout\,
	cout => \Add6~17\);

-- Location: LCCOMB_X23_Y13_N20
\Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~18_combout\ = (\Mult3|auto_generated|w569w\(11) & ((\Mult2|auto_generated|w569w\(11) & (\Add6~17\ & VCC)) # (!\Mult2|auto_generated|w569w\(11) & (!\Add6~17\)))) # (!\Mult3|auto_generated|w569w\(11) & ((\Mult2|auto_generated|w569w\(11) & 
-- (!\Add6~17\)) # (!\Mult2|auto_generated|w569w\(11) & ((\Add6~17\) # (GND)))))
-- \Add6~19\ = CARRY((\Mult3|auto_generated|w569w\(11) & (!\Mult2|auto_generated|w569w\(11) & !\Add6~17\)) # (!\Mult3|auto_generated|w569w\(11) & ((!\Add6~17\) # (!\Mult2|auto_generated|w569w\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|w569w\(11),
	datab => \Mult2|auto_generated|w569w\(11),
	datad => VCC,
	cin => \Add6~17\,
	combout => \Add6~18_combout\,
	cout => \Add6~19\);

-- Location: LCCOMB_X23_Y13_N22
\Add6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~20_combout\ = ((\Mult2|auto_generated|w569w\(12) $ (\Mult3|auto_generated|w569w\(12) $ (!\Add6~19\)))) # (GND)
-- \Add6~21\ = CARRY((\Mult2|auto_generated|w569w\(12) & ((\Mult3|auto_generated|w569w\(12)) # (!\Add6~19\))) # (!\Mult2|auto_generated|w569w\(12) & (\Mult3|auto_generated|w569w\(12) & !\Add6~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|w569w\(12),
	datab => \Mult3|auto_generated|w569w\(12),
	datad => VCC,
	cin => \Add6~19\,
	combout => \Add6~20_combout\,
	cout => \Add6~21\);

-- Location: LCCOMB_X23_Y13_N24
\Add6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~22_combout\ = (\Mult3|auto_generated|w569w\(13) & ((\Mult2|auto_generated|w569w\(13) & (\Add6~21\ & VCC)) # (!\Mult2|auto_generated|w569w\(13) & (!\Add6~21\)))) # (!\Mult3|auto_generated|w569w\(13) & ((\Mult2|auto_generated|w569w\(13) & 
-- (!\Add6~21\)) # (!\Mult2|auto_generated|w569w\(13) & ((\Add6~21\) # (GND)))))
-- \Add6~23\ = CARRY((\Mult3|auto_generated|w569w\(13) & (!\Mult2|auto_generated|w569w\(13) & !\Add6~21\)) # (!\Mult3|auto_generated|w569w\(13) & ((!\Add6~21\) # (!\Mult2|auto_generated|w569w\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|w569w\(13),
	datab => \Mult2|auto_generated|w569w\(13),
	datad => VCC,
	cin => \Add6~21\,
	combout => \Add6~22_combout\,
	cout => \Add6~23\);

-- Location: LCCOMB_X23_Y13_N26
\Add6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~24_combout\ = ((\Mult3|auto_generated|w569w\(14) $ (\Mult2|auto_generated|w569w\(14) $ (!\Add6~23\)))) # (GND)
-- \Add6~25\ = CARRY((\Mult3|auto_generated|w569w\(14) & ((\Mult2|auto_generated|w569w\(14)) # (!\Add6~23\))) # (!\Mult3|auto_generated|w569w\(14) & (\Mult2|auto_generated|w569w\(14) & !\Add6~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|w569w\(14),
	datab => \Mult2|auto_generated|w569w\(14),
	datad => VCC,
	cin => \Add6~23\,
	combout => \Add6~24_combout\,
	cout => \Add6~25\);

-- Location: LCCOMB_X23_Y13_N28
\Add6~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~26_combout\ = (\Mult2|auto_generated|w569w\(15) & ((\Mult3|auto_generated|w569w\(15) & (\Add6~25\ & VCC)) # (!\Mult3|auto_generated|w569w\(15) & (!\Add6~25\)))) # (!\Mult2|auto_generated|w569w\(15) & ((\Mult3|auto_generated|w569w\(15) & 
-- (!\Add6~25\)) # (!\Mult3|auto_generated|w569w\(15) & ((\Add6~25\) # (GND)))))
-- \Add6~27\ = CARRY((\Mult2|auto_generated|w569w\(15) & (!\Mult3|auto_generated|w569w\(15) & !\Add6~25\)) # (!\Mult2|auto_generated|w569w\(15) & ((!\Add6~25\) # (!\Mult3|auto_generated|w569w\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|w569w\(15),
	datab => \Mult3|auto_generated|w569w\(15),
	datad => VCC,
	cin => \Add6~25\,
	combout => \Add6~26_combout\,
	cout => \Add6~27\);

-- Location: LCCOMB_X23_Y13_N30
\Add6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~28_combout\ = ((\Mult2|auto_generated|w569w\(16) $ (\Mult3|auto_generated|w569w\(16) $ (!\Add6~27\)))) # (GND)
-- \Add6~29\ = CARRY((\Mult2|auto_generated|w569w\(16) & ((\Mult3|auto_generated|w569w\(16)) # (!\Add6~27\))) # (!\Mult2|auto_generated|w569w\(16) & (\Mult3|auto_generated|w569w\(16) & !\Add6~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|w569w\(16),
	datab => \Mult3|auto_generated|w569w\(16),
	datad => VCC,
	cin => \Add6~27\,
	combout => \Add6~28_combout\,
	cout => \Add6~29\);

-- Location: LCCOMB_X23_Y12_N0
\Add6~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~30_combout\ = (\Mult2|auto_generated|w569w\(17) & ((\Mult3|auto_generated|w569w\(17) & (\Add6~29\ & VCC)) # (!\Mult3|auto_generated|w569w\(17) & (!\Add6~29\)))) # (!\Mult2|auto_generated|w569w\(17) & ((\Mult3|auto_generated|w569w\(17) & 
-- (!\Add6~29\)) # (!\Mult3|auto_generated|w569w\(17) & ((\Add6~29\) # (GND)))))
-- \Add6~31\ = CARRY((\Mult2|auto_generated|w569w\(17) & (!\Mult3|auto_generated|w569w\(17) & !\Add6~29\)) # (!\Mult2|auto_generated|w569w\(17) & ((!\Add6~29\) # (!\Mult3|auto_generated|w569w\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|w569w\(17),
	datab => \Mult3|auto_generated|w569w\(17),
	datad => VCC,
	cin => \Add6~29\,
	combout => \Add6~30_combout\,
	cout => \Add6~31\);

-- Location: LCCOMB_X23_Y12_N2
\Add6~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~32_combout\ = ((\Mult3|auto_generated|op_1~0_combout\ $ (\Mult2|auto_generated|op_1~0_combout\ $ (!\Add6~31\)))) # (GND)
-- \Add6~33\ = CARRY((\Mult3|auto_generated|op_1~0_combout\ & ((\Mult2|auto_generated|op_1~0_combout\) # (!\Add6~31\))) # (!\Mult3|auto_generated|op_1~0_combout\ & (\Mult2|auto_generated|op_1~0_combout\ & !\Add6~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|op_1~0_combout\,
	datab => \Mult2|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Add6~31\,
	combout => \Add6~32_combout\,
	cout => \Add6~33\);

-- Location: LCCOMB_X23_Y12_N4
\Add6~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~34_combout\ = (\Mult2|auto_generated|op_1~2_combout\ & ((\Mult3|auto_generated|op_1~2_combout\ & (\Add6~33\ & VCC)) # (!\Mult3|auto_generated|op_1~2_combout\ & (!\Add6~33\)))) # (!\Mult2|auto_generated|op_1~2_combout\ & 
-- ((\Mult3|auto_generated|op_1~2_combout\ & (!\Add6~33\)) # (!\Mult3|auto_generated|op_1~2_combout\ & ((\Add6~33\) # (GND)))))
-- \Add6~35\ = CARRY((\Mult2|auto_generated|op_1~2_combout\ & (!\Mult3|auto_generated|op_1~2_combout\ & !\Add6~33\)) # (!\Mult2|auto_generated|op_1~2_combout\ & ((!\Add6~33\) # (!\Mult3|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|op_1~2_combout\,
	datab => \Mult3|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \Add6~33\,
	combout => \Add6~34_combout\,
	cout => \Add6~35\);

-- Location: LCCOMB_X23_Y12_N6
\Add6~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~36_combout\ = ((\Mult3|auto_generated|op_1~4_combout\ $ (\Mult2|auto_generated|op_1~4_combout\ $ (!\Add6~35\)))) # (GND)
-- \Add6~37\ = CARRY((\Mult3|auto_generated|op_1~4_combout\ & ((\Mult2|auto_generated|op_1~4_combout\) # (!\Add6~35\))) # (!\Mult3|auto_generated|op_1~4_combout\ & (\Mult2|auto_generated|op_1~4_combout\ & !\Add6~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|op_1~4_combout\,
	datab => \Mult2|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \Add6~35\,
	combout => \Add6~36_combout\,
	cout => \Add6~37\);

-- Location: LCCOMB_X23_Y12_N8
\Add6~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~38_combout\ = (\Mult3|auto_generated|op_1~6_combout\ & ((\Mult2|auto_generated|op_1~6_combout\ & (\Add6~37\ & VCC)) # (!\Mult2|auto_generated|op_1~6_combout\ & (!\Add6~37\)))) # (!\Mult3|auto_generated|op_1~6_combout\ & 
-- ((\Mult2|auto_generated|op_1~6_combout\ & (!\Add6~37\)) # (!\Mult2|auto_generated|op_1~6_combout\ & ((\Add6~37\) # (GND)))))
-- \Add6~39\ = CARRY((\Mult3|auto_generated|op_1~6_combout\ & (!\Mult2|auto_generated|op_1~6_combout\ & !\Add6~37\)) # (!\Mult3|auto_generated|op_1~6_combout\ & ((!\Add6~37\) # (!\Mult2|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|op_1~6_combout\,
	datab => \Mult2|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \Add6~37\,
	combout => \Add6~38_combout\,
	cout => \Add6~39\);

-- Location: LCCOMB_X23_Y12_N10
\Add6~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~40_combout\ = ((\Mult2|auto_generated|op_1~8_combout\ $ (\Mult3|auto_generated|op_1~8_combout\ $ (!\Add6~39\)))) # (GND)
-- \Add6~41\ = CARRY((\Mult2|auto_generated|op_1~8_combout\ & ((\Mult3|auto_generated|op_1~8_combout\) # (!\Add6~39\))) # (!\Mult2|auto_generated|op_1~8_combout\ & (\Mult3|auto_generated|op_1~8_combout\ & !\Add6~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|op_1~8_combout\,
	datab => \Mult3|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \Add6~39\,
	combout => \Add6~40_combout\,
	cout => \Add6~41\);

-- Location: LCCOMB_X23_Y12_N12
\Add6~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~42_combout\ = (\Mult3|auto_generated|op_1~10_combout\ & ((\Mult2|auto_generated|op_1~10_combout\ & (\Add6~41\ & VCC)) # (!\Mult2|auto_generated|op_1~10_combout\ & (!\Add6~41\)))) # (!\Mult3|auto_generated|op_1~10_combout\ & 
-- ((\Mult2|auto_generated|op_1~10_combout\ & (!\Add6~41\)) # (!\Mult2|auto_generated|op_1~10_combout\ & ((\Add6~41\) # (GND)))))
-- \Add6~43\ = CARRY((\Mult3|auto_generated|op_1~10_combout\ & (!\Mult2|auto_generated|op_1~10_combout\ & !\Add6~41\)) # (!\Mult3|auto_generated|op_1~10_combout\ & ((!\Add6~41\) # (!\Mult2|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|op_1~10_combout\,
	datab => \Mult2|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \Add6~41\,
	combout => \Add6~42_combout\,
	cout => \Add6~43\);

-- Location: LCCOMB_X23_Y12_N14
\Add6~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~44_combout\ = ((\Mult3|auto_generated|op_1~12_combout\ $ (\Mult2|auto_generated|op_1~12_combout\ $ (!\Add6~43\)))) # (GND)
-- \Add6~45\ = CARRY((\Mult3|auto_generated|op_1~12_combout\ & ((\Mult2|auto_generated|op_1~12_combout\) # (!\Add6~43\))) # (!\Mult3|auto_generated|op_1~12_combout\ & (\Mult2|auto_generated|op_1~12_combout\ & !\Add6~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|op_1~12_combout\,
	datab => \Mult2|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \Add6~43\,
	combout => \Add6~44_combout\,
	cout => \Add6~45\);

-- Location: LCCOMB_X23_Y12_N16
\Add6~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~46_combout\ = (\Mult2|auto_generated|op_1~14_combout\ & ((\Mult3|auto_generated|op_1~14_combout\ & (\Add6~45\ & VCC)) # (!\Mult3|auto_generated|op_1~14_combout\ & (!\Add6~45\)))) # (!\Mult2|auto_generated|op_1~14_combout\ & 
-- ((\Mult3|auto_generated|op_1~14_combout\ & (!\Add6~45\)) # (!\Mult3|auto_generated|op_1~14_combout\ & ((\Add6~45\) # (GND)))))
-- \Add6~47\ = CARRY((\Mult2|auto_generated|op_1~14_combout\ & (!\Mult3|auto_generated|op_1~14_combout\ & !\Add6~45\)) # (!\Mult2|auto_generated|op_1~14_combout\ & ((!\Add6~45\) # (!\Mult3|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|op_1~14_combout\,
	datab => \Mult3|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \Add6~45\,
	combout => \Add6~46_combout\,
	cout => \Add6~47\);

-- Location: LCCOMB_X23_Y12_N18
\Add6~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~48_combout\ = ((\Mult2|auto_generated|op_1~16_combout\ $ (\Mult3|auto_generated|op_1~16_combout\ $ (!\Add6~47\)))) # (GND)
-- \Add6~49\ = CARRY((\Mult2|auto_generated|op_1~16_combout\ & ((\Mult3|auto_generated|op_1~16_combout\) # (!\Add6~47\))) # (!\Mult2|auto_generated|op_1~16_combout\ & (\Mult3|auto_generated|op_1~16_combout\ & !\Add6~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|op_1~16_combout\,
	datab => \Mult3|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \Add6~47\,
	combout => \Add6~48_combout\,
	cout => \Add6~49\);

-- Location: LCCOMB_X23_Y12_N20
\Add6~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~50_combout\ = (\Mult2|auto_generated|op_1~18_combout\ & ((\Mult3|auto_generated|op_1~18_combout\ & (\Add6~49\ & VCC)) # (!\Mult3|auto_generated|op_1~18_combout\ & (!\Add6~49\)))) # (!\Mult2|auto_generated|op_1~18_combout\ & 
-- ((\Mult3|auto_generated|op_1~18_combout\ & (!\Add6~49\)) # (!\Mult3|auto_generated|op_1~18_combout\ & ((\Add6~49\) # (GND)))))
-- \Add6~51\ = CARRY((\Mult2|auto_generated|op_1~18_combout\ & (!\Mult3|auto_generated|op_1~18_combout\ & !\Add6~49\)) # (!\Mult2|auto_generated|op_1~18_combout\ & ((!\Add6~49\) # (!\Mult3|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|op_1~18_combout\,
	datab => \Mult3|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \Add6~49\,
	combout => \Add6~50_combout\,
	cout => \Add6~51\);

-- Location: LCCOMB_X23_Y12_N22
\Add6~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~52_combout\ = ((\Mult3|auto_generated|op_1~20_combout\ $ (\Mult2|auto_generated|op_1~20_combout\ $ (!\Add6~51\)))) # (GND)
-- \Add6~53\ = CARRY((\Mult3|auto_generated|op_1~20_combout\ & ((\Mult2|auto_generated|op_1~20_combout\) # (!\Add6~51\))) # (!\Mult3|auto_generated|op_1~20_combout\ & (\Mult2|auto_generated|op_1~20_combout\ & !\Add6~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|op_1~20_combout\,
	datab => \Mult2|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \Add6~51\,
	combout => \Add6~52_combout\,
	cout => \Add6~53\);

-- Location: LCCOMB_X23_Y12_N24
\Add6~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~54_combout\ = (\Mult3|auto_generated|op_1~22_combout\ & ((\Mult2|auto_generated|op_1~22_combout\ & (\Add6~53\ & VCC)) # (!\Mult2|auto_generated|op_1~22_combout\ & (!\Add6~53\)))) # (!\Mult3|auto_generated|op_1~22_combout\ & 
-- ((\Mult2|auto_generated|op_1~22_combout\ & (!\Add6~53\)) # (!\Mult2|auto_generated|op_1~22_combout\ & ((\Add6~53\) # (GND)))))
-- \Add6~55\ = CARRY((\Mult3|auto_generated|op_1~22_combout\ & (!\Mult2|auto_generated|op_1~22_combout\ & !\Add6~53\)) # (!\Mult3|auto_generated|op_1~22_combout\ & ((!\Add6~53\) # (!\Mult2|auto_generated|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|op_1~22_combout\,
	datab => \Mult2|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \Add6~53\,
	combout => \Add6~54_combout\,
	cout => \Add6~55\);

-- Location: LCCOMB_X23_Y12_N26
\Add6~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~56_combout\ = ((\Mult2|auto_generated|op_1~24_combout\ $ (\Mult3|auto_generated|op_1~24_combout\ $ (!\Add6~55\)))) # (GND)
-- \Add6~57\ = CARRY((\Mult2|auto_generated|op_1~24_combout\ & ((\Mult3|auto_generated|op_1~24_combout\) # (!\Add6~55\))) # (!\Mult2|auto_generated|op_1~24_combout\ & (\Mult3|auto_generated|op_1~24_combout\ & !\Add6~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|op_1~24_combout\,
	datab => \Mult3|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \Add6~55\,
	combout => \Add6~56_combout\,
	cout => \Add6~57\);

-- Location: LCCOMB_X23_Y12_N28
\Add6~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~58_combout\ = \Mult2|auto_generated|op_1~26_combout\ $ (\Add6~57\ $ (\Mult3|auto_generated|op_1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|op_1~26_combout\,
	datad => \Mult3|auto_generated|op_1~26_combout\,
	cin => \Add6~57\,
	combout => \Add6~58_combout\);

-- Location: LCCOMB_X19_Y20_N2
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = hPos(1) $ (VCC)
-- \Add7~1\ = CARRY(hPos(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hPos(1),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X19_Y20_N4
\Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (hPos(2) & (!\Add7~1\)) # (!hPos(2) & ((\Add7~1\) # (GND)))
-- \Add7~3\ = CARRY((!\Add7~1\) # (!hPos(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(2),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X19_Y20_N6
\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (hPos(3) & (\Add7~3\ $ (GND))) # (!hPos(3) & (!\Add7~3\ & VCC))
-- \Add7~5\ = CARRY((hPos(3) & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(3),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X19_Y20_N8
\Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (hPos(4) & (\Add7~5\ & VCC)) # (!hPos(4) & (!\Add7~5\))
-- \Add7~7\ = CARRY((!hPos(4) & !\Add7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(4),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X19_Y20_N10
\Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (hPos(5) & ((GND) # (!\Add7~7\))) # (!hPos(5) & (\Add7~7\ $ (GND)))
-- \Add7~9\ = CARRY((hPos(5)) # (!\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(5),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X19_Y20_N12
\Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (hPos(6) & (\Add7~9\ & VCC)) # (!hPos(6) & (!\Add7~9\))
-- \Add7~11\ = CARRY((!hPos(6) & !\Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(6),
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X19_Y20_N14
\Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (hPos(7) & (\Add7~11\ $ (GND))) # (!hPos(7) & (!\Add7~11\ & VCC))
-- \Add7~13\ = CARRY((hPos(7) & !\Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(7),
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X19_Y20_N16
\Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (hPos(8) & (\Add7~13\ & VCC)) # (!hPos(8) & (!\Add7~13\))
-- \Add7~15\ = CARRY((!hPos(8) & !\Add7~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(8),
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: LCCOMB_X19_Y20_N18
\Add7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = (hPos(9) & ((GND) # (!\Add7~15\))) # (!hPos(9) & (\Add7~15\ $ (GND)))
-- \Add7~17\ = CARRY((hPos(9)) # (!\Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(9),
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~16_combout\,
	cout => \Add7~17\);

-- Location: LCCOMB_X19_Y20_N20
\Add7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = (hPos(10) & (\Add7~17\ & VCC)) # (!hPos(10) & (!\Add7~17\))
-- \Add7~19\ = CARRY((!hPos(10) & !\Add7~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(10),
	datad => VCC,
	cin => \Add7~17\,
	combout => \Add7~18_combout\,
	cout => \Add7~19\);

-- Location: LCCOMB_X19_Y20_N22
\Add7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~20_combout\ = (hPos(11) & ((GND) # (!\Add7~19\))) # (!hPos(11) & (\Add7~19\ $ (GND)))
-- \Add7~21\ = CARRY((hPos(11)) # (!\Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(11),
	datad => VCC,
	cin => \Add7~19\,
	combout => \Add7~20_combout\,
	cout => \Add7~21\);

-- Location: LCCOMB_X19_Y20_N24
\Add7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~22_combout\ = (hPos(12) & (\Add7~21\ & VCC)) # (!hPos(12) & (!\Add7~21\))
-- \Add7~23\ = CARRY((!hPos(12) & !\Add7~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(12),
	datad => VCC,
	cin => \Add7~21\,
	combout => \Add7~22_combout\,
	cout => \Add7~23\);

-- Location: LCCOMB_X19_Y20_N26
\Add7~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~24_combout\ = (hPos(13) & ((GND) # (!\Add7~23\))) # (!hPos(13) & (\Add7~23\ $ (GND)))
-- \Add7~25\ = CARRY((hPos(13)) # (!\Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(13),
	datad => VCC,
	cin => \Add7~23\,
	combout => \Add7~24_combout\,
	cout => \Add7~25\);

-- Location: LCCOMB_X19_Y20_N28
\Add7~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~26_combout\ = (hPos(14) & (\Add7~25\ & VCC)) # (!hPos(14) & (!\Add7~25\))
-- \Add7~27\ = CARRY((!hPos(14) & !\Add7~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(14),
	datad => VCC,
	cin => \Add7~25\,
	combout => \Add7~26_combout\,
	cout => \Add7~27\);

-- Location: LCCOMB_X19_Y20_N30
\Add7~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~28_combout\ = (hPos(15) & ((GND) # (!\Add7~27\))) # (!hPos(15) & (\Add7~27\ $ (GND)))
-- \Add7~29\ = CARRY((hPos(15)) # (!\Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(15),
	datad => VCC,
	cin => \Add7~27\,
	combout => \Add7~28_combout\,
	cout => \Add7~29\);

-- Location: LCCOMB_X19_Y19_N0
\Add7~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~30_combout\ = (hPos(16) & (\Add7~29\ & VCC)) # (!hPos(16) & (!\Add7~29\))
-- \Add7~31\ = CARRY((!hPos(16) & !\Add7~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(16),
	datad => VCC,
	cin => \Add7~29\,
	combout => \Add7~30_combout\,
	cout => \Add7~31\);

-- Location: LCCOMB_X19_Y19_N2
\Add7~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~32_combout\ = (hPos(17) & ((GND) # (!\Add7~31\))) # (!hPos(17) & (\Add7~31\ $ (GND)))
-- \Add7~33\ = CARRY((hPos(17)) # (!\Add7~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(17),
	datad => VCC,
	cin => \Add7~31\,
	combout => \Add7~32_combout\,
	cout => \Add7~33\);

-- Location: DSPMULT_X20_Y20_N0
\Mult4|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Mult4|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult4|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult4|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y20_N2
\Mult4|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult4|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X19_Y19_N4
\Add7~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~34_combout\ = (hPos(18) & (\Add7~33\ & VCC)) # (!hPos(18) & (!\Add7~33\))
-- \Add7~35\ = CARRY((!hPos(18) & !\Add7~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(18),
	datad => VCC,
	cin => \Add7~33\,
	combout => \Add7~34_combout\,
	cout => \Add7~35\);

-- Location: LCCOMB_X19_Y19_N6
\Add7~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~36_combout\ = (hPos(19) & ((GND) # (!\Add7~35\))) # (!hPos(19) & (\Add7~35\ $ (GND)))
-- \Add7~37\ = CARRY((hPos(19)) # (!\Add7~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(19),
	datad => VCC,
	cin => \Add7~35\,
	combout => \Add7~36_combout\,
	cout => \Add7~37\);

-- Location: LCCOMB_X19_Y19_N8
\Add7~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~38_combout\ = (hPos(20) & (\Add7~37\ & VCC)) # (!hPos(20) & (!\Add7~37\))
-- \Add7~39\ = CARRY((!hPos(20) & !\Add7~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(20),
	datad => VCC,
	cin => \Add7~37\,
	combout => \Add7~38_combout\,
	cout => \Add7~39\);

-- Location: LCCOMB_X19_Y19_N10
\Add7~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~40_combout\ = (hPos(21) & ((GND) # (!\Add7~39\))) # (!hPos(21) & (\Add7~39\ $ (GND)))
-- \Add7~41\ = CARRY((hPos(21)) # (!\Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(21),
	datad => VCC,
	cin => \Add7~39\,
	combout => \Add7~40_combout\,
	cout => \Add7~41\);

-- Location: LCCOMB_X19_Y19_N12
\Add7~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~42_combout\ = (hPos(22) & (\Add7~41\ & VCC)) # (!hPos(22) & (!\Add7~41\))
-- \Add7~43\ = CARRY((!hPos(22) & !\Add7~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(22),
	datad => VCC,
	cin => \Add7~41\,
	combout => \Add7~42_combout\,
	cout => \Add7~43\);

-- Location: LCCOMB_X19_Y19_N14
\Add7~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~44_combout\ = (hPos(23) & ((GND) # (!\Add7~43\))) # (!hPos(23) & (\Add7~43\ $ (GND)))
-- \Add7~45\ = CARRY((hPos(23)) # (!\Add7~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(23),
	datad => VCC,
	cin => \Add7~43\,
	combout => \Add7~44_combout\,
	cout => \Add7~45\);

-- Location: LCCOMB_X19_Y19_N16
\Add7~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~46_combout\ = (hPos(24) & (\Add7~45\ & VCC)) # (!hPos(24) & (!\Add7~45\))
-- \Add7~47\ = CARRY((!hPos(24) & !\Add7~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(24),
	datad => VCC,
	cin => \Add7~45\,
	combout => \Add7~46_combout\,
	cout => \Add7~47\);

-- Location: LCCOMB_X19_Y19_N18
\Add7~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~48_combout\ = (hPos(25) & ((GND) # (!\Add7~47\))) # (!hPos(25) & (\Add7~47\ $ (GND)))
-- \Add7~49\ = CARRY((hPos(25)) # (!\Add7~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(25),
	datad => VCC,
	cin => \Add7~47\,
	combout => \Add7~48_combout\,
	cout => \Add7~49\);

-- Location: LCCOMB_X19_Y19_N20
\Add7~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~50_combout\ = (hPos(26) & (\Add7~49\ & VCC)) # (!hPos(26) & (!\Add7~49\))
-- \Add7~51\ = CARRY((!hPos(26) & !\Add7~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(26),
	datad => VCC,
	cin => \Add7~49\,
	combout => \Add7~50_combout\,
	cout => \Add7~51\);

-- Location: LCCOMB_X19_Y19_N22
\Add7~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~52_combout\ = (hPos(27) & ((GND) # (!\Add7~51\))) # (!hPos(27) & (\Add7~51\ $ (GND)))
-- \Add7~53\ = CARRY((hPos(27)) # (!\Add7~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(27),
	datad => VCC,
	cin => \Add7~51\,
	combout => \Add7~52_combout\,
	cout => \Add7~53\);

-- Location: LCCOMB_X19_Y19_N24
\Add7~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~54_combout\ = (hPos(28) & (\Add7~53\ & VCC)) # (!hPos(28) & (!\Add7~53\))
-- \Add7~55\ = CARRY((!hPos(28) & !\Add7~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(28),
	datad => VCC,
	cin => \Add7~53\,
	combout => \Add7~54_combout\,
	cout => \Add7~55\);

-- Location: LCCOMB_X19_Y19_N26
\Add7~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~56_combout\ = (hPos(29) & ((GND) # (!\Add7~55\))) # (!hPos(29) & (\Add7~55\ $ (GND)))
-- \Add7~57\ = CARRY((hPos(29)) # (!\Add7~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hPos(29),
	datad => VCC,
	cin => \Add7~55\,
	combout => \Add7~56_combout\,
	cout => \Add7~57\);

-- Location: LCCOMB_X19_Y19_N28
\Add7~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~58_combout\ = (hPos(30) & (\Add7~57\ & VCC)) # (!hPos(30) & (!\Add7~57\))
-- \Add7~59\ = CARRY((!hPos(30) & !\Add7~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hPos(30),
	datad => VCC,
	cin => \Add7~57\,
	combout => \Add7~58_combout\,
	cout => \Add7~59\);

-- Location: LCCOMB_X19_Y19_N30
\Add7~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~60_combout\ = \Add7~59\ $ (hPos(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => hPos(31),
	cin => \Add7~59\,
	combout => \Add7~60_combout\);

-- Location: DSPMULT_X20_Y18_N0
\Mult4|auto_generated|mac_mult3\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	dataa => \Mult4|auto_generated|mac_mult3_DATAA_bus\,
	datab => \Mult4|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult4|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y18_N2
\Mult4|auto_generated|mac_out4\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult4|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: DSPMULT_X20_Y19_N0
\Mult4|auto_generated|mac_mult5\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	dataa => \Mult4|auto_generated|mac_mult5_DATAA_bus\,
	datab => \Mult4|auto_generated|mac_mult5_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult4|auto_generated|mac_mult5_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y19_N2
\Mult4|auto_generated|mac_out6\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out6_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult4|auto_generated|mac_out6_DATAOUT_bus\);

-- Location: LCCOMB_X21_Y18_N0
\Mult4|auto_generated|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_2~0_combout\ = (\Mult4|auto_generated|mac_out6~dataout\ & (\Mult4|auto_generated|mac_out4~dataout\ $ (VCC))) # (!\Mult4|auto_generated|mac_out6~dataout\ & (\Mult4|auto_generated|mac_out4~dataout\ & VCC))
-- \Mult4|auto_generated|op_2~1\ = CARRY((\Mult4|auto_generated|mac_out6~dataout\ & \Mult4|auto_generated|mac_out4~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out6~dataout\,
	datab => \Mult4|auto_generated|mac_out4~dataout\,
	datad => VCC,
	combout => \Mult4|auto_generated|op_2~0_combout\,
	cout => \Mult4|auto_generated|op_2~1\);

-- Location: LCCOMB_X21_Y18_N2
\Mult4|auto_generated|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_2~2_combout\ = (\Mult4|auto_generated|mac_out4~DATAOUT1\ & ((\Mult4|auto_generated|mac_out6~DATAOUT1\ & (\Mult4|auto_generated|op_2~1\ & VCC)) # (!\Mult4|auto_generated|mac_out6~DATAOUT1\ & (!\Mult4|auto_generated|op_2~1\)))) # 
-- (!\Mult4|auto_generated|mac_out4~DATAOUT1\ & ((\Mult4|auto_generated|mac_out6~DATAOUT1\ & (!\Mult4|auto_generated|op_2~1\)) # (!\Mult4|auto_generated|mac_out6~DATAOUT1\ & ((\Mult4|auto_generated|op_2~1\) # (GND)))))
-- \Mult4|auto_generated|op_2~3\ = CARRY((\Mult4|auto_generated|mac_out4~DATAOUT1\ & (!\Mult4|auto_generated|mac_out6~DATAOUT1\ & !\Mult4|auto_generated|op_2~1\)) # (!\Mult4|auto_generated|mac_out4~DATAOUT1\ & ((!\Mult4|auto_generated|op_2~1\) # 
-- (!\Mult4|auto_generated|mac_out6~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out4~DATAOUT1\,
	datab => \Mult4|auto_generated|mac_out6~DATAOUT1\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_2~1\,
	combout => \Mult4|auto_generated|op_2~2_combout\,
	cout => \Mult4|auto_generated|op_2~3\);

-- Location: LCCOMB_X21_Y18_N4
\Mult4|auto_generated|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_2~4_combout\ = ((\Mult4|auto_generated|mac_out6~DATAOUT2\ $ (\Mult4|auto_generated|mac_out4~DATAOUT2\ $ (!\Mult4|auto_generated|op_2~3\)))) # (GND)
-- \Mult4|auto_generated|op_2~5\ = CARRY((\Mult4|auto_generated|mac_out6~DATAOUT2\ & ((\Mult4|auto_generated|mac_out4~DATAOUT2\) # (!\Mult4|auto_generated|op_2~3\))) # (!\Mult4|auto_generated|mac_out6~DATAOUT2\ & (\Mult4|auto_generated|mac_out4~DATAOUT2\ & 
-- !\Mult4|auto_generated|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out6~DATAOUT2\,
	datab => \Mult4|auto_generated|mac_out4~DATAOUT2\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_2~3\,
	combout => \Mult4|auto_generated|op_2~4_combout\,
	cout => \Mult4|auto_generated|op_2~5\);

-- Location: LCCOMB_X21_Y18_N6
\Mult4|auto_generated|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_2~6_combout\ = (\Mult4|auto_generated|mac_out4~DATAOUT3\ & ((\Mult4|auto_generated|mac_out6~DATAOUT3\ & (\Mult4|auto_generated|op_2~5\ & VCC)) # (!\Mult4|auto_generated|mac_out6~DATAOUT3\ & (!\Mult4|auto_generated|op_2~5\)))) # 
-- (!\Mult4|auto_generated|mac_out4~DATAOUT3\ & ((\Mult4|auto_generated|mac_out6~DATAOUT3\ & (!\Mult4|auto_generated|op_2~5\)) # (!\Mult4|auto_generated|mac_out6~DATAOUT3\ & ((\Mult4|auto_generated|op_2~5\) # (GND)))))
-- \Mult4|auto_generated|op_2~7\ = CARRY((\Mult4|auto_generated|mac_out4~DATAOUT3\ & (!\Mult4|auto_generated|mac_out6~DATAOUT3\ & !\Mult4|auto_generated|op_2~5\)) # (!\Mult4|auto_generated|mac_out4~DATAOUT3\ & ((!\Mult4|auto_generated|op_2~5\) # 
-- (!\Mult4|auto_generated|mac_out6~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out4~DATAOUT3\,
	datab => \Mult4|auto_generated|mac_out6~DATAOUT3\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_2~5\,
	combout => \Mult4|auto_generated|op_2~6_combout\,
	cout => \Mult4|auto_generated|op_2~7\);

-- Location: LCCOMB_X21_Y18_N8
\Mult4|auto_generated|op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_2~8_combout\ = ((\Mult4|auto_generated|mac_out6~DATAOUT4\ $ (\Mult4|auto_generated|mac_out4~DATAOUT4\ $ (!\Mult4|auto_generated|op_2~7\)))) # (GND)
-- \Mult4|auto_generated|op_2~9\ = CARRY((\Mult4|auto_generated|mac_out6~DATAOUT4\ & ((\Mult4|auto_generated|mac_out4~DATAOUT4\) # (!\Mult4|auto_generated|op_2~7\))) # (!\Mult4|auto_generated|mac_out6~DATAOUT4\ & (\Mult4|auto_generated|mac_out4~DATAOUT4\ & 
-- !\Mult4|auto_generated|op_2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out6~DATAOUT4\,
	datab => \Mult4|auto_generated|mac_out4~DATAOUT4\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_2~7\,
	combout => \Mult4|auto_generated|op_2~8_combout\,
	cout => \Mult4|auto_generated|op_2~9\);

-- Location: LCCOMB_X21_Y18_N10
\Mult4|auto_generated|op_2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_2~10_combout\ = (\Mult4|auto_generated|mac_out4~DATAOUT5\ & ((\Mult4|auto_generated|mac_out6~DATAOUT5\ & (\Mult4|auto_generated|op_2~9\ & VCC)) # (!\Mult4|auto_generated|mac_out6~DATAOUT5\ & (!\Mult4|auto_generated|op_2~9\)))) # 
-- (!\Mult4|auto_generated|mac_out4~DATAOUT5\ & ((\Mult4|auto_generated|mac_out6~DATAOUT5\ & (!\Mult4|auto_generated|op_2~9\)) # (!\Mult4|auto_generated|mac_out6~DATAOUT5\ & ((\Mult4|auto_generated|op_2~9\) # (GND)))))
-- \Mult4|auto_generated|op_2~11\ = CARRY((\Mult4|auto_generated|mac_out4~DATAOUT5\ & (!\Mult4|auto_generated|mac_out6~DATAOUT5\ & !\Mult4|auto_generated|op_2~9\)) # (!\Mult4|auto_generated|mac_out4~DATAOUT5\ & ((!\Mult4|auto_generated|op_2~9\) # 
-- (!\Mult4|auto_generated|mac_out6~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out4~DATAOUT5\,
	datab => \Mult4|auto_generated|mac_out6~DATAOUT5\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_2~9\,
	combout => \Mult4|auto_generated|op_2~10_combout\,
	cout => \Mult4|auto_generated|op_2~11\);

-- Location: LCCOMB_X21_Y18_N12
\Mult4|auto_generated|op_2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_2~12_combout\ = ((\Mult4|auto_generated|mac_out6~DATAOUT6\ $ (\Mult4|auto_generated|mac_out4~DATAOUT6\ $ (!\Mult4|auto_generated|op_2~11\)))) # (GND)
-- \Mult4|auto_generated|op_2~13\ = CARRY((\Mult4|auto_generated|mac_out6~DATAOUT6\ & ((\Mult4|auto_generated|mac_out4~DATAOUT6\) # (!\Mult4|auto_generated|op_2~11\))) # (!\Mult4|auto_generated|mac_out6~DATAOUT6\ & (\Mult4|auto_generated|mac_out4~DATAOUT6\ & 
-- !\Mult4|auto_generated|op_2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out6~DATAOUT6\,
	datab => \Mult4|auto_generated|mac_out4~DATAOUT6\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_2~11\,
	combout => \Mult4|auto_generated|op_2~12_combout\,
	cout => \Mult4|auto_generated|op_2~13\);

-- Location: LCCOMB_X21_Y18_N14
\Mult4|auto_generated|op_2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_2~14_combout\ = (\Mult4|auto_generated|mac_out4~DATAOUT7\ & ((\Mult4|auto_generated|mac_out6~DATAOUT7\ & (\Mult4|auto_generated|op_2~13\ & VCC)) # (!\Mult4|auto_generated|mac_out6~DATAOUT7\ & (!\Mult4|auto_generated|op_2~13\)))) # 
-- (!\Mult4|auto_generated|mac_out4~DATAOUT7\ & ((\Mult4|auto_generated|mac_out6~DATAOUT7\ & (!\Mult4|auto_generated|op_2~13\)) # (!\Mult4|auto_generated|mac_out6~DATAOUT7\ & ((\Mult4|auto_generated|op_2~13\) # (GND)))))
-- \Mult4|auto_generated|op_2~15\ = CARRY((\Mult4|auto_generated|mac_out4~DATAOUT7\ & (!\Mult4|auto_generated|mac_out6~DATAOUT7\ & !\Mult4|auto_generated|op_2~13\)) # (!\Mult4|auto_generated|mac_out4~DATAOUT7\ & ((!\Mult4|auto_generated|op_2~13\) # 
-- (!\Mult4|auto_generated|mac_out6~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out4~DATAOUT7\,
	datab => \Mult4|auto_generated|mac_out6~DATAOUT7\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_2~13\,
	combout => \Mult4|auto_generated|op_2~14_combout\,
	cout => \Mult4|auto_generated|op_2~15\);

-- Location: LCCOMB_X21_Y18_N16
\Mult4|auto_generated|op_2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_2~16_combout\ = ((\Mult4|auto_generated|mac_out6~DATAOUT8\ $ (\Mult4|auto_generated|mac_out4~DATAOUT8\ $ (!\Mult4|auto_generated|op_2~15\)))) # (GND)
-- \Mult4|auto_generated|op_2~17\ = CARRY((\Mult4|auto_generated|mac_out6~DATAOUT8\ & ((\Mult4|auto_generated|mac_out4~DATAOUT8\) # (!\Mult4|auto_generated|op_2~15\))) # (!\Mult4|auto_generated|mac_out6~DATAOUT8\ & (\Mult4|auto_generated|mac_out4~DATAOUT8\ & 
-- !\Mult4|auto_generated|op_2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out6~DATAOUT8\,
	datab => \Mult4|auto_generated|mac_out4~DATAOUT8\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_2~15\,
	combout => \Mult4|auto_generated|op_2~16_combout\,
	cout => \Mult4|auto_generated|op_2~17\);

-- Location: LCCOMB_X21_Y18_N18
\Mult4|auto_generated|op_2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_2~18_combout\ = (\Mult4|auto_generated|mac_out6~DATAOUT9\ & ((\Mult4|auto_generated|mac_out4~DATAOUT9\ & (\Mult4|auto_generated|op_2~17\ & VCC)) # (!\Mult4|auto_generated|mac_out4~DATAOUT9\ & (!\Mult4|auto_generated|op_2~17\)))) # 
-- (!\Mult4|auto_generated|mac_out6~DATAOUT9\ & ((\Mult4|auto_generated|mac_out4~DATAOUT9\ & (!\Mult4|auto_generated|op_2~17\)) # (!\Mult4|auto_generated|mac_out4~DATAOUT9\ & ((\Mult4|auto_generated|op_2~17\) # (GND)))))
-- \Mult4|auto_generated|op_2~19\ = CARRY((\Mult4|auto_generated|mac_out6~DATAOUT9\ & (!\Mult4|auto_generated|mac_out4~DATAOUT9\ & !\Mult4|auto_generated|op_2~17\)) # (!\Mult4|auto_generated|mac_out6~DATAOUT9\ & ((!\Mult4|auto_generated|op_2~17\) # 
-- (!\Mult4|auto_generated|mac_out4~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out6~DATAOUT9\,
	datab => \Mult4|auto_generated|mac_out4~DATAOUT9\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_2~17\,
	combout => \Mult4|auto_generated|op_2~18_combout\,
	cout => \Mult4|auto_generated|op_2~19\);

-- Location: LCCOMB_X21_Y18_N20
\Mult4|auto_generated|op_2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_2~20_combout\ = ((\Mult4|auto_generated|mac_out4~DATAOUT10\ $ (\Mult4|auto_generated|mac_out6~DATAOUT10\ $ (!\Mult4|auto_generated|op_2~19\)))) # (GND)
-- \Mult4|auto_generated|op_2~21\ = CARRY((\Mult4|auto_generated|mac_out4~DATAOUT10\ & ((\Mult4|auto_generated|mac_out6~DATAOUT10\) # (!\Mult4|auto_generated|op_2~19\))) # (!\Mult4|auto_generated|mac_out4~DATAOUT10\ & 
-- (\Mult4|auto_generated|mac_out6~DATAOUT10\ & !\Mult4|auto_generated|op_2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out4~DATAOUT10\,
	datab => \Mult4|auto_generated|mac_out6~DATAOUT10\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_2~19\,
	combout => \Mult4|auto_generated|op_2~20_combout\,
	cout => \Mult4|auto_generated|op_2~21\);

-- Location: LCCOMB_X21_Y18_N22
\Mult4|auto_generated|op_2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_2~22_combout\ = (\Mult4|auto_generated|mac_out6~DATAOUT11\ & ((\Mult4|auto_generated|mac_out4~DATAOUT11\ & (\Mult4|auto_generated|op_2~21\ & VCC)) # (!\Mult4|auto_generated|mac_out4~DATAOUT11\ & 
-- (!\Mult4|auto_generated|op_2~21\)))) # (!\Mult4|auto_generated|mac_out6~DATAOUT11\ & ((\Mult4|auto_generated|mac_out4~DATAOUT11\ & (!\Mult4|auto_generated|op_2~21\)) # (!\Mult4|auto_generated|mac_out4~DATAOUT11\ & ((\Mult4|auto_generated|op_2~21\) # 
-- (GND)))))
-- \Mult4|auto_generated|op_2~23\ = CARRY((\Mult4|auto_generated|mac_out6~DATAOUT11\ & (!\Mult4|auto_generated|mac_out4~DATAOUT11\ & !\Mult4|auto_generated|op_2~21\)) # (!\Mult4|auto_generated|mac_out6~DATAOUT11\ & ((!\Mult4|auto_generated|op_2~21\) # 
-- (!\Mult4|auto_generated|mac_out4~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out6~DATAOUT11\,
	datab => \Mult4|auto_generated|mac_out4~DATAOUT11\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_2~21\,
	combout => \Mult4|auto_generated|op_2~22_combout\,
	cout => \Mult4|auto_generated|op_2~23\);

-- Location: LCCOMB_X21_Y18_N24
\Mult4|auto_generated|op_2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_2~24_combout\ = ((\Mult4|auto_generated|mac_out6~DATAOUT12\ $ (\Mult4|auto_generated|mac_out4~DATAOUT12\ $ (!\Mult4|auto_generated|op_2~23\)))) # (GND)
-- \Mult4|auto_generated|op_2~25\ = CARRY((\Mult4|auto_generated|mac_out6~DATAOUT12\ & ((\Mult4|auto_generated|mac_out4~DATAOUT12\) # (!\Mult4|auto_generated|op_2~23\))) # (!\Mult4|auto_generated|mac_out6~DATAOUT12\ & 
-- (\Mult4|auto_generated|mac_out4~DATAOUT12\ & !\Mult4|auto_generated|op_2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out6~DATAOUT12\,
	datab => \Mult4|auto_generated|mac_out4~DATAOUT12\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_2~23\,
	combout => \Mult4|auto_generated|op_2~24_combout\,
	cout => \Mult4|auto_generated|op_2~25\);

-- Location: LCCOMB_X21_Y18_N26
\Mult4|auto_generated|op_2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_2~26_combout\ = \Mult4|auto_generated|mac_out4~DATAOUT13\ $ (\Mult4|auto_generated|op_2~25\ $ (\Mult4|auto_generated|mac_out6~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult4|auto_generated|mac_out4~DATAOUT13\,
	datad => \Mult4|auto_generated|mac_out6~DATAOUT13\,
	cin => \Mult4|auto_generated|op_2~25\,
	combout => \Mult4|auto_generated|op_2~26_combout\);

-- Location: LCCOMB_X21_Y14_N2
\Mult4|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_1~0_combout\ = (\Mult4|auto_generated|mac_out2~DATAOUT18\ & (\Mult4|auto_generated|op_2~0_combout\ $ (VCC))) # (!\Mult4|auto_generated|mac_out2~DATAOUT18\ & (\Mult4|auto_generated|op_2~0_combout\ & VCC))
-- \Mult4|auto_generated|op_1~1\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT18\ & \Mult4|auto_generated|op_2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT18\,
	datab => \Mult4|auto_generated|op_2~0_combout\,
	datad => VCC,
	combout => \Mult4|auto_generated|op_1~0_combout\,
	cout => \Mult4|auto_generated|op_1~1\);

-- Location: LCCOMB_X21_Y14_N4
\Mult4|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_1~2_combout\ = (\Mult4|auto_generated|mac_out2~DATAOUT19\ & ((\Mult4|auto_generated|op_2~2_combout\ & (\Mult4|auto_generated|op_1~1\ & VCC)) # (!\Mult4|auto_generated|op_2~2_combout\ & (!\Mult4|auto_generated|op_1~1\)))) # 
-- (!\Mult4|auto_generated|mac_out2~DATAOUT19\ & ((\Mult4|auto_generated|op_2~2_combout\ & (!\Mult4|auto_generated|op_1~1\)) # (!\Mult4|auto_generated|op_2~2_combout\ & ((\Mult4|auto_generated|op_1~1\) # (GND)))))
-- \Mult4|auto_generated|op_1~3\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT19\ & (!\Mult4|auto_generated|op_2~2_combout\ & !\Mult4|auto_generated|op_1~1\)) # (!\Mult4|auto_generated|mac_out2~DATAOUT19\ & ((!\Mult4|auto_generated|op_1~1\) # 
-- (!\Mult4|auto_generated|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT19\,
	datab => \Mult4|auto_generated|op_2~2_combout\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_1~1\,
	combout => \Mult4|auto_generated|op_1~2_combout\,
	cout => \Mult4|auto_generated|op_1~3\);

-- Location: LCCOMB_X21_Y14_N6
\Mult4|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_1~4_combout\ = ((\Mult4|auto_generated|op_2~4_combout\ $ (\Mult4|auto_generated|mac_out2~DATAOUT20\ $ (!\Mult4|auto_generated|op_1~3\)))) # (GND)
-- \Mult4|auto_generated|op_1~5\ = CARRY((\Mult4|auto_generated|op_2~4_combout\ & ((\Mult4|auto_generated|mac_out2~DATAOUT20\) # (!\Mult4|auto_generated|op_1~3\))) # (!\Mult4|auto_generated|op_2~4_combout\ & (\Mult4|auto_generated|mac_out2~DATAOUT20\ & 
-- !\Mult4|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|op_2~4_combout\,
	datab => \Mult4|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_1~3\,
	combout => \Mult4|auto_generated|op_1~4_combout\,
	cout => \Mult4|auto_generated|op_1~5\);

-- Location: LCCOMB_X21_Y14_N8
\Mult4|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_1~6_combout\ = (\Mult4|auto_generated|mac_out2~DATAOUT21\ & ((\Mult4|auto_generated|op_2~6_combout\ & (\Mult4|auto_generated|op_1~5\ & VCC)) # (!\Mult4|auto_generated|op_2~6_combout\ & (!\Mult4|auto_generated|op_1~5\)))) # 
-- (!\Mult4|auto_generated|mac_out2~DATAOUT21\ & ((\Mult4|auto_generated|op_2~6_combout\ & (!\Mult4|auto_generated|op_1~5\)) # (!\Mult4|auto_generated|op_2~6_combout\ & ((\Mult4|auto_generated|op_1~5\) # (GND)))))
-- \Mult4|auto_generated|op_1~7\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT21\ & (!\Mult4|auto_generated|op_2~6_combout\ & !\Mult4|auto_generated|op_1~5\)) # (!\Mult4|auto_generated|mac_out2~DATAOUT21\ & ((!\Mult4|auto_generated|op_1~5\) # 
-- (!\Mult4|auto_generated|op_2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT21\,
	datab => \Mult4|auto_generated|op_2~6_combout\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_1~5\,
	combout => \Mult4|auto_generated|op_1~6_combout\,
	cout => \Mult4|auto_generated|op_1~7\);

-- Location: LCCOMB_X21_Y14_N10
\Mult4|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_1~8_combout\ = ((\Mult4|auto_generated|op_2~8_combout\ $ (\Mult4|auto_generated|mac_out2~DATAOUT22\ $ (!\Mult4|auto_generated|op_1~7\)))) # (GND)
-- \Mult4|auto_generated|op_1~9\ = CARRY((\Mult4|auto_generated|op_2~8_combout\ & ((\Mult4|auto_generated|mac_out2~DATAOUT22\) # (!\Mult4|auto_generated|op_1~7\))) # (!\Mult4|auto_generated|op_2~8_combout\ & (\Mult4|auto_generated|mac_out2~DATAOUT22\ & 
-- !\Mult4|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|op_2~8_combout\,
	datab => \Mult4|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_1~7\,
	combout => \Mult4|auto_generated|op_1~8_combout\,
	cout => \Mult4|auto_generated|op_1~9\);

-- Location: LCCOMB_X21_Y14_N12
\Mult4|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_1~10_combout\ = (\Mult4|auto_generated|mac_out2~DATAOUT23\ & ((\Mult4|auto_generated|op_2~10_combout\ & (\Mult4|auto_generated|op_1~9\ & VCC)) # (!\Mult4|auto_generated|op_2~10_combout\ & (!\Mult4|auto_generated|op_1~9\)))) # 
-- (!\Mult4|auto_generated|mac_out2~DATAOUT23\ & ((\Mult4|auto_generated|op_2~10_combout\ & (!\Mult4|auto_generated|op_1~9\)) # (!\Mult4|auto_generated|op_2~10_combout\ & ((\Mult4|auto_generated|op_1~9\) # (GND)))))
-- \Mult4|auto_generated|op_1~11\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT23\ & (!\Mult4|auto_generated|op_2~10_combout\ & !\Mult4|auto_generated|op_1~9\)) # (!\Mult4|auto_generated|mac_out2~DATAOUT23\ & ((!\Mult4|auto_generated|op_1~9\) # 
-- (!\Mult4|auto_generated|op_2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT23\,
	datab => \Mult4|auto_generated|op_2~10_combout\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_1~9\,
	combout => \Mult4|auto_generated|op_1~10_combout\,
	cout => \Mult4|auto_generated|op_1~11\);

-- Location: LCCOMB_X21_Y14_N14
\Mult4|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_1~12_combout\ = ((\Mult4|auto_generated|mac_out2~DATAOUT24\ $ (\Mult4|auto_generated|op_2~12_combout\ $ (!\Mult4|auto_generated|op_1~11\)))) # (GND)
-- \Mult4|auto_generated|op_1~13\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT24\ & ((\Mult4|auto_generated|op_2~12_combout\) # (!\Mult4|auto_generated|op_1~11\))) # (!\Mult4|auto_generated|mac_out2~DATAOUT24\ & (\Mult4|auto_generated|op_2~12_combout\ & 
-- !\Mult4|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT24\,
	datab => \Mult4|auto_generated|op_2~12_combout\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_1~11\,
	combout => \Mult4|auto_generated|op_1~12_combout\,
	cout => \Mult4|auto_generated|op_1~13\);

-- Location: LCCOMB_X21_Y14_N16
\Mult4|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_1~14_combout\ = (\Mult4|auto_generated|mac_out2~DATAOUT25\ & ((\Mult4|auto_generated|op_2~14_combout\ & (\Mult4|auto_generated|op_1~13\ & VCC)) # (!\Mult4|auto_generated|op_2~14_combout\ & (!\Mult4|auto_generated|op_1~13\)))) # 
-- (!\Mult4|auto_generated|mac_out2~DATAOUT25\ & ((\Mult4|auto_generated|op_2~14_combout\ & (!\Mult4|auto_generated|op_1~13\)) # (!\Mult4|auto_generated|op_2~14_combout\ & ((\Mult4|auto_generated|op_1~13\) # (GND)))))
-- \Mult4|auto_generated|op_1~15\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT25\ & (!\Mult4|auto_generated|op_2~14_combout\ & !\Mult4|auto_generated|op_1~13\)) # (!\Mult4|auto_generated|mac_out2~DATAOUT25\ & ((!\Mult4|auto_generated|op_1~13\) # 
-- (!\Mult4|auto_generated|op_2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT25\,
	datab => \Mult4|auto_generated|op_2~14_combout\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_1~13\,
	combout => \Mult4|auto_generated|op_1~14_combout\,
	cout => \Mult4|auto_generated|op_1~15\);

-- Location: LCCOMB_X21_Y14_N18
\Mult4|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_1~16_combout\ = ((\Mult4|auto_generated|mac_out2~DATAOUT26\ $ (\Mult4|auto_generated|op_2~16_combout\ $ (!\Mult4|auto_generated|op_1~15\)))) # (GND)
-- \Mult4|auto_generated|op_1~17\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT26\ & ((\Mult4|auto_generated|op_2~16_combout\) # (!\Mult4|auto_generated|op_1~15\))) # (!\Mult4|auto_generated|mac_out2~DATAOUT26\ & (\Mult4|auto_generated|op_2~16_combout\ & 
-- !\Mult4|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT26\,
	datab => \Mult4|auto_generated|op_2~16_combout\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_1~15\,
	combout => \Mult4|auto_generated|op_1~16_combout\,
	cout => \Mult4|auto_generated|op_1~17\);

-- Location: LCCOMB_X21_Y14_N20
\Mult4|auto_generated|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_1~18_combout\ = (\Mult4|auto_generated|op_2~18_combout\ & ((\Mult4|auto_generated|mac_out2~DATAOUT27\ & (\Mult4|auto_generated|op_1~17\ & VCC)) # (!\Mult4|auto_generated|mac_out2~DATAOUT27\ & (!\Mult4|auto_generated|op_1~17\)))) # 
-- (!\Mult4|auto_generated|op_2~18_combout\ & ((\Mult4|auto_generated|mac_out2~DATAOUT27\ & (!\Mult4|auto_generated|op_1~17\)) # (!\Mult4|auto_generated|mac_out2~DATAOUT27\ & ((\Mult4|auto_generated|op_1~17\) # (GND)))))
-- \Mult4|auto_generated|op_1~19\ = CARRY((\Mult4|auto_generated|op_2~18_combout\ & (!\Mult4|auto_generated|mac_out2~DATAOUT27\ & !\Mult4|auto_generated|op_1~17\)) # (!\Mult4|auto_generated|op_2~18_combout\ & ((!\Mult4|auto_generated|op_1~17\) # 
-- (!\Mult4|auto_generated|mac_out2~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|op_2~18_combout\,
	datab => \Mult4|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_1~17\,
	combout => \Mult4|auto_generated|op_1~18_combout\,
	cout => \Mult4|auto_generated|op_1~19\);

-- Location: LCCOMB_X21_Y14_N22
\Mult4|auto_generated|op_1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_1~20_combout\ = ((\Mult4|auto_generated|mac_out2~DATAOUT28\ $ (\Mult4|auto_generated|op_2~20_combout\ $ (!\Mult4|auto_generated|op_1~19\)))) # (GND)
-- \Mult4|auto_generated|op_1~21\ = CARRY((\Mult4|auto_generated|mac_out2~DATAOUT28\ & ((\Mult4|auto_generated|op_2~20_combout\) # (!\Mult4|auto_generated|op_1~19\))) # (!\Mult4|auto_generated|mac_out2~DATAOUT28\ & (\Mult4|auto_generated|op_2~20_combout\ & 
-- !\Mult4|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT28\,
	datab => \Mult4|auto_generated|op_2~20_combout\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_1~19\,
	combout => \Mult4|auto_generated|op_1~20_combout\,
	cout => \Mult4|auto_generated|op_1~21\);

-- Location: LCCOMB_X21_Y14_N24
\Mult4|auto_generated|op_1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_1~22_combout\ = (\Mult4|auto_generated|op_2~22_combout\ & ((\Mult4|auto_generated|mac_out2~DATAOUT29\ & (\Mult4|auto_generated|op_1~21\ & VCC)) # (!\Mult4|auto_generated|mac_out2~DATAOUT29\ & (!\Mult4|auto_generated|op_1~21\)))) # 
-- (!\Mult4|auto_generated|op_2~22_combout\ & ((\Mult4|auto_generated|mac_out2~DATAOUT29\ & (!\Mult4|auto_generated|op_1~21\)) # (!\Mult4|auto_generated|mac_out2~DATAOUT29\ & ((\Mult4|auto_generated|op_1~21\) # (GND)))))
-- \Mult4|auto_generated|op_1~23\ = CARRY((\Mult4|auto_generated|op_2~22_combout\ & (!\Mult4|auto_generated|mac_out2~DATAOUT29\ & !\Mult4|auto_generated|op_1~21\)) # (!\Mult4|auto_generated|op_2~22_combout\ & ((!\Mult4|auto_generated|op_1~21\) # 
-- (!\Mult4|auto_generated|mac_out2~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|op_2~22_combout\,
	datab => \Mult4|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_1~21\,
	combout => \Mult4|auto_generated|op_1~22_combout\,
	cout => \Mult4|auto_generated|op_1~23\);

-- Location: LCCOMB_X21_Y14_N26
\Mult4|auto_generated|op_1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_1~24_combout\ = ((\Mult4|auto_generated|op_2~24_combout\ $ (\Mult4|auto_generated|mac_out2~DATAOUT30\ $ (!\Mult4|auto_generated|op_1~23\)))) # (GND)
-- \Mult4|auto_generated|op_1~25\ = CARRY((\Mult4|auto_generated|op_2~24_combout\ & ((\Mult4|auto_generated|mac_out2~DATAOUT30\) # (!\Mult4|auto_generated|op_1~23\))) # (!\Mult4|auto_generated|op_2~24_combout\ & (\Mult4|auto_generated|mac_out2~DATAOUT30\ & 
-- !\Mult4|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|op_2~24_combout\,
	datab => \Mult4|auto_generated|mac_out2~DATAOUT30\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_1~23\,
	combout => \Mult4|auto_generated|op_1~24_combout\,
	cout => \Mult4|auto_generated|op_1~25\);

-- Location: LCCOMB_X21_Y14_N28
\Mult4|auto_generated|op_1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_1~26_combout\ = \Mult4|auto_generated|mac_out2~DATAOUT31\ $ (\Mult4|auto_generated|op_1~25\ $ (\Mult4|auto_generated|op_2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|mac_out2~DATAOUT31\,
	datad => \Mult4|auto_generated|op_2~26_combout\,
	cin => \Mult4|auto_generated|op_1~25\,
	combout => \Mult4|auto_generated|op_1~26_combout\);

-- Location: LCCOMB_X21_Y6_N2
\Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = vPos(2) $ (VCC)
-- \Add8~1\ = CARRY(vPos(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => vPos(2),
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X21_Y6_N4
\Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (vPos(3) & (\Add8~1\ & VCC)) # (!vPos(3) & (!\Add8~1\))
-- \Add8~3\ = CARRY((!vPos(3) & !\Add8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(3),
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X21_Y6_N6
\Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = (vPos(4) & (\Add8~3\ $ (GND))) # (!vPos(4) & (!\Add8~3\ & VCC))
-- \Add8~5\ = CARRY((vPos(4) & !\Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(4),
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X21_Y6_N8
\Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (vPos(5) & (!\Add8~5\)) # (!vPos(5) & ((\Add8~5\) # (GND)))
-- \Add8~7\ = CARRY((!\Add8~5\) # (!vPos(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(5),
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X21_Y6_N10
\Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (vPos(6) & ((GND) # (!\Add8~7\))) # (!vPos(6) & (\Add8~7\ $ (GND)))
-- \Add8~9\ = CARRY((vPos(6)) # (!\Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(6),
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X21_Y6_N12
\Add8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (vPos(7) & (\Add8~9\ & VCC)) # (!vPos(7) & (!\Add8~9\))
-- \Add8~11\ = CARRY((!vPos(7) & !\Add8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(7),
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X21_Y6_N14
\Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = (vPos(8) & ((GND) # (!\Add8~11\))) # (!vPos(8) & (\Add8~11\ $ (GND)))
-- \Add8~13\ = CARRY((vPos(8)) # (!\Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(8),
	datad => VCC,
	cin => \Add8~11\,
	combout => \Add8~12_combout\,
	cout => \Add8~13\);

-- Location: LCCOMB_X21_Y6_N16
\Add8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~14_combout\ = (vPos(9) & (\Add8~13\ & VCC)) # (!vPos(9) & (!\Add8~13\))
-- \Add8~15\ = CARRY((!vPos(9) & !\Add8~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(9),
	datad => VCC,
	cin => \Add8~13\,
	combout => \Add8~14_combout\,
	cout => \Add8~15\);

-- Location: LCCOMB_X21_Y6_N18
\Add8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~16_combout\ = (vPos(10) & ((GND) # (!\Add8~15\))) # (!vPos(10) & (\Add8~15\ $ (GND)))
-- \Add8~17\ = CARRY((vPos(10)) # (!\Add8~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(10),
	datad => VCC,
	cin => \Add8~15\,
	combout => \Add8~16_combout\,
	cout => \Add8~17\);

-- Location: LCCOMB_X21_Y6_N20
\Add8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~18_combout\ = (vPos(11) & (\Add8~17\ & VCC)) # (!vPos(11) & (!\Add8~17\))
-- \Add8~19\ = CARRY((!vPos(11) & !\Add8~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(11),
	datad => VCC,
	cin => \Add8~17\,
	combout => \Add8~18_combout\,
	cout => \Add8~19\);

-- Location: LCCOMB_X21_Y6_N22
\Add8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~20_combout\ = (vPos(12) & ((GND) # (!\Add8~19\))) # (!vPos(12) & (\Add8~19\ $ (GND)))
-- \Add8~21\ = CARRY((vPos(12)) # (!\Add8~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(12),
	datad => VCC,
	cin => \Add8~19\,
	combout => \Add8~20_combout\,
	cout => \Add8~21\);

-- Location: LCCOMB_X21_Y6_N24
\Add8~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~22_combout\ = (vPos(13) & (\Add8~21\ & VCC)) # (!vPos(13) & (!\Add8~21\))
-- \Add8~23\ = CARRY((!vPos(13) & !\Add8~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(13),
	datad => VCC,
	cin => \Add8~21\,
	combout => \Add8~22_combout\,
	cout => \Add8~23\);

-- Location: LCCOMB_X21_Y6_N26
\Add8~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~24_combout\ = (vPos(14) & ((GND) # (!\Add8~23\))) # (!vPos(14) & (\Add8~23\ $ (GND)))
-- \Add8~25\ = CARRY((vPos(14)) # (!\Add8~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(14),
	datad => VCC,
	cin => \Add8~23\,
	combout => \Add8~24_combout\,
	cout => \Add8~25\);

-- Location: LCCOMB_X21_Y6_N28
\Add8~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~26_combout\ = (vPos(15) & (\Add8~25\ & VCC)) # (!vPos(15) & (!\Add8~25\))
-- \Add8~27\ = CARRY((!vPos(15) & !\Add8~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(15),
	datad => VCC,
	cin => \Add8~25\,
	combout => \Add8~26_combout\,
	cout => \Add8~27\);

-- Location: LCCOMB_X21_Y6_N30
\Add8~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~28_combout\ = (vPos(16) & ((GND) # (!\Add8~27\))) # (!vPos(16) & (\Add8~27\ $ (GND)))
-- \Add8~29\ = CARRY((vPos(16)) # (!\Add8~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(16),
	datad => VCC,
	cin => \Add8~27\,
	combout => \Add8~28_combout\,
	cout => \Add8~29\);

-- Location: LCCOMB_X21_Y5_N0
\Add8~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~30_combout\ = (vPos(17) & (\Add8~29\ & VCC)) # (!vPos(17) & (!\Add8~29\))
-- \Add8~31\ = CARRY((!vPos(17) & !\Add8~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(17),
	datad => VCC,
	cin => \Add8~29\,
	combout => \Add8~30_combout\,
	cout => \Add8~31\);

-- Location: DSPMULT_X20_Y6_N0
\Mult5|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Mult5|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult5|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult5|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y6_N2
\Mult5|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult5|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X21_Y5_N2
\Add8~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~32_combout\ = (vPos(18) & ((GND) # (!\Add8~31\))) # (!vPos(18) & (\Add8~31\ $ (GND)))
-- \Add8~33\ = CARRY((vPos(18)) # (!\Add8~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(18),
	datad => VCC,
	cin => \Add8~31\,
	combout => \Add8~32_combout\,
	cout => \Add8~33\);

-- Location: LCCOMB_X21_Y5_N4
\Add8~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~34_combout\ = (vPos(19) & (\Add8~33\ & VCC)) # (!vPos(19) & (!\Add8~33\))
-- \Add8~35\ = CARRY((!vPos(19) & !\Add8~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(19),
	datad => VCC,
	cin => \Add8~33\,
	combout => \Add8~34_combout\,
	cout => \Add8~35\);

-- Location: LCCOMB_X21_Y5_N6
\Add8~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~36_combout\ = (vPos(20) & ((GND) # (!\Add8~35\))) # (!vPos(20) & (\Add8~35\ $ (GND)))
-- \Add8~37\ = CARRY((vPos(20)) # (!\Add8~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(20),
	datad => VCC,
	cin => \Add8~35\,
	combout => \Add8~36_combout\,
	cout => \Add8~37\);

-- Location: LCCOMB_X21_Y5_N8
\Add8~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~38_combout\ = (vPos(21) & (\Add8~37\ & VCC)) # (!vPos(21) & (!\Add8~37\))
-- \Add8~39\ = CARRY((!vPos(21) & !\Add8~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(21),
	datad => VCC,
	cin => \Add8~37\,
	combout => \Add8~38_combout\,
	cout => \Add8~39\);

-- Location: LCCOMB_X21_Y5_N10
\Add8~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~40_combout\ = (vPos(22) & ((GND) # (!\Add8~39\))) # (!vPos(22) & (\Add8~39\ $ (GND)))
-- \Add8~41\ = CARRY((vPos(22)) # (!\Add8~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(22),
	datad => VCC,
	cin => \Add8~39\,
	combout => \Add8~40_combout\,
	cout => \Add8~41\);

-- Location: LCCOMB_X21_Y5_N12
\Add8~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~42_combout\ = (vPos(23) & (\Add8~41\ & VCC)) # (!vPos(23) & (!\Add8~41\))
-- \Add8~43\ = CARRY((!vPos(23) & !\Add8~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(23),
	datad => VCC,
	cin => \Add8~41\,
	combout => \Add8~42_combout\,
	cout => \Add8~43\);

-- Location: LCCOMB_X21_Y5_N14
\Add8~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~44_combout\ = (vPos(24) & ((GND) # (!\Add8~43\))) # (!vPos(24) & (\Add8~43\ $ (GND)))
-- \Add8~45\ = CARRY((vPos(24)) # (!\Add8~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(24),
	datad => VCC,
	cin => \Add8~43\,
	combout => \Add8~44_combout\,
	cout => \Add8~45\);

-- Location: LCCOMB_X21_Y5_N16
\Add8~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~46_combout\ = (vPos(25) & (\Add8~45\ & VCC)) # (!vPos(25) & (!\Add8~45\))
-- \Add8~47\ = CARRY((!vPos(25) & !\Add8~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(25),
	datad => VCC,
	cin => \Add8~45\,
	combout => \Add8~46_combout\,
	cout => \Add8~47\);

-- Location: LCCOMB_X21_Y5_N18
\Add8~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~48_combout\ = (vPos(26) & ((GND) # (!\Add8~47\))) # (!vPos(26) & (\Add8~47\ $ (GND)))
-- \Add8~49\ = CARRY((vPos(26)) # (!\Add8~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(26),
	datad => VCC,
	cin => \Add8~47\,
	combout => \Add8~48_combout\,
	cout => \Add8~49\);

-- Location: LCCOMB_X21_Y5_N20
\Add8~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~50_combout\ = (vPos(27) & (\Add8~49\ & VCC)) # (!vPos(27) & (!\Add8~49\))
-- \Add8~51\ = CARRY((!vPos(27) & !\Add8~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(27),
	datad => VCC,
	cin => \Add8~49\,
	combout => \Add8~50_combout\,
	cout => \Add8~51\);

-- Location: LCCOMB_X21_Y5_N22
\Add8~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~52_combout\ = (vPos(28) & ((GND) # (!\Add8~51\))) # (!vPos(28) & (\Add8~51\ $ (GND)))
-- \Add8~53\ = CARRY((vPos(28)) # (!\Add8~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(28),
	datad => VCC,
	cin => \Add8~51\,
	combout => \Add8~52_combout\,
	cout => \Add8~53\);

-- Location: LCCOMB_X21_Y5_N24
\Add8~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~54_combout\ = (vPos(29) & (\Add8~53\ & VCC)) # (!vPos(29) & (!\Add8~53\))
-- \Add8~55\ = CARRY((!vPos(29) & !\Add8~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(29),
	datad => VCC,
	cin => \Add8~53\,
	combout => \Add8~54_combout\,
	cout => \Add8~55\);

-- Location: LCCOMB_X21_Y5_N26
\Add8~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~56_combout\ = (vPos(30) & ((GND) # (!\Add8~55\))) # (!vPos(30) & (\Add8~55\ $ (GND)))
-- \Add8~57\ = CARRY((vPos(30)) # (!\Add8~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vPos(30),
	datad => VCC,
	cin => \Add8~55\,
	combout => \Add8~56_combout\,
	cout => \Add8~57\);

-- Location: LCCOMB_X21_Y5_N28
\Add8~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~58_combout\ = vPos(31) $ (!\Add8~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vPos(31),
	cin => \Add8~57\,
	combout => \Add8~58_combout\);

-- Location: DSPMULT_X20_Y4_N0
\Mult5|auto_generated|mac_mult3\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	dataa => \Mult5|auto_generated|mac_mult3_DATAA_bus\,
	datab => \Mult5|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult5|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y4_N2
\Mult5|auto_generated|mac_out4\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult5|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: DSPMULT_X20_Y5_N0
\Mult5|auto_generated|mac_mult5\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	dataa => \Mult5|auto_generated|mac_mult5_DATAA_bus\,
	datab => \Mult5|auto_generated|mac_mult5_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult5|auto_generated|mac_mult5_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y5_N2
\Mult5|auto_generated|mac_out6\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out6_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult5|auto_generated|mac_out6_DATAOUT_bus\);

-- Location: LCCOMB_X21_Y4_N2
\Mult5|auto_generated|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_2~0_combout\ = (\Mult5|auto_generated|mac_out6~dataout\ & (\Mult5|auto_generated|mac_out4~dataout\ $ (VCC))) # (!\Mult5|auto_generated|mac_out6~dataout\ & (\Mult5|auto_generated|mac_out4~dataout\ & VCC))
-- \Mult5|auto_generated|op_2~1\ = CARRY((\Mult5|auto_generated|mac_out6~dataout\ & \Mult5|auto_generated|mac_out4~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out6~dataout\,
	datab => \Mult5|auto_generated|mac_out4~dataout\,
	datad => VCC,
	combout => \Mult5|auto_generated|op_2~0_combout\,
	cout => \Mult5|auto_generated|op_2~1\);

-- Location: LCCOMB_X21_Y4_N4
\Mult5|auto_generated|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_2~2_combout\ = (\Mult5|auto_generated|mac_out6~DATAOUT1\ & ((\Mult5|auto_generated|mac_out4~DATAOUT1\ & (\Mult5|auto_generated|op_2~1\ & VCC)) # (!\Mult5|auto_generated|mac_out4~DATAOUT1\ & (!\Mult5|auto_generated|op_2~1\)))) # 
-- (!\Mult5|auto_generated|mac_out6~DATAOUT1\ & ((\Mult5|auto_generated|mac_out4~DATAOUT1\ & (!\Mult5|auto_generated|op_2~1\)) # (!\Mult5|auto_generated|mac_out4~DATAOUT1\ & ((\Mult5|auto_generated|op_2~1\) # (GND)))))
-- \Mult5|auto_generated|op_2~3\ = CARRY((\Mult5|auto_generated|mac_out6~DATAOUT1\ & (!\Mult5|auto_generated|mac_out4~DATAOUT1\ & !\Mult5|auto_generated|op_2~1\)) # (!\Mult5|auto_generated|mac_out6~DATAOUT1\ & ((!\Mult5|auto_generated|op_2~1\) # 
-- (!\Mult5|auto_generated|mac_out4~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out6~DATAOUT1\,
	datab => \Mult5|auto_generated|mac_out4~DATAOUT1\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_2~1\,
	combout => \Mult5|auto_generated|op_2~2_combout\,
	cout => \Mult5|auto_generated|op_2~3\);

-- Location: LCCOMB_X21_Y4_N6
\Mult5|auto_generated|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_2~4_combout\ = ((\Mult5|auto_generated|mac_out4~DATAOUT2\ $ (\Mult5|auto_generated|mac_out6~DATAOUT2\ $ (!\Mult5|auto_generated|op_2~3\)))) # (GND)
-- \Mult5|auto_generated|op_2~5\ = CARRY((\Mult5|auto_generated|mac_out4~DATAOUT2\ & ((\Mult5|auto_generated|mac_out6~DATAOUT2\) # (!\Mult5|auto_generated|op_2~3\))) # (!\Mult5|auto_generated|mac_out4~DATAOUT2\ & (\Mult5|auto_generated|mac_out6~DATAOUT2\ & 
-- !\Mult5|auto_generated|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out4~DATAOUT2\,
	datab => \Mult5|auto_generated|mac_out6~DATAOUT2\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_2~3\,
	combout => \Mult5|auto_generated|op_2~4_combout\,
	cout => \Mult5|auto_generated|op_2~5\);

-- Location: LCCOMB_X21_Y4_N8
\Mult5|auto_generated|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_2~6_combout\ = (\Mult5|auto_generated|mac_out6~DATAOUT3\ & ((\Mult5|auto_generated|mac_out4~DATAOUT3\ & (\Mult5|auto_generated|op_2~5\ & VCC)) # (!\Mult5|auto_generated|mac_out4~DATAOUT3\ & (!\Mult5|auto_generated|op_2~5\)))) # 
-- (!\Mult5|auto_generated|mac_out6~DATAOUT3\ & ((\Mult5|auto_generated|mac_out4~DATAOUT3\ & (!\Mult5|auto_generated|op_2~5\)) # (!\Mult5|auto_generated|mac_out4~DATAOUT3\ & ((\Mult5|auto_generated|op_2~5\) # (GND)))))
-- \Mult5|auto_generated|op_2~7\ = CARRY((\Mult5|auto_generated|mac_out6~DATAOUT3\ & (!\Mult5|auto_generated|mac_out4~DATAOUT3\ & !\Mult5|auto_generated|op_2~5\)) # (!\Mult5|auto_generated|mac_out6~DATAOUT3\ & ((!\Mult5|auto_generated|op_2~5\) # 
-- (!\Mult5|auto_generated|mac_out4~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out6~DATAOUT3\,
	datab => \Mult5|auto_generated|mac_out4~DATAOUT3\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_2~5\,
	combout => \Mult5|auto_generated|op_2~6_combout\,
	cout => \Mult5|auto_generated|op_2~7\);

-- Location: LCCOMB_X21_Y4_N10
\Mult5|auto_generated|op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_2~8_combout\ = ((\Mult5|auto_generated|mac_out4~DATAOUT4\ $ (\Mult5|auto_generated|mac_out6~DATAOUT4\ $ (!\Mult5|auto_generated|op_2~7\)))) # (GND)
-- \Mult5|auto_generated|op_2~9\ = CARRY((\Mult5|auto_generated|mac_out4~DATAOUT4\ & ((\Mult5|auto_generated|mac_out6~DATAOUT4\) # (!\Mult5|auto_generated|op_2~7\))) # (!\Mult5|auto_generated|mac_out4~DATAOUT4\ & (\Mult5|auto_generated|mac_out6~DATAOUT4\ & 
-- !\Mult5|auto_generated|op_2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out4~DATAOUT4\,
	datab => \Mult5|auto_generated|mac_out6~DATAOUT4\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_2~7\,
	combout => \Mult5|auto_generated|op_2~8_combout\,
	cout => \Mult5|auto_generated|op_2~9\);

-- Location: LCCOMB_X21_Y4_N12
\Mult5|auto_generated|op_2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_2~10_combout\ = (\Mult5|auto_generated|mac_out4~DATAOUT5\ & ((\Mult5|auto_generated|mac_out6~DATAOUT5\ & (\Mult5|auto_generated|op_2~9\ & VCC)) # (!\Mult5|auto_generated|mac_out6~DATAOUT5\ & (!\Mult5|auto_generated|op_2~9\)))) # 
-- (!\Mult5|auto_generated|mac_out4~DATAOUT5\ & ((\Mult5|auto_generated|mac_out6~DATAOUT5\ & (!\Mult5|auto_generated|op_2~9\)) # (!\Mult5|auto_generated|mac_out6~DATAOUT5\ & ((\Mult5|auto_generated|op_2~9\) # (GND)))))
-- \Mult5|auto_generated|op_2~11\ = CARRY((\Mult5|auto_generated|mac_out4~DATAOUT5\ & (!\Mult5|auto_generated|mac_out6~DATAOUT5\ & !\Mult5|auto_generated|op_2~9\)) # (!\Mult5|auto_generated|mac_out4~DATAOUT5\ & ((!\Mult5|auto_generated|op_2~9\) # 
-- (!\Mult5|auto_generated|mac_out6~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out4~DATAOUT5\,
	datab => \Mult5|auto_generated|mac_out6~DATAOUT5\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_2~9\,
	combout => \Mult5|auto_generated|op_2~10_combout\,
	cout => \Mult5|auto_generated|op_2~11\);

-- Location: LCCOMB_X21_Y4_N14
\Mult5|auto_generated|op_2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_2~12_combout\ = ((\Mult5|auto_generated|mac_out6~DATAOUT6\ $ (\Mult5|auto_generated|mac_out4~DATAOUT6\ $ (!\Mult5|auto_generated|op_2~11\)))) # (GND)
-- \Mult5|auto_generated|op_2~13\ = CARRY((\Mult5|auto_generated|mac_out6~DATAOUT6\ & ((\Mult5|auto_generated|mac_out4~DATAOUT6\) # (!\Mult5|auto_generated|op_2~11\))) # (!\Mult5|auto_generated|mac_out6~DATAOUT6\ & (\Mult5|auto_generated|mac_out4~DATAOUT6\ & 
-- !\Mult5|auto_generated|op_2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out6~DATAOUT6\,
	datab => \Mult5|auto_generated|mac_out4~DATAOUT6\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_2~11\,
	combout => \Mult5|auto_generated|op_2~12_combout\,
	cout => \Mult5|auto_generated|op_2~13\);

-- Location: LCCOMB_X21_Y4_N16
\Mult5|auto_generated|op_2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_2~14_combout\ = (\Mult5|auto_generated|mac_out4~DATAOUT7\ & ((\Mult5|auto_generated|mac_out6~DATAOUT7\ & (\Mult5|auto_generated|op_2~13\ & VCC)) # (!\Mult5|auto_generated|mac_out6~DATAOUT7\ & (!\Mult5|auto_generated|op_2~13\)))) # 
-- (!\Mult5|auto_generated|mac_out4~DATAOUT7\ & ((\Mult5|auto_generated|mac_out6~DATAOUT7\ & (!\Mult5|auto_generated|op_2~13\)) # (!\Mult5|auto_generated|mac_out6~DATAOUT7\ & ((\Mult5|auto_generated|op_2~13\) # (GND)))))
-- \Mult5|auto_generated|op_2~15\ = CARRY((\Mult5|auto_generated|mac_out4~DATAOUT7\ & (!\Mult5|auto_generated|mac_out6~DATAOUT7\ & !\Mult5|auto_generated|op_2~13\)) # (!\Mult5|auto_generated|mac_out4~DATAOUT7\ & ((!\Mult5|auto_generated|op_2~13\) # 
-- (!\Mult5|auto_generated|mac_out6~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out4~DATAOUT7\,
	datab => \Mult5|auto_generated|mac_out6~DATAOUT7\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_2~13\,
	combout => \Mult5|auto_generated|op_2~14_combout\,
	cout => \Mult5|auto_generated|op_2~15\);

-- Location: LCCOMB_X21_Y4_N18
\Mult5|auto_generated|op_2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_2~16_combout\ = ((\Mult5|auto_generated|mac_out6~DATAOUT8\ $ (\Mult5|auto_generated|mac_out4~DATAOUT8\ $ (!\Mult5|auto_generated|op_2~15\)))) # (GND)
-- \Mult5|auto_generated|op_2~17\ = CARRY((\Mult5|auto_generated|mac_out6~DATAOUT8\ & ((\Mult5|auto_generated|mac_out4~DATAOUT8\) # (!\Mult5|auto_generated|op_2~15\))) # (!\Mult5|auto_generated|mac_out6~DATAOUT8\ & (\Mult5|auto_generated|mac_out4~DATAOUT8\ & 
-- !\Mult5|auto_generated|op_2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out6~DATAOUT8\,
	datab => \Mult5|auto_generated|mac_out4~DATAOUT8\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_2~15\,
	combout => \Mult5|auto_generated|op_2~16_combout\,
	cout => \Mult5|auto_generated|op_2~17\);

-- Location: LCCOMB_X21_Y4_N20
\Mult5|auto_generated|op_2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_2~18_combout\ = (\Mult5|auto_generated|mac_out6~DATAOUT9\ & ((\Mult5|auto_generated|mac_out4~DATAOUT9\ & (\Mult5|auto_generated|op_2~17\ & VCC)) # (!\Mult5|auto_generated|mac_out4~DATAOUT9\ & (!\Mult5|auto_generated|op_2~17\)))) # 
-- (!\Mult5|auto_generated|mac_out6~DATAOUT9\ & ((\Mult5|auto_generated|mac_out4~DATAOUT9\ & (!\Mult5|auto_generated|op_2~17\)) # (!\Mult5|auto_generated|mac_out4~DATAOUT9\ & ((\Mult5|auto_generated|op_2~17\) # (GND)))))
-- \Mult5|auto_generated|op_2~19\ = CARRY((\Mult5|auto_generated|mac_out6~DATAOUT9\ & (!\Mult5|auto_generated|mac_out4~DATAOUT9\ & !\Mult5|auto_generated|op_2~17\)) # (!\Mult5|auto_generated|mac_out6~DATAOUT9\ & ((!\Mult5|auto_generated|op_2~17\) # 
-- (!\Mult5|auto_generated|mac_out4~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out6~DATAOUT9\,
	datab => \Mult5|auto_generated|mac_out4~DATAOUT9\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_2~17\,
	combout => \Mult5|auto_generated|op_2~18_combout\,
	cout => \Mult5|auto_generated|op_2~19\);

-- Location: LCCOMB_X21_Y4_N22
\Mult5|auto_generated|op_2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_2~20_combout\ = ((\Mult5|auto_generated|mac_out4~DATAOUT10\ $ (\Mult5|auto_generated|mac_out6~DATAOUT10\ $ (!\Mult5|auto_generated|op_2~19\)))) # (GND)
-- \Mult5|auto_generated|op_2~21\ = CARRY((\Mult5|auto_generated|mac_out4~DATAOUT10\ & ((\Mult5|auto_generated|mac_out6~DATAOUT10\) # (!\Mult5|auto_generated|op_2~19\))) # (!\Mult5|auto_generated|mac_out4~DATAOUT10\ & 
-- (\Mult5|auto_generated|mac_out6~DATAOUT10\ & !\Mult5|auto_generated|op_2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out4~DATAOUT10\,
	datab => \Mult5|auto_generated|mac_out6~DATAOUT10\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_2~19\,
	combout => \Mult5|auto_generated|op_2~20_combout\,
	cout => \Mult5|auto_generated|op_2~21\);

-- Location: LCCOMB_X21_Y4_N24
\Mult5|auto_generated|op_2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_2~22_combout\ = (\Mult5|auto_generated|mac_out6~DATAOUT11\ & ((\Mult5|auto_generated|mac_out4~DATAOUT11\ & (\Mult5|auto_generated|op_2~21\ & VCC)) # (!\Mult5|auto_generated|mac_out4~DATAOUT11\ & 
-- (!\Mult5|auto_generated|op_2~21\)))) # (!\Mult5|auto_generated|mac_out6~DATAOUT11\ & ((\Mult5|auto_generated|mac_out4~DATAOUT11\ & (!\Mult5|auto_generated|op_2~21\)) # (!\Mult5|auto_generated|mac_out4~DATAOUT11\ & ((\Mult5|auto_generated|op_2~21\) # 
-- (GND)))))
-- \Mult5|auto_generated|op_2~23\ = CARRY((\Mult5|auto_generated|mac_out6~DATAOUT11\ & (!\Mult5|auto_generated|mac_out4~DATAOUT11\ & !\Mult5|auto_generated|op_2~21\)) # (!\Mult5|auto_generated|mac_out6~DATAOUT11\ & ((!\Mult5|auto_generated|op_2~21\) # 
-- (!\Mult5|auto_generated|mac_out4~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out6~DATAOUT11\,
	datab => \Mult5|auto_generated|mac_out4~DATAOUT11\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_2~21\,
	combout => \Mult5|auto_generated|op_2~22_combout\,
	cout => \Mult5|auto_generated|op_2~23\);

-- Location: LCCOMB_X21_Y4_N26
\Mult5|auto_generated|op_2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_2~24_combout\ = ((\Mult5|auto_generated|mac_out6~DATAOUT12\ $ (\Mult5|auto_generated|mac_out4~DATAOUT12\ $ (!\Mult5|auto_generated|op_2~23\)))) # (GND)
-- \Mult5|auto_generated|op_2~25\ = CARRY((\Mult5|auto_generated|mac_out6~DATAOUT12\ & ((\Mult5|auto_generated|mac_out4~DATAOUT12\) # (!\Mult5|auto_generated|op_2~23\))) # (!\Mult5|auto_generated|mac_out6~DATAOUT12\ & 
-- (\Mult5|auto_generated|mac_out4~DATAOUT12\ & !\Mult5|auto_generated|op_2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out6~DATAOUT12\,
	datab => \Mult5|auto_generated|mac_out4~DATAOUT12\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_2~23\,
	combout => \Mult5|auto_generated|op_2~24_combout\,
	cout => \Mult5|auto_generated|op_2~25\);

-- Location: LCCOMB_X21_Y4_N28
\Mult5|auto_generated|op_2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_2~26_combout\ = \Mult5|auto_generated|mac_out4~DATAOUT13\ $ (\Mult5|auto_generated|op_2~25\ $ (\Mult5|auto_generated|mac_out6~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out4~DATAOUT13\,
	datad => \Mult5|auto_generated|mac_out6~DATAOUT13\,
	cin => \Mult5|auto_generated|op_2~25\,
	combout => \Mult5|auto_generated|op_2~26_combout\);

-- Location: LCCOMB_X22_Y7_N0
\Mult5|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_1~0_combout\ = (\Mult5|auto_generated|op_2~0_combout\ & (\Mult5|auto_generated|mac_out2~DATAOUT18\ $ (VCC))) # (!\Mult5|auto_generated|op_2~0_combout\ & (\Mult5|auto_generated|mac_out2~DATAOUT18\ & VCC))
-- \Mult5|auto_generated|op_1~1\ = CARRY((\Mult5|auto_generated|op_2~0_combout\ & \Mult5|auto_generated|mac_out2~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|op_2~0_combout\,
	datab => \Mult5|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	combout => \Mult5|auto_generated|op_1~0_combout\,
	cout => \Mult5|auto_generated|op_1~1\);

-- Location: LCCOMB_X22_Y7_N2
\Mult5|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_1~2_combout\ = (\Mult5|auto_generated|op_2~2_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT19\ & (\Mult5|auto_generated|op_1~1\ & VCC)) # (!\Mult5|auto_generated|mac_out2~DATAOUT19\ & (!\Mult5|auto_generated|op_1~1\)))) # 
-- (!\Mult5|auto_generated|op_2~2_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT19\ & (!\Mult5|auto_generated|op_1~1\)) # (!\Mult5|auto_generated|mac_out2~DATAOUT19\ & ((\Mult5|auto_generated|op_1~1\) # (GND)))))
-- \Mult5|auto_generated|op_1~3\ = CARRY((\Mult5|auto_generated|op_2~2_combout\ & (!\Mult5|auto_generated|mac_out2~DATAOUT19\ & !\Mult5|auto_generated|op_1~1\)) # (!\Mult5|auto_generated|op_2~2_combout\ & ((!\Mult5|auto_generated|op_1~1\) # 
-- (!\Mult5|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|op_2~2_combout\,
	datab => \Mult5|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_1~1\,
	combout => \Mult5|auto_generated|op_1~2_combout\,
	cout => \Mult5|auto_generated|op_1~3\);

-- Location: LCCOMB_X22_Y7_N4
\Mult5|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_1~4_combout\ = ((\Mult5|auto_generated|mac_out2~DATAOUT20\ $ (\Mult5|auto_generated|op_2~4_combout\ $ (!\Mult5|auto_generated|op_1~3\)))) # (GND)
-- \Mult5|auto_generated|op_1~5\ = CARRY((\Mult5|auto_generated|mac_out2~DATAOUT20\ & ((\Mult5|auto_generated|op_2~4_combout\) # (!\Mult5|auto_generated|op_1~3\))) # (!\Mult5|auto_generated|mac_out2~DATAOUT20\ & (\Mult5|auto_generated|op_2~4_combout\ & 
-- !\Mult5|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out2~DATAOUT20\,
	datab => \Mult5|auto_generated|op_2~4_combout\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_1~3\,
	combout => \Mult5|auto_generated|op_1~4_combout\,
	cout => \Mult5|auto_generated|op_1~5\);

-- Location: LCCOMB_X22_Y7_N6
\Mult5|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_1~6_combout\ = (\Mult5|auto_generated|op_2~6_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT21\ & (\Mult5|auto_generated|op_1~5\ & VCC)) # (!\Mult5|auto_generated|mac_out2~DATAOUT21\ & (!\Mult5|auto_generated|op_1~5\)))) # 
-- (!\Mult5|auto_generated|op_2~6_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT21\ & (!\Mult5|auto_generated|op_1~5\)) # (!\Mult5|auto_generated|mac_out2~DATAOUT21\ & ((\Mult5|auto_generated|op_1~5\) # (GND)))))
-- \Mult5|auto_generated|op_1~7\ = CARRY((\Mult5|auto_generated|op_2~6_combout\ & (!\Mult5|auto_generated|mac_out2~DATAOUT21\ & !\Mult5|auto_generated|op_1~5\)) # (!\Mult5|auto_generated|op_2~6_combout\ & ((!\Mult5|auto_generated|op_1~5\) # 
-- (!\Mult5|auto_generated|mac_out2~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|op_2~6_combout\,
	datab => \Mult5|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_1~5\,
	combout => \Mult5|auto_generated|op_1~6_combout\,
	cout => \Mult5|auto_generated|op_1~7\);

-- Location: LCCOMB_X22_Y7_N8
\Mult5|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_1~8_combout\ = ((\Mult5|auto_generated|mac_out2~DATAOUT22\ $ (\Mult5|auto_generated|op_2~8_combout\ $ (!\Mult5|auto_generated|op_1~7\)))) # (GND)
-- \Mult5|auto_generated|op_1~9\ = CARRY((\Mult5|auto_generated|mac_out2~DATAOUT22\ & ((\Mult5|auto_generated|op_2~8_combout\) # (!\Mult5|auto_generated|op_1~7\))) # (!\Mult5|auto_generated|mac_out2~DATAOUT22\ & (\Mult5|auto_generated|op_2~8_combout\ & 
-- !\Mult5|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out2~DATAOUT22\,
	datab => \Mult5|auto_generated|op_2~8_combout\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_1~7\,
	combout => \Mult5|auto_generated|op_1~8_combout\,
	cout => \Mult5|auto_generated|op_1~9\);

-- Location: LCCOMB_X22_Y7_N10
\Mult5|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_1~10_combout\ = (\Mult5|auto_generated|mac_out2~DATAOUT23\ & ((\Mult5|auto_generated|op_2~10_combout\ & (\Mult5|auto_generated|op_1~9\ & VCC)) # (!\Mult5|auto_generated|op_2~10_combout\ & (!\Mult5|auto_generated|op_1~9\)))) # 
-- (!\Mult5|auto_generated|mac_out2~DATAOUT23\ & ((\Mult5|auto_generated|op_2~10_combout\ & (!\Mult5|auto_generated|op_1~9\)) # (!\Mult5|auto_generated|op_2~10_combout\ & ((\Mult5|auto_generated|op_1~9\) # (GND)))))
-- \Mult5|auto_generated|op_1~11\ = CARRY((\Mult5|auto_generated|mac_out2~DATAOUT23\ & (!\Mult5|auto_generated|op_2~10_combout\ & !\Mult5|auto_generated|op_1~9\)) # (!\Mult5|auto_generated|mac_out2~DATAOUT23\ & ((!\Mult5|auto_generated|op_1~9\) # 
-- (!\Mult5|auto_generated|op_2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out2~DATAOUT23\,
	datab => \Mult5|auto_generated|op_2~10_combout\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_1~9\,
	combout => \Mult5|auto_generated|op_1~10_combout\,
	cout => \Mult5|auto_generated|op_1~11\);

-- Location: LCCOMB_X22_Y7_N12
\Mult5|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_1~12_combout\ = ((\Mult5|auto_generated|op_2~12_combout\ $ (\Mult5|auto_generated|mac_out2~DATAOUT24\ $ (!\Mult5|auto_generated|op_1~11\)))) # (GND)
-- \Mult5|auto_generated|op_1~13\ = CARRY((\Mult5|auto_generated|op_2~12_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT24\) # (!\Mult5|auto_generated|op_1~11\))) # (!\Mult5|auto_generated|op_2~12_combout\ & (\Mult5|auto_generated|mac_out2~DATAOUT24\ & 
-- !\Mult5|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|op_2~12_combout\,
	datab => \Mult5|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_1~11\,
	combout => \Mult5|auto_generated|op_1~12_combout\,
	cout => \Mult5|auto_generated|op_1~13\);

-- Location: LCCOMB_X22_Y7_N14
\Mult5|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_1~14_combout\ = (\Mult5|auto_generated|op_2~14_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT25\ & (\Mult5|auto_generated|op_1~13\ & VCC)) # (!\Mult5|auto_generated|mac_out2~DATAOUT25\ & (!\Mult5|auto_generated|op_1~13\)))) # 
-- (!\Mult5|auto_generated|op_2~14_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT25\ & (!\Mult5|auto_generated|op_1~13\)) # (!\Mult5|auto_generated|mac_out2~DATAOUT25\ & ((\Mult5|auto_generated|op_1~13\) # (GND)))))
-- \Mult5|auto_generated|op_1~15\ = CARRY((\Mult5|auto_generated|op_2~14_combout\ & (!\Mult5|auto_generated|mac_out2~DATAOUT25\ & !\Mult5|auto_generated|op_1~13\)) # (!\Mult5|auto_generated|op_2~14_combout\ & ((!\Mult5|auto_generated|op_1~13\) # 
-- (!\Mult5|auto_generated|mac_out2~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|op_2~14_combout\,
	datab => \Mult5|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_1~13\,
	combout => \Mult5|auto_generated|op_1~14_combout\,
	cout => \Mult5|auto_generated|op_1~15\);

-- Location: LCCOMB_X22_Y7_N16
\Mult5|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_1~16_combout\ = ((\Mult5|auto_generated|mac_out2~DATAOUT26\ $ (\Mult5|auto_generated|op_2~16_combout\ $ (!\Mult5|auto_generated|op_1~15\)))) # (GND)
-- \Mult5|auto_generated|op_1~17\ = CARRY((\Mult5|auto_generated|mac_out2~DATAOUT26\ & ((\Mult5|auto_generated|op_2~16_combout\) # (!\Mult5|auto_generated|op_1~15\))) # (!\Mult5|auto_generated|mac_out2~DATAOUT26\ & (\Mult5|auto_generated|op_2~16_combout\ & 
-- !\Mult5|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|mac_out2~DATAOUT26\,
	datab => \Mult5|auto_generated|op_2~16_combout\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_1~15\,
	combout => \Mult5|auto_generated|op_1~16_combout\,
	cout => \Mult5|auto_generated|op_1~17\);

-- Location: LCCOMB_X22_Y7_N18
\Mult5|auto_generated|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_1~18_combout\ = (\Mult5|auto_generated|op_2~18_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT27\ & (\Mult5|auto_generated|op_1~17\ & VCC)) # (!\Mult5|auto_generated|mac_out2~DATAOUT27\ & (!\Mult5|auto_generated|op_1~17\)))) # 
-- (!\Mult5|auto_generated|op_2~18_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT27\ & (!\Mult5|auto_generated|op_1~17\)) # (!\Mult5|auto_generated|mac_out2~DATAOUT27\ & ((\Mult5|auto_generated|op_1~17\) # (GND)))))
-- \Mult5|auto_generated|op_1~19\ = CARRY((\Mult5|auto_generated|op_2~18_combout\ & (!\Mult5|auto_generated|mac_out2~DATAOUT27\ & !\Mult5|auto_generated|op_1~17\)) # (!\Mult5|auto_generated|op_2~18_combout\ & ((!\Mult5|auto_generated|op_1~17\) # 
-- (!\Mult5|auto_generated|mac_out2~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|op_2~18_combout\,
	datab => \Mult5|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_1~17\,
	combout => \Mult5|auto_generated|op_1~18_combout\,
	cout => \Mult5|auto_generated|op_1~19\);

-- Location: LCCOMB_X22_Y7_N20
\Mult5|auto_generated|op_1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_1~20_combout\ = ((\Mult5|auto_generated|op_2~20_combout\ $ (\Mult5|auto_generated|mac_out2~DATAOUT28\ $ (!\Mult5|auto_generated|op_1~19\)))) # (GND)
-- \Mult5|auto_generated|op_1~21\ = CARRY((\Mult5|auto_generated|op_2~20_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT28\) # (!\Mult5|auto_generated|op_1~19\))) # (!\Mult5|auto_generated|op_2~20_combout\ & (\Mult5|auto_generated|mac_out2~DATAOUT28\ & 
-- !\Mult5|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|op_2~20_combout\,
	datab => \Mult5|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_1~19\,
	combout => \Mult5|auto_generated|op_1~20_combout\,
	cout => \Mult5|auto_generated|op_1~21\);

-- Location: LCCOMB_X22_Y7_N22
\Mult5|auto_generated|op_1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_1~22_combout\ = (\Mult5|auto_generated|op_2~22_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT29\ & (\Mult5|auto_generated|op_1~21\ & VCC)) # (!\Mult5|auto_generated|mac_out2~DATAOUT29\ & (!\Mult5|auto_generated|op_1~21\)))) # 
-- (!\Mult5|auto_generated|op_2~22_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT29\ & (!\Mult5|auto_generated|op_1~21\)) # (!\Mult5|auto_generated|mac_out2~DATAOUT29\ & ((\Mult5|auto_generated|op_1~21\) # (GND)))))
-- \Mult5|auto_generated|op_1~23\ = CARRY((\Mult5|auto_generated|op_2~22_combout\ & (!\Mult5|auto_generated|mac_out2~DATAOUT29\ & !\Mult5|auto_generated|op_1~21\)) # (!\Mult5|auto_generated|op_2~22_combout\ & ((!\Mult5|auto_generated|op_1~21\) # 
-- (!\Mult5|auto_generated|mac_out2~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|op_2~22_combout\,
	datab => \Mult5|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_1~21\,
	combout => \Mult5|auto_generated|op_1~22_combout\,
	cout => \Mult5|auto_generated|op_1~23\);

-- Location: LCCOMB_X22_Y7_N24
\Mult5|auto_generated|op_1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_1~24_combout\ = ((\Mult5|auto_generated|op_2~24_combout\ $ (\Mult5|auto_generated|mac_out2~DATAOUT30\ $ (!\Mult5|auto_generated|op_1~23\)))) # (GND)
-- \Mult5|auto_generated|op_1~25\ = CARRY((\Mult5|auto_generated|op_2~24_combout\ & ((\Mult5|auto_generated|mac_out2~DATAOUT30\) # (!\Mult5|auto_generated|op_1~23\))) # (!\Mult5|auto_generated|op_2~24_combout\ & (\Mult5|auto_generated|mac_out2~DATAOUT30\ & 
-- !\Mult5|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|op_2~24_combout\,
	datab => \Mult5|auto_generated|mac_out2~DATAOUT30\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_1~23\,
	combout => \Mult5|auto_generated|op_1~24_combout\,
	cout => \Mult5|auto_generated|op_1~25\);

-- Location: LCCOMB_X22_Y7_N26
\Mult5|auto_generated|op_1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_1~26_combout\ = \Mult5|auto_generated|mac_out2~DATAOUT31\ $ (\Mult5|auto_generated|op_1~25\ $ (\Mult5|auto_generated|op_2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult5|auto_generated|mac_out2~DATAOUT31\,
	datad => \Mult5|auto_generated|op_2~26_combout\,
	cin => \Mult5|auto_generated|op_1~25\,
	combout => \Mult5|auto_generated|op_1~26_combout\);

-- Location: LCCOMB_X21_Y12_N2
\Add9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~1_cout\ = CARRY((\Mult4|auto_generated|w569w\(2) & \Mult5|auto_generated|w569w\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|w569w\(2),
	datab => \Mult5|auto_generated|w569w\(2),
	datad => VCC,
	cout => \Add9~1_cout\);

-- Location: LCCOMB_X21_Y12_N4
\Add9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~3_cout\ = CARRY((\Mult5|auto_generated|w569w\(3) & (!\Mult4|auto_generated|w569w\(3) & !\Add9~1_cout\)) # (!\Mult5|auto_generated|w569w\(3) & ((!\Add9~1_cout\) # (!\Mult4|auto_generated|w569w\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|w569w\(3),
	datab => \Mult4|auto_generated|w569w\(3),
	datad => VCC,
	cin => \Add9~1_cout\,
	cout => \Add9~3_cout\);

-- Location: LCCOMB_X21_Y12_N6
\Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = ((\Mult5|auto_generated|w569w\(4) $ (\Mult4|auto_generated|w569w\(4) $ (!\Add9~3_cout\)))) # (GND)
-- \Add9~5\ = CARRY((\Mult5|auto_generated|w569w\(4) & ((\Mult4|auto_generated|w569w\(4)) # (!\Add9~3_cout\))) # (!\Mult5|auto_generated|w569w\(4) & (\Mult4|auto_generated|w569w\(4) & !\Add9~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|w569w\(4),
	datab => \Mult4|auto_generated|w569w\(4),
	datad => VCC,
	cin => \Add9~3_cout\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X21_Y12_N8
\Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (\Mult5|auto_generated|w569w\(5) & ((\Mult4|auto_generated|w569w\(5) & (\Add9~5\ & VCC)) # (!\Mult4|auto_generated|w569w\(5) & (!\Add9~5\)))) # (!\Mult5|auto_generated|w569w\(5) & ((\Mult4|auto_generated|w569w\(5) & (!\Add9~5\)) # 
-- (!\Mult4|auto_generated|w569w\(5) & ((\Add9~5\) # (GND)))))
-- \Add9~7\ = CARRY((\Mult5|auto_generated|w569w\(5) & (!\Mult4|auto_generated|w569w\(5) & !\Add9~5\)) # (!\Mult5|auto_generated|w569w\(5) & ((!\Add9~5\) # (!\Mult4|auto_generated|w569w\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|w569w\(5),
	datab => \Mult4|auto_generated|w569w\(5),
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X21_Y12_N10
\Add9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = ((\Mult5|auto_generated|w569w\(6) $ (\Mult4|auto_generated|w569w\(6) $ (!\Add9~7\)))) # (GND)
-- \Add9~9\ = CARRY((\Mult5|auto_generated|w569w\(6) & ((\Mult4|auto_generated|w569w\(6)) # (!\Add9~7\))) # (!\Mult5|auto_generated|w569w\(6) & (\Mult4|auto_generated|w569w\(6) & !\Add9~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|w569w\(6),
	datab => \Mult4|auto_generated|w569w\(6),
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X21_Y12_N12
\Add9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (\Mult4|auto_generated|w569w\(7) & ((\Mult5|auto_generated|w569w\(7) & (\Add9~9\ & VCC)) # (!\Mult5|auto_generated|w569w\(7) & (!\Add9~9\)))) # (!\Mult4|auto_generated|w569w\(7) & ((\Mult5|auto_generated|w569w\(7) & (!\Add9~9\)) # 
-- (!\Mult5|auto_generated|w569w\(7) & ((\Add9~9\) # (GND)))))
-- \Add9~11\ = CARRY((\Mult4|auto_generated|w569w\(7) & (!\Mult5|auto_generated|w569w\(7) & !\Add9~9\)) # (!\Mult4|auto_generated|w569w\(7) & ((!\Add9~9\) # (!\Mult5|auto_generated|w569w\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|w569w\(7),
	datab => \Mult5|auto_generated|w569w\(7),
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X21_Y12_N14
\Add9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = ((\Mult4|auto_generated|w569w\(8) $ (\Mult5|auto_generated|w569w\(8) $ (!\Add9~11\)))) # (GND)
-- \Add9~13\ = CARRY((\Mult4|auto_generated|w569w\(8) & ((\Mult5|auto_generated|w569w\(8)) # (!\Add9~11\))) # (!\Mult4|auto_generated|w569w\(8) & (\Mult5|auto_generated|w569w\(8) & !\Add9~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|w569w\(8),
	datab => \Mult5|auto_generated|w569w\(8),
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: LCCOMB_X21_Y12_N16
\Add9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = (\Mult4|auto_generated|w569w\(9) & ((\Mult5|auto_generated|w569w\(9) & (\Add9~13\ & VCC)) # (!\Mult5|auto_generated|w569w\(9) & (!\Add9~13\)))) # (!\Mult4|auto_generated|w569w\(9) & ((\Mult5|auto_generated|w569w\(9) & (!\Add9~13\)) # 
-- (!\Mult5|auto_generated|w569w\(9) & ((\Add9~13\) # (GND)))))
-- \Add9~15\ = CARRY((\Mult4|auto_generated|w569w\(9) & (!\Mult5|auto_generated|w569w\(9) & !\Add9~13\)) # (!\Mult4|auto_generated|w569w\(9) & ((!\Add9~13\) # (!\Mult5|auto_generated|w569w\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|w569w\(9),
	datab => \Mult5|auto_generated|w569w\(9),
	datad => VCC,
	cin => \Add9~13\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: LCCOMB_X21_Y12_N18
\Add9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = ((\Mult5|auto_generated|w569w\(10) $ (\Mult4|auto_generated|w569w\(10) $ (!\Add9~15\)))) # (GND)
-- \Add9~17\ = CARRY((\Mult5|auto_generated|w569w\(10) & ((\Mult4|auto_generated|w569w\(10)) # (!\Add9~15\))) # (!\Mult5|auto_generated|w569w\(10) & (\Mult4|auto_generated|w569w\(10) & !\Add9~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|w569w\(10),
	datab => \Mult4|auto_generated|w569w\(10),
	datad => VCC,
	cin => \Add9~15\,
	combout => \Add9~16_combout\,
	cout => \Add9~17\);

-- Location: LCCOMB_X21_Y12_N20
\Add9~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~18_combout\ = (\Mult5|auto_generated|w569w\(11) & ((\Mult4|auto_generated|w569w\(11) & (\Add9~17\ & VCC)) # (!\Mult4|auto_generated|w569w\(11) & (!\Add9~17\)))) # (!\Mult5|auto_generated|w569w\(11) & ((\Mult4|auto_generated|w569w\(11) & 
-- (!\Add9~17\)) # (!\Mult4|auto_generated|w569w\(11) & ((\Add9~17\) # (GND)))))
-- \Add9~19\ = CARRY((\Mult5|auto_generated|w569w\(11) & (!\Mult4|auto_generated|w569w\(11) & !\Add9~17\)) # (!\Mult5|auto_generated|w569w\(11) & ((!\Add9~17\) # (!\Mult4|auto_generated|w569w\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|w569w\(11),
	datab => \Mult4|auto_generated|w569w\(11),
	datad => VCC,
	cin => \Add9~17\,
	combout => \Add9~18_combout\,
	cout => \Add9~19\);

-- Location: LCCOMB_X21_Y12_N22
\Add9~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~20_combout\ = ((\Mult4|auto_generated|w569w\(12) $ (\Mult5|auto_generated|w569w\(12) $ (!\Add9~19\)))) # (GND)
-- \Add9~21\ = CARRY((\Mult4|auto_generated|w569w\(12) & ((\Mult5|auto_generated|w569w\(12)) # (!\Add9~19\))) # (!\Mult4|auto_generated|w569w\(12) & (\Mult5|auto_generated|w569w\(12) & !\Add9~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|w569w\(12),
	datab => \Mult5|auto_generated|w569w\(12),
	datad => VCC,
	cin => \Add9~19\,
	combout => \Add9~20_combout\,
	cout => \Add9~21\);

-- Location: LCCOMB_X21_Y12_N24
\Add9~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~22_combout\ = (\Mult4|auto_generated|w569w\(13) & ((\Mult5|auto_generated|w569w\(13) & (\Add9~21\ & VCC)) # (!\Mult5|auto_generated|w569w\(13) & (!\Add9~21\)))) # (!\Mult4|auto_generated|w569w\(13) & ((\Mult5|auto_generated|w569w\(13) & 
-- (!\Add9~21\)) # (!\Mult5|auto_generated|w569w\(13) & ((\Add9~21\) # (GND)))))
-- \Add9~23\ = CARRY((\Mult4|auto_generated|w569w\(13) & (!\Mult5|auto_generated|w569w\(13) & !\Add9~21\)) # (!\Mult4|auto_generated|w569w\(13) & ((!\Add9~21\) # (!\Mult5|auto_generated|w569w\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|w569w\(13),
	datab => \Mult5|auto_generated|w569w\(13),
	datad => VCC,
	cin => \Add9~21\,
	combout => \Add9~22_combout\,
	cout => \Add9~23\);

-- Location: LCCOMB_X21_Y12_N26
\Add9~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~24_combout\ = ((\Mult5|auto_generated|w569w\(14) $ (\Mult4|auto_generated|w569w\(14) $ (!\Add9~23\)))) # (GND)
-- \Add9~25\ = CARRY((\Mult5|auto_generated|w569w\(14) & ((\Mult4|auto_generated|w569w\(14)) # (!\Add9~23\))) # (!\Mult5|auto_generated|w569w\(14) & (\Mult4|auto_generated|w569w\(14) & !\Add9~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|w569w\(14),
	datab => \Mult4|auto_generated|w569w\(14),
	datad => VCC,
	cin => \Add9~23\,
	combout => \Add9~24_combout\,
	cout => \Add9~25\);

-- Location: LCCOMB_X21_Y12_N28
\Add9~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~26_combout\ = (\Mult4|auto_generated|w569w\(15) & ((\Mult5|auto_generated|w569w\(15) & (\Add9~25\ & VCC)) # (!\Mult5|auto_generated|w569w\(15) & (!\Add9~25\)))) # (!\Mult4|auto_generated|w569w\(15) & ((\Mult5|auto_generated|w569w\(15) & 
-- (!\Add9~25\)) # (!\Mult5|auto_generated|w569w\(15) & ((\Add9~25\) # (GND)))))
-- \Add9~27\ = CARRY((\Mult4|auto_generated|w569w\(15) & (!\Mult5|auto_generated|w569w\(15) & !\Add9~25\)) # (!\Mult4|auto_generated|w569w\(15) & ((!\Add9~25\) # (!\Mult5|auto_generated|w569w\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|w569w\(15),
	datab => \Mult5|auto_generated|w569w\(15),
	datad => VCC,
	cin => \Add9~25\,
	combout => \Add9~26_combout\,
	cout => \Add9~27\);

-- Location: LCCOMB_X21_Y12_N30
\Add9~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~28_combout\ = ((\Mult4|auto_generated|w569w\(16) $ (\Mult5|auto_generated|w569w\(16) $ (!\Add9~27\)))) # (GND)
-- \Add9~29\ = CARRY((\Mult4|auto_generated|w569w\(16) & ((\Mult5|auto_generated|w569w\(16)) # (!\Add9~27\))) # (!\Mult4|auto_generated|w569w\(16) & (\Mult5|auto_generated|w569w\(16) & !\Add9~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|w569w\(16),
	datab => \Mult5|auto_generated|w569w\(16),
	datad => VCC,
	cin => \Add9~27\,
	combout => \Add9~28_combout\,
	cout => \Add9~29\);

-- Location: LCCOMB_X21_Y11_N0
\Add9~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~30_combout\ = (\Mult5|auto_generated|w569w\(17) & ((\Mult4|auto_generated|w569w\(17) & (\Add9~29\ & VCC)) # (!\Mult4|auto_generated|w569w\(17) & (!\Add9~29\)))) # (!\Mult5|auto_generated|w569w\(17) & ((\Mult4|auto_generated|w569w\(17) & 
-- (!\Add9~29\)) # (!\Mult4|auto_generated|w569w\(17) & ((\Add9~29\) # (GND)))))
-- \Add9~31\ = CARRY((\Mult5|auto_generated|w569w\(17) & (!\Mult4|auto_generated|w569w\(17) & !\Add9~29\)) # (!\Mult5|auto_generated|w569w\(17) & ((!\Add9~29\) # (!\Mult4|auto_generated|w569w\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|w569w\(17),
	datab => \Mult4|auto_generated|w569w\(17),
	datad => VCC,
	cin => \Add9~29\,
	combout => \Add9~30_combout\,
	cout => \Add9~31\);

-- Location: LCCOMB_X21_Y11_N2
\Add9~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~32_combout\ = ((\Mult5|auto_generated|op_1~0_combout\ $ (\Mult4|auto_generated|op_1~0_combout\ $ (!\Add9~31\)))) # (GND)
-- \Add9~33\ = CARRY((\Mult5|auto_generated|op_1~0_combout\ & ((\Mult4|auto_generated|op_1~0_combout\) # (!\Add9~31\))) # (!\Mult5|auto_generated|op_1~0_combout\ & (\Mult4|auto_generated|op_1~0_combout\ & !\Add9~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|op_1~0_combout\,
	datab => \Mult4|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Add9~31\,
	combout => \Add9~32_combout\,
	cout => \Add9~33\);

-- Location: LCCOMB_X21_Y11_N4
\Add9~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~34_combout\ = (\Mult5|auto_generated|op_1~2_combout\ & ((\Mult4|auto_generated|op_1~2_combout\ & (\Add9~33\ & VCC)) # (!\Mult4|auto_generated|op_1~2_combout\ & (!\Add9~33\)))) # (!\Mult5|auto_generated|op_1~2_combout\ & 
-- ((\Mult4|auto_generated|op_1~2_combout\ & (!\Add9~33\)) # (!\Mult4|auto_generated|op_1~2_combout\ & ((\Add9~33\) # (GND)))))
-- \Add9~35\ = CARRY((\Mult5|auto_generated|op_1~2_combout\ & (!\Mult4|auto_generated|op_1~2_combout\ & !\Add9~33\)) # (!\Mult5|auto_generated|op_1~2_combout\ & ((!\Add9~33\) # (!\Mult4|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|op_1~2_combout\,
	datab => \Mult4|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \Add9~33\,
	combout => \Add9~34_combout\,
	cout => \Add9~35\);

-- Location: LCCOMB_X21_Y11_N6
\Add9~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~36_combout\ = ((\Mult5|auto_generated|op_1~4_combout\ $ (\Mult4|auto_generated|op_1~4_combout\ $ (!\Add9~35\)))) # (GND)
-- \Add9~37\ = CARRY((\Mult5|auto_generated|op_1~4_combout\ & ((\Mult4|auto_generated|op_1~4_combout\) # (!\Add9~35\))) # (!\Mult5|auto_generated|op_1~4_combout\ & (\Mult4|auto_generated|op_1~4_combout\ & !\Add9~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|op_1~4_combout\,
	datab => \Mult4|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \Add9~35\,
	combout => \Add9~36_combout\,
	cout => \Add9~37\);

-- Location: LCCOMB_X21_Y11_N8
\Add9~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~38_combout\ = (\Mult5|auto_generated|op_1~6_combout\ & ((\Mult4|auto_generated|op_1~6_combout\ & (\Add9~37\ & VCC)) # (!\Mult4|auto_generated|op_1~6_combout\ & (!\Add9~37\)))) # (!\Mult5|auto_generated|op_1~6_combout\ & 
-- ((\Mult4|auto_generated|op_1~6_combout\ & (!\Add9~37\)) # (!\Mult4|auto_generated|op_1~6_combout\ & ((\Add9~37\) # (GND)))))
-- \Add9~39\ = CARRY((\Mult5|auto_generated|op_1~6_combout\ & (!\Mult4|auto_generated|op_1~6_combout\ & !\Add9~37\)) # (!\Mult5|auto_generated|op_1~6_combout\ & ((!\Add9~37\) # (!\Mult4|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|op_1~6_combout\,
	datab => \Mult4|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \Add9~37\,
	combout => \Add9~38_combout\,
	cout => \Add9~39\);

-- Location: LCCOMB_X21_Y11_N10
\Add9~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~40_combout\ = ((\Mult5|auto_generated|op_1~8_combout\ $ (\Mult4|auto_generated|op_1~8_combout\ $ (!\Add9~39\)))) # (GND)
-- \Add9~41\ = CARRY((\Mult5|auto_generated|op_1~8_combout\ & ((\Mult4|auto_generated|op_1~8_combout\) # (!\Add9~39\))) # (!\Mult5|auto_generated|op_1~8_combout\ & (\Mult4|auto_generated|op_1~8_combout\ & !\Add9~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|op_1~8_combout\,
	datab => \Mult4|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \Add9~39\,
	combout => \Add9~40_combout\,
	cout => \Add9~41\);

-- Location: LCCOMB_X21_Y11_N12
\Add9~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~42_combout\ = (\Mult4|auto_generated|op_1~10_combout\ & ((\Mult5|auto_generated|op_1~10_combout\ & (\Add9~41\ & VCC)) # (!\Mult5|auto_generated|op_1~10_combout\ & (!\Add9~41\)))) # (!\Mult4|auto_generated|op_1~10_combout\ & 
-- ((\Mult5|auto_generated|op_1~10_combout\ & (!\Add9~41\)) # (!\Mult5|auto_generated|op_1~10_combout\ & ((\Add9~41\) # (GND)))))
-- \Add9~43\ = CARRY((\Mult4|auto_generated|op_1~10_combout\ & (!\Mult5|auto_generated|op_1~10_combout\ & !\Add9~41\)) # (!\Mult4|auto_generated|op_1~10_combout\ & ((!\Add9~41\) # (!\Mult5|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|op_1~10_combout\,
	datab => \Mult5|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \Add9~41\,
	combout => \Add9~42_combout\,
	cout => \Add9~43\);

-- Location: LCCOMB_X21_Y11_N14
\Add9~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~44_combout\ = ((\Mult5|auto_generated|op_1~12_combout\ $ (\Mult4|auto_generated|op_1~12_combout\ $ (!\Add9~43\)))) # (GND)
-- \Add9~45\ = CARRY((\Mult5|auto_generated|op_1~12_combout\ & ((\Mult4|auto_generated|op_1~12_combout\) # (!\Add9~43\))) # (!\Mult5|auto_generated|op_1~12_combout\ & (\Mult4|auto_generated|op_1~12_combout\ & !\Add9~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|op_1~12_combout\,
	datab => \Mult4|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \Add9~43\,
	combout => \Add9~44_combout\,
	cout => \Add9~45\);

-- Location: LCCOMB_X21_Y11_N16
\Add9~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~46_combout\ = (\Mult4|auto_generated|op_1~14_combout\ & ((\Mult5|auto_generated|op_1~14_combout\ & (\Add9~45\ & VCC)) # (!\Mult5|auto_generated|op_1~14_combout\ & (!\Add9~45\)))) # (!\Mult4|auto_generated|op_1~14_combout\ & 
-- ((\Mult5|auto_generated|op_1~14_combout\ & (!\Add9~45\)) # (!\Mult5|auto_generated|op_1~14_combout\ & ((\Add9~45\) # (GND)))))
-- \Add9~47\ = CARRY((\Mult4|auto_generated|op_1~14_combout\ & (!\Mult5|auto_generated|op_1~14_combout\ & !\Add9~45\)) # (!\Mult4|auto_generated|op_1~14_combout\ & ((!\Add9~45\) # (!\Mult5|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|op_1~14_combout\,
	datab => \Mult5|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \Add9~45\,
	combout => \Add9~46_combout\,
	cout => \Add9~47\);

-- Location: LCCOMB_X21_Y11_N18
\Add9~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~48_combout\ = ((\Mult4|auto_generated|op_1~16_combout\ $ (\Mult5|auto_generated|op_1~16_combout\ $ (!\Add9~47\)))) # (GND)
-- \Add9~49\ = CARRY((\Mult4|auto_generated|op_1~16_combout\ & ((\Mult5|auto_generated|op_1~16_combout\) # (!\Add9~47\))) # (!\Mult4|auto_generated|op_1~16_combout\ & (\Mult5|auto_generated|op_1~16_combout\ & !\Add9~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|op_1~16_combout\,
	datab => \Mult5|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \Add9~47\,
	combout => \Add9~48_combout\,
	cout => \Add9~49\);

-- Location: LCCOMB_X21_Y11_N20
\Add9~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~50_combout\ = (\Mult4|auto_generated|op_1~18_combout\ & ((\Mult5|auto_generated|op_1~18_combout\ & (\Add9~49\ & VCC)) # (!\Mult5|auto_generated|op_1~18_combout\ & (!\Add9~49\)))) # (!\Mult4|auto_generated|op_1~18_combout\ & 
-- ((\Mult5|auto_generated|op_1~18_combout\ & (!\Add9~49\)) # (!\Mult5|auto_generated|op_1~18_combout\ & ((\Add9~49\) # (GND)))))
-- \Add9~51\ = CARRY((\Mult4|auto_generated|op_1~18_combout\ & (!\Mult5|auto_generated|op_1~18_combout\ & !\Add9~49\)) # (!\Mult4|auto_generated|op_1~18_combout\ & ((!\Add9~49\) # (!\Mult5|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|op_1~18_combout\,
	datab => \Mult5|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \Add9~49\,
	combout => \Add9~50_combout\,
	cout => \Add9~51\);

-- Location: LCCOMB_X21_Y11_N22
\Add9~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~52_combout\ = ((\Mult5|auto_generated|op_1~20_combout\ $ (\Mult4|auto_generated|op_1~20_combout\ $ (!\Add9~51\)))) # (GND)
-- \Add9~53\ = CARRY((\Mult5|auto_generated|op_1~20_combout\ & ((\Mult4|auto_generated|op_1~20_combout\) # (!\Add9~51\))) # (!\Mult5|auto_generated|op_1~20_combout\ & (\Mult4|auto_generated|op_1~20_combout\ & !\Add9~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|op_1~20_combout\,
	datab => \Mult4|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \Add9~51\,
	combout => \Add9~52_combout\,
	cout => \Add9~53\);

-- Location: LCCOMB_X21_Y11_N24
\Add9~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~54_combout\ = (\Mult4|auto_generated|op_1~22_combout\ & ((\Mult5|auto_generated|op_1~22_combout\ & (\Add9~53\ & VCC)) # (!\Mult5|auto_generated|op_1~22_combout\ & (!\Add9~53\)))) # (!\Mult4|auto_generated|op_1~22_combout\ & 
-- ((\Mult5|auto_generated|op_1~22_combout\ & (!\Add9~53\)) # (!\Mult5|auto_generated|op_1~22_combout\ & ((\Add9~53\) # (GND)))))
-- \Add9~55\ = CARRY((\Mult4|auto_generated|op_1~22_combout\ & (!\Mult5|auto_generated|op_1~22_combout\ & !\Add9~53\)) # (!\Mult4|auto_generated|op_1~22_combout\ & ((!\Add9~53\) # (!\Mult5|auto_generated|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|op_1~22_combout\,
	datab => \Mult5|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \Add9~53\,
	combout => \Add9~54_combout\,
	cout => \Add9~55\);

-- Location: LCCOMB_X21_Y11_N26
\Add9~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~56_combout\ = ((\Mult5|auto_generated|op_1~24_combout\ $ (\Mult4|auto_generated|op_1~24_combout\ $ (!\Add9~55\)))) # (GND)
-- \Add9~57\ = CARRY((\Mult5|auto_generated|op_1~24_combout\ & ((\Mult4|auto_generated|op_1~24_combout\) # (!\Add9~55\))) # (!\Mult5|auto_generated|op_1~24_combout\ & (\Mult4|auto_generated|op_1~24_combout\ & !\Add9~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|op_1~24_combout\,
	datab => \Mult4|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \Add9~55\,
	combout => \Add9~56_combout\,
	cout => \Add9~57\);

-- Location: LCCOMB_X21_Y11_N28
\Add9~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~58_combout\ = \Mult4|auto_generated|op_1~26_combout\ $ (\Add9~57\ $ (\Mult5|auto_generated|op_1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult4|auto_generated|op_1~26_combout\,
	datad => \Mult5|auto_generated|op_1~26_combout\,
	cin => \Add9~57\,
	combout => \Add9~58_combout\);

-- Location: LCCOMB_X21_Y11_N30
\LessThan52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan52~1_combout\ = (!\Add9~52_combout\ & (!\Add9~48_combout\ & (!\Add9~46_combout\ & !\Add9~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~52_combout\,
	datab => \Add9~48_combout\,
	datac => \Add9~46_combout\,
	datad => \Add9~50_combout\,
	combout => \LessThan52~1_combout\);

-- Location: LCCOMB_X22_Y12_N20
\LessThan52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan52~0_combout\ = (!\Add9~34_combout\ & (!\Add9~30_combout\ & (!\Add9~32_combout\ & !\Add9~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~34_combout\,
	datab => \Add9~30_combout\,
	datac => \Add9~32_combout\,
	datad => \Add9~36_combout\,
	combout => \LessThan52~0_combout\);

-- Location: LCCOMB_X22_Y12_N22
\LessThan52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan52~2_combout\ = (\Add9~40_combout\) # ((\Add9~44_combout\) # (\Add9~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~40_combout\,
	datac => \Add9~44_combout\,
	datad => \Add9~54_combout\,
	combout => \LessThan52~2_combout\);

-- Location: LCCOMB_X21_Y12_N0
\LessThan52~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan52~5_combout\ = ((!\Add9~4_combout\ & (!\Add9~6_combout\ & !\Add9~8_combout\))) # (!\Add9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~4_combout\,
	datab => \Add9~6_combout\,
	datac => \Add9~10_combout\,
	datad => \Add9~8_combout\,
	combout => \LessThan52~5_combout\);

-- Location: LCCOMB_X19_Y12_N30
\LessThan52~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan52~4_combout\ = (!\Add9~22_combout\ & (!\Add9~24_combout\ & (!\Add9~26_combout\ & !\Add9~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~22_combout\,
	datab => \Add9~24_combout\,
	datac => \Add9~26_combout\,
	datad => \Add9~28_combout\,
	combout => \LessThan52~4_combout\);

-- Location: LCCOMB_X19_Y12_N16
\LessThan52~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan52~3_combout\ = (!\Add9~20_combout\ & (!\Add9~14_combout\ & (!\Add9~16_combout\ & !\Add9~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~20_combout\,
	datab => \Add9~14_combout\,
	datac => \Add9~16_combout\,
	datad => \Add9~18_combout\,
	combout => \LessThan52~3_combout\);

-- Location: LCCOMB_X22_Y12_N28
\LessThan52~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan52~6_combout\ = (\LessThan52~4_combout\ & (\LessThan52~3_combout\ & ((\LessThan52~5_combout\) # (!\Add9~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan52~5_combout\,
	datab => \LessThan52~4_combout\,
	datac => \LessThan52~3_combout\,
	datad => \Add9~12_combout\,
	combout => \LessThan52~6_combout\);

-- Location: LCCOMB_X22_Y12_N6
\LessThan52~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan52~7_combout\ = (!\Add9~38_combout\ & (\LessThan52~6_combout\ & (!\Add9~42_combout\ & !\Add9~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~38_combout\,
	datab => \LessThan52~6_combout\,
	datac => \Add9~42_combout\,
	datad => \Add9~56_combout\,
	combout => \LessThan52~7_combout\);

-- Location: LCCOMB_X22_Y12_N24
\LessThan52~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan52~8_combout\ = (\LessThan52~1_combout\ & (\LessThan52~0_combout\ & (!\LessThan52~2_combout\ & \LessThan52~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan52~1_combout\,
	datab => \LessThan52~0_combout\,
	datac => \LessThan52~2_combout\,
	datad => \LessThan52~7_combout\,
	combout => \LessThan52~8_combout\);

-- Location: LCCOMB_X22_Y12_N14
\RGB~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~25_combout\ = (\RGB~19_combout\) # (\LessThan52~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RGB~19_combout\,
	datad => \LessThan52~8_combout\,
	combout => \RGB~25_combout\);

-- Location: LCCOMB_X23_Y12_N30
\LessThan51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan51~0_combout\ = (!\Add6~40_combout\ & (!\Add6~38_combout\ & (!\Add6~44_combout\ & !\Add6~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~40_combout\,
	datab => \Add6~38_combout\,
	datac => \Add6~44_combout\,
	datad => \Add6~42_combout\,
	combout => \LessThan51~0_combout\);

-- Location: LCCOMB_X23_Y13_N0
\LessThan51~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan51~3_combout\ = ((!\Add6~4_combout\ & (!\Add6~6_combout\ & !\Add6~8_combout\))) # (!\Add6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~4_combout\,
	datab => \Add6~10_combout\,
	datac => \Add6~6_combout\,
	datad => \Add6~8_combout\,
	combout => \LessThan51~3_combout\);

-- Location: LCCOMB_X22_Y13_N30
\LessThan51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan51~2_combout\ = (!\Add6~24_combout\ & (!\Add6~22_combout\ & (!\Add6~28_combout\ & !\Add6~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~24_combout\,
	datab => \Add6~22_combout\,
	datac => \Add6~28_combout\,
	datad => \Add6~26_combout\,
	combout => \LessThan51~2_combout\);

-- Location: LCCOMB_X22_Y13_N28
\LessThan51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan51~1_combout\ = (!\Add6~20_combout\ & (!\Add6~14_combout\ & (!\Add6~18_combout\ & !\Add6~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~20_combout\,
	datab => \Add6~14_combout\,
	datac => \Add6~18_combout\,
	datad => \Add6~16_combout\,
	combout => \LessThan51~1_combout\);

-- Location: LCCOMB_X22_Y12_N8
\LessThan51~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan51~4_combout\ = (\LessThan51~2_combout\ & (\LessThan51~1_combout\ & ((\LessThan51~3_combout\) # (!\Add6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan51~3_combout\,
	datab => \LessThan51~2_combout\,
	datac => \LessThan51~1_combout\,
	datad => \Add6~12_combout\,
	combout => \LessThan51~4_combout\);

-- Location: LCCOMB_X22_Y12_N26
\LessThan51~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan51~5_combout\ = (!\Add6~32_combout\ & (!\Add6~30_combout\ & (!\Add6~34_combout\ & !\Add6~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~32_combout\,
	datab => \Add6~30_combout\,
	datac => \Add6~34_combout\,
	datad => \Add6~36_combout\,
	combout => \LessThan51~5_combout\);

-- Location: LCCOMB_X22_Y12_N4
\RGB~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~21_combout\ = (\LessThan51~4_combout\ & (\LessThan51~5_combout\ & !\Add6~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan51~4_combout\,
	datac => \LessThan51~5_combout\,
	datad => \Add6~46_combout\,
	combout => \RGB~21_combout\);

-- Location: LCCOMB_X22_Y12_N30
\RGB~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~22_combout\ = (\LessThan51~0_combout\ & (!\Add6~48_combout\ & (\RGB~21_combout\ & !\Add6~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan51~0_combout\,
	datab => \Add6~48_combout\,
	datac => \RGB~21_combout\,
	datad => \Add6~54_combout\,
	combout => \RGB~22_combout\);

-- Location: LCCOMB_X22_Y12_N12
\RGB~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~23_combout\ = (!\Add6~52_combout\ & (!\Add6~50_combout\ & !\Add6~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~52_combout\,
	datac => \Add6~50_combout\,
	datad => \Add6~56_combout\,
	combout => \RGB~23_combout\);

-- Location: LCCOMB_X22_Y12_N2
\RGB~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~24_combout\ = (((\RGB~22_combout\ & \RGB~23_combout\)) # (!\RGB~2_combout\)) # (!\RGB~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB~8_combout\,
	datab => \RGB~2_combout\,
	datac => \RGB~22_combout\,
	datad => \RGB~23_combout\,
	combout => \RGB~24_combout\);

-- Location: LCCOMB_X22_Y12_N18
\RGB~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \RGB~26_combout\ = (\Add6~58_combout\) # ((\Add9~58_combout\) # ((\RGB~25_combout\) # (\RGB~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~58_combout\,
	datab => \Add9~58_combout\,
	datac => \RGB~25_combout\,
	datad => \RGB~24_combout\,
	combout => \RGB~26_combout\);

-- Location: FF_X22_Y12_N19
\RGB[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~clkctrl_outclk\,
	d => \RGB~26_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB[2]~reg0_q\);

-- Location: IOIBUF_X34_Y2_N22
\p1_button~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p1_button,
	o => \p1_button~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\p2_button~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p2_button,
	o => \p2_button~input_o\);

ww_VGA_CLOCK <= \VGA_CLOCK~output_o\;

ww_HSYNC <= \HSYNC~output_o\;

ww_VSYNC <= \VSYNC~output_o\;

ww_RGB(0) <= \RGB[0]~output_o\;

ww_RGB(1) <= \RGB[1]~output_o\;

ww_RGB(2) <= \RGB[2]~output_o\;
END structure;


