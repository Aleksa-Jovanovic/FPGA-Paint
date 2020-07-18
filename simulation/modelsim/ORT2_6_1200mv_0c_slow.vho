-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "09/24/2019 18:15:38"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab2Demo IS
    PORT (
	H_SYNC : OUT std_logic;
	CLK : IN std_logic;
	V_SYNC : OUT std_logic;
	LED1 : OUT std_logic;
	PS2C : INOUT std_logic;
	PS2D : INOUT std_logic;
	LED2 : OUT std_logic;
	LED3 : OUT std_logic;
	BLUE : OUT std_logic_vector(3 DOWNTO 0);
	GREEN : OUT std_logic_vector(3 DOWNTO 0);
	RED : OUT std_logic_vector(3 DOWNTO 0)
	);
END Lab2Demo;

-- Design Ports Information
-- H_SYNC	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SYNC	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED1	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED2	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED3	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLUE[3]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLUE[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLUE[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLUE[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GREEN[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GREEN[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GREEN[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GREEN[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RED[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RED[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RED[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RED[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2C	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2D	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab2Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_H_SYNC : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_V_SYNC : std_logic;
SIGNAL ww_LED1 : std_logic;
SIGNAL ww_LED2 : std_logic;
SIGNAL ww_LED3 : std_logic;
SIGNAL ww_BLUE : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_GREEN : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RED : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a38_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a38_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a38_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a36_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a36_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a42_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a42_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a42_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a40_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a40_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a40_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a35_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a35_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a34_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a34_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a46_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a46_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a46_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a33_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a33_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a32_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a32_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a44_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a44_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a44_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PS2C~output_o\ : std_logic;
SIGNAL \PS2D~output_o\ : std_logic;
SIGNAL \H_SYNC~output_o\ : std_logic;
SIGNAL \V_SYNC~output_o\ : std_logic;
SIGNAL \LED1~output_o\ : std_logic;
SIGNAL \LED2~output_o\ : std_logic;
SIGNAL \LED3~output_o\ : std_logic;
SIGNAL \BLUE[3]~output_o\ : std_logic;
SIGNAL \BLUE[2]~output_o\ : std_logic;
SIGNAL \BLUE[1]~output_o\ : std_logic;
SIGNAL \BLUE[0]~output_o\ : std_logic;
SIGNAL \GREEN[3]~output_o\ : std_logic;
SIGNAL \GREEN[2]~output_o\ : std_logic;
SIGNAL \GREEN[1]~output_o\ : std_logic;
SIGNAL \GREEN[0]~output_o\ : std_logic;
SIGNAL \RED[3]~output_o\ : std_logic;
SIGNAL \RED[2]~output_o\ : std_logic;
SIGNAL \RED[1]~output_o\ : std_logic;
SIGNAL \RED[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst8|inst|inst9|data[0]~feeder_combout\ : std_logic;
SIGNAL \PS2D~input_o\ : std_logic;
SIGNAL \inst8|inst|inst4|inst7|inst~q\ : std_logic;
SIGNAL \inst8|inst|inst4|inst7|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst7|inst2|inst~q\ : std_logic;
SIGNAL \inst8|inst|inst4|inst7|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst7|inst3|inst~q\ : std_logic;
SIGNAL \inst8|inst|inst4|inst7|inst6~combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst7|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst7|inst4|inst~q\ : std_logic;
SIGNAL \inst8|inst|inst4|inst7|inst5~combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst7|inst1~q\ : std_logic;
SIGNAL \inst8|inst|inst4|inst62~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst62~q\ : std_logic;
SIGNAL \PS2C~input_o\ : std_logic;
SIGNAL \inst8|inst|inst4|inst64~q\ : std_logic;
SIGNAL \inst8|inst|inst4|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst3|inst~q\ : std_logic;
SIGNAL \inst8|inst|inst4|inst3|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst3|inst2|inst~q\ : std_logic;
SIGNAL \inst8|inst|inst4|inst3|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst3|inst3|inst~q\ : std_logic;
SIGNAL \inst8|inst|inst4|inst3|inst6~combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst3|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst3|inst4|inst~q\ : std_logic;
SIGNAL \inst8|inst|inst4|inst3|inst5~combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst3|inst1~q\ : std_logic;
SIGNAL \inst8|inst|inst4|inst52~q\ : std_logic;
SIGNAL \inst8|inst|inst4|inst25~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst8|data[0]~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|bit_cnt|data_next[0]~3_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst56~q\ : std_logic;
SIGNAL \inst8|inst|inst4|inst67~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|bit_cnt|data[1]~2_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|bit_cnt|data_next[1]~2_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|bit_cnt|data_next[2]~5_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst75~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|bit_cnt|Add0~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|bit_cnt|data_next[3]~4_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst79~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[0]~13_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data_next[12]~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data_next[12]~1_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[9]~35\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[10]~36_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst44~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[12]~21_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[10]~37\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[11]~38_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[11]~39\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[12]~40_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[12]~22_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[12]~23_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[0]~14\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[1]~15_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[1]~16\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[2]~17_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[2]~18\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[3]~19_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[3]~20\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[4]~24_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[4]~25\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[5]~26_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[5]~27\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[6]~28_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[6]~29\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[7]~30_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[7]~31\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[8]~32_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[8]~33\ : std_logic;
SIGNAL \inst8|inst|inst4|Timer_reg|data[9]~34_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst63|LessThan1~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst63|LessThan1~1_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst63|LessThan1~2_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst79~combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst8|data[1]~1_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst9|inst4~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst66~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|ps2_word_reg|inst4|Y[0]~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|ps2_word_reg|inst2~combout\ : std_logic;
SIGNAL \inst8|inst|inst4|ps2_word_reg|inst6|Y[0]~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|ps2_word_reg|inst8|Y[0]~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|ps2_word_reg|inst10|Y[0]~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|ps2_word_reg|inst12|Y[0]~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|ps2_word_reg|inst14|Y[0]~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|ps2_word_reg|inst16|Y[0]~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|ps2_word_reg|inst18|Y[0]~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|ps2_word_reg|inst20|Y[0]~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|ps2_word_reg|inst22|Y[0]~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|ps2_word_reg|inst24|Y[0]~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst18~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst18~1_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst17~q\ : std_logic;
SIGNAL \inst|inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|inst|Add0~9\ : std_logic;
SIGNAL \inst|inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|inst|data[5]~9_combout\ : std_logic;
SIGNAL \inst|inst|Add0~11\ : std_logic;
SIGNAL \inst|inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|inst|data[6]~4_combout\ : std_logic;
SIGNAL \inst|inst|Add0~13\ : std_logic;
SIGNAL \inst|inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|inst|data[7]~3_combout\ : std_logic;
SIGNAL \inst|inst|Add0~15\ : std_logic;
SIGNAL \inst|inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|inst|data[8]~12_combout\ : std_logic;
SIGNAL \inst|inst|Add0~17\ : std_logic;
SIGNAL \inst|inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|inst|data[9]~13_combout\ : std_logic;
SIGNAL \inst|inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst|inst|data[8]~14_combout\ : std_logic;
SIGNAL \inst|inst|data[0]~7_combout\ : std_logic;
SIGNAL \inst|inst|Add0~1\ : std_logic;
SIGNAL \inst|inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|inst|data[1]~6_combout\ : std_logic;
SIGNAL \inst|inst|Add0~3\ : std_logic;
SIGNAL \inst|inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|inst|data[2]~8_combout\ : std_logic;
SIGNAL \inst|inst|Add0~5\ : std_logic;
SIGNAL \inst|inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|inst|data[3]~5_combout\ : std_logic;
SIGNAL \inst|inst|Add0~7\ : std_logic;
SIGNAL \inst|inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|inst|data[4]~10_combout\ : std_logic;
SIGNAL \inst|inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst|inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst|inst|data[8]~2_combout\ : std_logic;
SIGNAL \inst|inst|Add0~19\ : std_logic;
SIGNAL \inst|inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|inst|data[10]~11_combout\ : std_logic;
SIGNAL \inst|inst10~1_combout\ : std_logic;
SIGNAL \inst|inst10~2_combout\ : std_logic;
SIGNAL \inst|inst10~0_combout\ : std_logic;
SIGNAL \inst|inst10~3_combout\ : std_logic;
SIGNAL \inst|inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst|inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst|inst1|data[0]~10_combout\ : std_logic;
SIGNAL \inst|inst1|Add0~1\ : std_logic;
SIGNAL \inst|inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst|inst1|data[1]~9_combout\ : std_logic;
SIGNAL \inst|inst1|Add0~3\ : std_logic;
SIGNAL \inst|inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst|inst1|data[2]~8_combout\ : std_logic;
SIGNAL \inst|inst1|Add0~5\ : std_logic;
SIGNAL \inst|inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst|inst1|data[3]~1_combout\ : std_logic;
SIGNAL \inst|inst1|Add0~7\ : std_logic;
SIGNAL \inst|inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst|inst1|data[4]~7_combout\ : std_logic;
SIGNAL \inst|inst1|Add0~9\ : std_logic;
SIGNAL \inst|inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst|inst1|data[5]~5_combout\ : std_logic;
SIGNAL \inst|inst1|Add0~11\ : std_logic;
SIGNAL \inst|inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst|inst1|data[6]~4_combout\ : std_logic;
SIGNAL \inst|inst1|Add0~13\ : std_logic;
SIGNAL \inst|inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst|inst1|data[7]~6_combout\ : std_logic;
SIGNAL \inst|inst21~0_combout\ : std_logic;
SIGNAL \inst|inst1|Add0~15\ : std_logic;
SIGNAL \inst|inst1|Add0~17\ : std_logic;
SIGNAL \inst|inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst|inst1|data[9]~3_combout\ : std_logic;
SIGNAL \inst12|inst37|Equal0~0_combout\ : std_logic;
SIGNAL \inst12|inst37|Equal0~1_combout\ : std_logic;
SIGNAL \inst|inst1|data[8]~0_combout\ : std_logic;
SIGNAL \inst|inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst|inst1|data[8]~2_combout\ : std_logic;
SIGNAL \inst|inst15~0_combout\ : std_logic;
SIGNAL \inst|inst15~1_combout\ : std_logic;
SIGNAL \inst|inst15~2_combout\ : std_logic;
SIGNAL \inst|inst15~3_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst44~3_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst44~2_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst44~1_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst44~4_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_int_reg52|data[1]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst34|data[0]~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst34|data[0]~1_combout\ : std_logic;
SIGNAL \inst8|inst|inst1|inst50~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|inst1|inst50~q\ : std_logic;
SIGNAL \inst8|inst|inst1|inst51~q\ : std_logic;
SIGNAL \inst8|inst|inst1|inst57~0_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_int_reg|data[1]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_int_reg53|data[1]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_reg|data[17]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst31|data[7]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|inst16~2_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst31|data[0]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|inst16~0_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst31|data[4]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst31|data[2]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst31|data[5]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst31|data[3]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|inst16~1_combout\ : std_logic;
SIGNAL \inst8|inst|inst11|data[0]~0_combout\ : std_logic;
SIGNAL \inst8|inst|packet_byte_reg|data[1]~0_combout\ : std_logic;
SIGNAL \inst8|inst|packet_byte_reg|data[0]~1_combout\ : std_logic;
SIGNAL \inst8|inst|inst66|Equal0~0_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_int_reg52|data[0]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_int_reg|data[0]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_reg|data[16]~feeder_combout\ : std_logic;
SIGNAL \inst12|inst37|Equal0~2_combout\ : std_logic;
SIGNAL \inst12|inst14|data[0]~0_combout\ : std_logic;
SIGNAL \inst10|inst33|Add0~0_combout\ : std_logic;
SIGNAL \inst10|inst33|cnt[0]~10_combout\ : std_logic;
SIGNAL \inst10|inst33|Add0~1\ : std_logic;
SIGNAL \inst10|inst33|Add0~2_combout\ : std_logic;
SIGNAL \inst10|inst33|cnt[1]~9_combout\ : std_logic;
SIGNAL \inst10|inst33|Add0~3\ : std_logic;
SIGNAL \inst10|inst33|Add0~4_combout\ : std_logic;
SIGNAL \inst10|inst33|cnt[2]~8_combout\ : std_logic;
SIGNAL \inst10|inst33|Add0~5\ : std_logic;
SIGNAL \inst10|inst33|Add0~6_combout\ : std_logic;
SIGNAL \inst10|inst33|cnt[3]~7_combout\ : std_logic;
SIGNAL \inst10|inst33|Add0~7\ : std_logic;
SIGNAL \inst10|inst33|Add0~8_combout\ : std_logic;
SIGNAL \inst10|inst33|cnt[4]~6_combout\ : std_logic;
SIGNAL \inst10|inst33|Add0~9\ : std_logic;
SIGNAL \inst10|inst33|Add0~10_combout\ : std_logic;
SIGNAL \inst10|inst33|Add0~11\ : std_logic;
SIGNAL \inst10|inst33|Add0~12_combout\ : std_logic;
SIGNAL \inst10|inst33|Add0~13\ : std_logic;
SIGNAL \inst10|inst33|Add0~14_combout\ : std_logic;
SIGNAL \inst10|inst33|cnt[7]~5_combout\ : std_logic;
SIGNAL \inst10|inst33|Add0~15\ : std_logic;
SIGNAL \inst10|inst33|Add0~16_combout\ : std_logic;
SIGNAL \inst10|inst33|cnt[8]~4_combout\ : std_logic;
SIGNAL \inst10|inst33|Add0~17\ : std_logic;
SIGNAL \inst10|inst33|Add0~18_combout\ : std_logic;
SIGNAL \inst10|inst33|Add0~19\ : std_logic;
SIGNAL \inst10|inst33|Add0~20_combout\ : std_logic;
SIGNAL \inst10|inst33|cnt[10]~3_combout\ : std_logic;
SIGNAL \inst10|inst33|Add0~21\ : std_logic;
SIGNAL \inst10|inst33|Add0~22_combout\ : std_logic;
SIGNAL \inst10|inst33|Add0~23\ : std_logic;
SIGNAL \inst10|inst33|Add0~24_combout\ : std_logic;
SIGNAL \inst10|inst33|Add0~25\ : std_logic;
SIGNAL \inst10|inst33|Add0~26_combout\ : std_logic;
SIGNAL \inst10|inst33|cnt[13]~2_combout\ : std_logic;
SIGNAL \inst10|inst33|Add0~27\ : std_logic;
SIGNAL \inst10|inst33|Add0~28_combout\ : std_logic;
SIGNAL \inst10|inst33|Add0~29\ : std_logic;
SIGNAL \inst10|inst33|Add0~30_combout\ : std_logic;
SIGNAL \inst10|inst33|Add0~31\ : std_logic;
SIGNAL \inst10|inst33|Add0~32_combout\ : std_logic;
SIGNAL \inst10|inst33|Add0~33\ : std_logic;
SIGNAL \inst10|inst33|Add0~34_combout\ : std_logic;
SIGNAL \inst10|inst33|cnt[17]~1_combout\ : std_logic;
SIGNAL \inst10|inst33|Add0~35\ : std_logic;
SIGNAL \inst10|inst33|Add0~36_combout\ : std_logic;
SIGNAL \inst10|inst33|cnt[18]~0_combout\ : std_logic;
SIGNAL \inst10|inst33|Add0~37\ : std_logic;
SIGNAL \inst10|inst33|Add0~38_combout\ : std_logic;
SIGNAL \inst10|inst33|Add0~39\ : std_logic;
SIGNAL \inst10|inst33|Add0~40_combout\ : std_logic;
SIGNAL \inst10|inst33|cnt[21]~11_combout\ : std_logic;
SIGNAL \inst10|inst33|Add0~41\ : std_logic;
SIGNAL \inst10|inst33|Add0~42_combout\ : std_logic;
SIGNAL \inst10|inst33|Equal0~0_combout\ : std_logic;
SIGNAL \inst10|inst33|Equal0~2_combout\ : std_logic;
SIGNAL \inst10|inst33|Equal0~1_combout\ : std_logic;
SIGNAL \inst10|inst33|out_clk_next~0_combout\ : std_logic;
SIGNAL \inst10|inst33|out_clk_next~1_combout\ : std_logic;
SIGNAL \inst10|inst33|out_clk_next~2_combout\ : std_logic;
SIGNAL \inst10|inst33|out_clk_next~3_combout\ : std_logic;
SIGNAL \inst10|inst33|out_clk_next~4_combout\ : std_logic;
SIGNAL \inst10|inst33|out_clk_next~q\ : std_logic;
SIGNAL \inst10|inst36|inst50~q\ : std_logic;
SIGNAL \inst10|inst36|inst51~q\ : std_logic;
SIGNAL \inst8|inst|mouse_data_int_reg53|data[2]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_reg|data[18]~feeder_combout\ : std_logic;
SIGNAL \inst10|inst1~0_combout\ : std_logic;
SIGNAL \inst10|Colour|data[1]~1_combout\ : std_logic;
SIGNAL \inst10|Colour|data[1]~2_combout\ : std_logic;
SIGNAL \inst10|inst32~0_combout\ : std_logic;
SIGNAL \inst10|Colour|data[2]~0_combout\ : std_logic;
SIGNAL \inst10|inst32~1_combout\ : std_logic;
SIGNAL \inst10|Colour|data[0]~3_combout\ : std_logic;
SIGNAL \inst10|inst27|inst11|Y[3]~0_combout\ : std_logic;
SIGNAL \inst12|inst255|Equal0~0_combout\ : std_logic;
SIGNAL \inst12|inst255|Equal0~2_combout\ : std_logic;
SIGNAL \inst12|inst255|Equal0~1_combout\ : std_logic;
SIGNAL \inst12|inst10|inst|data_next[13]~24_combout\ : std_logic;
SIGNAL \inst12|inst10|inst14|Add0~0_combout\ : std_logic;
SIGNAL \inst12|inst10|inst|data_next[3]~33_combout\ : std_logic;
SIGNAL \inst12|inst10|inst14|Add0~1\ : std_logic;
SIGNAL \inst12|inst10|inst14|Add0~2_combout\ : std_logic;
SIGNAL \inst12|inst10|inst|data_next[4]~32_combout\ : std_logic;
SIGNAL \inst12|inst10|inst14|Add0~3\ : std_logic;
SIGNAL \inst12|inst10|inst14|Add0~4_combout\ : std_logic;
SIGNAL \inst12|inst10|inst|data_next[5]~31_combout\ : std_logic;
SIGNAL \inst12|inst10|inst4|data[3]~10_cout\ : std_logic;
SIGNAL \inst12|inst10|inst4|data[3]~12_cout\ : std_logic;
SIGNAL \inst12|inst10|inst4|data[3]~13_combout\ : std_logic;
SIGNAL \inst12|inst43~combout\ : std_logic;
SIGNAL \inst12|inst10|inst4|data[3]~27_combout\ : std_logic;
SIGNAL \inst12|inst10|inst4|data[3]~14\ : std_logic;
SIGNAL \inst12|inst10|inst4|data[4]~15_combout\ : std_logic;
SIGNAL \inst12|inst10|inst4|data[4]~16\ : std_logic;
SIGNAL \inst12|inst10|inst4|data[5]~17_combout\ : std_logic;
SIGNAL \inst12|inst10|inst4|data[5]~18\ : std_logic;
SIGNAL \inst12|inst10|inst4|data[6]~19_combout\ : std_logic;
SIGNAL \inst12|inst10|inst4|data[6]~20\ : std_logic;
SIGNAL \inst12|inst10|inst4|data[7]~21_combout\ : std_logic;
SIGNAL \inst12|inst10|inst4|data[7]~22\ : std_logic;
SIGNAL \inst12|inst10|inst4|data[8]~23_combout\ : std_logic;
SIGNAL \inst12|inst10|inst4|data[8]~24\ : std_logic;
SIGNAL \inst12|inst10|inst4|data[9]~25_combout\ : std_logic;
SIGNAL \inst12|inst10|inst15~0_combout\ : std_logic;
SIGNAL \inst|inst19|LessThan1~1_combout\ : std_logic;
SIGNAL \inst12|inst8|Y[2]~0_combout\ : std_logic;
SIGNAL \inst|inst20|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|inst19|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|inst16~0_combout\ : std_logic;
SIGNAL \inst12|inst1|C[1]~1_cout\ : std_logic;
SIGNAL \inst12|inst1|C[2]~3\ : std_logic;
SIGNAL \inst12|inst1|C[3]~5\ : std_logic;
SIGNAL \inst12|inst1|C[4]~7\ : std_logic;
SIGNAL \inst12|inst1|C[5]~9\ : std_logic;
SIGNAL \inst12|inst1|C[6]~11\ : std_logic;
SIGNAL \inst12|inst1|C[7]~13\ : std_logic;
SIGNAL \inst12|inst1|C[8]~15\ : std_logic;
SIGNAL \inst12|inst1|C[9]~16_combout\ : std_logic;
SIGNAL \inst12|inst1|C[8]~14_combout\ : std_logic;
SIGNAL \inst12|inst1|C[7]~12_combout\ : std_logic;
SIGNAL \inst12|inst1|C[6]~10_combout\ : std_logic;
SIGNAL \inst12|inst1|C[5]~8_combout\ : std_logic;
SIGNAL \inst12|inst1|C[4]~6_combout\ : std_logic;
SIGNAL \inst12|inst1|C[3]~4_combout\ : std_logic;
SIGNAL \inst12|inst1|C[2]~2_combout\ : std_logic;
SIGNAL \inst12|inst10|inst5|LessThan1~1_cout\ : std_logic;
SIGNAL \inst12|inst10|inst5|LessThan1~3_cout\ : std_logic;
SIGNAL \inst12|inst10|inst5|LessThan1~5_cout\ : std_logic;
SIGNAL \inst12|inst10|inst5|LessThan1~7_cout\ : std_logic;
SIGNAL \inst12|inst10|inst5|LessThan1~9_cout\ : std_logic;
SIGNAL \inst12|inst10|inst5|LessThan1~11_cout\ : std_logic;
SIGNAL \inst12|inst10|inst5|LessThan1~13_cout\ : std_logic;
SIGNAL \inst12|inst10|inst5|LessThan1~14_combout\ : std_logic;
SIGNAL \inst1|inst4|LessThan0~0_combout\ : std_logic;
SIGNAL \inst12|inst10|inst15~combout\ : std_logic;
SIGNAL \inst12|inst10|inst14|Add0~5\ : std_logic;
SIGNAL \inst12|inst10|inst14|Add0~6_combout\ : std_logic;
SIGNAL \inst12|inst10|inst|data_next[6]~34_combout\ : std_logic;
SIGNAL \inst12|inst10|inst14|Add0~7\ : std_logic;
SIGNAL \inst12|inst10|inst14|Add0~8_combout\ : std_logic;
SIGNAL \inst12|inst10|inst|data_next[7]~30_combout\ : std_logic;
SIGNAL \inst12|inst10|inst14|Add0~9\ : std_logic;
SIGNAL \inst12|inst10|inst14|Add0~10_combout\ : std_logic;
SIGNAL \inst12|inst10|inst|data_next[8]~29_combout\ : std_logic;
SIGNAL \inst12|inst10|inst14|Add0~11\ : std_logic;
SIGNAL \inst12|inst10|inst14|Add0~12_combout\ : std_logic;
SIGNAL \inst12|inst10|inst|data_next[9]~28_combout\ : std_logic;
SIGNAL \inst12|inst10|inst14|Add0~13\ : std_logic;
SIGNAL \inst12|inst10|inst14|Add0~14_combout\ : std_logic;
SIGNAL \inst12|inst10|inst|data_next[10]~27_combout\ : std_logic;
SIGNAL \inst12|inst10|inst14|Add0~15\ : std_logic;
SIGNAL \inst12|inst10|inst14|Add0~16_combout\ : std_logic;
SIGNAL \inst12|inst10|inst|data_next[11]~26_combout\ : std_logic;
SIGNAL \inst12|inst10|inst14|Add0~17\ : std_logic;
SIGNAL \inst12|inst10|inst14|Add0~18_combout\ : std_logic;
SIGNAL \inst12|inst10|inst|data_next[12]~25_combout\ : std_logic;
SIGNAL \inst12|inst10|inst14|Add0~19\ : std_logic;
SIGNAL \inst12|inst10|inst14|Add0~20_combout\ : std_logic;
SIGNAL \inst12|inst10|inst3|C[3]~1\ : std_logic;
SIGNAL \inst12|inst10|inst3|C[4]~3\ : std_logic;
SIGNAL \inst12|inst10|inst3|C[5]~5\ : std_logic;
SIGNAL \inst12|inst10|inst3|C[6]~7\ : std_logic;
SIGNAL \inst12|inst10|inst3|C[7]~9\ : std_logic;
SIGNAL \inst12|inst10|inst3|C[8]~11\ : std_logic;
SIGNAL \inst12|inst10|inst3|C[9]~13\ : std_logic;
SIGNAL \inst12|inst10|inst3|C[10]~15\ : std_logic;
SIGNAL \inst12|inst10|inst3|C[11]~17\ : std_logic;
SIGNAL \inst12|inst10|inst3|C[12]~19\ : std_logic;
SIGNAL \inst12|inst10|inst3|C[13]~20_combout\ : std_logic;
SIGNAL \inst12|inst42~combout\ : std_logic;
SIGNAL \inst12|inst10|inst|data_next[14]~35_combout\ : std_logic;
SIGNAL \inst12|inst10|inst14|Add0~21\ : std_logic;
SIGNAL \inst12|inst10|inst14|Add0~22_combout\ : std_logic;
SIGNAL \inst12|inst10|inst3|C[13]~21\ : std_logic;
SIGNAL \inst12|inst10|inst3|C[14]~22_combout\ : std_logic;
SIGNAL \inst12|inst35|inst4|Add0~0_combout\ : std_logic;
SIGNAL \inst12|inst35|inst4|data[0]~3_combout\ : std_logic;
SIGNAL \inst12|inst35|inst19~combout\ : std_logic;
SIGNAL \inst12|inst35|inst4|Add0~1\ : std_logic;
SIGNAL \inst12|inst35|inst4|Add0~2_combout\ : std_logic;
SIGNAL \inst12|inst35|inst4|data[1]~2_combout\ : std_logic;
SIGNAL \inst12|inst35|inst4|Add0~3\ : std_logic;
SIGNAL \inst12|inst35|inst4|Add0~4_combout\ : std_logic;
SIGNAL \inst12|inst35|inst4|data[2]~1_combout\ : std_logic;
SIGNAL \inst12|inst35|inst4|Add0~5\ : std_logic;
SIGNAL \inst12|inst35|inst4|Add0~6_combout\ : std_logic;
SIGNAL \inst12|inst35|inst4|data[3]~0_combout\ : std_logic;
SIGNAL \inst12|inst35|inst4|Add0~7\ : std_logic;
SIGNAL \inst12|inst35|inst4|Add0~8_combout\ : std_logic;
SIGNAL \inst12|inst35|inst4|data[4]~5_combout\ : std_logic;
SIGNAL \inst12|inst35|inst4|Add0~9\ : std_logic;
SIGNAL \inst12|inst35|inst4|Add0~10_combout\ : std_logic;
SIGNAL \inst12|inst35|inst4|data[5]~4_combout\ : std_logic;
SIGNAL \inst12|inst35|inst4|Add0~11\ : std_logic;
SIGNAL \inst12|inst35|inst4|Add0~12_combout\ : std_logic;
SIGNAL \inst12|inst35|inst4|Add0~13\ : std_logic;
SIGNAL \inst12|inst35|inst4|Add0~14_combout\ : std_logic;
SIGNAL \inst12|inst35|inst4|Add0~15\ : std_logic;
SIGNAL \inst12|inst35|inst4|Add0~16_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_int_reg52|data[6]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_reg|data[6]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_reg|data[4]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_int_reg52|data[7]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_int_reg52|data[5]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_reg|data[5]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst10|inst7|cnt[16]~0_combout\ : std_logic;
SIGNAL \inst10|inst7|Add0~1_cout\ : std_logic;
SIGNAL \inst10|inst7|Add0~3\ : std_logic;
SIGNAL \inst10|inst7|Add0~5\ : std_logic;
SIGNAL \inst10|inst7|Add0~6_combout\ : std_logic;
SIGNAL \inst10|inst7|Add0~7\ : std_logic;
SIGNAL \inst10|inst7|Add0~8_combout\ : std_logic;
SIGNAL \inst10|inst7|Add0~9\ : std_logic;
SIGNAL \inst10|inst7|Add0~10_combout\ : std_logic;
SIGNAL \inst10|inst7|Add0~11\ : std_logic;
SIGNAL \inst10|inst7|Add0~12_combout\ : std_logic;
SIGNAL \inst10|inst7|cnt[6]~5_combout\ : std_logic;
SIGNAL \inst10|inst7|Add0~13\ : std_logic;
SIGNAL \inst10|inst7|Add0~14_combout\ : std_logic;
SIGNAL \inst10|inst7|Add0~15\ : std_logic;
SIGNAL \inst10|inst7|Add0~16_combout\ : std_logic;
SIGNAL \inst10|inst7|Add0~17\ : std_logic;
SIGNAL \inst10|inst7|Add0~18_combout\ : std_logic;
SIGNAL \inst10|inst7|Add0~19\ : std_logic;
SIGNAL \inst10|inst7|Add0~20_combout\ : std_logic;
SIGNAL \inst10|inst7|Add0~21\ : std_logic;
SIGNAL \inst10|inst7|Add0~22_combout\ : std_logic;
SIGNAL \inst10|inst7|cnt[11]~4_combout\ : std_logic;
SIGNAL \inst10|inst7|Add0~23\ : std_logic;
SIGNAL \inst10|inst7|Add0~24_combout\ : std_logic;
SIGNAL \inst10|inst7|Add0~25\ : std_logic;
SIGNAL \inst10|inst7|Add0~26_combout\ : std_logic;
SIGNAL \inst10|inst7|cnt[13]~3_combout\ : std_logic;
SIGNAL \inst10|inst7|Add0~27\ : std_logic;
SIGNAL \inst10|inst7|Add0~28_combout\ : std_logic;
SIGNAL \inst10|inst7|cnt[14]~2_combout\ : std_logic;
SIGNAL \inst10|inst7|Add0~29\ : std_logic;
SIGNAL \inst10|inst7|Add0~30_combout\ : std_logic;
SIGNAL \inst10|inst7|cnt[15]~1_combout\ : std_logic;
SIGNAL \inst10|inst7|Add0~31\ : std_logic;
SIGNAL \inst10|inst7|Add0~32_combout\ : std_logic;
SIGNAL \inst10|inst7|Equal0~1_combout\ : std_logic;
SIGNAL \inst10|inst7|Equal0~2_combout\ : std_logic;
SIGNAL \inst10|inst7|Equal0~3_combout\ : std_logic;
SIGNAL \inst10|inst7|Add0~4_combout\ : std_logic;
SIGNAL \inst10|inst7|Add0~2_combout\ : std_logic;
SIGNAL \inst10|inst7|Equal0~0_combout\ : std_logic;
SIGNAL \inst10|inst7|Equal0~4_combout\ : std_logic;
SIGNAL \inst10|inst7|out_clk_next~0_combout\ : std_logic;
SIGNAL \inst10|inst7|out_clk_next~q\ : std_logic;
SIGNAL \inst10|inst9~q\ : std_logic;
SIGNAL \inst10|inst10~q\ : std_logic;
SIGNAL \inst8|inst|mouse_data_reg|data[0]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_int_reg52|data[3]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_reg|data[1]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst10|inst48~0_combout\ : std_logic;
SIGNAL \inst10|Y_DownSide|Add0~0_combout\ : std_logic;
SIGNAL \inst10|Y_DownSide|data[0]~4_combout\ : std_logic;
SIGNAL \inst10|Y_UpSide|Add0~0_combout\ : std_logic;
SIGNAL \inst10|Y_UpSide|Add0~1\ : std_logic;
SIGNAL \inst10|Y_UpSide|Add0~2_combout\ : std_logic;
SIGNAL \inst10|Y_UpSide|data[1]~4_combout\ : std_logic;
SIGNAL \inst10|Y_UpSide|Add0~3\ : std_logic;
SIGNAL \inst10|Y_UpSide|Add0~4_combout\ : std_logic;
SIGNAL \inst10|Y_UpSide|data[2]~3_combout\ : std_logic;
SIGNAL \inst10|Y_UpSide|Add0~5\ : std_logic;
SIGNAL \inst10|Y_UpSide|Add0~6_combout\ : std_logic;
SIGNAL \inst10|Y_UpSide|data[3]~2_combout\ : std_logic;
SIGNAL \inst10|Y_UpSide|Add0~7\ : std_logic;
SIGNAL \inst10|Y_UpSide|Add0~8_combout\ : std_logic;
SIGNAL \inst10|Y_UpSide|Add0~9\ : std_logic;
SIGNAL \inst10|Y_UpSide|Add0~10_combout\ : std_logic;
SIGNAL \inst10|Y_UpSide|data[5]~1_combout\ : std_logic;
SIGNAL \inst10|Y_UpSide|Add0~11\ : std_logic;
SIGNAL \inst10|Y_UpSide|Add0~12_combout\ : std_logic;
SIGNAL \inst10|Y_UpSide|Add0~13\ : std_logic;
SIGNAL \inst10|Y_UpSide|Add0~14_combout\ : std_logic;
SIGNAL \inst10|Y_UpSide|Add0~15\ : std_logic;
SIGNAL \inst10|Y_UpSide|Add0~16_combout\ : std_logic;
SIGNAL \inst10|Y_UpSide|data[8]~0_combout\ : std_logic;
SIGNAL \inst10|inst44|LessThan1~0_combout\ : std_logic;
SIGNAL \inst10|inst44|LessThan1~1_combout\ : std_logic;
SIGNAL \inst10|inst44|LessThan1~2_combout\ : std_logic;
SIGNAL \inst10|Y_DownSide|data[7]~0_combout\ : std_logic;
SIGNAL \inst10|Y_DownSide|Add0~1\ : std_logic;
SIGNAL \inst10|Y_DownSide|Add0~2_combout\ : std_logic;
SIGNAL \inst10|Y_DownSide|Add0~3\ : std_logic;
SIGNAL \inst10|Y_DownSide|Add0~4_combout\ : std_logic;
SIGNAL \inst10|Y_DownSide|Add0~5\ : std_logic;
SIGNAL \inst10|Y_DownSide|Add0~6_combout\ : std_logic;
SIGNAL \inst10|Y_DownSide|Add0~7\ : std_logic;
SIGNAL \inst10|Y_DownSide|Add0~8_combout\ : std_logic;
SIGNAL \inst10|Y_DownSide|data[4]~3_combout\ : std_logic;
SIGNAL \inst10|Y_DownSide|Add0~9\ : std_logic;
SIGNAL \inst10|Y_DownSide|Add0~10_combout\ : std_logic;
SIGNAL \inst10|Y_DownSide|data[5]~2_combout\ : std_logic;
SIGNAL \inst10|Y_DownSide|Add0~11\ : std_logic;
SIGNAL \inst10|Y_DownSide|Add0~12_combout\ : std_logic;
SIGNAL \inst10|Y_DownSide|Add0~13\ : std_logic;
SIGNAL \inst10|Y_DownSide|Add0~14_combout\ : std_logic;
SIGNAL \inst10|Y_DownSide|Add0~15\ : std_logic;
SIGNAL \inst10|Y_DownSide|Add0~16_combout\ : std_logic;
SIGNAL \inst10|Y_DownSide|data[8]~1_combout\ : std_logic;
SIGNAL \inst10|inst46|LessThan0~0_combout\ : std_logic;
SIGNAL \inst10|inst46|LessThan0~1_combout\ : std_logic;
SIGNAL \inst10|Y_DownSide|Add0~17\ : std_logic;
SIGNAL \inst10|Y_DownSide|Add0~18_combout\ : std_logic;
SIGNAL \inst10|inst49~0_combout\ : std_logic;
SIGNAL \inst10|inst49~1_combout\ : std_logic;
SIGNAL \inst10|Y_UpSide|Add0~17\ : std_logic;
SIGNAL \inst10|Y_UpSide|Add0~18_combout\ : std_logic;
SIGNAL \inst12|inst2|C[1]~1_cout\ : std_logic;
SIGNAL \inst12|inst2|C[2]~3\ : std_logic;
SIGNAL \inst12|inst2|C[3]~5\ : std_logic;
SIGNAL \inst12|inst2|C[4]~7\ : std_logic;
SIGNAL \inst12|inst2|C[5]~9\ : std_logic;
SIGNAL \inst12|inst2|C[6]~11\ : std_logic;
SIGNAL \inst12|inst2|C[7]~13\ : std_logic;
SIGNAL \inst12|inst2|C[8]~15\ : std_logic;
SIGNAL \inst12|inst2|C[9]~16_combout\ : std_logic;
SIGNAL \inst12|inst2|C[8]~14_combout\ : std_logic;
SIGNAL \inst12|inst2|C[7]~12_combout\ : std_logic;
SIGNAL \inst12|inst2|C[6]~10_combout\ : std_logic;
SIGNAL \inst12|inst2|C[5]~8_combout\ : std_logic;
SIGNAL \inst12|inst2|C[4]~6_combout\ : std_logic;
SIGNAL \inst12|inst2|C[3]~4_combout\ : std_logic;
SIGNAL \inst12|inst2|C[2]~2_combout\ : std_logic;
SIGNAL \inst12|inst35|inst5|LessThan1~1_cout\ : std_logic;
SIGNAL \inst12|inst35|inst5|LessThan1~3_cout\ : std_logic;
SIGNAL \inst12|inst35|inst5|LessThan1~5_cout\ : std_logic;
SIGNAL \inst12|inst35|inst5|LessThan1~7_cout\ : std_logic;
SIGNAL \inst12|inst35|inst5|LessThan1~9_cout\ : std_logic;
SIGNAL \inst12|inst35|inst5|LessThan1~11_cout\ : std_logic;
SIGNAL \inst12|inst35|inst5|LessThan1~13_cout\ : std_logic;
SIGNAL \inst12|inst35|inst5|LessThan1~14_combout\ : std_logic;
SIGNAL \inst12|inst35|inst1~1_combout\ : std_logic;
SIGNAL \inst12|inst35|inst1~0_combout\ : std_logic;
SIGNAL \inst12|inst35|inst15~0_combout\ : std_logic;
SIGNAL \inst12|inst35|inst15~1_combout\ : std_logic;
SIGNAL \inst12|inst35|inst4|Add0~17\ : std_logic;
SIGNAL \inst12|inst35|inst4|Add0~18_combout\ : std_logic;
SIGNAL \inst12|inst35|inst1~2_combout\ : std_logic;
SIGNAL \inst12|inst35|inst5|LessThan0~1_cout\ : std_logic;
SIGNAL \inst12|inst35|inst5|LessThan0~3_cout\ : std_logic;
SIGNAL \inst12|inst35|inst5|LessThan0~5_cout\ : std_logic;
SIGNAL \inst12|inst35|inst5|LessThan0~7_cout\ : std_logic;
SIGNAL \inst12|inst35|inst5|LessThan0~9_cout\ : std_logic;
SIGNAL \inst12|inst35|inst5|LessThan0~11_cout\ : std_logic;
SIGNAL \inst12|inst35|inst5|LessThan0~13_cout\ : std_logic;
SIGNAL \inst12|inst35|inst5|LessThan0~14_combout\ : std_logic;
SIGNAL \inst12|inst35|inst1~3_combout\ : std_logic;
SIGNAL \inst12|inst35|inst14|Add0~0_combout\ : std_logic;
SIGNAL \inst12|inst35|inst|data[3]~5_combout\ : std_logic;
SIGNAL \inst12|inst35|inst14|Add0~1\ : std_logic;
SIGNAL \inst12|inst35|inst14|Add0~2_combout\ : std_logic;
SIGNAL \inst12|inst35|inst|data[4]~4_combout\ : std_logic;
SIGNAL \inst12|inst35|inst14|Add0~3\ : std_logic;
SIGNAL \inst12|inst35|inst14|Add0~4_combout\ : std_logic;
SIGNAL \inst12|inst35|inst|data[5]~3_combout\ : std_logic;
SIGNAL \inst12|inst35|inst14|Add0~5\ : std_logic;
SIGNAL \inst12|inst35|inst14|Add0~6_combout\ : std_logic;
SIGNAL \inst12|inst35|inst14|Add0~7\ : std_logic;
SIGNAL \inst12|inst35|inst14|Add0~8_combout\ : std_logic;
SIGNAL \inst12|inst35|inst14|Add0~9\ : std_logic;
SIGNAL \inst12|inst35|inst14|Add0~10_combout\ : std_logic;
SIGNAL \inst12|inst35|inst|data[8]~2_combout\ : std_logic;
SIGNAL \inst12|inst35|inst14|Add0~11\ : std_logic;
SIGNAL \inst12|inst35|inst14|Add0~12_combout\ : std_logic;
SIGNAL \inst12|inst35|inst14|Add0~13\ : std_logic;
SIGNAL \inst12|inst35|inst14|Add0~14_combout\ : std_logic;
SIGNAL \inst12|inst35|inst14|Add0~15\ : std_logic;
SIGNAL \inst12|inst35|inst14|Add0~16_combout\ : std_logic;
SIGNAL \inst12|inst35|inst14|Add0~17\ : std_logic;
SIGNAL \inst12|inst35|inst14|Add0~18_combout\ : std_logic;
SIGNAL \inst12|inst35|inst|data[12]~1_combout\ : std_logic;
SIGNAL \inst12|inst35|inst14|Add0~19\ : std_logic;
SIGNAL \inst12|inst35|inst14|Add0~20_combout\ : std_logic;
SIGNAL \inst12|inst35|inst|data[13]~0_combout\ : std_logic;
SIGNAL \inst12|inst35|inst14|Add0~21\ : std_logic;
SIGNAL \inst12|inst35|inst14|Add0~22_combout\ : std_logic;
SIGNAL \inst12|inst35|inst12|Y[14]~23_combout\ : std_logic;
SIGNAL \inst12|inst35|inst12|Y[13]~18_combout\ : std_logic;
SIGNAL \inst12|inst35|inst12|Y[12]~19_combout\ : std_logic;
SIGNAL \inst12|inst35|inst12|Y[11]~20_combout\ : std_logic;
SIGNAL \inst12|inst35|inst12|Y[10]~21_combout\ : std_logic;
SIGNAL \inst12|inst35|inst12|Y[9]~22_combout\ : std_logic;
SIGNAL \inst12|inst35|inst12|Y[8]~12_combout\ : std_logic;
SIGNAL \inst10|X_RightSide|Add0~0_combout\ : std_logic;
SIGNAL \inst10|X_RightSide|data[0]~4_combout\ : std_logic;
SIGNAL \inst10|X_LeftSide|Add0~0_combout\ : std_logic;
SIGNAL \inst10|X_LeftSide|Add0~1\ : std_logic;
SIGNAL \inst10|X_LeftSide|Add0~2_combout\ : std_logic;
SIGNAL \inst10|X_LeftSide|Add0~3\ : std_logic;
SIGNAL \inst10|X_LeftSide|Add0~4_combout\ : std_logic;
SIGNAL \inst10|X_LeftSide|Add0~5\ : std_logic;
SIGNAL \inst10|X_LeftSide|Add0~6_combout\ : std_logic;
SIGNAL \inst10|inst37|LessThan1~0_combout\ : std_logic;
SIGNAL \inst10|X_LeftSide|Add0~7\ : std_logic;
SIGNAL \inst10|X_LeftSide|Add0~8_combout\ : std_logic;
SIGNAL \inst10|X_LeftSide|data[4]~3_combout\ : std_logic;
SIGNAL \inst10|X_LeftSide|Add0~9\ : std_logic;
SIGNAL \inst10|X_LeftSide|Add0~10_combout\ : std_logic;
SIGNAL \inst10|X_LeftSide|Add0~11\ : std_logic;
SIGNAL \inst10|X_LeftSide|Add0~12_combout\ : std_logic;
SIGNAL \inst10|X_LeftSide|Add0~13\ : std_logic;
SIGNAL \inst10|X_LeftSide|Add0~14_combout\ : std_logic;
SIGNAL \inst10|X_LeftSide|data[7]~2_combout\ : std_logic;
SIGNAL \inst10|inst37|LessThan1~1_combout\ : std_logic;
SIGNAL \inst10|X_LeftSide|Add0~15\ : std_logic;
SIGNAL \inst10|X_LeftSide|Add0~16_combout\ : std_logic;
SIGNAL \inst10|X_LeftSide|data[8]~1_combout\ : std_logic;
SIGNAL \inst10|inst37|LessThan1~2_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_int_reg|data[4]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_int_reg53|data[4]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_reg|data[20]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_reg|data[12]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_reg|data[13]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_int_reg|data[6]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_reg|data[14]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst5|LessThan0~1_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_reg|data[10]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_reg|data[8]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_int_reg|data[3]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst|mouse_data_reg|data[9]~feeder_combout\ : std_logic;
SIGNAL \inst8|inst5|LessThan0~0_combout\ : std_logic;
SIGNAL \inst10|inst39~0_combout\ : std_logic;
SIGNAL \inst10|X_LeftSide|data[1]~0_combout\ : std_logic;
SIGNAL \inst10|X_RightSide|Add0~1\ : std_logic;
SIGNAL \inst10|X_RightSide|Add0~2_combout\ : std_logic;
SIGNAL \inst10|X_RightSide|data[1]~3_combout\ : std_logic;
SIGNAL \inst10|X_RightSide|Add0~3\ : std_logic;
SIGNAL \inst10|X_RightSide|Add0~4_combout\ : std_logic;
SIGNAL \inst10|X_RightSide|Add0~5\ : std_logic;
SIGNAL \inst10|X_RightSide|Add0~6_combout\ : std_logic;
SIGNAL \inst10|X_RightSide|Add0~7\ : std_logic;
SIGNAL \inst10|X_RightSide|Add0~8_combout\ : std_logic;
SIGNAL \inst10|X_RightSide|data[4]~2_combout\ : std_logic;
SIGNAL \inst10|X_RightSide|Add0~9\ : std_logic;
SIGNAL \inst10|X_RightSide|Add0~10_combout\ : std_logic;
SIGNAL \inst10|X_RightSide|Add0~11\ : std_logic;
SIGNAL \inst10|X_RightSide|Add0~12_combout\ : std_logic;
SIGNAL \inst10|X_RightSide|Add0~13\ : std_logic;
SIGNAL \inst10|X_RightSide|Add0~14_combout\ : std_logic;
SIGNAL \inst10|X_RightSide|data[7]~1_combout\ : std_logic;
SIGNAL \inst10|inst43~0_combout\ : std_logic;
SIGNAL \inst10|X_RightSide|Add0~15\ : std_logic;
SIGNAL \inst10|X_RightSide|Add0~16_combout\ : std_logic;
SIGNAL \inst10|X_RightSide|data[8]~0_combout\ : std_logic;
SIGNAL \inst10|X_RightSide|Add0~17\ : std_logic;
SIGNAL \inst10|X_RightSide|Add0~18_combout\ : std_logic;
SIGNAL \inst10|inst41|LessThan0~0_combout\ : std_logic;
SIGNAL \inst10|inst43~1_combout\ : std_logic;
SIGNAL \inst10|inst43~2_combout\ : std_logic;
SIGNAL \inst10|X_LeftSide|Add0~17\ : std_logic;
SIGNAL \inst10|X_LeftSide|Add0~18_combout\ : std_logic;
SIGNAL \inst12|inst35|inst12|Y[7]~13_combout\ : std_logic;
SIGNAL \inst12|inst35|inst12|Y[6]~14_combout\ : std_logic;
SIGNAL \inst12|inst35|inst12|Y[5]~15_combout\ : std_logic;
SIGNAL \inst12|inst35|inst12|Y[4]~16_combout\ : std_logic;
SIGNAL \inst12|inst35|inst12|Y[3]~17_combout\ : std_logic;
SIGNAL \inst12|inst35|inst3|C[3]~1\ : std_logic;
SIGNAL \inst12|inst35|inst3|C[4]~3\ : std_logic;
SIGNAL \inst12|inst35|inst3|C[5]~5\ : std_logic;
SIGNAL \inst12|inst35|inst3|C[6]~7\ : std_logic;
SIGNAL \inst12|inst35|inst3|C[7]~9\ : std_logic;
SIGNAL \inst12|inst35|inst3|C[8]~11\ : std_logic;
SIGNAL \inst12|inst35|inst3|C[9]~13\ : std_logic;
SIGNAL \inst12|inst35|inst3|C[10]~15\ : std_logic;
SIGNAL \inst12|inst35|inst3|C[11]~17\ : std_logic;
SIGNAL \inst12|inst35|inst3|C[12]~19\ : std_logic;
SIGNAL \inst12|inst35|inst3|C[13]~21\ : std_logic;
SIGNAL \inst12|inst35|inst3|C[14]~22_combout\ : std_logic;
SIGNAL \inst12|inst28~combout\ : std_logic;
SIGNAL \inst12|inst35|inst3|C[13]~20_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode434w[2]~0_combout\ : std_logic;
SIGNAL \inst12|inst8|Y[3]~1_combout\ : std_logic;
SIGNAL \inst12|inst41|Y[0]~0_combout\ : std_logic;
SIGNAL \inst12|inst41|Y[1]~1_combout\ : std_logic;
SIGNAL \inst12|inst41|Y[2]~2_combout\ : std_logic;
SIGNAL \inst12|inst35|inst3|C[3]~0_combout\ : std_logic;
SIGNAL \inst12|inst10|inst3|C[3]~0_combout\ : std_logic;
SIGNAL \inst12|inst35|inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst12|inst35|inst3|C[4]~2_combout\ : std_logic;
SIGNAL \inst12|inst10|inst3|C[4]~2_combout\ : std_logic;
SIGNAL \inst12|inst35|inst3|Add0~1_combout\ : std_logic;
SIGNAL \inst12|inst35|inst3|C[5]~4_combout\ : std_logic;
SIGNAL \inst12|inst10|inst3|C[5]~4_combout\ : std_logic;
SIGNAL \inst12|inst35|inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst12|inst35|inst3|C[6]~6_combout\ : std_logic;
SIGNAL \inst12|inst10|inst3|C[6]~6_combout\ : std_logic;
SIGNAL \inst12|inst35|inst3|Add0~3_combout\ : std_logic;
SIGNAL \inst12|inst10|inst3|C[7]~8_combout\ : std_logic;
SIGNAL \inst12|inst35|inst3|C[7]~8_combout\ : std_logic;
SIGNAL \inst12|inst35|inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst12|inst10|inst3|C[8]~10_combout\ : std_logic;
SIGNAL \inst12|inst35|inst3|C[8]~10_combout\ : std_logic;
SIGNAL \inst12|inst35|inst3|Add0~5_combout\ : std_logic;
SIGNAL \inst12|inst10|inst3|C[9]~12_combout\ : std_logic;
SIGNAL \inst12|inst35|inst3|C[9]~12_combout\ : std_logic;
SIGNAL \inst12|inst35|inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst12|inst10|inst3|C[10]~14_combout\ : std_logic;
SIGNAL \inst12|inst35|inst3|C[10]~14_combout\ : std_logic;
SIGNAL \inst12|inst35|inst3|Add0~7_combout\ : std_logic;
SIGNAL \inst12|inst10|inst3|C[11]~16_combout\ : std_logic;
SIGNAL \inst12|inst35|inst3|C[11]~16_combout\ : std_logic;
SIGNAL \inst12|inst35|inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst12|inst10|inst3|C[12]~18_combout\ : std_logic;
SIGNAL \inst12|inst35|inst3|C[12]~18_combout\ : std_logic;
SIGNAL \inst12|inst35|inst3|Add0~9_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[3]~0_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode442w[2]~0_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \inst12|inst8|Y[2]~2_combout\ : std_logic;
SIGNAL \inst1|inst51|LessThan1~2_combout\ : std_logic;
SIGNAL \inst12|inst8|Y[2]~3_combout\ : std_logic;
SIGNAL \inst12|inst8|Y[2]~4_combout\ : std_logic;
SIGNAL \inst12|inst8|Y[2]~5_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a39\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst10|inst16|Equal0~0_combout\ : std_logic;
SIGNAL \inst10|inst16|Equal0~2_combout\ : std_logic;
SIGNAL \inst10|inst16|Equal0~1_combout\ : std_logic;
SIGNAL \inst10|inst16|Equal0~3_combout\ : std_logic;
SIGNAL \inst10|inst16|Equal0~4_combout\ : std_logic;
SIGNAL \inst10|inst16|Equal0~5_combout\ : std_logic;
SIGNAL \inst10|inst17|Equal0~4_combout\ : std_logic;
SIGNAL \inst10|inst17|Equal0~2_combout\ : std_logic;
SIGNAL \inst10|inst17|Equal0~3_combout\ : std_logic;
SIGNAL \inst10|inst17|Equal0~1_combout\ : std_logic;
SIGNAL \inst10|inst17|Equal0~5_combout\ : std_logic;
SIGNAL \inst10|inst17|LessThan1~1_cout\ : std_logic;
SIGNAL \inst10|inst17|LessThan1~3_cout\ : std_logic;
SIGNAL \inst10|inst17|LessThan1~5_cout\ : std_logic;
SIGNAL \inst10|inst17|LessThan1~7_cout\ : std_logic;
SIGNAL \inst10|inst17|LessThan1~9_cout\ : std_logic;
SIGNAL \inst10|inst17|LessThan1~11_cout\ : std_logic;
SIGNAL \inst10|inst17|LessThan1~13_cout\ : std_logic;
SIGNAL \inst10|inst17|LessThan1~15_cout\ : std_logic;
SIGNAL \inst10|inst17|LessThan1~17_cout\ : std_logic;
SIGNAL \inst10|inst17|LessThan1~18_combout\ : std_logic;
SIGNAL \inst10|inst17|Equal0~0_combout\ : std_logic;
SIGNAL \inst10|inst52~combout\ : std_logic;
SIGNAL \inst10|inst16|LessThan1~1_cout\ : std_logic;
SIGNAL \inst10|inst16|LessThan1~3_cout\ : std_logic;
SIGNAL \inst10|inst16|LessThan1~5_cout\ : std_logic;
SIGNAL \inst10|inst16|LessThan1~7_cout\ : std_logic;
SIGNAL \inst10|inst16|LessThan1~9_cout\ : std_logic;
SIGNAL \inst10|inst16|LessThan1~11_cout\ : std_logic;
SIGNAL \inst10|inst16|LessThan1~13_cout\ : std_logic;
SIGNAL \inst10|inst16|LessThan1~15_cout\ : std_logic;
SIGNAL \inst10|inst16|LessThan1~17_cout\ : std_logic;
SIGNAL \inst10|inst16|LessThan1~18_combout\ : std_logic;
SIGNAL \inst10|inst21~0_combout\ : std_logic;
SIGNAL \inst10|inst18|LessThan1~1_cout\ : std_logic;
SIGNAL \inst10|inst18|LessThan1~3_cout\ : std_logic;
SIGNAL \inst10|inst18|LessThan1~5_cout\ : std_logic;
SIGNAL \inst10|inst18|LessThan1~7_cout\ : std_logic;
SIGNAL \inst10|inst18|LessThan1~9_cout\ : std_logic;
SIGNAL \inst10|inst18|LessThan1~11_cout\ : std_logic;
SIGNAL \inst10|inst18|LessThan1~13_cout\ : std_logic;
SIGNAL \inst10|inst18|LessThan1~15_cout\ : std_logic;
SIGNAL \inst10|inst18|LessThan1~17_cout\ : std_logic;
SIGNAL \inst10|inst18|LessThan1~18_combout\ : std_logic;
SIGNAL \inst10|inst21~4_combout\ : std_logic;
SIGNAL \inst10|inst21~5_combout\ : std_logic;
SIGNAL \inst10|inst18|Equal0~0_combout\ : std_logic;
SIGNAL \inst10|inst21~2_combout\ : std_logic;
SIGNAL \inst10|inst21~3_combout\ : std_logic;
SIGNAL \inst10|inst21~1_combout\ : std_logic;
SIGNAL \inst10|inst21~6_combout\ : std_logic;
SIGNAL \inst10|inst15|LessThan1~1_cout\ : std_logic;
SIGNAL \inst10|inst15|LessThan1~3_cout\ : std_logic;
SIGNAL \inst10|inst15|LessThan1~5_cout\ : std_logic;
SIGNAL \inst10|inst15|LessThan1~7_cout\ : std_logic;
SIGNAL \inst10|inst15|LessThan1~9_cout\ : std_logic;
SIGNAL \inst10|inst15|LessThan1~11_cout\ : std_logic;
SIGNAL \inst10|inst15|LessThan1~13_cout\ : std_logic;
SIGNAL \inst10|inst15|LessThan1~15_cout\ : std_logic;
SIGNAL \inst10|inst15|LessThan1~17_cout\ : std_logic;
SIGNAL \inst10|inst15|LessThan1~18_combout\ : std_logic;
SIGNAL \inst10|inst15|Equal0~1_combout\ : std_logic;
SIGNAL \inst10|inst15|Equal0~3_combout\ : std_logic;
SIGNAL \inst10|inst15|Equal0~4_combout\ : std_logic;
SIGNAL \inst10|inst15|Equal0~2_combout\ : std_logic;
SIGNAL \inst10|inst15|Equal0~5_combout\ : std_logic;
SIGNAL \inst10|inst15|Equal0~0_combout\ : std_logic;
SIGNAL \inst10|inst50~combout\ : std_logic;
SIGNAL \inst10|inst21~7_combout\ : std_logic;
SIGNAL \inst13|Y[3]~6_combout\ : std_logic;
SIGNAL \inst1|inst24~1_combout\ : std_logic;
SIGNAL \inst1|inst69~5_combout\ : std_logic;
SIGNAL \inst1|inst24~0_combout\ : std_logic;
SIGNAL \inst1|inst69~0_combout\ : std_logic;
SIGNAL \inst1|inst66~2_combout\ : std_logic;
SIGNAL \inst1|inst50|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|inst51|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|inst64~0_combout\ : std_logic;
SIGNAL \inst1|inst64~1_combout\ : std_logic;
SIGNAL \inst1|inst51|LessThan1~1_combout\ : std_logic;
SIGNAL \inst1|inst65~0_combout\ : std_logic;
SIGNAL \inst1|inst65~1_combout\ : std_logic;
SIGNAL \inst1|inst19|inst14~0_combout\ : std_logic;
SIGNAL \inst1|inst19|inst14~1_combout\ : std_logic;
SIGNAL \inst1|inst19|inst14~2_combout\ : std_logic;
SIGNAL \inst1|inst69~1_combout\ : std_logic;
SIGNAL \inst1|inst69~2_combout\ : std_logic;
SIGNAL \inst1|inst69~3_combout\ : std_logic;
SIGNAL \inst1|inst69~4_combout\ : std_logic;
SIGNAL \inst1|inst66~3_combout\ : std_logic;
SIGNAL \inst1|inst66~4_combout\ : std_logic;
SIGNAL \inst1|inst66~6_combout\ : std_logic;
SIGNAL \inst1|inst66~5_combout\ : std_logic;
SIGNAL \inst1|inst67~0_combout\ : std_logic;
SIGNAL \inst1|inst67~1_combout\ : std_logic;
SIGNAL \inst1|inst50|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|inst68~0_combout\ : std_logic;
SIGNAL \inst1|inst68~1_combout\ : std_logic;
SIGNAL \inst1|inst68~2_combout\ : std_logic;
SIGNAL \inst1|inst68~3_combout\ : std_logic;
SIGNAL \inst1|inst19|inst11|Y[7]~0_combout\ : std_logic;
SIGNAL \inst13|Y[3]~2_combout\ : std_logic;
SIGNAL \inst1|inst19|inst11|Y[3]~1_combout\ : std_logic;
SIGNAL \inst15|Y[3]~0_combout\ : std_logic;
SIGNAL \inst15|Y[3]~1_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a38~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst15|Y[2]~2_combout\ : std_logic;
SIGNAL \inst4[2]~2_combout\ : std_logic;
SIGNAL \inst|inst16~combout\ : std_logic;
SIGNAL \inst4[2]~3_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a37\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[1]~5_combout\ : std_logic;
SIGNAL \inst4[1]~4_combout\ : std_logic;
SIGNAL \inst4[1]~5_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a36~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[0]~6_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst4[0]~6_combout\ : std_logic;
SIGNAL \inst4[0]~7_combout\ : std_logic;
SIGNAL \inst10|inst27|inst11|Y[7]~1_combout\ : std_logic;
SIGNAL \inst12|inst8|Y[7]~6_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[7]~8_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a43\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[7]~9_combout\ : std_logic;
SIGNAL \inst14|Y[3]~0_combout\ : std_logic;
SIGNAL \inst1|inst19|inst14~3_combout\ : std_logic;
SIGNAL \inst1|inst19|inst11|Y[7]~2_combout\ : std_logic;
SIGNAL \inst14|Y[3]~1_combout\ : std_logic;
SIGNAL \inst14|Y[2]~2_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a42~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[6]~10_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[6]~11_combout\ : std_logic;
SIGNAL \inst3[2]~2_combout\ : std_logic;
SIGNAL \inst3[2]~3_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[5]~12_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \inst12|inst8|Y[4]~7_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a41\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[5]~13_combout\ : std_logic;
SIGNAL \inst3[1]~4_combout\ : std_logic;
SIGNAL \inst3[1]~5_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a40~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[4]~14_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[4]~15_combout\ : std_logic;
SIGNAL \inst3[0]~6_combout\ : std_logic;
SIGNAL \inst3[0]~7_combout\ : std_logic;
SIGNAL \inst10|inst27|inst11|Y[11]~2_combout\ : std_logic;
SIGNAL \inst1|inst19|inst11|Y[11]~3_combout\ : std_logic;
SIGNAL \inst12|inst8|Y[11]~8_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a47\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a35~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[11]~16_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[11]~17_combout\ : std_logic;
SIGNAL \inst13|Y[3]~3_combout\ : std_logic;
SIGNAL \inst13|Y[3]~4_combout\ : std_logic;
SIGNAL \inst13|Y[2]~5_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[10]~18_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a34~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a46~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[10]~19_combout\ : std_logic;
SIGNAL \inst2[2]~2_combout\ : std_logic;
SIGNAL \inst2[2]~3_combout\ : std_logic;
SIGNAL \inst12|inst8|Y[9]~9_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a45\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a33~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[9]~20_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[9]~21_combout\ : std_logic;
SIGNAL \inst2[1]~4_combout\ : std_logic;
SIGNAL \inst2[1]~5_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a32~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a44~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[8]~22_combout\ : std_logic;
SIGNAL \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[8]~23_combout\ : std_logic;
SIGNAL \inst2[0]~6_combout\ : std_logic;
SIGNAL \inst2[0]~7_combout\ : std_logic;
SIGNAL \inst8|inst|inst4|inst8|data\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst8|inst|inst4|inst34|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|inst|inst4|ps2_word_reg|inst|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|inst|inst4|ps2_word_reg|inst5|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|inst|inst4|ps2_word_reg|inst7|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|inst|inst4|ps2_word_reg|inst9|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|inst|inst4|ps2_word_reg|inst11|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|inst|inst4|ps2_word_reg|inst13|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|inst|inst4|ps2_word_reg|inst15|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|inst|inst4|ps2_word_reg|inst17|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|inst|inst4|ps2_word_reg|inst19|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|inst|inst4|ps2_word_reg|inst21|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|inst|inst4|ps2_word_reg|inst23|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|inst|inst11|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|inst|mouse_data_int_reg53|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|inst|mouse_data_int_reg|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|inst|mouse_data_int_reg52|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst12|inst14|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst10|inst4|data\ : std_logic_vector(9 DOWNTO 0);
SIGNAL inst4 : std_logic_vector(3 DOWNTO 0);
SIGNAL inst3 : std_logic_vector(3 DOWNTO 0);
SIGNAL inst2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst|data\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|inst1|data\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst8|inst|packet_byte_reg|data\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst8|inst|inst4|bit_cnt|data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|inst|inst4|Timer_reg|data\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst8|inst|inst4|inst31|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|inst|inst9|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst8|inst|mouse_data_reg|data\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|address_reg_b\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode442w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode434w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode426w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode413w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst12|inst10|inst|data\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst12|inst35|inst4|data\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst12|inst35|inst|data\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst10|Y_DownSide|data\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst10|inst7|cnt\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst10|Y_UpSide|data\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst10|X_RightSide|data\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst10|X_LeftSide|data\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst10|Colour|data\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst10|inst33|cnt\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \inst12|ALT_INV_inst42~combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst15~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst10~3_combout\ : std_logic;

BEGIN

H_SYNC <= ww_H_SYNC;
ww_CLK <= CLK;
V_SYNC <= ww_V_SYNC;
LED1 <= ww_LED1;
LED2 <= ww_LED2;
LED3 <= ww_LED3;
BLUE <= ww_BLUE;
GREEN <= ww_GREEN;
RED <= ww_RED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[3]~1_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a15~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[3]~1_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a27~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[3]~1_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a3~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[2]~5_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a26~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[2]~5_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a14~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[2]~5_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a2~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a38_PORTADATAIN_bus\ <= (\inst12|inst8|Y[3]~1_combout\ & \inst12|inst8|Y[2]~5_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & \inst12|inst35|inst3|Add0~5_combout\ & 
\inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & \inst12|inst41|Y[2]~2_combout\ & 
\inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a38_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & \inst12|inst10|inst3|C[8]~10_combout\ & 
\inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & \inst|inst|data\(4) & \inst|inst|data\(3) & 
\inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a38~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a38_PORTBDATAOUT_bus\(0);
\inst12|inst|altsyncram_component|auto_generated|ram_block1a39\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a38_PORTBDATAOUT_bus\(1);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[2]~5_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a13~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[2]~5_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a25~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[2]~5_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a1~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[2]~5_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a24~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[2]~5_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a12~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[2]~5_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a0~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\ <= (\inst12|inst8|Y[2]~5_combout\ & \inst12|inst8|Y[2]~5_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & \inst12|inst35|inst3|Add0~5_combout\ & 
\inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & \inst12|inst41|Y[2]~2_combout\ & 
\inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a36_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & \inst12|inst10|inst3|C[8]~10_combout\ & 
\inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & \inst|inst|data\(4) & \inst|inst|data\(3) & 
\inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a36~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(0);
\inst12|inst|altsyncram_component|auto_generated|ram_block1a37\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(1);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[7]~6_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a19~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[7]~6_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a31~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[7]~6_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a7~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[7]~6_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a30~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[7]~6_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a18~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[7]~6_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a6~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a42_PORTADATAIN_bus\ <= (\inst12|inst8|Y[7]~6_combout\ & \inst12|inst8|Y[7]~6_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & \inst12|inst35|inst3|Add0~5_combout\ & 
\inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & \inst12|inst41|Y[2]~2_combout\ & 
\inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a42_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & \inst12|inst10|inst3|C[8]~10_combout\ & 
\inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & \inst|inst|data\(4) & \inst|inst|data\(3) & 
\inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a42~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a42_PORTBDATAOUT_bus\(0);
\inst12|inst|altsyncram_component|auto_generated|ram_block1a43\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a42_PORTBDATAOUT_bus\(1);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[7]~6_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a17~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[7]~6_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a29~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[7]~6_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a5~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[4]~7_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a28~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[4]~7_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a16~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[4]~7_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a4~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a40_PORTADATAIN_bus\ <= (\inst12|inst8|Y[7]~6_combout\ & \inst12|inst8|Y[4]~7_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & \inst12|inst35|inst3|Add0~5_combout\ & 
\inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & \inst12|inst41|Y[2]~2_combout\ & 
\inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a40_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & \inst12|inst10|inst3|C[8]~10_combout\ & 
\inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & \inst|inst|data\(4) & \inst|inst|data\(3) & 
\inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a40~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a40_PORTBDATAOUT_bus\(0);
\inst12|inst|altsyncram_component|auto_generated|ram_block1a41\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a40_PORTBDATAOUT_bus\(1);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[11]~8_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a23~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[11]~8_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a35_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a35~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a35_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[11]~8_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a11~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[11]~8_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a34_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a34~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a34_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[11]~8_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a22~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[11]~8_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a10~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a46_PORTADATAIN_bus\ <= (\inst12|inst8|Y[11]~8_combout\ & \inst12|inst8|Y[11]~8_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & \inst12|inst35|inst3|Add0~5_combout\ & 
\inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & \inst12|inst41|Y[2]~2_combout\ & 
\inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a46_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & \inst12|inst10|inst3|C[8]~10_combout\ & 
\inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & \inst|inst|data\(4) & \inst|inst|data\(3) & 
\inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a46~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a46_PORTBDATAOUT_bus\(0);
\inst12|inst|altsyncram_component|auto_generated|ram_block1a47\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a46_PORTBDATAOUT_bus\(1);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[9]~9_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a21~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[9]~9_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a33_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a33~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a33_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[9]~9_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a9~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[9]~9_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a32_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a32~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a32_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[9]~9_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a20~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \inst12|inst8|Y[9]~9_combout\;

\inst12|inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~9_combout\ & \inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & 
\inst12|inst35|inst3|Add0~5_combout\ & \inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & 
\inst12|inst41|Y[2]~2_combout\ & \inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[12]~18_combout\ & \inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & 
\inst12|inst10|inst3|C[8]~10_combout\ & \inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & 
\inst|inst|data\(4) & \inst|inst|data\(3) & \inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a8~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a44_PORTADATAIN_bus\ <= (\inst12|inst8|Y[9]~9_combout\ & \inst12|inst8|Y[9]~9_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\ <= (\inst12|inst35|inst3|Add0~8_combout\ & \inst12|inst35|inst3|Add0~7_combout\ & \inst12|inst35|inst3|Add0~6_combout\ & \inst12|inst35|inst3|Add0~5_combout\ & 
\inst12|inst35|inst3|Add0~4_combout\ & \inst12|inst35|inst3|Add0~3_combout\ & \inst12|inst35|inst3|Add0~2_combout\ & \inst12|inst35|inst3|Add0~1_combout\ & \inst12|inst35|inst3|Add0~0_combout\ & \inst12|inst41|Y[2]~2_combout\ & 
\inst12|inst41|Y[1]~1_combout\ & \inst12|inst41|Y[0]~0_combout\);

\inst12|inst|altsyncram_component|auto_generated|ram_block1a44_PORTBADDR_bus\ <= (\inst12|inst10|inst3|C[11]~16_combout\ & \inst12|inst10|inst3|C[10]~14_combout\ & \inst12|inst10|inst3|C[9]~12_combout\ & \inst12|inst10|inst3|C[8]~10_combout\ & 
\inst12|inst10|inst3|C[7]~8_combout\ & \inst12|inst10|inst3|C[6]~6_combout\ & \inst12|inst10|inst3|C[5]~4_combout\ & \inst12|inst10|inst3|C[4]~2_combout\ & \inst12|inst10|inst3|C[3]~0_combout\ & \inst|inst|data\(4) & \inst|inst|data\(3) & 
\inst|inst|data\(2));

\inst12|inst|altsyncram_component|auto_generated|ram_block1a44~portbdataout\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a44_PORTBDATAOUT_bus\(0);
\inst12|inst|altsyncram_component|auto_generated|ram_block1a45\ <= \inst12|inst|altsyncram_component|auto_generated|ram_block1a44_PORTBDATAOUT_bus\(1);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst12|ALT_INV_inst42~combout\ <= NOT \inst12|inst42~combout\;
\inst|ALT_INV_inst15~3_combout\ <= NOT \inst|inst15~3_combout\;
\inst|ALT_INV_inst10~3_combout\ <= NOT \inst|inst10~3_combout\;

-- Location: IOOBUF_X41_Y11_N2
\PS2C~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|inst4|inst9|inst4~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \PS2C~output_o\);

-- Location: IOOBUF_X41_Y12_N23
\PS2D~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|inst4|ps2_word_reg|inst23|data\(0),
	oe => \inst8|inst|inst4|inst17~q\,
	devoe => ww_devoe,
	o => \PS2D~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\H_SYNC~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_inst10~3_combout\,
	devoe => ww_devoe,
	o => \H_SYNC~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\V_SYNC~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_inst15~3_combout\,
	devoe => ww_devoe,
	o => \V_SYNC~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\LED1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|mouse_data_reg|data\(17),
	devoe => ww_devoe,
	o => \LED1~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LED2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|mouse_data_reg|data\(16),
	devoe => ww_devoe,
	o => \LED2~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\LED3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst14|data\(0),
	devoe => ww_devoe,
	o => \LED3~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\BLUE[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst4(3),
	devoe => ww_devoe,
	o => \BLUE[3]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\BLUE[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4[2]~3_combout\,
	devoe => ww_devoe,
	o => \BLUE[2]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\BLUE[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4[1]~5_combout\,
	devoe => ww_devoe,
	o => \BLUE[1]~output_o\);

-- Location: IOOBUF_X41_Y19_N16
\BLUE[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4[0]~7_combout\,
	devoe => ww_devoe,
	o => \BLUE[0]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\GREEN[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst3(3),
	devoe => ww_devoe,
	o => \GREEN[3]~output_o\);

-- Location: IOOBUF_X41_Y21_N16
\GREEN[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3[2]~3_combout\,
	devoe => ww_devoe,
	o => \GREEN[2]~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\GREEN[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3[1]~5_combout\,
	devoe => ww_devoe,
	o => \GREEN[1]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\GREEN[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3[0]~7_combout\,
	devoe => ww_devoe,
	o => \GREEN[0]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\RED[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(3),
	devoe => ww_devoe,
	o => \RED[3]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\RED[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2[2]~3_combout\,
	devoe => ww_devoe,
	o => \RED[2]~output_o\);

-- Location: IOOBUF_X41_Y25_N2
\RED[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2[1]~5_combout\,
	devoe => ww_devoe,
	o => \RED[1]~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\RED[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2[0]~7_combout\,
	devoe => ww_devoe,
	o => \RED[0]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G9
\CLK~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: LCCOMB_X27_Y17_N8
\inst8|inst|inst9|data[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst9|data[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst8|inst|inst9|data[0]~feeder_combout\);

-- Location: FF_X27_Y17_N9
\inst8|inst|inst9|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst9|data[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst9|data\(0));

-- Location: IOIBUF_X41_Y12_N22
\PS2D~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PS2D,
	o => \PS2D~input_o\);

-- Location: FF_X33_Y17_N23
\inst8|inst|inst4|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \PS2D~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst7|inst~q\);

-- Location: LCCOMB_X33_Y17_N2
\inst8|inst|inst4|inst7|inst2|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst7|inst2|inst~0_combout\ = (!\inst8|inst|inst4|inst7|inst2|inst~q\ & (\PS2D~input_o\ $ (!\inst8|inst|inst4|inst7|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2D~input_o\,
	datac => \inst8|inst|inst4|inst7|inst2|inst~q\,
	datad => \inst8|inst|inst4|inst7|inst~q\,
	combout => \inst8|inst|inst4|inst7|inst2|inst~0_combout\);

-- Location: FF_X33_Y17_N3
\inst8|inst|inst4|inst7|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|inst7|inst2|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst7|inst2|inst~q\);

-- Location: LCCOMB_X33_Y17_N12
\inst8|inst|inst4|inst7|inst3|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst7|inst3|inst~0_combout\ = (\PS2D~input_o\ & (\inst8|inst|inst4|inst7|inst~q\ & (\inst8|inst|inst4|inst7|inst3|inst~q\ $ (\inst8|inst|inst4|inst7|inst2|inst~q\)))) # (!\PS2D~input_o\ & (!\inst8|inst|inst4|inst7|inst~q\ & 
-- (\inst8|inst|inst4|inst7|inst3|inst~q\ $ (\inst8|inst|inst4|inst7|inst2|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2D~input_o\,
	datab => \inst8|inst|inst4|inst7|inst~q\,
	datac => \inst8|inst|inst4|inst7|inst3|inst~q\,
	datad => \inst8|inst|inst4|inst7|inst2|inst~q\,
	combout => \inst8|inst|inst4|inst7|inst3|inst~0_combout\);

-- Location: FF_X33_Y17_N13
\inst8|inst|inst4|inst7|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|inst7|inst3|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst7|inst3|inst~q\);

-- Location: LCCOMB_X33_Y17_N26
\inst8|inst|inst4|inst7|inst6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst7|inst6~combout\ = \inst8|inst|inst4|inst7|inst~q\ $ (\PS2D~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|inst7|inst~q\,
	datac => \PS2D~input_o\,
	combout => \inst8|inst|inst4|inst7|inst6~combout\);

-- Location: LCCOMB_X33_Y17_N28
\inst8|inst|inst4|inst7|inst4|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst7|inst4|inst~0_combout\ = (!\inst8|inst|inst4|inst7|inst6~combout\ & (\inst8|inst|inst4|inst7|inst4|inst~q\ $ (((\inst8|inst|inst4|inst7|inst2|inst~q\ & \inst8|inst|inst4|inst7|inst3|inst~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|inst7|inst6~combout\,
	datab => \inst8|inst|inst4|inst7|inst2|inst~q\,
	datac => \inst8|inst|inst4|inst7|inst4|inst~q\,
	datad => \inst8|inst|inst4|inst7|inst3|inst~q\,
	combout => \inst8|inst|inst4|inst7|inst4|inst~0_combout\);

-- Location: FF_X33_Y17_N29
\inst8|inst|inst4|inst7|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|inst7|inst4|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst7|inst4|inst~q\);

-- Location: LCCOMB_X33_Y17_N4
\inst8|inst|inst4|inst7|inst5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst7|inst5~combout\ = (\inst8|inst|inst4|inst7|inst3|inst~q\ & (\inst8|inst|inst4|inst7|inst2|inst~q\ & \inst8|inst|inst4|inst7|inst4|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|inst7|inst3|inst~q\,
	datab => \inst8|inst|inst4|inst7|inst2|inst~q\,
	datad => \inst8|inst|inst4|inst7|inst4|inst~q\,
	combout => \inst8|inst|inst4|inst7|inst5~combout\);

-- Location: FF_X33_Y17_N5
\inst8|inst|inst4|inst7|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|inst|inst4|inst7|inst~q\,
	sload => VCC,
	ena => \inst8|inst|inst4|inst7|inst5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst7|inst1~q\);

-- Location: LCCOMB_X30_Y17_N0
\inst8|inst|inst4|inst62~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst62~feeder_combout\ = \inst8|inst|inst4|inst7|inst1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|inst4|inst7|inst1~q\,
	combout => \inst8|inst|inst4|inst62~feeder_combout\);

-- Location: FF_X30_Y17_N1
\inst8|inst|inst4|inst62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|inst62~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst62~q\);

-- Location: IOIBUF_X41_Y11_N1
\PS2C~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PS2C,
	o => \PS2C~input_o\);

-- Location: FF_X29_Y15_N11
\inst8|inst|inst4|inst64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \PS2C~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst64~q\);

-- Location: LCCOMB_X29_Y15_N26
\inst8|inst|inst4|inst3|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst3|inst~feeder_combout\ = \inst8|inst|inst4|inst64~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|inst4|inst64~q\,
	combout => \inst8|inst|inst4|inst3|inst~feeder_combout\);

-- Location: FF_X29_Y15_N27
\inst8|inst|inst4|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst3|inst~q\);

-- Location: LCCOMB_X29_Y15_N6
\inst8|inst|inst4|inst3|inst2|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst3|inst2|inst~0_combout\ = (!\inst8|inst|inst4|inst3|inst2|inst~q\ & (\inst8|inst|inst4|inst3|inst~q\ $ (!\inst8|inst|inst4|inst64~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|inst3|inst~q\,
	datac => \inst8|inst|inst4|inst3|inst2|inst~q\,
	datad => \inst8|inst|inst4|inst64~q\,
	combout => \inst8|inst|inst4|inst3|inst2|inst~0_combout\);

-- Location: FF_X29_Y15_N7
\inst8|inst|inst4|inst3|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|inst3|inst2|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst3|inst2|inst~q\);

-- Location: LCCOMB_X29_Y15_N8
\inst8|inst|inst4|inst3|inst3|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst3|inst3|inst~0_combout\ = (\inst8|inst|inst4|inst64~q\ & (\inst8|inst|inst4|inst3|inst~q\ & (\inst8|inst|inst4|inst3|inst3|inst~q\ $ (\inst8|inst|inst4|inst3|inst2|inst~q\)))) # (!\inst8|inst|inst4|inst64~q\ & 
-- (!\inst8|inst|inst4|inst3|inst~q\ & (\inst8|inst|inst4|inst3|inst3|inst~q\ $ (\inst8|inst|inst4|inst3|inst2|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|inst64~q\,
	datab => \inst8|inst|inst4|inst3|inst~q\,
	datac => \inst8|inst|inst4|inst3|inst3|inst~q\,
	datad => \inst8|inst|inst4|inst3|inst2|inst~q\,
	combout => \inst8|inst|inst4|inst3|inst3|inst~0_combout\);

-- Location: FF_X29_Y15_N9
\inst8|inst|inst4|inst3|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|inst3|inst3|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst3|inst3|inst~q\);

-- Location: LCCOMB_X29_Y15_N12
\inst8|inst|inst4|inst3|inst6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst3|inst6~combout\ = \inst8|inst|inst4|inst3|inst~q\ $ (\inst8|inst|inst4|inst64~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst|inst4|inst3|inst~q\,
	datad => \inst8|inst|inst4|inst64~q\,
	combout => \inst8|inst|inst4|inst3|inst6~combout\);

-- Location: LCCOMB_X29_Y15_N28
\inst8|inst|inst4|inst3|inst4|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst3|inst4|inst~0_combout\ = (!\inst8|inst|inst4|inst3|inst6~combout\ & (\inst8|inst|inst4|inst3|inst4|inst~q\ $ (((\inst8|inst|inst4|inst3|inst3|inst~q\ & \inst8|inst|inst4|inst3|inst2|inst~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|inst3|inst6~combout\,
	datab => \inst8|inst|inst4|inst3|inst3|inst~q\,
	datac => \inst8|inst|inst4|inst3|inst4|inst~q\,
	datad => \inst8|inst|inst4|inst3|inst2|inst~q\,
	combout => \inst8|inst|inst4|inst3|inst4|inst~0_combout\);

-- Location: FF_X29_Y15_N29
\inst8|inst|inst4|inst3|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|inst3|inst4|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst3|inst4|inst~q\);

-- Location: LCCOMB_X29_Y15_N24
\inst8|inst|inst4|inst3|inst5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst3|inst5~combout\ = (\inst8|inst|inst4|inst3|inst2|inst~q\ & (\inst8|inst|inst4|inst3|inst3|inst~q\ & \inst8|inst|inst4|inst3|inst4|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|inst3|inst2|inst~q\,
	datab => \inst8|inst|inst4|inst3|inst3|inst~q\,
	datad => \inst8|inst|inst4|inst3|inst4|inst~q\,
	combout => \inst8|inst|inst4|inst3|inst5~combout\);

-- Location: FF_X29_Y15_N25
\inst8|inst|inst4|inst3|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|inst|inst4|inst3|inst~q\,
	sload => VCC,
	ena => \inst8|inst|inst4|inst3|inst5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst3|inst1~q\);

-- Location: FF_X29_Y17_N27
\inst8|inst|inst4|inst52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|inst|inst4|inst3|inst1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst52~q\);

-- Location: LCCOMB_X30_Y17_N2
\inst8|inst|inst4|inst25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst25~0_combout\ = (\inst8|inst|inst4|inst8|data\(0) & (\inst8|inst|inst4|inst62~q\ & (\inst8|inst|inst4|inst52~q\ & \inst8|inst|inst4|inst8|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|inst8|data\(0),
	datab => \inst8|inst|inst4|inst62~q\,
	datac => \inst8|inst|inst4|inst52~q\,
	datad => \inst8|inst|inst4|inst8|data\(1),
	combout => \inst8|inst|inst4|inst25~0_combout\);

-- Location: LCCOMB_X30_Y17_N12
\inst8|inst|inst4|inst8|data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst8|data[0]~0_combout\ = (!\inst8|inst|inst4|inst25~0_combout\ & (\inst8|inst|inst4|inst79~combout\ $ (\inst8|inst|inst4|inst8|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|inst79~combout\,
	datac => \inst8|inst|inst4|inst8|data\(0),
	datad => \inst8|inst|inst4|inst25~0_combout\,
	combout => \inst8|inst|inst4|inst8|data[0]~0_combout\);

-- Location: FF_X30_Y17_N13
\inst8|inst|inst4|inst8|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|inst8|data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst8|data\(0));

-- Location: LCCOMB_X30_Y17_N4
\inst8|inst|inst4|bit_cnt|data_next[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|bit_cnt|data_next[0]~3_combout\ = (!\inst8|inst|inst4|bit_cnt|data\(0) & ((\inst8|inst|inst4|inst8|data\(1)) # ((\inst8|inst|inst9|data\(0)) # (\inst8|inst|inst4|inst8|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|inst8|data\(1),
	datab => \inst8|inst|inst9|data\(0),
	datac => \inst8|inst|inst4|bit_cnt|data\(0),
	datad => \inst8|inst|inst4|inst8|data\(0),
	combout => \inst8|inst|inst4|bit_cnt|data_next[0]~3_combout\);

-- Location: FF_X29_Y17_N29
\inst8|inst|inst4|inst56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|inst|inst4|inst52~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst56~q\);

-- Location: LCCOMB_X29_Y17_N28
\inst8|inst|inst4|inst67~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst67~0_combout\ = (!\inst8|inst|inst4|inst52~q\ & \inst8|inst|inst4|inst56~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|inst52~q\,
	datac => \inst8|inst|inst4|inst56~q\,
	combout => \inst8|inst|inst4|inst67~0_combout\);

-- Location: LCCOMB_X29_Y17_N4
\inst8|inst|inst4|bit_cnt|data[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|bit_cnt|data[1]~2_combout\ = (!\inst8|inst|inst4|inst8|data\(0) & ((\inst8|inst|inst4|inst8|data\(1) & ((\inst8|inst|inst4|inst67~0_combout\))) # (!\inst8|inst|inst4|inst8|data\(1) & (!\inst8|inst|inst9|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst9|data\(0),
	datab => \inst8|inst|inst4|inst67~0_combout\,
	datac => \inst8|inst|inst4|inst8|data\(0),
	datad => \inst8|inst|inst4|inst8|data\(1),
	combout => \inst8|inst|inst4|bit_cnt|data[1]~2_combout\);

-- Location: FF_X30_Y17_N5
\inst8|inst|inst4|bit_cnt|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|bit_cnt|data_next[0]~3_combout\,
	ena => \inst8|inst|inst4|bit_cnt|data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|bit_cnt|data\(0));

-- Location: LCCOMB_X30_Y17_N28
\inst8|inst|inst4|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst~0_combout\ = (!\inst8|inst|inst4|inst8|data\(1) & (!\inst8|inst|inst9|data\(0) & !\inst8|inst|inst4|inst8|data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|inst8|data\(1),
	datac => \inst8|inst|inst9|data\(0),
	datad => \inst8|inst|inst4|inst8|data\(0),
	combout => \inst8|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X30_Y17_N26
\inst8|inst|inst4|bit_cnt|data_next[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|bit_cnt|data_next[1]~2_combout\ = (!\inst8|inst|inst4|inst~0_combout\ & (\inst8|inst|inst4|bit_cnt|data\(0) $ (\inst8|inst|inst4|bit_cnt|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst|inst4|bit_cnt|data\(0),
	datac => \inst8|inst|inst4|bit_cnt|data\(1),
	datad => \inst8|inst|inst4|inst~0_combout\,
	combout => \inst8|inst|inst4|bit_cnt|data_next[1]~2_combout\);

-- Location: FF_X30_Y17_N27
\inst8|inst|inst4|bit_cnt|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|bit_cnt|data_next[1]~2_combout\,
	ena => \inst8|inst|inst4|bit_cnt|data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|bit_cnt|data\(1));

-- Location: LCCOMB_X30_Y17_N22
\inst8|inst|inst4|bit_cnt|data_next[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|bit_cnt|data_next[2]~5_combout\ = (!\inst8|inst|inst4|inst~0_combout\ & (\inst8|inst|inst4|bit_cnt|data\(2) $ (((\inst8|inst|inst4|bit_cnt|data\(1) & \inst8|inst|inst4|bit_cnt|data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|bit_cnt|data\(1),
	datab => \inst8|inst|inst4|bit_cnt|data\(0),
	datac => \inst8|inst|inst4|bit_cnt|data\(2),
	datad => \inst8|inst|inst4|inst~0_combout\,
	combout => \inst8|inst|inst4|bit_cnt|data_next[2]~5_combout\);

-- Location: FF_X30_Y17_N23
\inst8|inst|inst4|bit_cnt|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|bit_cnt|data_next[2]~5_combout\,
	ena => \inst8|inst|inst4|bit_cnt|data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|bit_cnt|data\(2));

-- Location: LCCOMB_X30_Y17_N18
\inst8|inst|inst4|inst75~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst75~0_combout\ = (\inst8|inst|inst4|inst8|data\(1) & (\inst8|inst|inst4|bit_cnt|data\(0) & (\inst8|inst|inst4|bit_cnt|data\(1) & !\inst8|inst|inst4|inst8|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|inst8|data\(1),
	datab => \inst8|inst|inst4|bit_cnt|data\(0),
	datac => \inst8|inst|inst4|bit_cnt|data\(1),
	datad => \inst8|inst|inst4|inst8|data\(0),
	combout => \inst8|inst|inst4|inst75~0_combout\);

-- Location: LCCOMB_X30_Y17_N14
\inst8|inst|inst4|bit_cnt|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|bit_cnt|Add0~0_combout\ = (\inst8|inst|inst4|bit_cnt|data\(1) & \inst8|inst|inst4|bit_cnt|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|bit_cnt|data\(1),
	datac => \inst8|inst|inst4|bit_cnt|data\(0),
	combout => \inst8|inst|inst4|bit_cnt|Add0~0_combout\);

-- Location: LCCOMB_X30_Y17_N8
\inst8|inst|inst4|bit_cnt|data_next[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|bit_cnt|data_next[3]~4_combout\ = (!\inst8|inst|inst4|inst~0_combout\ & (\inst8|inst|inst4|bit_cnt|data\(3) $ (((\inst8|inst|inst4|bit_cnt|data\(2) & \inst8|inst|inst4|bit_cnt|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|bit_cnt|data\(2),
	datab => \inst8|inst|inst4|bit_cnt|Add0~0_combout\,
	datac => \inst8|inst|inst4|bit_cnt|data\(3),
	datad => \inst8|inst|inst4|inst~0_combout\,
	combout => \inst8|inst|inst4|bit_cnt|data_next[3]~4_combout\);

-- Location: FF_X30_Y17_N9
\inst8|inst|inst4|bit_cnt|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|bit_cnt|data_next[3]~4_combout\,
	ena => \inst8|inst|inst4|bit_cnt|data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|bit_cnt|data\(3));

-- Location: LCCOMB_X30_Y17_N20
\inst8|inst|inst4|inst79~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst79~0_combout\ = (\inst8|inst|inst4|inst~0_combout\) # ((!\inst8|inst|inst4|bit_cnt|data\(2) & (\inst8|inst|inst4|inst75~0_combout\ & \inst8|inst|inst4|bit_cnt|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|bit_cnt|data\(2),
	datab => \inst8|inst|inst4|inst75~0_combout\,
	datac => \inst8|inst|inst4|bit_cnt|data\(3),
	datad => \inst8|inst|inst4|inst~0_combout\,
	combout => \inst8|inst|inst4|inst79~0_combout\);

-- Location: LCCOMB_X28_Y17_N4
\inst8|inst|inst4|Timer_reg|data[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|Timer_reg|data[0]~13_combout\ = \inst8|inst|inst4|Timer_reg|data\(0) $ (VCC)
-- \inst8|inst|inst4|Timer_reg|data[0]~14\ = CARRY(\inst8|inst|inst4|Timer_reg|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst|inst4|Timer_reg|data\(0),
	datad => VCC,
	combout => \inst8|inst|inst4|Timer_reg|data[0]~13_combout\,
	cout => \inst8|inst|inst4|Timer_reg|data[0]~14\);

-- Location: LCCOMB_X29_Y17_N24
\inst8|inst|inst4|Timer_reg|data_next[12]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|Timer_reg|data_next[12]~0_combout\ = (!\inst8|inst|inst4|inst8|data\(0) & (!\inst8|inst|inst4|inst8|data\(1) & ((!\inst8|inst|inst4|inst52~q\) # (!\inst8|inst|inst9|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst9|data\(0),
	datab => \inst8|inst|inst4|inst8|data\(0),
	datac => \inst8|inst|inst4|inst52~q\,
	datad => \inst8|inst|inst4|inst8|data\(1),
	combout => \inst8|inst|inst4|Timer_reg|data_next[12]~0_combout\);

-- Location: LCCOMB_X29_Y17_N26
\inst8|inst|inst4|Timer_reg|data_next[12]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|Timer_reg|data_next[12]~1_combout\ = (\inst8|inst|inst4|inst52~q\ & \inst8|inst|inst9|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst|inst4|inst52~q\,
	datad => \inst8|inst|inst9|data\(0),
	combout => \inst8|inst|inst4|Timer_reg|data_next[12]~1_combout\);

-- Location: LCCOMB_X28_Y17_N22
\inst8|inst|inst4|Timer_reg|data[9]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|Timer_reg|data[9]~34_combout\ = (\inst8|inst|inst4|Timer_reg|data\(9) & (!\inst8|inst|inst4|Timer_reg|data[8]~33\)) # (!\inst8|inst|inst4|Timer_reg|data\(9) & ((\inst8|inst|inst4|Timer_reg|data[8]~33\) # (GND)))
-- \inst8|inst|inst4|Timer_reg|data[9]~35\ = CARRY((!\inst8|inst|inst4|Timer_reg|data[8]~33\) # (!\inst8|inst|inst4|Timer_reg|data\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|Timer_reg|data\(9),
	datad => VCC,
	cin => \inst8|inst|inst4|Timer_reg|data[8]~33\,
	combout => \inst8|inst|inst4|Timer_reg|data[9]~34_combout\,
	cout => \inst8|inst|inst4|Timer_reg|data[9]~35\);

-- Location: LCCOMB_X28_Y17_N24
\inst8|inst|inst4|Timer_reg|data[10]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|Timer_reg|data[10]~36_combout\ = (\inst8|inst|inst4|Timer_reg|data\(10) & (\inst8|inst|inst4|Timer_reg|data[9]~35\ $ (GND))) # (!\inst8|inst|inst4|Timer_reg|data\(10) & (!\inst8|inst|inst4|Timer_reg|data[9]~35\ & VCC))
-- \inst8|inst|inst4|Timer_reg|data[10]~37\ = CARRY((\inst8|inst|inst4|Timer_reg|data\(10) & !\inst8|inst|inst4|Timer_reg|data[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst|inst4|Timer_reg|data\(10),
	datad => VCC,
	cin => \inst8|inst|inst4|Timer_reg|data[9]~35\,
	combout => \inst8|inst|inst4|Timer_reg|data[10]~36_combout\,
	cout => \inst8|inst|inst4|Timer_reg|data[10]~37\);

-- Location: FF_X28_Y17_N25
\inst8|inst|inst4|Timer_reg|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|Timer_reg|data[10]~36_combout\,
	sclr => \inst8|inst|inst4|Timer_reg|data_next[12]~0_combout\,
	ena => \inst8|inst|inst4|Timer_reg|data[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|Timer_reg|data\(10));

-- Location: LCCOMB_X28_Y17_N30
\inst8|inst|inst4|inst44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst44~0_combout\ = (\inst8|inst|inst4|Timer_reg|data\(4) & (\inst8|inst|inst4|Timer_reg|data\(6) & (\inst8|inst|inst4|Timer_reg|data\(5) & \inst8|inst|inst4|Timer_reg|data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|Timer_reg|data\(4),
	datab => \inst8|inst|inst4|Timer_reg|data\(6),
	datac => \inst8|inst|inst4|Timer_reg|data\(5),
	datad => \inst8|inst|inst4|Timer_reg|data\(7),
	combout => \inst8|inst|inst4|inst44~0_combout\);

-- Location: LCCOMB_X29_Y17_N2
\inst8|inst|inst4|Timer_reg|data[12]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|Timer_reg|data[12]~21_combout\ = (\inst8|inst|inst4|Timer_reg|data\(10)) # ((\inst8|inst|inst4|Timer_reg|data\(9) & ((\inst8|inst|inst4|inst44~0_combout\) # (\inst8|inst|inst4|Timer_reg|data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|Timer_reg|data\(9),
	datab => \inst8|inst|inst4|Timer_reg|data\(10),
	datac => \inst8|inst|inst4|inst44~0_combout\,
	datad => \inst8|inst|inst4|Timer_reg|data\(8),
	combout => \inst8|inst|inst4|Timer_reg|data[12]~21_combout\);

-- Location: LCCOMB_X28_Y17_N26
\inst8|inst|inst4|Timer_reg|data[11]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|Timer_reg|data[11]~38_combout\ = (\inst8|inst|inst4|Timer_reg|data\(11) & (!\inst8|inst|inst4|Timer_reg|data[10]~37\)) # (!\inst8|inst|inst4|Timer_reg|data\(11) & ((\inst8|inst|inst4|Timer_reg|data[10]~37\) # (GND)))
-- \inst8|inst|inst4|Timer_reg|data[11]~39\ = CARRY((!\inst8|inst|inst4|Timer_reg|data[10]~37\) # (!\inst8|inst|inst4|Timer_reg|data\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|Timer_reg|data\(11),
	datad => VCC,
	cin => \inst8|inst|inst4|Timer_reg|data[10]~37\,
	combout => \inst8|inst|inst4|Timer_reg|data[11]~38_combout\,
	cout => \inst8|inst|inst4|Timer_reg|data[11]~39\);

-- Location: FF_X28_Y17_N27
\inst8|inst|inst4|Timer_reg|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|Timer_reg|data[11]~38_combout\,
	sclr => \inst8|inst|inst4|Timer_reg|data_next[12]~0_combout\,
	ena => \inst8|inst|inst4|Timer_reg|data[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|Timer_reg|data\(11));

-- Location: LCCOMB_X28_Y17_N28
\inst8|inst|inst4|Timer_reg|data[12]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|Timer_reg|data[12]~40_combout\ = \inst8|inst|inst4|Timer_reg|data[11]~39\ $ (!\inst8|inst|inst4|Timer_reg|data\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|inst4|Timer_reg|data\(12),
	cin => \inst8|inst|inst4|Timer_reg|data[11]~39\,
	combout => \inst8|inst|inst4|Timer_reg|data[12]~40_combout\);

-- Location: FF_X28_Y17_N29
\inst8|inst|inst4|Timer_reg|data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|Timer_reg|data[12]~40_combout\,
	sclr => \inst8|inst|inst4|Timer_reg|data_next[12]~0_combout\,
	ena => \inst8|inst|inst4|Timer_reg|data[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|Timer_reg|data\(12));

-- Location: LCCOMB_X29_Y17_N20
\inst8|inst|inst4|Timer_reg|data[12]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|Timer_reg|data[12]~22_combout\ = (\inst8|inst|inst4|Timer_reg|data_next[12]~1_combout\ & ((\inst8|inst|inst4|Timer_reg|data\(12)) # ((\inst8|inst|inst4|Timer_reg|data[12]~21_combout\ & \inst8|inst|inst4|Timer_reg|data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|Timer_reg|data_next[12]~1_combout\,
	datab => \inst8|inst|inst4|Timer_reg|data[12]~21_combout\,
	datac => \inst8|inst|inst4|Timer_reg|data\(11),
	datad => \inst8|inst|inst4|Timer_reg|data\(12),
	combout => \inst8|inst|inst4|Timer_reg|data[12]~22_combout\);

-- Location: LCCOMB_X29_Y17_N12
\inst8|inst|inst4|Timer_reg|data[12]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|Timer_reg|data[12]~23_combout\ = (!\inst8|inst|inst4|inst8|data\(1) & ((\inst8|inst|inst4|inst8|data\(0) & ((\inst8|inst|inst4|inst63|LessThan1~2_combout\))) # (!\inst8|inst|inst4|inst8|data\(0) & 
-- (!\inst8|inst|inst4|Timer_reg|data[12]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|inst8|data\(1),
	datab => \inst8|inst|inst4|Timer_reg|data[12]~22_combout\,
	datac => \inst8|inst|inst4|inst8|data\(0),
	datad => \inst8|inst|inst4|inst63|LessThan1~2_combout\,
	combout => \inst8|inst|inst4|Timer_reg|data[12]~23_combout\);

-- Location: FF_X28_Y17_N5
\inst8|inst|inst4|Timer_reg|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|Timer_reg|data[0]~13_combout\,
	sclr => \inst8|inst|inst4|Timer_reg|data_next[12]~0_combout\,
	ena => \inst8|inst|inst4|Timer_reg|data[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|Timer_reg|data\(0));

-- Location: LCCOMB_X28_Y17_N6
\inst8|inst|inst4|Timer_reg|data[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|Timer_reg|data[1]~15_combout\ = (\inst8|inst|inst4|Timer_reg|data\(1) & (!\inst8|inst|inst4|Timer_reg|data[0]~14\)) # (!\inst8|inst|inst4|Timer_reg|data\(1) & ((\inst8|inst|inst4|Timer_reg|data[0]~14\) # (GND)))
-- \inst8|inst|inst4|Timer_reg|data[1]~16\ = CARRY((!\inst8|inst|inst4|Timer_reg|data[0]~14\) # (!\inst8|inst|inst4|Timer_reg|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|Timer_reg|data\(1),
	datad => VCC,
	cin => \inst8|inst|inst4|Timer_reg|data[0]~14\,
	combout => \inst8|inst|inst4|Timer_reg|data[1]~15_combout\,
	cout => \inst8|inst|inst4|Timer_reg|data[1]~16\);

-- Location: FF_X28_Y17_N7
\inst8|inst|inst4|Timer_reg|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|Timer_reg|data[1]~15_combout\,
	sclr => \inst8|inst|inst4|Timer_reg|data_next[12]~0_combout\,
	ena => \inst8|inst|inst4|Timer_reg|data[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|Timer_reg|data\(1));

-- Location: LCCOMB_X28_Y17_N8
\inst8|inst|inst4|Timer_reg|data[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|Timer_reg|data[2]~17_combout\ = (\inst8|inst|inst4|Timer_reg|data\(2) & (\inst8|inst|inst4|Timer_reg|data[1]~16\ $ (GND))) # (!\inst8|inst|inst4|Timer_reg|data\(2) & (!\inst8|inst|inst4|Timer_reg|data[1]~16\ & VCC))
-- \inst8|inst|inst4|Timer_reg|data[2]~18\ = CARRY((\inst8|inst|inst4|Timer_reg|data\(2) & !\inst8|inst|inst4|Timer_reg|data[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst|inst4|Timer_reg|data\(2),
	datad => VCC,
	cin => \inst8|inst|inst4|Timer_reg|data[1]~16\,
	combout => \inst8|inst|inst4|Timer_reg|data[2]~17_combout\,
	cout => \inst8|inst|inst4|Timer_reg|data[2]~18\);

-- Location: FF_X28_Y17_N9
\inst8|inst|inst4|Timer_reg|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|Timer_reg|data[2]~17_combout\,
	sclr => \inst8|inst|inst4|Timer_reg|data_next[12]~0_combout\,
	ena => \inst8|inst|inst4|Timer_reg|data[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|Timer_reg|data\(2));

-- Location: LCCOMB_X28_Y17_N10
\inst8|inst|inst4|Timer_reg|data[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|Timer_reg|data[3]~19_combout\ = (\inst8|inst|inst4|Timer_reg|data\(3) & (!\inst8|inst|inst4|Timer_reg|data[2]~18\)) # (!\inst8|inst|inst4|Timer_reg|data\(3) & ((\inst8|inst|inst4|Timer_reg|data[2]~18\) # (GND)))
-- \inst8|inst|inst4|Timer_reg|data[3]~20\ = CARRY((!\inst8|inst|inst4|Timer_reg|data[2]~18\) # (!\inst8|inst|inst4|Timer_reg|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|Timer_reg|data\(3),
	datad => VCC,
	cin => \inst8|inst|inst4|Timer_reg|data[2]~18\,
	combout => \inst8|inst|inst4|Timer_reg|data[3]~19_combout\,
	cout => \inst8|inst|inst4|Timer_reg|data[3]~20\);

-- Location: FF_X28_Y17_N11
\inst8|inst|inst4|Timer_reg|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|Timer_reg|data[3]~19_combout\,
	sclr => \inst8|inst|inst4|Timer_reg|data_next[12]~0_combout\,
	ena => \inst8|inst|inst4|Timer_reg|data[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|Timer_reg|data\(3));

-- Location: LCCOMB_X28_Y17_N12
\inst8|inst|inst4|Timer_reg|data[4]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|Timer_reg|data[4]~24_combout\ = (\inst8|inst|inst4|Timer_reg|data\(4) & (\inst8|inst|inst4|Timer_reg|data[3]~20\ $ (GND))) # (!\inst8|inst|inst4|Timer_reg|data\(4) & (!\inst8|inst|inst4|Timer_reg|data[3]~20\ & VCC))
-- \inst8|inst|inst4|Timer_reg|data[4]~25\ = CARRY((\inst8|inst|inst4|Timer_reg|data\(4) & !\inst8|inst|inst4|Timer_reg|data[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|Timer_reg|data\(4),
	datad => VCC,
	cin => \inst8|inst|inst4|Timer_reg|data[3]~20\,
	combout => \inst8|inst|inst4|Timer_reg|data[4]~24_combout\,
	cout => \inst8|inst|inst4|Timer_reg|data[4]~25\);

-- Location: FF_X28_Y17_N13
\inst8|inst|inst4|Timer_reg|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|Timer_reg|data[4]~24_combout\,
	sclr => \inst8|inst|inst4|Timer_reg|data_next[12]~0_combout\,
	ena => \inst8|inst|inst4|Timer_reg|data[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|Timer_reg|data\(4));

-- Location: LCCOMB_X28_Y17_N14
\inst8|inst|inst4|Timer_reg|data[5]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|Timer_reg|data[5]~26_combout\ = (\inst8|inst|inst4|Timer_reg|data\(5) & (!\inst8|inst|inst4|Timer_reg|data[4]~25\)) # (!\inst8|inst|inst4|Timer_reg|data\(5) & ((\inst8|inst|inst4|Timer_reg|data[4]~25\) # (GND)))
-- \inst8|inst|inst4|Timer_reg|data[5]~27\ = CARRY((!\inst8|inst|inst4|Timer_reg|data[4]~25\) # (!\inst8|inst|inst4|Timer_reg|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst|inst4|Timer_reg|data\(5),
	datad => VCC,
	cin => \inst8|inst|inst4|Timer_reg|data[4]~25\,
	combout => \inst8|inst|inst4|Timer_reg|data[5]~26_combout\,
	cout => \inst8|inst|inst4|Timer_reg|data[5]~27\);

-- Location: FF_X28_Y17_N15
\inst8|inst|inst4|Timer_reg|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|Timer_reg|data[5]~26_combout\,
	sclr => \inst8|inst|inst4|Timer_reg|data_next[12]~0_combout\,
	ena => \inst8|inst|inst4|Timer_reg|data[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|Timer_reg|data\(5));

-- Location: LCCOMB_X28_Y17_N16
\inst8|inst|inst4|Timer_reg|data[6]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|Timer_reg|data[6]~28_combout\ = (\inst8|inst|inst4|Timer_reg|data\(6) & (\inst8|inst|inst4|Timer_reg|data[5]~27\ $ (GND))) # (!\inst8|inst|inst4|Timer_reg|data\(6) & (!\inst8|inst|inst4|Timer_reg|data[5]~27\ & VCC))
-- \inst8|inst|inst4|Timer_reg|data[6]~29\ = CARRY((\inst8|inst|inst4|Timer_reg|data\(6) & !\inst8|inst|inst4|Timer_reg|data[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst|inst4|Timer_reg|data\(6),
	datad => VCC,
	cin => \inst8|inst|inst4|Timer_reg|data[5]~27\,
	combout => \inst8|inst|inst4|Timer_reg|data[6]~28_combout\,
	cout => \inst8|inst|inst4|Timer_reg|data[6]~29\);

-- Location: FF_X28_Y17_N17
\inst8|inst|inst4|Timer_reg|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|Timer_reg|data[6]~28_combout\,
	sclr => \inst8|inst|inst4|Timer_reg|data_next[12]~0_combout\,
	ena => \inst8|inst|inst4|Timer_reg|data[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|Timer_reg|data\(6));

-- Location: LCCOMB_X28_Y17_N18
\inst8|inst|inst4|Timer_reg|data[7]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|Timer_reg|data[7]~30_combout\ = (\inst8|inst|inst4|Timer_reg|data\(7) & (!\inst8|inst|inst4|Timer_reg|data[6]~29\)) # (!\inst8|inst|inst4|Timer_reg|data\(7) & ((\inst8|inst|inst4|Timer_reg|data[6]~29\) # (GND)))
-- \inst8|inst|inst4|Timer_reg|data[7]~31\ = CARRY((!\inst8|inst|inst4|Timer_reg|data[6]~29\) # (!\inst8|inst|inst4|Timer_reg|data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst|inst4|Timer_reg|data\(7),
	datad => VCC,
	cin => \inst8|inst|inst4|Timer_reg|data[6]~29\,
	combout => \inst8|inst|inst4|Timer_reg|data[7]~30_combout\,
	cout => \inst8|inst|inst4|Timer_reg|data[7]~31\);

-- Location: FF_X28_Y17_N19
\inst8|inst|inst4|Timer_reg|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|Timer_reg|data[7]~30_combout\,
	sclr => \inst8|inst|inst4|Timer_reg|data_next[12]~0_combout\,
	ena => \inst8|inst|inst4|Timer_reg|data[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|Timer_reg|data\(7));

-- Location: LCCOMB_X28_Y17_N20
\inst8|inst|inst4|Timer_reg|data[8]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|Timer_reg|data[8]~32_combout\ = (\inst8|inst|inst4|Timer_reg|data\(8) & (\inst8|inst|inst4|Timer_reg|data[7]~31\ $ (GND))) # (!\inst8|inst|inst4|Timer_reg|data\(8) & (!\inst8|inst|inst4|Timer_reg|data[7]~31\ & VCC))
-- \inst8|inst|inst4|Timer_reg|data[8]~33\ = CARRY((\inst8|inst|inst4|Timer_reg|data\(8) & !\inst8|inst|inst4|Timer_reg|data[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst|inst4|Timer_reg|data\(8),
	datad => VCC,
	cin => \inst8|inst|inst4|Timer_reg|data[7]~31\,
	combout => \inst8|inst|inst4|Timer_reg|data[8]~32_combout\,
	cout => \inst8|inst|inst4|Timer_reg|data[8]~33\);

-- Location: FF_X28_Y17_N21
\inst8|inst|inst4|Timer_reg|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|Timer_reg|data[8]~32_combout\,
	sclr => \inst8|inst|inst4|Timer_reg|data_next[12]~0_combout\,
	ena => \inst8|inst|inst4|Timer_reg|data[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|Timer_reg|data\(8));

-- Location: FF_X28_Y17_N23
\inst8|inst|inst4|Timer_reg|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|Timer_reg|data[9]~34_combout\,
	sclr => \inst8|inst|inst4|Timer_reg|data_next[12]~0_combout\,
	ena => \inst8|inst|inst4|Timer_reg|data[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|Timer_reg|data\(9));

-- Location: LCCOMB_X28_Y17_N0
\inst8|inst|inst4|inst63|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst63|LessThan1~0_combout\ = (!\inst8|inst|inst4|Timer_reg|data\(4) & (!\inst8|inst|inst4|Timer_reg|data\(6) & (!\inst8|inst|inst4|Timer_reg|data\(5) & !\inst8|inst|inst4|Timer_reg|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|Timer_reg|data\(4),
	datab => \inst8|inst|inst4|Timer_reg|data\(6),
	datac => \inst8|inst|inst4|Timer_reg|data\(5),
	datad => \inst8|inst|inst4|Timer_reg|data\(3),
	combout => \inst8|inst|inst4|inst63|LessThan1~0_combout\);

-- Location: LCCOMB_X29_Y17_N10
\inst8|inst|inst4|inst63|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst63|LessThan1~1_combout\ = (((\inst8|inst|inst4|inst63|LessThan1~0_combout\) # (!\inst8|inst|inst4|Timer_reg|data\(7))) # (!\inst8|inst|inst4|Timer_reg|data\(8))) # (!\inst8|inst|inst4|Timer_reg|data\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|Timer_reg|data\(9),
	datab => \inst8|inst|inst4|Timer_reg|data\(8),
	datac => \inst8|inst|inst4|inst63|LessThan1~0_combout\,
	datad => \inst8|inst|inst4|Timer_reg|data\(7),
	combout => \inst8|inst|inst4|inst63|LessThan1~1_combout\);

-- Location: LCCOMB_X29_Y17_N18
\inst8|inst|inst4|inst63|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst63|LessThan1~2_combout\ = ((\inst8|inst|inst4|inst63|LessThan1~1_combout\ & (!\inst8|inst|inst4|Timer_reg|data\(11) & !\inst8|inst|inst4|Timer_reg|data\(10)))) # (!\inst8|inst|inst4|Timer_reg|data\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|inst63|LessThan1~1_combout\,
	datab => \inst8|inst|inst4|Timer_reg|data\(12),
	datac => \inst8|inst|inst4|Timer_reg|data\(11),
	datad => \inst8|inst|inst4|Timer_reg|data\(10),
	combout => \inst8|inst|inst4|inst63|LessThan1~2_combout\);

-- Location: LCCOMB_X30_Y17_N10
\inst8|inst|inst4|inst79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst79~combout\ = (\inst8|inst|inst4|inst79~0_combout\) # ((!\inst8|inst|inst4|inst8|data\(1) & (!\inst8|inst|inst4|inst63|LessThan1~2_combout\ & \inst8|inst|inst4|inst8|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|inst8|data\(1),
	datab => \inst8|inst|inst4|inst79~0_combout\,
	datac => \inst8|inst|inst4|inst63|LessThan1~2_combout\,
	datad => \inst8|inst|inst4|inst8|data\(0),
	combout => \inst8|inst|inst4|inst79~combout\);

-- Location: LCCOMB_X30_Y17_N6
\inst8|inst|inst4|inst8|data[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst8|data[1]~1_combout\ = (!\inst8|inst|inst4|inst25~0_combout\ & (\inst8|inst|inst4|inst8|data\(1) $ (((\inst8|inst|inst4|inst79~combout\ & \inst8|inst|inst4|inst8|data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|inst79~combout\,
	datab => \inst8|inst|inst4|inst25~0_combout\,
	datac => \inst8|inst|inst4|inst8|data\(1),
	datad => \inst8|inst|inst4|inst8|data\(0),
	combout => \inst8|inst|inst4|inst8|data[1]~1_combout\);

-- Location: FF_X30_Y17_N7
\inst8|inst|inst4|inst8|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|inst8|data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst8|data\(1));

-- Location: LCCOMB_X30_Y17_N16
\inst8|inst|inst4|inst9|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst9|inst4~0_combout\ = (\inst8|inst|inst4|inst8|data\(1)) # (!\inst8|inst|inst4|inst8|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|inst8|data\(1),
	datad => \inst8|inst|inst4|inst8|data\(0),
	combout => \inst8|inst|inst4|inst9|inst4~0_combout\);

-- Location: LCCOMB_X29_Y17_N14
\inst8|inst|inst4|inst66~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst66~0_combout\ = (\inst8|inst|inst4|inst67~0_combout\ & (!\inst8|inst|inst4|inst8|data\(0) & ((\inst8|inst|inst9|data\(0)) # (\inst8|inst|inst4|inst8|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst9|data\(0),
	datab => \inst8|inst|inst4|inst67~0_combout\,
	datac => \inst8|inst|inst4|inst8|data\(0),
	datad => \inst8|inst|inst4|inst8|data\(1),
	combout => \inst8|inst|inst4|inst66~0_combout\);

-- Location: LCCOMB_X27_Y18_N22
\inst8|inst|inst4|ps2_word_reg|inst4|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|ps2_word_reg|inst4|Y[0]~0_combout\ = (\inst8|inst|inst4|inst62~q\) # (!\inst8|inst|inst4|inst66~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|inst66~0_combout\,
	datad => \inst8|inst|inst4|inst62~q\,
	combout => \inst8|inst|inst4|ps2_word_reg|inst4|Y[0]~0_combout\);

-- Location: LCCOMB_X29_Y17_N22
\inst8|inst|inst4|ps2_word_reg|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|ps2_word_reg|inst2~combout\ = (!\inst8|inst|inst4|inst8|data\(0) & ((\inst8|inst|inst4|inst67~0_combout\) # ((!\inst8|inst|inst9|data\(0) & !\inst8|inst|inst4|inst8|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst9|data\(0),
	datab => \inst8|inst|inst4|inst67~0_combout\,
	datac => \inst8|inst|inst4|inst8|data\(0),
	datad => \inst8|inst|inst4|inst8|data\(1),
	combout => \inst8|inst|inst4|ps2_word_reg|inst2~combout\);

-- Location: FF_X27_Y18_N23
\inst8|inst|inst4|ps2_word_reg|inst|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|ps2_word_reg|inst4|Y[0]~0_combout\,
	ena => \inst8|inst|inst4|ps2_word_reg|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|ps2_word_reg|inst|data\(0));

-- Location: LCCOMB_X27_Y18_N12
\inst8|inst|inst4|ps2_word_reg|inst6|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|ps2_word_reg|inst6|Y[0]~0_combout\ = (\inst8|inst|inst4|ps2_word_reg|inst|data\(0) & \inst8|inst|inst4|inst66~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst|inst4|ps2_word_reg|inst|data\(0),
	datad => \inst8|inst|inst4|inst66~0_combout\,
	combout => \inst8|inst|inst4|ps2_word_reg|inst6|Y[0]~0_combout\);

-- Location: FF_X27_Y18_N13
\inst8|inst|inst4|ps2_word_reg|inst5|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|ps2_word_reg|inst6|Y[0]~0_combout\,
	ena => \inst8|inst|inst4|ps2_word_reg|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|ps2_word_reg|inst5|data\(0));

-- Location: LCCOMB_X27_Y18_N26
\inst8|inst|inst4|ps2_word_reg|inst8|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|ps2_word_reg|inst8|Y[0]~0_combout\ = (\inst8|inst|inst4|ps2_word_reg|inst5|data\(0)) # (!\inst8|inst|inst4|inst66~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|ps2_word_reg|inst5|data\(0),
	datad => \inst8|inst|inst4|inst66~0_combout\,
	combout => \inst8|inst|inst4|ps2_word_reg|inst8|Y[0]~0_combout\);

-- Location: FF_X27_Y18_N27
\inst8|inst|inst4|ps2_word_reg|inst7|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|ps2_word_reg|inst8|Y[0]~0_combout\,
	ena => \inst8|inst|inst4|ps2_word_reg|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|ps2_word_reg|inst7|data\(0));

-- Location: LCCOMB_X27_Y18_N8
\inst8|inst|inst4|ps2_word_reg|inst10|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|ps2_word_reg|inst10|Y[0]~0_combout\ = (\inst8|inst|inst4|ps2_word_reg|inst7|data\(0)) # (!\inst8|inst|inst4|inst66~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst|inst4|ps2_word_reg|inst7|data\(0),
	datad => \inst8|inst|inst4|inst66~0_combout\,
	combout => \inst8|inst|inst4|ps2_word_reg|inst10|Y[0]~0_combout\);

-- Location: FF_X27_Y18_N9
\inst8|inst|inst4|ps2_word_reg|inst9|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|ps2_word_reg|inst10|Y[0]~0_combout\,
	ena => \inst8|inst|inst4|ps2_word_reg|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|ps2_word_reg|inst9|data\(0));

-- Location: LCCOMB_X27_Y18_N16
\inst8|inst|inst4|ps2_word_reg|inst12|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|ps2_word_reg|inst12|Y[0]~0_combout\ = (\inst8|inst|inst4|ps2_word_reg|inst9|data\(0)) # (!\inst8|inst|inst4|inst66~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst|inst4|ps2_word_reg|inst9|data\(0),
	datad => \inst8|inst|inst4|inst66~0_combout\,
	combout => \inst8|inst|inst4|ps2_word_reg|inst12|Y[0]~0_combout\);

-- Location: FF_X27_Y18_N17
\inst8|inst|inst4|ps2_word_reg|inst11|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|ps2_word_reg|inst12|Y[0]~0_combout\,
	ena => \inst8|inst|inst4|ps2_word_reg|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|ps2_word_reg|inst11|data\(0));

-- Location: LCCOMB_X27_Y18_N2
\inst8|inst|inst4|ps2_word_reg|inst14|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|ps2_word_reg|inst14|Y[0]~0_combout\ = (\inst8|inst|inst4|ps2_word_reg|inst11|data\(0)) # (!\inst8|inst|inst4|inst66~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst|inst4|ps2_word_reg|inst11|data\(0),
	datad => \inst8|inst|inst4|inst66~0_combout\,
	combout => \inst8|inst|inst4|ps2_word_reg|inst14|Y[0]~0_combout\);

-- Location: FF_X27_Y18_N3
\inst8|inst|inst4|ps2_word_reg|inst13|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|ps2_word_reg|inst14|Y[0]~0_combout\,
	ena => \inst8|inst|inst4|ps2_word_reg|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|ps2_word_reg|inst13|data\(0));

-- Location: LCCOMB_X27_Y18_N28
\inst8|inst|inst4|ps2_word_reg|inst16|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|ps2_word_reg|inst16|Y[0]~0_combout\ = (\inst8|inst|inst4|ps2_word_reg|inst13|data\(0) & \inst8|inst|inst4|inst66~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst|inst4|ps2_word_reg|inst13|data\(0),
	datad => \inst8|inst|inst4|inst66~0_combout\,
	combout => \inst8|inst|inst4|ps2_word_reg|inst16|Y[0]~0_combout\);

-- Location: FF_X27_Y18_N29
\inst8|inst|inst4|ps2_word_reg|inst15|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|ps2_word_reg|inst16|Y[0]~0_combout\,
	ena => \inst8|inst|inst4|ps2_word_reg|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|ps2_word_reg|inst15|data\(0));

-- Location: LCCOMB_X27_Y18_N18
\inst8|inst|inst4|ps2_word_reg|inst18|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|ps2_word_reg|inst18|Y[0]~0_combout\ = (\inst8|inst|inst4|ps2_word_reg|inst15|data\(0)) # (!\inst8|inst|inst4|inst66~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst|inst4|ps2_word_reg|inst15|data\(0),
	datad => \inst8|inst|inst4|inst66~0_combout\,
	combout => \inst8|inst|inst4|ps2_word_reg|inst18|Y[0]~0_combout\);

-- Location: FF_X27_Y18_N19
\inst8|inst|inst4|ps2_word_reg|inst17|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|ps2_word_reg|inst18|Y[0]~0_combout\,
	ena => \inst8|inst|inst4|ps2_word_reg|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|ps2_word_reg|inst17|data\(0));

-- Location: LCCOMB_X27_Y18_N14
\inst8|inst|inst4|ps2_word_reg|inst20|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|ps2_word_reg|inst20|Y[0]~0_combout\ = (\inst8|inst|inst4|ps2_word_reg|inst17|data\(0) & \inst8|inst|inst4|inst66~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst|inst4|ps2_word_reg|inst17|data\(0),
	datad => \inst8|inst|inst4|inst66~0_combout\,
	combout => \inst8|inst|inst4|ps2_word_reg|inst20|Y[0]~0_combout\);

-- Location: FF_X27_Y18_N15
\inst8|inst|inst4|ps2_word_reg|inst19|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|ps2_word_reg|inst20|Y[0]~0_combout\,
	ena => \inst8|inst|inst4|ps2_word_reg|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|ps2_word_reg|inst19|data\(0));

-- Location: LCCOMB_X27_Y18_N4
\inst8|inst|inst4|ps2_word_reg|inst22|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|ps2_word_reg|inst22|Y[0]~0_combout\ = (\inst8|inst|inst4|ps2_word_reg|inst19|data\(0) & \inst8|inst|inst4|inst66~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst|inst4|ps2_word_reg|inst19|data\(0),
	datad => \inst8|inst|inst4|inst66~0_combout\,
	combout => \inst8|inst|inst4|ps2_word_reg|inst22|Y[0]~0_combout\);

-- Location: FF_X27_Y18_N5
\inst8|inst|inst4|ps2_word_reg|inst21|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|ps2_word_reg|inst22|Y[0]~0_combout\,
	ena => \inst8|inst|inst4|ps2_word_reg|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|ps2_word_reg|inst21|data\(0));

-- Location: LCCOMB_X27_Y18_N24
\inst8|inst|inst4|ps2_word_reg|inst24|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|ps2_word_reg|inst24|Y[0]~0_combout\ = (\inst8|inst|inst4|ps2_word_reg|inst21|data\(0) & \inst8|inst|inst4|inst66~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst|inst4|ps2_word_reg|inst21|data\(0),
	datad => \inst8|inst|inst4|inst66~0_combout\,
	combout => \inst8|inst|inst4|ps2_word_reg|inst24|Y[0]~0_combout\);

-- Location: FF_X27_Y18_N25
\inst8|inst|inst4|ps2_word_reg|inst23|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|ps2_word_reg|inst24|Y[0]~0_combout\,
	ena => \inst8|inst|inst4|ps2_word_reg|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|ps2_word_reg|inst23|data\(0));

-- Location: LCCOMB_X30_Y17_N24
\inst8|inst|inst4|inst18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst18~0_combout\ = ((!\inst8|inst|inst4|bit_cnt|data\(2) & !\inst8|inst|inst4|bit_cnt|data\(1))) # (!\inst8|inst|inst4|bit_cnt|data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|bit_cnt|data\(2),
	datab => \inst8|inst|inst4|bit_cnt|data\(3),
	datac => \inst8|inst|inst4|bit_cnt|data\(1),
	combout => \inst8|inst|inst4|inst18~0_combout\);

-- Location: LCCOMB_X30_Y17_N30
\inst8|inst|inst4|inst18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst18~1_combout\ = (\inst8|inst|inst4|inst8|data\(1) & (\inst8|inst|inst4|inst18~0_combout\ & ((!\inst8|inst|inst4|inst8|data\(0))))) # (!\inst8|inst|inst4|inst8|data\(1) & (((!\inst8|inst|inst4|inst63|LessThan1~2_combout\ & 
-- \inst8|inst|inst4|inst8|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|inst8|data\(1),
	datab => \inst8|inst|inst4|inst18~0_combout\,
	datac => \inst8|inst|inst4|inst63|LessThan1~2_combout\,
	datad => \inst8|inst|inst4|inst8|data\(0),
	combout => \inst8|inst|inst4|inst18~1_combout\);

-- Location: FF_X30_Y17_N31
\inst8|inst|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|inst18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst17~q\);

-- Location: LCCOMB_X22_Y20_N4
\inst|inst|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~0_combout\ = \inst|inst|data\(0) $ (VCC)
-- \inst|inst|Add0~1\ = CARRY(\inst|inst|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(0),
	datad => VCC,
	combout => \inst|inst|Add0~0_combout\,
	cout => \inst|inst|Add0~1\);

-- Location: LCCOMB_X22_Y20_N12
\inst|inst|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~8_combout\ = (\inst|inst|data\(4) & (\inst|inst|Add0~7\ $ (GND))) # (!\inst|inst|data\(4) & (!\inst|inst|Add0~7\ & VCC))
-- \inst|inst|Add0~9\ = CARRY((\inst|inst|data\(4) & !\inst|inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(4),
	datad => VCC,
	cin => \inst|inst|Add0~7\,
	combout => \inst|inst|Add0~8_combout\,
	cout => \inst|inst|Add0~9\);

-- Location: LCCOMB_X22_Y20_N14
\inst|inst|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~10_combout\ = (\inst|inst|data\(5) & (!\inst|inst|Add0~9\)) # (!\inst|inst|data\(5) & ((\inst|inst|Add0~9\) # (GND)))
-- \inst|inst|Add0~11\ = CARRY((!\inst|inst|Add0~9\) # (!\inst|inst|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(5),
	datad => VCC,
	cin => \inst|inst|Add0~9\,
	combout => \inst|inst|Add0~10_combout\,
	cout => \inst|inst|Add0~11\);

-- Location: LCCOMB_X22_Y22_N12
\inst|inst|data[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|data[5]~9_combout\ = (\inst|inst|Add0~10_combout\ & (((\inst|inst|data\(5) & \inst|inst|data\(10))) # (!\inst|inst|data[8]~2_combout\))) # (!\inst|inst|Add0~10_combout\ & (((\inst|inst|data\(5) & \inst|inst|data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Add0~10_combout\,
	datab => \inst|inst|data[8]~2_combout\,
	datac => \inst|inst|data\(5),
	datad => \inst|inst|data\(10),
	combout => \inst|inst|data[5]~9_combout\);

-- Location: FF_X22_Y22_N13
\inst|inst|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|data[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|data\(5));

-- Location: LCCOMB_X22_Y20_N16
\inst|inst|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~12_combout\ = (\inst|inst|data\(6) & (\inst|inst|Add0~11\ $ (GND))) # (!\inst|inst|data\(6) & (!\inst|inst|Add0~11\ & VCC))
-- \inst|inst|Add0~13\ = CARRY((\inst|inst|data\(6) & !\inst|inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|data\(6),
	datad => VCC,
	cin => \inst|inst|Add0~11\,
	combout => \inst|inst|Add0~12_combout\,
	cout => \inst|inst|Add0~13\);

-- Location: LCCOMB_X22_Y22_N24
\inst|inst|data[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|data[6]~4_combout\ = (\inst|inst|Add0~12_combout\ & (((\inst|inst|data\(6) & \inst|inst|data\(10))) # (!\inst|inst|data[8]~2_combout\))) # (!\inst|inst|Add0~12_combout\ & (((\inst|inst|data\(6) & \inst|inst|data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Add0~12_combout\,
	datab => \inst|inst|data[8]~2_combout\,
	datac => \inst|inst|data\(6),
	datad => \inst|inst|data\(10),
	combout => \inst|inst|data[6]~4_combout\);

-- Location: FF_X22_Y22_N25
\inst|inst|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|data[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|data\(6));

-- Location: LCCOMB_X22_Y20_N18
\inst|inst|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~14_combout\ = (\inst|inst|data\(7) & (!\inst|inst|Add0~13\)) # (!\inst|inst|data\(7) & ((\inst|inst|Add0~13\) # (GND)))
-- \inst|inst|Add0~15\ = CARRY((!\inst|inst|Add0~13\) # (!\inst|inst|data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|data\(7),
	datad => VCC,
	cin => \inst|inst|Add0~13\,
	combout => \inst|inst|Add0~14_combout\,
	cout => \inst|inst|Add0~15\);

-- Location: LCCOMB_X23_Y20_N0
\inst|inst|data[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|data[7]~3_combout\ = (\inst|inst|data\(10) & ((\inst|inst|data\(7)) # ((\inst|inst|Add0~14_combout\ & !\inst|inst|data[8]~2_combout\)))) # (!\inst|inst|data\(10) & (\inst|inst|Add0~14_combout\ & ((!\inst|inst|data[8]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(10),
	datab => \inst|inst|Add0~14_combout\,
	datac => \inst|inst|data\(7),
	datad => \inst|inst|data[8]~2_combout\,
	combout => \inst|inst|data[7]~3_combout\);

-- Location: FF_X23_Y20_N1
\inst|inst|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|data[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|data\(7));

-- Location: LCCOMB_X22_Y20_N20
\inst|inst|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~16_combout\ = (\inst|inst|data\(8) & (\inst|inst|Add0~15\ $ (GND))) # (!\inst|inst|data\(8) & (!\inst|inst|Add0~15\ & VCC))
-- \inst|inst|Add0~17\ = CARRY((\inst|inst|data\(8) & !\inst|inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|data\(8),
	datad => VCC,
	cin => \inst|inst|Add0~15\,
	combout => \inst|inst|Add0~16_combout\,
	cout => \inst|inst|Add0~17\);

-- Location: LCCOMB_X23_Y20_N10
\inst|inst|data[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|data[8]~12_combout\ = (\inst|inst|data\(10) & ((\inst|inst|data\(8)) # ((\inst|inst|Add0~16_combout\ & !\inst|inst|data[8]~2_combout\)))) # (!\inst|inst|data\(10) & (\inst|inst|Add0~16_combout\ & ((!\inst|inst|data[8]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(10),
	datab => \inst|inst|Add0~16_combout\,
	datac => \inst|inst|data\(8),
	datad => \inst|inst|data[8]~2_combout\,
	combout => \inst|inst|data[8]~12_combout\);

-- Location: FF_X23_Y20_N11
\inst|inst|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|data[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|data\(8));

-- Location: LCCOMB_X22_Y20_N22
\inst|inst|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~18_combout\ = (\inst|inst|data\(9) & (!\inst|inst|Add0~17\)) # (!\inst|inst|data\(9) & ((\inst|inst|Add0~17\) # (GND)))
-- \inst|inst|Add0~19\ = CARRY((!\inst|inst|Add0~17\) # (!\inst|inst|data\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|data\(9),
	datad => VCC,
	cin => \inst|inst|Add0~17\,
	combout => \inst|inst|Add0~18_combout\,
	cout => \inst|inst|Add0~19\);

-- Location: LCCOMB_X23_Y20_N16
\inst|inst|data[9]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|data[9]~13_combout\ = (\inst|inst|data\(10) & ((\inst|inst|data\(9)) # ((\inst|inst|Add0~18_combout\ & !\inst|inst|data[8]~2_combout\)))) # (!\inst|inst|data\(10) & (\inst|inst|Add0~18_combout\ & ((!\inst|inst|data[8]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(10),
	datab => \inst|inst|Add0~18_combout\,
	datac => \inst|inst|data\(9),
	datad => \inst|inst|data[8]~2_combout\,
	combout => \inst|inst|data[9]~13_combout\);

-- Location: FF_X23_Y20_N17
\inst|inst|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|data[9]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|data\(9));

-- Location: LCCOMB_X23_Y20_N8
\inst|inst2|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal0~2_combout\ = (!\inst|inst|data\(6) & (!\inst|inst|data\(9) & (!\inst|inst|data\(8) & !\inst|inst|data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(6),
	datab => \inst|inst|data\(9),
	datac => \inst|inst|data\(8),
	datad => \inst|inst|data\(7),
	combout => \inst|inst2|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y20_N18
\inst|inst|data[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|data[8]~14_combout\ = (\inst|inst|data\(10) & (((\inst|inst|data\(4)) # (\inst|inst|data\(5))) # (!\inst|inst2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(10),
	datab => \inst|inst2|Equal0~2_combout\,
	datac => \inst|inst|data\(4),
	datad => \inst|inst|data\(5),
	combout => \inst|inst|data[8]~14_combout\);

-- Location: LCCOMB_X22_Y20_N30
\inst|inst|data[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|data[0]~7_combout\ = (\inst|inst|data[8]~2_combout\ & (((\inst|inst|data\(0) & \inst|inst|data[8]~14_combout\)))) # (!\inst|inst|data[8]~2_combout\ & ((\inst|inst|Add0~0_combout\) # ((\inst|inst|data\(0) & \inst|inst|data[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data[8]~2_combout\,
	datab => \inst|inst|Add0~0_combout\,
	datac => \inst|inst|data\(0),
	datad => \inst|inst|data[8]~14_combout\,
	combout => \inst|inst|data[0]~7_combout\);

-- Location: FF_X22_Y20_N31
\inst|inst|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|data[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|data\(0));

-- Location: LCCOMB_X22_Y20_N6
\inst|inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~2_combout\ = (\inst|inst|data\(1) & (!\inst|inst|Add0~1\)) # (!\inst|inst|data\(1) & ((\inst|inst|Add0~1\) # (GND)))
-- \inst|inst|Add0~3\ = CARRY((!\inst|inst|Add0~1\) # (!\inst|inst|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|data\(1),
	datad => VCC,
	cin => \inst|inst|Add0~1\,
	combout => \inst|inst|Add0~2_combout\,
	cout => \inst|inst|Add0~3\);

-- Location: LCCOMB_X22_Y20_N2
\inst|inst|data[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|data[1]~6_combout\ = (\inst|inst|Add0~2_combout\ & (((\inst|inst|data[8]~14_combout\ & \inst|inst|data\(1))) # (!\inst|inst|data[8]~2_combout\))) # (!\inst|inst|Add0~2_combout\ & (\inst|inst|data[8]~14_combout\ & (\inst|inst|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Add0~2_combout\,
	datab => \inst|inst|data[8]~14_combout\,
	datac => \inst|inst|data\(1),
	datad => \inst|inst|data[8]~2_combout\,
	combout => \inst|inst|data[1]~6_combout\);

-- Location: FF_X22_Y20_N3
\inst|inst|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|data[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|data\(1));

-- Location: LCCOMB_X22_Y20_N8
\inst|inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~4_combout\ = (\inst|inst|data\(2) & (\inst|inst|Add0~3\ $ (GND))) # (!\inst|inst|data\(2) & (!\inst|inst|Add0~3\ & VCC))
-- \inst|inst|Add0~5\ = CARRY((\inst|inst|data\(2) & !\inst|inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|data\(2),
	datad => VCC,
	cin => \inst|inst|Add0~3\,
	combout => \inst|inst|Add0~4_combout\,
	cout => \inst|inst|Add0~5\);

-- Location: LCCOMB_X22_Y20_N28
\inst|inst|data[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|data[2]~8_combout\ = (\inst|inst|data[8]~2_combout\ & (((\inst|inst|data\(2) & \inst|inst|data[8]~14_combout\)))) # (!\inst|inst|data[8]~2_combout\ & ((\inst|inst|Add0~4_combout\) # ((\inst|inst|data\(2) & \inst|inst|data[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data[8]~2_combout\,
	datab => \inst|inst|Add0~4_combout\,
	datac => \inst|inst|data\(2),
	datad => \inst|inst|data[8]~14_combout\,
	combout => \inst|inst|data[2]~8_combout\);

-- Location: FF_X22_Y20_N29
\inst|inst|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|data[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|data\(2));

-- Location: LCCOMB_X22_Y20_N10
\inst|inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~6_combout\ = (\inst|inst|data\(3) & (!\inst|inst|Add0~5\)) # (!\inst|inst|data\(3) & ((\inst|inst|Add0~5\) # (GND)))
-- \inst|inst|Add0~7\ = CARRY((!\inst|inst|Add0~5\) # (!\inst|inst|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|data\(3),
	datad => VCC,
	cin => \inst|inst|Add0~5\,
	combout => \inst|inst|Add0~6_combout\,
	cout => \inst|inst|Add0~7\);

-- Location: LCCOMB_X22_Y20_N0
\inst|inst|data[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|data[3]~5_combout\ = (\inst|inst|Add0~6_combout\ & (((\inst|inst|data[8]~14_combout\ & \inst|inst|data\(3))) # (!\inst|inst|data[8]~2_combout\))) # (!\inst|inst|Add0~6_combout\ & (\inst|inst|data[8]~14_combout\ & (\inst|inst|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Add0~6_combout\,
	datab => \inst|inst|data[8]~14_combout\,
	datac => \inst|inst|data\(3),
	datad => \inst|inst|data[8]~2_combout\,
	combout => \inst|inst|data[3]~5_combout\);

-- Location: FF_X22_Y20_N1
\inst|inst|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|data[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|data\(3));

-- Location: LCCOMB_X23_Y20_N30
\inst|inst|data[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|data[4]~10_combout\ = (\inst|inst|data\(10) & ((\inst|inst|data\(4)) # ((!\inst|inst|data[8]~2_combout\ & \inst|inst|Add0~8_combout\)))) # (!\inst|inst|data\(10) & (!\inst|inst|data[8]~2_combout\ & ((\inst|inst|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(10),
	datab => \inst|inst|data[8]~2_combout\,
	datac => \inst|inst|data\(4),
	datad => \inst|inst|Add0~8_combout\,
	combout => \inst|inst|data[4]~10_combout\);

-- Location: FF_X23_Y20_N31
\inst|inst|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|data[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|data\(4));

-- Location: LCCOMB_X22_Y22_N2
\inst|inst2|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal0~1_combout\ = (!\inst|inst|data\(4) & !\inst|inst|data\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|data\(4),
	datad => \inst|inst|data\(5),
	combout => \inst|inst2|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y22_N14
\inst|inst2|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal0~0_combout\ = (\inst|inst|data\(3) & (\inst|inst|data\(1) & (\inst|inst|data\(2) & \inst|inst|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(3),
	datab => \inst|inst|data\(1),
	datac => \inst|inst|data\(2),
	datad => \inst|inst|data\(0),
	combout => \inst|inst2|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y20_N2
\inst|inst|data[8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|data[8]~2_combout\ = (\inst|inst|data\(10) & (((\inst|inst2|Equal0~0_combout\) # (!\inst|inst2|Equal0~2_combout\)) # (!\inst|inst2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(10),
	datab => \inst|inst2|Equal0~1_combout\,
	datac => \inst|inst2|Equal0~2_combout\,
	datad => \inst|inst2|Equal0~0_combout\,
	combout => \inst|inst|data[8]~2_combout\);

-- Location: LCCOMB_X22_Y20_N24
\inst|inst|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~20_combout\ = \inst|inst|data\(10) $ (!\inst|inst|Add0~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(10),
	cin => \inst|inst|Add0~19\,
	combout => \inst|inst|Add0~20_combout\);

-- Location: LCCOMB_X22_Y20_N26
\inst|inst|data[10]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|data[10]~11_combout\ = (\inst|inst|data[8]~14_combout\) # ((!\inst|inst|data[8]~2_combout\ & \inst|inst|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data[8]~2_combout\,
	datab => \inst|inst|Add0~20_combout\,
	datad => \inst|inst|data[8]~14_combout\,
	combout => \inst|inst|data[10]~11_combout\);

-- Location: FF_X22_Y20_N27
\inst|inst|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|data[10]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|data\(10));

-- Location: LCCOMB_X23_Y20_N26
\inst|inst10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst10~1_combout\ = (\inst|inst|data\(10)) # ((!\inst|inst|data\(9)) # (!\inst|inst|data\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(10),
	datab => \inst|inst|data\(8),
	datad => \inst|inst|data\(9),
	combout => \inst|inst10~1_combout\);

-- Location: LCCOMB_X22_Y22_N20
\inst|inst10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst10~2_combout\ = ((!\inst|inst|data\(5) & ((!\inst|inst|data\(3)) # (!\inst|inst|data\(4))))) # (!\inst|inst|data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(5),
	datab => \inst|inst|data\(6),
	datac => \inst|inst|data\(4),
	datad => \inst|inst|data\(3),
	combout => \inst|inst10~2_combout\);

-- Location: LCCOMB_X23_Y20_N12
\inst|inst10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst10~0_combout\ = (\inst|inst|data\(6) & (\inst|inst|data\(7) & ((\inst|inst2|Equal0~0_combout\) # (!\inst|inst2|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(6),
	datab => \inst|inst2|Equal0~1_combout\,
	datac => \inst|inst|data\(7),
	datad => \inst|inst2|Equal0~0_combout\,
	combout => \inst|inst10~0_combout\);

-- Location: LCCOMB_X23_Y20_N4
\inst|inst10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst10~3_combout\ = (\inst|inst10~1_combout\) # ((\inst|inst10~0_combout\) # ((!\inst|inst|data\(7) & \inst|inst10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10~1_combout\,
	datab => \inst|inst|data\(7),
	datac => \inst|inst10~2_combout\,
	datad => \inst|inst10~0_combout\,
	combout => \inst|inst10~3_combout\);

-- Location: LCCOMB_X23_Y20_N20
\inst|inst2|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal0~3_combout\ = (\inst|inst|data\(10) & (\inst|inst2|Equal0~0_combout\ & (\inst|inst2|Equal0~2_combout\ & \inst|inst2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(10),
	datab => \inst|inst2|Equal0~0_combout\,
	datac => \inst|inst2|Equal0~2_combout\,
	datad => \inst|inst2|Equal0~1_combout\,
	combout => \inst|inst2|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y22_N0
\inst|inst1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|Add0~0_combout\ = \inst|inst1|data\(0) $ (VCC)
-- \inst|inst1|Add0~1\ = CARRY(\inst|inst1|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|data\(0),
	datad => VCC,
	combout => \inst|inst1|Add0~0_combout\,
	cout => \inst|inst1|Add0~1\);

-- Location: LCCOMB_X24_Y22_N24
\inst|inst1|data[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|data[0]~10_combout\ = (\inst|inst1|data[8]~0_combout\ & (!\inst|inst2|Equal0~3_combout\ & (\inst|inst1|data\(0)))) # (!\inst|inst1|data[8]~0_combout\ & ((\inst|inst1|Add0~0_combout\) # ((!\inst|inst2|Equal0~3_combout\ & 
-- \inst|inst1|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data[8]~0_combout\,
	datab => \inst|inst2|Equal0~3_combout\,
	datac => \inst|inst1|data\(0),
	datad => \inst|inst1|Add0~0_combout\,
	combout => \inst|inst1|data[0]~10_combout\);

-- Location: FF_X24_Y22_N25
\inst|inst1|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst1|data[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|data\(0));

-- Location: LCCOMB_X24_Y22_N2
\inst|inst1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|Add0~2_combout\ = (\inst|inst1|data\(1) & (!\inst|inst1|Add0~1\)) # (!\inst|inst1|data\(1) & ((\inst|inst1|Add0~1\) # (GND)))
-- \inst|inst1|Add0~3\ = CARRY((!\inst|inst1|Add0~1\) # (!\inst|inst1|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|data\(1),
	datad => VCC,
	cin => \inst|inst1|Add0~1\,
	combout => \inst|inst1|Add0~2_combout\,
	cout => \inst|inst1|Add0~3\);

-- Location: LCCOMB_X24_Y21_N30
\inst|inst1|data[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|data[1]~9_combout\ = (\inst|inst1|Add0~2_combout\ & (((!\inst|inst2|Equal0~3_combout\ & \inst|inst1|data\(1))) # (!\inst|inst1|data[8]~0_combout\))) # (!\inst|inst1|Add0~2_combout\ & (!\inst|inst2|Equal0~3_combout\ & (\inst|inst1|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|Add0~2_combout\,
	datab => \inst|inst2|Equal0~3_combout\,
	datac => \inst|inst1|data\(1),
	datad => \inst|inst1|data[8]~0_combout\,
	combout => \inst|inst1|data[1]~9_combout\);

-- Location: FF_X24_Y21_N31
\inst|inst1|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst1|data[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|data\(1));

-- Location: LCCOMB_X24_Y22_N4
\inst|inst1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|Add0~4_combout\ = (\inst|inst1|data\(2) & (\inst|inst1|Add0~3\ $ (GND))) # (!\inst|inst1|data\(2) & (!\inst|inst1|Add0~3\ & VCC))
-- \inst|inst1|Add0~5\ = CARRY((\inst|inst1|data\(2) & !\inst|inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|data\(2),
	datad => VCC,
	cin => \inst|inst1|Add0~3\,
	combout => \inst|inst1|Add0~4_combout\,
	cout => \inst|inst1|Add0~5\);

-- Location: LCCOMB_X24_Y21_N4
\inst|inst1|data[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|data[2]~8_combout\ = (\inst|inst1|data[8]~0_combout\ & (!\inst|inst2|Equal0~3_combout\ & (\inst|inst1|data\(2)))) # (!\inst|inst1|data[8]~0_combout\ & ((\inst|inst1|Add0~4_combout\) # ((!\inst|inst2|Equal0~3_combout\ & \inst|inst1|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data[8]~0_combout\,
	datab => \inst|inst2|Equal0~3_combout\,
	datac => \inst|inst1|data\(2),
	datad => \inst|inst1|Add0~4_combout\,
	combout => \inst|inst1|data[2]~8_combout\);

-- Location: FF_X24_Y21_N5
\inst|inst1|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst1|data[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|data\(2));

-- Location: LCCOMB_X24_Y22_N6
\inst|inst1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|Add0~6_combout\ = (\inst|inst1|data\(3) & (!\inst|inst1|Add0~5\)) # (!\inst|inst1|data\(3) & ((\inst|inst1|Add0~5\) # (GND)))
-- \inst|inst1|Add0~7\ = CARRY((!\inst|inst1|Add0~5\) # (!\inst|inst1|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(3),
	datad => VCC,
	cin => \inst|inst1|Add0~5\,
	combout => \inst|inst1|Add0~6_combout\,
	cout => \inst|inst1|Add0~7\);

-- Location: LCCOMB_X24_Y22_N30
\inst|inst1|data[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|data[3]~1_combout\ = (\inst|inst1|Add0~6_combout\ & (((\inst|inst1|data\(3) & !\inst|inst2|Equal0~3_combout\)) # (!\inst|inst1|data[8]~0_combout\))) # (!\inst|inst1|Add0~6_combout\ & (\inst|inst1|data\(3) & (!\inst|inst2|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|Add0~6_combout\,
	datab => \inst|inst1|data\(3),
	datac => \inst|inst2|Equal0~3_combout\,
	datad => \inst|inst1|data[8]~0_combout\,
	combout => \inst|inst1|data[3]~1_combout\);

-- Location: FF_X24_Y21_N11
\inst|inst1|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst1|data[3]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|data\(3));

-- Location: LCCOMB_X24_Y22_N8
\inst|inst1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|Add0~8_combout\ = (\inst|inst1|data\(4) & (\inst|inst1|Add0~7\ $ (GND))) # (!\inst|inst1|data\(4) & (!\inst|inst1|Add0~7\ & VCC))
-- \inst|inst1|Add0~9\ = CARRY((\inst|inst1|data\(4) & !\inst|inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|data\(4),
	datad => VCC,
	cin => \inst|inst1|Add0~7\,
	combout => \inst|inst1|Add0~8_combout\,
	cout => \inst|inst1|Add0~9\);

-- Location: LCCOMB_X24_Y21_N8
\inst|inst1|data[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|data[4]~7_combout\ = (\inst|inst1|Add0~8_combout\ & (((!\inst|inst2|Equal0~3_combout\ & \inst|inst1|data\(4))) # (!\inst|inst1|data[8]~0_combout\))) # (!\inst|inst1|Add0~8_combout\ & (!\inst|inst2|Equal0~3_combout\ & (\inst|inst1|data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|Add0~8_combout\,
	datab => \inst|inst2|Equal0~3_combout\,
	datac => \inst|inst1|data\(4),
	datad => \inst|inst1|data[8]~0_combout\,
	combout => \inst|inst1|data[4]~7_combout\);

-- Location: FF_X24_Y21_N9
\inst|inst1|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst1|data[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|data\(4));

-- Location: LCCOMB_X24_Y22_N10
\inst|inst1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|Add0~10_combout\ = (\inst|inst1|data\(5) & (!\inst|inst1|Add0~9\)) # (!\inst|inst1|data\(5) & ((\inst|inst1|Add0~9\) # (GND)))
-- \inst|inst1|Add0~11\ = CARRY((!\inst|inst1|Add0~9\) # (!\inst|inst1|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|data\(5),
	datad => VCC,
	cin => \inst|inst1|Add0~9\,
	combout => \inst|inst1|Add0~10_combout\,
	cout => \inst|inst1|Add0~11\);

-- Location: LCCOMB_X24_Y22_N28
\inst|inst1|data[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|data[5]~5_combout\ = (\inst|inst1|data\(5) & (((\inst|inst1|Add0~10_combout\ & !\inst|inst1|data[8]~0_combout\)) # (!\inst|inst2|Equal0~3_combout\))) # (!\inst|inst1|data\(5) & (\inst|inst1|Add0~10_combout\ & 
-- ((!\inst|inst1|data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(5),
	datab => \inst|inst1|Add0~10_combout\,
	datac => \inst|inst2|Equal0~3_combout\,
	datad => \inst|inst1|data[8]~0_combout\,
	combout => \inst|inst1|data[5]~5_combout\);

-- Location: FF_X24_Y21_N29
\inst|inst1|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst1|data[5]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|data\(5));

-- Location: LCCOMB_X24_Y22_N12
\inst|inst1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|Add0~12_combout\ = (\inst|inst1|data\(6) & (\inst|inst1|Add0~11\ $ (GND))) # (!\inst|inst1|data\(6) & (!\inst|inst1|Add0~11\ & VCC))
-- \inst|inst1|Add0~13\ = CARRY((\inst|inst1|data\(6) & !\inst|inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(6),
	datad => VCC,
	cin => \inst|inst1|Add0~11\,
	combout => \inst|inst1|Add0~12_combout\,
	cout => \inst|inst1|Add0~13\);

-- Location: LCCOMB_X24_Y21_N2
\inst|inst1|data[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|data[6]~4_combout\ = (\inst|inst1|Add0~12_combout\ & (((!\inst|inst2|Equal0~3_combout\ & \inst|inst1|data\(6))) # (!\inst|inst1|data[8]~0_combout\))) # (!\inst|inst1|Add0~12_combout\ & (!\inst|inst2|Equal0~3_combout\ & (\inst|inst1|data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|Add0~12_combout\,
	datab => \inst|inst2|Equal0~3_combout\,
	datac => \inst|inst1|data\(6),
	datad => \inst|inst1|data[8]~0_combout\,
	combout => \inst|inst1|data[6]~4_combout\);

-- Location: FF_X24_Y21_N3
\inst|inst1|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst1|data[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|data\(6));

-- Location: LCCOMB_X24_Y22_N14
\inst|inst1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|Add0~14_combout\ = (\inst|inst1|data\(7) & (!\inst|inst1|Add0~13\)) # (!\inst|inst1|data\(7) & ((\inst|inst1|Add0~13\) # (GND)))
-- \inst|inst1|Add0~15\ = CARRY((!\inst|inst1|Add0~13\) # (!\inst|inst1|data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|data\(7),
	datad => VCC,
	cin => \inst|inst1|Add0~13\,
	combout => \inst|inst1|Add0~14_combout\,
	cout => \inst|inst1|Add0~15\);

-- Location: LCCOMB_X24_Y21_N6
\inst|inst1|data[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|data[7]~6_combout\ = (\inst|inst1|data[8]~0_combout\ & (!\inst|inst2|Equal0~3_combout\ & (\inst|inst1|data\(7)))) # (!\inst|inst1|data[8]~0_combout\ & ((\inst|inst1|Add0~14_combout\) # ((!\inst|inst2|Equal0~3_combout\ & 
-- \inst|inst1|data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data[8]~0_combout\,
	datab => \inst|inst2|Equal0~3_combout\,
	datac => \inst|inst1|data\(7),
	datad => \inst|inst1|Add0~14_combout\,
	combout => \inst|inst1|data[7]~6_combout\);

-- Location: FF_X24_Y21_N7
\inst|inst1|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst1|data[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|data\(7));

-- Location: LCCOMB_X26_Y21_N22
\inst|inst21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst21~0_combout\ = (\inst|inst1|data\(7) & (\inst|inst1|data\(0) & !\inst|inst1|data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|data\(7),
	datac => \inst|inst1|data\(0),
	datad => \inst|inst1|data\(6),
	combout => \inst|inst21~0_combout\);

-- Location: LCCOMB_X24_Y22_N16
\inst|inst1|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|Add0~16_combout\ = (\inst|inst1|data\(8) & (\inst|inst1|Add0~15\ $ (GND))) # (!\inst|inst1|data\(8) & (!\inst|inst1|Add0~15\ & VCC))
-- \inst|inst1|Add0~17\ = CARRY((\inst|inst1|data\(8) & !\inst|inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|data\(8),
	datad => VCC,
	cin => \inst|inst1|Add0~15\,
	combout => \inst|inst1|Add0~16_combout\,
	cout => \inst|inst1|Add0~17\);

-- Location: LCCOMB_X24_Y22_N18
\inst|inst1|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|Add0~18_combout\ = \inst|inst1|Add0~17\ $ (\inst|inst1|data\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst1|data\(9),
	cin => \inst|inst1|Add0~17\,
	combout => \inst|inst1|Add0~18_combout\);

-- Location: LCCOMB_X26_Y21_N28
\inst|inst1|data[9]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|data[9]~3_combout\ = (\inst|inst1|Add0~18_combout\ & (((!\inst|inst2|Equal0~3_combout\ & \inst|inst1|data\(9))) # (!\inst|inst1|data[8]~0_combout\))) # (!\inst|inst1|Add0~18_combout\ & (!\inst|inst2|Equal0~3_combout\ & (\inst|inst1|data\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|Add0~18_combout\,
	datab => \inst|inst2|Equal0~3_combout\,
	datac => \inst|inst1|data\(9),
	datad => \inst|inst1|data[8]~0_combout\,
	combout => \inst|inst1|data[9]~3_combout\);

-- Location: FF_X26_Y21_N29
\inst|inst1|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst1|data[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|data\(9));

-- Location: LCCOMB_X26_Y21_N18
\inst12|inst37|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst37|Equal0~0_combout\ = (!\inst|inst1|data\(1) & (!\inst|inst1|data\(2) & (!\inst|inst1|data\(8) & \inst|inst1|data\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(1),
	datab => \inst|inst1|data\(2),
	datac => \inst|inst1|data\(8),
	datad => \inst|inst1|data\(9),
	combout => \inst12|inst37|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y21_N16
\inst12|inst37|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst37|Equal0~1_combout\ = (!\inst|inst1|data\(5) & (\inst12|inst37|Equal0~0_combout\ & (\inst|inst1|data\(3) & \inst|inst1|data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(5),
	datab => \inst12|inst37|Equal0~0_combout\,
	datac => \inst|inst1|data\(3),
	datad => \inst|inst1|data\(4),
	combout => \inst12|inst37|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y21_N4
\inst|inst1|data[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|data[8]~0_combout\ = ((\inst|inst21~0_combout\ & \inst12|inst37|Equal0~1_combout\)) # (!\inst|inst2|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21~0_combout\,
	datac => \inst|inst2|Equal0~3_combout\,
	datad => \inst12|inst37|Equal0~1_combout\,
	combout => \inst|inst1|data[8]~0_combout\);

-- Location: LCCOMB_X24_Y21_N0
\inst|inst1|data[8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|data[8]~2_combout\ = (\inst|inst1|data[8]~0_combout\ & (!\inst|inst2|Equal0~3_combout\ & (\inst|inst1|data\(8)))) # (!\inst|inst1|data[8]~0_combout\ & ((\inst|inst1|Add0~16_combout\) # ((!\inst|inst2|Equal0~3_combout\ & 
-- \inst|inst1|data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data[8]~0_combout\,
	datab => \inst|inst2|Equal0~3_combout\,
	datac => \inst|inst1|data\(8),
	datad => \inst|inst1|Add0~16_combout\,
	combout => \inst|inst1|data[8]~2_combout\);

-- Location: FF_X24_Y21_N1
\inst|inst1|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst1|data[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|data\(8));

-- Location: LCCOMB_X26_Y22_N8
\inst|inst15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst15~0_combout\ = (\inst|inst1|data\(7) & (!\inst|inst1|data\(4) & (!\inst|inst1|data\(5) & !\inst|inst1|data\(6)))) # (!\inst|inst1|data\(7) & (\inst|inst1|data\(4) & (\inst|inst1|data\(5) & \inst|inst1|data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(7),
	datab => \inst|inst1|data\(4),
	datac => \inst|inst1|data\(5),
	datad => \inst|inst1|data\(6),
	combout => \inst|inst15~0_combout\);

-- Location: LCCOMB_X26_Y21_N26
\inst|inst15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst15~1_combout\ = (!\inst|inst1|data\(8) & (\inst|inst15~0_combout\ & \inst|inst1|data\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|data\(8),
	datac => \inst|inst15~0_combout\,
	datad => \inst|inst1|data\(9),
	combout => \inst|inst15~1_combout\);

-- Location: LCCOMB_X26_Y21_N24
\inst|inst15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst15~2_combout\ = (\inst|inst1|data\(1) & (((\inst|inst1|data\(6)) # (!\inst|inst1|data\(2))))) # (!\inst|inst1|data\(1) & (\inst|inst1|data\(6) & ((\inst|inst1|data\(0)) # (!\inst|inst1|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(1),
	datab => \inst|inst1|data\(0),
	datac => \inst|inst1|data\(2),
	datad => \inst|inst1|data\(6),
	combout => \inst|inst15~2_combout\);

-- Location: LCCOMB_X26_Y21_N2
\inst|inst15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst15~3_combout\ = ((\inst|inst15~2_combout\ & ((!\inst|inst1|data\(3)) # (!\inst|inst1|data\(2)))) # (!\inst|inst15~2_combout\ & ((\inst|inst1|data\(2)) # (\inst|inst1|data\(3))))) # (!\inst|inst15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15~1_combout\,
	datab => \inst|inst15~2_combout\,
	datac => \inst|inst1|data\(2),
	datad => \inst|inst1|data\(3),
	combout => \inst|inst15~3_combout\);

-- Location: LCCOMB_X28_Y17_N2
\inst8|inst|inst4|inst44~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst44~3_combout\ = (!\inst8|inst|inst4|Timer_reg|data\(1) & (!\inst8|inst|inst4|Timer_reg|data\(2) & (!\inst8|inst|inst4|Timer_reg|data\(0) & !\inst8|inst|inst4|Timer_reg|data\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|Timer_reg|data\(1),
	datab => \inst8|inst|inst4|Timer_reg|data\(2),
	datac => \inst8|inst|inst4|Timer_reg|data\(0),
	datad => \inst8|inst|inst4|Timer_reg|data\(12),
	combout => \inst8|inst|inst4|inst44~3_combout\);

-- Location: LCCOMB_X29_Y17_N8
\inst8|inst|inst4|inst44~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst44~2_combout\ = (\inst8|inst|inst4|Timer_reg|data\(9) & (!\inst8|inst|inst4|Timer_reg|data\(10) & (\inst8|inst|inst4|Timer_reg|data\(11) & !\inst8|inst|inst4|Timer_reg|data\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|Timer_reg|data\(9),
	datab => \inst8|inst|inst4|Timer_reg|data\(10),
	datac => \inst8|inst|inst4|Timer_reg|data\(11),
	datad => \inst8|inst|inst4|Timer_reg|data\(8),
	combout => \inst8|inst|inst4|inst44~2_combout\);

-- Location: LCCOMB_X29_Y17_N16
\inst8|inst|inst4|inst44~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst44~1_combout\ = (!\inst8|inst|inst4|Timer_reg|data\(3) & (\inst8|inst|inst9|data\(0) & (!\inst8|inst|inst4|inst8|data\(0) & !\inst8|inst|inst4|inst8|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|Timer_reg|data\(3),
	datab => \inst8|inst|inst9|data\(0),
	datac => \inst8|inst|inst4|inst8|data\(0),
	datad => \inst8|inst|inst4|inst8|data\(1),
	combout => \inst8|inst|inst4|inst44~1_combout\);

-- Location: LCCOMB_X29_Y17_N30
\inst8|inst|inst4|inst44~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst44~4_combout\ = (\inst8|inst|inst4|inst44~3_combout\ & (\inst8|inst|inst4|inst44~0_combout\ & (\inst8|inst|inst4|inst44~2_combout\ & \inst8|inst|inst4|inst44~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|inst44~3_combout\,
	datab => \inst8|inst|inst4|inst44~0_combout\,
	datac => \inst8|inst|inst4|inst44~2_combout\,
	datad => \inst8|inst|inst4|inst44~1_combout\,
	combout => \inst8|inst|inst4|inst44~4_combout\);

-- Location: FF_X26_Y18_N15
\inst8|inst|inst4|inst31|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|inst|inst4|ps2_word_reg|inst19|data\(0),
	sload => VCC,
	ena => \inst8|inst|inst4|inst44~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst31|data\(1));

-- Location: LCCOMB_X24_Y18_N6
\inst8|inst|mouse_data_int_reg52|data[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_int_reg52|data[1]~feeder_combout\ = \inst8|inst|inst4|inst31|data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|inst4|inst31|data\(1),
	combout => \inst8|inst|mouse_data_int_reg52|data[1]~feeder_combout\);

-- Location: LCCOMB_X29_Y17_N6
\inst8|inst|inst4|inst34|data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst34|data[0]~0_combout\ = (\inst8|inst|inst4|inst34|data\(0) & (((\inst8|inst|inst4|inst8|data\(0)) # (\inst8|inst|inst4|inst8|data\(1))) # (!\inst8|inst|inst9|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst9|data\(0),
	datab => \inst8|inst|inst4|inst34|data\(0),
	datac => \inst8|inst|inst4|inst8|data\(0),
	datad => \inst8|inst|inst4|inst8|data\(1),
	combout => \inst8|inst|inst4|inst34|data[0]~0_combout\);

-- Location: LCCOMB_X29_Y17_N0
\inst8|inst|inst4|inst34|data[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst34|data[0]~1_combout\ = (\inst8|inst|inst4|inst44~4_combout\) # (\inst8|inst|inst4|inst34|data[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|inst44~4_combout\,
	datad => \inst8|inst|inst4|inst34|data[0]~0_combout\,
	combout => \inst8|inst|inst4|inst34|data[0]~1_combout\);

-- Location: FF_X29_Y17_N1
\inst8|inst|inst4|inst34|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|inst34|data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst34|data\(0));

-- Location: LCCOMB_X26_Y18_N22
\inst8|inst|inst1|inst50~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst1|inst50~feeder_combout\ = \inst8|inst|inst4|inst34|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|inst4|inst34|data\(0),
	combout => \inst8|inst|inst1|inst50~feeder_combout\);

-- Location: FF_X26_Y18_N23
\inst8|inst|inst1|inst50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst1|inst50~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst1|inst50~q\);

-- Location: FF_X26_Y18_N29
\inst8|inst|inst1|inst51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|inst|inst1|inst50~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst1|inst51~q\);

-- Location: LCCOMB_X26_Y18_N10
\inst8|inst|inst1|inst57~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst1|inst57~0_combout\ = (!\inst8|inst|inst1|inst51~q\ & \inst8|inst|inst1|inst50~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst|inst1|inst51~q\,
	datac => \inst8|inst|inst1|inst50~q\,
	combout => \inst8|inst|inst1|inst57~0_combout\);

-- Location: FF_X24_Y18_N7
\inst8|inst|mouse_data_int_reg52|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_int_reg52|data[1]~feeder_combout\,
	ena => \inst8|inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_int_reg52|data\(1));

-- Location: LCCOMB_X24_Y18_N22
\inst8|inst|mouse_data_int_reg|data[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_int_reg|data[1]~feeder_combout\ = \inst8|inst|mouse_data_int_reg52|data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|mouse_data_int_reg52|data\(1),
	combout => \inst8|inst|mouse_data_int_reg|data[1]~feeder_combout\);

-- Location: FF_X24_Y18_N23
\inst8|inst|mouse_data_int_reg|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_int_reg|data[1]~feeder_combout\,
	ena => \inst8|inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_int_reg|data\(1));

-- Location: LCCOMB_X22_Y18_N16
\inst8|inst|mouse_data_int_reg53|data[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_int_reg53|data[1]~feeder_combout\ = \inst8|inst|mouse_data_int_reg|data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|mouse_data_int_reg|data\(1),
	combout => \inst8|inst|mouse_data_int_reg53|data[1]~feeder_combout\);

-- Location: FF_X22_Y18_N17
\inst8|inst|mouse_data_int_reg53|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_int_reg53|data[1]~feeder_combout\,
	ena => \inst8|inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_int_reg53|data\(1));

-- Location: LCCOMB_X22_Y18_N28
\inst8|inst|mouse_data_reg|data[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_reg|data[17]~feeder_combout\ = \inst8|inst|mouse_data_int_reg53|data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|mouse_data_int_reg53|data\(1),
	combout => \inst8|inst|mouse_data_reg|data[17]~feeder_combout\);

-- Location: FF_X26_Y18_N9
\inst8|inst|inst4|inst31|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|inst|inst4|ps2_word_reg|inst9|data\(0),
	sload => VCC,
	ena => \inst8|inst|inst4|inst44~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst31|data\(6));

-- Location: LCCOMB_X26_Y18_N26
\inst8|inst|inst4|inst31|data[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst31|data[7]~feeder_combout\ = \inst8|inst|inst4|ps2_word_reg|inst7|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|inst4|ps2_word_reg|inst7|data\(0),
	combout => \inst8|inst|inst4|inst31|data[7]~feeder_combout\);

-- Location: FF_X26_Y18_N27
\inst8|inst|inst4|inst31|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|inst31|data[7]~feeder_combout\,
	ena => \inst8|inst|inst4|inst44~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst31|data\(7));

-- Location: LCCOMB_X26_Y18_N12
\inst8|inst|inst16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst16~2_combout\ = (\inst8|inst|inst4|inst31|data\(6) & \inst8|inst|inst4|inst31|data\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst|inst4|inst31|data\(6),
	datac => \inst8|inst|inst4|inst31|data\(7),
	combout => \inst8|inst|inst16~2_combout\);

-- Location: LCCOMB_X26_Y18_N16
\inst8|inst|inst4|inst31|data[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst31|data[0]~feeder_combout\ = \inst8|inst|inst4|ps2_word_reg|inst21|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|inst4|ps2_word_reg|inst21|data\(0),
	combout => \inst8|inst|inst4|inst31|data[0]~feeder_combout\);

-- Location: FF_X26_Y18_N17
\inst8|inst|inst4|inst31|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|inst31|data[0]~feeder_combout\,
	ena => \inst8|inst|inst4|inst44~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst31|data\(0));

-- Location: LCCOMB_X26_Y18_N18
\inst8|inst|inst16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst16~0_combout\ = (!\inst8|inst|inst4|inst31|data\(0) & (!\inst8|inst|inst1|inst51~q\ & (\inst8|inst|inst1|inst50~q\ & \inst8|inst|inst4|inst31|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|inst31|data\(0),
	datab => \inst8|inst|inst1|inst51~q\,
	datac => \inst8|inst|inst1|inst50~q\,
	datad => \inst8|inst|inst4|inst31|data\(1),
	combout => \inst8|inst|inst16~0_combout\);

-- Location: LCCOMB_X27_Y18_N0
\inst8|inst|inst4|inst31|data[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst31|data[4]~feeder_combout\ = \inst8|inst|inst4|ps2_word_reg|inst13|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|inst4|ps2_word_reg|inst13|data\(0),
	combout => \inst8|inst|inst4|inst31|data[4]~feeder_combout\);

-- Location: FF_X27_Y18_N1
\inst8|inst|inst4|inst31|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|inst31|data[4]~feeder_combout\,
	ena => \inst8|inst|inst4|inst44~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst31|data\(4));

-- Location: LCCOMB_X27_Y18_N20
\inst8|inst|inst4|inst31|data[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst31|data[2]~feeder_combout\ = \inst8|inst|inst4|ps2_word_reg|inst17|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|inst4|ps2_word_reg|inst17|data\(0),
	combout => \inst8|inst|inst4|inst31|data[2]~feeder_combout\);

-- Location: FF_X27_Y18_N21
\inst8|inst|inst4|inst31|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|inst31|data[2]~feeder_combout\,
	ena => \inst8|inst|inst4|inst44~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst31|data\(2));

-- Location: LCCOMB_X27_Y18_N30
\inst8|inst|inst4|inst31|data[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst31|data[5]~feeder_combout\ = \inst8|inst|inst4|ps2_word_reg|inst11|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|inst4|ps2_word_reg|inst11|data\(0),
	combout => \inst8|inst|inst4|inst31|data[5]~feeder_combout\);

-- Location: FF_X27_Y18_N31
\inst8|inst|inst4|inst31|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|inst31|data[5]~feeder_combout\,
	ena => \inst8|inst|inst4|inst44~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst31|data\(5));

-- Location: LCCOMB_X27_Y18_N10
\inst8|inst|inst4|inst31|data[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst4|inst31|data[3]~feeder_combout\ = \inst8|inst|inst4|ps2_word_reg|inst15|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|inst4|ps2_word_reg|inst15|data\(0),
	combout => \inst8|inst|inst4|inst31|data[3]~feeder_combout\);

-- Location: FF_X27_Y18_N11
\inst8|inst|inst4|inst31|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst4|inst31|data[3]~feeder_combout\,
	ena => \inst8|inst|inst4|inst44~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst4|inst31|data\(3));

-- Location: LCCOMB_X27_Y18_N6
\inst8|inst|inst16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst16~1_combout\ = (\inst8|inst|inst4|inst31|data\(4) & (!\inst8|inst|inst4|inst31|data\(2) & (\inst8|inst|inst4|inst31|data\(5) & \inst8|inst|inst4|inst31|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst4|inst31|data\(4),
	datab => \inst8|inst|inst4|inst31|data\(2),
	datac => \inst8|inst|inst4|inst31|data\(5),
	datad => \inst8|inst|inst4|inst31|data\(3),
	combout => \inst8|inst|inst16~1_combout\);

-- Location: LCCOMB_X26_Y18_N20
\inst8|inst|inst11|data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst11|data[0]~0_combout\ = (\inst8|inst|inst11|data\(0)) # ((\inst8|inst|inst16~2_combout\ & (\inst8|inst|inst16~0_combout\ & \inst8|inst|inst16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst16~2_combout\,
	datab => \inst8|inst|inst16~0_combout\,
	datac => \inst8|inst|inst11|data\(0),
	datad => \inst8|inst|inst16~1_combout\,
	combout => \inst8|inst|inst11|data[0]~0_combout\);

-- Location: FF_X26_Y18_N21
\inst8|inst|inst11|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|inst11|data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|inst11|data\(0));

-- Location: LCCOMB_X26_Y18_N0
\inst8|inst|packet_byte_reg|data[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|packet_byte_reg|data[1]~0_combout\ = (\inst8|inst|packet_byte_reg|data\(0) & (\inst8|inst|inst11|data\(0) & (!\inst8|inst|packet_byte_reg|data\(1) & \inst8|inst|inst1|inst57~0_combout\))) # (!\inst8|inst|packet_byte_reg|data\(0) & 
-- (((\inst8|inst|packet_byte_reg|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|packet_byte_reg|data\(0),
	datab => \inst8|inst|inst11|data\(0),
	datac => \inst8|inst|packet_byte_reg|data\(1),
	datad => \inst8|inst|inst1|inst57~0_combout\,
	combout => \inst8|inst|packet_byte_reg|data[1]~0_combout\);

-- Location: FF_X26_Y18_N1
\inst8|inst|packet_byte_reg|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|packet_byte_reg|data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|packet_byte_reg|data\(1));

-- Location: LCCOMB_X26_Y18_N30
\inst8|inst|packet_byte_reg|data[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|packet_byte_reg|data[0]~1_combout\ = (\inst8|inst|packet_byte_reg|data\(0) & (!\inst8|inst|packet_byte_reg|data\(1) & ((!\inst8|inst|inst11|data\(0)) # (!\inst8|inst|inst1|inst57~0_combout\)))) # (!\inst8|inst|packet_byte_reg|data\(0) & 
-- (\inst8|inst|inst1|inst57~0_combout\ & (\inst8|inst|inst11|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst1|inst57~0_combout\,
	datab => \inst8|inst|inst11|data\(0),
	datac => \inst8|inst|packet_byte_reg|data\(0),
	datad => \inst8|inst|packet_byte_reg|data\(1),
	combout => \inst8|inst|packet_byte_reg|data[0]~1_combout\);

-- Location: FF_X26_Y18_N31
\inst8|inst|packet_byte_reg|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|packet_byte_reg|data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|packet_byte_reg|data\(0));

-- Location: LCCOMB_X26_Y18_N24
\inst8|inst|inst66|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst66|Equal0~0_combout\ = (\inst8|inst|packet_byte_reg|data\(0) & \inst8|inst|packet_byte_reg|data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst|packet_byte_reg|data\(0),
	datad => \inst8|inst|packet_byte_reg|data\(1),
	combout => \inst8|inst|inst66|Equal0~0_combout\);

-- Location: FF_X22_Y18_N29
\inst8|inst|mouse_data_reg|data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_reg|data[17]~feeder_combout\,
	ena => \inst8|inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_reg|data\(17));

-- Location: LCCOMB_X22_Y18_N10
\inst8|inst|mouse_data_int_reg52|data[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_int_reg52|data[0]~feeder_combout\ = \inst8|inst|inst4|inst31|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|inst4|inst31|data\(0),
	combout => \inst8|inst|mouse_data_int_reg52|data[0]~feeder_combout\);

-- Location: FF_X22_Y18_N11
\inst8|inst|mouse_data_int_reg52|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_int_reg52|data[0]~feeder_combout\,
	ena => \inst8|inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_int_reg52|data\(0));

-- Location: LCCOMB_X22_Y18_N14
\inst8|inst|mouse_data_int_reg|data[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_int_reg|data[0]~feeder_combout\ = \inst8|inst|mouse_data_int_reg52|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|mouse_data_int_reg52|data\(0),
	combout => \inst8|inst|mouse_data_int_reg|data[0]~feeder_combout\);

-- Location: FF_X22_Y18_N15
\inst8|inst|mouse_data_int_reg|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_int_reg|data[0]~feeder_combout\,
	ena => \inst8|inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_int_reg|data\(0));

-- Location: FF_X22_Y18_N3
\inst8|inst|mouse_data_int_reg53|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|inst|mouse_data_int_reg|data\(0),
	sload => VCC,
	ena => \inst8|inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_int_reg53|data\(0));

-- Location: LCCOMB_X22_Y18_N30
\inst8|inst|mouse_data_reg|data[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_reg|data[16]~feeder_combout\ = \inst8|inst|mouse_data_int_reg53|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|mouse_data_int_reg53|data\(0),
	combout => \inst8|inst|mouse_data_reg|data[16]~feeder_combout\);

-- Location: FF_X22_Y18_N31
\inst8|inst|mouse_data_reg|data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_reg|data[16]~feeder_combout\,
	ena => \inst8|inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_reg|data\(16));

-- Location: LCCOMB_X26_Y21_N30
\inst12|inst37|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst37|Equal0~2_combout\ = (\inst|inst1|data\(6) & (!\inst|inst1|data\(7) & (!\inst|inst1|data\(0) & \inst12|inst37|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(6),
	datab => \inst|inst1|data\(7),
	datac => \inst|inst1|data\(0),
	datad => \inst12|inst37|Equal0~1_combout\,
	combout => \inst12|inst37|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y22_N0
\inst12|inst14|data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst14|data[0]~0_combout\ = (\inst12|inst14|data\(0)) # (\inst12|inst37|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst14|data\(0),
	datad => \inst12|inst37|Equal0~2_combout\,
	combout => \inst12|inst14|data[0]~0_combout\);

-- Location: FF_X23_Y22_N1
\inst12|inst14|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst14|data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst14|data\(0));

-- Location: FF_X21_Y15_N19
\inst10|inst33|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst33|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33|cnt\(20));

-- Location: LCCOMB_X21_Y16_N10
\inst10|inst33|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Add0~0_combout\ = \inst10|inst33|cnt\(0) $ (GND)
-- \inst10|inst33|Add0~1\ = CARRY(!\inst10|inst33|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst33|cnt\(0),
	datad => VCC,
	combout => \inst10|inst33|Add0~0_combout\,
	cout => \inst10|inst33|Add0~1\);

-- Location: LCCOMB_X21_Y16_N8
\inst10|inst33|cnt[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|cnt[0]~10_combout\ = !\inst10|inst33|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|inst33|Add0~0_combout\,
	combout => \inst10|inst33|cnt[0]~10_combout\);

-- Location: FF_X21_Y16_N9
\inst10|inst33|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst33|cnt[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33|cnt\(0));

-- Location: LCCOMB_X21_Y16_N12
\inst10|inst33|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Add0~2_combout\ = (\inst10|inst33|cnt\(1) & (!\inst10|inst33|Add0~1\)) # (!\inst10|inst33|cnt\(1) & (\inst10|inst33|Add0~1\ & VCC))
-- \inst10|inst33|Add0~3\ = CARRY((\inst10|inst33|cnt\(1) & !\inst10|inst33|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst33|cnt\(1),
	datad => VCC,
	cin => \inst10|inst33|Add0~1\,
	combout => \inst10|inst33|Add0~2_combout\,
	cout => \inst10|inst33|Add0~3\);

-- Location: LCCOMB_X22_Y16_N4
\inst10|inst33|cnt[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|cnt[1]~9_combout\ = !\inst10|inst33|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|inst33|Add0~2_combout\,
	combout => \inst10|inst33|cnt[1]~9_combout\);

-- Location: FF_X22_Y16_N5
\inst10|inst33|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst33|cnt[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33|cnt\(1));

-- Location: LCCOMB_X21_Y16_N14
\inst10|inst33|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Add0~4_combout\ = (\inst10|inst33|cnt\(2) & (\inst10|inst33|Add0~3\ $ (GND))) # (!\inst10|inst33|cnt\(2) & ((GND) # (!\inst10|inst33|Add0~3\)))
-- \inst10|inst33|Add0~5\ = CARRY((!\inst10|inst33|Add0~3\) # (!\inst10|inst33|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst33|cnt\(2),
	datad => VCC,
	cin => \inst10|inst33|Add0~3\,
	combout => \inst10|inst33|Add0~4_combout\,
	cout => \inst10|inst33|Add0~5\);

-- Location: LCCOMB_X21_Y16_N2
\inst10|inst33|cnt[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|cnt[2]~8_combout\ = !\inst10|inst33|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst33|Add0~4_combout\,
	combout => \inst10|inst33|cnt[2]~8_combout\);

-- Location: FF_X21_Y16_N3
\inst10|inst33|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst33|cnt[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33|cnt\(2));

-- Location: LCCOMB_X21_Y16_N16
\inst10|inst33|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Add0~6_combout\ = (\inst10|inst33|cnt\(3) & (!\inst10|inst33|Add0~5\)) # (!\inst10|inst33|cnt\(3) & (\inst10|inst33|Add0~5\ & VCC))
-- \inst10|inst33|Add0~7\ = CARRY((\inst10|inst33|cnt\(3) & !\inst10|inst33|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst33|cnt\(3),
	datad => VCC,
	cin => \inst10|inst33|Add0~5\,
	combout => \inst10|inst33|Add0~6_combout\,
	cout => \inst10|inst33|Add0~7\);

-- Location: LCCOMB_X21_Y16_N0
\inst10|inst33|cnt[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|cnt[3]~7_combout\ = !\inst10|inst33|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|inst33|Add0~6_combout\,
	combout => \inst10|inst33|cnt[3]~7_combout\);

-- Location: FF_X21_Y16_N1
\inst10|inst33|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst33|cnt[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33|cnt\(3));

-- Location: LCCOMB_X21_Y16_N18
\inst10|inst33|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Add0~8_combout\ = (\inst10|inst33|cnt\(4) & (\inst10|inst33|Add0~7\ $ (GND))) # (!\inst10|inst33|cnt\(4) & ((GND) # (!\inst10|inst33|Add0~7\)))
-- \inst10|inst33|Add0~9\ = CARRY((!\inst10|inst33|Add0~7\) # (!\inst10|inst33|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst33|cnt\(4),
	datad => VCC,
	cin => \inst10|inst33|Add0~7\,
	combout => \inst10|inst33|Add0~8_combout\,
	cout => \inst10|inst33|Add0~9\);

-- Location: LCCOMB_X22_Y16_N6
\inst10|inst33|cnt[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|cnt[4]~6_combout\ = !\inst10|inst33|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|inst33|Add0~8_combout\,
	combout => \inst10|inst33|cnt[4]~6_combout\);

-- Location: FF_X22_Y16_N7
\inst10|inst33|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst33|cnt[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33|cnt\(4));

-- Location: LCCOMB_X21_Y16_N20
\inst10|inst33|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Add0~10_combout\ = (\inst10|inst33|cnt\(5) & (\inst10|inst33|Add0~9\ & VCC)) # (!\inst10|inst33|cnt\(5) & (!\inst10|inst33|Add0~9\))
-- \inst10|inst33|Add0~11\ = CARRY((!\inst10|inst33|cnt\(5) & !\inst10|inst33|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst33|cnt\(5),
	datad => VCC,
	cin => \inst10|inst33|Add0~9\,
	combout => \inst10|inst33|Add0~10_combout\,
	cout => \inst10|inst33|Add0~11\);

-- Location: FF_X21_Y16_N21
\inst10|inst33|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst33|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33|cnt\(5));

-- Location: LCCOMB_X21_Y16_N22
\inst10|inst33|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Add0~12_combout\ = (\inst10|inst33|cnt\(6) & ((GND) # (!\inst10|inst33|Add0~11\))) # (!\inst10|inst33|cnt\(6) & (\inst10|inst33|Add0~11\ $ (GND)))
-- \inst10|inst33|Add0~13\ = CARRY((\inst10|inst33|cnt\(6)) # (!\inst10|inst33|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst33|cnt\(6),
	datad => VCC,
	cin => \inst10|inst33|Add0~11\,
	combout => \inst10|inst33|Add0~12_combout\,
	cout => \inst10|inst33|Add0~13\);

-- Location: FF_X21_Y16_N23
\inst10|inst33|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst33|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33|cnt\(6));

-- Location: LCCOMB_X21_Y16_N24
\inst10|inst33|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Add0~14_combout\ = (\inst10|inst33|cnt\(7) & (!\inst10|inst33|Add0~13\)) # (!\inst10|inst33|cnt\(7) & (\inst10|inst33|Add0~13\ & VCC))
-- \inst10|inst33|Add0~15\ = CARRY((\inst10|inst33|cnt\(7) & !\inst10|inst33|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst33|cnt\(7),
	datad => VCC,
	cin => \inst10|inst33|Add0~13\,
	combout => \inst10|inst33|Add0~14_combout\,
	cout => \inst10|inst33|Add0~15\);

-- Location: LCCOMB_X22_Y16_N20
\inst10|inst33|cnt[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|cnt[7]~5_combout\ = !\inst10|inst33|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|inst33|Add0~14_combout\,
	combout => \inst10|inst33|cnt[7]~5_combout\);

-- Location: FF_X22_Y16_N21
\inst10|inst33|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst33|cnt[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33|cnt\(7));

-- Location: LCCOMB_X21_Y16_N26
\inst10|inst33|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Add0~16_combout\ = (\inst10|inst33|cnt\(8) & (\inst10|inst33|Add0~15\ $ (GND))) # (!\inst10|inst33|cnt\(8) & ((GND) # (!\inst10|inst33|Add0~15\)))
-- \inst10|inst33|Add0~17\ = CARRY((!\inst10|inst33|Add0~15\) # (!\inst10|inst33|cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst33|cnt\(8),
	datad => VCC,
	cin => \inst10|inst33|Add0~15\,
	combout => \inst10|inst33|Add0~16_combout\,
	cout => \inst10|inst33|Add0~17\);

-- Location: LCCOMB_X21_Y16_N6
\inst10|inst33|cnt[8]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|cnt[8]~4_combout\ = !\inst10|inst33|Add0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst33|Add0~16_combout\,
	combout => \inst10|inst33|cnt[8]~4_combout\);

-- Location: FF_X21_Y16_N7
\inst10|inst33|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst33|cnt[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33|cnt\(8));

-- Location: LCCOMB_X21_Y16_N28
\inst10|inst33|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Add0~18_combout\ = (\inst10|inst33|cnt\(9) & (\inst10|inst33|Add0~17\ & VCC)) # (!\inst10|inst33|cnt\(9) & (!\inst10|inst33|Add0~17\))
-- \inst10|inst33|Add0~19\ = CARRY((!\inst10|inst33|cnt\(9) & !\inst10|inst33|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst33|cnt\(9),
	datad => VCC,
	cin => \inst10|inst33|Add0~17\,
	combout => \inst10|inst33|Add0~18_combout\,
	cout => \inst10|inst33|Add0~19\);

-- Location: FF_X21_Y16_N29
\inst10|inst33|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst33|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33|cnt\(9));

-- Location: LCCOMB_X21_Y16_N30
\inst10|inst33|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Add0~20_combout\ = (\inst10|inst33|cnt\(10) & (\inst10|inst33|Add0~19\ $ (GND))) # (!\inst10|inst33|cnt\(10) & ((GND) # (!\inst10|inst33|Add0~19\)))
-- \inst10|inst33|Add0~21\ = CARRY((!\inst10|inst33|Add0~19\) # (!\inst10|inst33|cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst33|cnt\(10),
	datad => VCC,
	cin => \inst10|inst33|Add0~19\,
	combout => \inst10|inst33|Add0~20_combout\,
	cout => \inst10|inst33|Add0~21\);

-- Location: LCCOMB_X21_Y16_N4
\inst10|inst33|cnt[10]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|cnt[10]~3_combout\ = !\inst10|inst33|Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst33|Add0~20_combout\,
	combout => \inst10|inst33|cnt[10]~3_combout\);

-- Location: FF_X21_Y16_N5
\inst10|inst33|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst33|cnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33|cnt\(10));

-- Location: LCCOMB_X21_Y15_N0
\inst10|inst33|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Add0~22_combout\ = (\inst10|inst33|cnt\(11) & (\inst10|inst33|Add0~21\ & VCC)) # (!\inst10|inst33|cnt\(11) & (!\inst10|inst33|Add0~21\))
-- \inst10|inst33|Add0~23\ = CARRY((!\inst10|inst33|cnt\(11) & !\inst10|inst33|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst33|cnt\(11),
	datad => VCC,
	cin => \inst10|inst33|Add0~21\,
	combout => \inst10|inst33|Add0~22_combout\,
	cout => \inst10|inst33|Add0~23\);

-- Location: FF_X21_Y15_N1
\inst10|inst33|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst33|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33|cnt\(11));

-- Location: LCCOMB_X21_Y15_N2
\inst10|inst33|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Add0~24_combout\ = (\inst10|inst33|cnt\(12) & ((GND) # (!\inst10|inst33|Add0~23\))) # (!\inst10|inst33|cnt\(12) & (\inst10|inst33|Add0~23\ $ (GND)))
-- \inst10|inst33|Add0~25\ = CARRY((\inst10|inst33|cnt\(12)) # (!\inst10|inst33|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst33|cnt\(12),
	datad => VCC,
	cin => \inst10|inst33|Add0~23\,
	combout => \inst10|inst33|Add0~24_combout\,
	cout => \inst10|inst33|Add0~25\);

-- Location: FF_X21_Y15_N3
\inst10|inst33|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst33|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33|cnt\(12));

-- Location: LCCOMB_X21_Y15_N4
\inst10|inst33|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Add0~26_combout\ = (\inst10|inst33|cnt\(13) & (!\inst10|inst33|Add0~25\)) # (!\inst10|inst33|cnt\(13) & (\inst10|inst33|Add0~25\ & VCC))
-- \inst10|inst33|Add0~27\ = CARRY((\inst10|inst33|cnt\(13) & !\inst10|inst33|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst33|cnt\(13),
	datad => VCC,
	cin => \inst10|inst33|Add0~25\,
	combout => \inst10|inst33|Add0~26_combout\,
	cout => \inst10|inst33|Add0~27\);

-- Location: LCCOMB_X21_Y15_N22
\inst10|inst33|cnt[13]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|cnt[13]~2_combout\ = !\inst10|inst33|Add0~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst33|Add0~26_combout\,
	combout => \inst10|inst33|cnt[13]~2_combout\);

-- Location: FF_X21_Y15_N23
\inst10|inst33|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst33|cnt[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33|cnt\(13));

-- Location: LCCOMB_X21_Y15_N6
\inst10|inst33|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Add0~28_combout\ = (\inst10|inst33|cnt\(14) & ((GND) # (!\inst10|inst33|Add0~27\))) # (!\inst10|inst33|cnt\(14) & (\inst10|inst33|Add0~27\ $ (GND)))
-- \inst10|inst33|Add0~29\ = CARRY((\inst10|inst33|cnt\(14)) # (!\inst10|inst33|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst33|cnt\(14),
	datad => VCC,
	cin => \inst10|inst33|Add0~27\,
	combout => \inst10|inst33|Add0~28_combout\,
	cout => \inst10|inst33|Add0~29\);

-- Location: FF_X21_Y15_N7
\inst10|inst33|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst33|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33|cnt\(14));

-- Location: LCCOMB_X21_Y15_N8
\inst10|inst33|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Add0~30_combout\ = (\inst10|inst33|cnt\(15) & (\inst10|inst33|Add0~29\ & VCC)) # (!\inst10|inst33|cnt\(15) & (!\inst10|inst33|Add0~29\))
-- \inst10|inst33|Add0~31\ = CARRY((!\inst10|inst33|cnt\(15) & !\inst10|inst33|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst33|cnt\(15),
	datad => VCC,
	cin => \inst10|inst33|Add0~29\,
	combout => \inst10|inst33|Add0~30_combout\,
	cout => \inst10|inst33|Add0~31\);

-- Location: FF_X21_Y15_N9
\inst10|inst33|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst33|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33|cnt\(15));

-- Location: LCCOMB_X21_Y15_N10
\inst10|inst33|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Add0~32_combout\ = (\inst10|inst33|cnt\(16) & ((GND) # (!\inst10|inst33|Add0~31\))) # (!\inst10|inst33|cnt\(16) & (\inst10|inst33|Add0~31\ $ (GND)))
-- \inst10|inst33|Add0~33\ = CARRY((\inst10|inst33|cnt\(16)) # (!\inst10|inst33|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst33|cnt\(16),
	datad => VCC,
	cin => \inst10|inst33|Add0~31\,
	combout => \inst10|inst33|Add0~32_combout\,
	cout => \inst10|inst33|Add0~33\);

-- Location: FF_X21_Y15_N11
\inst10|inst33|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst33|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33|cnt\(16));

-- Location: LCCOMB_X21_Y15_N12
\inst10|inst33|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Add0~34_combout\ = (\inst10|inst33|cnt\(17) & (!\inst10|inst33|Add0~33\)) # (!\inst10|inst33|cnt\(17) & (\inst10|inst33|Add0~33\ & VCC))
-- \inst10|inst33|Add0~35\ = CARRY((\inst10|inst33|cnt\(17) & !\inst10|inst33|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst33|cnt\(17),
	datad => VCC,
	cin => \inst10|inst33|Add0~33\,
	combout => \inst10|inst33|Add0~34_combout\,
	cout => \inst10|inst33|Add0~35\);

-- Location: LCCOMB_X20_Y15_N6
\inst10|inst33|cnt[17]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|cnt[17]~1_combout\ = !\inst10|inst33|Add0~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst33|Add0~34_combout\,
	combout => \inst10|inst33|cnt[17]~1_combout\);

-- Location: FF_X21_Y15_N5
\inst10|inst33|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst10|inst33|cnt[17]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33|cnt\(17));

-- Location: LCCOMB_X21_Y15_N14
\inst10|inst33|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Add0~36_combout\ = (\inst10|inst33|cnt\(18) & (\inst10|inst33|Add0~35\ $ (GND))) # (!\inst10|inst33|cnt\(18) & ((GND) # (!\inst10|inst33|Add0~35\)))
-- \inst10|inst33|Add0~37\ = CARRY((!\inst10|inst33|Add0~35\) # (!\inst10|inst33|cnt\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst33|cnt\(18),
	datad => VCC,
	cin => \inst10|inst33|Add0~35\,
	combout => \inst10|inst33|Add0~36_combout\,
	cout => \inst10|inst33|Add0~37\);

-- Location: LCCOMB_X22_Y15_N4
\inst10|inst33|cnt[18]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|cnt[18]~0_combout\ = !\inst10|inst33|Add0~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|inst33|Add0~36_combout\,
	combout => \inst10|inst33|cnt[18]~0_combout\);

-- Location: FF_X22_Y15_N5
\inst10|inst33|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst33|cnt[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33|cnt\(18));

-- Location: LCCOMB_X21_Y15_N16
\inst10|inst33|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Add0~38_combout\ = (\inst10|inst33|cnt\(19) & (\inst10|inst33|Add0~37\ & VCC)) # (!\inst10|inst33|cnt\(19) & (!\inst10|inst33|Add0~37\))
-- \inst10|inst33|Add0~39\ = CARRY((!\inst10|inst33|cnt\(19) & !\inst10|inst33|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst33|cnt\(19),
	datad => VCC,
	cin => \inst10|inst33|Add0~37\,
	combout => \inst10|inst33|Add0~38_combout\,
	cout => \inst10|inst33|Add0~39\);

-- Location: FF_X21_Y15_N17
\inst10|inst33|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst33|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33|cnt\(19));

-- Location: LCCOMB_X21_Y15_N18
\inst10|inst33|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Add0~40_combout\ = (\inst10|inst33|cnt\(20) & ((GND) # (!\inst10|inst33|Add0~39\))) # (!\inst10|inst33|cnt\(20) & (\inst10|inst33|Add0~39\ $ (GND)))
-- \inst10|inst33|Add0~41\ = CARRY((\inst10|inst33|cnt\(20)) # (!\inst10|inst33|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst33|cnt\(20),
	datad => VCC,
	cin => \inst10|inst33|Add0~39\,
	combout => \inst10|inst33|Add0~40_combout\,
	cout => \inst10|inst33|Add0~41\);

-- Location: LCCOMB_X22_Y15_N6
\inst10|inst33|cnt[21]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|cnt[21]~11_combout\ = !\inst10|inst33|Add0~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|inst33|Add0~42_combout\,
	combout => \inst10|inst33|cnt[21]~11_combout\);

-- Location: FF_X22_Y15_N7
\inst10|inst33|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst33|cnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33|cnt\(21));

-- Location: LCCOMB_X21_Y15_N20
\inst10|inst33|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Add0~42_combout\ = \inst10|inst33|Add0~41\ $ (\inst10|inst33|cnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst10|inst33|cnt\(21),
	cin => \inst10|inst33|Add0~41\,
	combout => \inst10|inst33|Add0~42_combout\);

-- Location: LCCOMB_X20_Y16_N20
\inst10|inst33|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Equal0~0_combout\ = (!\inst10|inst33|Add0~2_combout\ & (!\inst10|inst33|Add0~4_combout\ & (!\inst10|inst33|Add0~0_combout\ & !\inst10|inst33|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst33|Add0~2_combout\,
	datab => \inst10|inst33|Add0~4_combout\,
	datac => \inst10|inst33|Add0~0_combout\,
	datad => \inst10|inst33|Add0~6_combout\,
	combout => \inst10|inst33|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y16_N6
\inst10|inst33|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Equal0~2_combout\ = (!\inst10|inst33|Add0~22_combout\ & (!\inst10|inst33|Add0~16_combout\ & (!\inst10|inst33|Add0~20_combout\ & !\inst10|inst33|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst33|Add0~22_combout\,
	datab => \inst10|inst33|Add0~16_combout\,
	datac => \inst10|inst33|Add0~20_combout\,
	datad => \inst10|inst33|Add0~18_combout\,
	combout => \inst10|inst33|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y16_N30
\inst10|inst33|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|Equal0~1_combout\ = (!\inst10|inst33|Add0~12_combout\ & (!\inst10|inst33|Add0~8_combout\ & (!\inst10|inst33|Add0~10_combout\ & !\inst10|inst33|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst33|Add0~12_combout\,
	datab => \inst10|inst33|Add0~8_combout\,
	datac => \inst10|inst33|Add0~10_combout\,
	datad => \inst10|inst33|Add0~14_combout\,
	combout => \inst10|inst33|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y15_N30
\inst10|inst33|out_clk_next~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|out_clk_next~0_combout\ = ((\inst10|inst33|Add0~26_combout\) # ((\inst10|inst33|Add0~24_combout\) # (!\inst10|inst33|Equal0~1_combout\))) # (!\inst10|inst33|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst33|Equal0~2_combout\,
	datab => \inst10|inst33|Add0~26_combout\,
	datac => \inst10|inst33|Equal0~1_combout\,
	datad => \inst10|inst33|Add0~24_combout\,
	combout => \inst10|inst33|out_clk_next~0_combout\);

-- Location: LCCOMB_X20_Y15_N4
\inst10|inst33|out_clk_next~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|out_clk_next~1_combout\ = ((\inst10|inst33|Add0~30_combout\) # ((\inst10|inst33|out_clk_next~0_combout\) # (\inst10|inst33|Add0~28_combout\))) # (!\inst10|inst33|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst33|Equal0~0_combout\,
	datab => \inst10|inst33|Add0~30_combout\,
	datac => \inst10|inst33|out_clk_next~0_combout\,
	datad => \inst10|inst33|Add0~28_combout\,
	combout => \inst10|inst33|out_clk_next~1_combout\);

-- Location: LCCOMB_X21_Y15_N28
\inst10|inst33|out_clk_next~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|out_clk_next~2_combout\ = (\inst10|inst33|Add0~32_combout\) # ((\inst10|inst33|out_clk_next~1_combout\) # (\inst10|inst33|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst33|Add0~32_combout\,
	datac => \inst10|inst33|out_clk_next~1_combout\,
	datad => \inst10|inst33|Add0~34_combout\,
	combout => \inst10|inst33|out_clk_next~2_combout\);

-- Location: LCCOMB_X21_Y15_N24
\inst10|inst33|out_clk_next~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|out_clk_next~3_combout\ = (\inst10|inst33|Add0~38_combout\) # ((\inst10|inst33|Add0~36_combout\) # (\inst10|inst33|out_clk_next~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst33|Add0~38_combout\,
	datab => \inst10|inst33|Add0~36_combout\,
	datad => \inst10|inst33|out_clk_next~2_combout\,
	combout => \inst10|inst33|out_clk_next~3_combout\);

-- Location: LCCOMB_X21_Y15_N26
\inst10|inst33|out_clk_next~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst33|out_clk_next~4_combout\ = \inst10|inst33|out_clk_next~q\ $ (((!\inst10|inst33|Add0~40_combout\ & (!\inst10|inst33|Add0~42_combout\ & !\inst10|inst33|out_clk_next~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst33|Add0~40_combout\,
	datab => \inst10|inst33|Add0~42_combout\,
	datac => \inst10|inst33|out_clk_next~q\,
	datad => \inst10|inst33|out_clk_next~3_combout\,
	combout => \inst10|inst33|out_clk_next~4_combout\);

-- Location: FF_X21_Y15_N27
\inst10|inst33|out_clk_next\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst33|out_clk_next~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33|out_clk_next~q\);

-- Location: FF_X21_Y15_N25
\inst10|inst36|inst50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst10|inst33|out_clk_next~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst36|inst50~q\);

-- Location: FF_X22_Y19_N1
\inst10|inst36|inst51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst10|inst36|inst50~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst36|inst51~q\);

-- Location: FF_X22_Y18_N5
\inst8|inst|mouse_data_int_reg52|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|inst|inst4|inst31|data\(2),
	sload => VCC,
	ena => \inst8|inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_int_reg52|data\(2));

-- Location: FF_X22_Y18_N19
\inst8|inst|mouse_data_int_reg|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|inst|mouse_data_int_reg52|data\(2),
	sload => VCC,
	ena => \inst8|inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_int_reg|data\(2));

-- Location: LCCOMB_X22_Y18_N12
\inst8|inst|mouse_data_int_reg53|data[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_int_reg53|data[2]~feeder_combout\ = \inst8|inst|mouse_data_int_reg|data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|mouse_data_int_reg|data\(2),
	combout => \inst8|inst|mouse_data_int_reg53|data[2]~feeder_combout\);

-- Location: FF_X22_Y18_N13
\inst8|inst|mouse_data_int_reg53|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_int_reg53|data[2]~feeder_combout\,
	ena => \inst8|inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_int_reg53|data\(2));

-- Location: LCCOMB_X22_Y18_N0
\inst8|inst|mouse_data_reg|data[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_reg|data[18]~feeder_combout\ = \inst8|inst|mouse_data_int_reg53|data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|mouse_data_int_reg53|data\(2),
	combout => \inst8|inst|mouse_data_reg|data[18]~feeder_combout\);

-- Location: FF_X22_Y18_N1
\inst8|inst|mouse_data_reg|data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_reg|data[18]~feeder_combout\,
	ena => \inst8|inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_reg|data\(18));

-- Location: LCCOMB_X22_Y19_N0
\inst10|inst1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst1~0_combout\ = (\inst10|inst36|inst50~q\ & (!\inst10|inst36|inst51~q\ & \inst8|inst|mouse_data_reg|data\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst36|inst50~q\,
	datac => \inst10|inst36|inst51~q\,
	datad => \inst8|inst|mouse_data_reg|data\(18),
	combout => \inst10|inst1~0_combout\);

-- Location: LCCOMB_X22_Y19_N24
\inst10|Colour|data[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Colour|data[1]~1_combout\ = (\inst10|Colour|data\(0) & ((\inst10|inst1~0_combout\ & ((\inst10|Colour|data\(2)) # (!\inst10|Colour|data\(1)))) # (!\inst10|inst1~0_combout\ & ((\inst10|Colour|data\(1)))))) # (!\inst10|Colour|data\(0) & 
-- (((\inst10|Colour|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Colour|data\(0),
	datab => \inst10|inst1~0_combout\,
	datac => \inst10|Colour|data\(2),
	datad => \inst10|Colour|data\(1),
	combout => \inst10|Colour|data[1]~1_combout\);

-- Location: LCCOMB_X22_Y19_N6
\inst10|Colour|data[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Colour|data[1]~2_combout\ = (\inst10|Colour|data[1]~1_combout\ & ((!\inst8|inst|mouse_data_reg|data\(18)) # (!\inst10|inst32~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Colour|data[1]~1_combout\,
	datac => \inst10|inst32~1_combout\,
	datad => \inst8|inst|mouse_data_reg|data\(18),
	combout => \inst10|Colour|data[1]~2_combout\);

-- Location: FF_X22_Y19_N7
\inst10|Colour|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Colour|data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Colour|data\(1));

-- Location: LCCOMB_X22_Y19_N10
\inst10|inst32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst32~0_combout\ = (\inst10|Colour|data\(0) & \inst10|Colour|data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Colour|data\(0),
	datad => \inst10|Colour|data\(1),
	combout => \inst10|inst32~0_combout\);

-- Location: LCCOMB_X22_Y19_N4
\inst10|Colour|data[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Colour|data[2]~0_combout\ = (\inst10|inst32~0_combout\ & ((\inst10|Colour|data\(2) & ((!\inst8|inst|mouse_data_reg|data\(18)))) # (!\inst10|Colour|data\(2) & (\inst10|inst1~0_combout\)))) # (!\inst10|inst32~0_combout\ & 
-- (((\inst10|Colour|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst32~0_combout\,
	datab => \inst10|inst1~0_combout\,
	datac => \inst10|Colour|data\(2),
	datad => \inst8|inst|mouse_data_reg|data\(18),
	combout => \inst10|Colour|data[2]~0_combout\);

-- Location: FF_X22_Y19_N5
\inst10|Colour|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Colour|data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Colour|data\(2));

-- Location: LCCOMB_X22_Y19_N26
\inst10|inst32~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst32~1_combout\ = (\inst10|Colour|data\(0) & (\inst10|Colour|data\(2) & \inst10|Colour|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Colour|data\(0),
	datac => \inst10|Colour|data\(2),
	datad => \inst10|Colour|data\(1),
	combout => \inst10|inst32~1_combout\);

-- Location: LCCOMB_X22_Y19_N12
\inst10|Colour|data[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Colour|data[0]~3_combout\ = (\inst10|inst32~1_combout\ & (((\inst10|Colour|data\(0) & !\inst8|inst|mouse_data_reg|data\(18))))) # (!\inst10|inst32~1_combout\ & (\inst10|inst1~0_combout\ $ ((\inst10|Colour|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst32~1_combout\,
	datab => \inst10|inst1~0_combout\,
	datac => \inst10|Colour|data\(0),
	datad => \inst8|inst|mouse_data_reg|data\(18),
	combout => \inst10|Colour|data[0]~3_combout\);

-- Location: FF_X22_Y19_N13
\inst10|Colour|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Colour|data[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Colour|data\(0));

-- Location: LCCOMB_X22_Y19_N22
\inst10|inst27|inst11|Y[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst27|inst11|Y[3]~0_combout\ = (\inst10|Colour|data\(0) & (!\inst10|Colour|data\(2) & !\inst10|Colour|data\(1))) # (!\inst10|Colour|data\(0) & (\inst10|Colour|data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Colour|data\(0),
	datac => \inst10|Colour|data\(2),
	datad => \inst10|Colour|data\(1),
	combout => \inst10|inst27|inst11|Y[3]~0_combout\);

-- Location: LCCOMB_X24_Y21_N28
\inst12|inst255|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst255|Equal0~0_combout\ = (!\inst|inst1|data\(1) & (!\inst|inst1|data\(2) & !\inst|inst1|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(1),
	datab => \inst|inst1|data\(2),
	datad => \inst|inst1|data\(3),
	combout => \inst12|inst255|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y22_N18
\inst12|inst255|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst255|Equal0~2_combout\ = (\inst|inst1|data\(0) & (\inst|inst1|data\(5) & (\inst12|inst255|Equal0~0_combout\ & \inst|inst1|data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(0),
	datab => \inst|inst1|data\(5),
	datac => \inst12|inst255|Equal0~0_combout\,
	datad => \inst|inst1|data\(4),
	combout => \inst12|inst255|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y21_N10
\inst12|inst255|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst255|Equal0~1_combout\ = (!\inst|inst1|data\(6) & (!\inst|inst1|data\(8) & (!\inst|inst1|data\(7) & !\inst|inst1|data\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(6),
	datab => \inst|inst1|data\(8),
	datac => \inst|inst1|data\(7),
	datad => \inst|inst1|data\(9),
	combout => \inst12|inst255|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y21_N28
\inst12|inst10|inst|data_next[13]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst|data_next[13]~24_combout\ = (\inst12|inst10|inst14|Add0~20_combout\ & (!\inst12|inst37|Equal0~2_combout\ & ((!\inst12|inst255|Equal0~1_combout\) # (!\inst12|inst255|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst255|Equal0~2_combout\,
	datab => \inst12|inst255|Equal0~1_combout\,
	datac => \inst12|inst10|inst14|Add0~20_combout\,
	datad => \inst12|inst37|Equal0~2_combout\,
	combout => \inst12|inst10|inst|data_next[13]~24_combout\);

-- Location: FF_X22_Y21_N29
\inst12|inst10|inst|data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst10|inst|data_next[13]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst10|inst|data\(13));

-- Location: LCCOMB_X22_Y21_N2
\inst12|inst10|inst14|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst14|Add0~0_combout\ = (\inst12|inst10|inst15~combout\ & (\inst12|inst10|inst|data\(3) & VCC)) # (!\inst12|inst10|inst15~combout\ & (\inst12|inst10|inst|data\(3) $ (VCC)))
-- \inst12|inst10|inst14|Add0~1\ = CARRY((!\inst12|inst10|inst15~combout\ & \inst12|inst10|inst|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst15~combout\,
	datab => \inst12|inst10|inst|data\(3),
	datad => VCC,
	combout => \inst12|inst10|inst14|Add0~0_combout\,
	cout => \inst12|inst10|inst14|Add0~1\);

-- Location: LCCOMB_X23_Y21_N8
\inst12|inst10|inst|data_next[3]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst|data_next[3]~33_combout\ = (\inst12|inst10|inst14|Add0~0_combout\ & (!\inst12|inst37|Equal0~2_combout\ & ((!\inst12|inst255|Equal0~2_combout\) # (!\inst12|inst255|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst255|Equal0~1_combout\,
	datab => \inst12|inst10|inst14|Add0~0_combout\,
	datac => \inst12|inst37|Equal0~2_combout\,
	datad => \inst12|inst255|Equal0~2_combout\,
	combout => \inst12|inst10|inst|data_next[3]~33_combout\);

-- Location: FF_X23_Y21_N9
\inst12|inst10|inst|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst10|inst|data_next[3]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst10|inst|data\(3));

-- Location: LCCOMB_X22_Y21_N4
\inst12|inst10|inst14|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst14|Add0~2_combout\ = (\inst12|inst10|inst|data\(4) & (!\inst12|inst10|inst14|Add0~1\)) # (!\inst12|inst10|inst|data\(4) & ((\inst12|inst10|inst14|Add0~1\) # (GND)))
-- \inst12|inst10|inst14|Add0~3\ = CARRY((!\inst12|inst10|inst14|Add0~1\) # (!\inst12|inst10|inst|data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst10|inst|data\(4),
	datad => VCC,
	cin => \inst12|inst10|inst14|Add0~1\,
	combout => \inst12|inst10|inst14|Add0~2_combout\,
	cout => \inst12|inst10|inst14|Add0~3\);

-- Location: LCCOMB_X22_Y21_N0
\inst12|inst10|inst|data_next[4]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst|data_next[4]~32_combout\ = (\inst12|inst10|inst14|Add0~2_combout\ & (!\inst12|inst37|Equal0~2_combout\ & ((!\inst12|inst255|Equal0~1_combout\) # (!\inst12|inst255|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst255|Equal0~2_combout\,
	datab => \inst12|inst255|Equal0~1_combout\,
	datac => \inst12|inst10|inst14|Add0~2_combout\,
	datad => \inst12|inst37|Equal0~2_combout\,
	combout => \inst12|inst10|inst|data_next[4]~32_combout\);

-- Location: FF_X22_Y21_N1
\inst12|inst10|inst|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst10|inst|data_next[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst10|inst|data\(4));

-- Location: LCCOMB_X22_Y21_N6
\inst12|inst10|inst14|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst14|Add0~4_combout\ = (\inst12|inst10|inst|data\(5) & (\inst12|inst10|inst14|Add0~3\ $ (GND))) # (!\inst12|inst10|inst|data\(5) & (!\inst12|inst10|inst14|Add0~3\ & VCC))
-- \inst12|inst10|inst14|Add0~5\ = CARRY((\inst12|inst10|inst|data\(5) & !\inst12|inst10|inst14|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst|data\(5),
	datad => VCC,
	cin => \inst12|inst10|inst14|Add0~3\,
	combout => \inst12|inst10|inst14|Add0~4_combout\,
	cout => \inst12|inst10|inst14|Add0~5\);

-- Location: LCCOMB_X23_Y21_N30
\inst12|inst10|inst|data_next[5]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst|data_next[5]~31_combout\ = (\inst12|inst10|inst14|Add0~4_combout\ & (!\inst12|inst37|Equal0~2_combout\ & ((!\inst12|inst255|Equal0~1_combout\) # (!\inst12|inst255|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst255|Equal0~2_combout\,
	datab => \inst12|inst10|inst14|Add0~4_combout\,
	datac => \inst12|inst37|Equal0~2_combout\,
	datad => \inst12|inst255|Equal0~1_combout\,
	combout => \inst12|inst10|inst|data_next[5]~31_combout\);

-- Location: FF_X23_Y21_N31
\inst12|inst10|inst|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst10|inst|data_next[5]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst10|inst|data\(5));

-- Location: LCCOMB_X24_Y20_N4
\inst12|inst10|inst4|data[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst4|data[3]~10_cout\ = CARRY((\inst12|inst10|inst|data\(3) & \inst12|inst10|inst|data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst|data\(3),
	datab => \inst12|inst10|inst|data\(4),
	datad => VCC,
	cout => \inst12|inst10|inst4|data[3]~10_cout\);

-- Location: LCCOMB_X24_Y20_N6
\inst12|inst10|inst4|data[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst4|data[3]~12_cout\ = CARRY((!\inst12|inst10|inst4|data[3]~10_cout\) # (!\inst12|inst10|inst|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst10|inst|data\(5),
	datad => VCC,
	cin => \inst12|inst10|inst4|data[3]~10_cout\,
	cout => \inst12|inst10|inst4|data[3]~12_cout\);

-- Location: LCCOMB_X24_Y20_N8
\inst12|inst10|inst4|data[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst4|data[3]~13_combout\ = (\inst12|inst10|inst4|data\(3) & (\inst12|inst10|inst4|data[3]~12_cout\ $ (GND))) # (!\inst12|inst10|inst4|data\(3) & (!\inst12|inst10|inst4|data[3]~12_cout\ & VCC))
-- \inst12|inst10|inst4|data[3]~14\ = CARRY((\inst12|inst10|inst4|data\(3) & !\inst12|inst10|inst4|data[3]~12_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst10|inst4|data\(3),
	datad => VCC,
	cin => \inst12|inst10|inst4|data[3]~12_cout\,
	combout => \inst12|inst10|inst4|data[3]~13_combout\,
	cout => \inst12|inst10|inst4|data[3]~14\);

-- Location: LCCOMB_X24_Y20_N2
\inst12|inst43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst43~combout\ = (\inst12|inst37|Equal0~2_combout\) # ((\inst12|inst255|Equal0~2_combout\ & \inst12|inst255|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst255|Equal0~2_combout\,
	datac => \inst12|inst37|Equal0~2_combout\,
	datad => \inst12|inst255|Equal0~1_combout\,
	combout => \inst12|inst43~combout\);

-- Location: LCCOMB_X24_Y20_N30
\inst12|inst10|inst4|data[3]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst4|data[3]~27_combout\ = ((\inst12|inst37|Equal0~2_combout\) # ((\inst12|inst255|Equal0~2_combout\ & \inst12|inst255|Equal0~1_combout\))) # (!\inst12|inst10|inst15~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst15~combout\,
	datab => \inst12|inst255|Equal0~2_combout\,
	datac => \inst12|inst37|Equal0~2_combout\,
	datad => \inst12|inst255|Equal0~1_combout\,
	combout => \inst12|inst10|inst4|data[3]~27_combout\);

-- Location: FF_X24_Y20_N9
\inst12|inst10|inst4|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst10|inst4|data[3]~13_combout\,
	sclr => \inst12|inst43~combout\,
	ena => \inst12|inst10|inst4|data[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst10|inst4|data\(3));

-- Location: LCCOMB_X24_Y20_N10
\inst12|inst10|inst4|data[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst4|data[4]~15_combout\ = (\inst12|inst10|inst4|data\(4) & (!\inst12|inst10|inst4|data[3]~14\)) # (!\inst12|inst10|inst4|data\(4) & ((\inst12|inst10|inst4|data[3]~14\) # (GND)))
-- \inst12|inst10|inst4|data[4]~16\ = CARRY((!\inst12|inst10|inst4|data[3]~14\) # (!\inst12|inst10|inst4|data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst4|data\(4),
	datad => VCC,
	cin => \inst12|inst10|inst4|data[3]~14\,
	combout => \inst12|inst10|inst4|data[4]~15_combout\,
	cout => \inst12|inst10|inst4|data[4]~16\);

-- Location: FF_X24_Y20_N11
\inst12|inst10|inst4|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst10|inst4|data[4]~15_combout\,
	sclr => \inst12|inst43~combout\,
	ena => \inst12|inst10|inst4|data[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst10|inst4|data\(4));

-- Location: LCCOMB_X24_Y20_N12
\inst12|inst10|inst4|data[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst4|data[5]~17_combout\ = (\inst12|inst10|inst4|data\(5) & (\inst12|inst10|inst4|data[4]~16\ $ (GND))) # (!\inst12|inst10|inst4|data\(5) & (!\inst12|inst10|inst4|data[4]~16\ & VCC))
-- \inst12|inst10|inst4|data[5]~18\ = CARRY((\inst12|inst10|inst4|data\(5) & !\inst12|inst10|inst4|data[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst4|data\(5),
	datad => VCC,
	cin => \inst12|inst10|inst4|data[4]~16\,
	combout => \inst12|inst10|inst4|data[5]~17_combout\,
	cout => \inst12|inst10|inst4|data[5]~18\);

-- Location: FF_X24_Y20_N13
\inst12|inst10|inst4|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst10|inst4|data[5]~17_combout\,
	sclr => \inst12|inst43~combout\,
	ena => \inst12|inst10|inst4|data[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst10|inst4|data\(5));

-- Location: LCCOMB_X24_Y20_N14
\inst12|inst10|inst4|data[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst4|data[6]~19_combout\ = (\inst12|inst10|inst4|data\(6) & (!\inst12|inst10|inst4|data[5]~18\)) # (!\inst12|inst10|inst4|data\(6) & ((\inst12|inst10|inst4|data[5]~18\) # (GND)))
-- \inst12|inst10|inst4|data[6]~20\ = CARRY((!\inst12|inst10|inst4|data[5]~18\) # (!\inst12|inst10|inst4|data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst10|inst4|data\(6),
	datad => VCC,
	cin => \inst12|inst10|inst4|data[5]~18\,
	combout => \inst12|inst10|inst4|data[6]~19_combout\,
	cout => \inst12|inst10|inst4|data[6]~20\);

-- Location: FF_X24_Y20_N15
\inst12|inst10|inst4|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst10|inst4|data[6]~19_combout\,
	sclr => \inst12|inst43~combout\,
	ena => \inst12|inst10|inst4|data[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst10|inst4|data\(6));

-- Location: LCCOMB_X24_Y20_N16
\inst12|inst10|inst4|data[7]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst4|data[7]~21_combout\ = (\inst12|inst10|inst4|data\(7) & (\inst12|inst10|inst4|data[6]~20\ $ (GND))) # (!\inst12|inst10|inst4|data\(7) & (!\inst12|inst10|inst4|data[6]~20\ & VCC))
-- \inst12|inst10|inst4|data[7]~22\ = CARRY((\inst12|inst10|inst4|data\(7) & !\inst12|inst10|inst4|data[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst10|inst4|data\(7),
	datad => VCC,
	cin => \inst12|inst10|inst4|data[6]~20\,
	combout => \inst12|inst10|inst4|data[7]~21_combout\,
	cout => \inst12|inst10|inst4|data[7]~22\);

-- Location: FF_X24_Y20_N17
\inst12|inst10|inst4|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst10|inst4|data[7]~21_combout\,
	sclr => \inst12|inst43~combout\,
	ena => \inst12|inst10|inst4|data[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst10|inst4|data\(7));

-- Location: LCCOMB_X24_Y20_N18
\inst12|inst10|inst4|data[8]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst4|data[8]~23_combout\ = (\inst12|inst10|inst4|data\(8) & (!\inst12|inst10|inst4|data[7]~22\)) # (!\inst12|inst10|inst4|data\(8) & ((\inst12|inst10|inst4|data[7]~22\) # (GND)))
-- \inst12|inst10|inst4|data[8]~24\ = CARRY((!\inst12|inst10|inst4|data[7]~22\) # (!\inst12|inst10|inst4|data\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst10|inst4|data\(8),
	datad => VCC,
	cin => \inst12|inst10|inst4|data[7]~22\,
	combout => \inst12|inst10|inst4|data[8]~23_combout\,
	cout => \inst12|inst10|inst4|data[8]~24\);

-- Location: FF_X24_Y20_N19
\inst12|inst10|inst4|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst10|inst4|data[8]~23_combout\,
	sclr => \inst12|inst43~combout\,
	ena => \inst12|inst10|inst4|data[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst10|inst4|data\(8));

-- Location: LCCOMB_X24_Y20_N20
\inst12|inst10|inst4|data[9]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst4|data[9]~25_combout\ = \inst12|inst10|inst4|data[8]~24\ $ (!\inst12|inst10|inst4|data\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst12|inst10|inst4|data\(9),
	cin => \inst12|inst10|inst4|data[8]~24\,
	combout => \inst12|inst10|inst4|data[9]~25_combout\);

-- Location: FF_X24_Y20_N21
\inst12|inst10|inst4|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst10|inst4|data[9]~25_combout\,
	sclr => \inst12|inst43~combout\,
	ena => \inst12|inst10|inst4|data[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst10|inst4|data\(9));

-- Location: LCCOMB_X24_Y20_N0
\inst12|inst10|inst15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst15~0_combout\ = (\inst12|inst10|inst4|data\(9)) # (\inst12|inst10|inst4|data\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst10|inst4|data\(9),
	datad => \inst12|inst10|inst4|data\(8),
	combout => \inst12|inst10|inst15~0_combout\);

-- Location: LCCOMB_X23_Y21_N10
\inst|inst19|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst19|LessThan1~1_combout\ = (!\inst|inst1|data\(8) & (!\inst|inst1|data\(7) & ((!\inst|inst1|data\(3)) # (!\inst|inst1|data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(4),
	datab => \inst|inst1|data\(8),
	datac => \inst|inst1|data\(3),
	datad => \inst|inst1|data\(7),
	combout => \inst|inst19|LessThan1~1_combout\);

-- Location: LCCOMB_X22_Y22_N10
\inst12|inst8|Y[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst8|Y[2]~0_combout\ = (!\inst|inst|data\(6) & !\inst|inst|data\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|data\(6),
	datad => \inst|inst|data\(5),
	combout => \inst12|inst8|Y[2]~0_combout\);

-- Location: LCCOMB_X23_Y21_N4
\inst|inst20|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst20|LessThan1~0_combout\ = (((\inst12|inst8|Y[2]~0_combout\ & !\inst|inst|data\(7))) # (!\inst|inst|data\(8))) # (!\inst|inst|data\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(9),
	datab => \inst12|inst8|Y[2]~0_combout\,
	datac => \inst|inst|data\(8),
	datad => \inst|inst|data\(7),
	combout => \inst|inst20|LessThan1~0_combout\);

-- Location: LCCOMB_X26_Y21_N12
\inst|inst19|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst19|LessThan1~0_combout\ = ((!\inst|inst1|data\(6) & (!\inst|inst1|data\(8) & !\inst|inst1|data\(7)))) # (!\inst|inst1|data\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(6),
	datab => \inst|inst1|data\(8),
	datac => \inst|inst1|data\(7),
	datad => \inst|inst1|data\(9),
	combout => \inst|inst19|LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y21_N0
\inst|inst16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst16~0_combout\ = (\inst|inst20|LessThan1~0_combout\ & ((\inst|inst19|LessThan1~0_combout\) # ((\inst|inst19|LessThan1~1_combout\ & !\inst|inst1|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst19|LessThan1~1_combout\,
	datab => \inst|inst1|data\(5),
	datac => \inst|inst20|LessThan1~0_combout\,
	datad => \inst|inst19|LessThan1~0_combout\,
	combout => \inst|inst16~0_combout\);

-- Location: LCCOMB_X24_Y21_N10
\inst12|inst1|C[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst1|C[1]~1_cout\ = CARRY(\inst|inst1|data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(1),
	datad => VCC,
	cout => \inst12|inst1|C[1]~1_cout\);

-- Location: LCCOMB_X24_Y21_N12
\inst12|inst1|C[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst1|C[2]~2_combout\ = (\inst|inst1|data\(2) & (\inst12|inst1|C[1]~1_cout\ & VCC)) # (!\inst|inst1|data\(2) & (!\inst12|inst1|C[1]~1_cout\))
-- \inst12|inst1|C[2]~3\ = CARRY((!\inst|inst1|data\(2) & !\inst12|inst1|C[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|data\(2),
	datad => VCC,
	cin => \inst12|inst1|C[1]~1_cout\,
	combout => \inst12|inst1|C[2]~2_combout\,
	cout => \inst12|inst1|C[2]~3\);

-- Location: LCCOMB_X24_Y21_N14
\inst12|inst1|C[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst1|C[3]~4_combout\ = (\inst|inst1|data\(3) & ((GND) # (!\inst12|inst1|C[2]~3\))) # (!\inst|inst1|data\(3) & (\inst12|inst1|C[2]~3\ $ (GND)))
-- \inst12|inst1|C[3]~5\ = CARRY((\inst|inst1|data\(3)) # (!\inst12|inst1|C[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(3),
	datad => VCC,
	cin => \inst12|inst1|C[2]~3\,
	combout => \inst12|inst1|C[3]~4_combout\,
	cout => \inst12|inst1|C[3]~5\);

-- Location: LCCOMB_X24_Y21_N16
\inst12|inst1|C[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst1|C[4]~6_combout\ = (\inst|inst1|data\(4) & (!\inst12|inst1|C[3]~5\)) # (!\inst|inst1|data\(4) & ((\inst12|inst1|C[3]~5\) # (GND)))
-- \inst12|inst1|C[4]~7\ = CARRY((!\inst12|inst1|C[3]~5\) # (!\inst|inst1|data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|data\(4),
	datad => VCC,
	cin => \inst12|inst1|C[3]~5\,
	combout => \inst12|inst1|C[4]~6_combout\,
	cout => \inst12|inst1|C[4]~7\);

-- Location: LCCOMB_X24_Y21_N18
\inst12|inst1|C[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst1|C[5]~8_combout\ = (\inst|inst1|data\(5) & (\inst12|inst1|C[4]~7\ $ (GND))) # (!\inst|inst1|data\(5) & (!\inst12|inst1|C[4]~7\ & VCC))
-- \inst12|inst1|C[5]~9\ = CARRY((\inst|inst1|data\(5) & !\inst12|inst1|C[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|data\(5),
	datad => VCC,
	cin => \inst12|inst1|C[4]~7\,
	combout => \inst12|inst1|C[5]~8_combout\,
	cout => \inst12|inst1|C[5]~9\);

-- Location: LCCOMB_X24_Y21_N20
\inst12|inst1|C[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst1|C[6]~10_combout\ = (\inst|inst1|data\(6) & (\inst12|inst1|C[5]~9\ & VCC)) # (!\inst|inst1|data\(6) & (!\inst12|inst1|C[5]~9\))
-- \inst12|inst1|C[6]~11\ = CARRY((!\inst|inst1|data\(6) & !\inst12|inst1|C[5]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|data\(6),
	datad => VCC,
	cin => \inst12|inst1|C[5]~9\,
	combout => \inst12|inst1|C[6]~10_combout\,
	cout => \inst12|inst1|C[6]~11\);

-- Location: LCCOMB_X24_Y21_N22
\inst12|inst1|C[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst1|C[7]~12_combout\ = (\inst|inst1|data\(7) & ((GND) # (!\inst12|inst1|C[6]~11\))) # (!\inst|inst1|data\(7) & (\inst12|inst1|C[6]~11\ $ (GND)))
-- \inst12|inst1|C[7]~13\ = CARRY((\inst|inst1|data\(7)) # (!\inst12|inst1|C[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(7),
	datad => VCC,
	cin => \inst12|inst1|C[6]~11\,
	combout => \inst12|inst1|C[7]~12_combout\,
	cout => \inst12|inst1|C[7]~13\);

-- Location: LCCOMB_X24_Y21_N24
\inst12|inst1|C[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst1|C[8]~14_combout\ = (\inst|inst1|data\(8) & (\inst12|inst1|C[7]~13\ & VCC)) # (!\inst|inst1|data\(8) & (!\inst12|inst1|C[7]~13\))
-- \inst12|inst1|C[8]~15\ = CARRY((!\inst|inst1|data\(8) & !\inst12|inst1|C[7]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|data\(8),
	datad => VCC,
	cin => \inst12|inst1|C[7]~13\,
	combout => \inst12|inst1|C[8]~14_combout\,
	cout => \inst12|inst1|C[8]~15\);

-- Location: LCCOMB_X24_Y21_N26
\inst12|inst1|C[9]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst1|C[9]~16_combout\ = \inst12|inst1|C[8]~15\ $ (\inst|inst1|data\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst1|data\(9),
	cin => \inst12|inst1|C[8]~15\,
	combout => \inst12|inst1|C[9]~16_combout\);

-- Location: LCCOMB_X23_Y21_N12
\inst12|inst10|inst5|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst5|LessThan1~1_cout\ = CARRY((\inst12|inst1|C[2]~2_combout\ & !\inst12|inst10|inst|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst1|C[2]~2_combout\,
	datab => \inst12|inst10|inst|data\(3),
	datad => VCC,
	cout => \inst12|inst10|inst5|LessThan1~1_cout\);

-- Location: LCCOMB_X23_Y21_N14
\inst12|inst10|inst5|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst5|LessThan1~3_cout\ = CARRY((\inst12|inst10|inst|data\(4) & ((!\inst12|inst10|inst5|LessThan1~1_cout\) # (!\inst12|inst1|C[3]~4_combout\))) # (!\inst12|inst10|inst|data\(4) & (!\inst12|inst1|C[3]~4_combout\ & 
-- !\inst12|inst10|inst5|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst|data\(4),
	datab => \inst12|inst1|C[3]~4_combout\,
	datad => VCC,
	cin => \inst12|inst10|inst5|LessThan1~1_cout\,
	cout => \inst12|inst10|inst5|LessThan1~3_cout\);

-- Location: LCCOMB_X23_Y21_N16
\inst12|inst10|inst5|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst5|LessThan1~5_cout\ = CARRY((\inst12|inst10|inst|data\(5) & (\inst12|inst1|C[4]~6_combout\ & !\inst12|inst10|inst5|LessThan1~3_cout\)) # (!\inst12|inst10|inst|data\(5) & ((\inst12|inst1|C[4]~6_combout\) # 
-- (!\inst12|inst10|inst5|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst|data\(5),
	datab => \inst12|inst1|C[4]~6_combout\,
	datad => VCC,
	cin => \inst12|inst10|inst5|LessThan1~3_cout\,
	cout => \inst12|inst10|inst5|LessThan1~5_cout\);

-- Location: LCCOMB_X23_Y21_N18
\inst12|inst10|inst5|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst5|LessThan1~7_cout\ = CARRY((\inst12|inst10|inst4|data\(3) & ((!\inst12|inst10|inst5|LessThan1~5_cout\) # (!\inst12|inst1|C[5]~8_combout\))) # (!\inst12|inst10|inst4|data\(3) & (!\inst12|inst1|C[5]~8_combout\ & 
-- !\inst12|inst10|inst5|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst4|data\(3),
	datab => \inst12|inst1|C[5]~8_combout\,
	datad => VCC,
	cin => \inst12|inst10|inst5|LessThan1~5_cout\,
	cout => \inst12|inst10|inst5|LessThan1~7_cout\);

-- Location: LCCOMB_X23_Y21_N20
\inst12|inst10|inst5|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst5|LessThan1~9_cout\ = CARRY((\inst12|inst1|C[6]~10_combout\ & ((!\inst12|inst10|inst5|LessThan1~7_cout\) # (!\inst12|inst10|inst4|data\(4)))) # (!\inst12|inst1|C[6]~10_combout\ & (!\inst12|inst10|inst4|data\(4) & 
-- !\inst12|inst10|inst5|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst1|C[6]~10_combout\,
	datab => \inst12|inst10|inst4|data\(4),
	datad => VCC,
	cin => \inst12|inst10|inst5|LessThan1~7_cout\,
	cout => \inst12|inst10|inst5|LessThan1~9_cout\);

-- Location: LCCOMB_X23_Y21_N22
\inst12|inst10|inst5|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst5|LessThan1~11_cout\ = CARRY((\inst12|inst10|inst4|data\(5) & ((!\inst12|inst10|inst5|LessThan1~9_cout\) # (!\inst12|inst1|C[7]~12_combout\))) # (!\inst12|inst10|inst4|data\(5) & (!\inst12|inst1|C[7]~12_combout\ & 
-- !\inst12|inst10|inst5|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst4|data\(5),
	datab => \inst12|inst1|C[7]~12_combout\,
	datad => VCC,
	cin => \inst12|inst10|inst5|LessThan1~9_cout\,
	cout => \inst12|inst10|inst5|LessThan1~11_cout\);

-- Location: LCCOMB_X23_Y21_N24
\inst12|inst10|inst5|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst5|LessThan1~13_cout\ = CARRY((\inst12|inst10|inst4|data\(6) & (\inst12|inst1|C[8]~14_combout\ & !\inst12|inst10|inst5|LessThan1~11_cout\)) # (!\inst12|inst10|inst4|data\(6) & ((\inst12|inst1|C[8]~14_combout\) # 
-- (!\inst12|inst10|inst5|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst4|data\(6),
	datab => \inst12|inst1|C[8]~14_combout\,
	datad => VCC,
	cin => \inst12|inst10|inst5|LessThan1~11_cout\,
	cout => \inst12|inst10|inst5|LessThan1~13_cout\);

-- Location: LCCOMB_X23_Y21_N26
\inst12|inst10|inst5|LessThan1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst5|LessThan1~14_combout\ = (\inst12|inst10|inst4|data\(7) & (\inst12|inst10|inst5|LessThan1~13_cout\ & \inst12|inst1|C[9]~16_combout\)) # (!\inst12|inst10|inst4|data\(7) & ((\inst12|inst10|inst5|LessThan1~13_cout\) # 
-- (\inst12|inst1|C[9]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst4|data\(7),
	datad => \inst12|inst1|C[9]~16_combout\,
	cin => \inst12|inst10|inst5|LessThan1~13_cout\,
	combout => \inst12|inst10|inst5|LessThan1~14_combout\);

-- Location: LCCOMB_X23_Y21_N6
\inst1|inst4|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst4|LessThan0~0_combout\ = ((\inst|inst1|data\(5) & (!\inst12|inst255|Equal0~0_combout\ & \inst|inst1|data\(4)))) # (!\inst12|inst255|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst255|Equal0~1_combout\,
	datab => \inst|inst1|data\(5),
	datac => \inst12|inst255|Equal0~0_combout\,
	datad => \inst|inst1|data\(4),
	combout => \inst1|inst4|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y21_N2
\inst12|inst10|inst15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst15~combout\ = (\inst12|inst10|inst15~0_combout\) # (((!\inst1|inst4|LessThan0~0_combout\) # (!\inst12|inst10|inst5|LessThan1~14_combout\)) # (!\inst|inst16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst15~0_combout\,
	datab => \inst|inst16~0_combout\,
	datac => \inst12|inst10|inst5|LessThan1~14_combout\,
	datad => \inst1|inst4|LessThan0~0_combout\,
	combout => \inst12|inst10|inst15~combout\);

-- Location: LCCOMB_X22_Y21_N8
\inst12|inst10|inst14|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst14|Add0~6_combout\ = (\inst12|inst10|inst15~combout\ & ((\inst12|inst10|inst|data\(6) & (!\inst12|inst10|inst14|Add0~5\)) # (!\inst12|inst10|inst|data\(6) & ((\inst12|inst10|inst14|Add0~5\) # (GND))))) # (!\inst12|inst10|inst15~combout\ 
-- & ((\inst12|inst10|inst|data\(6) & (\inst12|inst10|inst14|Add0~5\ & VCC)) # (!\inst12|inst10|inst|data\(6) & (!\inst12|inst10|inst14|Add0~5\))))
-- \inst12|inst10|inst14|Add0~7\ = CARRY((\inst12|inst10|inst15~combout\ & ((!\inst12|inst10|inst14|Add0~5\) # (!\inst12|inst10|inst|data\(6)))) # (!\inst12|inst10|inst15~combout\ & (!\inst12|inst10|inst|data\(6) & !\inst12|inst10|inst14|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst15~combout\,
	datab => \inst12|inst10|inst|data\(6),
	datad => VCC,
	cin => \inst12|inst10|inst14|Add0~5\,
	combout => \inst12|inst10|inst14|Add0~6_combout\,
	cout => \inst12|inst10|inst14|Add0~7\);

-- Location: LCCOMB_X26_Y21_N14
\inst12|inst10|inst|data_next[6]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst|data_next[6]~34_combout\ = (\inst12|inst10|inst14|Add0~6_combout\ & (!\inst12|inst37|Equal0~2_combout\ & ((!\inst12|inst255|Equal0~2_combout\) # (!\inst12|inst255|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst255|Equal0~1_combout\,
	datab => \inst12|inst10|inst14|Add0~6_combout\,
	datac => \inst12|inst37|Equal0~2_combout\,
	datad => \inst12|inst255|Equal0~2_combout\,
	combout => \inst12|inst10|inst|data_next[6]~34_combout\);

-- Location: FF_X26_Y21_N15
\inst12|inst10|inst|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst10|inst|data_next[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst10|inst|data\(6));

-- Location: LCCOMB_X22_Y21_N10
\inst12|inst10|inst14|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst14|Add0~8_combout\ = ((\inst12|inst10|inst15~combout\ $ (\inst12|inst10|inst|data\(7) $ (\inst12|inst10|inst14|Add0~7\)))) # (GND)
-- \inst12|inst10|inst14|Add0~9\ = CARRY((\inst12|inst10|inst15~combout\ & (\inst12|inst10|inst|data\(7) & !\inst12|inst10|inst14|Add0~7\)) # (!\inst12|inst10|inst15~combout\ & ((\inst12|inst10|inst|data\(7)) # (!\inst12|inst10|inst14|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst15~combout\,
	datab => \inst12|inst10|inst|data\(7),
	datad => VCC,
	cin => \inst12|inst10|inst14|Add0~7\,
	combout => \inst12|inst10|inst14|Add0~8_combout\,
	cout => \inst12|inst10|inst14|Add0~9\);

-- Location: LCCOMB_X26_Y21_N8
\inst12|inst10|inst|data_next[7]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst|data_next[7]~30_combout\ = (\inst12|inst10|inst14|Add0~8_combout\ & (!\inst12|inst37|Equal0~2_combout\ & ((!\inst12|inst255|Equal0~2_combout\) # (!\inst12|inst255|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst255|Equal0~1_combout\,
	datab => \inst12|inst10|inst14|Add0~8_combout\,
	datac => \inst12|inst37|Equal0~2_combout\,
	datad => \inst12|inst255|Equal0~2_combout\,
	combout => \inst12|inst10|inst|data_next[7]~30_combout\);

-- Location: FF_X26_Y21_N9
\inst12|inst10|inst|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst10|inst|data_next[7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst10|inst|data\(7));

-- Location: LCCOMB_X22_Y21_N12
\inst12|inst10|inst14|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst14|Add0~10_combout\ = (\inst12|inst10|inst|data\(8) & (!\inst12|inst10|inst14|Add0~9\)) # (!\inst12|inst10|inst|data\(8) & ((\inst12|inst10|inst14|Add0~9\) # (GND)))
-- \inst12|inst10|inst14|Add0~11\ = CARRY((!\inst12|inst10|inst14|Add0~9\) # (!\inst12|inst10|inst|data\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst10|inst|data\(8),
	datad => VCC,
	cin => \inst12|inst10|inst14|Add0~9\,
	combout => \inst12|inst10|inst14|Add0~10_combout\,
	cout => \inst12|inst10|inst14|Add0~11\);

-- Location: LCCOMB_X23_Y22_N28
\inst12|inst10|inst|data_next[8]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst|data_next[8]~29_combout\ = (\inst12|inst10|inst14|Add0~10_combout\ & (!\inst12|inst37|Equal0~2_combout\ & ((!\inst12|inst255|Equal0~2_combout\) # (!\inst12|inst255|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst255|Equal0~1_combout\,
	datab => \inst12|inst255|Equal0~2_combout\,
	datac => \inst12|inst10|inst14|Add0~10_combout\,
	datad => \inst12|inst37|Equal0~2_combout\,
	combout => \inst12|inst10|inst|data_next[8]~29_combout\);

-- Location: FF_X23_Y22_N29
\inst12|inst10|inst|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst10|inst|data_next[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst10|inst|data\(8));

-- Location: LCCOMB_X22_Y21_N14
\inst12|inst10|inst14|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst14|Add0~12_combout\ = (\inst12|inst10|inst|data\(9) & (\inst12|inst10|inst14|Add0~11\ $ (GND))) # (!\inst12|inst10|inst|data\(9) & (!\inst12|inst10|inst14|Add0~11\ & VCC))
-- \inst12|inst10|inst14|Add0~13\ = CARRY((\inst12|inst10|inst|data\(9) & !\inst12|inst10|inst14|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst|data\(9),
	datad => VCC,
	cin => \inst12|inst10|inst14|Add0~11\,
	combout => \inst12|inst10|inst14|Add0~12_combout\,
	cout => \inst12|inst10|inst14|Add0~13\);

-- Location: LCCOMB_X26_Y21_N6
\inst12|inst10|inst|data_next[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst|data_next[9]~28_combout\ = (\inst12|inst10|inst14|Add0~12_combout\ & (!\inst12|inst37|Equal0~2_combout\ & ((!\inst12|inst255|Equal0~2_combout\) # (!\inst12|inst255|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst255|Equal0~1_combout\,
	datab => \inst12|inst10|inst14|Add0~12_combout\,
	datac => \inst12|inst37|Equal0~2_combout\,
	datad => \inst12|inst255|Equal0~2_combout\,
	combout => \inst12|inst10|inst|data_next[9]~28_combout\);

-- Location: FF_X26_Y21_N7
\inst12|inst10|inst|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst10|inst|data_next[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst10|inst|data\(9));

-- Location: LCCOMB_X22_Y21_N16
\inst12|inst10|inst14|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst14|Add0~14_combout\ = (\inst12|inst10|inst|data\(10) & (!\inst12|inst10|inst14|Add0~13\)) # (!\inst12|inst10|inst|data\(10) & ((\inst12|inst10|inst14|Add0~13\) # (GND)))
-- \inst12|inst10|inst14|Add0~15\ = CARRY((!\inst12|inst10|inst14|Add0~13\) # (!\inst12|inst10|inst|data\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst|data\(10),
	datad => VCC,
	cin => \inst12|inst10|inst14|Add0~13\,
	combout => \inst12|inst10|inst14|Add0~14_combout\,
	cout => \inst12|inst10|inst14|Add0~15\);

-- Location: LCCOMB_X22_Y21_N30
\inst12|inst10|inst|data_next[10]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst|data_next[10]~27_combout\ = (!\inst12|inst37|Equal0~2_combout\ & (\inst12|inst10|inst14|Add0~14_combout\ & ((!\inst12|inst255|Equal0~1_combout\) # (!\inst12|inst255|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst255|Equal0~2_combout\,
	datab => \inst12|inst37|Equal0~2_combout\,
	datac => \inst12|inst255|Equal0~1_combout\,
	datad => \inst12|inst10|inst14|Add0~14_combout\,
	combout => \inst12|inst10|inst|data_next[10]~27_combout\);

-- Location: FF_X22_Y21_N31
\inst12|inst10|inst|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst10|inst|data_next[10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst10|inst|data\(10));

-- Location: LCCOMB_X22_Y21_N18
\inst12|inst10|inst14|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst14|Add0~16_combout\ = (\inst12|inst10|inst|data\(11) & (\inst12|inst10|inst14|Add0~15\ $ (GND))) # (!\inst12|inst10|inst|data\(11) & (!\inst12|inst10|inst14|Add0~15\ & VCC))
-- \inst12|inst10|inst14|Add0~17\ = CARRY((\inst12|inst10|inst|data\(11) & !\inst12|inst10|inst14|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst|data\(11),
	datad => VCC,
	cin => \inst12|inst10|inst14|Add0~15\,
	combout => \inst12|inst10|inst14|Add0~16_combout\,
	cout => \inst12|inst10|inst14|Add0~17\);

-- Location: LCCOMB_X26_Y21_N20
\inst12|inst10|inst|data_next[11]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst|data_next[11]~26_combout\ = (\inst12|inst10|inst14|Add0~16_combout\ & (!\inst12|inst37|Equal0~2_combout\ & ((!\inst12|inst255|Equal0~1_combout\) # (!\inst12|inst255|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst255|Equal0~2_combout\,
	datab => \inst12|inst10|inst14|Add0~16_combout\,
	datac => \inst12|inst37|Equal0~2_combout\,
	datad => \inst12|inst255|Equal0~1_combout\,
	combout => \inst12|inst10|inst|data_next[11]~26_combout\);

-- Location: FF_X26_Y21_N21
\inst12|inst10|inst|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst10|inst|data_next[11]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst10|inst|data\(11));

-- Location: LCCOMB_X22_Y21_N20
\inst12|inst10|inst14|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst14|Add0~18_combout\ = (\inst12|inst10|inst|data\(12) & (!\inst12|inst10|inst14|Add0~17\)) # (!\inst12|inst10|inst|data\(12) & ((\inst12|inst10|inst14|Add0~17\) # (GND)))
-- \inst12|inst10|inst14|Add0~19\ = CARRY((!\inst12|inst10|inst14|Add0~17\) # (!\inst12|inst10|inst|data\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst10|inst|data\(12),
	datad => VCC,
	cin => \inst12|inst10|inst14|Add0~17\,
	combout => \inst12|inst10|inst14|Add0~18_combout\,
	cout => \inst12|inst10|inst14|Add0~19\);

-- Location: LCCOMB_X23_Y22_N30
\inst12|inst10|inst|data_next[12]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst|data_next[12]~25_combout\ = (\inst12|inst10|inst14|Add0~18_combout\ & (!\inst12|inst37|Equal0~2_combout\ & ((!\inst12|inst255|Equal0~2_combout\) # (!\inst12|inst255|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst14|Add0~18_combout\,
	datab => \inst12|inst37|Equal0~2_combout\,
	datac => \inst12|inst255|Equal0~1_combout\,
	datad => \inst12|inst255|Equal0~2_combout\,
	combout => \inst12|inst10|inst|data_next[12]~25_combout\);

-- Location: FF_X23_Y22_N31
\inst12|inst10|inst|data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst10|inst|data_next[12]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst10|inst|data\(12));

-- Location: LCCOMB_X22_Y21_N22
\inst12|inst10|inst14|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst14|Add0~20_combout\ = (\inst12|inst10|inst|data\(13) & (\inst12|inst10|inst14|Add0~19\ $ (GND))) # (!\inst12|inst10|inst|data\(13) & (!\inst12|inst10|inst14|Add0~19\ & VCC))
-- \inst12|inst10|inst14|Add0~21\ = CARRY((\inst12|inst10|inst|data\(13) & !\inst12|inst10|inst14|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst10|inst|data\(13),
	datad => VCC,
	cin => \inst12|inst10|inst14|Add0~19\,
	combout => \inst12|inst10|inst14|Add0~20_combout\,
	cout => \inst12|inst10|inst14|Add0~21\);

-- Location: LCCOMB_X21_Y21_N2
\inst12|inst10|inst3|C[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst3|C[3]~0_combout\ = (\inst12|inst10|inst14|Add0~0_combout\ & (\inst|inst|data\(5) $ (VCC))) # (!\inst12|inst10|inst14|Add0~0_combout\ & (\inst|inst|data\(5) & VCC))
-- \inst12|inst10|inst3|C[3]~1\ = CARRY((\inst12|inst10|inst14|Add0~0_combout\ & \inst|inst|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst14|Add0~0_combout\,
	datab => \inst|inst|data\(5),
	datad => VCC,
	combout => \inst12|inst10|inst3|C[3]~0_combout\,
	cout => \inst12|inst10|inst3|C[3]~1\);

-- Location: LCCOMB_X21_Y21_N4
\inst12|inst10|inst3|C[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst3|C[4]~2_combout\ = (\inst12|inst10|inst14|Add0~2_combout\ & ((\inst|inst|data\(6) & (\inst12|inst10|inst3|C[3]~1\ & VCC)) # (!\inst|inst|data\(6) & (!\inst12|inst10|inst3|C[3]~1\)))) # (!\inst12|inst10|inst14|Add0~2_combout\ & 
-- ((\inst|inst|data\(6) & (!\inst12|inst10|inst3|C[3]~1\)) # (!\inst|inst|data\(6) & ((\inst12|inst10|inst3|C[3]~1\) # (GND)))))
-- \inst12|inst10|inst3|C[4]~3\ = CARRY((\inst12|inst10|inst14|Add0~2_combout\ & (!\inst|inst|data\(6) & !\inst12|inst10|inst3|C[3]~1\)) # (!\inst12|inst10|inst14|Add0~2_combout\ & ((!\inst12|inst10|inst3|C[3]~1\) # (!\inst|inst|data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst14|Add0~2_combout\,
	datab => \inst|inst|data\(6),
	datad => VCC,
	cin => \inst12|inst10|inst3|C[3]~1\,
	combout => \inst12|inst10|inst3|C[4]~2_combout\,
	cout => \inst12|inst10|inst3|C[4]~3\);

-- Location: LCCOMB_X21_Y21_N6
\inst12|inst10|inst3|C[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst3|C[5]~4_combout\ = ((\inst12|inst10|inst14|Add0~4_combout\ $ (\inst|inst|data\(7) $ (!\inst12|inst10|inst3|C[4]~3\)))) # (GND)
-- \inst12|inst10|inst3|C[5]~5\ = CARRY((\inst12|inst10|inst14|Add0~4_combout\ & ((\inst|inst|data\(7)) # (!\inst12|inst10|inst3|C[4]~3\))) # (!\inst12|inst10|inst14|Add0~4_combout\ & (\inst|inst|data\(7) & !\inst12|inst10|inst3|C[4]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst14|Add0~4_combout\,
	datab => \inst|inst|data\(7),
	datad => VCC,
	cin => \inst12|inst10|inst3|C[4]~3\,
	combout => \inst12|inst10|inst3|C[5]~4_combout\,
	cout => \inst12|inst10|inst3|C[5]~5\);

-- Location: LCCOMB_X21_Y21_N8
\inst12|inst10|inst3|C[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst3|C[6]~6_combout\ = (\inst|inst|data\(8) & ((\inst12|inst10|inst14|Add0~6_combout\ & (\inst12|inst10|inst3|C[5]~5\ & VCC)) # (!\inst12|inst10|inst14|Add0~6_combout\ & (!\inst12|inst10|inst3|C[5]~5\)))) # (!\inst|inst|data\(8) & 
-- ((\inst12|inst10|inst14|Add0~6_combout\ & (!\inst12|inst10|inst3|C[5]~5\)) # (!\inst12|inst10|inst14|Add0~6_combout\ & ((\inst12|inst10|inst3|C[5]~5\) # (GND)))))
-- \inst12|inst10|inst3|C[6]~7\ = CARRY((\inst|inst|data\(8) & (!\inst12|inst10|inst14|Add0~6_combout\ & !\inst12|inst10|inst3|C[5]~5\)) # (!\inst|inst|data\(8) & ((!\inst12|inst10|inst3|C[5]~5\) # (!\inst12|inst10|inst14|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(8),
	datab => \inst12|inst10|inst14|Add0~6_combout\,
	datad => VCC,
	cin => \inst12|inst10|inst3|C[5]~5\,
	combout => \inst12|inst10|inst3|C[6]~6_combout\,
	cout => \inst12|inst10|inst3|C[6]~7\);

-- Location: LCCOMB_X21_Y21_N10
\inst12|inst10|inst3|C[7]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst3|C[7]~8_combout\ = ((\inst|inst|data\(9) $ (\inst12|inst10|inst14|Add0~8_combout\ $ (!\inst12|inst10|inst3|C[6]~7\)))) # (GND)
-- \inst12|inst10|inst3|C[7]~9\ = CARRY((\inst|inst|data\(9) & ((\inst12|inst10|inst14|Add0~8_combout\) # (!\inst12|inst10|inst3|C[6]~7\))) # (!\inst|inst|data\(9) & (\inst12|inst10|inst14|Add0~8_combout\ & !\inst12|inst10|inst3|C[6]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(9),
	datab => \inst12|inst10|inst14|Add0~8_combout\,
	datad => VCC,
	cin => \inst12|inst10|inst3|C[6]~7\,
	combout => \inst12|inst10|inst3|C[7]~8_combout\,
	cout => \inst12|inst10|inst3|C[7]~9\);

-- Location: LCCOMB_X21_Y21_N12
\inst12|inst10|inst3|C[8]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst3|C[8]~10_combout\ = (\inst12|inst10|inst14|Add0~10_combout\ & (!\inst12|inst10|inst3|C[7]~9\)) # (!\inst12|inst10|inst14|Add0~10_combout\ & ((\inst12|inst10|inst3|C[7]~9\) # (GND)))
-- \inst12|inst10|inst3|C[8]~11\ = CARRY((!\inst12|inst10|inst3|C[7]~9\) # (!\inst12|inst10|inst14|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst10|inst14|Add0~10_combout\,
	datad => VCC,
	cin => \inst12|inst10|inst3|C[7]~9\,
	combout => \inst12|inst10|inst3|C[8]~10_combout\,
	cout => \inst12|inst10|inst3|C[8]~11\);

-- Location: LCCOMB_X21_Y21_N14
\inst12|inst10|inst3|C[9]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst3|C[9]~12_combout\ = (\inst12|inst10|inst14|Add0~12_combout\ & (\inst12|inst10|inst3|C[8]~11\ $ (GND))) # (!\inst12|inst10|inst14|Add0~12_combout\ & (!\inst12|inst10|inst3|C[8]~11\ & VCC))
-- \inst12|inst10|inst3|C[9]~13\ = CARRY((\inst12|inst10|inst14|Add0~12_combout\ & !\inst12|inst10|inst3|C[8]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst10|inst14|Add0~12_combout\,
	datad => VCC,
	cin => \inst12|inst10|inst3|C[8]~11\,
	combout => \inst12|inst10|inst3|C[9]~12_combout\,
	cout => \inst12|inst10|inst3|C[9]~13\);

-- Location: LCCOMB_X21_Y21_N16
\inst12|inst10|inst3|C[10]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst3|C[10]~14_combout\ = (\inst12|inst10|inst14|Add0~14_combout\ & (!\inst12|inst10|inst3|C[9]~13\)) # (!\inst12|inst10|inst14|Add0~14_combout\ & ((\inst12|inst10|inst3|C[9]~13\) # (GND)))
-- \inst12|inst10|inst3|C[10]~15\ = CARRY((!\inst12|inst10|inst3|C[9]~13\) # (!\inst12|inst10|inst14|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst10|inst14|Add0~14_combout\,
	datad => VCC,
	cin => \inst12|inst10|inst3|C[9]~13\,
	combout => \inst12|inst10|inst3|C[10]~14_combout\,
	cout => \inst12|inst10|inst3|C[10]~15\);

-- Location: LCCOMB_X21_Y21_N18
\inst12|inst10|inst3|C[11]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst3|C[11]~16_combout\ = (\inst12|inst10|inst14|Add0~16_combout\ & (\inst12|inst10|inst3|C[10]~15\ $ (GND))) # (!\inst12|inst10|inst14|Add0~16_combout\ & (!\inst12|inst10|inst3|C[10]~15\ & VCC))
-- \inst12|inst10|inst3|C[11]~17\ = CARRY((\inst12|inst10|inst14|Add0~16_combout\ & !\inst12|inst10|inst3|C[10]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst10|inst14|Add0~16_combout\,
	datad => VCC,
	cin => \inst12|inst10|inst3|C[10]~15\,
	combout => \inst12|inst10|inst3|C[11]~16_combout\,
	cout => \inst12|inst10|inst3|C[11]~17\);

-- Location: LCCOMB_X21_Y21_N20
\inst12|inst10|inst3|C[12]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst3|C[12]~18_combout\ = (\inst12|inst10|inst14|Add0~18_combout\ & (!\inst12|inst10|inst3|C[11]~17\)) # (!\inst12|inst10|inst14|Add0~18_combout\ & ((\inst12|inst10|inst3|C[11]~17\) # (GND)))
-- \inst12|inst10|inst3|C[12]~19\ = CARRY((!\inst12|inst10|inst3|C[11]~17\) # (!\inst12|inst10|inst14|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst14|Add0~18_combout\,
	datad => VCC,
	cin => \inst12|inst10|inst3|C[11]~17\,
	combout => \inst12|inst10|inst3|C[12]~18_combout\,
	cout => \inst12|inst10|inst3|C[12]~19\);

-- Location: LCCOMB_X21_Y21_N22
\inst12|inst10|inst3|C[13]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst3|C[13]~20_combout\ = (\inst12|inst10|inst14|Add0~20_combout\ & (\inst12|inst10|inst3|C[12]~19\ $ (GND))) # (!\inst12|inst10|inst14|Add0~20_combout\ & (!\inst12|inst10|inst3|C[12]~19\ & VCC))
-- \inst12|inst10|inst3|C[13]~21\ = CARRY((\inst12|inst10|inst14|Add0~20_combout\ & !\inst12|inst10|inst3|C[12]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst10|inst14|Add0~20_combout\,
	datad => VCC,
	cin => \inst12|inst10|inst3|C[12]~19\,
	combout => \inst12|inst10|inst3|C[13]~20_combout\,
	cout => \inst12|inst10|inst3|C[13]~21\);

-- Location: LCCOMB_X23_Y21_N28
\inst12|inst42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst42~combout\ = (!\inst1|inst4|LessThan0~0_combout\) # (!\inst|inst16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst16~0_combout\,
	datad => \inst1|inst4|LessThan0~0_combout\,
	combout => \inst12|inst42~combout\);

-- Location: FF_X21_Y21_N23
\inst12|inst|altsyncram_component|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst10|inst3|C[13]~20_combout\,
	ena => \inst12|ALT_INV_inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst|altsyncram_component|auto_generated|address_reg_b\(0));

-- Location: FF_X21_Y21_N17
\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst12|inst|altsyncram_component|auto_generated|address_reg_b\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0));

-- Location: LCCOMB_X22_Y21_N26
\inst12|inst10|inst|data_next[14]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst|data_next[14]~35_combout\ = (!\inst12|inst37|Equal0~2_combout\ & (\inst12|inst10|inst14|Add0~22_combout\ & ((!\inst12|inst255|Equal0~1_combout\) # (!\inst12|inst255|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst255|Equal0~2_combout\,
	datab => \inst12|inst37|Equal0~2_combout\,
	datac => \inst12|inst255|Equal0~1_combout\,
	datad => \inst12|inst10|inst14|Add0~22_combout\,
	combout => \inst12|inst10|inst|data_next[14]~35_combout\);

-- Location: FF_X22_Y21_N27
\inst12|inst10|inst|data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst10|inst|data_next[14]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst10|inst|data\(14));

-- Location: LCCOMB_X22_Y21_N24
\inst12|inst10|inst14|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst14|Add0~22_combout\ = \inst12|inst10|inst|data\(14) $ (\inst12|inst10|inst14|Add0~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst|data\(14),
	cin => \inst12|inst10|inst14|Add0~21\,
	combout => \inst12|inst10|inst14|Add0~22_combout\);

-- Location: LCCOMB_X21_Y21_N24
\inst12|inst10|inst3|C[14]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst10|inst3|C[14]~22_combout\ = \inst12|inst10|inst3|C[13]~21\ $ (\inst12|inst10|inst14|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst12|inst10|inst14|Add0~22_combout\,
	cin => \inst12|inst10|inst3|C[13]~21\,
	combout => \inst12|inst10|inst3|C[14]~22_combout\);

-- Location: FF_X21_Y21_N25
\inst12|inst|altsyncram_component|auto_generated|address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst10|inst3|C[14]~22_combout\,
	ena => \inst12|ALT_INV_inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst|altsyncram_component|auto_generated|address_reg_b\(1));

-- Location: FF_X21_Y21_N19
\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst12|inst|altsyncram_component|auto_generated|address_reg_b\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1));

-- Location: LCCOMB_X24_Y25_N0
\inst12|inst35|inst4|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst4|Add0~0_combout\ = \inst12|inst35|inst4|data\(0) $ (GND)
-- \inst12|inst35|inst4|Add0~1\ = CARRY(!\inst12|inst35|inst4|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst35|inst4|data\(0),
	datad => VCC,
	combout => \inst12|inst35|inst4|Add0~0_combout\,
	cout => \inst12|inst35|inst4|Add0~1\);

-- Location: LCCOMB_X23_Y25_N30
\inst12|inst35|inst4|data[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst4|data[0]~3_combout\ = !\inst12|inst35|inst4|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst4|Add0~0_combout\,
	combout => \inst12|inst35|inst4|data[0]~3_combout\);

-- Location: LCCOMB_X20_Y25_N16
\inst12|inst35|inst19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst19~combout\ = (\inst12|inst35|inst15~1_combout\) # (!\inst12|inst35|inst1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst35|inst1~3_combout\,
	datad => \inst12|inst35|inst15~1_combout\,
	combout => \inst12|inst35|inst19~combout\);

-- Location: FF_X22_Y25_N1
\inst12|inst35|inst4|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst12|inst35|inst4|data[0]~3_combout\,
	sload => VCC,
	ena => \inst12|inst35|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst35|inst4|data\(0));

-- Location: LCCOMB_X24_Y25_N2
\inst12|inst35|inst4|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst4|Add0~2_combout\ = (\inst12|inst35|inst4|data\(1) & ((\inst12|inst35|inst15~1_combout\ & ((\inst12|inst35|inst4|Add0~1\) # (GND))) # (!\inst12|inst35|inst15~1_combout\ & (!\inst12|inst35|inst4|Add0~1\)))) # 
-- (!\inst12|inst35|inst4|data\(1) & ((\inst12|inst35|inst15~1_combout\ & (!\inst12|inst35|inst4|Add0~1\)) # (!\inst12|inst35|inst15~1_combout\ & (\inst12|inst35|inst4|Add0~1\ & VCC))))
-- \inst12|inst35|inst4|Add0~3\ = CARRY((\inst12|inst35|inst4|data\(1) & ((\inst12|inst35|inst15~1_combout\) # (!\inst12|inst35|inst4|Add0~1\))) # (!\inst12|inst35|inst4|data\(1) & (\inst12|inst35|inst15~1_combout\ & !\inst12|inst35|inst4|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst4|data\(1),
	datab => \inst12|inst35|inst15~1_combout\,
	datad => VCC,
	cin => \inst12|inst35|inst4|Add0~1\,
	combout => \inst12|inst35|inst4|Add0~2_combout\,
	cout => \inst12|inst35|inst4|Add0~3\);

-- Location: LCCOMB_X24_Y25_N28
\inst12|inst35|inst4|data[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst4|data[1]~2_combout\ = !\inst12|inst35|inst4|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|inst35|inst4|Add0~2_combout\,
	combout => \inst12|inst35|inst4|data[1]~2_combout\);

-- Location: FF_X24_Y25_N29
\inst12|inst35|inst4|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst35|inst4|data[1]~2_combout\,
	ena => \inst12|inst35|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst35|inst4|data\(1));

-- Location: LCCOMB_X24_Y25_N4
\inst12|inst35|inst4|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst4|Add0~4_combout\ = ((\inst12|inst35|inst4|data\(2) $ (\inst12|inst35|inst15~1_combout\ $ (!\inst12|inst35|inst4|Add0~3\)))) # (GND)
-- \inst12|inst35|inst4|Add0~5\ = CARRY((\inst12|inst35|inst4|data\(2) & (!\inst12|inst35|inst15~1_combout\ & !\inst12|inst35|inst4|Add0~3\)) # (!\inst12|inst35|inst4|data\(2) & ((!\inst12|inst35|inst4|Add0~3\) # (!\inst12|inst35|inst15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst4|data\(2),
	datab => \inst12|inst35|inst15~1_combout\,
	datad => VCC,
	cin => \inst12|inst35|inst4|Add0~3\,
	combout => \inst12|inst35|inst4|Add0~4_combout\,
	cout => \inst12|inst35|inst4|Add0~5\);

-- Location: LCCOMB_X22_Y25_N10
\inst12|inst35|inst4|data[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst4|data[2]~1_combout\ = !\inst12|inst35|inst4|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|inst35|inst4|Add0~4_combout\,
	combout => \inst12|inst35|inst4|data[2]~1_combout\);

-- Location: FF_X22_Y25_N11
\inst12|inst35|inst4|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst35|inst4|data[2]~1_combout\,
	ena => \inst12|inst35|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst35|inst4|data\(2));

-- Location: LCCOMB_X24_Y25_N6
\inst12|inst35|inst4|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst4|Add0~6_combout\ = (\inst12|inst35|inst4|data\(3) & ((\inst12|inst35|inst15~1_combout\ & ((\inst12|inst35|inst4|Add0~5\) # (GND))) # (!\inst12|inst35|inst15~1_combout\ & (!\inst12|inst35|inst4|Add0~5\)))) # 
-- (!\inst12|inst35|inst4|data\(3) & ((\inst12|inst35|inst15~1_combout\ & (!\inst12|inst35|inst4|Add0~5\)) # (!\inst12|inst35|inst15~1_combout\ & (\inst12|inst35|inst4|Add0~5\ & VCC))))
-- \inst12|inst35|inst4|Add0~7\ = CARRY((\inst12|inst35|inst4|data\(3) & ((\inst12|inst35|inst15~1_combout\) # (!\inst12|inst35|inst4|Add0~5\))) # (!\inst12|inst35|inst4|data\(3) & (\inst12|inst35|inst15~1_combout\ & !\inst12|inst35|inst4|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst4|data\(3),
	datab => \inst12|inst35|inst15~1_combout\,
	datad => VCC,
	cin => \inst12|inst35|inst4|Add0~5\,
	combout => \inst12|inst35|inst4|Add0~6_combout\,
	cout => \inst12|inst35|inst4|Add0~7\);

-- Location: LCCOMB_X24_Y25_N22
\inst12|inst35|inst4|data[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst4|data[3]~0_combout\ = !\inst12|inst35|inst4|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|inst35|inst4|Add0~6_combout\,
	combout => \inst12|inst35|inst4|data[3]~0_combout\);

-- Location: FF_X22_Y25_N9
\inst12|inst35|inst4|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst12|inst35|inst4|data[3]~0_combout\,
	sload => VCC,
	ena => \inst12|inst35|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst35|inst4|data\(3));

-- Location: LCCOMB_X24_Y25_N8
\inst12|inst35|inst4|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst4|Add0~8_combout\ = ((\inst12|inst35|inst4|data\(4) $ (\inst12|inst35|inst15~1_combout\ $ (!\inst12|inst35|inst4|Add0~7\)))) # (GND)
-- \inst12|inst35|inst4|Add0~9\ = CARRY((\inst12|inst35|inst4|data\(4) & (!\inst12|inst35|inst15~1_combout\ & !\inst12|inst35|inst4|Add0~7\)) # (!\inst12|inst35|inst4|data\(4) & ((!\inst12|inst35|inst4|Add0~7\) # (!\inst12|inst35|inst15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst4|data\(4),
	datab => \inst12|inst35|inst15~1_combout\,
	datad => VCC,
	cin => \inst12|inst35|inst4|Add0~7\,
	combout => \inst12|inst35|inst4|Add0~8_combout\,
	cout => \inst12|inst35|inst4|Add0~9\);

-- Location: LCCOMB_X22_Y25_N28
\inst12|inst35|inst4|data[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst4|data[4]~5_combout\ = !\inst12|inst35|inst4|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|inst35|inst4|Add0~8_combout\,
	combout => \inst12|inst35|inst4|data[4]~5_combout\);

-- Location: FF_X22_Y25_N29
\inst12|inst35|inst4|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst35|inst4|data[4]~5_combout\,
	ena => \inst12|inst35|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst35|inst4|data\(4));

-- Location: LCCOMB_X24_Y25_N10
\inst12|inst35|inst4|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst4|Add0~10_combout\ = (\inst12|inst35|inst4|data\(5) & ((\inst12|inst35|inst15~1_combout\ & ((\inst12|inst35|inst4|Add0~9\) # (GND))) # (!\inst12|inst35|inst15~1_combout\ & (!\inst12|inst35|inst4|Add0~9\)))) # 
-- (!\inst12|inst35|inst4|data\(5) & ((\inst12|inst35|inst15~1_combout\ & (!\inst12|inst35|inst4|Add0~9\)) # (!\inst12|inst35|inst15~1_combout\ & (\inst12|inst35|inst4|Add0~9\ & VCC))))
-- \inst12|inst35|inst4|Add0~11\ = CARRY((\inst12|inst35|inst4|data\(5) & ((\inst12|inst35|inst15~1_combout\) # (!\inst12|inst35|inst4|Add0~9\))) # (!\inst12|inst35|inst4|data\(5) & (\inst12|inst35|inst15~1_combout\ & !\inst12|inst35|inst4|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst4|data\(5),
	datab => \inst12|inst35|inst15~1_combout\,
	datad => VCC,
	cin => \inst12|inst35|inst4|Add0~9\,
	combout => \inst12|inst35|inst4|Add0~10_combout\,
	cout => \inst12|inst35|inst4|Add0~11\);

-- Location: LCCOMB_X22_Y25_N6
\inst12|inst35|inst4|data[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst4|data[5]~4_combout\ = !\inst12|inst35|inst4|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|inst35|inst4|Add0~10_combout\,
	combout => \inst12|inst35|inst4|data[5]~4_combout\);

-- Location: FF_X22_Y25_N7
\inst12|inst35|inst4|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst35|inst4|data[5]~4_combout\,
	ena => \inst12|inst35|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst35|inst4|data\(5));

-- Location: LCCOMB_X24_Y25_N12
\inst12|inst35|inst4|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst4|Add0~12_combout\ = ((\inst12|inst35|inst4|data\(6) $ (\inst12|inst35|inst15~1_combout\ $ (\inst12|inst35|inst4|Add0~11\)))) # (GND)
-- \inst12|inst35|inst4|Add0~13\ = CARRY((\inst12|inst35|inst4|data\(6) & ((!\inst12|inst35|inst4|Add0~11\) # (!\inst12|inst35|inst15~1_combout\))) # (!\inst12|inst35|inst4|data\(6) & (!\inst12|inst35|inst15~1_combout\ & !\inst12|inst35|inst4|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst4|data\(6),
	datab => \inst12|inst35|inst15~1_combout\,
	datad => VCC,
	cin => \inst12|inst35|inst4|Add0~11\,
	combout => \inst12|inst35|inst4|Add0~12_combout\,
	cout => \inst12|inst35|inst4|Add0~13\);

-- Location: FF_X22_Y25_N31
\inst12|inst35|inst4|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst12|inst35|inst4|Add0~12_combout\,
	sload => VCC,
	ena => \inst12|inst35|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst35|inst4|data\(6));

-- Location: LCCOMB_X24_Y25_N14
\inst12|inst35|inst4|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst4|Add0~14_combout\ = (\inst12|inst35|inst4|data\(7) & ((\inst12|inst35|inst15~1_combout\ & (!\inst12|inst35|inst4|Add0~13\)) # (!\inst12|inst35|inst15~1_combout\ & (\inst12|inst35|inst4|Add0~13\ & VCC)))) # 
-- (!\inst12|inst35|inst4|data\(7) & ((\inst12|inst35|inst15~1_combout\ & ((\inst12|inst35|inst4|Add0~13\) # (GND))) # (!\inst12|inst35|inst15~1_combout\ & (!\inst12|inst35|inst4|Add0~13\))))
-- \inst12|inst35|inst4|Add0~15\ = CARRY((\inst12|inst35|inst4|data\(7) & (\inst12|inst35|inst15~1_combout\ & !\inst12|inst35|inst4|Add0~13\)) # (!\inst12|inst35|inst4|data\(7) & ((\inst12|inst35|inst15~1_combout\) # (!\inst12|inst35|inst4|Add0~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst4|data\(7),
	datab => \inst12|inst35|inst15~1_combout\,
	datad => VCC,
	cin => \inst12|inst35|inst4|Add0~13\,
	combout => \inst12|inst35|inst4|Add0~14_combout\,
	cout => \inst12|inst35|inst4|Add0~15\);

-- Location: FF_X22_Y25_N5
\inst12|inst35|inst4|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst12|inst35|inst4|Add0~14_combout\,
	sload => VCC,
	ena => \inst12|inst35|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst35|inst4|data\(7));

-- Location: LCCOMB_X24_Y25_N16
\inst12|inst35|inst4|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst4|Add0~16_combout\ = ((\inst12|inst35|inst4|data\(8) $ (\inst12|inst35|inst15~1_combout\ $ (\inst12|inst35|inst4|Add0~15\)))) # (GND)
-- \inst12|inst35|inst4|Add0~17\ = CARRY((\inst12|inst35|inst4|data\(8) & ((!\inst12|inst35|inst4|Add0~15\) # (!\inst12|inst35|inst15~1_combout\))) # (!\inst12|inst35|inst4|data\(8) & (!\inst12|inst35|inst15~1_combout\ & !\inst12|inst35|inst4|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst4|data\(8),
	datab => \inst12|inst35|inst15~1_combout\,
	datad => VCC,
	cin => \inst12|inst35|inst4|Add0~15\,
	combout => \inst12|inst35|inst4|Add0~16_combout\,
	cout => \inst12|inst35|inst4|Add0~17\);

-- Location: FF_X24_Y25_N17
\inst12|inst35|inst4|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst35|inst4|Add0~16_combout\,
	ena => \inst12|inst35|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst35|inst4|data\(8));

-- Location: LCCOMB_X24_Y18_N18
\inst8|inst|mouse_data_int_reg52|data[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_int_reg52|data[6]~feeder_combout\ = \inst8|inst|inst4|inst31|data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|inst4|inst31|data\(6),
	combout => \inst8|inst|mouse_data_int_reg52|data[6]~feeder_combout\);

-- Location: FF_X24_Y18_N19
\inst8|inst|mouse_data_int_reg52|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_int_reg52|data[6]~feeder_combout\,
	ena => \inst8|inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_int_reg52|data\(6));

-- Location: LCCOMB_X23_Y18_N22
\inst8|inst|mouse_data_reg|data[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_reg|data[6]~feeder_combout\ = \inst8|inst|mouse_data_int_reg52|data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|mouse_data_int_reg52|data\(6),
	combout => \inst8|inst|mouse_data_reg|data[6]~feeder_combout\);

-- Location: FF_X23_Y18_N23
\inst8|inst|mouse_data_reg|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_reg|data[6]~feeder_combout\,
	ena => \inst8|inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_reg|data\(6));

-- Location: FF_X24_Y18_N3
\inst8|inst|mouse_data_int_reg52|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|inst|inst4|inst31|data\(4),
	sload => VCC,
	ena => \inst8|inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_int_reg52|data\(4));

-- Location: LCCOMB_X23_Y18_N14
\inst8|inst|mouse_data_reg|data[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_reg|data[4]~feeder_combout\ = \inst8|inst|mouse_data_int_reg52|data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|mouse_data_int_reg52|data\(4),
	combout => \inst8|inst|mouse_data_reg|data[4]~feeder_combout\);

-- Location: FF_X23_Y18_N15
\inst8|inst|mouse_data_reg|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_reg|data[4]~feeder_combout\,
	ena => \inst8|inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_reg|data\(4));

-- Location: LCCOMB_X24_Y18_N8
\inst8|inst|mouse_data_int_reg52|data[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_int_reg52|data[7]~feeder_combout\ = \inst8|inst|inst4|inst31|data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|inst4|inst31|data\(7),
	combout => \inst8|inst|mouse_data_int_reg52|data[7]~feeder_combout\);

-- Location: FF_X24_Y18_N9
\inst8|inst|mouse_data_int_reg52|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_int_reg52|data[7]~feeder_combout\,
	ena => \inst8|inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_int_reg52|data\(7));

-- Location: FF_X23_Y18_N13
\inst8|inst|mouse_data_reg|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|inst|mouse_data_int_reg52|data\(7),
	sload => VCC,
	ena => \inst8|inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_reg|data\(7));

-- Location: LCCOMB_X24_Y18_N4
\inst8|inst|mouse_data_int_reg52|data[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_int_reg52|data[5]~feeder_combout\ = \inst8|inst|inst4|inst31|data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|inst4|inst31|data\(5),
	combout => \inst8|inst|mouse_data_int_reg52|data[5]~feeder_combout\);

-- Location: FF_X24_Y18_N5
\inst8|inst|mouse_data_int_reg52|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_int_reg52|data[5]~feeder_combout\,
	ena => \inst8|inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_int_reg52|data\(5));

-- Location: LCCOMB_X23_Y18_N2
\inst8|inst|mouse_data_reg|data[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_reg|data[5]~feeder_combout\ = \inst8|inst|mouse_data_int_reg52|data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|mouse_data_int_reg52|data\(5),
	combout => \inst8|inst|mouse_data_reg|data[5]~feeder_combout\);

-- Location: FF_X23_Y18_N3
\inst8|inst|mouse_data_reg|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_reg|data[5]~feeder_combout\,
	ena => \inst8|inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_reg|data\(5));

-- Location: LCCOMB_X23_Y18_N12
\inst8|inst2|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst2|LessThan0~1_combout\ = (\inst8|inst|mouse_data_reg|data\(6)) # ((\inst8|inst|mouse_data_reg|data\(4)) # ((\inst8|inst|mouse_data_reg|data\(7)) # (\inst8|inst|mouse_data_reg|data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|mouse_data_reg|data\(6),
	datab => \inst8|inst|mouse_data_reg|data\(4),
	datac => \inst8|inst|mouse_data_reg|data\(7),
	datad => \inst8|inst|mouse_data_reg|data\(5),
	combout => \inst8|inst2|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y15_N18
\inst10|inst7|cnt[16]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|cnt[16]~0_combout\ = !\inst10|inst7|Add0~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|inst7|Add0~32_combout\,
	combout => \inst10|inst7|cnt[16]~0_combout\);

-- Location: FF_X23_Y15_N19
\inst10|inst7|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst7|cnt[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst7|cnt\(16));

-- Location: LCCOMB_X23_Y16_N16
\inst10|inst7|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|Add0~1_cout\ = CARRY(!\inst10|inst33|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst33|cnt\(0),
	datad => VCC,
	cout => \inst10|inst7|Add0~1_cout\);

-- Location: LCCOMB_X23_Y16_N18
\inst10|inst7|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|Add0~2_combout\ = (\inst10|inst33|cnt\(1) & (!\inst10|inst7|Add0~1_cout\)) # (!\inst10|inst33|cnt\(1) & (\inst10|inst7|Add0~1_cout\ & VCC))
-- \inst10|inst7|Add0~3\ = CARRY((\inst10|inst33|cnt\(1) & !\inst10|inst7|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst33|cnt\(1),
	datad => VCC,
	cin => \inst10|inst7|Add0~1_cout\,
	combout => \inst10|inst7|Add0~2_combout\,
	cout => \inst10|inst7|Add0~3\);

-- Location: LCCOMB_X23_Y16_N20
\inst10|inst7|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|Add0~4_combout\ = (\inst10|inst33|cnt\(2) & (\inst10|inst7|Add0~3\ $ (GND))) # (!\inst10|inst33|cnt\(2) & ((GND) # (!\inst10|inst7|Add0~3\)))
-- \inst10|inst7|Add0~5\ = CARRY((!\inst10|inst7|Add0~3\) # (!\inst10|inst33|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst33|cnt\(2),
	datad => VCC,
	cin => \inst10|inst7|Add0~3\,
	combout => \inst10|inst7|Add0~4_combout\,
	cout => \inst10|inst7|Add0~5\);

-- Location: LCCOMB_X23_Y16_N22
\inst10|inst7|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|Add0~6_combout\ = (\inst10|inst7|cnt\(3) & (\inst10|inst7|Add0~5\ & VCC)) # (!\inst10|inst7|cnt\(3) & (!\inst10|inst7|Add0~5\))
-- \inst10|inst7|Add0~7\ = CARRY((!\inst10|inst7|cnt\(3) & !\inst10|inst7|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst7|cnt\(3),
	datad => VCC,
	cin => \inst10|inst7|Add0~5\,
	combout => \inst10|inst7|Add0~6_combout\,
	cout => \inst10|inst7|Add0~7\);

-- Location: FF_X23_Y16_N23
\inst10|inst7|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst7|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst7|cnt\(3));

-- Location: LCCOMB_X23_Y16_N24
\inst10|inst7|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|Add0~8_combout\ = (\inst10|inst7|cnt\(4) & ((GND) # (!\inst10|inst7|Add0~7\))) # (!\inst10|inst7|cnt\(4) & (\inst10|inst7|Add0~7\ $ (GND)))
-- \inst10|inst7|Add0~9\ = CARRY((\inst10|inst7|cnt\(4)) # (!\inst10|inst7|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst7|cnt\(4),
	datad => VCC,
	cin => \inst10|inst7|Add0~7\,
	combout => \inst10|inst7|Add0~8_combout\,
	cout => \inst10|inst7|Add0~9\);

-- Location: FF_X23_Y16_N25
\inst10|inst7|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst7|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst7|cnt\(4));

-- Location: LCCOMB_X23_Y16_N26
\inst10|inst7|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|Add0~10_combout\ = (\inst10|inst7|cnt\(5) & (\inst10|inst7|Add0~9\ & VCC)) # (!\inst10|inst7|cnt\(5) & (!\inst10|inst7|Add0~9\))
-- \inst10|inst7|Add0~11\ = CARRY((!\inst10|inst7|cnt\(5) & !\inst10|inst7|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst7|cnt\(5),
	datad => VCC,
	cin => \inst10|inst7|Add0~9\,
	combout => \inst10|inst7|Add0~10_combout\,
	cout => \inst10|inst7|Add0~11\);

-- Location: FF_X23_Y16_N27
\inst10|inst7|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst7|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst7|cnt\(5));

-- Location: LCCOMB_X23_Y16_N28
\inst10|inst7|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|Add0~12_combout\ = (\inst10|inst7|cnt\(6) & (\inst10|inst7|Add0~11\ $ (GND))) # (!\inst10|inst7|cnt\(6) & ((GND) # (!\inst10|inst7|Add0~11\)))
-- \inst10|inst7|Add0~13\ = CARRY((!\inst10|inst7|Add0~11\) # (!\inst10|inst7|cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst7|cnt\(6),
	datad => VCC,
	cin => \inst10|inst7|Add0~11\,
	combout => \inst10|inst7|Add0~12_combout\,
	cout => \inst10|inst7|Add0~13\);

-- Location: LCCOMB_X23_Y16_N2
\inst10|inst7|cnt[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|cnt[6]~5_combout\ = !\inst10|inst7|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|inst7|Add0~12_combout\,
	combout => \inst10|inst7|cnt[6]~5_combout\);

-- Location: FF_X23_Y16_N3
\inst10|inst7|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst7|cnt[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst7|cnt\(6));

-- Location: LCCOMB_X23_Y16_N30
\inst10|inst7|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|Add0~14_combout\ = (\inst10|inst7|cnt\(7) & (\inst10|inst7|Add0~13\ & VCC)) # (!\inst10|inst7|cnt\(7) & (!\inst10|inst7|Add0~13\))
-- \inst10|inst7|Add0~15\ = CARRY((!\inst10|inst7|cnt\(7) & !\inst10|inst7|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst7|cnt\(7),
	datad => VCC,
	cin => \inst10|inst7|Add0~13\,
	combout => \inst10|inst7|Add0~14_combout\,
	cout => \inst10|inst7|Add0~15\);

-- Location: FF_X23_Y16_N31
\inst10|inst7|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst7|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst7|cnt\(7));

-- Location: LCCOMB_X23_Y15_N0
\inst10|inst7|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|Add0~16_combout\ = (\inst10|inst7|cnt\(8) & ((GND) # (!\inst10|inst7|Add0~15\))) # (!\inst10|inst7|cnt\(8) & (\inst10|inst7|Add0~15\ $ (GND)))
-- \inst10|inst7|Add0~17\ = CARRY((\inst10|inst7|cnt\(8)) # (!\inst10|inst7|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst7|cnt\(8),
	datad => VCC,
	cin => \inst10|inst7|Add0~15\,
	combout => \inst10|inst7|Add0~16_combout\,
	cout => \inst10|inst7|Add0~17\);

-- Location: FF_X23_Y15_N1
\inst10|inst7|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst7|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst7|cnt\(8));

-- Location: LCCOMB_X23_Y15_N2
\inst10|inst7|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|Add0~18_combout\ = (\inst10|inst7|cnt\(9) & (\inst10|inst7|Add0~17\ & VCC)) # (!\inst10|inst7|cnt\(9) & (!\inst10|inst7|Add0~17\))
-- \inst10|inst7|Add0~19\ = CARRY((!\inst10|inst7|cnt\(9) & !\inst10|inst7|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst7|cnt\(9),
	datad => VCC,
	cin => \inst10|inst7|Add0~17\,
	combout => \inst10|inst7|Add0~18_combout\,
	cout => \inst10|inst7|Add0~19\);

-- Location: FF_X23_Y15_N3
\inst10|inst7|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst7|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst7|cnt\(9));

-- Location: LCCOMB_X23_Y15_N4
\inst10|inst7|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|Add0~20_combout\ = (\inst10|inst7|cnt\(10) & ((GND) # (!\inst10|inst7|Add0~19\))) # (!\inst10|inst7|cnt\(10) & (\inst10|inst7|Add0~19\ $ (GND)))
-- \inst10|inst7|Add0~21\ = CARRY((\inst10|inst7|cnt\(10)) # (!\inst10|inst7|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst7|cnt\(10),
	datad => VCC,
	cin => \inst10|inst7|Add0~19\,
	combout => \inst10|inst7|Add0~20_combout\,
	cout => \inst10|inst7|Add0~21\);

-- Location: FF_X23_Y15_N5
\inst10|inst7|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst7|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst7|cnt\(10));

-- Location: LCCOMB_X23_Y15_N6
\inst10|inst7|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|Add0~22_combout\ = (\inst10|inst7|cnt\(11) & (!\inst10|inst7|Add0~21\)) # (!\inst10|inst7|cnt\(11) & (\inst10|inst7|Add0~21\ & VCC))
-- \inst10|inst7|Add0~23\ = CARRY((\inst10|inst7|cnt\(11) & !\inst10|inst7|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst7|cnt\(11),
	datad => VCC,
	cin => \inst10|inst7|Add0~21\,
	combout => \inst10|inst7|Add0~22_combout\,
	cout => \inst10|inst7|Add0~23\);

-- Location: LCCOMB_X23_Y15_N30
\inst10|inst7|cnt[11]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|cnt[11]~4_combout\ = !\inst10|inst7|Add0~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|inst7|Add0~22_combout\,
	combout => \inst10|inst7|cnt[11]~4_combout\);

-- Location: FF_X23_Y15_N31
\inst10|inst7|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst7|cnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst7|cnt\(11));

-- Location: LCCOMB_X23_Y15_N8
\inst10|inst7|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|Add0~24_combout\ = (\inst10|inst7|cnt\(12) & ((GND) # (!\inst10|inst7|Add0~23\))) # (!\inst10|inst7|cnt\(12) & (\inst10|inst7|Add0~23\ $ (GND)))
-- \inst10|inst7|Add0~25\ = CARRY((\inst10|inst7|cnt\(12)) # (!\inst10|inst7|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst7|cnt\(12),
	datad => VCC,
	cin => \inst10|inst7|Add0~23\,
	combout => \inst10|inst7|Add0~24_combout\,
	cout => \inst10|inst7|Add0~25\);

-- Location: FF_X23_Y15_N9
\inst10|inst7|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst7|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst7|cnt\(12));

-- Location: LCCOMB_X23_Y15_N10
\inst10|inst7|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|Add0~26_combout\ = (\inst10|inst7|cnt\(13) & (!\inst10|inst7|Add0~25\)) # (!\inst10|inst7|cnt\(13) & (\inst10|inst7|Add0~25\ & VCC))
-- \inst10|inst7|Add0~27\ = CARRY((\inst10|inst7|cnt\(13) & !\inst10|inst7|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst7|cnt\(13),
	datad => VCC,
	cin => \inst10|inst7|Add0~25\,
	combout => \inst10|inst7|Add0~26_combout\,
	cout => \inst10|inst7|Add0~27\);

-- Location: LCCOMB_X23_Y15_N20
\inst10|inst7|cnt[13]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|cnt[13]~3_combout\ = !\inst10|inst7|Add0~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|inst7|Add0~26_combout\,
	combout => \inst10|inst7|cnt[13]~3_combout\);

-- Location: FF_X23_Y15_N21
\inst10|inst7|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst7|cnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst7|cnt\(13));

-- Location: LCCOMB_X23_Y15_N12
\inst10|inst7|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|Add0~28_combout\ = (\inst10|inst7|cnt\(14) & (\inst10|inst7|Add0~27\ $ (GND))) # (!\inst10|inst7|cnt\(14) & ((GND) # (!\inst10|inst7|Add0~27\)))
-- \inst10|inst7|Add0~29\ = CARRY((!\inst10|inst7|Add0~27\) # (!\inst10|inst7|cnt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst7|cnt\(14),
	datad => VCC,
	cin => \inst10|inst7|Add0~27\,
	combout => \inst10|inst7|Add0~28_combout\,
	cout => \inst10|inst7|Add0~29\);

-- Location: LCCOMB_X23_Y15_N22
\inst10|inst7|cnt[14]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|cnt[14]~2_combout\ = !\inst10|inst7|Add0~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|inst7|Add0~28_combout\,
	combout => \inst10|inst7|cnt[14]~2_combout\);

-- Location: FF_X23_Y15_N23
\inst10|inst7|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst7|cnt[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst7|cnt\(14));

-- Location: LCCOMB_X23_Y15_N14
\inst10|inst7|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|Add0~30_combout\ = (\inst10|inst7|cnt\(15) & (!\inst10|inst7|Add0~29\)) # (!\inst10|inst7|cnt\(15) & (\inst10|inst7|Add0~29\ & VCC))
-- \inst10|inst7|Add0~31\ = CARRY((\inst10|inst7|cnt\(15) & !\inst10|inst7|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst7|cnt\(15),
	datad => VCC,
	cin => \inst10|inst7|Add0~29\,
	combout => \inst10|inst7|Add0~30_combout\,
	cout => \inst10|inst7|Add0~31\);

-- Location: LCCOMB_X23_Y15_N28
\inst10|inst7|cnt[15]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|cnt[15]~1_combout\ = !\inst10|inst7|Add0~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst7|Add0~30_combout\,
	combout => \inst10|inst7|cnt[15]~1_combout\);

-- Location: FF_X23_Y15_N29
\inst10|inst7|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst7|cnt[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst7|cnt\(15));

-- Location: LCCOMB_X23_Y15_N16
\inst10|inst7|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|Add0~32_combout\ = \inst10|inst7|Add0~31\ $ (!\inst10|inst7|cnt\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst10|inst7|cnt\(16),
	cin => \inst10|inst7|Add0~31\,
	combout => \inst10|inst7|Add0~32_combout\);

-- Location: LCCOMB_X23_Y16_N10
\inst10|inst7|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|Equal0~1_combout\ = (!\inst10|inst7|Add0~10_combout\ & (!\inst10|inst7|Add0~8_combout\ & (!\inst10|inst7|Add0~14_combout\ & !\inst10|inst7|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst7|Add0~10_combout\,
	datab => \inst10|inst7|Add0~8_combout\,
	datac => \inst10|inst7|Add0~14_combout\,
	datad => \inst10|inst7|Add0~12_combout\,
	combout => \inst10|inst7|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y15_N24
\inst10|inst7|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|Equal0~2_combout\ = (!\inst10|inst7|Add0~16_combout\ & (!\inst10|inst7|Add0~20_combout\ & (!\inst10|inst7|Add0~18_combout\ & !\inst10|inst7|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst7|Add0~16_combout\,
	datab => \inst10|inst7|Add0~20_combout\,
	datac => \inst10|inst7|Add0~18_combout\,
	datad => \inst10|inst7|Add0~22_combout\,
	combout => \inst10|inst7|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y15_N26
\inst10|inst7|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|Equal0~3_combout\ = (!\inst10|inst7|Add0~26_combout\ & (!\inst10|inst7|Add0~24_combout\ & (!\inst10|inst7|Add0~30_combout\ & !\inst10|inst7|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst7|Add0~26_combout\,
	datab => \inst10|inst7|Add0~24_combout\,
	datac => \inst10|inst7|Add0~30_combout\,
	datad => \inst10|inst7|Add0~28_combout\,
	combout => \inst10|inst7|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y16_N0
\inst10|inst7|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|Equal0~0_combout\ = (!\inst10|inst7|Add0~6_combout\ & (!\inst10|inst7|Add0~4_combout\ & (!\inst10|inst33|cnt\(0) & !\inst10|inst7|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst7|Add0~6_combout\,
	datab => \inst10|inst7|Add0~4_combout\,
	datac => \inst10|inst33|cnt\(0),
	datad => \inst10|inst7|Add0~2_combout\,
	combout => \inst10|inst7|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y16_N12
\inst10|inst7|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|Equal0~4_combout\ = (\inst10|inst7|Equal0~1_combout\ & (\inst10|inst7|Equal0~2_combout\ & (\inst10|inst7|Equal0~3_combout\ & \inst10|inst7|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst7|Equal0~1_combout\,
	datab => \inst10|inst7|Equal0~2_combout\,
	datac => \inst10|inst7|Equal0~3_combout\,
	datad => \inst10|inst7|Equal0~0_combout\,
	combout => \inst10|inst7|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y16_N4
\inst10|inst7|out_clk_next~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst7|out_clk_next~0_combout\ = \inst10|inst7|out_clk_next~q\ $ (((!\inst10|inst7|Add0~32_combout\ & \inst10|inst7|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst7|Add0~32_combout\,
	datac => \inst10|inst7|out_clk_next~q\,
	datad => \inst10|inst7|Equal0~4_combout\,
	combout => \inst10|inst7|out_clk_next~0_combout\);

-- Location: FF_X23_Y16_N5
\inst10|inst7|out_clk_next\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst7|out_clk_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst7|out_clk_next~q\);

-- Location: FF_X23_Y18_N9
\inst10|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst10|inst7|out_clk_next~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst9~q\);

-- Location: FF_X23_Y18_N7
\inst10|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst10|inst9~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst10~q\);

-- Location: FF_X22_Y18_N9
\inst8|inst|mouse_data_reg|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|inst|mouse_data_int_reg52|data\(2),
	sload => VCC,
	ena => \inst8|inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_reg|data\(2));

-- Location: LCCOMB_X22_Y18_N22
\inst8|inst|mouse_data_reg|data[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_reg|data[0]~feeder_combout\ = \inst8|inst|mouse_data_int_reg52|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|mouse_data_int_reg52|data\(0),
	combout => \inst8|inst|mouse_data_reg|data[0]~feeder_combout\);

-- Location: FF_X22_Y18_N23
\inst8|inst|mouse_data_reg|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_reg|data[0]~feeder_combout\,
	ena => \inst8|inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_reg|data\(0));

-- Location: LCCOMB_X24_Y18_N0
\inst8|inst|mouse_data_int_reg52|data[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_int_reg52|data[3]~feeder_combout\ = \inst8|inst|inst4|inst31|data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|inst4|inst31|data\(3),
	combout => \inst8|inst|mouse_data_int_reg52|data[3]~feeder_combout\);

-- Location: FF_X24_Y18_N1
\inst8|inst|mouse_data_int_reg52|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_int_reg52|data[3]~feeder_combout\,
	ena => \inst8|inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_int_reg52|data\(3));

-- Location: FF_X23_Y18_N21
\inst8|inst|mouse_data_reg|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|inst|mouse_data_int_reg52|data\(3),
	sload => VCC,
	ena => \inst8|inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_reg|data\(3));

-- Location: LCCOMB_X23_Y18_N0
\inst8|inst|mouse_data_reg|data[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_reg|data[1]~feeder_combout\ = \inst8|inst|mouse_data_int_reg52|data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|mouse_data_int_reg52|data\(1),
	combout => \inst8|inst|mouse_data_reg|data[1]~feeder_combout\);

-- Location: FF_X23_Y18_N1
\inst8|inst|mouse_data_reg|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_reg|data[1]~feeder_combout\,
	ena => \inst8|inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_reg|data\(1));

-- Location: LCCOMB_X23_Y18_N20
\inst8|inst2|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst2|LessThan0~0_combout\ = (\inst8|inst|mouse_data_reg|data\(2)) # ((\inst8|inst|mouse_data_reg|data\(0)) # ((\inst8|inst|mouse_data_reg|data\(3)) # (\inst8|inst|mouse_data_reg|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|mouse_data_reg|data\(2),
	datab => \inst8|inst|mouse_data_reg|data\(0),
	datac => \inst8|inst|mouse_data_reg|data\(3),
	datad => \inst8|inst|mouse_data_reg|data\(1),
	combout => \inst8|inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y18_N6
\inst10|inst48~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst48~0_combout\ = (\inst10|inst9~q\ & (!\inst10|inst10~q\ & ((\inst8|inst2|LessThan0~1_combout\) # (\inst8|inst2|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|LessThan0~1_combout\,
	datab => \inst10|inst9~q\,
	datac => \inst10|inst10~q\,
	datad => \inst8|inst2|LessThan0~0_combout\,
	combout => \inst10|inst48~0_combout\);

-- Location: FF_X24_Y18_N27
\inst8|inst|mouse_data_int_reg|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|inst|mouse_data_int_reg52|data\(5),
	sload => VCC,
	ena => \inst8|inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_int_reg|data\(5));

-- Location: FF_X24_Y18_N13
\inst8|inst|mouse_data_int_reg53|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|inst|mouse_data_int_reg|data\(5),
	sload => VCC,
	ena => \inst8|inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_int_reg53|data\(5));

-- Location: FF_X23_Y18_N25
\inst8|inst|mouse_data_reg|data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|inst|mouse_data_int_reg53|data\(5),
	sload => VCC,
	ena => \inst8|inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_reg|data\(21));

-- Location: LCCOMB_X27_Y22_N10
\inst10|Y_DownSide|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_DownSide|Add0~0_combout\ = \inst10|Y_DownSide|data\(0) $ (GND)
-- \inst10|Y_DownSide|Add0~1\ = CARRY(!\inst10|Y_DownSide|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Y_DownSide|data\(0),
	datad => VCC,
	combout => \inst10|Y_DownSide|Add0~0_combout\,
	cout => \inst10|Y_DownSide|Add0~1\);

-- Location: LCCOMB_X27_Y22_N2
\inst10|Y_DownSide|data[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_DownSide|data[0]~4_combout\ = !\inst10|Y_DownSide|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|Y_DownSide|Add0~0_combout\,
	combout => \inst10|Y_DownSide|data[0]~4_combout\);

-- Location: LCCOMB_X23_Y24_N4
\inst10|Y_UpSide|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_UpSide|Add0~0_combout\ = \inst10|Y_UpSide|data\(0) $ (VCC)
-- \inst10|Y_UpSide|Add0~1\ = CARRY(\inst10|Y_UpSide|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Y_UpSide|data\(0),
	datad => VCC,
	combout => \inst10|Y_UpSide|Add0~0_combout\,
	cout => \inst10|Y_UpSide|Add0~1\);

-- Location: FF_X23_Y24_N5
\inst10|Y_UpSide|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Y_UpSide|Add0~0_combout\,
	ena => \inst10|Y_DownSide|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Y_UpSide|data\(0));

-- Location: LCCOMB_X23_Y24_N6
\inst10|Y_UpSide|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_UpSide|Add0~2_combout\ = (\inst10|Y_UpSide|data\(1) & ((\inst10|inst49~1_combout\ & ((\inst10|Y_UpSide|Add0~1\) # (GND))) # (!\inst10|inst49~1_combout\ & (!\inst10|Y_UpSide|Add0~1\)))) # (!\inst10|Y_UpSide|data\(1) & ((\inst10|inst49~1_combout\ 
-- & (!\inst10|Y_UpSide|Add0~1\)) # (!\inst10|inst49~1_combout\ & (\inst10|Y_UpSide|Add0~1\ & VCC))))
-- \inst10|Y_UpSide|Add0~3\ = CARRY((\inst10|Y_UpSide|data\(1) & ((\inst10|inst49~1_combout\) # (!\inst10|Y_UpSide|Add0~1\))) # (!\inst10|Y_UpSide|data\(1) & (\inst10|inst49~1_combout\ & !\inst10|Y_UpSide|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_UpSide|data\(1),
	datab => \inst10|inst49~1_combout\,
	datad => VCC,
	cin => \inst10|Y_UpSide|Add0~1\,
	combout => \inst10|Y_UpSide|Add0~2_combout\,
	cout => \inst10|Y_UpSide|Add0~3\);

-- Location: LCCOMB_X23_Y25_N24
\inst10|Y_UpSide|data[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_UpSide|data[1]~4_combout\ = !\inst10|Y_UpSide|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|Y_UpSide|Add0~2_combout\,
	combout => \inst10|Y_UpSide|data[1]~4_combout\);

-- Location: FF_X23_Y25_N25
\inst10|Y_UpSide|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Y_UpSide|data[1]~4_combout\,
	ena => \inst10|Y_DownSide|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Y_UpSide|data\(1));

-- Location: LCCOMB_X23_Y24_N8
\inst10|Y_UpSide|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_UpSide|Add0~4_combout\ = ((\inst10|inst49~1_combout\ $ (\inst10|Y_UpSide|data\(2) $ (!\inst10|Y_UpSide|Add0~3\)))) # (GND)
-- \inst10|Y_UpSide|Add0~5\ = CARRY((\inst10|inst49~1_combout\ & (!\inst10|Y_UpSide|data\(2) & !\inst10|Y_UpSide|Add0~3\)) # (!\inst10|inst49~1_combout\ & ((!\inst10|Y_UpSide|Add0~3\) # (!\inst10|Y_UpSide|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst49~1_combout\,
	datab => \inst10|Y_UpSide|data\(2),
	datad => VCC,
	cin => \inst10|Y_UpSide|Add0~3\,
	combout => \inst10|Y_UpSide|Add0~4_combout\,
	cout => \inst10|Y_UpSide|Add0~5\);

-- Location: LCCOMB_X23_Y25_N26
\inst10|Y_UpSide|data[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_UpSide|data[2]~3_combout\ = !\inst10|Y_UpSide|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|Y_UpSide|Add0~4_combout\,
	combout => \inst10|Y_UpSide|data[2]~3_combout\);

-- Location: FF_X23_Y25_N27
\inst10|Y_UpSide|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Y_UpSide|data[2]~3_combout\,
	ena => \inst10|Y_DownSide|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Y_UpSide|data\(2));

-- Location: LCCOMB_X23_Y24_N10
\inst10|Y_UpSide|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_UpSide|Add0~6_combout\ = (\inst10|Y_UpSide|data\(3) & ((\inst10|inst49~1_combout\ & ((\inst10|Y_UpSide|Add0~5\) # (GND))) # (!\inst10|inst49~1_combout\ & (!\inst10|Y_UpSide|Add0~5\)))) # (!\inst10|Y_UpSide|data\(3) & ((\inst10|inst49~1_combout\ 
-- & (!\inst10|Y_UpSide|Add0~5\)) # (!\inst10|inst49~1_combout\ & (\inst10|Y_UpSide|Add0~5\ & VCC))))
-- \inst10|Y_UpSide|Add0~7\ = CARRY((\inst10|Y_UpSide|data\(3) & ((\inst10|inst49~1_combout\) # (!\inst10|Y_UpSide|Add0~5\))) # (!\inst10|Y_UpSide|data\(3) & (\inst10|inst49~1_combout\ & !\inst10|Y_UpSide|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_UpSide|data\(3),
	datab => \inst10|inst49~1_combout\,
	datad => VCC,
	cin => \inst10|Y_UpSide|Add0~5\,
	combout => \inst10|Y_UpSide|Add0~6_combout\,
	cout => \inst10|Y_UpSide|Add0~7\);

-- Location: LCCOMB_X23_Y25_N28
\inst10|Y_UpSide|data[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_UpSide|data[3]~2_combout\ = !\inst10|Y_UpSide|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|Y_UpSide|Add0~6_combout\,
	combout => \inst10|Y_UpSide|data[3]~2_combout\);

-- Location: FF_X23_Y25_N29
\inst10|Y_UpSide|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Y_UpSide|data[3]~2_combout\,
	ena => \inst10|Y_DownSide|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Y_UpSide|data\(3));

-- Location: LCCOMB_X23_Y24_N12
\inst10|Y_UpSide|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_UpSide|Add0~8_combout\ = ((\inst10|inst49~1_combout\ $ (\inst10|Y_UpSide|data\(4) $ (\inst10|Y_UpSide|Add0~7\)))) # (GND)
-- \inst10|Y_UpSide|Add0~9\ = CARRY((\inst10|inst49~1_combout\ & (\inst10|Y_UpSide|data\(4) & !\inst10|Y_UpSide|Add0~7\)) # (!\inst10|inst49~1_combout\ & ((\inst10|Y_UpSide|data\(4)) # (!\inst10|Y_UpSide|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst49~1_combout\,
	datab => \inst10|Y_UpSide|data\(4),
	datad => VCC,
	cin => \inst10|Y_UpSide|Add0~7\,
	combout => \inst10|Y_UpSide|Add0~8_combout\,
	cout => \inst10|Y_UpSide|Add0~9\);

-- Location: FF_X23_Y25_N11
\inst10|Y_UpSide|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst10|Y_UpSide|Add0~8_combout\,
	sload => VCC,
	ena => \inst10|Y_DownSide|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Y_UpSide|data\(4));

-- Location: LCCOMB_X23_Y24_N14
\inst10|Y_UpSide|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_UpSide|Add0~10_combout\ = (\inst10|Y_UpSide|data\(5) & ((\inst10|inst49~1_combout\ & ((\inst10|Y_UpSide|Add0~9\) # (GND))) # (!\inst10|inst49~1_combout\ & (!\inst10|Y_UpSide|Add0~9\)))) # (!\inst10|Y_UpSide|data\(5) & ((\inst10|inst49~1_combout\ 
-- & (!\inst10|Y_UpSide|Add0~9\)) # (!\inst10|inst49~1_combout\ & (\inst10|Y_UpSide|Add0~9\ & VCC))))
-- \inst10|Y_UpSide|Add0~11\ = CARRY((\inst10|Y_UpSide|data\(5) & ((\inst10|inst49~1_combout\) # (!\inst10|Y_UpSide|Add0~9\))) # (!\inst10|Y_UpSide|data\(5) & (\inst10|inst49~1_combout\ & !\inst10|Y_UpSide|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_UpSide|data\(5),
	datab => \inst10|inst49~1_combout\,
	datad => VCC,
	cin => \inst10|Y_UpSide|Add0~9\,
	combout => \inst10|Y_UpSide|Add0~10_combout\,
	cout => \inst10|Y_UpSide|Add0~11\);

-- Location: LCCOMB_X23_Y25_N0
\inst10|Y_UpSide|data[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_UpSide|data[5]~1_combout\ = !\inst10|Y_UpSide|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|Y_UpSide|Add0~10_combout\,
	combout => \inst10|Y_UpSide|data[5]~1_combout\);

-- Location: FF_X23_Y25_N1
\inst10|Y_UpSide|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Y_UpSide|data[5]~1_combout\,
	ena => \inst10|Y_DownSide|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Y_UpSide|data\(5));

-- Location: LCCOMB_X23_Y24_N16
\inst10|Y_UpSide|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_UpSide|Add0~12_combout\ = ((\inst10|inst49~1_combout\ $ (\inst10|Y_UpSide|data\(6) $ (\inst10|Y_UpSide|Add0~11\)))) # (GND)
-- \inst10|Y_UpSide|Add0~13\ = CARRY((\inst10|inst49~1_combout\ & (\inst10|Y_UpSide|data\(6) & !\inst10|Y_UpSide|Add0~11\)) # (!\inst10|inst49~1_combout\ & ((\inst10|Y_UpSide|data\(6)) # (!\inst10|Y_UpSide|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst49~1_combout\,
	datab => \inst10|Y_UpSide|data\(6),
	datad => VCC,
	cin => \inst10|Y_UpSide|Add0~11\,
	combout => \inst10|Y_UpSide|Add0~12_combout\,
	cout => \inst10|Y_UpSide|Add0~13\);

-- Location: FF_X23_Y25_N7
\inst10|Y_UpSide|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst10|Y_UpSide|Add0~12_combout\,
	sload => VCC,
	ena => \inst10|Y_DownSide|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Y_UpSide|data\(6));

-- Location: LCCOMB_X23_Y24_N18
\inst10|Y_UpSide|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_UpSide|Add0~14_combout\ = (\inst10|inst49~1_combout\ & ((\inst10|Y_UpSide|data\(7) & (!\inst10|Y_UpSide|Add0~13\)) # (!\inst10|Y_UpSide|data\(7) & ((\inst10|Y_UpSide|Add0~13\) # (GND))))) # (!\inst10|inst49~1_combout\ & 
-- ((\inst10|Y_UpSide|data\(7) & (\inst10|Y_UpSide|Add0~13\ & VCC)) # (!\inst10|Y_UpSide|data\(7) & (!\inst10|Y_UpSide|Add0~13\))))
-- \inst10|Y_UpSide|Add0~15\ = CARRY((\inst10|inst49~1_combout\ & ((!\inst10|Y_UpSide|Add0~13\) # (!\inst10|Y_UpSide|data\(7)))) # (!\inst10|inst49~1_combout\ & (!\inst10|Y_UpSide|data\(7) & !\inst10|Y_UpSide|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst49~1_combout\,
	datab => \inst10|Y_UpSide|data\(7),
	datad => VCC,
	cin => \inst10|Y_UpSide|Add0~13\,
	combout => \inst10|Y_UpSide|Add0~14_combout\,
	cout => \inst10|Y_UpSide|Add0~15\);

-- Location: FF_X23_Y25_N31
\inst10|Y_UpSide|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst10|Y_UpSide|Add0~14_combout\,
	sload => VCC,
	ena => \inst10|Y_DownSide|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Y_UpSide|data\(7));

-- Location: LCCOMB_X23_Y24_N20
\inst10|Y_UpSide|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_UpSide|Add0~16_combout\ = ((\inst10|inst49~1_combout\ $ (\inst10|Y_UpSide|data\(8) $ (!\inst10|Y_UpSide|Add0~15\)))) # (GND)
-- \inst10|Y_UpSide|Add0~17\ = CARRY((\inst10|inst49~1_combout\ & (!\inst10|Y_UpSide|data\(8) & !\inst10|Y_UpSide|Add0~15\)) # (!\inst10|inst49~1_combout\ & ((!\inst10|Y_UpSide|Add0~15\) # (!\inst10|Y_UpSide|data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst49~1_combout\,
	datab => \inst10|Y_UpSide|data\(8),
	datad => VCC,
	cin => \inst10|Y_UpSide|Add0~15\,
	combout => \inst10|Y_UpSide|Add0~16_combout\,
	cout => \inst10|Y_UpSide|Add0~17\);

-- Location: LCCOMB_X23_Y25_N4
\inst10|Y_UpSide|data[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_UpSide|data[8]~0_combout\ = !\inst10|Y_UpSide|Add0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|Y_UpSide|Add0~16_combout\,
	combout => \inst10|Y_UpSide|data[8]~0_combout\);

-- Location: FF_X23_Y25_N5
\inst10|Y_UpSide|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Y_UpSide|data[8]~0_combout\,
	ena => \inst10|Y_DownSide|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Y_UpSide|data\(8));

-- Location: LCCOMB_X23_Y24_N26
\inst10|inst44|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst44|LessThan1~0_combout\ = (\inst10|Y_UpSide|data\(6)) # (((\inst10|Y_UpSide|data\(7)) # (\inst10|Y_UpSide|data\(9))) # (!\inst10|Y_UpSide|data\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_UpSide|data\(6),
	datab => \inst10|Y_UpSide|data\(8),
	datac => \inst10|Y_UpSide|data\(7),
	datad => \inst10|Y_UpSide|data\(9),
	combout => \inst10|inst44|LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y24_N28
\inst10|inst44|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst44|LessThan1~1_combout\ = (((\inst10|Y_UpSide|data\(0) & !\inst10|Y_UpSide|data\(1))) # (!\inst10|Y_UpSide|data\(2))) # (!\inst10|Y_UpSide|data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_UpSide|data\(3),
	datab => \inst10|Y_UpSide|data\(2),
	datac => \inst10|Y_UpSide|data\(0),
	datad => \inst10|Y_UpSide|data\(1),
	combout => \inst10|inst44|LessThan1~1_combout\);

-- Location: LCCOMB_X23_Y24_N2
\inst10|inst44|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst44|LessThan1~2_combout\ = (\inst10|inst44|LessThan1~0_combout\) # ((\inst10|inst44|LessThan1~1_combout\ & (!\inst10|Y_UpSide|data\(5) & \inst10|Y_UpSide|data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst44|LessThan1~0_combout\,
	datab => \inst10|inst44|LessThan1~1_combout\,
	datac => \inst10|Y_UpSide|data\(5),
	datad => \inst10|Y_UpSide|data\(4),
	combout => \inst10|inst44|LessThan1~2_combout\);

-- Location: LCCOMB_X23_Y18_N30
\inst10|Y_DownSide|data[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_DownSide|data[7]~0_combout\ = (\inst10|inst48~0_combout\ & ((\inst8|inst|mouse_data_reg|data\(21) & ((\inst10|inst49~0_combout\))) # (!\inst8|inst|mouse_data_reg|data\(21) & (\inst10|inst44|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|mouse_data_reg|data\(21),
	datab => \inst10|inst48~0_combout\,
	datac => \inst10|inst44|LessThan1~2_combout\,
	datad => \inst10|inst49~0_combout\,
	combout => \inst10|Y_DownSide|data[7]~0_combout\);

-- Location: FF_X27_Y22_N3
\inst10|Y_DownSide|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Y_DownSide|data[0]~4_combout\,
	ena => \inst10|Y_DownSide|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Y_DownSide|data\(0));

-- Location: LCCOMB_X27_Y22_N12
\inst10|Y_DownSide|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_DownSide|Add0~2_combout\ = (\inst10|inst49~1_combout\ & ((\inst10|Y_DownSide|data\(1) & (!\inst10|Y_DownSide|Add0~1\)) # (!\inst10|Y_DownSide|data\(1) & ((\inst10|Y_DownSide|Add0~1\) # (GND))))) # (!\inst10|inst49~1_combout\ & 
-- ((\inst10|Y_DownSide|data\(1) & (\inst10|Y_DownSide|Add0~1\ & VCC)) # (!\inst10|Y_DownSide|data\(1) & (!\inst10|Y_DownSide|Add0~1\))))
-- \inst10|Y_DownSide|Add0~3\ = CARRY((\inst10|inst49~1_combout\ & ((!\inst10|Y_DownSide|Add0~1\) # (!\inst10|Y_DownSide|data\(1)))) # (!\inst10|inst49~1_combout\ & (!\inst10|Y_DownSide|data\(1) & !\inst10|Y_DownSide|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst49~1_combout\,
	datab => \inst10|Y_DownSide|data\(1),
	datad => VCC,
	cin => \inst10|Y_DownSide|Add0~1\,
	combout => \inst10|Y_DownSide|Add0~2_combout\,
	cout => \inst10|Y_DownSide|Add0~3\);

-- Location: FF_X27_Y22_N13
\inst10|Y_DownSide|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Y_DownSide|Add0~2_combout\,
	ena => \inst10|Y_DownSide|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Y_DownSide|data\(1));

-- Location: LCCOMB_X27_Y22_N14
\inst10|Y_DownSide|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_DownSide|Add0~4_combout\ = ((\inst10|inst49~1_combout\ $ (\inst10|Y_DownSide|data\(2) $ (\inst10|Y_DownSide|Add0~3\)))) # (GND)
-- \inst10|Y_DownSide|Add0~5\ = CARRY((\inst10|inst49~1_combout\ & (\inst10|Y_DownSide|data\(2) & !\inst10|Y_DownSide|Add0~3\)) # (!\inst10|inst49~1_combout\ & ((\inst10|Y_DownSide|data\(2)) # (!\inst10|Y_DownSide|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst49~1_combout\,
	datab => \inst10|Y_DownSide|data\(2),
	datad => VCC,
	cin => \inst10|Y_DownSide|Add0~3\,
	combout => \inst10|Y_DownSide|Add0~4_combout\,
	cout => \inst10|Y_DownSide|Add0~5\);

-- Location: FF_X27_Y22_N15
\inst10|Y_DownSide|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Y_DownSide|Add0~4_combout\,
	ena => \inst10|Y_DownSide|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Y_DownSide|data\(2));

-- Location: LCCOMB_X27_Y22_N16
\inst10|Y_DownSide|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_DownSide|Add0~6_combout\ = (\inst10|inst49~1_combout\ & ((\inst10|Y_DownSide|data\(3) & (!\inst10|Y_DownSide|Add0~5\)) # (!\inst10|Y_DownSide|data\(3) & ((\inst10|Y_DownSide|Add0~5\) # (GND))))) # (!\inst10|inst49~1_combout\ & 
-- ((\inst10|Y_DownSide|data\(3) & (\inst10|Y_DownSide|Add0~5\ & VCC)) # (!\inst10|Y_DownSide|data\(3) & (!\inst10|Y_DownSide|Add0~5\))))
-- \inst10|Y_DownSide|Add0~7\ = CARRY((\inst10|inst49~1_combout\ & ((!\inst10|Y_DownSide|Add0~5\) # (!\inst10|Y_DownSide|data\(3)))) # (!\inst10|inst49~1_combout\ & (!\inst10|Y_DownSide|data\(3) & !\inst10|Y_DownSide|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst49~1_combout\,
	datab => \inst10|Y_DownSide|data\(3),
	datad => VCC,
	cin => \inst10|Y_DownSide|Add0~5\,
	combout => \inst10|Y_DownSide|Add0~6_combout\,
	cout => \inst10|Y_DownSide|Add0~7\);

-- Location: FF_X27_Y22_N17
\inst10|Y_DownSide|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Y_DownSide|Add0~6_combout\,
	ena => \inst10|Y_DownSide|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Y_DownSide|data\(3));

-- Location: LCCOMB_X27_Y22_N18
\inst10|Y_DownSide|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_DownSide|Add0~8_combout\ = ((\inst10|inst49~1_combout\ $ (\inst10|Y_DownSide|data\(4) $ (!\inst10|Y_DownSide|Add0~7\)))) # (GND)
-- \inst10|Y_DownSide|Add0~9\ = CARRY((\inst10|inst49~1_combout\ & (!\inst10|Y_DownSide|data\(4) & !\inst10|Y_DownSide|Add0~7\)) # (!\inst10|inst49~1_combout\ & ((!\inst10|Y_DownSide|Add0~7\) # (!\inst10|Y_DownSide|data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst49~1_combout\,
	datab => \inst10|Y_DownSide|data\(4),
	datad => VCC,
	cin => \inst10|Y_DownSide|Add0~7\,
	combout => \inst10|Y_DownSide|Add0~8_combout\,
	cout => \inst10|Y_DownSide|Add0~9\);

-- Location: LCCOMB_X27_Y22_N4
\inst10|Y_DownSide|data[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_DownSide|data[4]~3_combout\ = !\inst10|Y_DownSide|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|Y_DownSide|Add0~8_combout\,
	combout => \inst10|Y_DownSide|data[4]~3_combout\);

-- Location: FF_X27_Y22_N5
\inst10|Y_DownSide|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Y_DownSide|data[4]~3_combout\,
	ena => \inst10|Y_DownSide|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Y_DownSide|data\(4));

-- Location: LCCOMB_X27_Y22_N20
\inst10|Y_DownSide|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_DownSide|Add0~10_combout\ = (\inst10|Y_DownSide|data\(5) & ((\inst10|inst49~1_combout\ & ((\inst10|Y_DownSide|Add0~9\) # (GND))) # (!\inst10|inst49~1_combout\ & (!\inst10|Y_DownSide|Add0~9\)))) # (!\inst10|Y_DownSide|data\(5) & 
-- ((\inst10|inst49~1_combout\ & (!\inst10|Y_DownSide|Add0~9\)) # (!\inst10|inst49~1_combout\ & (\inst10|Y_DownSide|Add0~9\ & VCC))))
-- \inst10|Y_DownSide|Add0~11\ = CARRY((\inst10|Y_DownSide|data\(5) & ((\inst10|inst49~1_combout\) # (!\inst10|Y_DownSide|Add0~9\))) # (!\inst10|Y_DownSide|data\(5) & (\inst10|inst49~1_combout\ & !\inst10|Y_DownSide|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_DownSide|data\(5),
	datab => \inst10|inst49~1_combout\,
	datad => VCC,
	cin => \inst10|Y_DownSide|Add0~9\,
	combout => \inst10|Y_DownSide|Add0~10_combout\,
	cout => \inst10|Y_DownSide|Add0~11\);

-- Location: LCCOMB_X27_Y22_N6
\inst10|Y_DownSide|data[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_DownSide|data[5]~2_combout\ = !\inst10|Y_DownSide|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|Y_DownSide|Add0~10_combout\,
	combout => \inst10|Y_DownSide|data[5]~2_combout\);

-- Location: FF_X27_Y22_N7
\inst10|Y_DownSide|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Y_DownSide|data[5]~2_combout\,
	ena => \inst10|Y_DownSide|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Y_DownSide|data\(5));

-- Location: LCCOMB_X27_Y22_N22
\inst10|Y_DownSide|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_DownSide|Add0~12_combout\ = ((\inst10|inst49~1_combout\ $ (\inst10|Y_DownSide|data\(6) $ (\inst10|Y_DownSide|Add0~11\)))) # (GND)
-- \inst10|Y_DownSide|Add0~13\ = CARRY((\inst10|inst49~1_combout\ & (\inst10|Y_DownSide|data\(6) & !\inst10|Y_DownSide|Add0~11\)) # (!\inst10|inst49~1_combout\ & ((\inst10|Y_DownSide|data\(6)) # (!\inst10|Y_DownSide|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst49~1_combout\,
	datab => \inst10|Y_DownSide|data\(6),
	datad => VCC,
	cin => \inst10|Y_DownSide|Add0~11\,
	combout => \inst10|Y_DownSide|Add0~12_combout\,
	cout => \inst10|Y_DownSide|Add0~13\);

-- Location: FF_X27_Y22_N23
\inst10|Y_DownSide|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Y_DownSide|Add0~12_combout\,
	ena => \inst10|Y_DownSide|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Y_DownSide|data\(6));

-- Location: LCCOMB_X27_Y22_N24
\inst10|Y_DownSide|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_DownSide|Add0~14_combout\ = (\inst10|inst49~1_combout\ & ((\inst10|Y_DownSide|data\(7) & (!\inst10|Y_DownSide|Add0~13\)) # (!\inst10|Y_DownSide|data\(7) & ((\inst10|Y_DownSide|Add0~13\) # (GND))))) # (!\inst10|inst49~1_combout\ & 
-- ((\inst10|Y_DownSide|data\(7) & (\inst10|Y_DownSide|Add0~13\ & VCC)) # (!\inst10|Y_DownSide|data\(7) & (!\inst10|Y_DownSide|Add0~13\))))
-- \inst10|Y_DownSide|Add0~15\ = CARRY((\inst10|inst49~1_combout\ & ((!\inst10|Y_DownSide|Add0~13\) # (!\inst10|Y_DownSide|data\(7)))) # (!\inst10|inst49~1_combout\ & (!\inst10|Y_DownSide|data\(7) & !\inst10|Y_DownSide|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst49~1_combout\,
	datab => \inst10|Y_DownSide|data\(7),
	datad => VCC,
	cin => \inst10|Y_DownSide|Add0~13\,
	combout => \inst10|Y_DownSide|Add0~14_combout\,
	cout => \inst10|Y_DownSide|Add0~15\);

-- Location: FF_X27_Y22_N25
\inst10|Y_DownSide|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Y_DownSide|Add0~14_combout\,
	ena => \inst10|Y_DownSide|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Y_DownSide|data\(7));

-- Location: LCCOMB_X27_Y22_N26
\inst10|Y_DownSide|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_DownSide|Add0~16_combout\ = ((\inst10|inst49~1_combout\ $ (\inst10|Y_DownSide|data\(8) $ (!\inst10|Y_DownSide|Add0~15\)))) # (GND)
-- \inst10|Y_DownSide|Add0~17\ = CARRY((\inst10|inst49~1_combout\ & (!\inst10|Y_DownSide|data\(8) & !\inst10|Y_DownSide|Add0~15\)) # (!\inst10|inst49~1_combout\ & ((!\inst10|Y_DownSide|Add0~15\) # (!\inst10|Y_DownSide|data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst49~1_combout\,
	datab => \inst10|Y_DownSide|data\(8),
	datad => VCC,
	cin => \inst10|Y_DownSide|Add0~15\,
	combout => \inst10|Y_DownSide|Add0~16_combout\,
	cout => \inst10|Y_DownSide|Add0~17\);

-- Location: LCCOMB_X27_Y22_N0
\inst10|Y_DownSide|data[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_DownSide|data[8]~1_combout\ = !\inst10|Y_DownSide|Add0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Y_DownSide|Add0~16_combout\,
	combout => \inst10|Y_DownSide|data[8]~1_combout\);

-- Location: FF_X27_Y22_N1
\inst10|Y_DownSide|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Y_DownSide|data[8]~1_combout\,
	ena => \inst10|Y_DownSide|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Y_DownSide|data\(8));

-- Location: LCCOMB_X28_Y22_N4
\inst10|inst46|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst46|LessThan0~0_combout\ = (!\inst10|Y_DownSide|data\(3) & (((\inst10|Y_DownSide|data\(0)) # (!\inst10|Y_DownSide|data\(2))) # (!\inst10|Y_DownSide|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_DownSide|data\(1),
	datab => \inst10|Y_DownSide|data\(0),
	datac => \inst10|Y_DownSide|data\(3),
	datad => \inst10|Y_DownSide|data\(2),
	combout => \inst10|inst46|LessThan0~0_combout\);

-- Location: LCCOMB_X27_Y22_N8
\inst10|inst46|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst46|LessThan0~1_combout\ = ((\inst10|Y_DownSide|data\(5) & ((\inst10|Y_DownSide|data\(4)) # (\inst10|inst46|LessThan0~0_combout\)))) # (!\inst10|Y_DownSide|data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_DownSide|data\(5),
	datab => \inst10|Y_DownSide|data\(6),
	datac => \inst10|Y_DownSide|data\(4),
	datad => \inst10|inst46|LessThan0~0_combout\,
	combout => \inst10|inst46|LessThan0~1_combout\);

-- Location: LCCOMB_X27_Y22_N28
\inst10|Y_DownSide|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_DownSide|Add0~18_combout\ = \inst10|Y_DownSide|data\(9) $ (\inst10|Y_DownSide|Add0~17\ $ (!\inst10|inst49~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Y_DownSide|data\(9),
	datad => \inst10|inst49~1_combout\,
	cin => \inst10|Y_DownSide|Add0~17\,
	combout => \inst10|Y_DownSide|Add0~18_combout\);

-- Location: FF_X27_Y22_N29
\inst10|Y_DownSide|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Y_DownSide|Add0~18_combout\,
	ena => \inst10|Y_DownSide|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Y_DownSide|data\(9));

-- Location: LCCOMB_X27_Y22_N30
\inst10|inst49~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst49~0_combout\ = ((\inst10|Y_DownSide|data\(8) & (!\inst10|Y_DownSide|data\(7) & \inst10|inst46|LessThan0~1_combout\))) # (!\inst10|Y_DownSide|data\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_DownSide|data\(8),
	datab => \inst10|Y_DownSide|data\(7),
	datac => \inst10|inst46|LessThan0~1_combout\,
	datad => \inst10|Y_DownSide|data\(9),
	combout => \inst10|inst49~0_combout\);

-- Location: LCCOMB_X23_Y18_N24
\inst10|inst49~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst49~1_combout\ = (\inst10|inst48~0_combout\ & (\inst8|inst|mouse_data_reg|data\(21) & \inst10|inst49~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst48~0_combout\,
	datac => \inst8|inst|mouse_data_reg|data\(21),
	datad => \inst10|inst49~0_combout\,
	combout => \inst10|inst49~1_combout\);

-- Location: LCCOMB_X23_Y24_N22
\inst10|Y_UpSide|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Y_UpSide|Add0~18_combout\ = \inst10|inst49~1_combout\ $ (\inst10|Y_UpSide|Add0~17\ $ (!\inst10|Y_UpSide|data\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst49~1_combout\,
	datad => \inst10|Y_UpSide|data\(9),
	cin => \inst10|Y_UpSide|Add0~17\,
	combout => \inst10|Y_UpSide|Add0~18_combout\);

-- Location: FF_X23_Y25_N23
\inst10|Y_UpSide|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst10|Y_UpSide|Add0~18_combout\,
	sload => VCC,
	ena => \inst10|Y_DownSide|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|Y_UpSide|data\(9));

-- Location: LCCOMB_X23_Y25_N6
\inst12|inst2|C[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst2|C[1]~1_cout\ = CARRY(!\inst10|Y_UpSide|data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Y_UpSide|data\(1),
	datad => VCC,
	cout => \inst12|inst2|C[1]~1_cout\);

-- Location: LCCOMB_X23_Y25_N8
\inst12|inst2|C[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst2|C[2]~2_combout\ = (\inst10|Y_UpSide|data\(2) & (!\inst12|inst2|C[1]~1_cout\)) # (!\inst10|Y_UpSide|data\(2) & (\inst12|inst2|C[1]~1_cout\ & VCC))
-- \inst12|inst2|C[2]~3\ = CARRY((\inst10|Y_UpSide|data\(2) & !\inst12|inst2|C[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_UpSide|data\(2),
	datad => VCC,
	cin => \inst12|inst2|C[1]~1_cout\,
	combout => \inst12|inst2|C[2]~2_combout\,
	cout => \inst12|inst2|C[2]~3\);

-- Location: LCCOMB_X23_Y25_N10
\inst12|inst2|C[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst2|C[3]~4_combout\ = (\inst10|Y_UpSide|data\(3) & (\inst12|inst2|C[2]~3\ $ (GND))) # (!\inst10|Y_UpSide|data\(3) & ((GND) # (!\inst12|inst2|C[2]~3\)))
-- \inst12|inst2|C[3]~5\ = CARRY((!\inst12|inst2|C[2]~3\) # (!\inst10|Y_UpSide|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Y_UpSide|data\(3),
	datad => VCC,
	cin => \inst12|inst2|C[2]~3\,
	combout => \inst12|inst2|C[3]~4_combout\,
	cout => \inst12|inst2|C[3]~5\);

-- Location: LCCOMB_X23_Y25_N12
\inst12|inst2|C[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst2|C[4]~6_combout\ = (\inst10|Y_UpSide|data\(4) & (!\inst12|inst2|C[3]~5\)) # (!\inst10|Y_UpSide|data\(4) & ((\inst12|inst2|C[3]~5\) # (GND)))
-- \inst12|inst2|C[4]~7\ = CARRY((!\inst12|inst2|C[3]~5\) # (!\inst10|Y_UpSide|data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_UpSide|data\(4),
	datad => VCC,
	cin => \inst12|inst2|C[3]~5\,
	combout => \inst12|inst2|C[4]~6_combout\,
	cout => \inst12|inst2|C[4]~7\);

-- Location: LCCOMB_X23_Y25_N14
\inst12|inst2|C[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst2|C[5]~8_combout\ = (\inst10|Y_UpSide|data\(5) & (!\inst12|inst2|C[4]~7\ & VCC)) # (!\inst10|Y_UpSide|data\(5) & (\inst12|inst2|C[4]~7\ $ (GND)))
-- \inst12|inst2|C[5]~9\ = CARRY((!\inst10|Y_UpSide|data\(5) & !\inst12|inst2|C[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Y_UpSide|data\(5),
	datad => VCC,
	cin => \inst12|inst2|C[4]~7\,
	combout => \inst12|inst2|C[5]~8_combout\,
	cout => \inst12|inst2|C[5]~9\);

-- Location: LCCOMB_X23_Y25_N16
\inst12|inst2|C[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst2|C[6]~10_combout\ = (\inst10|Y_UpSide|data\(6) & (\inst12|inst2|C[5]~9\ & VCC)) # (!\inst10|Y_UpSide|data\(6) & (!\inst12|inst2|C[5]~9\))
-- \inst12|inst2|C[6]~11\ = CARRY((!\inst10|Y_UpSide|data\(6) & !\inst12|inst2|C[5]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_UpSide|data\(6),
	datad => VCC,
	cin => \inst12|inst2|C[5]~9\,
	combout => \inst12|inst2|C[6]~10_combout\,
	cout => \inst12|inst2|C[6]~11\);

-- Location: LCCOMB_X23_Y25_N18
\inst12|inst2|C[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst2|C[7]~12_combout\ = (\inst10|Y_UpSide|data\(7) & ((GND) # (!\inst12|inst2|C[6]~11\))) # (!\inst10|Y_UpSide|data\(7) & (\inst12|inst2|C[6]~11\ $ (GND)))
-- \inst12|inst2|C[7]~13\ = CARRY((\inst10|Y_UpSide|data\(7)) # (!\inst12|inst2|C[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_UpSide|data\(7),
	datad => VCC,
	cin => \inst12|inst2|C[6]~11\,
	combout => \inst12|inst2|C[7]~12_combout\,
	cout => \inst12|inst2|C[7]~13\);

-- Location: LCCOMB_X23_Y25_N20
\inst12|inst2|C[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst2|C[8]~14_combout\ = (\inst10|Y_UpSide|data\(8) & (!\inst12|inst2|C[7]~13\)) # (!\inst10|Y_UpSide|data\(8) & (\inst12|inst2|C[7]~13\ & VCC))
-- \inst12|inst2|C[8]~15\ = CARRY((\inst10|Y_UpSide|data\(8) & !\inst12|inst2|C[7]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Y_UpSide|data\(8),
	datad => VCC,
	cin => \inst12|inst2|C[7]~13\,
	combout => \inst12|inst2|C[8]~14_combout\,
	cout => \inst12|inst2|C[8]~15\);

-- Location: LCCOMB_X23_Y25_N22
\inst12|inst2|C[9]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst2|C[9]~16_combout\ = \inst10|Y_UpSide|data\(9) $ (\inst12|inst2|C[8]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_UpSide|data\(9),
	cin => \inst12|inst2|C[8]~15\,
	combout => \inst12|inst2|C[9]~16_combout\);

-- Location: LCCOMB_X19_Y25_N0
\inst12|inst35|inst5|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst5|LessThan1~1_cout\ = CARRY((\inst12|inst2|C[2]~2_combout\ & \inst12|inst35|inst4|data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst2|C[2]~2_combout\,
	datab => \inst12|inst35|inst4|data\(0),
	datad => VCC,
	cout => \inst12|inst35|inst5|LessThan1~1_cout\);

-- Location: LCCOMB_X19_Y25_N2
\inst12|inst35|inst5|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst5|LessThan1~3_cout\ = CARRY((\inst12|inst2|C[3]~4_combout\ & (!\inst12|inst35|inst4|data\(1) & !\inst12|inst35|inst5|LessThan1~1_cout\)) # (!\inst12|inst2|C[3]~4_combout\ & ((!\inst12|inst35|inst5|LessThan1~1_cout\) # 
-- (!\inst12|inst35|inst4|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst2|C[3]~4_combout\,
	datab => \inst12|inst35|inst4|data\(1),
	datad => VCC,
	cin => \inst12|inst35|inst5|LessThan1~1_cout\,
	cout => \inst12|inst35|inst5|LessThan1~3_cout\);

-- Location: LCCOMB_X19_Y25_N4
\inst12|inst35|inst5|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst5|LessThan1~5_cout\ = CARRY((\inst12|inst35|inst4|data\(2) & ((\inst12|inst2|C[4]~6_combout\) # (!\inst12|inst35|inst5|LessThan1~3_cout\))) # (!\inst12|inst35|inst4|data\(2) & (\inst12|inst2|C[4]~6_combout\ & 
-- !\inst12|inst35|inst5|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst4|data\(2),
	datab => \inst12|inst2|C[4]~6_combout\,
	datad => VCC,
	cin => \inst12|inst35|inst5|LessThan1~3_cout\,
	cout => \inst12|inst35|inst5|LessThan1~5_cout\);

-- Location: LCCOMB_X19_Y25_N6
\inst12|inst35|inst5|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst5|LessThan1~7_cout\ = CARRY((\inst12|inst35|inst4|data\(3) & (!\inst12|inst2|C[5]~8_combout\ & !\inst12|inst35|inst5|LessThan1~5_cout\)) # (!\inst12|inst35|inst4|data\(3) & ((!\inst12|inst35|inst5|LessThan1~5_cout\) # 
-- (!\inst12|inst2|C[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst4|data\(3),
	datab => \inst12|inst2|C[5]~8_combout\,
	datad => VCC,
	cin => \inst12|inst35|inst5|LessThan1~5_cout\,
	cout => \inst12|inst35|inst5|LessThan1~7_cout\);

-- Location: LCCOMB_X19_Y25_N8
\inst12|inst35|inst5|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst5|LessThan1~9_cout\ = CARRY((\inst12|inst2|C[6]~10_combout\ & ((\inst12|inst35|inst4|data\(4)) # (!\inst12|inst35|inst5|LessThan1~7_cout\))) # (!\inst12|inst2|C[6]~10_combout\ & (\inst12|inst35|inst4|data\(4) & 
-- !\inst12|inst35|inst5|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst2|C[6]~10_combout\,
	datab => \inst12|inst35|inst4|data\(4),
	datad => VCC,
	cin => \inst12|inst35|inst5|LessThan1~7_cout\,
	cout => \inst12|inst35|inst5|LessThan1~9_cout\);

-- Location: LCCOMB_X19_Y25_N10
\inst12|inst35|inst5|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst5|LessThan1~11_cout\ = CARRY((\inst12|inst35|inst4|data\(5) & (!\inst12|inst2|C[7]~12_combout\ & !\inst12|inst35|inst5|LessThan1~9_cout\)) # (!\inst12|inst35|inst4|data\(5) & ((!\inst12|inst35|inst5|LessThan1~9_cout\) # 
-- (!\inst12|inst2|C[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst4|data\(5),
	datab => \inst12|inst2|C[7]~12_combout\,
	datad => VCC,
	cin => \inst12|inst35|inst5|LessThan1~9_cout\,
	cout => \inst12|inst35|inst5|LessThan1~11_cout\);

-- Location: LCCOMB_X19_Y25_N12
\inst12|inst35|inst5|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst5|LessThan1~13_cout\ = CARRY((\inst12|inst35|inst4|data\(6) & (\inst12|inst2|C[8]~14_combout\ & !\inst12|inst35|inst5|LessThan1~11_cout\)) # (!\inst12|inst35|inst4|data\(6) & ((\inst12|inst2|C[8]~14_combout\) # 
-- (!\inst12|inst35|inst5|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst4|data\(6),
	datab => \inst12|inst2|C[8]~14_combout\,
	datad => VCC,
	cin => \inst12|inst35|inst5|LessThan1~11_cout\,
	cout => \inst12|inst35|inst5|LessThan1~13_cout\);

-- Location: LCCOMB_X19_Y25_N14
\inst12|inst35|inst5|LessThan1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst5|LessThan1~14_combout\ = (\inst12|inst2|C[9]~16_combout\ & ((\inst12|inst35|inst5|LessThan1~13_cout\) # (!\inst12|inst35|inst4|data\(7)))) # (!\inst12|inst2|C[9]~16_combout\ & (!\inst12|inst35|inst4|data\(7) & 
-- \inst12|inst35|inst5|LessThan1~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst2|C[9]~16_combout\,
	datab => \inst12|inst35|inst4|data\(7),
	cin => \inst12|inst35|inst5|LessThan1~13_cout\,
	combout => \inst12|inst35|inst5|LessThan1~14_combout\);

-- Location: LCCOMB_X22_Y25_N30
\inst12|inst35|inst1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst1~1_combout\ = (\inst12|inst35|inst4|data\(4) & (!\inst12|inst35|inst4|data\(6) & \inst12|inst35|inst4|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst35|inst4|data\(4),
	datac => \inst12|inst35|inst4|data\(6),
	datad => \inst12|inst35|inst4|data\(5),
	combout => \inst12|inst35|inst1~1_combout\);

-- Location: LCCOMB_X22_Y25_N0
\inst12|inst35|inst1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst1~0_combout\ = (\inst12|inst35|inst4|data\(1) & (\inst12|inst35|inst4|data\(0) & \inst12|inst35|inst4|data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst4|data\(1),
	datac => \inst12|inst35|inst4|data\(0),
	datad => \inst12|inst35|inst4|data\(2),
	combout => \inst12|inst35|inst1~0_combout\);

-- Location: LCCOMB_X22_Y25_N4
\inst12|inst35|inst15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst15~0_combout\ = ((\inst12|inst35|inst1~1_combout\ & ((\inst12|inst35|inst1~0_combout\) # (\inst12|inst35|inst4|data\(3))))) # (!\inst12|inst35|inst4|data\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst1~1_combout\,
	datab => \inst12|inst35|inst1~0_combout\,
	datac => \inst12|inst35|inst4|data\(7),
	datad => \inst12|inst35|inst4|data\(3),
	combout => \inst12|inst35|inst15~0_combout\);

-- Location: LCCOMB_X19_Y25_N24
\inst12|inst35|inst15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst15~1_combout\ = (!\inst12|inst35|inst4|data\(8) & (!\inst12|inst35|inst4|data\(9) & (\inst12|inst35|inst5|LessThan1~14_combout\ & \inst12|inst35|inst15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst4|data\(8),
	datab => \inst12|inst35|inst4|data\(9),
	datac => \inst12|inst35|inst5|LessThan1~14_combout\,
	datad => \inst12|inst35|inst15~0_combout\,
	combout => \inst12|inst35|inst15~1_combout\);

-- Location: LCCOMB_X24_Y25_N18
\inst12|inst35|inst4|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst4|Add0~18_combout\ = \inst12|inst35|inst4|data\(9) $ (\inst12|inst35|inst4|Add0~17\ $ (!\inst12|inst35|inst15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst35|inst4|data\(9),
	datad => \inst12|inst35|inst15~1_combout\,
	cin => \inst12|inst35|inst4|Add0~17\,
	combout => \inst12|inst35|inst4|Add0~18_combout\);

-- Location: FF_X24_Y25_N19
\inst12|inst35|inst4|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst35|inst4|Add0~18_combout\,
	ena => \inst12|inst35|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst35|inst4|data\(9));

-- Location: LCCOMB_X22_Y25_N8
\inst12|inst35|inst1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst1~2_combout\ = (\inst12|inst35|inst1~1_combout\ & (!\inst12|inst35|inst4|data\(7) & (\inst12|inst35|inst4|data\(3) & \inst12|inst35|inst1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst1~1_combout\,
	datab => \inst12|inst35|inst4|data\(7),
	datac => \inst12|inst35|inst4|data\(3),
	datad => \inst12|inst35|inst1~0_combout\,
	combout => \inst12|inst35|inst1~2_combout\);

-- Location: LCCOMB_X22_Y25_N12
\inst12|inst35|inst5|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst5|LessThan0~1_cout\ = CARRY((!\inst12|inst35|inst4|data\(0) & !\inst12|inst2|C[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst4|data\(0),
	datab => \inst12|inst2|C[2]~2_combout\,
	datad => VCC,
	cout => \inst12|inst35|inst5|LessThan0~1_cout\);

-- Location: LCCOMB_X22_Y25_N14
\inst12|inst35|inst5|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst5|LessThan0~3_cout\ = CARRY((\inst12|inst35|inst4|data\(1) & ((\inst12|inst2|C[3]~4_combout\) # (!\inst12|inst35|inst5|LessThan0~1_cout\))) # (!\inst12|inst35|inst4|data\(1) & (\inst12|inst2|C[3]~4_combout\ & 
-- !\inst12|inst35|inst5|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst4|data\(1),
	datab => \inst12|inst2|C[3]~4_combout\,
	datad => VCC,
	cin => \inst12|inst35|inst5|LessThan0~1_cout\,
	cout => \inst12|inst35|inst5|LessThan0~3_cout\);

-- Location: LCCOMB_X22_Y25_N16
\inst12|inst35|inst5|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst5|LessThan0~5_cout\ = CARRY((\inst12|inst35|inst4|data\(2) & (!\inst12|inst2|C[4]~6_combout\ & !\inst12|inst35|inst5|LessThan0~3_cout\)) # (!\inst12|inst35|inst4|data\(2) & ((!\inst12|inst35|inst5|LessThan0~3_cout\) # 
-- (!\inst12|inst2|C[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst4|data\(2),
	datab => \inst12|inst2|C[4]~6_combout\,
	datad => VCC,
	cin => \inst12|inst35|inst5|LessThan0~3_cout\,
	cout => \inst12|inst35|inst5|LessThan0~5_cout\);

-- Location: LCCOMB_X22_Y25_N18
\inst12|inst35|inst5|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst5|LessThan0~7_cout\ = CARRY((\inst12|inst35|inst4|data\(3) & ((\inst12|inst2|C[5]~8_combout\) # (!\inst12|inst35|inst5|LessThan0~5_cout\))) # (!\inst12|inst35|inst4|data\(3) & (\inst12|inst2|C[5]~8_combout\ & 
-- !\inst12|inst35|inst5|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst4|data\(3),
	datab => \inst12|inst2|C[5]~8_combout\,
	datad => VCC,
	cin => \inst12|inst35|inst5|LessThan0~5_cout\,
	cout => \inst12|inst35|inst5|LessThan0~7_cout\);

-- Location: LCCOMB_X22_Y25_N20
\inst12|inst35|inst5|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst5|LessThan0~9_cout\ = CARRY((\inst12|inst35|inst4|data\(4) & (!\inst12|inst2|C[6]~10_combout\ & !\inst12|inst35|inst5|LessThan0~7_cout\)) # (!\inst12|inst35|inst4|data\(4) & ((!\inst12|inst35|inst5|LessThan0~7_cout\) # 
-- (!\inst12|inst2|C[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst4|data\(4),
	datab => \inst12|inst2|C[6]~10_combout\,
	datad => VCC,
	cin => \inst12|inst35|inst5|LessThan0~7_cout\,
	cout => \inst12|inst35|inst5|LessThan0~9_cout\);

-- Location: LCCOMB_X22_Y25_N22
\inst12|inst35|inst5|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst5|LessThan0~11_cout\ = CARRY((\inst12|inst35|inst4|data\(5) & ((\inst12|inst2|C[7]~12_combout\) # (!\inst12|inst35|inst5|LessThan0~9_cout\))) # (!\inst12|inst35|inst4|data\(5) & (\inst12|inst2|C[7]~12_combout\ & 
-- !\inst12|inst35|inst5|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst4|data\(5),
	datab => \inst12|inst2|C[7]~12_combout\,
	datad => VCC,
	cin => \inst12|inst35|inst5|LessThan0~9_cout\,
	cout => \inst12|inst35|inst5|LessThan0~11_cout\);

-- Location: LCCOMB_X22_Y25_N24
\inst12|inst35|inst5|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst5|LessThan0~13_cout\ = CARRY((\inst12|inst2|C[8]~14_combout\ & (\inst12|inst35|inst4|data\(6) & !\inst12|inst35|inst5|LessThan0~11_cout\)) # (!\inst12|inst2|C[8]~14_combout\ & ((\inst12|inst35|inst4|data\(6)) # 
-- (!\inst12|inst35|inst5|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst2|C[8]~14_combout\,
	datab => \inst12|inst35|inst4|data\(6),
	datad => VCC,
	cin => \inst12|inst35|inst5|LessThan0~11_cout\,
	cout => \inst12|inst35|inst5|LessThan0~13_cout\);

-- Location: LCCOMB_X22_Y25_N26
\inst12|inst35|inst5|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst5|LessThan0~14_combout\ = (\inst12|inst35|inst4|data\(7) & ((\inst12|inst35|inst5|LessThan0~13_cout\) # (!\inst12|inst2|C[9]~16_combout\))) # (!\inst12|inst35|inst4|data\(7) & (\inst12|inst35|inst5|LessThan0~13_cout\ & 
-- !\inst12|inst2|C[9]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst35|inst4|data\(7),
	datad => \inst12|inst2|C[9]~16_combout\,
	cin => \inst12|inst35|inst5|LessThan0~13_cout\,
	combout => \inst12|inst35|inst5|LessThan0~14_combout\);

-- Location: LCCOMB_X22_Y25_N2
\inst12|inst35|inst1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst1~3_combout\ = (!\inst12|inst35|inst4|data\(9) & (!\inst12|inst35|inst4|data\(8) & ((\inst12|inst35|inst1~2_combout\) # (!\inst12|inst35|inst5|LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst4|data\(9),
	datab => \inst12|inst35|inst1~2_combout\,
	datac => \inst12|inst35|inst5|LessThan0~14_combout\,
	datad => \inst12|inst35|inst4|data\(8),
	combout => \inst12|inst35|inst1~3_combout\);

-- Location: LCCOMB_X21_Y25_N4
\inst12|inst35|inst14|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst14|Add0~0_combout\ = \inst12|inst35|inst|data\(3) $ (GND)
-- \inst12|inst35|inst14|Add0~1\ = CARRY(!\inst12|inst35|inst|data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst35|inst|data\(3),
	datad => VCC,
	combout => \inst12|inst35|inst14|Add0~0_combout\,
	cout => \inst12|inst35|inst14|Add0~1\);

-- Location: LCCOMB_X20_Y25_N26
\inst12|inst35|inst|data[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst|data[3]~5_combout\ = !\inst12|inst35|inst14|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst35|inst14|Add0~0_combout\,
	combout => \inst12|inst35|inst|data[3]~5_combout\);

-- Location: FF_X21_Y25_N9
\inst12|inst35|inst|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst12|inst35|inst|data[3]~5_combout\,
	sload => VCC,
	ena => \inst12|inst35|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst35|inst|data\(3));

-- Location: LCCOMB_X21_Y25_N6
\inst12|inst35|inst14|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst14|Add0~2_combout\ = (\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst|data\(4) & ((\inst12|inst35|inst14|Add0~1\) # (GND))) # (!\inst12|inst35|inst|data\(4) & (!\inst12|inst35|inst14|Add0~1\)))) # 
-- (!\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst|data\(4) & (!\inst12|inst35|inst14|Add0~1\)) # (!\inst12|inst35|inst|data\(4) & (\inst12|inst35|inst14|Add0~1\ & VCC))))
-- \inst12|inst35|inst14|Add0~3\ = CARRY((\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst|data\(4)) # (!\inst12|inst35|inst14|Add0~1\))) # (!\inst12|inst35|inst1~3_combout\ & (\inst12|inst35|inst|data\(4) & !\inst12|inst35|inst14|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst1~3_combout\,
	datab => \inst12|inst35|inst|data\(4),
	datad => VCC,
	cin => \inst12|inst35|inst14|Add0~1\,
	combout => \inst12|inst35|inst14|Add0~2_combout\,
	cout => \inst12|inst35|inst14|Add0~3\);

-- Location: LCCOMB_X20_Y25_N6
\inst12|inst35|inst|data[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst|data[4]~4_combout\ = !\inst12|inst35|inst14|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|inst35|inst14|Add0~2_combout\,
	combout => \inst12|inst35|inst|data[4]~4_combout\);

-- Location: FF_X20_Y25_N7
\inst12|inst35|inst|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst35|inst|data[4]~4_combout\,
	ena => \inst12|inst35|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst35|inst|data\(4));

-- Location: LCCOMB_X21_Y25_N8
\inst12|inst35|inst14|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst14|Add0~4_combout\ = ((\inst12|inst35|inst1~3_combout\ $ (\inst12|inst35|inst|data\(5) $ (!\inst12|inst35|inst14|Add0~3\)))) # (GND)
-- \inst12|inst35|inst14|Add0~5\ = CARRY((\inst12|inst35|inst1~3_combout\ & (!\inst12|inst35|inst|data\(5) & !\inst12|inst35|inst14|Add0~3\)) # (!\inst12|inst35|inst1~3_combout\ & ((!\inst12|inst35|inst14|Add0~3\) # (!\inst12|inst35|inst|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst1~3_combout\,
	datab => \inst12|inst35|inst|data\(5),
	datad => VCC,
	cin => \inst12|inst35|inst14|Add0~3\,
	combout => \inst12|inst35|inst14|Add0~4_combout\,
	cout => \inst12|inst35|inst14|Add0~5\);

-- Location: LCCOMB_X20_Y25_N4
\inst12|inst35|inst|data[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst|data[5]~3_combout\ = !\inst12|inst35|inst14|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst35|inst14|Add0~4_combout\,
	combout => \inst12|inst35|inst|data[5]~3_combout\);

-- Location: FF_X20_Y25_N5
\inst12|inst35|inst|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst35|inst|data[5]~3_combout\,
	ena => \inst12|inst35|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst35|inst|data\(5));

-- Location: LCCOMB_X21_Y25_N10
\inst12|inst35|inst14|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst14|Add0~6_combout\ = (\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst|data\(6) & (\inst12|inst35|inst14|Add0~5\ & VCC)) # (!\inst12|inst35|inst|data\(6) & (!\inst12|inst35|inst14|Add0~5\)))) # (!\inst12|inst35|inst1~3_combout\ & 
-- ((\inst12|inst35|inst|data\(6) & (!\inst12|inst35|inst14|Add0~5\)) # (!\inst12|inst35|inst|data\(6) & ((\inst12|inst35|inst14|Add0~5\) # (GND)))))
-- \inst12|inst35|inst14|Add0~7\ = CARRY((\inst12|inst35|inst1~3_combout\ & (!\inst12|inst35|inst|data\(6) & !\inst12|inst35|inst14|Add0~5\)) # (!\inst12|inst35|inst1~3_combout\ & ((!\inst12|inst35|inst14|Add0~5\) # (!\inst12|inst35|inst|data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst1~3_combout\,
	datab => \inst12|inst35|inst|data\(6),
	datad => VCC,
	cin => \inst12|inst35|inst14|Add0~5\,
	combout => \inst12|inst35|inst14|Add0~6_combout\,
	cout => \inst12|inst35|inst14|Add0~7\);

-- Location: FF_X21_Y25_N11
\inst12|inst35|inst|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst35|inst14|Add0~6_combout\,
	ena => \inst12|inst35|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst35|inst|data\(6));

-- Location: LCCOMB_X21_Y25_N12
\inst12|inst35|inst14|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst14|Add0~8_combout\ = ((\inst12|inst35|inst1~3_combout\ $ (\inst12|inst35|inst|data\(7) $ (!\inst12|inst35|inst14|Add0~7\)))) # (GND)
-- \inst12|inst35|inst14|Add0~9\ = CARRY((\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst|data\(7)) # (!\inst12|inst35|inst14|Add0~7\))) # (!\inst12|inst35|inst1~3_combout\ & (\inst12|inst35|inst|data\(7) & !\inst12|inst35|inst14|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst1~3_combout\,
	datab => \inst12|inst35|inst|data\(7),
	datad => VCC,
	cin => \inst12|inst35|inst14|Add0~7\,
	combout => \inst12|inst35|inst14|Add0~8_combout\,
	cout => \inst12|inst35|inst14|Add0~9\);

-- Location: FF_X21_Y25_N13
\inst12|inst35|inst|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst35|inst14|Add0~8_combout\,
	ena => \inst12|inst35|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst35|inst|data\(7));

-- Location: LCCOMB_X21_Y25_N14
\inst12|inst35|inst14|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst14|Add0~10_combout\ = (\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst|data\(8) & ((\inst12|inst35|inst14|Add0~9\) # (GND))) # (!\inst12|inst35|inst|data\(8) & (!\inst12|inst35|inst14|Add0~9\)))) # 
-- (!\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst|data\(8) & (!\inst12|inst35|inst14|Add0~9\)) # (!\inst12|inst35|inst|data\(8) & (\inst12|inst35|inst14|Add0~9\ & VCC))))
-- \inst12|inst35|inst14|Add0~11\ = CARRY((\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst|data\(8)) # (!\inst12|inst35|inst14|Add0~9\))) # (!\inst12|inst35|inst1~3_combout\ & (\inst12|inst35|inst|data\(8) & !\inst12|inst35|inst14|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst1~3_combout\,
	datab => \inst12|inst35|inst|data\(8),
	datad => VCC,
	cin => \inst12|inst35|inst14|Add0~9\,
	combout => \inst12|inst35|inst14|Add0~10_combout\,
	cout => \inst12|inst35|inst14|Add0~11\);

-- Location: LCCOMB_X20_Y25_N18
\inst12|inst35|inst|data[8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst|data[8]~2_combout\ = !\inst12|inst35|inst14|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst35|inst14|Add0~10_combout\,
	combout => \inst12|inst35|inst|data[8]~2_combout\);

-- Location: FF_X20_Y25_N19
\inst12|inst35|inst|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst35|inst|data[8]~2_combout\,
	ena => \inst12|inst35|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst35|inst|data\(8));

-- Location: LCCOMB_X21_Y25_N16
\inst12|inst35|inst14|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst14|Add0~12_combout\ = ((\inst12|inst35|inst1~3_combout\ $ (\inst12|inst35|inst|data\(9) $ (\inst12|inst35|inst14|Add0~11\)))) # (GND)
-- \inst12|inst35|inst14|Add0~13\ = CARRY((\inst12|inst35|inst1~3_combout\ & (\inst12|inst35|inst|data\(9) & !\inst12|inst35|inst14|Add0~11\)) # (!\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst|data\(9)) # (!\inst12|inst35|inst14|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst1~3_combout\,
	datab => \inst12|inst35|inst|data\(9),
	datad => VCC,
	cin => \inst12|inst35|inst14|Add0~11\,
	combout => \inst12|inst35|inst14|Add0~12_combout\,
	cout => \inst12|inst35|inst14|Add0~13\);

-- Location: FF_X21_Y25_N29
\inst12|inst35|inst|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst12|inst35|inst14|Add0~12_combout\,
	sload => VCC,
	ena => \inst12|inst35|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst35|inst|data\(9));

-- Location: LCCOMB_X21_Y25_N18
\inst12|inst35|inst14|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst14|Add0~14_combout\ = (\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst|data\(10) & (!\inst12|inst35|inst14|Add0~13\)) # (!\inst12|inst35|inst|data\(10) & ((\inst12|inst35|inst14|Add0~13\) # (GND))))) # 
-- (!\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst|data\(10) & (\inst12|inst35|inst14|Add0~13\ & VCC)) # (!\inst12|inst35|inst|data\(10) & (!\inst12|inst35|inst14|Add0~13\))))
-- \inst12|inst35|inst14|Add0~15\ = CARRY((\inst12|inst35|inst1~3_combout\ & ((!\inst12|inst35|inst14|Add0~13\) # (!\inst12|inst35|inst|data\(10)))) # (!\inst12|inst35|inst1~3_combout\ & (!\inst12|inst35|inst|data\(10) & !\inst12|inst35|inst14|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst1~3_combout\,
	datab => \inst12|inst35|inst|data\(10),
	datad => VCC,
	cin => \inst12|inst35|inst14|Add0~13\,
	combout => \inst12|inst35|inst14|Add0~14_combout\,
	cout => \inst12|inst35|inst14|Add0~15\);

-- Location: FF_X21_Y25_N3
\inst12|inst35|inst|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst12|inst35|inst14|Add0~14_combout\,
	sload => VCC,
	ena => \inst12|inst35|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst35|inst|data\(10));

-- Location: LCCOMB_X21_Y25_N20
\inst12|inst35|inst14|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst14|Add0~16_combout\ = ((\inst12|inst35|inst1~3_combout\ $ (\inst12|inst35|inst|data\(11) $ (\inst12|inst35|inst14|Add0~15\)))) # (GND)
-- \inst12|inst35|inst14|Add0~17\ = CARRY((\inst12|inst35|inst1~3_combout\ & (\inst12|inst35|inst|data\(11) & !\inst12|inst35|inst14|Add0~15\)) # (!\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst|data\(11)) # (!\inst12|inst35|inst14|Add0~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst1~3_combout\,
	datab => \inst12|inst35|inst|data\(11),
	datad => VCC,
	cin => \inst12|inst35|inst14|Add0~15\,
	combout => \inst12|inst35|inst14|Add0~16_combout\,
	cout => \inst12|inst35|inst14|Add0~17\);

-- Location: FF_X21_Y25_N1
\inst12|inst35|inst|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst12|inst35|inst14|Add0~16_combout\,
	sload => VCC,
	ena => \inst12|inst35|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst35|inst|data\(11));

-- Location: LCCOMB_X21_Y25_N22
\inst12|inst35|inst14|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst14|Add0~18_combout\ = (\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst|data\(12) & ((\inst12|inst35|inst14|Add0~17\) # (GND))) # (!\inst12|inst35|inst|data\(12) & (!\inst12|inst35|inst14|Add0~17\)))) # 
-- (!\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst|data\(12) & (!\inst12|inst35|inst14|Add0~17\)) # (!\inst12|inst35|inst|data\(12) & (\inst12|inst35|inst14|Add0~17\ & VCC))))
-- \inst12|inst35|inst14|Add0~19\ = CARRY((\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst|data\(12)) # (!\inst12|inst35|inst14|Add0~17\))) # (!\inst12|inst35|inst1~3_combout\ & (\inst12|inst35|inst|data\(12) & !\inst12|inst35|inst14|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst1~3_combout\,
	datab => \inst12|inst35|inst|data\(12),
	datad => VCC,
	cin => \inst12|inst35|inst14|Add0~17\,
	combout => \inst12|inst35|inst14|Add0~18_combout\,
	cout => \inst12|inst35|inst14|Add0~19\);

-- Location: LCCOMB_X20_Y25_N24
\inst12|inst35|inst|data[12]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst|data[12]~1_combout\ = !\inst12|inst35|inst14|Add0~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst35|inst14|Add0~18_combout\,
	combout => \inst12|inst35|inst|data[12]~1_combout\);

-- Location: FF_X20_Y25_N25
\inst12|inst35|inst|data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst35|inst|data[12]~1_combout\,
	ena => \inst12|inst35|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst35|inst|data\(12));

-- Location: LCCOMB_X21_Y25_N24
\inst12|inst35|inst14|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst14|Add0~20_combout\ = ((\inst12|inst35|inst1~3_combout\ $ (\inst12|inst35|inst|data\(13) $ (!\inst12|inst35|inst14|Add0~19\)))) # (GND)
-- \inst12|inst35|inst14|Add0~21\ = CARRY((\inst12|inst35|inst1~3_combout\ & (!\inst12|inst35|inst|data\(13) & !\inst12|inst35|inst14|Add0~19\)) # (!\inst12|inst35|inst1~3_combout\ & ((!\inst12|inst35|inst14|Add0~19\) # (!\inst12|inst35|inst|data\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst1~3_combout\,
	datab => \inst12|inst35|inst|data\(13),
	datad => VCC,
	cin => \inst12|inst35|inst14|Add0~19\,
	combout => \inst12|inst35|inst14|Add0~20_combout\,
	cout => \inst12|inst35|inst14|Add0~21\);

-- Location: LCCOMB_X23_Y25_N2
\inst12|inst35|inst|data[13]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst|data[13]~0_combout\ = !\inst12|inst35|inst14|Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|inst35|inst14|Add0~20_combout\,
	combout => \inst12|inst35|inst|data[13]~0_combout\);

-- Location: FF_X23_Y25_N3
\inst12|inst35|inst|data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst35|inst|data[13]~0_combout\,
	ena => \inst12|inst35|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst35|inst|data\(13));

-- Location: LCCOMB_X21_Y25_N26
\inst12|inst35|inst14|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst14|Add0~22_combout\ = \inst12|inst35|inst|data\(14) $ (\inst12|inst35|inst14|Add0~21\ $ (!\inst12|inst35|inst1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst|data\(14),
	datad => \inst12|inst35|inst1~3_combout\,
	cin => \inst12|inst35|inst14|Add0~21\,
	combout => \inst12|inst35|inst14|Add0~22_combout\);

-- Location: FF_X21_Y25_N27
\inst12|inst35|inst|data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst35|inst14|Add0~22_combout\,
	ena => \inst12|inst35|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst35|inst|data\(14));

-- Location: LCCOMB_X20_Y25_N12
\inst12|inst35|inst12|Y[14]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst12|Y[14]~23_combout\ = (\inst12|inst35|inst15~1_combout\ & (((\inst12|inst35|inst14|Add0~22_combout\)))) # (!\inst12|inst35|inst15~1_combout\ & ((\inst12|inst35|inst1~3_combout\ & (\inst12|inst35|inst|data\(14))) # 
-- (!\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst14|Add0~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst|data\(14),
	datab => \inst12|inst35|inst15~1_combout\,
	datac => \inst12|inst35|inst1~3_combout\,
	datad => \inst12|inst35|inst14|Add0~22_combout\,
	combout => \inst12|inst35|inst12|Y[14]~23_combout\);

-- Location: LCCOMB_X21_Y25_N30
\inst12|inst35|inst12|Y[13]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst12|Y[13]~18_combout\ = (\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst15~1_combout\ & ((\inst12|inst35|inst14|Add0~20_combout\))) # (!\inst12|inst35|inst15~1_combout\ & (!\inst12|inst35|inst|data\(13))))) # 
-- (!\inst12|inst35|inst1~3_combout\ & (((\inst12|inst35|inst14|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst1~3_combout\,
	datab => \inst12|inst35|inst|data\(13),
	datac => \inst12|inst35|inst15~1_combout\,
	datad => \inst12|inst35|inst14|Add0~20_combout\,
	combout => \inst12|inst35|inst12|Y[13]~18_combout\);

-- Location: LCCOMB_X20_Y21_N2
\inst12|inst35|inst12|Y[12]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst12|Y[12]~19_combout\ = (\inst12|inst35|inst15~1_combout\ & (((\inst12|inst35|inst14|Add0~18_combout\)))) # (!\inst12|inst35|inst15~1_combout\ & ((\inst12|inst35|inst1~3_combout\ & (!\inst12|inst35|inst|data\(12))) # 
-- (!\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst14|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst15~1_combout\,
	datab => \inst12|inst35|inst|data\(12),
	datac => \inst12|inst35|inst1~3_combout\,
	datad => \inst12|inst35|inst14|Add0~18_combout\,
	combout => \inst12|inst35|inst12|Y[12]~19_combout\);

-- Location: LCCOMB_X21_Y25_N0
\inst12|inst35|inst12|Y[11]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst12|Y[11]~20_combout\ = (\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst15~1_combout\ & ((\inst12|inst35|inst14|Add0~16_combout\))) # (!\inst12|inst35|inst15~1_combout\ & (\inst12|inst35|inst|data\(11))))) # 
-- (!\inst12|inst35|inst1~3_combout\ & (((\inst12|inst35|inst14|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst1~3_combout\,
	datab => \inst12|inst35|inst15~1_combout\,
	datac => \inst12|inst35|inst|data\(11),
	datad => \inst12|inst35|inst14|Add0~16_combout\,
	combout => \inst12|inst35|inst12|Y[11]~20_combout\);

-- Location: LCCOMB_X21_Y25_N2
\inst12|inst35|inst12|Y[10]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst12|Y[10]~21_combout\ = (\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst15~1_combout\ & ((\inst12|inst35|inst14|Add0~14_combout\))) # (!\inst12|inst35|inst15~1_combout\ & (\inst12|inst35|inst|data\(10))))) # 
-- (!\inst12|inst35|inst1~3_combout\ & (((\inst12|inst35|inst14|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst1~3_combout\,
	datab => \inst12|inst35|inst15~1_combout\,
	datac => \inst12|inst35|inst|data\(10),
	datad => \inst12|inst35|inst14|Add0~14_combout\,
	combout => \inst12|inst35|inst12|Y[10]~21_combout\);

-- Location: LCCOMB_X21_Y25_N28
\inst12|inst35|inst12|Y[9]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst12|Y[9]~22_combout\ = (\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst15~1_combout\ & ((\inst12|inst35|inst14|Add0~12_combout\))) # (!\inst12|inst35|inst15~1_combout\ & (\inst12|inst35|inst|data\(9))))) # 
-- (!\inst12|inst35|inst1~3_combout\ & (((\inst12|inst35|inst14|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst1~3_combout\,
	datab => \inst12|inst35|inst15~1_combout\,
	datac => \inst12|inst35|inst|data\(9),
	datad => \inst12|inst35|inst14|Add0~12_combout\,
	combout => \inst12|inst35|inst12|Y[9]~22_combout\);

-- Location: LCCOMB_X20_Y25_N14
\inst12|inst35|inst12|Y[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst12|Y[8]~12_combout\ = (\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst15~1_combout\ & ((\inst12|inst35|inst14|Add0~10_combout\))) # (!\inst12|inst35|inst15~1_combout\ & (!\inst12|inst35|inst|data\(8))))) # 
-- (!\inst12|inst35|inst1~3_combout\ & (((\inst12|inst35|inst14|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst|data\(8),
	datab => \inst12|inst35|inst1~3_combout\,
	datac => \inst12|inst35|inst14|Add0~10_combout\,
	datad => \inst12|inst35|inst15~1_combout\,
	combout => \inst12|inst35|inst12|Y[8]~12_combout\);

-- Location: LCCOMB_X21_Y18_N6
\inst10|X_RightSide|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_RightSide|Add0~0_combout\ = \inst10|X_RightSide|data\(0) $ (GND)
-- \inst10|X_RightSide|Add0~1\ = CARRY(!\inst10|X_RightSide|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|X_RightSide|data\(0),
	datad => VCC,
	combout => \inst10|X_RightSide|Add0~0_combout\,
	cout => \inst10|X_RightSide|Add0~1\);

-- Location: LCCOMB_X21_Y18_N28
\inst10|X_RightSide|data[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_RightSide|data[0]~4_combout\ = !\inst10|X_RightSide|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|X_RightSide|Add0~0_combout\,
	combout => \inst10|X_RightSide|data[0]~4_combout\);

-- Location: LCCOMB_X21_Y20_N12
\inst10|X_LeftSide|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_LeftSide|Add0~0_combout\ = \inst10|X_LeftSide|data\(0) $ (VCC)
-- \inst10|X_LeftSide|Add0~1\ = CARRY(\inst10|X_LeftSide|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_LeftSide|data\(0),
	datad => VCC,
	combout => \inst10|X_LeftSide|Add0~0_combout\,
	cout => \inst10|X_LeftSide|Add0~1\);

-- Location: FF_X21_Y20_N13
\inst10|X_LeftSide|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|X_LeftSide|Add0~0_combout\,
	ena => \inst10|X_LeftSide|data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|X_LeftSide|data\(0));

-- Location: LCCOMB_X21_Y20_N14
\inst10|X_LeftSide|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_LeftSide|Add0~2_combout\ = (\inst10|inst43~2_combout\ & ((\inst10|X_LeftSide|data\(1) & (!\inst10|X_LeftSide|Add0~1\)) # (!\inst10|X_LeftSide|data\(1) & ((\inst10|X_LeftSide|Add0~1\) # (GND))))) # (!\inst10|inst43~2_combout\ & 
-- ((\inst10|X_LeftSide|data\(1) & (\inst10|X_LeftSide|Add0~1\ & VCC)) # (!\inst10|X_LeftSide|data\(1) & (!\inst10|X_LeftSide|Add0~1\))))
-- \inst10|X_LeftSide|Add0~3\ = CARRY((\inst10|inst43~2_combout\ & ((!\inst10|X_LeftSide|Add0~1\) # (!\inst10|X_LeftSide|data\(1)))) # (!\inst10|inst43~2_combout\ & (!\inst10|X_LeftSide|data\(1) & !\inst10|X_LeftSide|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst43~2_combout\,
	datab => \inst10|X_LeftSide|data\(1),
	datad => VCC,
	cin => \inst10|X_LeftSide|Add0~1\,
	combout => \inst10|X_LeftSide|Add0~2_combout\,
	cout => \inst10|X_LeftSide|Add0~3\);

-- Location: FF_X21_Y20_N15
\inst10|X_LeftSide|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|X_LeftSide|Add0~2_combout\,
	ena => \inst10|X_LeftSide|data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|X_LeftSide|data\(1));

-- Location: LCCOMB_X21_Y20_N16
\inst10|X_LeftSide|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_LeftSide|Add0~4_combout\ = ((\inst10|inst43~2_combout\ $ (\inst10|X_LeftSide|data\(2) $ (\inst10|X_LeftSide|Add0~3\)))) # (GND)
-- \inst10|X_LeftSide|Add0~5\ = CARRY((\inst10|inst43~2_combout\ & (\inst10|X_LeftSide|data\(2) & !\inst10|X_LeftSide|Add0~3\)) # (!\inst10|inst43~2_combout\ & ((\inst10|X_LeftSide|data\(2)) # (!\inst10|X_LeftSide|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst43~2_combout\,
	datab => \inst10|X_LeftSide|data\(2),
	datad => VCC,
	cin => \inst10|X_LeftSide|Add0~3\,
	combout => \inst10|X_LeftSide|Add0~4_combout\,
	cout => \inst10|X_LeftSide|Add0~5\);

-- Location: FF_X21_Y20_N17
\inst10|X_LeftSide|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|X_LeftSide|Add0~4_combout\,
	ena => \inst10|X_LeftSide|data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|X_LeftSide|data\(2));

-- Location: LCCOMB_X21_Y20_N18
\inst10|X_LeftSide|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_LeftSide|Add0~6_combout\ = (\inst10|inst43~2_combout\ & ((\inst10|X_LeftSide|data\(3) & (!\inst10|X_LeftSide|Add0~5\)) # (!\inst10|X_LeftSide|data\(3) & ((\inst10|X_LeftSide|Add0~5\) # (GND))))) # (!\inst10|inst43~2_combout\ & 
-- ((\inst10|X_LeftSide|data\(3) & (\inst10|X_LeftSide|Add0~5\ & VCC)) # (!\inst10|X_LeftSide|data\(3) & (!\inst10|X_LeftSide|Add0~5\))))
-- \inst10|X_LeftSide|Add0~7\ = CARRY((\inst10|inst43~2_combout\ & ((!\inst10|X_LeftSide|Add0~5\) # (!\inst10|X_LeftSide|data\(3)))) # (!\inst10|inst43~2_combout\ & (!\inst10|X_LeftSide|data\(3) & !\inst10|X_LeftSide|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst43~2_combout\,
	datab => \inst10|X_LeftSide|data\(3),
	datad => VCC,
	cin => \inst10|X_LeftSide|Add0~5\,
	combout => \inst10|X_LeftSide|Add0~6_combout\,
	cout => \inst10|X_LeftSide|Add0~7\);

-- Location: FF_X21_Y20_N19
\inst10|X_LeftSide|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|X_LeftSide|Add0~6_combout\,
	ena => \inst10|X_LeftSide|data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|X_LeftSide|data\(3));

-- Location: LCCOMB_X21_Y20_N2
\inst10|inst37|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst37|LessThan1~0_combout\ = (\inst10|X_LeftSide|data\(0)) # ((\inst10|X_LeftSide|data\(3)) # ((\inst10|X_LeftSide|data\(1)) # (\inst10|X_LeftSide|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_LeftSide|data\(0),
	datab => \inst10|X_LeftSide|data\(3),
	datac => \inst10|X_LeftSide|data\(1),
	datad => \inst10|X_LeftSide|data\(2),
	combout => \inst10|inst37|LessThan1~0_combout\);

-- Location: LCCOMB_X21_Y20_N20
\inst10|X_LeftSide|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_LeftSide|Add0~8_combout\ = ((\inst10|inst43~2_combout\ $ (\inst10|X_LeftSide|data\(4) $ (!\inst10|X_LeftSide|Add0~7\)))) # (GND)
-- \inst10|X_LeftSide|Add0~9\ = CARRY((\inst10|inst43~2_combout\ & (!\inst10|X_LeftSide|data\(4) & !\inst10|X_LeftSide|Add0~7\)) # (!\inst10|inst43~2_combout\ & ((!\inst10|X_LeftSide|Add0~7\) # (!\inst10|X_LeftSide|data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst43~2_combout\,
	datab => \inst10|X_LeftSide|data\(4),
	datad => VCC,
	cin => \inst10|X_LeftSide|Add0~7\,
	combout => \inst10|X_LeftSide|Add0~8_combout\,
	cout => \inst10|X_LeftSide|Add0~9\);

-- Location: LCCOMB_X21_Y20_N4
\inst10|X_LeftSide|data[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_LeftSide|data[4]~3_combout\ = !\inst10|X_LeftSide|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|X_LeftSide|Add0~8_combout\,
	combout => \inst10|X_LeftSide|data[4]~3_combout\);

-- Location: FF_X21_Y20_N5
\inst10|X_LeftSide|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|X_LeftSide|data[4]~3_combout\,
	ena => \inst10|X_LeftSide|data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|X_LeftSide|data\(4));

-- Location: LCCOMB_X21_Y20_N22
\inst10|X_LeftSide|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_LeftSide|Add0~10_combout\ = (\inst10|X_LeftSide|data\(5) & ((\inst10|inst43~2_combout\ & (!\inst10|X_LeftSide|Add0~9\)) # (!\inst10|inst43~2_combout\ & (\inst10|X_LeftSide|Add0~9\ & VCC)))) # (!\inst10|X_LeftSide|data\(5) & 
-- ((\inst10|inst43~2_combout\ & ((\inst10|X_LeftSide|Add0~9\) # (GND))) # (!\inst10|inst43~2_combout\ & (!\inst10|X_LeftSide|Add0~9\))))
-- \inst10|X_LeftSide|Add0~11\ = CARRY((\inst10|X_LeftSide|data\(5) & (\inst10|inst43~2_combout\ & !\inst10|X_LeftSide|Add0~9\)) # (!\inst10|X_LeftSide|data\(5) & ((\inst10|inst43~2_combout\) # (!\inst10|X_LeftSide|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_LeftSide|data\(5),
	datab => \inst10|inst43~2_combout\,
	datad => VCC,
	cin => \inst10|X_LeftSide|Add0~9\,
	combout => \inst10|X_LeftSide|Add0~10_combout\,
	cout => \inst10|X_LeftSide|Add0~11\);

-- Location: FF_X21_Y20_N23
\inst10|X_LeftSide|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|X_LeftSide|Add0~10_combout\,
	ena => \inst10|X_LeftSide|data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|X_LeftSide|data\(5));

-- Location: LCCOMB_X21_Y20_N24
\inst10|X_LeftSide|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_LeftSide|Add0~12_combout\ = ((\inst10|inst43~2_combout\ $ (\inst10|X_LeftSide|data\(6) $ (\inst10|X_LeftSide|Add0~11\)))) # (GND)
-- \inst10|X_LeftSide|Add0~13\ = CARRY((\inst10|inst43~2_combout\ & (\inst10|X_LeftSide|data\(6) & !\inst10|X_LeftSide|Add0~11\)) # (!\inst10|inst43~2_combout\ & ((\inst10|X_LeftSide|data\(6)) # (!\inst10|X_LeftSide|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst43~2_combout\,
	datab => \inst10|X_LeftSide|data\(6),
	datad => VCC,
	cin => \inst10|X_LeftSide|Add0~11\,
	combout => \inst10|X_LeftSide|Add0~12_combout\,
	cout => \inst10|X_LeftSide|Add0~13\);

-- Location: FF_X21_Y20_N25
\inst10|X_LeftSide|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|X_LeftSide|Add0~12_combout\,
	ena => \inst10|X_LeftSide|data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|X_LeftSide|data\(6));

-- Location: LCCOMB_X21_Y20_N26
\inst10|X_LeftSide|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_LeftSide|Add0~14_combout\ = (\inst10|X_LeftSide|data\(7) & ((\inst10|inst43~2_combout\ & ((\inst10|X_LeftSide|Add0~13\) # (GND))) # (!\inst10|inst43~2_combout\ & (!\inst10|X_LeftSide|Add0~13\)))) # (!\inst10|X_LeftSide|data\(7) & 
-- ((\inst10|inst43~2_combout\ & (!\inst10|X_LeftSide|Add0~13\)) # (!\inst10|inst43~2_combout\ & (\inst10|X_LeftSide|Add0~13\ & VCC))))
-- \inst10|X_LeftSide|Add0~15\ = CARRY((\inst10|X_LeftSide|data\(7) & ((\inst10|inst43~2_combout\) # (!\inst10|X_LeftSide|Add0~13\))) # (!\inst10|X_LeftSide|data\(7) & (\inst10|inst43~2_combout\ & !\inst10|X_LeftSide|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_LeftSide|data\(7),
	datab => \inst10|inst43~2_combout\,
	datad => VCC,
	cin => \inst10|X_LeftSide|Add0~13\,
	combout => \inst10|X_LeftSide|Add0~14_combout\,
	cout => \inst10|X_LeftSide|Add0~15\);

-- Location: LCCOMB_X21_Y20_N6
\inst10|X_LeftSide|data[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_LeftSide|data[7]~2_combout\ = !\inst10|X_LeftSide|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|X_LeftSide|Add0~14_combout\,
	combout => \inst10|X_LeftSide|data[7]~2_combout\);

-- Location: FF_X21_Y20_N7
\inst10|X_LeftSide|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|X_LeftSide|data[7]~2_combout\,
	ena => \inst10|X_LeftSide|data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|X_LeftSide|data\(7));

-- Location: LCCOMB_X21_Y20_N8
\inst10|inst37|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst37|LessThan1~1_combout\ = (((\inst10|X_LeftSide|data\(5)) # (\inst10|X_LeftSide|data\(6))) # (!\inst10|X_LeftSide|data\(4))) # (!\inst10|X_LeftSide|data\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_LeftSide|data\(7),
	datab => \inst10|X_LeftSide|data\(4),
	datac => \inst10|X_LeftSide|data\(5),
	datad => \inst10|X_LeftSide|data\(6),
	combout => \inst10|inst37|LessThan1~1_combout\);

-- Location: LCCOMB_X21_Y20_N28
\inst10|X_LeftSide|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_LeftSide|Add0~16_combout\ = ((\inst10|inst43~2_combout\ $ (\inst10|X_LeftSide|data\(8) $ (!\inst10|X_LeftSide|Add0~15\)))) # (GND)
-- \inst10|X_LeftSide|Add0~17\ = CARRY((\inst10|inst43~2_combout\ & (!\inst10|X_LeftSide|data\(8) & !\inst10|X_LeftSide|Add0~15\)) # (!\inst10|inst43~2_combout\ & ((!\inst10|X_LeftSide|Add0~15\) # (!\inst10|X_LeftSide|data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst43~2_combout\,
	datab => \inst10|X_LeftSide|data\(8),
	datad => VCC,
	cin => \inst10|X_LeftSide|Add0~15\,
	combout => \inst10|X_LeftSide|Add0~16_combout\,
	cout => \inst10|X_LeftSide|Add0~17\);

-- Location: LCCOMB_X21_Y20_N0
\inst10|X_LeftSide|data[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_LeftSide|data[8]~1_combout\ = !\inst10|X_LeftSide|Add0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|X_LeftSide|Add0~16_combout\,
	combout => \inst10|X_LeftSide|data[8]~1_combout\);

-- Location: FF_X21_Y20_N1
\inst10|X_LeftSide|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|X_LeftSide|data[8]~1_combout\,
	ena => \inst10|X_LeftSide|data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|X_LeftSide|data\(8));

-- Location: LCCOMB_X21_Y20_N10
\inst10|inst37|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst37|LessThan1~2_combout\ = (\inst10|X_LeftSide|data\(9)) # ((\inst10|inst37|LessThan1~0_combout\) # ((\inst10|inst37|LessThan1~1_combout\) # (!\inst10|X_LeftSide|data\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_LeftSide|data\(9),
	datab => \inst10|inst37|LessThan1~0_combout\,
	datac => \inst10|inst37|LessThan1~1_combout\,
	datad => \inst10|X_LeftSide|data\(8),
	combout => \inst10|inst37|LessThan1~2_combout\);

-- Location: LCCOMB_X24_Y18_N24
\inst8|inst|mouse_data_int_reg|data[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_int_reg|data[4]~feeder_combout\ = \inst8|inst|mouse_data_int_reg52|data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|mouse_data_int_reg52|data\(4),
	combout => \inst8|inst|mouse_data_int_reg|data[4]~feeder_combout\);

-- Location: FF_X24_Y18_N25
\inst8|inst|mouse_data_int_reg|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_int_reg|data[4]~feeder_combout\,
	ena => \inst8|inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_int_reg|data\(4));

-- Location: LCCOMB_X22_Y18_N20
\inst8|inst|mouse_data_int_reg53|data[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_int_reg53|data[4]~feeder_combout\ = \inst8|inst|mouse_data_int_reg|data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|mouse_data_int_reg|data\(4),
	combout => \inst8|inst|mouse_data_int_reg53|data[4]~feeder_combout\);

-- Location: FF_X22_Y18_N21
\inst8|inst|mouse_data_int_reg53|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_int_reg53|data[4]~feeder_combout\,
	ena => \inst8|inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_int_reg53|data\(4));

-- Location: LCCOMB_X22_Y18_N24
\inst8|inst|mouse_data_reg|data[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_reg|data[20]~feeder_combout\ = \inst8|inst|mouse_data_int_reg53|data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|mouse_data_int_reg53|data\(4),
	combout => \inst8|inst|mouse_data_reg|data[20]~feeder_combout\);

-- Location: FF_X22_Y18_N25
\inst8|inst|mouse_data_reg|data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_reg|data[20]~feeder_combout\,
	ena => \inst8|inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_reg|data\(20));

-- Location: LCCOMB_X23_Y18_N10
\inst8|inst|mouse_data_reg|data[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_reg|data[12]~feeder_combout\ = \inst8|inst|mouse_data_int_reg|data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|mouse_data_int_reg|data\(4),
	combout => \inst8|inst|mouse_data_reg|data[12]~feeder_combout\);

-- Location: FF_X23_Y18_N11
\inst8|inst|mouse_data_reg|data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_reg|data[12]~feeder_combout\,
	ena => \inst8|inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_reg|data\(12));

-- Location: LCCOMB_X23_Y18_N18
\inst8|inst|mouse_data_reg|data[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_reg|data[13]~feeder_combout\ = \inst8|inst|mouse_data_int_reg|data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|mouse_data_int_reg|data\(5),
	combout => \inst8|inst|mouse_data_reg|data[13]~feeder_combout\);

-- Location: FF_X23_Y18_N19
\inst8|inst|mouse_data_reg|data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_reg|data[13]~feeder_combout\,
	ena => \inst8|inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_reg|data\(13));

-- Location: FF_X24_Y18_N15
\inst8|inst|mouse_data_int_reg|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|inst|mouse_data_int_reg52|data\(7),
	sload => VCC,
	ena => \inst8|inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_int_reg|data\(7));

-- Location: FF_X23_Y18_N27
\inst8|inst|mouse_data_reg|data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|inst|mouse_data_int_reg|data\(7),
	sload => VCC,
	ena => \inst8|inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_reg|data\(15));

-- Location: LCCOMB_X24_Y18_N20
\inst8|inst|mouse_data_int_reg|data[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_int_reg|data[6]~feeder_combout\ = \inst8|inst|mouse_data_int_reg52|data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|mouse_data_int_reg52|data\(6),
	combout => \inst8|inst|mouse_data_int_reg|data[6]~feeder_combout\);

-- Location: FF_X24_Y18_N21
\inst8|inst|mouse_data_int_reg|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_int_reg|data[6]~feeder_combout\,
	ena => \inst8|inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_int_reg|data\(6));

-- Location: LCCOMB_X24_Y18_N28
\inst8|inst|mouse_data_reg|data[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_reg|data[14]~feeder_combout\ = \inst8|inst|mouse_data_int_reg|data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|mouse_data_int_reg|data\(6),
	combout => \inst8|inst|mouse_data_reg|data[14]~feeder_combout\);

-- Location: FF_X24_Y18_N29
\inst8|inst|mouse_data_reg|data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_reg|data[14]~feeder_combout\,
	ena => \inst8|inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_reg|data\(14));

-- Location: LCCOMB_X23_Y18_N26
\inst8|inst5|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst5|LessThan0~1_combout\ = (\inst8|inst|mouse_data_reg|data\(12)) # ((\inst8|inst|mouse_data_reg|data\(13)) # ((\inst8|inst|mouse_data_reg|data\(15)) # (\inst8|inst|mouse_data_reg|data\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|mouse_data_reg|data\(12),
	datab => \inst8|inst|mouse_data_reg|data\(13),
	datac => \inst8|inst|mouse_data_reg|data\(15),
	datad => \inst8|inst|mouse_data_reg|data\(14),
	combout => \inst8|inst5|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y18_N26
\inst8|inst|mouse_data_reg|data[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_reg|data[10]~feeder_combout\ = \inst8|inst|mouse_data_int_reg|data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|mouse_data_int_reg|data\(2),
	combout => \inst8|inst|mouse_data_reg|data[10]~feeder_combout\);

-- Location: FF_X22_Y18_N27
\inst8|inst|mouse_data_reg|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_reg|data[10]~feeder_combout\,
	ena => \inst8|inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_reg|data\(10));

-- Location: LCCOMB_X23_Y18_N4
\inst8|inst|mouse_data_reg|data[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_reg|data[8]~feeder_combout\ = \inst8|inst|mouse_data_int_reg|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|mouse_data_int_reg|data\(0),
	combout => \inst8|inst|mouse_data_reg|data[8]~feeder_combout\);

-- Location: FF_X23_Y18_N5
\inst8|inst|mouse_data_reg|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_reg|data[8]~feeder_combout\,
	ena => \inst8|inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_reg|data\(8));

-- Location: LCCOMB_X24_Y18_N30
\inst8|inst|mouse_data_int_reg|data[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_int_reg|data[3]~feeder_combout\ = \inst8|inst|mouse_data_int_reg52|data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|mouse_data_int_reg52|data\(3),
	combout => \inst8|inst|mouse_data_int_reg|data[3]~feeder_combout\);

-- Location: FF_X24_Y18_N31
\inst8|inst|mouse_data_int_reg|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_int_reg|data[3]~feeder_combout\,
	ena => \inst8|inst|inst1|inst57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_int_reg|data\(3));

-- Location: FF_X23_Y18_N29
\inst8|inst|mouse_data_reg|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|inst|mouse_data_int_reg|data\(3),
	sload => VCC,
	ena => \inst8|inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_reg|data\(11));

-- Location: LCCOMB_X23_Y18_N16
\inst8|inst|mouse_data_reg|data[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|mouse_data_reg|data[9]~feeder_combout\ = \inst8|inst|mouse_data_int_reg|data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|mouse_data_int_reg|data\(1),
	combout => \inst8|inst|mouse_data_reg|data[9]~feeder_combout\);

-- Location: FF_X23_Y18_N17
\inst8|inst|mouse_data_reg|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst|mouse_data_reg|data[9]~feeder_combout\,
	ena => \inst8|inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst|mouse_data_reg|data\(9));

-- Location: LCCOMB_X23_Y18_N28
\inst8|inst5|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst5|LessThan0~0_combout\ = (\inst8|inst|mouse_data_reg|data\(10)) # ((\inst8|inst|mouse_data_reg|data\(8)) # ((\inst8|inst|mouse_data_reg|data\(11)) # (\inst8|inst|mouse_data_reg|data\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|mouse_data_reg|data\(10),
	datab => \inst8|inst|mouse_data_reg|data\(8),
	datac => \inst8|inst|mouse_data_reg|data\(11),
	datad => \inst8|inst|mouse_data_reg|data\(9),
	combout => \inst8|inst5|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y18_N8
\inst10|inst39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst39~0_combout\ = (\inst10|inst9~q\ & (!\inst10|inst10~q\ & ((\inst8|inst5|LessThan0~1_combout\) # (\inst8|inst5|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst5|LessThan0~1_combout\,
	datab => \inst8|inst5|LessThan0~0_combout\,
	datac => \inst10|inst9~q\,
	datad => \inst10|inst10~q\,
	combout => \inst10|inst39~0_combout\);

-- Location: LCCOMB_X19_Y18_N28
\inst10|X_LeftSide|data[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_LeftSide|data[1]~0_combout\ = (\inst10|inst43~2_combout\) # ((\inst10|inst37|LessThan1~2_combout\ & (\inst8|inst|mouse_data_reg|data\(20) & \inst10|inst39~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst37|LessThan1~2_combout\,
	datab => \inst8|inst|mouse_data_reg|data\(20),
	datac => \inst10|inst43~2_combout\,
	datad => \inst10|inst39~0_combout\,
	combout => \inst10|X_LeftSide|data[1]~0_combout\);

-- Location: FF_X21_Y18_N29
\inst10|X_RightSide|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|X_RightSide|data[0]~4_combout\,
	ena => \inst10|X_LeftSide|data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|X_RightSide|data\(0));

-- Location: LCCOMB_X21_Y18_N8
\inst10|X_RightSide|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_RightSide|Add0~2_combout\ = (\inst10|inst43~2_combout\ & ((\inst10|X_RightSide|data\(1) & ((\inst10|X_RightSide|Add0~1\) # (GND))) # (!\inst10|X_RightSide|data\(1) & (!\inst10|X_RightSide|Add0~1\)))) # (!\inst10|inst43~2_combout\ & 
-- ((\inst10|X_RightSide|data\(1) & (!\inst10|X_RightSide|Add0~1\)) # (!\inst10|X_RightSide|data\(1) & (\inst10|X_RightSide|Add0~1\ & VCC))))
-- \inst10|X_RightSide|Add0~3\ = CARRY((\inst10|inst43~2_combout\ & ((\inst10|X_RightSide|data\(1)) # (!\inst10|X_RightSide|Add0~1\))) # (!\inst10|inst43~2_combout\ & (\inst10|X_RightSide|data\(1) & !\inst10|X_RightSide|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst43~2_combout\,
	datab => \inst10|X_RightSide|data\(1),
	datad => VCC,
	cin => \inst10|X_RightSide|Add0~1\,
	combout => \inst10|X_RightSide|Add0~2_combout\,
	cout => \inst10|X_RightSide|Add0~3\);

-- Location: LCCOMB_X21_Y18_N2
\inst10|X_RightSide|data[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_RightSide|data[1]~3_combout\ = !\inst10|X_RightSide|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|X_RightSide|Add0~2_combout\,
	combout => \inst10|X_RightSide|data[1]~3_combout\);

-- Location: FF_X21_Y18_N3
\inst10|X_RightSide|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|X_RightSide|data[1]~3_combout\,
	ena => \inst10|X_LeftSide|data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|X_RightSide|data\(1));

-- Location: LCCOMB_X21_Y18_N10
\inst10|X_RightSide|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_RightSide|Add0~4_combout\ = ((\inst10|X_RightSide|data\(2) $ (\inst10|inst43~2_combout\ $ (\inst10|X_RightSide|Add0~3\)))) # (GND)
-- \inst10|X_RightSide|Add0~5\ = CARRY((\inst10|X_RightSide|data\(2) & ((!\inst10|X_RightSide|Add0~3\) # (!\inst10|inst43~2_combout\))) # (!\inst10|X_RightSide|data\(2) & (!\inst10|inst43~2_combout\ & !\inst10|X_RightSide|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_RightSide|data\(2),
	datab => \inst10|inst43~2_combout\,
	datad => VCC,
	cin => \inst10|X_RightSide|Add0~3\,
	combout => \inst10|X_RightSide|Add0~4_combout\,
	cout => \inst10|X_RightSide|Add0~5\);

-- Location: FF_X21_Y18_N11
\inst10|X_RightSide|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|X_RightSide|Add0~4_combout\,
	ena => \inst10|X_LeftSide|data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|X_RightSide|data\(2));

-- Location: LCCOMB_X21_Y18_N12
\inst10|X_RightSide|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_RightSide|Add0~6_combout\ = (\inst10|X_RightSide|data\(3) & ((\inst10|inst43~2_combout\ & (!\inst10|X_RightSide|Add0~5\)) # (!\inst10|inst43~2_combout\ & (\inst10|X_RightSide|Add0~5\ & VCC)))) # (!\inst10|X_RightSide|data\(3) & 
-- ((\inst10|inst43~2_combout\ & ((\inst10|X_RightSide|Add0~5\) # (GND))) # (!\inst10|inst43~2_combout\ & (!\inst10|X_RightSide|Add0~5\))))
-- \inst10|X_RightSide|Add0~7\ = CARRY((\inst10|X_RightSide|data\(3) & (\inst10|inst43~2_combout\ & !\inst10|X_RightSide|Add0~5\)) # (!\inst10|X_RightSide|data\(3) & ((\inst10|inst43~2_combout\) # (!\inst10|X_RightSide|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_RightSide|data\(3),
	datab => \inst10|inst43~2_combout\,
	datad => VCC,
	cin => \inst10|X_RightSide|Add0~5\,
	combout => \inst10|X_RightSide|Add0~6_combout\,
	cout => \inst10|X_RightSide|Add0~7\);

-- Location: FF_X21_Y18_N13
\inst10|X_RightSide|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|X_RightSide|Add0~6_combout\,
	ena => \inst10|X_LeftSide|data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|X_RightSide|data\(3));

-- Location: LCCOMB_X21_Y18_N14
\inst10|X_RightSide|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_RightSide|Add0~8_combout\ = ((\inst10|X_RightSide|data\(4) $ (\inst10|inst43~2_combout\ $ (!\inst10|X_RightSide|Add0~7\)))) # (GND)
-- \inst10|X_RightSide|Add0~9\ = CARRY((\inst10|X_RightSide|data\(4) & (!\inst10|inst43~2_combout\ & !\inst10|X_RightSide|Add0~7\)) # (!\inst10|X_RightSide|data\(4) & ((!\inst10|X_RightSide|Add0~7\) # (!\inst10|inst43~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_RightSide|data\(4),
	datab => \inst10|inst43~2_combout\,
	datad => VCC,
	cin => \inst10|X_RightSide|Add0~7\,
	combout => \inst10|X_RightSide|Add0~8_combout\,
	cout => \inst10|X_RightSide|Add0~9\);

-- Location: LCCOMB_X21_Y18_N4
\inst10|X_RightSide|data[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_RightSide|data[4]~2_combout\ = !\inst10|X_RightSide|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|X_RightSide|Add0~8_combout\,
	combout => \inst10|X_RightSide|data[4]~2_combout\);

-- Location: FF_X21_Y18_N5
\inst10|X_RightSide|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|X_RightSide|data[4]~2_combout\,
	ena => \inst10|X_LeftSide|data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|X_RightSide|data\(4));

-- Location: LCCOMB_X21_Y18_N16
\inst10|X_RightSide|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_RightSide|Add0~10_combout\ = (\inst10|X_RightSide|data\(5) & ((\inst10|inst43~2_combout\ & (!\inst10|X_RightSide|Add0~9\)) # (!\inst10|inst43~2_combout\ & (\inst10|X_RightSide|Add0~9\ & VCC)))) # (!\inst10|X_RightSide|data\(5) & 
-- ((\inst10|inst43~2_combout\ & ((\inst10|X_RightSide|Add0~9\) # (GND))) # (!\inst10|inst43~2_combout\ & (!\inst10|X_RightSide|Add0~9\))))
-- \inst10|X_RightSide|Add0~11\ = CARRY((\inst10|X_RightSide|data\(5) & (\inst10|inst43~2_combout\ & !\inst10|X_RightSide|Add0~9\)) # (!\inst10|X_RightSide|data\(5) & ((\inst10|inst43~2_combout\) # (!\inst10|X_RightSide|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_RightSide|data\(5),
	datab => \inst10|inst43~2_combout\,
	datad => VCC,
	cin => \inst10|X_RightSide|Add0~9\,
	combout => \inst10|X_RightSide|Add0~10_combout\,
	cout => \inst10|X_RightSide|Add0~11\);

-- Location: FF_X21_Y18_N17
\inst10|X_RightSide|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|X_RightSide|Add0~10_combout\,
	ena => \inst10|X_LeftSide|data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|X_RightSide|data\(5));

-- Location: LCCOMB_X21_Y18_N18
\inst10|X_RightSide|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_RightSide|Add0~12_combout\ = ((\inst10|inst43~2_combout\ $ (\inst10|X_RightSide|data\(6) $ (\inst10|X_RightSide|Add0~11\)))) # (GND)
-- \inst10|X_RightSide|Add0~13\ = CARRY((\inst10|inst43~2_combout\ & (\inst10|X_RightSide|data\(6) & !\inst10|X_RightSide|Add0~11\)) # (!\inst10|inst43~2_combout\ & ((\inst10|X_RightSide|data\(6)) # (!\inst10|X_RightSide|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst43~2_combout\,
	datab => \inst10|X_RightSide|data\(6),
	datad => VCC,
	cin => \inst10|X_RightSide|Add0~11\,
	combout => \inst10|X_RightSide|Add0~12_combout\,
	cout => \inst10|X_RightSide|Add0~13\);

-- Location: FF_X21_Y18_N19
\inst10|X_RightSide|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|X_RightSide|Add0~12_combout\,
	ena => \inst10|X_LeftSide|data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|X_RightSide|data\(6));

-- Location: LCCOMB_X21_Y18_N20
\inst10|X_RightSide|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_RightSide|Add0~14_combout\ = (\inst10|X_RightSide|data\(7) & ((\inst10|inst43~2_combout\ & ((\inst10|X_RightSide|Add0~13\) # (GND))) # (!\inst10|inst43~2_combout\ & (!\inst10|X_RightSide|Add0~13\)))) # (!\inst10|X_RightSide|data\(7) & 
-- ((\inst10|inst43~2_combout\ & (!\inst10|X_RightSide|Add0~13\)) # (!\inst10|inst43~2_combout\ & (\inst10|X_RightSide|Add0~13\ & VCC))))
-- \inst10|X_RightSide|Add0~15\ = CARRY((\inst10|X_RightSide|data\(7) & ((\inst10|inst43~2_combout\) # (!\inst10|X_RightSide|Add0~13\))) # (!\inst10|X_RightSide|data\(7) & (\inst10|inst43~2_combout\ & !\inst10|X_RightSide|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_RightSide|data\(7),
	datab => \inst10|inst43~2_combout\,
	datad => VCC,
	cin => \inst10|X_RightSide|Add0~13\,
	combout => \inst10|X_RightSide|Add0~14_combout\,
	cout => \inst10|X_RightSide|Add0~15\);

-- Location: LCCOMB_X21_Y18_N30
\inst10|X_RightSide|data[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_RightSide|data[7]~1_combout\ = !\inst10|X_RightSide|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|X_RightSide|Add0~14_combout\,
	combout => \inst10|X_RightSide|data[7]~1_combout\);

-- Location: FF_X21_Y18_N31
\inst10|X_RightSide|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|X_RightSide|data[7]~1_combout\,
	ena => \inst10|X_LeftSide|data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|X_RightSide|data\(7));

-- Location: LCCOMB_X20_Y18_N6
\inst10|inst43~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst43~0_combout\ = (!\inst10|X_RightSide|data\(6) & (\inst10|X_RightSide|data\(7) & !\inst10|X_RightSide|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|X_RightSide|data\(6),
	datac => \inst10|X_RightSide|data\(7),
	datad => \inst10|X_RightSide|data\(5),
	combout => \inst10|inst43~0_combout\);

-- Location: LCCOMB_X21_Y18_N22
\inst10|X_RightSide|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_RightSide|Add0~16_combout\ = ((\inst10|X_RightSide|data\(8) $ (\inst10|inst43~2_combout\ $ (!\inst10|X_RightSide|Add0~15\)))) # (GND)
-- \inst10|X_RightSide|Add0~17\ = CARRY((\inst10|X_RightSide|data\(8) & (!\inst10|inst43~2_combout\ & !\inst10|X_RightSide|Add0~15\)) # (!\inst10|X_RightSide|data\(8) & ((!\inst10|X_RightSide|Add0~15\) # (!\inst10|inst43~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_RightSide|data\(8),
	datab => \inst10|inst43~2_combout\,
	datad => VCC,
	cin => \inst10|X_RightSide|Add0~15\,
	combout => \inst10|X_RightSide|Add0~16_combout\,
	cout => \inst10|X_RightSide|Add0~17\);

-- Location: LCCOMB_X21_Y18_N0
\inst10|X_RightSide|data[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_RightSide|data[8]~0_combout\ = !\inst10|X_RightSide|Add0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|X_RightSide|Add0~16_combout\,
	combout => \inst10|X_RightSide|data[8]~0_combout\);

-- Location: FF_X21_Y18_N1
\inst10|X_RightSide|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|X_RightSide|data[8]~0_combout\,
	ena => \inst10|X_LeftSide|data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|X_RightSide|data\(8));

-- Location: LCCOMB_X21_Y18_N24
\inst10|X_RightSide|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_RightSide|Add0~18_combout\ = \inst10|inst43~2_combout\ $ (\inst10|X_RightSide|Add0~17\ $ (!\inst10|X_RightSide|data\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst43~2_combout\,
	datad => \inst10|X_RightSide|data\(9),
	cin => \inst10|X_RightSide|Add0~17\,
	combout => \inst10|X_RightSide|Add0~18_combout\);

-- Location: FF_X21_Y18_N25
\inst10|X_RightSide|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|X_RightSide|Add0~18_combout\,
	ena => \inst10|X_LeftSide|data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|X_RightSide|data\(9));

-- Location: LCCOMB_X21_Y18_N26
\inst10|inst41|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst41|LessThan0~0_combout\ = ((\inst10|X_RightSide|data\(1)) # ((\inst10|X_RightSide|data\(0)) # (!\inst10|X_RightSide|data\(3)))) # (!\inst10|X_RightSide|data\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_RightSide|data\(2),
	datab => \inst10|X_RightSide|data\(1),
	datac => \inst10|X_RightSide|data\(3),
	datad => \inst10|X_RightSide|data\(0),
	combout => \inst10|inst41|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y18_N12
\inst10|inst43~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst43~1_combout\ = (\inst10|X_RightSide|data\(9) & (((!\inst10|X_RightSide|data\(4) & !\inst10|inst41|LessThan0~0_combout\)) # (!\inst10|inst43~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst43~0_combout\,
	datab => \inst10|X_RightSide|data\(4),
	datac => \inst10|X_RightSide|data\(9),
	datad => \inst10|inst41|LessThan0~0_combout\,
	combout => \inst10|inst43~1_combout\);

-- Location: LCCOMB_X19_Y18_N14
\inst10|inst43~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst43~2_combout\ = (!\inst8|inst|mouse_data_reg|data\(20) & (\inst10|inst39~0_combout\ & ((\inst10|X_RightSide|data\(8)) # (!\inst10|inst43~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst43~1_combout\,
	datab => \inst8|inst|mouse_data_reg|data\(20),
	datac => \inst10|X_RightSide|data\(8),
	datad => \inst10|inst39~0_combout\,
	combout => \inst10|inst43~2_combout\);

-- Location: LCCOMB_X21_Y20_N30
\inst10|X_LeftSide|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|X_LeftSide|Add0~18_combout\ = \inst10|X_LeftSide|data\(9) $ (\inst10|X_LeftSide|Add0~17\ $ (!\inst10|inst43~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_LeftSide|data\(9),
	datad => \inst10|inst43~2_combout\,
	cin => \inst10|X_LeftSide|Add0~17\,
	combout => \inst10|X_LeftSide|Add0~18_combout\);

-- Location: FF_X21_Y20_N31
\inst10|X_LeftSide|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|X_LeftSide|Add0~18_combout\,
	ena => \inst10|X_LeftSide|data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|X_LeftSide|data\(9));

-- Location: LCCOMB_X20_Y21_N0
\inst12|inst35|inst12|Y[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst12|Y[7]~13_combout\ = (\inst12|inst35|inst15~1_combout\ & (((\inst12|inst35|inst14|Add0~8_combout\)))) # (!\inst12|inst35|inst15~1_combout\ & ((\inst12|inst35|inst1~3_combout\ & (\inst12|inst35|inst|data\(7))) # 
-- (!\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst14|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst15~1_combout\,
	datab => \inst12|inst35|inst|data\(7),
	datac => \inst12|inst35|inst1~3_combout\,
	datad => \inst12|inst35|inst14|Add0~8_combout\,
	combout => \inst12|inst35|inst12|Y[7]~13_combout\);

-- Location: LCCOMB_X20_Y21_N30
\inst12|inst35|inst12|Y[6]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst12|Y[6]~14_combout\ = (\inst12|inst35|inst15~1_combout\ & (((\inst12|inst35|inst14|Add0~6_combout\)))) # (!\inst12|inst35|inst15~1_combout\ & ((\inst12|inst35|inst1~3_combout\ & (\inst12|inst35|inst|data\(6))) # 
-- (!\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst14|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst15~1_combout\,
	datab => \inst12|inst35|inst|data\(6),
	datac => \inst12|inst35|inst1~3_combout\,
	datad => \inst12|inst35|inst14|Add0~6_combout\,
	combout => \inst12|inst35|inst12|Y[6]~14_combout\);

-- Location: LCCOMB_X20_Y25_N20
\inst12|inst35|inst12|Y[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst12|Y[5]~15_combout\ = (\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst15~1_combout\ & ((\inst12|inst35|inst14|Add0~4_combout\))) # (!\inst12|inst35|inst15~1_combout\ & (!\inst12|inst35|inst|data\(5))))) # 
-- (!\inst12|inst35|inst1~3_combout\ & (((\inst12|inst35|inst14|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst|data\(5),
	datab => \inst12|inst35|inst1~3_combout\,
	datac => \inst12|inst35|inst14|Add0~4_combout\,
	datad => \inst12|inst35|inst15~1_combout\,
	combout => \inst12|inst35|inst12|Y[5]~15_combout\);

-- Location: LCCOMB_X20_Y25_N22
\inst12|inst35|inst12|Y[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst12|Y[4]~16_combout\ = (\inst12|inst35|inst15~1_combout\ & (((\inst12|inst35|inst14|Add0~2_combout\)))) # (!\inst12|inst35|inst15~1_combout\ & ((\inst12|inst35|inst1~3_combout\ & (!\inst12|inst35|inst|data\(4))) # 
-- (!\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst14|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst|data\(4),
	datab => \inst12|inst35|inst15~1_combout\,
	datac => \inst12|inst35|inst1~3_combout\,
	datad => \inst12|inst35|inst14|Add0~2_combout\,
	combout => \inst12|inst35|inst12|Y[4]~16_combout\);

-- Location: LCCOMB_X19_Y25_N26
\inst12|inst35|inst12|Y[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst12|Y[3]~17_combout\ = (\inst12|inst35|inst1~3_combout\ & ((\inst12|inst35|inst15~1_combout\ & (\inst12|inst35|inst14|Add0~0_combout\)) # (!\inst12|inst35|inst15~1_combout\ & ((!\inst12|inst35|inst|data\(3)))))) # 
-- (!\inst12|inst35|inst1~3_combout\ & (\inst12|inst35|inst14|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst14|Add0~0_combout\,
	datab => \inst12|inst35|inst|data\(3),
	datac => \inst12|inst35|inst1~3_combout\,
	datad => \inst12|inst35|inst15~1_combout\,
	combout => \inst12|inst35|inst12|Y[3]~17_combout\);

-- Location: LCCOMB_X20_Y21_N4
\inst12|inst35|inst3|C[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst3|C[3]~0_combout\ = (\inst12|inst35|inst12|Y[3]~17_combout\ & (\inst10|X_LeftSide|data\(5) $ (VCC))) # (!\inst12|inst35|inst12|Y[3]~17_combout\ & (\inst10|X_LeftSide|data\(5) & VCC))
-- \inst12|inst35|inst3|C[3]~1\ = CARRY((\inst12|inst35|inst12|Y[3]~17_combout\ & \inst10|X_LeftSide|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst12|Y[3]~17_combout\,
	datab => \inst10|X_LeftSide|data\(5),
	datad => VCC,
	combout => \inst12|inst35|inst3|C[3]~0_combout\,
	cout => \inst12|inst35|inst3|C[3]~1\);

-- Location: LCCOMB_X20_Y21_N6
\inst12|inst35|inst3|C[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst3|C[4]~2_combout\ = (\inst12|inst35|inst12|Y[4]~16_combout\ & ((\inst10|X_LeftSide|data\(6) & (\inst12|inst35|inst3|C[3]~1\ & VCC)) # (!\inst10|X_LeftSide|data\(6) & (!\inst12|inst35|inst3|C[3]~1\)))) # 
-- (!\inst12|inst35|inst12|Y[4]~16_combout\ & ((\inst10|X_LeftSide|data\(6) & (!\inst12|inst35|inst3|C[3]~1\)) # (!\inst10|X_LeftSide|data\(6) & ((\inst12|inst35|inst3|C[3]~1\) # (GND)))))
-- \inst12|inst35|inst3|C[4]~3\ = CARRY((\inst12|inst35|inst12|Y[4]~16_combout\ & (!\inst10|X_LeftSide|data\(6) & !\inst12|inst35|inst3|C[3]~1\)) # (!\inst12|inst35|inst12|Y[4]~16_combout\ & ((!\inst12|inst35|inst3|C[3]~1\) # 
-- (!\inst10|X_LeftSide|data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst12|Y[4]~16_combout\,
	datab => \inst10|X_LeftSide|data\(6),
	datad => VCC,
	cin => \inst12|inst35|inst3|C[3]~1\,
	combout => \inst12|inst35|inst3|C[4]~2_combout\,
	cout => \inst12|inst35|inst3|C[4]~3\);

-- Location: LCCOMB_X20_Y21_N8
\inst12|inst35|inst3|C[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst3|C[5]~4_combout\ = ((\inst12|inst35|inst12|Y[5]~15_combout\ $ (\inst10|X_LeftSide|data\(7) $ (\inst12|inst35|inst3|C[4]~3\)))) # (GND)
-- \inst12|inst35|inst3|C[5]~5\ = CARRY((\inst12|inst35|inst12|Y[5]~15_combout\ & ((!\inst12|inst35|inst3|C[4]~3\) # (!\inst10|X_LeftSide|data\(7)))) # (!\inst12|inst35|inst12|Y[5]~15_combout\ & (!\inst10|X_LeftSide|data\(7) & 
-- !\inst12|inst35|inst3|C[4]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst12|Y[5]~15_combout\,
	datab => \inst10|X_LeftSide|data\(7),
	datad => VCC,
	cin => \inst12|inst35|inst3|C[4]~3\,
	combout => \inst12|inst35|inst3|C[5]~4_combout\,
	cout => \inst12|inst35|inst3|C[5]~5\);

-- Location: LCCOMB_X20_Y21_N10
\inst12|inst35|inst3|C[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst3|C[6]~6_combout\ = (\inst12|inst35|inst12|Y[6]~14_combout\ & ((\inst10|X_LeftSide|data\(8) & (!\inst12|inst35|inst3|C[5]~5\)) # (!\inst10|X_LeftSide|data\(8) & (\inst12|inst35|inst3|C[5]~5\ & VCC)))) # 
-- (!\inst12|inst35|inst12|Y[6]~14_combout\ & ((\inst10|X_LeftSide|data\(8) & ((\inst12|inst35|inst3|C[5]~5\) # (GND))) # (!\inst10|X_LeftSide|data\(8) & (!\inst12|inst35|inst3|C[5]~5\))))
-- \inst12|inst35|inst3|C[6]~7\ = CARRY((\inst12|inst35|inst12|Y[6]~14_combout\ & (\inst10|X_LeftSide|data\(8) & !\inst12|inst35|inst3|C[5]~5\)) # (!\inst12|inst35|inst12|Y[6]~14_combout\ & ((\inst10|X_LeftSide|data\(8)) # (!\inst12|inst35|inst3|C[5]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst12|Y[6]~14_combout\,
	datab => \inst10|X_LeftSide|data\(8),
	datad => VCC,
	cin => \inst12|inst35|inst3|C[5]~5\,
	combout => \inst12|inst35|inst3|C[6]~6_combout\,
	cout => \inst12|inst35|inst3|C[6]~7\);

-- Location: LCCOMB_X20_Y21_N12
\inst12|inst35|inst3|C[7]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst3|C[7]~8_combout\ = ((\inst10|X_LeftSide|data\(9) $ (\inst12|inst35|inst12|Y[7]~13_combout\ $ (!\inst12|inst35|inst3|C[6]~7\)))) # (GND)
-- \inst12|inst35|inst3|C[7]~9\ = CARRY((\inst10|X_LeftSide|data\(9) & ((\inst12|inst35|inst12|Y[7]~13_combout\) # (!\inst12|inst35|inst3|C[6]~7\))) # (!\inst10|X_LeftSide|data\(9) & (\inst12|inst35|inst12|Y[7]~13_combout\ & !\inst12|inst35|inst3|C[6]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_LeftSide|data\(9),
	datab => \inst12|inst35|inst12|Y[7]~13_combout\,
	datad => VCC,
	cin => \inst12|inst35|inst3|C[6]~7\,
	combout => \inst12|inst35|inst3|C[7]~8_combout\,
	cout => \inst12|inst35|inst3|C[7]~9\);

-- Location: LCCOMB_X20_Y21_N14
\inst12|inst35|inst3|C[8]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst3|C[8]~10_combout\ = (\inst12|inst35|inst12|Y[8]~12_combout\ & (!\inst12|inst35|inst3|C[7]~9\)) # (!\inst12|inst35|inst12|Y[8]~12_combout\ & ((\inst12|inst35|inst3|C[7]~9\) # (GND)))
-- \inst12|inst35|inst3|C[8]~11\ = CARRY((!\inst12|inst35|inst3|C[7]~9\) # (!\inst12|inst35|inst12|Y[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst12|Y[8]~12_combout\,
	datad => VCC,
	cin => \inst12|inst35|inst3|C[7]~9\,
	combout => \inst12|inst35|inst3|C[8]~10_combout\,
	cout => \inst12|inst35|inst3|C[8]~11\);

-- Location: LCCOMB_X20_Y21_N16
\inst12|inst35|inst3|C[9]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst3|C[9]~12_combout\ = (\inst12|inst35|inst12|Y[9]~22_combout\ & (\inst12|inst35|inst3|C[8]~11\ $ (GND))) # (!\inst12|inst35|inst12|Y[9]~22_combout\ & (!\inst12|inst35|inst3|C[8]~11\ & VCC))
-- \inst12|inst35|inst3|C[9]~13\ = CARRY((\inst12|inst35|inst12|Y[9]~22_combout\ & !\inst12|inst35|inst3|C[8]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst35|inst12|Y[9]~22_combout\,
	datad => VCC,
	cin => \inst12|inst35|inst3|C[8]~11\,
	combout => \inst12|inst35|inst3|C[9]~12_combout\,
	cout => \inst12|inst35|inst3|C[9]~13\);

-- Location: LCCOMB_X20_Y21_N18
\inst12|inst35|inst3|C[10]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst3|C[10]~14_combout\ = (\inst12|inst35|inst12|Y[10]~21_combout\ & (!\inst12|inst35|inst3|C[9]~13\)) # (!\inst12|inst35|inst12|Y[10]~21_combout\ & ((\inst12|inst35|inst3|C[9]~13\) # (GND)))
-- \inst12|inst35|inst3|C[10]~15\ = CARRY((!\inst12|inst35|inst3|C[9]~13\) # (!\inst12|inst35|inst12|Y[10]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst35|inst12|Y[10]~21_combout\,
	datad => VCC,
	cin => \inst12|inst35|inst3|C[9]~13\,
	combout => \inst12|inst35|inst3|C[10]~14_combout\,
	cout => \inst12|inst35|inst3|C[10]~15\);

-- Location: LCCOMB_X20_Y21_N20
\inst12|inst35|inst3|C[11]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst3|C[11]~16_combout\ = (\inst12|inst35|inst12|Y[11]~20_combout\ & (\inst12|inst35|inst3|C[10]~15\ $ (GND))) # (!\inst12|inst35|inst12|Y[11]~20_combout\ & (!\inst12|inst35|inst3|C[10]~15\ & VCC))
-- \inst12|inst35|inst3|C[11]~17\ = CARRY((\inst12|inst35|inst12|Y[11]~20_combout\ & !\inst12|inst35|inst3|C[10]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst35|inst12|Y[11]~20_combout\,
	datad => VCC,
	cin => \inst12|inst35|inst3|C[10]~15\,
	combout => \inst12|inst35|inst3|C[11]~16_combout\,
	cout => \inst12|inst35|inst3|C[11]~17\);

-- Location: LCCOMB_X20_Y21_N22
\inst12|inst35|inst3|C[12]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst3|C[12]~18_combout\ = (\inst12|inst35|inst12|Y[12]~19_combout\ & (!\inst12|inst35|inst3|C[11]~17\)) # (!\inst12|inst35|inst12|Y[12]~19_combout\ & ((\inst12|inst35|inst3|C[11]~17\) # (GND)))
-- \inst12|inst35|inst3|C[12]~19\ = CARRY((!\inst12|inst35|inst3|C[11]~17\) # (!\inst12|inst35|inst12|Y[12]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst35|inst12|Y[12]~19_combout\,
	datad => VCC,
	cin => \inst12|inst35|inst3|C[11]~17\,
	combout => \inst12|inst35|inst3|C[12]~18_combout\,
	cout => \inst12|inst35|inst3|C[12]~19\);

-- Location: LCCOMB_X20_Y21_N24
\inst12|inst35|inst3|C[13]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst3|C[13]~20_combout\ = (\inst12|inst35|inst12|Y[13]~18_combout\ & (\inst12|inst35|inst3|C[12]~19\ $ (GND))) # (!\inst12|inst35|inst12|Y[13]~18_combout\ & (!\inst12|inst35|inst3|C[12]~19\ & VCC))
-- \inst12|inst35|inst3|C[13]~21\ = CARRY((\inst12|inst35|inst12|Y[13]~18_combout\ & !\inst12|inst35|inst3|C[12]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst35|inst12|Y[13]~18_combout\,
	datad => VCC,
	cin => \inst12|inst35|inst3|C[12]~19\,
	combout => \inst12|inst35|inst3|C[13]~20_combout\,
	cout => \inst12|inst35|inst3|C[13]~21\);

-- Location: LCCOMB_X20_Y21_N26
\inst12|inst35|inst3|C[14]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst3|C[14]~22_combout\ = \inst12|inst35|inst3|C[13]~21\ $ (\inst12|inst35|inst12|Y[14]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst12|inst35|inst12|Y[14]~23_combout\,
	cin => \inst12|inst35|inst3|C[13]~21\,
	combout => \inst12|inst35|inst3|C[14]~22_combout\);

-- Location: LCCOMB_X19_Y21_N24
\inst12|inst28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst28~combout\ = ((\inst1|inst4|LessThan0~0_combout\ & \inst8|inst|mouse_data_reg|data\(16))) # (!\inst12|inst14|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|LessThan0~0_combout\,
	datac => \inst8|inst|mouse_data_reg|data\(16),
	datad => \inst12|inst14|data\(0),
	combout => \inst12|inst28~combout\);

-- Location: LCCOMB_X17_Y21_N10
\inst12|inst|altsyncram_component|auto_generated|decode2|w_anode434w[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode434w[2]~0_combout\ = (\inst12|inst28~combout\ & ((\inst12|inst14|data\(0) & ((!\inst12|inst35|inst3|C[13]~20_combout\))) # (!\inst12|inst14|data\(0) & 
-- (!\inst12|inst10|inst3|C[13]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst14|data\(0),
	datab => \inst12|inst10|inst3|C[13]~20_combout\,
	datac => \inst12|inst28~combout\,
	datad => \inst12|inst35|inst3|C[13]~20_combout\,
	combout => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode434w[2]~0_combout\);

-- Location: LCCOMB_X17_Y21_N14
\inst12|inst|altsyncram_component|auto_generated|decode2|w_anode413w[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode413w\(2) = (\inst12|inst|altsyncram_component|auto_generated|decode2|w_anode434w[2]~0_combout\ & ((\inst12|inst14|data\(0) & ((!\inst12|inst35|inst3|C[14]~22_combout\))) # 
-- (!\inst12|inst14|data\(0) & (!\inst12|inst10|inst3|C[14]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst3|C[14]~22_combout\,
	datab => \inst12|inst14|data\(0),
	datac => \inst12|inst35|inst3|C[14]~22_combout\,
	datad => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode434w[2]~0_combout\,
	combout => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode413w\(2));

-- Location: LCCOMB_X19_Y21_N30
\inst12|inst8|Y[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst8|Y[3]~1_combout\ = (\inst10|inst27|inst11|Y[3]~0_combout\) # ((\inst8|inst|mouse_data_reg|data\(17)) # (!\inst12|inst14|data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst27|inst11|Y[3]~0_combout\,
	datac => \inst8|inst|mouse_data_reg|data\(17),
	datad => \inst12|inst14|data\(0),
	combout => \inst12|inst8|Y[3]~1_combout\);

-- Location: LCCOMB_X20_Y22_N18
\inst12|inst41|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst41|Y[0]~0_combout\ = (\inst12|inst14|data\(0) & ((\inst10|X_LeftSide|data\(2)))) # (!\inst12|inst14|data\(0) & (\inst|inst|data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst14|data\(0),
	datac => \inst|inst|data\(2),
	datad => \inst10|X_LeftSide|data\(2),
	combout => \inst12|inst41|Y[0]~0_combout\);

-- Location: LCCOMB_X20_Y22_N4
\inst12|inst41|Y[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst41|Y[1]~1_combout\ = (\inst12|inst14|data\(0) & ((\inst10|X_LeftSide|data\(3)))) # (!\inst12|inst14|data\(0) & (\inst|inst|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(3),
	datab => \inst12|inst14|data\(0),
	datac => \inst10|X_LeftSide|data\(3),
	combout => \inst12|inst41|Y[1]~1_combout\);

-- Location: LCCOMB_X20_Y22_N10
\inst12|inst41|Y[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst41|Y[2]~2_combout\ = (\inst12|inst14|data\(0) & ((!\inst10|X_LeftSide|data\(4)))) # (!\inst12|inst14|data\(0) & (\inst|inst|data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(4),
	datac => \inst12|inst14|data\(0),
	datad => \inst10|X_LeftSide|data\(4),
	combout => \inst12|inst41|Y[2]~2_combout\);

-- Location: LCCOMB_X17_Y21_N4
\inst12|inst35|inst3|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst3|Add0~0_combout\ = (\inst12|inst14|data\(0) & (\inst12|inst35|inst3|C[3]~0_combout\)) # (!\inst12|inst14|data\(0) & ((\inst12|inst10|inst3|C[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst14|data\(0),
	datab => \inst12|inst35|inst3|C[3]~0_combout\,
	datac => \inst12|inst10|inst3|C[3]~0_combout\,
	combout => \inst12|inst35|inst3|Add0~0_combout\);

-- Location: LCCOMB_X17_Y21_N26
\inst12|inst35|inst3|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst3|Add0~1_combout\ = (\inst12|inst14|data\(0) & (\inst12|inst35|inst3|C[4]~2_combout\)) # (!\inst12|inst14|data\(0) & ((\inst12|inst10|inst3|C[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst14|data\(0),
	datac => \inst12|inst35|inst3|C[4]~2_combout\,
	datad => \inst12|inst10|inst3|C[4]~2_combout\,
	combout => \inst12|inst35|inst3|Add0~1_combout\);

-- Location: LCCOMB_X17_Y21_N20
\inst12|inst35|inst3|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst3|Add0~2_combout\ = (\inst12|inst14|data\(0) & (\inst12|inst35|inst3|C[5]~4_combout\)) # (!\inst12|inst14|data\(0) & ((\inst12|inst10|inst3|C[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst14|data\(0),
	datac => \inst12|inst35|inst3|C[5]~4_combout\,
	datad => \inst12|inst10|inst3|C[5]~4_combout\,
	combout => \inst12|inst35|inst3|Add0~2_combout\);

-- Location: LCCOMB_X17_Y21_N6
\inst12|inst35|inst3|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst3|Add0~3_combout\ = (\inst12|inst14|data\(0) & (\inst12|inst35|inst3|C[6]~6_combout\)) # (!\inst12|inst14|data\(0) & ((\inst12|inst10|inst3|C[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst14|data\(0),
	datac => \inst12|inst35|inst3|C[6]~6_combout\,
	datad => \inst12|inst10|inst3|C[6]~6_combout\,
	combout => \inst12|inst35|inst3|Add0~3_combout\);

-- Location: LCCOMB_X21_Y21_N30
\inst12|inst35|inst3|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst3|Add0~4_combout\ = (\inst12|inst14|data\(0) & ((\inst12|inst35|inst3|C[7]~8_combout\))) # (!\inst12|inst14|data\(0) & (\inst12|inst10|inst3|C[7]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst3|C[7]~8_combout\,
	datab => \inst12|inst14|data\(0),
	datad => \inst12|inst35|inst3|C[7]~8_combout\,
	combout => \inst12|inst35|inst3|Add0~4_combout\);

-- Location: LCCOMB_X17_Y21_N12
\inst12|inst35|inst3|Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst3|Add0~5_combout\ = (\inst12|inst14|data\(0) & ((\inst12|inst35|inst3|C[8]~10_combout\))) # (!\inst12|inst14|data\(0) & (\inst12|inst10|inst3|C[8]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst14|data\(0),
	datac => \inst12|inst10|inst3|C[8]~10_combout\,
	datad => \inst12|inst35|inst3|C[8]~10_combout\,
	combout => \inst12|inst35|inst3|Add0~5_combout\);

-- Location: LCCOMB_X21_Y21_N26
\inst12|inst35|inst3|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst3|Add0~6_combout\ = (\inst12|inst14|data\(0) & ((\inst12|inst35|inst3|C[9]~12_combout\))) # (!\inst12|inst14|data\(0) & (\inst12|inst10|inst3|C[9]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst10|inst3|C[9]~12_combout\,
	datac => \inst12|inst35|inst3|C[9]~12_combout\,
	datad => \inst12|inst14|data\(0),
	combout => \inst12|inst35|inst3|Add0~6_combout\);

-- Location: LCCOMB_X21_Y21_N28
\inst12|inst35|inst3|Add0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst3|Add0~7_combout\ = (\inst12|inst14|data\(0) & ((\inst12|inst35|inst3|C[10]~14_combout\))) # (!\inst12|inst14|data\(0) & (\inst12|inst10|inst3|C[10]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst10|inst3|C[10]~14_combout\,
	datac => \inst12|inst14|data\(0),
	datad => \inst12|inst35|inst3|C[10]~14_combout\,
	combout => \inst12|inst35|inst3|Add0~7_combout\);

-- Location: LCCOMB_X21_Y21_N0
\inst12|inst35|inst3|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst3|Add0~8_combout\ = (\inst12|inst14|data\(0) & ((\inst12|inst35|inst3|C[11]~16_combout\))) # (!\inst12|inst14|data\(0) & (\inst12|inst10|inst3|C[11]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst10|inst3|C[11]~16_combout\,
	datac => \inst12|inst14|data\(0),
	datad => \inst12|inst35|inst3|C[11]~16_combout\,
	combout => \inst12|inst35|inst3|Add0~8_combout\);

-- Location: LCCOMB_X20_Y21_N28
\inst12|inst35|inst3|Add0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst35|inst3|Add0~9_combout\ = (\inst12|inst14|data\(0) & ((\inst12|inst35|inst3|C[12]~18_combout\))) # (!\inst12|inst14|data\(0) & (\inst12|inst10|inst3|C[12]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst3|C[12]~18_combout\,
	datac => \inst12|inst35|inst3|C[12]~18_combout\,
	datad => \inst12|inst14|data\(0),
	combout => \inst12|inst35|inst3|Add0~9_combout\);

-- Location: M9K_X13_Y5_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a3\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode413w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X17_Y21_N28
\inst12|inst|altsyncram_component|auto_generated|decode2|w_anode434w[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode434w\(2) = (\inst12|inst|altsyncram_component|auto_generated|decode2|w_anode434w[2]~0_combout\ & ((\inst12|inst14|data\(0) & ((\inst12|inst35|inst3|C[14]~22_combout\))) # 
-- (!\inst12|inst14|data\(0) & (\inst12|inst10|inst3|C[14]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst3|C[14]~22_combout\,
	datab => \inst12|inst14|data\(0),
	datac => \inst12|inst35|inst3|C[14]~22_combout\,
	datad => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode434w[2]~0_combout\,
	combout => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode434w\(2));

-- Location: M9K_X13_Y9_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a27\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode434w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y17_N20
\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[3]~0_combout\ = (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & (((\inst12|inst|altsyncram_component|auto_generated|ram_block1a27~portbdataout\) # 
-- (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0))))) # (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & (\inst12|inst|altsyncram_component|auto_generated|ram_block1a3~portbdataout\ & 
-- ((!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datab => \inst12|inst|altsyncram_component|auto_generated|ram_block1a3~portbdataout\,
	datac => \inst12|inst|altsyncram_component|auto_generated|ram_block1a27~portbdataout\,
	datad => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	combout => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[3]~0_combout\);

-- Location: LCCOMB_X19_Y21_N6
\inst12|inst|altsyncram_component|auto_generated|decode2|w_anode442w[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode442w[2]~0_combout\ = (\inst12|inst28~combout\ & ((\inst12|inst14|data\(0) & ((\inst12|inst35|inst3|C[13]~20_combout\))) # (!\inst12|inst14|data\(0) & 
-- (\inst12|inst10|inst3|C[13]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst28~combout\,
	datab => \inst12|inst14|data\(0),
	datac => \inst12|inst10|inst3|C[13]~20_combout\,
	datad => \inst12|inst35|inst3|C[13]~20_combout\,
	combout => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode442w[2]~0_combout\);

-- Location: LCCOMB_X19_Y21_N8
\inst12|inst|altsyncram_component|auto_generated|decode2|w_anode426w[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode426w\(2) = (\inst12|inst|altsyncram_component|auto_generated|decode2|w_anode442w[2]~0_combout\ & ((\inst12|inst14|data\(0) & ((!\inst12|inst35|inst3|C[14]~22_combout\))) # 
-- (!\inst12|inst14|data\(0) & (!\inst12|inst10|inst3|C[14]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst3|C[14]~22_combout\,
	datab => \inst12|inst14|data\(0),
	datac => \inst12|inst35|inst3|C[14]~22_combout\,
	datad => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode442w[2]~0_combout\,
	combout => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode426w\(2));

-- Location: M9K_X25_Y5_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a15\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode426w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X19_Y21_N0
\inst12|inst|altsyncram_component|auto_generated|decode2|w_anode442w[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode442w\(2) = (\inst12|inst|altsyncram_component|auto_generated|decode2|w_anode442w[2]~0_combout\ & ((\inst12|inst14|data\(0) & ((\inst12|inst35|inst3|C[14]~22_combout\))) # 
-- (!\inst12|inst14|data\(0) & (\inst12|inst10|inst3|C[14]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst10|inst3|C[14]~22_combout\,
	datab => \inst12|inst14|data\(0),
	datac => \inst12|inst35|inst3|C[14]~22_combout\,
	datad => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode442w[2]~0_combout\,
	combout => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode442w\(2));

-- Location: LCCOMB_X22_Y22_N16
\inst12|inst8|Y[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst8|Y[2]~2_combout\ = (\inst|inst|data\(8) & \inst|inst|data\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(8),
	datac => \inst|inst|data\(7),
	combout => \inst12|inst8|Y[2]~2_combout\);

-- Location: LCCOMB_X22_Y22_N8
\inst1|inst51|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst51|LessThan1~2_combout\ = (!\inst|inst|data\(3) & (!\inst|inst|data\(1) & (!\inst|inst|data\(2) & !\inst|inst|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(3),
	datab => \inst|inst|data\(1),
	datac => \inst|inst|data\(2),
	datad => \inst|inst|data\(0),
	combout => \inst1|inst51|LessThan1~2_combout\);

-- Location: LCCOMB_X22_Y22_N30
\inst12|inst8|Y[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst8|Y[2]~3_combout\ = (\inst12|inst8|Y[2]~2_combout\ & (((\inst|inst|data\(4) & !\inst1|inst51|LessThan1~2_combout\)) # (!\inst12|inst8|Y[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(4),
	datab => \inst12|inst8|Y[2]~2_combout\,
	datac => \inst1|inst51|LessThan1~2_combout\,
	datad => \inst12|inst8|Y[2]~0_combout\,
	combout => \inst12|inst8|Y[2]~3_combout\);

-- Location: LCCOMB_X19_Y21_N10
\inst12|inst8|Y[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst8|Y[2]~4_combout\ = (\inst8|inst|mouse_data_reg|data\(17) & ((\inst|inst|data\(9)) # ((\inst12|inst8|Y[2]~3_combout\)))) # (!\inst8|inst|mouse_data_reg|data\(17) & (!\inst12|inst14|data\(0) & ((\inst|inst|data\(9)) # 
-- (\inst12|inst8|Y[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|mouse_data_reg|data\(17),
	datab => \inst|inst|data\(9),
	datac => \inst12|inst8|Y[2]~3_combout\,
	datad => \inst12|inst14|data\(0),
	combout => \inst12|inst8|Y[2]~4_combout\);

-- Location: LCCOMB_X19_Y21_N20
\inst12|inst8|Y[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst8|Y[2]~5_combout\ = (\inst12|inst8|Y[2]~4_combout\) # ((!\inst8|inst|mouse_data_reg|data\(17) & (\inst12|inst14|data\(0) & \inst10|inst27|inst11|Y[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|mouse_data_reg|data\(17),
	datab => \inst12|inst14|data\(0),
	datac => \inst10|inst27|inst11|Y[3]~0_combout\,
	datad => \inst12|inst8|Y[2]~4_combout\,
	combout => \inst12|inst8|Y[2]~5_combout\);

-- Location: M9K_X25_Y18_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a38\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode442w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a38_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a38_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a38_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y17_N26
\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[3]~1_combout\ = (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & ((\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[3]~0_combout\ & 
-- ((\inst12|inst|altsyncram_component|auto_generated|ram_block1a39\))) # (!\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[3]~0_combout\ & (\inst12|inst|altsyncram_component|auto_generated|ram_block1a15~portbdataout\)))) # 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & (\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datab => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[3]~0_combout\,
	datac => \inst12|inst|altsyncram_component|auto_generated|ram_block1a15~portbdataout\,
	datad => \inst12|inst|altsyncram_component|auto_generated|ram_block1a39\,
	combout => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[3]~1_combout\);

-- Location: LCCOMB_X19_Y18_N0
\inst10|inst16|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst16|Equal0~0_combout\ = (\inst10|X_RightSide|data\(9) & (\inst|inst|data\(9) & (\inst|inst|data\(8) $ (\inst10|X_RightSide|data\(8))))) # (!\inst10|X_RightSide|data\(9) & (!\inst|inst|data\(9) & (\inst|inst|data\(8) $ 
-- (\inst10|X_RightSide|data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_RightSide|data\(9),
	datab => \inst|inst|data\(8),
	datac => \inst10|X_RightSide|data\(8),
	datad => \inst|inst|data\(9),
	combout => \inst10|inst16|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y18_N30
\inst10|inst16|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst16|Equal0~2_combout\ = (\inst10|X_RightSide|data\(3) & (\inst|inst|data\(3) & (\inst|inst|data\(2) $ (!\inst10|X_RightSide|data\(2))))) # (!\inst10|X_RightSide|data\(3) & (!\inst|inst|data\(3) & (\inst|inst|data\(2) $ 
-- (!\inst10|X_RightSide|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_RightSide|data\(3),
	datab => \inst|inst|data\(2),
	datac => \inst10|X_RightSide|data\(2),
	datad => \inst|inst|data\(3),
	combout => \inst10|inst16|Equal0~2_combout\);

-- Location: LCCOMB_X20_Y18_N0
\inst10|inst16|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst16|Equal0~1_combout\ = (\inst|inst|data\(0) & (!\inst10|X_RightSide|data\(0) & (\inst|inst|data\(1) $ (\inst10|X_RightSide|data\(1))))) # (!\inst|inst|data\(0) & (\inst10|X_RightSide|data\(0) & (\inst|inst|data\(1) $ 
-- (\inst10|X_RightSide|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(0),
	datab => \inst10|X_RightSide|data\(0),
	datac => \inst|inst|data\(1),
	datad => \inst10|X_RightSide|data\(1),
	combout => \inst10|inst16|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y18_N4
\inst10|inst16|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst16|Equal0~3_combout\ = (\inst10|X_RightSide|data\(4) & (!\inst|inst|data\(4) & (\inst|inst|data\(5) $ (!\inst10|X_RightSide|data\(5))))) # (!\inst10|X_RightSide|data\(4) & (\inst|inst|data\(4) & (\inst|inst|data\(5) $ 
-- (!\inst10|X_RightSide|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_RightSide|data\(4),
	datab => \inst|inst|data\(4),
	datac => \inst|inst|data\(5),
	datad => \inst10|X_RightSide|data\(5),
	combout => \inst10|inst16|Equal0~3_combout\);

-- Location: LCCOMB_X20_Y18_N2
\inst10|inst16|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst16|Equal0~4_combout\ = (\inst10|X_RightSide|data\(7) & (!\inst|inst|data\(7) & (\inst10|X_RightSide|data\(6) $ (!\inst|inst|data\(6))))) # (!\inst10|X_RightSide|data\(7) & (\inst|inst|data\(7) & (\inst10|X_RightSide|data\(6) $ 
-- (!\inst|inst|data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_RightSide|data\(7),
	datab => \inst10|X_RightSide|data\(6),
	datac => \inst|inst|data\(6),
	datad => \inst|inst|data\(7),
	combout => \inst10|inst16|Equal0~4_combout\);

-- Location: LCCOMB_X20_Y18_N28
\inst10|inst16|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst16|Equal0~5_combout\ = (\inst10|inst16|Equal0~2_combout\ & (\inst10|inst16|Equal0~1_combout\ & (\inst10|inst16|Equal0~3_combout\ & \inst10|inst16|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst16|Equal0~2_combout\,
	datab => \inst10|inst16|Equal0~1_combout\,
	datac => \inst10|inst16|Equal0~3_combout\,
	datad => \inst10|inst16|Equal0~4_combout\,
	combout => \inst10|inst16|Equal0~5_combout\);

-- Location: LCCOMB_X23_Y24_N0
\inst10|inst17|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst17|Equal0~4_combout\ = (\inst10|Y_UpSide|data\(6) & (\inst|inst1|data\(6) & (\inst10|Y_UpSide|data\(7) $ (!\inst|inst1|data\(7))))) # (!\inst10|Y_UpSide|data\(6) & (!\inst|inst1|data\(6) & (\inst10|Y_UpSide|data\(7) $ 
-- (!\inst|inst1|data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_UpSide|data\(6),
	datab => \inst|inst1|data\(6),
	datac => \inst10|Y_UpSide|data\(7),
	datad => \inst|inst1|data\(7),
	combout => \inst10|inst17|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y23_N28
\inst10|inst17|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst17|Equal0~2_combout\ = (\inst10|Y_UpSide|data\(2) & (!\inst|inst1|data\(2) & (\inst|inst1|data\(3) $ (\inst10|Y_UpSide|data\(3))))) # (!\inst10|Y_UpSide|data\(2) & (\inst|inst1|data\(2) & (\inst|inst1|data\(3) $ (\inst10|Y_UpSide|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_UpSide|data\(2),
	datab => \inst|inst1|data\(3),
	datac => \inst10|Y_UpSide|data\(3),
	datad => \inst|inst1|data\(2),
	combout => \inst10|inst17|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y23_N26
\inst10|inst17|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst17|Equal0~3_combout\ = (\inst|inst1|data\(4) & (\inst10|Y_UpSide|data\(4) & (\inst|inst1|data\(5) $ (\inst10|Y_UpSide|data\(5))))) # (!\inst|inst1|data\(4) & (!\inst10|Y_UpSide|data\(4) & (\inst|inst1|data\(5) $ (\inst10|Y_UpSide|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(4),
	datab => \inst|inst1|data\(5),
	datac => \inst10|Y_UpSide|data\(5),
	datad => \inst10|Y_UpSide|data\(4),
	combout => \inst10|inst17|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y23_N2
\inst10|inst17|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst17|Equal0~1_combout\ = (\inst10|Y_UpSide|data\(1) & (!\inst|inst1|data\(1) & (\inst|inst1|data\(0) $ (!\inst10|Y_UpSide|data\(0))))) # (!\inst10|Y_UpSide|data\(1) & (\inst|inst1|data\(1) & (\inst|inst1|data\(0) $ 
-- (!\inst10|Y_UpSide|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_UpSide|data\(1),
	datab => \inst|inst1|data\(1),
	datac => \inst|inst1|data\(0),
	datad => \inst10|Y_UpSide|data\(0),
	combout => \inst10|inst17|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y23_N24
\inst10|inst17|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst17|Equal0~5_combout\ = (\inst10|inst17|Equal0~4_combout\ & (\inst10|inst17|Equal0~2_combout\ & (\inst10|inst17|Equal0~3_combout\ & \inst10|inst17|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst17|Equal0~4_combout\,
	datab => \inst10|inst17|Equal0~2_combout\,
	datac => \inst10|inst17|Equal0~3_combout\,
	datad => \inst10|inst17|Equal0~1_combout\,
	combout => \inst10|inst17|Equal0~5_combout\);

-- Location: LCCOMB_X23_Y23_N4
\inst10|inst17|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst17|LessThan1~1_cout\ = CARRY((!\inst10|Y_UpSide|data\(0) & \inst|inst1|data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_UpSide|data\(0),
	datab => \inst|inst1|data\(0),
	datad => VCC,
	cout => \inst10|inst17|LessThan1~1_cout\);

-- Location: LCCOMB_X23_Y23_N6
\inst10|inst17|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst17|LessThan1~3_cout\ = CARRY((\inst10|Y_UpSide|data\(1) & (!\inst|inst1|data\(1) & !\inst10|inst17|LessThan1~1_cout\)) # (!\inst10|Y_UpSide|data\(1) & ((!\inst10|inst17|LessThan1~1_cout\) # (!\inst|inst1|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_UpSide|data\(1),
	datab => \inst|inst1|data\(1),
	datad => VCC,
	cin => \inst10|inst17|LessThan1~1_cout\,
	cout => \inst10|inst17|LessThan1~3_cout\);

-- Location: LCCOMB_X23_Y23_N8
\inst10|inst17|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst17|LessThan1~5_cout\ = CARRY((\inst10|Y_UpSide|data\(2) & ((\inst|inst1|data\(2)) # (!\inst10|inst17|LessThan1~3_cout\))) # (!\inst10|Y_UpSide|data\(2) & (\inst|inst1|data\(2) & !\inst10|inst17|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_UpSide|data\(2),
	datab => \inst|inst1|data\(2),
	datad => VCC,
	cin => \inst10|inst17|LessThan1~3_cout\,
	cout => \inst10|inst17|LessThan1~5_cout\);

-- Location: LCCOMB_X23_Y23_N10
\inst10|inst17|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst17|LessThan1~7_cout\ = CARRY((\inst10|Y_UpSide|data\(3) & (!\inst|inst1|data\(3) & !\inst10|inst17|LessThan1~5_cout\)) # (!\inst10|Y_UpSide|data\(3) & ((!\inst10|inst17|LessThan1~5_cout\) # (!\inst|inst1|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_UpSide|data\(3),
	datab => \inst|inst1|data\(3),
	datad => VCC,
	cin => \inst10|inst17|LessThan1~5_cout\,
	cout => \inst10|inst17|LessThan1~7_cout\);

-- Location: LCCOMB_X23_Y23_N12
\inst10|inst17|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst17|LessThan1~9_cout\ = CARRY((\inst|inst1|data\(4) & ((!\inst10|inst17|LessThan1~7_cout\) # (!\inst10|Y_UpSide|data\(4)))) # (!\inst|inst1|data\(4) & (!\inst10|Y_UpSide|data\(4) & !\inst10|inst17|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(4),
	datab => \inst10|Y_UpSide|data\(4),
	datad => VCC,
	cin => \inst10|inst17|LessThan1~7_cout\,
	cout => \inst10|inst17|LessThan1~9_cout\);

-- Location: LCCOMB_X23_Y23_N14
\inst10|inst17|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst17|LessThan1~11_cout\ = CARRY((\inst10|Y_UpSide|data\(5) & (!\inst|inst1|data\(5) & !\inst10|inst17|LessThan1~9_cout\)) # (!\inst10|Y_UpSide|data\(5) & ((!\inst10|inst17|LessThan1~9_cout\) # (!\inst|inst1|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_UpSide|data\(5),
	datab => \inst|inst1|data\(5),
	datad => VCC,
	cin => \inst10|inst17|LessThan1~9_cout\,
	cout => \inst10|inst17|LessThan1~11_cout\);

-- Location: LCCOMB_X23_Y23_N16
\inst10|inst17|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst17|LessThan1~13_cout\ = CARRY((\inst|inst1|data\(6) & ((!\inst10|inst17|LessThan1~11_cout\) # (!\inst10|Y_UpSide|data\(6)))) # (!\inst|inst1|data\(6) & (!\inst10|Y_UpSide|data\(6) & !\inst10|inst17|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(6),
	datab => \inst10|Y_UpSide|data\(6),
	datad => VCC,
	cin => \inst10|inst17|LessThan1~11_cout\,
	cout => \inst10|inst17|LessThan1~13_cout\);

-- Location: LCCOMB_X23_Y23_N18
\inst10|inst17|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst17|LessThan1~15_cout\ = CARRY((\inst10|Y_UpSide|data\(7) & ((!\inst10|inst17|LessThan1~13_cout\) # (!\inst|inst1|data\(7)))) # (!\inst10|Y_UpSide|data\(7) & (!\inst|inst1|data\(7) & !\inst10|inst17|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_UpSide|data\(7),
	datab => \inst|inst1|data\(7),
	datad => VCC,
	cin => \inst10|inst17|LessThan1~13_cout\,
	cout => \inst10|inst17|LessThan1~15_cout\);

-- Location: LCCOMB_X23_Y23_N20
\inst10|inst17|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst17|LessThan1~17_cout\ = CARRY((\inst10|Y_UpSide|data\(8) & ((\inst|inst1|data\(8)) # (!\inst10|inst17|LessThan1~15_cout\))) # (!\inst10|Y_UpSide|data\(8) & (\inst|inst1|data\(8) & !\inst10|inst17|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_UpSide|data\(8),
	datab => \inst|inst1|data\(8),
	datad => VCC,
	cin => \inst10|inst17|LessThan1~15_cout\,
	cout => \inst10|inst17|LessThan1~17_cout\);

-- Location: LCCOMB_X23_Y23_N22
\inst10|inst17|LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst17|LessThan1~18_combout\ = (\inst10|Y_UpSide|data\(9) & (\inst10|inst17|LessThan1~17_cout\ & \inst|inst1|data\(9))) # (!\inst10|Y_UpSide|data\(9) & ((\inst10|inst17|LessThan1~17_cout\) # (\inst|inst1|data\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Y_UpSide|data\(9),
	datad => \inst|inst1|data\(9),
	cin => \inst10|inst17|LessThan1~17_cout\,
	combout => \inst10|inst17|LessThan1~18_combout\);

-- Location: LCCOMB_X23_Y23_N0
\inst10|inst17|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst17|Equal0~0_combout\ = (\inst|inst1|data\(9) & (\inst10|Y_UpSide|data\(9) & (\inst10|Y_UpSide|data\(8) $ (\inst|inst1|data\(8))))) # (!\inst|inst1|data\(9) & (!\inst10|Y_UpSide|data\(9) & (\inst10|Y_UpSide|data\(8) $ (\inst|inst1|data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(9),
	datab => \inst10|Y_UpSide|data\(9),
	datac => \inst10|Y_UpSide|data\(8),
	datad => \inst|inst1|data\(8),
	combout => \inst10|inst17|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y23_N30
\inst10|inst52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst52~combout\ = (\inst10|inst17|LessThan1~18_combout\) # ((\inst10|inst17|Equal0~5_combout\ & \inst10|inst17|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst17|Equal0~5_combout\,
	datac => \inst10|inst17|LessThan1~18_combout\,
	datad => \inst10|inst17|Equal0~0_combout\,
	combout => \inst10|inst52~combout\);

-- Location: LCCOMB_X20_Y18_N8
\inst10|inst16|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst16|LessThan1~1_cout\ = CARRY((!\inst|inst|data\(0) & !\inst10|X_RightSide|data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(0),
	datab => \inst10|X_RightSide|data\(0),
	datad => VCC,
	cout => \inst10|inst16|LessThan1~1_cout\);

-- Location: LCCOMB_X20_Y18_N10
\inst10|inst16|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst16|LessThan1~3_cout\ = CARRY((\inst10|X_RightSide|data\(1) & ((\inst|inst|data\(1)) # (!\inst10|inst16|LessThan1~1_cout\))) # (!\inst10|X_RightSide|data\(1) & (\inst|inst|data\(1) & !\inst10|inst16|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_RightSide|data\(1),
	datab => \inst|inst|data\(1),
	datad => VCC,
	cin => \inst10|inst16|LessThan1~1_cout\,
	cout => \inst10|inst16|LessThan1~3_cout\);

-- Location: LCCOMB_X20_Y18_N12
\inst10|inst16|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst16|LessThan1~5_cout\ = CARRY((\inst|inst|data\(2) & (\inst10|X_RightSide|data\(2) & !\inst10|inst16|LessThan1~3_cout\)) # (!\inst|inst|data\(2) & ((\inst10|X_RightSide|data\(2)) # (!\inst10|inst16|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(2),
	datab => \inst10|X_RightSide|data\(2),
	datad => VCC,
	cin => \inst10|inst16|LessThan1~3_cout\,
	cout => \inst10|inst16|LessThan1~5_cout\);

-- Location: LCCOMB_X20_Y18_N14
\inst10|inst16|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst16|LessThan1~7_cout\ = CARRY((\inst10|X_RightSide|data\(3) & (\inst|inst|data\(3) & !\inst10|inst16|LessThan1~5_cout\)) # (!\inst10|X_RightSide|data\(3) & ((\inst|inst|data\(3)) # (!\inst10|inst16|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_RightSide|data\(3),
	datab => \inst|inst|data\(3),
	datad => VCC,
	cin => \inst10|inst16|LessThan1~5_cout\,
	cout => \inst10|inst16|LessThan1~7_cout\);

-- Location: LCCOMB_X20_Y18_N16
\inst10|inst16|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst16|LessThan1~9_cout\ = CARRY((\inst10|X_RightSide|data\(4) & (!\inst|inst|data\(4) & !\inst10|inst16|LessThan1~7_cout\)) # (!\inst10|X_RightSide|data\(4) & ((!\inst10|inst16|LessThan1~7_cout\) # (!\inst|inst|data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_RightSide|data\(4),
	datab => \inst|inst|data\(4),
	datad => VCC,
	cin => \inst10|inst16|LessThan1~7_cout\,
	cout => \inst10|inst16|LessThan1~9_cout\);

-- Location: LCCOMB_X20_Y18_N18
\inst10|inst16|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst16|LessThan1~11_cout\ = CARRY((\inst|inst|data\(5) & ((!\inst10|inst16|LessThan1~9_cout\) # (!\inst10|X_RightSide|data\(5)))) # (!\inst|inst|data\(5) & (!\inst10|X_RightSide|data\(5) & !\inst10|inst16|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(5),
	datab => \inst10|X_RightSide|data\(5),
	datad => VCC,
	cin => \inst10|inst16|LessThan1~9_cout\,
	cout => \inst10|inst16|LessThan1~11_cout\);

-- Location: LCCOMB_X20_Y18_N20
\inst10|inst16|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst16|LessThan1~13_cout\ = CARRY((\inst|inst|data\(6) & (\inst10|X_RightSide|data\(6) & !\inst10|inst16|LessThan1~11_cout\)) # (!\inst|inst|data\(6) & ((\inst10|X_RightSide|data\(6)) # (!\inst10|inst16|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(6),
	datab => \inst10|X_RightSide|data\(6),
	datad => VCC,
	cin => \inst10|inst16|LessThan1~11_cout\,
	cout => \inst10|inst16|LessThan1~13_cout\);

-- Location: LCCOMB_X20_Y18_N22
\inst10|inst16|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst16|LessThan1~15_cout\ = CARRY((\inst10|X_RightSide|data\(7) & ((\inst|inst|data\(7)) # (!\inst10|inst16|LessThan1~13_cout\))) # (!\inst10|X_RightSide|data\(7) & (\inst|inst|data\(7) & !\inst10|inst16|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_RightSide|data\(7),
	datab => \inst|inst|data\(7),
	datad => VCC,
	cin => \inst10|inst16|LessThan1~13_cout\,
	cout => \inst10|inst16|LessThan1~15_cout\);

-- Location: LCCOMB_X20_Y18_N24
\inst10|inst16|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst16|LessThan1~17_cout\ = CARRY((\inst|inst|data\(8) & (!\inst10|X_RightSide|data\(8) & !\inst10|inst16|LessThan1~15_cout\)) # (!\inst|inst|data\(8) & ((!\inst10|inst16|LessThan1~15_cout\) # (!\inst10|X_RightSide|data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(8),
	datab => \inst10|X_RightSide|data\(8),
	datad => VCC,
	cin => \inst10|inst16|LessThan1~15_cout\,
	cout => \inst10|inst16|LessThan1~17_cout\);

-- Location: LCCOMB_X20_Y18_N26
\inst10|inst16|LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst16|LessThan1~18_combout\ = (\inst10|X_RightSide|data\(9) & ((\inst10|inst16|LessThan1~17_cout\) # (!\inst|inst|data\(9)))) # (!\inst10|X_RightSide|data\(9) & (!\inst|inst|data\(9) & \inst10|inst16|LessThan1~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_RightSide|data\(9),
	datab => \inst|inst|data\(9),
	cin => \inst10|inst16|LessThan1~17_cout\,
	combout => \inst10|inst16|LessThan1~18_combout\);

-- Location: LCCOMB_X19_Y18_N6
\inst10|inst21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst21~0_combout\ = (\inst10|inst52~combout\ & ((\inst10|inst16|LessThan1~18_combout\) # ((\inst10|inst16|Equal0~0_combout\ & \inst10|inst16|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst16|Equal0~0_combout\,
	datab => \inst10|inst16|Equal0~5_combout\,
	datac => \inst10|inst52~combout\,
	datad => \inst10|inst16|LessThan1~18_combout\,
	combout => \inst10|inst21~0_combout\);

-- Location: LCCOMB_X26_Y22_N10
\inst10|inst18|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst18|LessThan1~1_cout\ = CARRY((!\inst10|Y_DownSide|data\(0) & !\inst|inst1|data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_DownSide|data\(0),
	datab => \inst|inst1|data\(0),
	datad => VCC,
	cout => \inst10|inst18|LessThan1~1_cout\);

-- Location: LCCOMB_X26_Y22_N12
\inst10|inst18|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst18|LessThan1~3_cout\ = CARRY((\inst|inst1|data\(1) & ((!\inst10|inst18|LessThan1~1_cout\) # (!\inst10|Y_DownSide|data\(1)))) # (!\inst|inst1|data\(1) & (!\inst10|Y_DownSide|data\(1) & !\inst10|inst18|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(1),
	datab => \inst10|Y_DownSide|data\(1),
	datad => VCC,
	cin => \inst10|inst18|LessThan1~1_cout\,
	cout => \inst10|inst18|LessThan1~3_cout\);

-- Location: LCCOMB_X26_Y22_N14
\inst10|inst18|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst18|LessThan1~5_cout\ = CARRY((\inst10|Y_DownSide|data\(2) & ((!\inst10|inst18|LessThan1~3_cout\) # (!\inst|inst1|data\(2)))) # (!\inst10|Y_DownSide|data\(2) & (!\inst|inst1|data\(2) & !\inst10|inst18|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_DownSide|data\(2),
	datab => \inst|inst1|data\(2),
	datad => VCC,
	cin => \inst10|inst18|LessThan1~3_cout\,
	cout => \inst10|inst18|LessThan1~5_cout\);

-- Location: LCCOMB_X26_Y22_N16
\inst10|inst18|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst18|LessThan1~7_cout\ = CARRY((\inst|inst1|data\(3) & ((!\inst10|inst18|LessThan1~5_cout\) # (!\inst10|Y_DownSide|data\(3)))) # (!\inst|inst1|data\(3) & (!\inst10|Y_DownSide|data\(3) & !\inst10|inst18|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(3),
	datab => \inst10|Y_DownSide|data\(3),
	datad => VCC,
	cin => \inst10|inst18|LessThan1~5_cout\,
	cout => \inst10|inst18|LessThan1~7_cout\);

-- Location: LCCOMB_X26_Y22_N18
\inst10|inst18|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst18|LessThan1~9_cout\ = CARRY((\inst10|Y_DownSide|data\(4) & (!\inst|inst1|data\(4) & !\inst10|inst18|LessThan1~7_cout\)) # (!\inst10|Y_DownSide|data\(4) & ((!\inst10|inst18|LessThan1~7_cout\) # (!\inst|inst1|data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_DownSide|data\(4),
	datab => \inst|inst1|data\(4),
	datad => VCC,
	cin => \inst10|inst18|LessThan1~7_cout\,
	cout => \inst10|inst18|LessThan1~9_cout\);

-- Location: LCCOMB_X26_Y22_N20
\inst10|inst18|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst18|LessThan1~11_cout\ = CARRY((\inst10|Y_DownSide|data\(5) & ((\inst|inst1|data\(5)) # (!\inst10|inst18|LessThan1~9_cout\))) # (!\inst10|Y_DownSide|data\(5) & (\inst|inst1|data\(5) & !\inst10|inst18|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_DownSide|data\(5),
	datab => \inst|inst1|data\(5),
	datad => VCC,
	cin => \inst10|inst18|LessThan1~9_cout\,
	cout => \inst10|inst18|LessThan1~11_cout\);

-- Location: LCCOMB_X26_Y22_N22
\inst10|inst18|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst18|LessThan1~13_cout\ = CARRY((\inst|inst1|data\(6) & (\inst10|Y_DownSide|data\(6) & !\inst10|inst18|LessThan1~11_cout\)) # (!\inst|inst1|data\(6) & ((\inst10|Y_DownSide|data\(6)) # (!\inst10|inst18|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(6),
	datab => \inst10|Y_DownSide|data\(6),
	datad => VCC,
	cin => \inst10|inst18|LessThan1~11_cout\,
	cout => \inst10|inst18|LessThan1~13_cout\);

-- Location: LCCOMB_X26_Y22_N24
\inst10|inst18|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst18|LessThan1~15_cout\ = CARRY((\inst|inst1|data\(7) & ((!\inst10|inst18|LessThan1~13_cout\) # (!\inst10|Y_DownSide|data\(7)))) # (!\inst|inst1|data\(7) & (!\inst10|Y_DownSide|data\(7) & !\inst10|inst18|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(7),
	datab => \inst10|Y_DownSide|data\(7),
	datad => VCC,
	cin => \inst10|inst18|LessThan1~13_cout\,
	cout => \inst10|inst18|LessThan1~15_cout\);

-- Location: LCCOMB_X26_Y22_N26
\inst10|inst18|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst18|LessThan1~17_cout\ = CARRY((\inst|inst1|data\(8) & (!\inst10|Y_DownSide|data\(8) & !\inst10|inst18|LessThan1~15_cout\)) # (!\inst|inst1|data\(8) & ((!\inst10|inst18|LessThan1~15_cout\) # (!\inst10|Y_DownSide|data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(8),
	datab => \inst10|Y_DownSide|data\(8),
	datad => VCC,
	cin => \inst10|inst18|LessThan1~15_cout\,
	cout => \inst10|inst18|LessThan1~17_cout\);

-- Location: LCCOMB_X26_Y22_N28
\inst10|inst18|LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst18|LessThan1~18_combout\ = (\inst|inst1|data\(9) & (\inst10|inst18|LessThan1~17_cout\ & \inst10|Y_DownSide|data\(9))) # (!\inst|inst1|data\(9) & ((\inst10|inst18|LessThan1~17_cout\) # (\inst10|Y_DownSide|data\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|data\(9),
	datad => \inst10|Y_DownSide|data\(9),
	cin => \inst10|inst18|LessThan1~17_cout\,
	combout => \inst10|inst18|LessThan1~18_combout\);

-- Location: LCCOMB_X26_Y22_N6
\inst10|inst21~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst21~4_combout\ = (\inst10|Y_DownSide|data\(4) & (!\inst|inst1|data\(4) & (\inst|inst1|data\(5) $ (\inst10|Y_DownSide|data\(5))))) # (!\inst10|Y_DownSide|data\(4) & (\inst|inst1|data\(4) & (\inst|inst1|data\(5) $ (\inst10|Y_DownSide|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_DownSide|data\(4),
	datab => \inst|inst1|data\(4),
	datac => \inst|inst1|data\(5),
	datad => \inst10|Y_DownSide|data\(5),
	combout => \inst10|inst21~4_combout\);

-- Location: LCCOMB_X26_Y22_N0
\inst10|inst21~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst21~5_combout\ = (\inst|inst1|data\(7) & (\inst10|Y_DownSide|data\(7) & (\inst10|Y_DownSide|data\(6) $ (!\inst|inst1|data\(6))))) # (!\inst|inst1|data\(7) & (!\inst10|Y_DownSide|data\(7) & (\inst10|Y_DownSide|data\(6) $ 
-- (!\inst|inst1|data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(7),
	datab => \inst10|Y_DownSide|data\(6),
	datac => \inst|inst1|data\(6),
	datad => \inst10|Y_DownSide|data\(7),
	combout => \inst10|inst21~5_combout\);

-- Location: LCCOMB_X26_Y22_N4
\inst10|inst18|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst18|Equal0~0_combout\ = \inst|inst1|data\(0) $ (!\inst10|Y_DownSide|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|data\(0),
	datad => \inst10|Y_DownSide|data\(0),
	combout => \inst10|inst18|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y22_N0
\inst10|inst21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst21~2_combout\ = (\inst|inst1|data\(3) & (\inst10|Y_DownSide|data\(3) & (\inst|inst1|data\(2) $ (!\inst10|Y_DownSide|data\(2))))) # (!\inst|inst1|data\(3) & (!\inst10|Y_DownSide|data\(3) & (\inst|inst1|data\(2) $ 
-- (!\inst10|Y_DownSide|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(3),
	datab => \inst|inst1|data\(2),
	datac => \inst10|Y_DownSide|data\(3),
	datad => \inst10|Y_DownSide|data\(2),
	combout => \inst10|inst21~2_combout\);

-- Location: LCCOMB_X28_Y22_N6
\inst10|inst21~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst21~3_combout\ = (!\inst10|inst18|Equal0~0_combout\ & (\inst10|inst21~2_combout\ & (\inst10|Y_DownSide|data\(1) $ (!\inst|inst1|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Y_DownSide|data\(1),
	datab => \inst|inst1|data\(1),
	datac => \inst10|inst18|Equal0~0_combout\,
	datad => \inst10|inst21~2_combout\,
	combout => \inst10|inst21~3_combout\);

-- Location: LCCOMB_X26_Y22_N2
\inst10|inst21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst21~1_combout\ = (\inst|inst1|data\(8) & (!\inst10|Y_DownSide|data\(8) & (\inst|inst1|data\(9) $ (!\inst10|Y_DownSide|data\(9))))) # (!\inst|inst1|data\(8) & (\inst10|Y_DownSide|data\(8) & (\inst|inst1|data\(9) $ 
-- (!\inst10|Y_DownSide|data\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(8),
	datab => \inst|inst1|data\(9),
	datac => \inst10|Y_DownSide|data\(8),
	datad => \inst10|Y_DownSide|data\(9),
	combout => \inst10|inst21~1_combout\);

-- Location: LCCOMB_X26_Y22_N30
\inst10|inst21~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst21~6_combout\ = (\inst10|inst21~4_combout\ & (\inst10|inst21~5_combout\ & (\inst10|inst21~3_combout\ & \inst10|inst21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst21~4_combout\,
	datab => \inst10|inst21~5_combout\,
	datac => \inst10|inst21~3_combout\,
	datad => \inst10|inst21~1_combout\,
	combout => \inst10|inst21~6_combout\);

-- Location: LCCOMB_X20_Y20_N8
\inst10|inst15|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst15|LessThan1~1_cout\ = CARRY((\inst|inst|data\(0) & !\inst10|X_LeftSide|data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(0),
	datab => \inst10|X_LeftSide|data\(0),
	datad => VCC,
	cout => \inst10|inst15|LessThan1~1_cout\);

-- Location: LCCOMB_X20_Y20_N10
\inst10|inst15|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst15|LessThan1~3_cout\ = CARRY((\inst|inst|data\(1) & (\inst10|X_LeftSide|data\(1) & !\inst10|inst15|LessThan1~1_cout\)) # (!\inst|inst|data\(1) & ((\inst10|X_LeftSide|data\(1)) # (!\inst10|inst15|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(1),
	datab => \inst10|X_LeftSide|data\(1),
	datad => VCC,
	cin => \inst10|inst15|LessThan1~1_cout\,
	cout => \inst10|inst15|LessThan1~3_cout\);

-- Location: LCCOMB_X20_Y20_N12
\inst10|inst15|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst15|LessThan1~5_cout\ = CARRY((\inst|inst|data\(2) & ((!\inst10|inst15|LessThan1~3_cout\) # (!\inst10|X_LeftSide|data\(2)))) # (!\inst|inst|data\(2) & (!\inst10|X_LeftSide|data\(2) & !\inst10|inst15|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(2),
	datab => \inst10|X_LeftSide|data\(2),
	datad => VCC,
	cin => \inst10|inst15|LessThan1~3_cout\,
	cout => \inst10|inst15|LessThan1~5_cout\);

-- Location: LCCOMB_X20_Y20_N14
\inst10|inst15|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst15|LessThan1~7_cout\ = CARRY((\inst|inst|data\(3) & (\inst10|X_LeftSide|data\(3) & !\inst10|inst15|LessThan1~5_cout\)) # (!\inst|inst|data\(3) & ((\inst10|X_LeftSide|data\(3)) # (!\inst10|inst15|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(3),
	datab => \inst10|X_LeftSide|data\(3),
	datad => VCC,
	cin => \inst10|inst15|LessThan1~5_cout\,
	cout => \inst10|inst15|LessThan1~7_cout\);

-- Location: LCCOMB_X20_Y20_N16
\inst10|inst15|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst15|LessThan1~9_cout\ = CARRY((\inst10|X_LeftSide|data\(4) & ((\inst|inst|data\(4)) # (!\inst10|inst15|LessThan1~7_cout\))) # (!\inst10|X_LeftSide|data\(4) & (\inst|inst|data\(4) & !\inst10|inst15|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_LeftSide|data\(4),
	datab => \inst|inst|data\(4),
	datad => VCC,
	cin => \inst10|inst15|LessThan1~7_cout\,
	cout => \inst10|inst15|LessThan1~9_cout\);

-- Location: LCCOMB_X20_Y20_N18
\inst10|inst15|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst15|LessThan1~11_cout\ = CARRY((\inst|inst|data\(5) & (\inst10|X_LeftSide|data\(5) & !\inst10|inst15|LessThan1~9_cout\)) # (!\inst|inst|data\(5) & ((\inst10|X_LeftSide|data\(5)) # (!\inst10|inst15|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(5),
	datab => \inst10|X_LeftSide|data\(5),
	datad => VCC,
	cin => \inst10|inst15|LessThan1~9_cout\,
	cout => \inst10|inst15|LessThan1~11_cout\);

-- Location: LCCOMB_X20_Y20_N20
\inst10|inst15|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst15|LessThan1~13_cout\ = CARRY((\inst|inst|data\(6) & ((!\inst10|inst15|LessThan1~11_cout\) # (!\inst10|X_LeftSide|data\(6)))) # (!\inst|inst|data\(6) & (!\inst10|X_LeftSide|data\(6) & !\inst10|inst15|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(6),
	datab => \inst10|X_LeftSide|data\(6),
	datad => VCC,
	cin => \inst10|inst15|LessThan1~11_cout\,
	cout => \inst10|inst15|LessThan1~13_cout\);

-- Location: LCCOMB_X20_Y20_N22
\inst10|inst15|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst15|LessThan1~15_cout\ = CARRY((\inst10|X_LeftSide|data\(7) & (!\inst|inst|data\(7) & !\inst10|inst15|LessThan1~13_cout\)) # (!\inst10|X_LeftSide|data\(7) & ((!\inst10|inst15|LessThan1~13_cout\) # (!\inst|inst|data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_LeftSide|data\(7),
	datab => \inst|inst|data\(7),
	datad => VCC,
	cin => \inst10|inst15|LessThan1~13_cout\,
	cout => \inst10|inst15|LessThan1~15_cout\);

-- Location: LCCOMB_X20_Y20_N24
\inst10|inst15|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst15|LessThan1~17_cout\ = CARRY((\inst|inst|data\(8) & ((\inst10|X_LeftSide|data\(8)) # (!\inst10|inst15|LessThan1~15_cout\))) # (!\inst|inst|data\(8) & (\inst10|X_LeftSide|data\(8) & !\inst10|inst15|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(8),
	datab => \inst10|X_LeftSide|data\(8),
	datad => VCC,
	cin => \inst10|inst15|LessThan1~15_cout\,
	cout => \inst10|inst15|LessThan1~17_cout\);

-- Location: LCCOMB_X20_Y20_N26
\inst10|inst15|LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst15|LessThan1~18_combout\ = (\inst|inst|data\(9) & ((\inst10|inst15|LessThan1~17_cout\) # (!\inst10|X_LeftSide|data\(9)))) # (!\inst|inst|data\(9) & (\inst10|inst15|LessThan1~17_cout\ & !\inst10|X_LeftSide|data\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|data\(9),
	datad => \inst10|X_LeftSide|data\(9),
	cin => \inst10|inst15|LessThan1~17_cout\,
	combout => \inst10|inst15|LessThan1~18_combout\);

-- Location: LCCOMB_X20_Y20_N6
\inst10|inst15|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst15|Equal0~1_combout\ = (\inst|inst|data\(1) & (\inst10|X_LeftSide|data\(1) & (\inst10|X_LeftSide|data\(0) $ (!\inst|inst|data\(0))))) # (!\inst|inst|data\(1) & (!\inst10|X_LeftSide|data\(1) & (\inst10|X_LeftSide|data\(0) $ 
-- (!\inst|inst|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(1),
	datab => \inst10|X_LeftSide|data\(0),
	datac => \inst|inst|data\(0),
	datad => \inst10|X_LeftSide|data\(1),
	combout => \inst10|inst15|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y20_N28
\inst10|inst15|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst15|Equal0~3_combout\ = (\inst10|X_LeftSide|data\(4) & (!\inst|inst|data\(4) & (\inst|inst|data\(5) $ (!\inst10|X_LeftSide|data\(5))))) # (!\inst10|X_LeftSide|data\(4) & (\inst|inst|data\(4) & (\inst|inst|data\(5) $ 
-- (!\inst10|X_LeftSide|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|X_LeftSide|data\(4),
	datab => \inst|inst|data\(4),
	datac => \inst|inst|data\(5),
	datad => \inst10|X_LeftSide|data\(5),
	combout => \inst10|inst15|Equal0~3_combout\);

-- Location: LCCOMB_X20_Y20_N30
\inst10|inst15|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst15|Equal0~4_combout\ = (\inst|inst|data\(6) & (\inst10|X_LeftSide|data\(6) & (\inst|inst|data\(7) $ (\inst10|X_LeftSide|data\(7))))) # (!\inst|inst|data\(6) & (!\inst10|X_LeftSide|data\(6) & (\inst|inst|data\(7) $ 
-- (\inst10|X_LeftSide|data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(6),
	datab => \inst10|X_LeftSide|data\(6),
	datac => \inst|inst|data\(7),
	datad => \inst10|X_LeftSide|data\(7),
	combout => \inst10|inst15|Equal0~4_combout\);

-- Location: LCCOMB_X20_Y22_N28
\inst10|inst15|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst15|Equal0~2_combout\ = (\inst|inst|data\(3) & (\inst10|X_LeftSide|data\(3) & (\inst|inst|data\(2) $ (!\inst10|X_LeftSide|data\(2))))) # (!\inst|inst|data\(3) & (!\inst10|X_LeftSide|data\(3) & (\inst|inst|data\(2) $ 
-- (!\inst10|X_LeftSide|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(3),
	datab => \inst|inst|data\(2),
	datac => \inst10|X_LeftSide|data\(3),
	datad => \inst10|X_LeftSide|data\(2),
	combout => \inst10|inst15|Equal0~2_combout\);

-- Location: LCCOMB_X20_Y20_N0
\inst10|inst15|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst15|Equal0~5_combout\ = (\inst10|inst15|Equal0~1_combout\ & (\inst10|inst15|Equal0~3_combout\ & (\inst10|inst15|Equal0~4_combout\ & \inst10|inst15|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst15|Equal0~1_combout\,
	datab => \inst10|inst15|Equal0~3_combout\,
	datac => \inst10|inst15|Equal0~4_combout\,
	datad => \inst10|inst15|Equal0~2_combout\,
	combout => \inst10|inst15|Equal0~5_combout\);

-- Location: LCCOMB_X20_Y20_N4
\inst10|inst15|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst15|Equal0~0_combout\ = (\inst|inst|data\(8) & (!\inst10|X_LeftSide|data\(8) & (\inst|inst|data\(9) $ (!\inst10|X_LeftSide|data\(9))))) # (!\inst|inst|data\(8) & (\inst10|X_LeftSide|data\(8) & (\inst|inst|data\(9) $ 
-- (!\inst10|X_LeftSide|data\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(8),
	datab => \inst|inst|data\(9),
	datac => \inst10|X_LeftSide|data\(8),
	datad => \inst10|X_LeftSide|data\(9),
	combout => \inst10|inst15|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y20_N2
\inst10|inst50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst50~combout\ = (\inst10|inst15|LessThan1~18_combout\) # ((\inst10|inst15|Equal0~5_combout\ & \inst10|inst15|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst15|LessThan1~18_combout\,
	datab => \inst10|inst15|Equal0~5_combout\,
	datac => \inst10|inst15|Equal0~0_combout\,
	combout => \inst10|inst50~combout\);

-- Location: LCCOMB_X23_Y20_N22
\inst10|inst21~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst21~7_combout\ = (\inst10|inst21~0_combout\ & (\inst10|inst50~combout\ & ((\inst10|inst18|LessThan1~18_combout\) # (\inst10|inst21~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst21~0_combout\,
	datab => \inst10|inst18|LessThan1~18_combout\,
	datac => \inst10|inst21~6_combout\,
	datad => \inst10|inst50~combout\,
	combout => \inst10|inst21~7_combout\);

-- Location: LCCOMB_X20_Y19_N4
\inst13|Y[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|Y[3]~6_combout\ = (!\inst10|inst21~7_combout\ & ((!\inst1|inst4|LessThan0~0_combout\) # (!\inst|inst16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst21~7_combout\,
	datac => \inst|inst16~0_combout\,
	datad => \inst1|inst4|LessThan0~0_combout\,
	combout => \inst13|Y[3]~6_combout\);

-- Location: LCCOMB_X26_Y21_N0
\inst1|inst24~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst24~1_combout\ = (!\inst|inst1|data\(4) & (((!\inst|inst1|data\(1) & !\inst|inst1|data\(2))) # (!\inst|inst1|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(1),
	datab => \inst|inst1|data\(3),
	datac => \inst|inst1|data\(2),
	datad => \inst|inst1|data\(4),
	combout => \inst1|inst24~1_combout\);

-- Location: LCCOMB_X21_Y22_N20
\inst1|inst69~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst69~5_combout\ = (!\inst|inst|data\(9) & ((\inst|inst1|data\(5)) # (!\inst1|inst24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24~1_combout\,
	datab => \inst|inst1|data\(5),
	datac => \inst|inst|data\(9),
	combout => \inst1|inst69~5_combout\);

-- Location: LCCOMB_X23_Y22_N2
\inst1|inst24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst24~0_combout\ = (\inst|inst1|data\(3) & ((\inst|inst1|data\(0)) # ((\inst|inst1|data\(2)) # (\inst|inst1|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(0),
	datab => \inst|inst1|data\(2),
	datac => \inst|inst1|data\(3),
	datad => \inst|inst1|data\(1),
	combout => \inst1|inst24~0_combout\);

-- Location: LCCOMB_X23_Y22_N20
\inst1|inst69~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst69~0_combout\ = (\inst12|inst255|Equal0~1_combout\ & (((!\inst|inst1|data\(4) & !\inst1|inst24~0_combout\)) # (!\inst|inst1|data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst255|Equal0~1_combout\,
	datab => \inst|inst1|data\(4),
	datac => \inst|inst1|data\(5),
	datad => \inst1|inst24~0_combout\,
	combout => \inst1|inst69~0_combout\);

-- Location: LCCOMB_X21_Y22_N2
\inst1|inst66~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst66~2_combout\ = (\inst1|inst69~5_combout\ & (!\inst|inst|data\(8) & \inst1|inst69~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst69~5_combout\,
	datac => \inst|inst|data\(8),
	datad => \inst1|inst69~0_combout\,
	combout => \inst1|inst66~2_combout\);

-- Location: LCCOMB_X20_Y22_N26
\inst1|inst50|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst50|LessThan0~1_combout\ = (\inst|inst|data\(3) & \inst|inst|data\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|data\(3),
	datad => \inst|inst|data\(4),
	combout => \inst1|inst50|LessThan0~1_combout\);

-- Location: LCCOMB_X20_Y22_N16
\inst1|inst51|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst51|LessThan1~0_combout\ = (!\inst|inst|data\(1) & !\inst|inst|data\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(1),
	datac => \inst|inst|data\(2),
	combout => \inst1|inst51|LessThan1~0_combout\);

-- Location: LCCOMB_X20_Y22_N12
\inst1|inst64~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst64~0_combout\ = (\inst|inst|data\(5) & (((!\inst|inst|data\(0) & \inst1|inst51|LessThan1~0_combout\)) # (!\inst1|inst50|LessThan0~1_combout\))) # (!\inst|inst|data\(5) & (((\inst1|inst50|LessThan0~1_combout\ & 
-- !\inst1|inst51|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(0),
	datab => \inst|inst|data\(5),
	datac => \inst1|inst50|LessThan0~1_combout\,
	datad => \inst1|inst51|LessThan1~0_combout\,
	combout => \inst1|inst64~0_combout\);

-- Location: LCCOMB_X21_Y22_N10
\inst1|inst64~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst64~1_combout\ = (!\inst|inst|data\(7) & (\inst1|inst66~2_combout\ & (\inst|inst|data\(6) & \inst1|inst64~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(7),
	datab => \inst1|inst66~2_combout\,
	datac => \inst|inst|data\(6),
	datad => \inst1|inst64~0_combout\,
	combout => \inst1|inst64~1_combout\);

-- Location: LCCOMB_X22_Y22_N28
\inst1|inst51|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst51|LessThan1~1_combout\ = (!\inst|inst|data\(2) & (!\inst|inst|data\(1) & !\inst|inst|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|data\(2),
	datac => \inst|inst|data\(1),
	datad => \inst|inst|data\(3),
	combout => \inst1|inst51|LessThan1~1_combout\);

-- Location: LCCOMB_X22_Y22_N26
\inst1|inst65~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst65~0_combout\ = (\inst|inst|data\(4) & (((!\inst|inst|data\(5))))) # (!\inst|inst|data\(4) & ((\inst|inst|data\(5) & ((\inst1|inst51|LessThan1~2_combout\))) # (!\inst|inst|data\(5) & (!\inst1|inst51|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(4),
	datab => \inst1|inst51|LessThan1~1_combout\,
	datac => \inst1|inst51|LessThan1~2_combout\,
	datad => \inst|inst|data\(5),
	combout => \inst1|inst65~0_combout\);

-- Location: LCCOMB_X21_Y22_N4
\inst1|inst65~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst65~1_combout\ = (\inst|inst|data\(7) & (\inst1|inst66~2_combout\ & (!\inst|inst|data\(6) & \inst1|inst65~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(7),
	datab => \inst1|inst66~2_combout\,
	datac => \inst|inst|data\(6),
	datad => \inst1|inst65~0_combout\,
	combout => \inst1|inst65~1_combout\);

-- Location: LCCOMB_X22_Y22_N0
\inst1|inst19|inst14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst19|inst14~0_combout\ = (\inst|inst|data\(7) & (((\inst|inst|data\(6))))) # (!\inst|inst|data\(7) & (\inst|inst|data\(5) & ((\inst|inst|data\(6)) # (!\inst1|inst51|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(5),
	datab => \inst|inst|data\(6),
	datac => \inst|inst|data\(7),
	datad => \inst1|inst51|LessThan1~1_combout\,
	combout => \inst1|inst19|inst14~0_combout\);

-- Location: LCCOMB_X22_Y22_N22
\inst1|inst19|inst14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst19|inst14~1_combout\ = (\inst|inst|data\(6) & (!\inst1|inst19|inst14~0_combout\ & ((\inst1|inst51|LessThan1~2_combout\) # (!\inst|inst|data\(4))))) # (!\inst|inst|data\(6) & (\inst|inst|data\(4) & ((\inst1|inst19|inst14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(4),
	datab => \inst|inst|data\(6),
	datac => \inst1|inst51|LessThan1~2_combout\,
	datad => \inst1|inst19|inst14~0_combout\,
	combout => \inst1|inst19|inst14~1_combout\);

-- Location: LCCOMB_X21_Y22_N14
\inst1|inst19|inst14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst19|inst14~2_combout\ = (!\inst1|inst64~1_combout\ & (!\inst1|inst65~1_combout\ & ((!\inst1|inst19|inst14~1_combout\) # (!\inst1|inst66~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst64~1_combout\,
	datab => \inst1|inst66~2_combout\,
	datac => \inst1|inst65~1_combout\,
	datad => \inst1|inst19|inst14~1_combout\,
	combout => \inst1|inst19|inst14~2_combout\);

-- Location: LCCOMB_X21_Y22_N16
\inst1|inst69~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst69~1_combout\ = (!\inst|inst|data\(9) & (\inst1|inst69~0_combout\ & ((\inst|inst1|data\(5)) # (!\inst1|inst24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|data\(5),
	datab => \inst|inst|data\(9),
	datac => \inst1|inst24~1_combout\,
	datad => \inst1|inst69~0_combout\,
	combout => \inst1|inst69~1_combout\);

-- Location: LCCOMB_X22_Y22_N6
\inst1|inst69~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst69~2_combout\ = (\inst|inst|data\(5) & (!\inst|inst|data\(6) & ((\inst|inst|data\(4)) # (!\inst1|inst51|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(5),
	datab => \inst|inst|data\(6),
	datac => \inst|inst|data\(4),
	datad => \inst1|inst51|LessThan1~1_combout\,
	combout => \inst1|inst69~2_combout\);

-- Location: LCCOMB_X22_Y22_N18
\inst1|inst69~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst69~3_combout\ = (\inst1|inst69~2_combout\) # ((\inst|inst|data\(6) & (\inst1|inst51|LessThan1~2_combout\ & \inst|inst2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst69~2_combout\,
	datab => \inst|inst|data\(6),
	datac => \inst1|inst51|LessThan1~2_combout\,
	datad => \inst|inst2|Equal0~1_combout\,
	combout => \inst1|inst69~3_combout\);

-- Location: LCCOMB_X21_Y22_N18
\inst1|inst69~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst69~4_combout\ = (\inst|inst|data\(7)) # (((!\inst1|inst69~3_combout\) # (!\inst|inst|data\(8))) # (!\inst1|inst69~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(7),
	datab => \inst1|inst69~1_combout\,
	datac => \inst|inst|data\(8),
	datad => \inst1|inst69~3_combout\,
	combout => \inst1|inst69~4_combout\);

-- Location: LCCOMB_X20_Y22_N20
\inst1|inst66~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst66~3_combout\ = (\inst|inst|data\(2)) # ((\inst|inst|data\(1)) # ((\inst|inst|data\(6) & \inst|inst|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(6),
	datab => \inst|inst|data\(2),
	datac => \inst|inst|data\(0),
	datad => \inst|inst|data\(1),
	combout => \inst1|inst66~3_combout\);

-- Location: LCCOMB_X20_Y22_N30
\inst1|inst66~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst66~4_combout\ = (\inst|inst|data\(6) & (((!\inst1|inst66~3_combout\)) # (!\inst|inst|data\(3)))) # (!\inst|inst|data\(6) & ((\inst|inst|data\(4)) # ((\inst|inst|data\(3) & \inst1|inst66~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(3),
	datab => \inst1|inst66~3_combout\,
	datac => \inst|inst|data\(6),
	datad => \inst|inst|data\(4),
	combout => \inst1|inst66~4_combout\);

-- Location: LCCOMB_X20_Y22_N0
\inst1|inst66~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst66~6_combout\ = (\inst|inst|data\(7) & ((\inst|inst|data\(6) & (!\inst|inst|data\(5) & !\inst|inst|data\(4))) # (!\inst|inst|data\(6) & (\inst|inst|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(6),
	datab => \inst|inst|data\(5),
	datac => \inst|inst|data\(7),
	datad => \inst|inst|data\(4),
	combout => \inst1|inst66~6_combout\);

-- Location: LCCOMB_X21_Y22_N0
\inst1|inst66~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst66~5_combout\ = (\inst1|inst66~4_combout\ & (\inst1|inst66~6_combout\ & \inst1|inst66~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst66~4_combout\,
	datac => \inst1|inst66~6_combout\,
	datad => \inst1|inst66~2_combout\,
	combout => \inst1|inst66~5_combout\);

-- Location: LCCOMB_X22_Y22_N4
\inst1|inst67~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst67~0_combout\ = (\inst|inst|data\(5) & (((!\inst|inst|data\(0) & \inst1|inst51|LessThan1~1_combout\)) # (!\inst|inst|data\(4)))) # (!\inst|inst|data\(5) & (((\inst|inst|data\(4) & !\inst1|inst51|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(5),
	datab => \inst|inst|data\(0),
	datac => \inst|inst|data\(4),
	datad => \inst1|inst51|LessThan1~1_combout\,
	combout => \inst1|inst67~0_combout\);

-- Location: LCCOMB_X21_Y22_N30
\inst1|inst67~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst67~1_combout\ = (\inst|inst|data\(7) & (\inst1|inst66~2_combout\ & (\inst|inst|data\(6) & \inst1|inst67~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(7),
	datab => \inst1|inst66~2_combout\,
	datac => \inst|inst|data\(6),
	datad => \inst1|inst67~0_combout\,
	combout => \inst1|inst67~1_combout\);

-- Location: LCCOMB_X20_Y22_N6
\inst1|inst50|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst50|LessThan0~0_combout\ = (\inst|inst|data\(3) & (\inst|inst|data\(4) & ((\inst|inst|data\(1)) # (\inst|inst|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(1),
	datab => \inst|inst|data\(2),
	datac => \inst|inst|data\(3),
	datad => \inst|inst|data\(4),
	combout => \inst1|inst50|LessThan0~0_combout\);

-- Location: LCCOMB_X20_Y22_N24
\inst1|inst68~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst68~0_combout\ = (\inst|inst|data\(7) & (!\inst|inst|data\(8) & (\inst|inst|data\(6) & \inst|inst|data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(7),
	datab => \inst|inst|data\(8),
	datac => \inst|inst|data\(6),
	datad => \inst|inst|data\(5),
	combout => \inst1|inst68~0_combout\);

-- Location: LCCOMB_X20_Y22_N2
\inst1|inst68~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst68~1_combout\ = (!\inst|inst|data\(7) & (\inst|inst|data\(8) & (!\inst|inst|data\(6) & !\inst|inst|data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|data\(7),
	datab => \inst|inst|data\(8),
	datac => \inst|inst|data\(6),
	datad => \inst|inst|data\(5),
	combout => \inst1|inst68~1_combout\);

-- Location: LCCOMB_X20_Y22_N8
\inst1|inst68~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst68~2_combout\ = (\inst1|inst68~1_combout\ & (((\inst1|inst51|LessThan1~0_combout\ & !\inst|inst|data\(0))) # (!\inst1|inst50|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst50|LessThan0~1_combout\,
	datab => \inst1|inst51|LessThan1~0_combout\,
	datac => \inst|inst|data\(0),
	datad => \inst1|inst68~1_combout\,
	combout => \inst1|inst68~2_combout\);

-- Location: LCCOMB_X20_Y22_N22
\inst1|inst68~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst68~3_combout\ = ((!\inst1|inst68~2_combout\ & ((!\inst1|inst68~0_combout\) # (!\inst1|inst50|LessThan0~0_combout\)))) # (!\inst1|inst69~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst50|LessThan0~0_combout\,
	datab => \inst1|inst68~0_combout\,
	datac => \inst1|inst68~2_combout\,
	datad => \inst1|inst69~1_combout\,
	combout => \inst1|inst68~3_combout\);

-- Location: LCCOMB_X21_Y22_N12
\inst1|inst19|inst11|Y[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst19|inst11|Y[7]~0_combout\ = (\inst1|inst69~4_combout\ & (!\inst1|inst66~5_combout\ & (!\inst1|inst67~1_combout\ & \inst1|inst68~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst69~4_combout\,
	datab => \inst1|inst66~5_combout\,
	datac => \inst1|inst67~1_combout\,
	datad => \inst1|inst68~3_combout\,
	combout => \inst1|inst19|inst11|Y[7]~0_combout\);

-- Location: LCCOMB_X20_Y19_N14
\inst13|Y[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|Y[3]~2_combout\ = (\inst10|inst21~7_combout\) # ((\inst12|inst42~combout\ & (\inst1|inst19|inst14~2_combout\ & \inst1|inst19|inst11|Y[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst42~combout\,
	datab => \inst1|inst19|inst14~2_combout\,
	datac => \inst1|inst19|inst11|Y[7]~0_combout\,
	datad => \inst10|inst21~7_combout\,
	combout => \inst13|Y[3]~2_combout\);

-- Location: LCCOMB_X21_Y22_N28
\inst1|inst19|inst11|Y[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst19|inst11|Y[3]~1_combout\ = ((\inst1|inst68~3_combout\ & ((\inst1|inst64~1_combout\) # (\inst1|inst67~1_combout\)))) # (!\inst1|inst69~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst64~1_combout\,
	datab => \inst1|inst68~3_combout\,
	datac => \inst1|inst67~1_combout\,
	datad => \inst1|inst69~4_combout\,
	combout => \inst1|inst19|inst11|Y[3]~1_combout\);

-- Location: LCCOMB_X20_Y19_N28
\inst15|Y[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Y[3]~0_combout\ = (\inst13|Y[3]~6_combout\ & (((\inst13|Y[3]~2_combout\) # (\inst1|inst19|inst11|Y[3]~1_combout\)))) # (!\inst13|Y[3]~6_combout\ & (\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[3]~1_combout\ & 
-- (!\inst13|Y[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[3]~1_combout\,
	datab => \inst13|Y[3]~6_combout\,
	datac => \inst13|Y[3]~2_combout\,
	datad => \inst1|inst19|inst11|Y[3]~1_combout\,
	combout => \inst15|Y[3]~0_combout\);

-- Location: LCCOMB_X20_Y19_N6
\inst15|Y[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Y[3]~1_combout\ = (\inst15|Y[3]~0_combout\ & (((\inst1|inst4|LessThan0~0_combout\) # (!\inst13|Y[3]~2_combout\)))) # (!\inst15|Y[3]~0_combout\ & (\inst10|inst27|inst11|Y[3]~0_combout\ & (\inst13|Y[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst27|inst11|Y[3]~0_combout\,
	datab => \inst15|Y[3]~0_combout\,
	datac => \inst13|Y[3]~2_combout\,
	datad => \inst1|inst4|LessThan0~0_combout\,
	combout => \inst15|Y[3]~1_combout\);

-- Location: LCCOMB_X20_Y19_N26
\inst4[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- inst4(3) = (\inst15|Y[3]~1_combout\ & (\inst|inst16~0_combout\ & !\inst|inst|data\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Y[3]~1_combout\,
	datac => \inst|inst16~0_combout\,
	datad => \inst|inst|data\(10),
	combout => inst4(3));

-- Location: M9K_X13_Y23_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a26\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode434w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y14_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a2\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode413w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y6_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a14\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode426w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y17_N16
\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[2]~2_combout\ = (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & (((\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1)) # 
-- (\inst12|inst|altsyncram_component|auto_generated|ram_block1a14~portbdataout\)))) # (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & (\inst12|inst|altsyncram_component|auto_generated|ram_block1a2~portbdataout\ & 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datab => \inst12|inst|altsyncram_component|auto_generated|ram_block1a2~portbdataout\,
	datac => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datad => \inst12|inst|altsyncram_component|auto_generated|ram_block1a14~portbdataout\,
	combout => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[2]~2_combout\);

-- Location: LCCOMB_X21_Y17_N10
\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[2]~3_combout\ = (\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[2]~2_combout\ & (((\inst12|inst|altsyncram_component|auto_generated|ram_block1a38~portbdataout\) # 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1))))) # (!\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[2]~2_combout\ & (\inst12|inst|altsyncram_component|auto_generated|ram_block1a26~portbdataout\ & 
-- (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|ram_block1a26~portbdataout\,
	datab => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[2]~2_combout\,
	datac => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datad => \inst12|inst|altsyncram_component|auto_generated|ram_block1a38~portbdataout\,
	combout => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[2]~3_combout\);

-- Location: LCCOMB_X20_Y19_N16
\inst15|Y[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Y[2]~2_combout\ = (\inst12|inst42~combout\ & ((\inst1|inst19|inst11|Y[3]~1_combout\) # ((\inst1|inst19|inst11|Y[7]~0_combout\ & \inst1|inst19|inst14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst42~combout\,
	datab => \inst1|inst19|inst11|Y[7]~0_combout\,
	datac => \inst1|inst19|inst14~2_combout\,
	datad => \inst1|inst19|inst11|Y[3]~1_combout\,
	combout => \inst15|Y[2]~2_combout\);

-- Location: LCCOMB_X20_Y19_N22
\inst4[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4[2]~2_combout\ = (!\inst10|inst21~7_combout\ & ((\inst15|Y[2]~2_combout\) # ((\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[2]~3_combout\ & !\inst12|inst42~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[2]~3_combout\,
	datab => \inst10|inst21~7_combout\,
	datac => \inst15|Y[2]~2_combout\,
	datad => \inst12|inst42~combout\,
	combout => \inst4[2]~2_combout\);

-- Location: LCCOMB_X20_Y19_N12
\inst|inst16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst16~combout\ = (\inst|inst16~0_combout\ & !\inst|inst|data\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst16~0_combout\,
	datad => \inst|inst|data\(10),
	combout => \inst|inst16~combout\);

-- Location: LCCOMB_X21_Y19_N20
\inst4[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4[2]~3_combout\ = (\inst|inst16~combout\ & ((\inst4[2]~2_combout\) # ((\inst10|inst27|inst11|Y[3]~0_combout\ & \inst10|inst21~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst27|inst11|Y[3]~0_combout\,
	datab => \inst4[2]~2_combout\,
	datac => \inst10|inst21~7_combout\,
	datad => \inst|inst16~combout\,
	combout => \inst4[2]~3_combout\);

-- Location: M9K_X25_Y12_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a13\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode426w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y18_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a1\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode413w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y12_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a25\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode434w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X20_Y17_N16
\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[1]~4_combout\ = (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & (((\inst12|inst|altsyncram_component|auto_generated|ram_block1a25~portbdataout\) # 
-- (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0))))) # (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & (\inst12|inst|altsyncram_component|auto_generated|ram_block1a1~portbdataout\ & 
-- ((!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|ram_block1a1~portbdataout\,
	datab => \inst12|inst|altsyncram_component|auto_generated|ram_block1a25~portbdataout\,
	datac => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datad => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	combout => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[1]~4_combout\);

-- Location: M9K_X25_Y17_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a36\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode442w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a36_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a36_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y17_N8
\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[1]~5_combout\ = (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & ((\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[1]~4_combout\ & 
-- ((\inst12|inst|altsyncram_component|auto_generated|ram_block1a37\))) # (!\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[1]~4_combout\ & (\inst12|inst|altsyncram_component|auto_generated|ram_block1a13~portbdataout\)))) # 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & (((\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datab => \inst12|inst|altsyncram_component|auto_generated|ram_block1a13~portbdataout\,
	datac => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[1]~4_combout\,
	datad => \inst12|inst|altsyncram_component|auto_generated|ram_block1a37\,
	combout => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[1]~5_combout\);

-- Location: LCCOMB_X21_Y19_N18
\inst4[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4[1]~4_combout\ = (!\inst10|inst21~7_combout\ & ((\inst15|Y[2]~2_combout\) # ((\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[1]~5_combout\ & !\inst12|inst42~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst21~7_combout\,
	datab => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[1]~5_combout\,
	datac => \inst15|Y[2]~2_combout\,
	datad => \inst12|inst42~combout\,
	combout => \inst4[1]~4_combout\);

-- Location: LCCOMB_X21_Y19_N24
\inst4[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4[1]~5_combout\ = (\inst|inst16~combout\ & ((\inst4[1]~4_combout\) # ((\inst10|inst27|inst11|Y[3]~0_combout\ & \inst10|inst21~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst27|inst11|Y[3]~0_combout\,
	datab => \inst4[1]~4_combout\,
	datac => \inst10|inst21~7_combout\,
	datad => \inst|inst16~combout\,
	combout => \inst4[1]~5_combout\);

-- Location: M9K_X13_Y24_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a24\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode434w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y6_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode413w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y8_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a12\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode426w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y17_N2
\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[0]~6_combout\ = (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & (((\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1)) # 
-- (\inst12|inst|altsyncram_component|auto_generated|ram_block1a12~portbdataout\)))) # (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & (\inst12|inst|altsyncram_component|auto_generated|ram_block1a0~portbdataout\ & 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datab => \inst12|inst|altsyncram_component|auto_generated|ram_block1a0~portbdataout\,
	datac => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datad => \inst12|inst|altsyncram_component|auto_generated|ram_block1a12~portbdataout\,
	combout => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[0]~6_combout\);

-- Location: LCCOMB_X21_Y17_N0
\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[0]~7_combout\ = (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & ((\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[0]~6_combout\ & 
-- ((\inst12|inst|altsyncram_component|auto_generated|ram_block1a36~portbdataout\))) # (!\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[0]~6_combout\ & (\inst12|inst|altsyncram_component|auto_generated|ram_block1a24~portbdataout\)))) # 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & (((\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datab => \inst12|inst|altsyncram_component|auto_generated|ram_block1a24~portbdataout\,
	datac => \inst12|inst|altsyncram_component|auto_generated|ram_block1a36~portbdataout\,
	datad => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[0]~6_combout\,
	combout => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[0]~7_combout\);

-- Location: LCCOMB_X21_Y19_N14
\inst4[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4[0]~6_combout\ = (!\inst10|inst21~7_combout\ & ((\inst15|Y[2]~2_combout\) # ((\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[0]~7_combout\ & !\inst12|inst42~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst21~7_combout\,
	datab => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[0]~7_combout\,
	datac => \inst15|Y[2]~2_combout\,
	datad => \inst12|inst42~combout\,
	combout => \inst4[0]~6_combout\);

-- Location: LCCOMB_X21_Y19_N8
\inst4[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4[0]~7_combout\ = (\inst|inst16~combout\ & ((\inst4[0]~6_combout\) # ((\inst10|inst21~7_combout\ & \inst10|inst27|inst11|Y[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst21~7_combout\,
	datab => \inst4[0]~6_combout\,
	datac => \inst10|inst27|inst11|Y[3]~0_combout\,
	datad => \inst|inst16~combout\,
	combout => \inst4[0]~7_combout\);

-- Location: LCCOMB_X21_Y19_N6
\inst10|inst27|inst11|Y[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst27|inst11|Y[7]~1_combout\ = (\inst10|Colour|data\(2) & ((\inst10|Colour|data\(1)))) # (!\inst10|Colour|data\(2) & ((\inst10|Colour|data\(0)) # (!\inst10|Colour|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Colour|data\(2),
	datac => \inst10|Colour|data\(0),
	datad => \inst10|Colour|data\(1),
	combout => \inst10|inst27|inst11|Y[7]~1_combout\);

-- Location: LCCOMB_X19_Y21_N14
\inst12|inst8|Y[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst8|Y[7]~6_combout\ = (\inst8|inst|mouse_data_reg|data\(17)) # ((!\inst12|inst14|data\(0)) # (!\inst10|inst27|inst11|Y[7]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|mouse_data_reg|data\(17),
	datac => \inst10|inst27|inst11|Y[7]~1_combout\,
	datad => \inst12|inst14|data\(0),
	combout => \inst12|inst8|Y[7]~6_combout\);

-- Location: M9K_X25_Y21_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a31\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode434w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a31_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y17_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a7\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode413w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y17_N18
\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[7]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[7]~8_combout\ = (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & ((\inst12|inst|altsyncram_component|auto_generated|ram_block1a31~portbdataout\) # 
-- ((\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0))))) # (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & (((\inst12|inst|altsyncram_component|auto_generated|ram_block1a7~portbdataout\ & 
-- !\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datab => \inst12|inst|altsyncram_component|auto_generated|ram_block1a31~portbdataout\,
	datac => \inst12|inst|altsyncram_component|auto_generated|ram_block1a7~portbdataout\,
	datad => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	combout => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[7]~8_combout\);

-- Location: M9K_X25_Y15_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a42\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode442w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a42_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a42_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a42_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y14_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a19\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode426w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y17_N24
\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[7]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[7]~9_combout\ = (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & ((\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[7]~8_combout\ & 
-- (\inst12|inst|altsyncram_component|auto_generated|ram_block1a43\)) # (!\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[7]~8_combout\ & ((\inst12|inst|altsyncram_component|auto_generated|ram_block1a19~portbdataout\))))) # 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & (\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[7]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datab => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[7]~8_combout\,
	datac => \inst12|inst|altsyncram_component|auto_generated|ram_block1a43\,
	datad => \inst12|inst|altsyncram_component|auto_generated|ram_block1a19~portbdataout\,
	combout => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[7]~9_combout\);

-- Location: LCCOMB_X20_Y19_N8
\inst14|Y[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|Y[3]~0_combout\ = (\inst13|Y[3]~2_combout\ & (((\inst13|Y[3]~6_combout\) # (!\inst10|inst27|inst11|Y[7]~1_combout\)))) # (!\inst13|Y[3]~2_combout\ & (\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[7]~9_combout\ & 
-- (!\inst13|Y[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[7]~9_combout\,
	datab => \inst13|Y[3]~2_combout\,
	datac => \inst13|Y[3]~6_combout\,
	datad => \inst10|inst27|inst11|Y[7]~1_combout\,
	combout => \inst14|Y[3]~0_combout\);

-- Location: LCCOMB_X21_Y22_N22
\inst1|inst19|inst14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst19|inst14~3_combout\ = (\inst1|inst68~3_combout\ & (!\inst1|inst67~1_combout\ & \inst1|inst69~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst68~3_combout\,
	datac => \inst1|inst67~1_combout\,
	datad => \inst1|inst69~4_combout\,
	combout => \inst1|inst19|inst14~3_combout\);

-- Location: LCCOMB_X21_Y22_N24
\inst1|inst19|inst11|Y[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst19|inst11|Y[7]~2_combout\ = (\inst1|inst19|inst14~3_combout\ & (!\inst1|inst66~5_combout\ & (\inst1|inst65~1_combout\))) # (!\inst1|inst19|inst14~3_combout\ & (((\inst1|inst69~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst19|inst14~3_combout\,
	datab => \inst1|inst66~5_combout\,
	datac => \inst1|inst65~1_combout\,
	datad => \inst1|inst69~4_combout\,
	combout => \inst1|inst19|inst11|Y[7]~2_combout\);

-- Location: LCCOMB_X20_Y19_N10
\inst14|Y[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|Y[3]~1_combout\ = (\inst13|Y[3]~6_combout\ & ((\inst14|Y[3]~0_combout\ & (\inst1|inst4|LessThan0~0_combout\)) # (!\inst14|Y[3]~0_combout\ & ((\inst1|inst19|inst11|Y[7]~2_combout\))))) # (!\inst13|Y[3]~6_combout\ & (((\inst14|Y[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|LessThan0~0_combout\,
	datab => \inst13|Y[3]~6_combout\,
	datac => \inst14|Y[3]~0_combout\,
	datad => \inst1|inst19|inst11|Y[7]~2_combout\,
	combout => \inst14|Y[3]~1_combout\);

-- Location: LCCOMB_X20_Y19_N0
\inst3[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- inst3(3) = (\inst14|Y[3]~1_combout\ & (\inst|inst16~0_combout\ & !\inst|inst|data\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Y[3]~1_combout\,
	datac => \inst|inst16~0_combout\,
	datad => \inst|inst|data\(10),
	combout => inst3(3));

-- Location: LCCOMB_X20_Y19_N20
\inst14|Y[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|Y[2]~2_combout\ = (\inst12|inst42~combout\ & ((\inst1|inst19|inst11|Y[7]~2_combout\) # ((\inst1|inst19|inst11|Y[7]~0_combout\ & \inst1|inst19|inst14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst42~combout\,
	datab => \inst1|inst19|inst11|Y[7]~0_combout\,
	datac => \inst1|inst19|inst14~2_combout\,
	datad => \inst1|inst19|inst11|Y[7]~2_combout\,
	combout => \inst14|Y[2]~2_combout\);

-- Location: M9K_X25_Y16_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a18\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode426w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y21_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a6\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode413w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X20_Y17_N26
\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[6]~10_combout\ = (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & (((\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0))))) # 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & ((\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & (\inst12|inst|altsyncram_component|auto_generated|ram_block1a18~portbdataout\)) # 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & ((\inst12|inst|altsyncram_component|auto_generated|ram_block1a6~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datab => \inst12|inst|altsyncram_component|auto_generated|ram_block1a18~portbdataout\,
	datac => \inst12|inst|altsyncram_component|auto_generated|ram_block1a6~portbdataout\,
	datad => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	combout => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[6]~10_combout\);

-- Location: M9K_X13_Y11_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a30\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode434w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X20_Y17_N20
\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[6]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[6]~11_combout\ = (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & ((\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[6]~10_combout\ & 
-- (\inst12|inst|altsyncram_component|auto_generated|ram_block1a42~portbdataout\)) # (!\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[6]~10_combout\ & ((\inst12|inst|altsyncram_component|auto_generated|ram_block1a30~portbdataout\))))) # 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & (((\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datab => \inst12|inst|altsyncram_component|auto_generated|ram_block1a42~portbdataout\,
	datac => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[6]~10_combout\,
	datad => \inst12|inst|altsyncram_component|auto_generated|ram_block1a30~portbdataout\,
	combout => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[6]~11_combout\);

-- Location: LCCOMB_X20_Y17_N14
\inst3[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3[2]~2_combout\ = (!\inst10|inst21~7_combout\ & ((\inst14|Y[2]~2_combout\) # ((!\inst12|inst42~combout\ & \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[6]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst21~7_combout\,
	datab => \inst12|inst42~combout\,
	datac => \inst14|Y[2]~2_combout\,
	datad => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[6]~11_combout\,
	combout => \inst3[2]~2_combout\);

-- Location: LCCOMB_X21_Y19_N0
\inst3[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3[2]~3_combout\ = (\inst|inst16~combout\ & ((\inst3[2]~2_combout\) # ((\inst10|inst21~7_combout\ & !\inst10|inst27|inst11|Y[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst16~combout\,
	datab => \inst3[2]~2_combout\,
	datac => \inst10|inst21~7_combout\,
	datad => \inst10|inst27|inst11|Y[7]~1_combout\,
	combout => \inst3[2]~3_combout\);

-- Location: M9K_X13_Y15_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a29\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode434w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y7_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a5\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode413w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X20_Y17_N28
\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[5]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[5]~12_combout\ = (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & (((\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1))))) # 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & ((\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & (\inst12|inst|altsyncram_component|auto_generated|ram_block1a29~portbdataout\)) # 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & ((\inst12|inst|altsyncram_component|auto_generated|ram_block1a5~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|ram_block1a29~portbdataout\,
	datab => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datac => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datad => \inst12|inst|altsyncram_component|auto_generated|ram_block1a5~portbdataout\,
	combout => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[5]~12_combout\);

-- Location: M9K_X25_Y7_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a17\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode426w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X19_Y21_N16
\inst12|inst8|Y[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst8|Y[4]~7_combout\ = (\inst12|inst8|Y[2]~4_combout\) # ((!\inst8|inst|mouse_data_reg|data\(17) & (\inst12|inst14|data\(0) & !\inst10|inst27|inst11|Y[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|mouse_data_reg|data\(17),
	datab => \inst12|inst14|data\(0),
	datac => \inst10|inst27|inst11|Y[7]~1_combout\,
	datad => \inst12|inst8|Y[2]~4_combout\,
	combout => \inst12|inst8|Y[4]~7_combout\);

-- Location: M9K_X25_Y13_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a40\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode442w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a40_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a40_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a40_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y17_N6
\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[5]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[5]~13_combout\ = (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & ((\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[5]~12_combout\ & 
-- ((\inst12|inst|altsyncram_component|auto_generated|ram_block1a41\))) # (!\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[5]~12_combout\ & (\inst12|inst|altsyncram_component|auto_generated|ram_block1a17~portbdataout\)))) # 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & (\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[5]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datab => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[5]~12_combout\,
	datac => \inst12|inst|altsyncram_component|auto_generated|ram_block1a17~portbdataout\,
	datad => \inst12|inst|altsyncram_component|auto_generated|ram_block1a41\,
	combout => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[5]~13_combout\);

-- Location: LCCOMB_X20_Y17_N6
\inst3[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3[1]~4_combout\ = (!\inst10|inst21~7_combout\ & ((\inst14|Y[2]~2_combout\) # ((!\inst12|inst42~combout\ & \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[5]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst21~7_combout\,
	datab => \inst12|inst42~combout\,
	datac => \inst14|Y[2]~2_combout\,
	datad => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[5]~13_combout\,
	combout => \inst3[1]~4_combout\);

-- Location: LCCOMB_X21_Y19_N22
\inst3[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3[1]~5_combout\ = (\inst|inst16~combout\ & ((\inst3[1]~4_combout\) # ((\inst10|inst21~7_combout\ & !\inst10|inst27|inst11|Y[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst16~combout\,
	datab => \inst3[1]~4_combout\,
	datac => \inst10|inst21~7_combout\,
	datad => \inst10|inst27|inst11|Y[7]~1_combout\,
	combout => \inst3[1]~5_combout\);

-- Location: M9K_X25_Y10_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a28\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode434w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y22_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a16\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode426w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y19_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a4\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode413w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X20_Y17_N12
\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[4]~14_combout\ = (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & (((\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0))))) # 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & ((\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & (\inst12|inst|altsyncram_component|auto_generated|ram_block1a16~portbdataout\)) # 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & ((\inst12|inst|altsyncram_component|auto_generated|ram_block1a4~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datab => \inst12|inst|altsyncram_component|auto_generated|ram_block1a16~portbdataout\,
	datac => \inst12|inst|altsyncram_component|auto_generated|ram_block1a4~portbdataout\,
	datad => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	combout => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[4]~14_combout\);

-- Location: LCCOMB_X20_Y17_N2
\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[4]~15_combout\ = (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & ((\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[4]~14_combout\ & 
-- ((\inst12|inst|altsyncram_component|auto_generated|ram_block1a40~portbdataout\))) # (!\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[4]~14_combout\ & (\inst12|inst|altsyncram_component|auto_generated|ram_block1a28~portbdataout\)))) # 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & (((\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[4]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|ram_block1a28~portbdataout\,
	datab => \inst12|inst|altsyncram_component|auto_generated|ram_block1a40~portbdataout\,
	datac => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datad => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[4]~14_combout\,
	combout => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[4]~15_combout\);

-- Location: LCCOMB_X20_Y17_N8
\inst3[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3[0]~6_combout\ = (!\inst10|inst21~7_combout\ & ((\inst14|Y[2]~2_combout\) # ((!\inst12|inst42~combout\ & \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[4]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst21~7_combout\,
	datab => \inst12|inst42~combout\,
	datac => \inst14|Y[2]~2_combout\,
	datad => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[4]~15_combout\,
	combout => \inst3[0]~6_combout\);

-- Location: LCCOMB_X21_Y19_N16
\inst3[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3[0]~7_combout\ = (\inst|inst16~combout\ & ((\inst3[0]~6_combout\) # ((\inst10|inst21~7_combout\ & !\inst10|inst27|inst11|Y[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst16~combout\,
	datab => \inst3[0]~6_combout\,
	datac => \inst10|inst21~7_combout\,
	datad => \inst10|inst27|inst11|Y[7]~1_combout\,
	combout => \inst3[0]~7_combout\);

-- Location: LCCOMB_X21_Y19_N2
\inst10|inst27|inst11|Y[11]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst27|inst11|Y[11]~2_combout\ = (\inst10|Colour|data\(2) & (\inst10|Colour|data\(0) $ (\inst10|Colour|data\(1)))) # (!\inst10|Colour|data\(2) & (\inst10|Colour|data\(0) & \inst10|Colour|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Colour|data\(2),
	datac => \inst10|Colour|data\(0),
	datad => \inst10|Colour|data\(1),
	combout => \inst10|inst27|inst11|Y[11]~2_combout\);

-- Location: LCCOMB_X21_Y22_N6
\inst1|inst19|inst11|Y[11]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst19|inst11|Y[11]~3_combout\ = (((\inst1|inst66~5_combout\ & !\inst1|inst67~1_combout\)) # (!\inst1|inst68~3_combout\)) # (!\inst1|inst69~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst69~4_combout\,
	datab => \inst1|inst66~5_combout\,
	datac => \inst1|inst67~1_combout\,
	datad => \inst1|inst68~3_combout\,
	combout => \inst1|inst19|inst11|Y[11]~3_combout\);

-- Location: LCCOMB_X19_Y21_N18
\inst12|inst8|Y[11]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst8|Y[11]~8_combout\ = (\inst12|inst8|Y[2]~4_combout\) # ((!\inst8|inst|mouse_data_reg|data\(17) & (\inst12|inst14|data\(0) & \inst10|inst27|inst11|Y[11]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|mouse_data_reg|data\(17),
	datab => \inst12|inst14|data\(0),
	datac => \inst10|inst27|inst11|Y[11]~2_combout\,
	datad => \inst12|inst8|Y[2]~4_combout\,
	combout => \inst12|inst8|Y[11]~8_combout\);

-- Location: M9K_X25_Y23_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a23\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode426w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y20_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a46\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode442w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a46_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a46_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a46_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y22_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a11\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode413w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y25_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a35\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode434w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a35_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a35_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y17_N28
\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[11]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[11]~16_combout\ = (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & (((\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1))))) # 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & ((\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & ((\inst12|inst|altsyncram_component|auto_generated|ram_block1a35~portbdataout\))) # 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & (\inst12|inst|altsyncram_component|auto_generated|ram_block1a11~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datab => \inst12|inst|altsyncram_component|auto_generated|ram_block1a11~portbdataout\,
	datac => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datad => \inst12|inst|altsyncram_component|auto_generated|ram_block1a35~portbdataout\,
	combout => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[11]~16_combout\);

-- Location: LCCOMB_X21_Y17_N30
\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[11]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[11]~17_combout\ = (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & ((\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[11]~16_combout\ & 
-- ((\inst12|inst|altsyncram_component|auto_generated|ram_block1a47\))) # (!\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[11]~16_combout\ & (\inst12|inst|altsyncram_component|auto_generated|ram_block1a23~portbdataout\)))) # 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & (((\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[11]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datab => \inst12|inst|altsyncram_component|auto_generated|ram_block1a23~portbdataout\,
	datac => \inst12|inst|altsyncram_component|auto_generated|ram_block1a47\,
	datad => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[11]~16_combout\,
	combout => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[11]~17_combout\);

-- Location: LCCOMB_X20_Y19_N18
\inst13|Y[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|Y[3]~3_combout\ = (\inst13|Y[3]~2_combout\ & (((\inst13|Y[3]~6_combout\)))) # (!\inst13|Y[3]~2_combout\ & ((\inst13|Y[3]~6_combout\ & (\inst1|inst19|inst11|Y[11]~3_combout\)) # (!\inst13|Y[3]~6_combout\ & 
-- ((\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[11]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst19|inst11|Y[11]~3_combout\,
	datab => \inst13|Y[3]~2_combout\,
	datac => \inst13|Y[3]~6_combout\,
	datad => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[11]~17_combout\,
	combout => \inst13|Y[3]~3_combout\);

-- Location: LCCOMB_X20_Y19_N24
\inst13|Y[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|Y[3]~4_combout\ = (\inst13|Y[3]~2_combout\ & ((\inst13|Y[3]~3_combout\ & (\inst1|inst4|LessThan0~0_combout\)) # (!\inst13|Y[3]~3_combout\ & ((\inst10|inst27|inst11|Y[11]~2_combout\))))) # (!\inst13|Y[3]~2_combout\ & (((\inst13|Y[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|LessThan0~0_combout\,
	datab => \inst13|Y[3]~2_combout\,
	datac => \inst10|inst27|inst11|Y[11]~2_combout\,
	datad => \inst13|Y[3]~3_combout\,
	combout => \inst13|Y[3]~4_combout\);

-- Location: LCCOMB_X20_Y19_N2
\inst2[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- inst2(3) = (\inst13|Y[3]~4_combout\ & (\inst|inst16~0_combout\ & !\inst|inst|data\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Y[3]~4_combout\,
	datac => \inst|inst16~0_combout\,
	datad => \inst|inst|data\(10),
	combout => inst2(3));

-- Location: LCCOMB_X20_Y19_N30
\inst13|Y[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|Y[2]~5_combout\ = (\inst12|inst42~combout\ & ((\inst1|inst19|inst11|Y[11]~3_combout\) # ((\inst1|inst19|inst11|Y[7]~0_combout\ & \inst1|inst19|inst14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst19|inst11|Y[11]~3_combout\,
	datab => \inst1|inst19|inst11|Y[7]~0_combout\,
	datac => \inst1|inst19|inst14~2_combout\,
	datad => \inst12|inst42~combout\,
	combout => \inst13|Y[2]~5_combout\);

-- Location: M9K_X13_Y20_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a10\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode413w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y24_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a22\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode426w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X20_Y17_N30
\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[10]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[10]~18_combout\ = (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0))) # 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & ((\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & ((\inst12|inst|altsyncram_component|auto_generated|ram_block1a22~portbdataout\))) # 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & (\inst12|inst|altsyncram_component|auto_generated|ram_block1a10~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datab => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datac => \inst12|inst|altsyncram_component|auto_generated|ram_block1a10~portbdataout\,
	datad => \inst12|inst|altsyncram_component|auto_generated|ram_block1a22~portbdataout\,
	combout => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[10]~18_combout\);

-- Location: M9K_X13_Y25_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a34\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode434w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a34_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a34_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X20_Y17_N0
\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[10]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[10]~19_combout\ = (\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[10]~18_combout\ & (((\inst12|inst|altsyncram_component|auto_generated|ram_block1a46~portbdataout\) # 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1))))) # (!\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[10]~18_combout\ & (\inst12|inst|altsyncram_component|auto_generated|ram_block1a34~portbdataout\ & 
-- (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[10]~18_combout\,
	datab => \inst12|inst|altsyncram_component|auto_generated|ram_block1a34~portbdataout\,
	datac => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datad => \inst12|inst|altsyncram_component|auto_generated|ram_block1a46~portbdataout\,
	combout => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[10]~19_combout\);

-- Location: LCCOMB_X21_Y19_N4
\inst2[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2[2]~2_combout\ = (!\inst10|inst21~7_combout\ & ((\inst13|Y[2]~5_combout\) # ((!\inst12|inst42~combout\ & \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[10]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst42~combout\,
	datab => \inst13|Y[2]~5_combout\,
	datac => \inst10|inst21~7_combout\,
	datad => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[10]~19_combout\,
	combout => \inst2[2]~2_combout\);

-- Location: LCCOMB_X21_Y19_N30
\inst2[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2[2]~3_combout\ = (\inst|inst16~combout\ & ((\inst2[2]~2_combout\) # ((\inst10|inst21~7_combout\ & \inst10|inst27|inst11|Y[11]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst16~combout\,
	datab => \inst2[2]~2_combout\,
	datac => \inst10|inst21~7_combout\,
	datad => \inst10|inst27|inst11|Y[11]~2_combout\,
	combout => \inst2[2]~3_combout\);

-- Location: LCCOMB_X19_Y21_N12
\inst12|inst8|Y[9]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst8|Y[9]~9_combout\ = (\inst8|inst|mouse_data_reg|data\(17)) # ((\inst10|inst27|inst11|Y[11]~2_combout\) # (!\inst12|inst14|data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|mouse_data_reg|data\(17),
	datac => \inst10|inst27|inst11|Y[11]~2_combout\,
	datad => \inst12|inst14|data\(0),
	combout => \inst12|inst8|Y[9]~9_combout\);

-- Location: M9K_X25_Y19_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a44\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode442w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a44_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a44_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a44_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y11_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a21\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode426w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y10_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a33\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode434w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a33_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a33_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y8_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a9\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode413w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X20_Y17_N10
\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[9]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[9]~20_combout\ = (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & ((\inst12|inst|altsyncram_component|auto_generated|ram_block1a33~portbdataout\) # 
-- ((\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0))))) # (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & (((\inst12|inst|altsyncram_component|auto_generated|ram_block1a9~portbdataout\ & 
-- !\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datab => \inst12|inst|altsyncram_component|auto_generated|ram_block1a33~portbdataout\,
	datac => \inst12|inst|altsyncram_component|auto_generated|ram_block1a9~portbdataout\,
	datad => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	combout => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[9]~20_combout\);

-- Location: LCCOMB_X21_Y17_N12
\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[9]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[9]~21_combout\ = (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & ((\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[9]~20_combout\ & 
-- (\inst12|inst|altsyncram_component|auto_generated|ram_block1a45\)) # (!\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[9]~20_combout\ & ((\inst12|inst|altsyncram_component|auto_generated|ram_block1a21~portbdataout\))))) # 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & (((\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[9]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datab => \inst12|inst|altsyncram_component|auto_generated|ram_block1a45\,
	datac => \inst12|inst|altsyncram_component|auto_generated|ram_block1a21~portbdataout\,
	datad => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[9]~20_combout\,
	combout => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[9]~21_combout\);

-- Location: LCCOMB_X21_Y19_N28
\inst2[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2[1]~4_combout\ = (!\inst10|inst21~7_combout\ & ((\inst13|Y[2]~5_combout\) # ((\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[9]~21_combout\ & !\inst12|inst42~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst21~7_combout\,
	datab => \inst13|Y[2]~5_combout\,
	datac => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[9]~21_combout\,
	datad => \inst12|inst42~combout\,
	combout => \inst2[1]~4_combout\);

-- Location: LCCOMB_X21_Y19_N26
\inst2[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2[1]~5_combout\ = (\inst|inst16~combout\ & ((\inst2[1]~4_combout\) # ((\inst10|inst27|inst11|Y[11]~2_combout\ & \inst10|inst21~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst16~combout\,
	datab => \inst10|inst27|inst11|Y[11]~2_combout\,
	datac => \inst10|inst21~7_combout\,
	datad => \inst2[1]~4_combout\,
	combout => \inst2[1]~5_combout\);

-- Location: M9K_X13_Y13_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a32\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode434w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a32_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a32_PORTBDATAOUT_bus\);

-- Location: M9K_X25_Y9_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a20\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode426w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

-- Location: M9K_X13_Y16_N0
\inst12|inst|altsyncram_component|auto_generated|ram_block1a8\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Canvas:inst12|ram:inst|altsyncram:altsyncram_component|altsyncram_eno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 27400,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 27400,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst12|inst|altsyncram_component|auto_generated|decode2|w_anode413w\(2),
	portbre => \inst12|ALT_INV_inst42~combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \inst12|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \inst12|inst|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst12|inst|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X20_Y17_N24
\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[8]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[8]~22_combout\ = (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & (((\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0))))) # 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & ((\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & (\inst12|inst|altsyncram_component|auto_generated|ram_block1a20~portbdataout\)) # 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0) & ((\inst12|inst|altsyncram_component|auto_generated|ram_block1a8~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datab => \inst12|inst|altsyncram_component|auto_generated|ram_block1a20~portbdataout\,
	datac => \inst12|inst|altsyncram_component|auto_generated|ram_block1a8~portbdataout\,
	datad => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(0),
	combout => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[8]~22_combout\);

-- Location: LCCOMB_X20_Y17_N18
\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[8]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[8]~23_combout\ = (\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & ((\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[8]~22_combout\ & 
-- ((\inst12|inst|altsyncram_component|auto_generated|ram_block1a44~portbdataout\))) # (!\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[8]~22_combout\ & (\inst12|inst|altsyncram_component|auto_generated|ram_block1a32~portbdataout\)))) # 
-- (!\inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1) & (((\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[8]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|ram_block1a32~portbdataout\,
	datab => \inst12|inst|altsyncram_component|auto_generated|ram_block1a44~portbdataout\,
	datac => \inst12|inst|altsyncram_component|auto_generated|out_address_reg_b\(1),
	datad => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[8]~22_combout\,
	combout => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[8]~23_combout\);

-- Location: LCCOMB_X21_Y19_N12
\inst2[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2[0]~6_combout\ = (!\inst10|inst21~7_combout\ & ((\inst13|Y[2]~5_combout\) # ((\inst12|inst|altsyncram_component|auto_generated|mux3|result_node[8]~23_combout\ & !\inst12|inst42~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|altsyncram_component|auto_generated|mux3|result_node[8]~23_combout\,
	datab => \inst13|Y[2]~5_combout\,
	datac => \inst10|inst21~7_combout\,
	datad => \inst12|inst42~combout\,
	combout => \inst2[0]~6_combout\);

-- Location: LCCOMB_X21_Y19_N10
\inst2[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2[0]~7_combout\ = (\inst|inst16~combout\ & ((\inst2[0]~6_combout\) # ((\inst10|inst27|inst11|Y[11]~2_combout\ & \inst10|inst21~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst16~combout\,
	datab => \inst10|inst27|inst11|Y[11]~2_combout\,
	datac => \inst10|inst21~7_combout\,
	datad => \inst2[0]~6_combout\,
	combout => \inst2[0]~7_combout\);

ww_H_SYNC <= \H_SYNC~output_o\;

ww_V_SYNC <= \V_SYNC~output_o\;

ww_LED1 <= \LED1~output_o\;

ww_LED2 <= \LED2~output_o\;

ww_LED3 <= \LED3~output_o\;

ww_BLUE(3) <= \BLUE[3]~output_o\;

ww_BLUE(2) <= \BLUE[2]~output_o\;

ww_BLUE(1) <= \BLUE[1]~output_o\;

ww_BLUE(0) <= \BLUE[0]~output_o\;

ww_GREEN(3) <= \GREEN[3]~output_o\;

ww_GREEN(2) <= \GREEN[2]~output_o\;

ww_GREEN(1) <= \GREEN[1]~output_o\;

ww_GREEN(0) <= \GREEN[0]~output_o\;

ww_RED(3) <= \RED[3]~output_o\;

ww_RED(2) <= \RED[2]~output_o\;

ww_RED(1) <= \RED[1]~output_o\;

ww_RED(0) <= \RED[0]~output_o\;

PS2C <= \PS2C~output_o\;

PS2D <= \PS2D~output_o\;
END structure;


