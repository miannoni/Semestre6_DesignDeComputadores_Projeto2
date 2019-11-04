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

-- DATE "11/01/2019 13:09:56"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	tipoI IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END tipoI;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tipoI IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL \EDclk|saida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \EDclk|saidaQ~0_combout\ : std_logic;
SIGNAL \EDclk|saidaQ~q\ : std_logic;
SIGNAL \EDclk|saida~combout\ : std_logic;
SIGNAL \EDclk|saida~clkctrl_outclk\ : std_logic;
SIGNAL \PC|q[2]~39_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \EDpc|saidaQ~q\ : std_logic;
SIGNAL \EDpc|saida~combout\ : std_logic;
SIGNAL \PC|q[3]~13_combout\ : std_logic;
SIGNAL \PC|q[3]~14\ : std_logic;
SIGNAL \PC|q[4]~15_combout\ : std_logic;
SIGNAL \PC|q[4]~16\ : std_logic;
SIGNAL \PC|q[5]~17_combout\ : std_logic;
SIGNAL \PC|q[5]~18\ : std_logic;
SIGNAL \PC|q[6]~19_combout\ : std_logic;
SIGNAL \PC|q[6]~20\ : std_logic;
SIGNAL \PC|q[7]~21_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCOES|memROM~0_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCOES|memROM~1_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \ULA|Add0~9_combout\ : std_logic;
SIGNAL \ULA|Mux8~0_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCOES|memROM~2_combout\ : std_logic;
SIGNAL \BR|saidaB[2]~1_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~36feeder_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \ULA|Mux31~10_combout\ : std_logic;
SIGNAL \BR|saidaB[0]~14_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~34_q\ : std_logic;
SIGNAL \BR|saidaB[31]~30_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~65_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~97feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~130_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~97_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~128_combout\ : std_logic;
SIGNAL \BR|registrador~357feeder_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \BR|registrador~1092_combout\ : std_logic;
SIGNAL \BR|registrador~357_q\ : std_logic;
SIGNAL \BR|saidaA[31]~30_combout\ : std_logic;
SIGNAL \BR|saidaB[1]~31_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~67_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~35_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~129_combout\ : std_logic;
SIGNAL \BR|registrador~327_q\ : std_logic;
SIGNAL \BR|saidaA[1]~31_combout\ : std_logic;
SIGNAL \BR|saidaB[28]~27_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~94feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~94_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~62_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~125_combout\ : std_logic;
SIGNAL \BR|registrador~354_q\ : std_logic;
SIGNAL \BR|saidaA[28]~27_combout\ : std_logic;
SIGNAL \BR|saidaB[27]~26_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~61_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~93feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~93_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~124_combout\ : std_logic;
SIGNAL \BR|registrador~353_q\ : std_logic;
SIGNAL \BR|saidaA[27]~26_combout\ : std_logic;
SIGNAL \BR|saidaB[29]~28_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~95feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~95_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~63_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~126_combout\ : std_logic;
SIGNAL \BR|registrador~355_q\ : std_logic;
SIGNAL \BR|saidaA[29]~28_combout\ : std_logic;
SIGNAL \BR|saidaB[26]~25_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~60_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~92feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~92_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~123_combout\ : std_logic;
SIGNAL \BR|registrador~352_q\ : std_logic;
SIGNAL \BR|saidaA[26]~25_combout\ : std_logic;
SIGNAL \ULA|Mux31~16_combout\ : std_logic;
SIGNAL \BR|saidaB[30]~29_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~64_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~96feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~96_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~127_combout\ : std_logic;
SIGNAL \BR|registrador~356_q\ : std_logic;
SIGNAL \BR|saidaA[30]~29_combout\ : std_logic;
SIGNAL \ULA|Mux31~17_combout\ : std_logic;
SIGNAL \BR|saidaB[6]~4_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~72feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~72_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~40_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~102_combout\ : std_logic;
SIGNAL \BR|registrador~332_q\ : std_logic;
SIGNAL \BR|saidaA[6]~4_combout\ : std_logic;
SIGNAL \BR|saidaB[7]~5_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~41_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~73feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~73_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~103_combout\ : std_logic;
SIGNAL \BR|registrador~333feeder_combout\ : std_logic;
SIGNAL \BR|registrador~333_q\ : std_logic;
SIGNAL \BR|saidaA[7]~5_combout\ : std_logic;
SIGNAL \ULA|Mux31~4_combout\ : std_logic;
SIGNAL \BR|saidaB[5]~2_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~71feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~71_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~39feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~39_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~100_combout\ : std_logic;
SIGNAL \BR|registrador~331_q\ : std_logic;
SIGNAL \BR|saidaA[5]~2_combout\ : std_logic;
SIGNAL \BR|saidaB[4]~3_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~38feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~38_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~70feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~70_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~101_combout\ : std_logic;
SIGNAL \BR|registrador~330_q\ : std_logic;
SIGNAL \BR|saidaA[4]~3_combout\ : std_logic;
SIGNAL \ULA|Mux31~3_combout\ : std_logic;
SIGNAL \PC|q[7]~22\ : std_logic;
SIGNAL \PC|q[8]~23_combout\ : std_logic;
SIGNAL \PC|q[8]~24\ : std_logic;
SIGNAL \PC|q[9]~25_combout\ : std_logic;
SIGNAL \BR|saidaB[8]~6_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~74_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~42_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~104_combout\ : std_logic;
SIGNAL \BR|registrador~334_q\ : std_logic;
SIGNAL \BR|saidaA[8]~6_combout\ : std_logic;
SIGNAL \BR|saidaB[9]~7_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~43feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~43_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~75feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~75_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~105_combout\ : std_logic;
SIGNAL \BR|registrador~335_q\ : std_logic;
SIGNAL \BR|saidaA[9]~7_combout\ : std_logic;
SIGNAL \ULA|Mux31~5_combout\ : std_logic;
SIGNAL \BR|saidaB[3]~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~37_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~69feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~69_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~98_combout\ : std_logic;
SIGNAL \BR|registrador~329feeder_combout\ : std_logic;
SIGNAL \BR|registrador~329_q\ : std_logic;
SIGNAL \BR|saidaA[3]~0_combout\ : std_logic;
SIGNAL \BR|saidaA[2]~1_combout\ : std_logic;
SIGNAL \ULA|Mux31~2_combout\ : std_logic;
SIGNAL \ULA|Mux31~6_combout\ : std_logic;
SIGNAL \PC|q[9]~26\ : std_logic;
SIGNAL \PC|q[10]~27_combout\ : std_logic;
SIGNAL \PC|q[10]~28\ : std_logic;
SIGNAL \PC|q[11]~29_combout\ : std_logic;
SIGNAL \PC|q[11]~30\ : std_logic;
SIGNAL \PC|q[12]~31_combout\ : std_logic;
SIGNAL \PC|q[12]~32\ : std_logic;
SIGNAL \PC|q[13]~33_combout\ : std_logic;
SIGNAL \BR|saidaB[13]~11_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~79_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~47_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~109_combout\ : std_logic;
SIGNAL \BR|registrador~339_q\ : std_logic;
SIGNAL \BR|saidaA[13]~11_combout\ : std_logic;
SIGNAL \BR|saidaB[12]~10_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~46_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~78_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~108_combout\ : std_logic;
SIGNAL \BR|registrador~338_q\ : std_logic;
SIGNAL \BR|saidaA[12]~10_combout\ : std_logic;
SIGNAL \ULA|Mux31~8_combout\ : std_logic;
SIGNAL \BR|saidaB[17]~16_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~83feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~83_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~51_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~114_combout\ : std_logic;
SIGNAL \BR|registrador~343feeder_combout\ : std_logic;
SIGNAL \BR|registrador~343_q\ : std_logic;
SIGNAL \BR|saidaA[17]~16_combout\ : std_logic;
SIGNAL \BR|saidaB[16]~15_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~50_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~82feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~82_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~113_combout\ : std_logic;
SIGNAL \BR|registrador~342_q\ : std_logic;
SIGNAL \BR|saidaA[16]~15_combout\ : std_logic;
SIGNAL \ULA|Mux31~11_combout\ : std_logic;
SIGNAL \BR|saidaB[11]~9_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~77feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~77_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~45feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~45_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~107_combout\ : std_logic;
SIGNAL \BR|registrador~337_q\ : std_logic;
SIGNAL \BR|saidaA[11]~9_combout\ : std_logic;
SIGNAL \BR|saidaB[10]~8_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~76feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~76_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~44feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~44_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~106_combout\ : std_logic;
SIGNAL \BR|registrador~336_q\ : std_logic;
SIGNAL \BR|saidaA[10]~8_combout\ : std_logic;
SIGNAL \ULA|Mux31~7_combout\ : std_logic;
SIGNAL \PC|q[13]~34\ : std_logic;
SIGNAL \PC|q[14]~35_combout\ : std_logic;
SIGNAL \PC|q[14]~36\ : std_logic;
SIGNAL \PC|q[15]~37_combout\ : std_logic;
SIGNAL \BR|saidaB[14]~12_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~48_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~80_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~110_combout\ : std_logic;
SIGNAL \BR|registrador~340_q\ : std_logic;
SIGNAL \BR|saidaA[14]~12_combout\ : std_logic;
SIGNAL \BR|saidaB[15]~13_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~81feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~81_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~49_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~111_combout\ : std_logic;
SIGNAL \BR|registrador~341_q\ : std_logic;
SIGNAL \BR|saidaA[15]~13_combout\ : std_logic;
SIGNAL \ULA|Mux31~9_combout\ : std_logic;
SIGNAL \ULA|Mux31~12_combout\ : std_logic;
SIGNAL \BR|saidaB[23]~22_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~57_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~89feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~89_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~120_combout\ : std_logic;
SIGNAL \BR|registrador~349_q\ : std_logic;
SIGNAL \BR|saidaA[23]~22_combout\ : std_logic;
SIGNAL \BR|saidaB[25]~24_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~91feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~91_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~59_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~122_combout\ : std_logic;
SIGNAL \BR|registrador~351_q\ : std_logic;
SIGNAL \BR|saidaA[25]~24_combout\ : std_logic;
SIGNAL \BR|saidaB[24]~23_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~58_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~90feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~90_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~121_combout\ : std_logic;
SIGNAL \BR|registrador~350_q\ : std_logic;
SIGNAL \BR|saidaA[24]~23_combout\ : std_logic;
SIGNAL \BR|saidaB[22]~21_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~88feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~88_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~56_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~119_combout\ : std_logic;
SIGNAL \BR|registrador~348_q\ : std_logic;
SIGNAL \BR|saidaA[22]~21_combout\ : std_logic;
SIGNAL \ULA|Mux31~14_combout\ : std_logic;
SIGNAL \BR|saidaB[19]~18_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~53_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~85feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~85_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~116_combout\ : std_logic;
SIGNAL \BR|registrador~345_q\ : std_logic;
SIGNAL \BR|saidaA[19]~18_combout\ : std_logic;
SIGNAL \BR|saidaB[20]~19_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~86feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~86_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~54_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~117_combout\ : std_logic;
SIGNAL \BR|registrador~346_q\ : std_logic;
SIGNAL \BR|saidaA[20]~19_combout\ : std_logic;
SIGNAL \BR|saidaB[18]~17_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~84feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~84_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~52_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~115_combout\ : std_logic;
SIGNAL \BR|registrador~344_q\ : std_logic;
SIGNAL \BR|saidaA[18]~17_combout\ : std_logic;
SIGNAL \BR|saidaB[21]~20_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~87feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~87_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~55_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~118_combout\ : std_logic;
SIGNAL \BR|registrador~347feeder_combout\ : std_logic;
SIGNAL \BR|registrador~347_q\ : std_logic;
SIGNAL \BR|saidaA[21]~20_combout\ : std_logic;
SIGNAL \ULA|Mux31~13_combout\ : std_logic;
SIGNAL \ULA|Mux31~15_combout\ : std_logic;
SIGNAL \ULA|Mux31~18_combout\ : std_logic;
SIGNAL \ULA|Mux31~19_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~66_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~112_combout\ : std_logic;
SIGNAL \BR|registrador~326_q\ : std_logic;
SIGNAL \BR|saidaA[0]~14_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~131_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~36_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~68feeder_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~68_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~99_combout\ : std_logic;
SIGNAL \BR|registrador~328_q\ : std_logic;
SIGNAL \BR|registrador~1093_combout\ : std_logic;
SIGNAL \BR|registrador~40_q\ : std_logic;
SIGNAL \BR|registrador~1062_combout\ : std_logic;
SIGNAL \ULA|Add0~0_combout\ : std_logic;
SIGNAL \ULA|Add0~2_cout\ : std_logic;
SIGNAL \ULA|Add0~4_cout\ : std_logic;
SIGNAL \ULA|Add0~6_cout\ : std_logic;
SIGNAL \ULA|Add0~7_combout\ : std_logic;
SIGNAL \ULA|Add0~10_combout\ : std_logic;
SIGNAL \ULA|Add0~11_combout\ : std_logic;
SIGNAL \ULA|Add0~8\ : std_logic;
SIGNAL \ULA|Add0~12_combout\ : std_logic;
SIGNAL \BR|registrador~1095_combout\ : std_logic;
SIGNAL \BR|registrador~41_q\ : std_logic;
SIGNAL \BR|registrador~1063_combout\ : std_logic;
SIGNAL \ULA|Add0~14_combout\ : std_logic;
SIGNAL \ULA|Mux30~4_combout\ : std_logic;
SIGNAL \DISPLAY0|saida7seg[0]~2_combout\ : std_logic;
SIGNAL \ULA|Add0~111_combout\ : std_logic;
SIGNAL \ULA|Add0~112_combout\ : std_logic;
SIGNAL \DISPLAY0|saida7seg[2]~8_combout\ : std_logic;
SIGNAL \DISPLAY0|saida7seg[2]~3_combout\ : std_logic;
SIGNAL \DISPLAY0|saida7seg[3]~4_combout\ : std_logic;
SIGNAL \DISPLAY0|saida7seg[4]~5_combout\ : std_logic;
SIGNAL \DISPLAY0|saida7seg[5]~6_combout\ : std_logic;
SIGNAL \DISPLAY0|saida7seg[6]~7_combout\ : std_logic;
SIGNAL \ULA|Add0~19_combout\ : std_logic;
SIGNAL \ULA|Add0~20_combout\ : std_logic;
SIGNAL \ULA|Add0~15_combout\ : std_logic;
SIGNAL \ULA|Add0~13\ : std_logic;
SIGNAL \ULA|Add0~17\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~23_combout\ : std_logic;
SIGNAL \BR|registrador~44_q\ : std_logic;
SIGNAL \BR|registrador~1065_combout\ : std_logic;
SIGNAL \ULA|Add0~25_combout\ : std_logic;
SIGNAL \ULA|Add0~26_combout\ : std_logic;
SIGNAL \ULA|Add0~24\ : std_logic;
SIGNAL \ULA|Add0~27_combout\ : std_logic;
SIGNAL \BR|registrador~1096_combout\ : std_logic;
SIGNAL \BR|registrador~45_q\ : std_logic;
SIGNAL \BR|registrador~1066_combout\ : std_logic;
SIGNAL \ULA|Add0~29_combout\ : std_logic;
SIGNAL \ULA|Add0~21_combout\ : std_logic;
SIGNAL \BR|registrador~1097_combout\ : std_logic;
SIGNAL \BR|registrador~43_q\ : std_logic;
SIGNAL \BR|registrador~1067_combout\ : std_logic;
SIGNAL \ULA|Add0~30_combout\ : std_logic;
SIGNAL \ULA|Add0~16_combout\ : std_logic;
SIGNAL \BR|registrador~42_q\ : std_logic;
SIGNAL \BR|registrador~1064_combout\ : std_logic;
SIGNAL \ULA|Add0~18_combout\ : std_logic;
SIGNAL \DISPLAY1|saida7seg[0]~4_combout\ : std_logic;
SIGNAL \DISPLAY1|saida7seg[1]~12_combout\ : std_logic;
SIGNAL \DISPLAY1|saida7seg~5_combout\ : std_logic;
SIGNAL \DISPLAY1|saida7seg[1]~6_combout\ : std_logic;
SIGNAL \DISPLAY1|saida7seg[2]~13_combout\ : std_logic;
SIGNAL \DISPLAY1|saida7seg[2]~7_combout\ : std_logic;
SIGNAL \DISPLAY1|saida7seg[3]~8_combout\ : std_logic;
SIGNAL \DISPLAY1|saida7seg[4]~9_combout\ : std_logic;
SIGNAL \DISPLAY1|saida7seg[5]~10_combout\ : std_logic;
SIGNAL \DISPLAY1|saida7seg[6]~11_combout\ : std_logic;
SIGNAL \ULA|Add0~36_combout\ : std_logic;
SIGNAL \ULA|Add0~31_combout\ : std_logic;
SIGNAL \ULA|Add0~28\ : std_logic;
SIGNAL \ULA|Add0~33\ : std_logic;
SIGNAL \ULA|Add0~37_combout\ : std_logic;
SIGNAL \BR|registrador~1099_combout\ : std_logic;
SIGNAL \BR|registrador~47_q\ : std_logic;
SIGNAL \BR|registrador~1071_combout\ : std_logic;
SIGNAL \ULA|Add0~46_combout\ : std_logic;
SIGNAL \ULA|Add0~35_combout\ : std_logic;
SIGNAL \ULA|Add0~38\ : std_logic;
SIGNAL \ULA|Add0~39_combout\ : std_logic;
SIGNAL \BR|registrador~48_q\ : std_logic;
SIGNAL \BR|registrador~1069_combout\ : std_logic;
SIGNAL \ULA|Add0~41_combout\ : std_logic;
SIGNAL \BR|registrador~1098_combout\ : std_logic;
SIGNAL \BR|registrador~49_q\ : std_logic;
SIGNAL \BR|registrador~1070_combout\ : std_logic;
SIGNAL \ULA|Add0~42_combout\ : std_logic;
SIGNAL \ULA|Add0~40\ : std_logic;
SIGNAL \ULA|Add0~43_combout\ : std_logic;
SIGNAL \ULA|Add0~45_combout\ : std_logic;
SIGNAL \ULA|Add0~32_combout\ : std_logic;
SIGNAL \BR|registrador~46_q\ : std_logic;
SIGNAL \BR|registrador~1068_combout\ : std_logic;
SIGNAL \ULA|Add0~34_combout\ : std_logic;
SIGNAL \DISPLAY2|saida7seg[0]~4_combout\ : std_logic;
SIGNAL \DISPLAY2|saida7seg~5_combout\ : std_logic;
SIGNAL \DISPLAY2|saida7seg[1]~12_combout\ : std_logic;
SIGNAL \DISPLAY2|saida7seg[1]~6_combout\ : std_logic;
SIGNAL \DISPLAY2|saida7seg[2]~13_combout\ : std_logic;
SIGNAL \DISPLAY2|saida7seg[2]~7_combout\ : std_logic;
SIGNAL \DISPLAY2|saida7seg[3]~8_combout\ : std_logic;
SIGNAL \DISPLAY2|saida7seg[4]~9_combout\ : std_logic;
SIGNAL \DISPLAY2|saida7seg[5]~10_combout\ : std_logic;
SIGNAL \DISPLAY2|saida7seg[6]~11_combout\ : std_logic;
SIGNAL \ULA|Add0~51_combout\ : std_logic;
SIGNAL \ULA|Add0~52_combout\ : std_logic;
SIGNAL \ULA|Add0~47_combout\ : std_logic;
SIGNAL \ULA|Add0~44\ : std_logic;
SIGNAL \ULA|Add0~49\ : std_logic;
SIGNAL \ULA|Add0~54\ : std_logic;
SIGNAL \ULA|Add0~55_combout\ : std_logic;
SIGNAL \BR|registrador~52_q\ : std_logic;
SIGNAL \BR|registrador~1073_combout\ : std_logic;
SIGNAL \ULA|Add0~57_combout\ : std_logic;
SIGNAL \BR|registrador~1100_combout\ : std_logic;
SIGNAL \BR|registrador~53_q\ : std_logic;
SIGNAL \BR|registrador~1074_combout\ : std_logic;
SIGNAL \ULA|Add0~58_combout\ : std_logic;
SIGNAL \ULA|Add0~56\ : std_logic;
SIGNAL \ULA|Add0~59_combout\ : std_logic;
SIGNAL \ULA|Add0~61_combout\ : std_logic;
SIGNAL \BR|registrador~50_q\ : std_logic;
SIGNAL \BR|registrador~1072_combout\ : std_logic;
SIGNAL \ULA|Add0~48_combout\ : std_logic;
SIGNAL \ULA|Add0~50_combout\ : std_logic;
SIGNAL \BR|registrador~1101_combout\ : std_logic;
SIGNAL \BR|registrador~51_q\ : std_logic;
SIGNAL \BR|registrador~1075_combout\ : std_logic;
SIGNAL \ULA|Add0~53_combout\ : std_logic;
SIGNAL \ULA|Add0~62_combout\ : std_logic;
SIGNAL \DISPLAY3|saida7seg[0]~2_combout\ : std_logic;
SIGNAL \DISPLAY3|saida7seg~3_combout\ : std_logic;
SIGNAL \DISPLAY3|saida7seg[1]~11_combout\ : std_logic;
SIGNAL \DISPLAY3|saida7seg[1]~4_combout\ : std_logic;
SIGNAL \DISPLAY3|saida7seg[2]~5_combout\ : std_logic;
SIGNAL \DISPLAY3|saida7seg[2]~6_combout\ : std_logic;
SIGNAL \DISPLAY3|saida7seg[3]~7_combout\ : std_logic;
SIGNAL \DISPLAY3|saida7seg[4]~8_combout\ : std_logic;
SIGNAL \DISPLAY3|saida7seg[5]~9_combout\ : std_logic;
SIGNAL \DISPLAY3|saida7seg[6]~10_combout\ : std_logic;
SIGNAL \ULA|Add0~60\ : std_logic;
SIGNAL \ULA|Add0~64\ : std_logic;
SIGNAL \ULA|Add0~67\ : std_logic;
SIGNAL \ULA|Add0~69\ : std_logic;
SIGNAL \ULA|Add0~71_combout\ : std_logic;
SIGNAL \BR|registrador~1102_combout\ : std_logic;
SIGNAL \BR|registrador~57_q\ : std_logic;
SIGNAL \BR|registrador~1078_combout\ : std_logic;
SIGNAL \ULA|Add0~73_combout\ : std_logic;
SIGNAL \ULA|Add0~68_combout\ : std_logic;
SIGNAL \BR|registrador~56_q\ : std_logic;
SIGNAL \BR|registrador~1077_combout\ : std_logic;
SIGNAL \ULA|Add0~70_combout\ : std_logic;
SIGNAL \ULA|Add0~63_combout\ : std_logic;
SIGNAL \BR|registrador~54_q\ : std_logic;
SIGNAL \BR|registrador~1076_combout\ : std_logic;
SIGNAL \ULA|Add0~65_combout\ : std_logic;
SIGNAL \ULA|Add0~66_combout\ : std_logic;
SIGNAL \BR|registrador~1103_combout\ : std_logic;
SIGNAL \BR|registrador~55_q\ : std_logic;
SIGNAL \BR|registrador~1079_combout\ : std_logic;
SIGNAL \ULA|Add0~74_combout\ : std_logic;
SIGNAL \DISPLAY4|saida7seg[0]~2_combout\ : std_logic;
SIGNAL \DISPLAY4|saida7seg~3_combout\ : std_logic;
SIGNAL \DISPLAY4|saida7seg[1]~11_combout\ : std_logic;
SIGNAL \DISPLAY4|saida7seg[1]~4_combout\ : std_logic;
SIGNAL \DISPLAY4|saida7seg[2]~5_combout\ : std_logic;
SIGNAL \DISPLAY4|saida7seg[2]~6_combout\ : std_logic;
SIGNAL \DISPLAY4|saida7seg[3]~7_combout\ : std_logic;
SIGNAL \DISPLAY4|saida7seg[4]~8_combout\ : std_logic;
SIGNAL \DISPLAY4|saida7seg[5]~9_combout\ : std_logic;
SIGNAL \DISPLAY4|saida7seg[6]~10_combout\ : std_logic;
SIGNAL \ULA|Add0~72\ : std_logic;
SIGNAL \ULA|Add0~76\ : std_logic;
SIGNAL \ULA|Add0~78_combout\ : std_logic;
SIGNAL \BR|registrador~1105_combout\ : std_logic;
SIGNAL \BR|registrador~59_q\ : std_logic;
SIGNAL \BR|registrador~1083_combout\ : std_logic;
SIGNAL \ULA|Add0~86_combout\ : std_logic;
SIGNAL \ULA|Add0~75_combout\ : std_logic;
SIGNAL \BR|registrador~58_q\ : std_logic;
SIGNAL \BR|registrador~1080_combout\ : std_logic;
SIGNAL \ULA|Add0~77_combout\ : std_logic;
SIGNAL \ULA|Add0~79\ : std_logic;
SIGNAL \ULA|Add0~80_combout\ : std_logic;
SIGNAL \BR|registrador~60_q\ : std_logic;
SIGNAL \BR|registrador~1081_combout\ : std_logic;
SIGNAL \ULA|Add0~82_combout\ : std_logic;
SIGNAL \BR|registrador~1104_combout\ : std_logic;
SIGNAL \BR|registrador~61_q\ : std_logic;
SIGNAL \BR|registrador~1082_combout\ : std_logic;
SIGNAL \ULA|Add0~81\ : std_logic;
SIGNAL \ULA|Add0~83_combout\ : std_logic;
SIGNAL \ULA|Add0~85_combout\ : std_logic;
SIGNAL \DISPLAY5|saida7seg[0]~2_combout\ : std_logic;
SIGNAL \DISPLAY5|saida7seg~3_combout\ : std_logic;
SIGNAL \DISPLAY5|saida7seg[1]~11_combout\ : std_logic;
SIGNAL \DISPLAY5|saida7seg[1]~4_combout\ : std_logic;
SIGNAL \DISPLAY5|saida7seg[2]~5_combout\ : std_logic;
SIGNAL \DISPLAY5|saida7seg[2]~6_combout\ : std_logic;
SIGNAL \DISPLAY5|saida7seg[3]~7_combout\ : std_logic;
SIGNAL \DISPLAY5|saida7seg[4]~8_combout\ : std_logic;
SIGNAL \DISPLAY5|saida7seg[5]~9_combout\ : std_logic;
SIGNAL \DISPLAY5|saida7seg[6]~10_combout\ : std_logic;
SIGNAL \BR|registrador~64_q\ : std_logic;
SIGNAL \BR|registrador~1085_combout\ : std_logic;
SIGNAL \ULA|Add0~84\ : std_logic;
SIGNAL \ULA|Add0~88\ : std_logic;
SIGNAL \ULA|Add0~91\ : std_logic;
SIGNAL \ULA|Add0~92_combout\ : std_logic;
SIGNAL \ULA|Add0~94_combout\ : std_logic;
SIGNAL \ULA|Add0~93\ : std_logic;
SIGNAL \ULA|Add0~95_combout\ : std_logic;
SIGNAL \BR|registrador~1106_combout\ : std_logic;
SIGNAL \BR|registrador~65_q\ : std_logic;
SIGNAL \BR|registrador~1086_combout\ : std_logic;
SIGNAL \ULA|Add0~97_combout\ : std_logic;
SIGNAL \BR|registrador~62_q\ : std_logic;
SIGNAL \BR|registrador~1084_combout\ : std_logic;
SIGNAL \ULA|Add0~87_combout\ : std_logic;
SIGNAL \ULA|Add0~89_combout\ : std_logic;
SIGNAL \BR|registrador~1107_combout\ : std_logic;
SIGNAL \BR|registrador~63_q\ : std_logic;
SIGNAL \BR|registrador~1087_combout\ : std_logic;
SIGNAL \ULA|Add0~90_combout\ : std_logic;
SIGNAL \ULA|Add0~98_combout\ : std_logic;
SIGNAL \DISPLAY6|saida7seg[0]~2_combout\ : std_logic;
SIGNAL \DISPLAY6|saida7seg~3_combout\ : std_logic;
SIGNAL \DISPLAY6|saida7seg[1]~11_combout\ : std_logic;
SIGNAL \DISPLAY6|saida7seg[1]~4_combout\ : std_logic;
SIGNAL \DISPLAY6|saida7seg[2]~5_combout\ : std_logic;
SIGNAL \DISPLAY6|saida7seg[2]~6_combout\ : std_logic;
SIGNAL \DISPLAY6|saida7seg[3]~7_combout\ : std_logic;
SIGNAL \DISPLAY6|saida7seg[4]~8_combout\ : std_logic;
SIGNAL \DISPLAY6|saida7seg[5]~9_combout\ : std_logic;
SIGNAL \DISPLAY6|saida7seg[6]~10_combout\ : std_logic;
SIGNAL \ULA|Add0~96\ : std_logic;
SIGNAL \ULA|Add0~100\ : std_logic;
SIGNAL \ULA|Add0~103\ : std_logic;
SIGNAL \ULA|Add0~104_combout\ : std_logic;
SIGNAL \BR|registrador~68_q\ : std_logic;
SIGNAL \BR|registrador~1089_combout\ : std_logic;
SIGNAL \ULA|Add0~106_combout\ : std_logic;
SIGNAL \ULA|Add0~105\ : std_logic;
SIGNAL \ULA|Add0~107_combout\ : std_logic;
SIGNAL \BR|registrador~1108_combout\ : std_logic;
SIGNAL \BR|registrador~69_q\ : std_logic;
SIGNAL \BR|registrador~1090_combout\ : std_logic;
SIGNAL \ULA|Add0~109_combout\ : std_logic;
SIGNAL \ULA|Add0~102_combout\ : std_logic;
SIGNAL \BR|registrador~1109_combout\ : std_logic;
SIGNAL \BR|registrador~67_q\ : std_logic;
SIGNAL \BR|registrador~1091_combout\ : std_logic;
SIGNAL \ULA|Add0~110_combout\ : std_logic;
SIGNAL \ULA|Add0~99_combout\ : std_logic;
SIGNAL \BR|registrador~66_q\ : std_logic;
SIGNAL \BR|registrador~1088_combout\ : std_logic;
SIGNAL \ULA|Add0~101_combout\ : std_logic;
SIGNAL \DISPLAY7|saida7seg[0]~2_combout\ : std_logic;
SIGNAL \DISPLAY7|saida7seg[1]~11_combout\ : std_logic;
SIGNAL \DISPLAY7|saida7seg~3_combout\ : std_logic;
SIGNAL \DISPLAY7|saida7seg[1]~4_combout\ : std_logic;
SIGNAL \DISPLAY7|saida7seg[2]~5_combout\ : std_logic;
SIGNAL \DISPLAY7|saida7seg[2]~6_combout\ : std_logic;
SIGNAL \DISPLAY7|saida7seg[3]~7_combout\ : std_logic;
SIGNAL \DISPLAY7|saida7seg[4]~8_combout\ : std_logic;
SIGNAL \DISPLAY7|saida7seg[5]~9_combout\ : std_logic;
SIGNAL \DISPLAY7|saida7seg[6]~10_combout\ : std_logic;
SIGNAL \PC|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \EDpc|ALT_INV_saida~combout\ : std_logic;
SIGNAL \DISPLAY0|ALT_INV_saida7seg[2]~3_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\EDclk|saida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \EDclk|saida~combout\);
\EDpc|ALT_INV_saida~combout\ <= NOT \EDpc|saida~combout\;
\DISPLAY0|ALT_INV_saida7seg[2]~3_combout\ <= NOT \DISPLAY0|saida7seg[2]~3_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY0|saida7seg[0]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~112_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY0|ALT_INV_saida7seg[2]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY0|saida7seg[3]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY0|saida7seg[4]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY0|saida7seg[5]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY0|saida7seg[6]~7_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY1|saida7seg[0]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY1|saida7seg[1]~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY1|saida7seg[2]~7_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY1|saida7seg[3]~8_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY1|saida7seg[4]~9_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY1|saida7seg[5]~10_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY1|saida7seg[6]~11_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY2|saida7seg[0]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY2|saida7seg[1]~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY2|saida7seg[2]~7_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY2|saida7seg[3]~8_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY2|saida7seg[4]~9_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY2|saida7seg[5]~10_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY2|saida7seg[6]~11_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY3|saida7seg[0]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY3|saida7seg[1]~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY3|saida7seg[2]~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY3|saida7seg[3]~7_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY3|saida7seg[4]~8_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY3|saida7seg[5]~9_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY3|saida7seg[6]~10_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY4|saida7seg[0]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY4|saida7seg[1]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY4|saida7seg[2]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY4|saida7seg[3]~7_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY4|saida7seg[4]~8_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY4|saida7seg[5]~9_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY4|saida7seg[6]~10_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY5|saida7seg[0]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY5|saida7seg[1]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY5|saida7seg[2]~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY5|saida7seg[3]~7_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY5|saida7seg[4]~8_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY5|saida7seg[5]~9_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY5|saida7seg[6]~10_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY6|saida7seg[0]~2_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY6|saida7seg[1]~4_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY6|saida7seg[2]~6_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY6|saida7seg[3]~7_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY6|saida7seg[4]~8_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY6|saida7seg[5]~9_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY6|saida7seg[6]~10_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY7|saida7seg[0]~2_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY7|saida7seg[1]~4_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY7|saida7seg[2]~6_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY7|saida7seg[3]~7_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY7|saida7seg[4]~8_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY7|saida7seg[5]~9_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY7|saida7seg[6]~10_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(2),
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(3),
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(4),
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(5),
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(6),
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(7),
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X114_Y37_N10
\EDclk|saidaQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \EDclk|saidaQ~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	combout => \EDclk|saidaQ~0_combout\);

-- Location: FF_X114_Y37_N3
\EDclk|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \EDclk|saidaQ~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EDclk|saidaQ~q\);

-- Location: LCCOMB_X114_Y37_N2
\EDclk|saida\ : cycloneive_lcell_comb
-- Equation(s):
-- \EDclk|saida~combout\ = LCELL((!\EDclk|saidaQ~q\ & !\KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EDclk|saidaQ~q\,
	datad => \KEY[0]~input_o\,
	combout => \EDclk|saida~combout\);

-- Location: CLKCTRL_G6
\EDclk|saida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \EDclk|saida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \EDclk|saida~clkctrl_outclk\);

-- Location: LCCOMB_X105_Y16_N4
\PC|q[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[2]~39_combout\ = !\PC|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	combout => \PC|q[2]~39_combout\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: FF_X106_Y17_N31
\EDpc|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EDpc|saidaQ~q\);

-- Location: LCCOMB_X106_Y17_N30
\EDpc|saida\ : cycloneive_lcell_comb
-- Equation(s):
-- \EDpc|saida~combout\ = (\KEY[1]~input_o\ & !\EDpc|saidaQ~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \EDpc|saidaQ~q\,
	combout => \EDpc|saida~combout\);

-- Location: FF_X106_Y17_N1
\PC|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \PC|q[2]~39_combout\,
	clrn => \EDpc|ALT_INV_saida~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(2));

-- Location: LCCOMB_X106_Y17_N2
\PC|q[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[3]~13_combout\ = (\PC|q\(2) & (\PC|q\(3) $ (VCC))) # (!\PC|q\(2) & (\PC|q\(3) & VCC))
-- \PC|q[3]~14\ = CARRY((\PC|q\(2) & \PC|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(3),
	datad => VCC,
	combout => \PC|q[3]~13_combout\,
	cout => \PC|q[3]~14\);

-- Location: FF_X106_Y17_N3
\PC|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \PC|q[3]~13_combout\,
	clrn => \EDpc|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(3));

-- Location: LCCOMB_X106_Y17_N4
\PC|q[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[4]~15_combout\ = (\PC|q\(4) & (!\PC|q[3]~14\)) # (!\PC|q\(4) & ((\PC|q[3]~14\) # (GND)))
-- \PC|q[4]~16\ = CARRY((!\PC|q[3]~14\) # (!\PC|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(4),
	datad => VCC,
	cin => \PC|q[3]~14\,
	combout => \PC|q[4]~15_combout\,
	cout => \PC|q[4]~16\);

-- Location: FF_X106_Y17_N5
\PC|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \PC|q[4]~15_combout\,
	clrn => \EDpc|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(4));

-- Location: LCCOMB_X106_Y17_N6
\PC|q[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[5]~17_combout\ = (\PC|q\(5) & (\PC|q[4]~16\ $ (GND))) # (!\PC|q\(5) & (!\PC|q[4]~16\ & VCC))
-- \PC|q[5]~18\ = CARRY((\PC|q\(5) & !\PC|q[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datad => VCC,
	cin => \PC|q[4]~16\,
	combout => \PC|q[5]~17_combout\,
	cout => \PC|q[5]~18\);

-- Location: FF_X106_Y17_N7
\PC|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \PC|q[5]~17_combout\,
	clrn => \EDpc|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(5));

-- Location: LCCOMB_X106_Y17_N8
\PC|q[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[6]~19_combout\ = (\PC|q\(6) & (!\PC|q[5]~18\)) # (!\PC|q\(6) & ((\PC|q[5]~18\) # (GND)))
-- \PC|q[6]~20\ = CARRY((!\PC|q[5]~18\) # (!\PC|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datad => VCC,
	cin => \PC|q[5]~18\,
	combout => \PC|q[6]~19_combout\,
	cout => \PC|q[6]~20\);

-- Location: FF_X106_Y17_N9
\PC|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \PC|q[6]~19_combout\,
	clrn => \EDpc|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(6));

-- Location: LCCOMB_X106_Y17_N10
\PC|q[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[7]~21_combout\ = (\PC|q\(7) & (\PC|q[6]~20\ $ (GND))) # (!\PC|q\(7) & (!\PC|q[6]~20\ & VCC))
-- \PC|q[7]~22\ = CARRY((\PC|q\(7) & !\PC|q[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(7),
	datad => VCC,
	cin => \PC|q[6]~20\,
	combout => \PC|q[7]~21_combout\,
	cout => \PC|q[7]~22\);

-- Location: FF_X106_Y17_N11
\PC|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \PC|q[7]~21_combout\,
	clrn => \EDpc|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(7));

-- Location: LCCOMB_X106_Y17_N0
\MEMORIA_INSTRUCOES|memROM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCOES|memROM~0_combout\ = (!\PC|q\(6) & !\PC|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(6),
	datad => \PC|q\(4),
	combout => \MEMORIA_INSTRUCOES|memROM~0_combout\);

-- Location: LCCOMB_X106_Y17_N28
\MEMORIA_INSTRUCOES|memROM~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCOES|memROM~1_combout\ = (!\PC|q\(7) & (!\PC|q\(3) & (!\PC|q\(5) & \MEMORIA_INSTRUCOES|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(7),
	datab => \PC|q\(3),
	datac => \PC|q\(5),
	datad => \MEMORIA_INSTRUCOES|memROM~0_combout\,
	combout => \MEMORIA_INSTRUCOES|memROM~1_combout\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X107_Y15_N28
\ULA|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_combout\ = (!\SW[2]~input_o\ & (\MEMORIA_INSTRUCOES|memROM~1_combout\ & !\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datad => \SW[3]~input_o\,
	combout => \ULA|Add0~9_combout\);

-- Location: LCCOMB_X107_Y15_N20
\ULA|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux8~0_combout\ = \SW[2]~input_o\ $ (\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \ULA|Mux8~0_combout\);

-- Location: LCCOMB_X106_Y16_N6
\MEMORIA_INSTRUCOES|memROM~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCOES|memROM~2_combout\ = (!\PC|q\(6) & (!\PC|q\(5) & (!\PC|q\(4) & !\PC|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datab => \PC|q\(5),
	datac => \PC|q\(4),
	datad => \PC|q\(3),
	combout => \MEMORIA_INSTRUCOES|memROM~2_combout\);

-- Location: LCCOMB_X110_Y16_N2
\BR|saidaB[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[2]~1_combout\ = (!\PC|q\(7) & (\BR|registrador~328_q\ & \MEMORIA_INSTRUCOES|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(7),
	datab => \BR|registrador~328_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaB[2]~1_combout\);

-- Location: LCCOMB_X111_Y16_N26
\MEMORIA_DADOS|ram~36feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~36feeder_combout\ = \BR|saidaB[2]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BR|saidaB[2]~1_combout\,
	combout => \MEMORIA_DADOS|ram~36feeder_combout\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X108_Y15_N4
\ULA|Mux31~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux31~10_combout\ = (\SW[3]~input_o\ & \SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \ULA|Mux31~10_combout\);

-- Location: LCCOMB_X110_Y16_N4
\BR|saidaB[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[0]~14_combout\ = (!\BR|registrador~326_q\ & (!\PC|q\(7) & \MEMORIA_INSTRUCOES|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BR|registrador~326_q\,
	datac => \PC|q\(7),
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaB[0]~14_combout\);

-- Location: FF_X110_Y16_N3
\MEMORIA_DADOS|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \BR|saidaB[0]~14_combout\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~34_q\);

-- Location: LCCOMB_X108_Y17_N18
\BR|saidaB[31]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[31]~30_combout\ = (!\PC|q\(7) & (\BR|registrador~357_q\ & \MEMORIA_INSTRUCOES|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(7),
	datac => \BR|registrador~357_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaB[31]~30_combout\);

-- Location: FF_X108_Y17_N19
\MEMORIA_DADOS|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[31]~30_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~65_q\);

-- Location: LCCOMB_X108_Y17_N0
\MEMORIA_DADOS|ram~97feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~97feeder_combout\ = \BR|saidaB[31]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BR|saidaB[31]~30_combout\,
	combout => \MEMORIA_DADOS|ram~97feeder_combout\);

-- Location: LCCOMB_X108_Y16_N30
\MEMORIA_DADOS|ram~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~130_combout\ = (\SW[4]~input_o\ & ((\ULA|Mux31~18_combout\) # ((!\ULA|Mux31~10_combout\ & \BR|saidaA[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \ULA|Mux31~10_combout\,
	datac => \BR|saidaA[0]~14_combout\,
	datad => \ULA|Mux31~18_combout\,
	combout => \MEMORIA_DADOS|ram~130_combout\);

-- Location: FF_X108_Y17_N1
\MEMORIA_DADOS|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~97feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~97_q\);

-- Location: LCCOMB_X109_Y17_N16
\MEMORIA_DADOS|ram~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~128_combout\ = (\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~97_q\))) # (!\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~65_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ram~65_q\,
	datac => \MEMORIA_DADOS|ram~97_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~128_combout\);

-- Location: LCCOMB_X109_Y17_N12
\BR|registrador~357feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~357feeder_combout\ = \MEMORIA_DADOS|ram~128_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_DADOS|ram~128_combout\,
	combout => \BR|registrador~357feeder_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X105_Y16_N24
\BR|registrador~1092\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1092_combout\ = (!\PC|q\(7) & (\SW[1]~input_o\ & \MEMORIA_INSTRUCOES|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(7),
	datac => \SW[1]~input_o\,
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|registrador~1092_combout\);

-- Location: FF_X109_Y17_N13
\BR|registrador~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|registrador~357feeder_combout\,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~357_q\);

-- Location: LCCOMB_X108_Y16_N10
\BR|saidaA[31]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[31]~30_combout\ = (\BR|registrador~357_q\ & (!\PC|q\(2) & \MEMORIA_INSTRUCOES|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BR|registrador~357_q\,
	datac => \PC|q\(2),
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|saidaA[31]~30_combout\);

-- Location: LCCOMB_X110_Y16_N30
\BR|saidaB[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[1]~31_combout\ = (\BR|registrador~327_q\ & (!\PC|q\(7) & \MEMORIA_INSTRUCOES|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BR|registrador~327_q\,
	datac => \PC|q\(7),
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaB[1]~31_combout\);

-- Location: FF_X110_Y16_N21
\MEMORIA_DADOS|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \BR|saidaB[1]~31_combout\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~67_q\);

-- Location: FF_X110_Y16_N31
\MEMORIA_DADOS|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[1]~31_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~35_q\);

-- Location: LCCOMB_X109_Y16_N10
\MEMORIA_DADOS|ram~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~129_combout\ = (\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~67_q\)) # (!\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~35_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ram~67_q\,
	datac => \ULA|Mux31~19_combout\,
	datad => \MEMORIA_DADOS|ram~35_q\,
	combout => \MEMORIA_DADOS|ram~129_combout\);

-- Location: FF_X109_Y16_N11
\BR|registrador~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~129_combout\,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~327_q\);

-- Location: LCCOMB_X108_Y16_N24
\BR|saidaA[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[1]~31_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & ((\PC|q\(2)) # (\BR|registrador~327_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datac => \BR|registrador~327_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|saidaA[1]~31_combout\);

-- Location: LCCOMB_X108_Y18_N26
\BR|saidaB[28]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[28]~27_combout\ = (!\PC|q\(7) & (\MEMORIA_INSTRUCOES|memROM~2_combout\ & \BR|registrador~354_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(7),
	datac => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	datad => \BR|registrador~354_q\,
	combout => \BR|saidaB[28]~27_combout\);

-- Location: LCCOMB_X108_Y18_N24
\MEMORIA_DADOS|ram~94feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~94feeder_combout\ = \BR|saidaB[28]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BR|saidaB[28]~27_combout\,
	combout => \MEMORIA_DADOS|ram~94feeder_combout\);

-- Location: FF_X108_Y18_N25
\MEMORIA_DADOS|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~94feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~94_q\);

-- Location: FF_X108_Y18_N27
\MEMORIA_DADOS|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[28]~27_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~62_q\);

-- Location: LCCOMB_X107_Y16_N4
\MEMORIA_DADOS|ram~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~125_combout\ = (\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~94_q\)) # (!\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~62_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ram~94_q\,
	datac => \MEMORIA_DADOS|ram~62_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~125_combout\);

-- Location: FF_X107_Y16_N23
\BR|registrador~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \MEMORIA_DADOS|ram~125_combout\,
	sload => VCC,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~354_q\);

-- Location: LCCOMB_X107_Y16_N22
\BR|saidaA[28]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[28]~27_combout\ = (!\PC|q\(2) & (\MEMORIA_INSTRUCOES|memROM~2_combout\ & (\BR|registrador~354_q\ & !\PC|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	datac => \BR|registrador~354_q\,
	datad => \PC|q\(7),
	combout => \BR|saidaA[28]~27_combout\);

-- Location: LCCOMB_X108_Y18_N14
\BR|saidaB[27]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[27]~26_combout\ = (!\PC|q\(7) & (\MEMORIA_INSTRUCOES|memROM~2_combout\ & \BR|registrador~353_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(7),
	datac => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	datad => \BR|registrador~353_q\,
	combout => \BR|saidaB[27]~26_combout\);

-- Location: FF_X108_Y18_N15
\MEMORIA_DADOS|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[27]~26_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~61_q\);

-- Location: LCCOMB_X108_Y18_N4
\MEMORIA_DADOS|ram~93feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~93feeder_combout\ = \BR|saidaB[27]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BR|saidaB[27]~26_combout\,
	combout => \MEMORIA_DADOS|ram~93feeder_combout\);

-- Location: FF_X108_Y18_N5
\MEMORIA_DADOS|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~93feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~93_q\);

-- Location: LCCOMB_X107_Y16_N2
\MEMORIA_DADOS|ram~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~124_combout\ = (\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~93_q\))) # (!\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~61_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ram~61_q\,
	datac => \MEMORIA_DADOS|ram~93_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~124_combout\);

-- Location: FF_X107_Y16_N3
\BR|registrador~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~124_combout\,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~353_q\);

-- Location: LCCOMB_X107_Y16_N0
\BR|saidaA[27]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[27]~26_combout\ = (\BR|registrador~353_q\ & (\MEMORIA_INSTRUCOES|memROM~1_combout\ & !\PC|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~353_q\,
	datac => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datad => \PC|q\(2),
	combout => \BR|saidaA[27]~26_combout\);

-- Location: LCCOMB_X108_Y18_N30
\BR|saidaB[29]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[29]~28_combout\ = (!\PC|q\(7) & (\MEMORIA_INSTRUCOES|memROM~2_combout\ & \BR|registrador~355_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(7),
	datac => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	datad => \BR|registrador~355_q\,
	combout => \BR|saidaB[29]~28_combout\);

-- Location: LCCOMB_X108_Y18_N28
\MEMORIA_DADOS|ram~95feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~95feeder_combout\ = \BR|saidaB[29]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BR|saidaB[29]~28_combout\,
	combout => \MEMORIA_DADOS|ram~95feeder_combout\);

-- Location: FF_X108_Y18_N29
\MEMORIA_DADOS|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~95feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~95_q\);

-- Location: FF_X108_Y18_N31
\MEMORIA_DADOS|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[29]~28_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~63_q\);

-- Location: LCCOMB_X105_Y16_N8
\MEMORIA_DADOS|ram~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~126_combout\ = (\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~95_q\)) # (!\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~63_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ram~95_q\,
	datac => \MEMORIA_DADOS|ram~63_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~126_combout\);

-- Location: FF_X105_Y16_N11
\BR|registrador~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \MEMORIA_DADOS|ram~126_combout\,
	sload => VCC,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~355_q\);

-- Location: LCCOMB_X107_Y16_N8
\BR|saidaA[29]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[29]~28_combout\ = (!\PC|q\(2) & (\MEMORIA_INSTRUCOES|memROM~1_combout\ & \BR|registrador~355_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datac => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datad => \BR|registrador~355_q\,
	combout => \BR|saidaA[29]~28_combout\);

-- Location: LCCOMB_X108_Y18_N18
\BR|saidaB[26]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[26]~25_combout\ = (!\PC|q\(7) & (\MEMORIA_INSTRUCOES|memROM~2_combout\ & \BR|registrador~352_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(7),
	datac => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	datad => \BR|registrador~352_q\,
	combout => \BR|saidaB[26]~25_combout\);

-- Location: FF_X108_Y18_N19
\MEMORIA_DADOS|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[26]~25_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~60_q\);

-- Location: LCCOMB_X108_Y18_N0
\MEMORIA_DADOS|ram~92feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~92feeder_combout\ = \BR|saidaB[26]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BR|saidaB[26]~25_combout\,
	combout => \MEMORIA_DADOS|ram~92feeder_combout\);

-- Location: FF_X108_Y18_N1
\MEMORIA_DADOS|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~92feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~92_q\);

-- Location: LCCOMB_X107_Y16_N20
\MEMORIA_DADOS|ram~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~123_combout\ = (\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~92_q\))) # (!\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~60_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ram~60_q\,
	datab => \MEMORIA_DADOS|ram~92_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~123_combout\);

-- Location: FF_X107_Y16_N17
\BR|registrador~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \MEMORIA_DADOS|ram~123_combout\,
	sload => VCC,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~352_q\);

-- Location: LCCOMB_X107_Y16_N16
\BR|saidaA[26]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[26]~25_combout\ = (!\PC|q\(2) & (\MEMORIA_INSTRUCOES|memROM~1_combout\ & \BR|registrador~352_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datac => \BR|registrador~352_q\,
	combout => \BR|saidaA[26]~25_combout\);

-- Location: LCCOMB_X107_Y16_N6
\ULA|Mux31~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux31~16_combout\ = (!\BR|saidaA[28]~27_combout\ & (!\BR|saidaA[27]~26_combout\ & (!\BR|saidaA[29]~28_combout\ & !\BR|saidaA[26]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|saidaA[28]~27_combout\,
	datab => \BR|saidaA[27]~26_combout\,
	datac => \BR|saidaA[29]~28_combout\,
	datad => \BR|saidaA[26]~25_combout\,
	combout => \ULA|Mux31~16_combout\);

-- Location: LCCOMB_X108_Y17_N26
\BR|saidaB[30]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[30]~29_combout\ = (!\PC|q\(7) & (\BR|registrador~356_q\ & \MEMORIA_INSTRUCOES|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(7),
	datac => \BR|registrador~356_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaB[30]~29_combout\);

-- Location: FF_X108_Y17_N27
\MEMORIA_DADOS|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[30]~29_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~64_q\);

-- Location: LCCOMB_X108_Y17_N12
\MEMORIA_DADOS|ram~96feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~96feeder_combout\ = \BR|saidaB[30]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BR|saidaB[30]~29_combout\,
	combout => \MEMORIA_DADOS|ram~96feeder_combout\);

-- Location: FF_X108_Y17_N13
\MEMORIA_DADOS|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~96feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~96_q\);

-- Location: LCCOMB_X107_Y16_N28
\MEMORIA_DADOS|ram~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~127_combout\ = (\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~96_q\))) # (!\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~64_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ram~64_q\,
	datab => \MEMORIA_DADOS|ram~96_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~127_combout\);

-- Location: FF_X107_Y16_N29
\BR|registrador~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~127_combout\,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~356_q\);

-- Location: LCCOMB_X107_Y16_N30
\BR|saidaA[30]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[30]~29_combout\ = (!\PC|q\(2) & (\MEMORIA_INSTRUCOES|memROM~1_combout\ & \BR|registrador~356_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datad => \BR|registrador~356_q\,
	combout => \BR|saidaA[30]~29_combout\);

-- Location: LCCOMB_X108_Y16_N22
\ULA|Mux31~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux31~17_combout\ = (!\BR|saidaA[31]~30_combout\ & (!\BR|saidaA[1]~31_combout\ & (\ULA|Mux31~16_combout\ & !\BR|saidaA[30]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|saidaA[31]~30_combout\,
	datab => \BR|saidaA[1]~31_combout\,
	datac => \ULA|Mux31~16_combout\,
	datad => \BR|saidaA[30]~29_combout\,
	combout => \ULA|Mux31~17_combout\);

-- Location: LCCOMB_X108_Y17_N10
\BR|saidaB[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[6]~4_combout\ = (\BR|registrador~332_q\ & (!\PC|q\(7) & \MEMORIA_INSTRUCOES|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BR|registrador~332_q\,
	datac => \PC|q\(7),
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaB[6]~4_combout\);

-- Location: LCCOMB_X108_Y17_N20
\MEMORIA_DADOS|ram~72feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~72feeder_combout\ = \BR|saidaB[6]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BR|saidaB[6]~4_combout\,
	combout => \MEMORIA_DADOS|ram~72feeder_combout\);

-- Location: FF_X108_Y17_N21
\MEMORIA_DADOS|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~72feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~72_q\);

-- Location: FF_X108_Y17_N11
\MEMORIA_DADOS|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[6]~4_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~40_q\);

-- Location: LCCOMB_X107_Y17_N8
\MEMORIA_DADOS|ram~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~102_combout\ = (\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~72_q\)) # (!\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~40_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ram~72_q\,
	datac => \MEMORIA_DADOS|ram~40_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~102_combout\);

-- Location: FF_X107_Y17_N25
\BR|registrador~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \MEMORIA_DADOS|ram~102_combout\,
	sload => VCC,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~332_q\);

-- Location: LCCOMB_X108_Y17_N4
\BR|saidaA[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[6]~4_combout\ = (\BR|registrador~332_q\ & (!\PC|q\(2) & \MEMORIA_INSTRUCOES|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BR|registrador~332_q\,
	datac => \PC|q\(2),
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|saidaA[6]~4_combout\);

-- Location: LCCOMB_X108_Y17_N22
\BR|saidaB[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[7]~5_combout\ = (\BR|registrador~333_q\ & (!\PC|q\(7) & \MEMORIA_INSTRUCOES|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~333_q\,
	datac => \PC|q\(7),
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaB[7]~5_combout\);

-- Location: FF_X108_Y17_N23
\MEMORIA_DADOS|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[7]~5_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~41_q\);

-- Location: LCCOMB_X108_Y17_N24
\MEMORIA_DADOS|ram~73feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~73feeder_combout\ = \BR|saidaB[7]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BR|saidaB[7]~5_combout\,
	combout => \MEMORIA_DADOS|ram~73feeder_combout\);

-- Location: FF_X108_Y17_N25
\MEMORIA_DADOS|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~73feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~73_q\);

-- Location: LCCOMB_X109_Y17_N24
\MEMORIA_DADOS|ram~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~103_combout\ = (\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~73_q\))) # (!\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~41_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ram~41_q\,
	datab => \MEMORIA_DADOS|ram~73_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~103_combout\);

-- Location: LCCOMB_X109_Y17_N4
\BR|registrador~333feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~333feeder_combout\ = \MEMORIA_DADOS|ram~103_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_DADOS|ram~103_combout\,
	combout => \BR|registrador~333feeder_combout\);

-- Location: FF_X109_Y17_N5
\BR|registrador~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|registrador~333feeder_combout\,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~333_q\);

-- Location: LCCOMB_X108_Y17_N2
\BR|saidaA[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[7]~5_combout\ = (\BR|registrador~333_q\ & (!\PC|q\(2) & \MEMORIA_INSTRUCOES|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~333_q\,
	datac => \PC|q\(2),
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|saidaA[7]~5_combout\);

-- Location: LCCOMB_X108_Y17_N28
\ULA|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux31~4_combout\ = (\PC|q\(6) & (\BR|saidaA[6]~4_combout\ & (\PC|q\(7) $ (!\BR|saidaA[7]~5_combout\)))) # (!\PC|q\(6) & (!\BR|saidaA[6]~4_combout\ & (\PC|q\(7) $ (!\BR|saidaA[7]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datab => \PC|q\(7),
	datac => \BR|saidaA[6]~4_combout\,
	datad => \BR|saidaA[7]~5_combout\,
	combout => \ULA|Mux31~4_combout\);

-- Location: LCCOMB_X110_Y16_N18
\BR|saidaB[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[5]~2_combout\ = (!\PC|q\(7) & (\BR|registrador~331_q\ & \MEMORIA_INSTRUCOES|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(7),
	datab => \BR|registrador~331_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaB[5]~2_combout\);

-- Location: LCCOMB_X111_Y16_N24
\MEMORIA_DADOS|ram~71feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~71feeder_combout\ = \BR|saidaB[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BR|saidaB[5]~2_combout\,
	combout => \MEMORIA_DADOS|ram~71feeder_combout\);

-- Location: FF_X111_Y16_N25
\MEMORIA_DADOS|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~71feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~71_q\);

-- Location: LCCOMB_X111_Y16_N14
\MEMORIA_DADOS|ram~39feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~39feeder_combout\ = \BR|saidaB[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BR|saidaB[5]~2_combout\,
	combout => \MEMORIA_DADOS|ram~39feeder_combout\);

-- Location: FF_X111_Y16_N15
\MEMORIA_DADOS|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~39feeder_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~39_q\);

-- Location: LCCOMB_X107_Y16_N26
\MEMORIA_DADOS|ram~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~100_combout\ = (\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~71_q\)) # (!\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~39_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ram~71_q\,
	datac => \MEMORIA_DADOS|ram~39_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~100_combout\);

-- Location: FF_X107_Y16_N25
\BR|registrador~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \MEMORIA_DADOS|ram~100_combout\,
	sload => VCC,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~331_q\);

-- Location: LCCOMB_X106_Y16_N8
\BR|saidaA[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[5]~2_combout\ = (!\PC|q\(2) & (\BR|registrador~331_q\ & (!\PC|q\(7) & \MEMORIA_INSTRUCOES|memROM~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \BR|registrador~331_q\,
	datac => \PC|q\(7),
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaA[5]~2_combout\);

-- Location: LCCOMB_X110_Y16_N16
\BR|saidaB[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[4]~3_combout\ = (\MEMORIA_INSTRUCOES|memROM~2_combout\ & (\BR|registrador~330_q\ & !\PC|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	datab => \BR|registrador~330_q\,
	datad => \PC|q\(7),
	combout => \BR|saidaB[4]~3_combout\);

-- Location: LCCOMB_X111_Y16_N10
\MEMORIA_DADOS|ram~38feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~38feeder_combout\ = \BR|saidaB[4]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BR|saidaB[4]~3_combout\,
	combout => \MEMORIA_DADOS|ram~38feeder_combout\);

-- Location: FF_X111_Y16_N11
\MEMORIA_DADOS|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~38feeder_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~38_q\);

-- Location: LCCOMB_X111_Y16_N16
\MEMORIA_DADOS|ram~70feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~70feeder_combout\ = \BR|saidaB[4]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BR|saidaB[4]~3_combout\,
	combout => \MEMORIA_DADOS|ram~70feeder_combout\);

-- Location: FF_X111_Y16_N17
\MEMORIA_DADOS|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~70feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~70_q\);

-- Location: LCCOMB_X107_Y16_N12
\MEMORIA_DADOS|ram~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~101_combout\ = (\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~70_q\))) # (!\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~38_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ram~38_q\,
	datac => \MEMORIA_DADOS|ram~70_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~101_combout\);

-- Location: FF_X107_Y16_N19
\BR|registrador~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \MEMORIA_DADOS|ram~101_combout\,
	sload => VCC,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~330_q\);

-- Location: LCCOMB_X106_Y16_N10
\BR|saidaA[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[4]~3_combout\ = (\BR|registrador~330_q\ & (!\PC|q\(2) & \MEMORIA_INSTRUCOES|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BR|registrador~330_q\,
	datac => \PC|q\(2),
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|saidaA[4]~3_combout\);

-- Location: LCCOMB_X106_Y16_N0
\ULA|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux31~3_combout\ = (\PC|q\(4) & (\BR|saidaA[4]~3_combout\ & (\PC|q\(5) $ (!\BR|saidaA[5]~2_combout\)))) # (!\PC|q\(4) & (!\BR|saidaA[4]~3_combout\ & (\PC|q\(5) $ (!\BR|saidaA[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(4),
	datab => \PC|q\(5),
	datac => \BR|saidaA[5]~2_combout\,
	datad => \BR|saidaA[4]~3_combout\,
	combout => \ULA|Mux31~3_combout\);

-- Location: LCCOMB_X106_Y17_N12
\PC|q[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[8]~23_combout\ = (\PC|q\(8) & (!\PC|q[7]~22\)) # (!\PC|q\(8) & ((\PC|q[7]~22\) # (GND)))
-- \PC|q[8]~24\ = CARRY((!\PC|q[7]~22\) # (!\PC|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(8),
	datad => VCC,
	cin => \PC|q[7]~22\,
	combout => \PC|q[8]~23_combout\,
	cout => \PC|q[8]~24\);

-- Location: FF_X106_Y17_N13
\PC|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \PC|q[8]~23_combout\,
	clrn => \EDpc|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(8));

-- Location: LCCOMB_X106_Y17_N14
\PC|q[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[9]~25_combout\ = (\PC|q\(9) & (\PC|q[8]~24\ $ (GND))) # (!\PC|q\(9) & (!\PC|q[8]~24\ & VCC))
-- \PC|q[9]~26\ = CARRY((\PC|q\(9) & !\PC|q[8]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(9),
	datad => VCC,
	cin => \PC|q[8]~24\,
	combout => \PC|q[9]~25_combout\,
	cout => \PC|q[9]~26\);

-- Location: FF_X106_Y17_N15
\PC|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \PC|q[9]~25_combout\,
	clrn => \EDpc|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(9));

-- Location: LCCOMB_X110_Y16_N22
\BR|saidaB[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[8]~6_combout\ = (!\PC|q\(7) & (\BR|registrador~334_q\ & \MEMORIA_INSTRUCOES|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(7),
	datac => \BR|registrador~334_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaB[8]~6_combout\);

-- Location: FF_X110_Y16_N9
\MEMORIA_DADOS|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \BR|saidaB[8]~6_combout\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~74_q\);

-- Location: FF_X110_Y16_N23
\MEMORIA_DADOS|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[8]~6_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~42_q\);

-- Location: LCCOMB_X107_Y17_N22
\MEMORIA_DADOS|ram~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~104_combout\ = (\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~74_q\)) # (!\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~42_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ram~74_q\,
	datac => \MEMORIA_DADOS|ram~42_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~104_combout\);

-- Location: FF_X107_Y17_N15
\BR|registrador~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \MEMORIA_DADOS|ram~104_combout\,
	sload => VCC,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~334_q\);

-- Location: LCCOMB_X107_Y17_N4
\BR|saidaA[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[8]~6_combout\ = (\BR|registrador~334_q\ & (!\PC|q\(2) & \MEMORIA_INSTRUCOES|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BR|registrador~334_q\,
	datac => \PC|q\(2),
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|saidaA[8]~6_combout\);

-- Location: LCCOMB_X110_Y16_N8
\BR|saidaB[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[9]~7_combout\ = (\BR|registrador~335_q\ & (!\PC|q\(7) & \MEMORIA_INSTRUCOES|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~335_q\,
	datab => \PC|q\(7),
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaB[9]~7_combout\);

-- Location: LCCOMB_X111_Y16_N2
\MEMORIA_DADOS|ram~43feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~43feeder_combout\ = \BR|saidaB[9]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BR|saidaB[9]~7_combout\,
	combout => \MEMORIA_DADOS|ram~43feeder_combout\);

-- Location: FF_X111_Y16_N3
\MEMORIA_DADOS|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~43feeder_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~43_q\);

-- Location: LCCOMB_X111_Y16_N12
\MEMORIA_DADOS|ram~75feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~75feeder_combout\ = \BR|saidaB[9]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BR|saidaB[9]~7_combout\,
	combout => \MEMORIA_DADOS|ram~75feeder_combout\);

-- Location: FF_X111_Y16_N13
\MEMORIA_DADOS|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~75feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~75_q\);

-- Location: LCCOMB_X107_Y17_N26
\MEMORIA_DADOS|ram~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~105_combout\ = (\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~75_q\))) # (!\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~43_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ram~43_q\,
	datac => \MEMORIA_DADOS|ram~75_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~105_combout\);

-- Location: FF_X107_Y17_N3
\BR|registrador~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \MEMORIA_DADOS|ram~105_combout\,
	sload => VCC,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~335_q\);

-- Location: LCCOMB_X107_Y17_N12
\BR|saidaA[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[9]~7_combout\ = (\BR|registrador~335_q\ & (!\PC|q\(2) & \MEMORIA_INSTRUCOES|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BR|registrador~335_q\,
	datac => \PC|q\(2),
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|saidaA[9]~7_combout\);

-- Location: LCCOMB_X107_Y17_N30
\ULA|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux31~5_combout\ = (\PC|q\(9) & (\BR|saidaA[9]~7_combout\ & (\PC|q\(8) $ (!\BR|saidaA[8]~6_combout\)))) # (!\PC|q\(9) & (!\BR|saidaA[9]~7_combout\ & (\PC|q\(8) $ (!\BR|saidaA[8]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(9),
	datab => \PC|q\(8),
	datac => \BR|saidaA[8]~6_combout\,
	datad => \BR|saidaA[9]~7_combout\,
	combout => \ULA|Mux31~5_combout\);

-- Location: LCCOMB_X110_Y16_N6
\BR|saidaB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[3]~0_combout\ = (\BR|registrador~329_q\ & (!\PC|q\(7) & \MEMORIA_INSTRUCOES|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~329_q\,
	datac => \PC|q\(7),
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaB[3]~0_combout\);

-- Location: FF_X110_Y16_N7
\MEMORIA_DADOS|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[3]~0_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~37_q\);

-- Location: LCCOMB_X110_Y16_N24
\MEMORIA_DADOS|ram~69feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~69feeder_combout\ = \BR|saidaB[3]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BR|saidaB[3]~0_combout\,
	combout => \MEMORIA_DADOS|ram~69feeder_combout\);

-- Location: FF_X110_Y16_N25
\MEMORIA_DADOS|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~69feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~69_q\);

-- Location: LCCOMB_X109_Y16_N24
\MEMORIA_DADOS|ram~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~98_combout\ = (\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~69_q\))) # (!\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~37_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ram~37_q\,
	datac => \ULA|Mux31~19_combout\,
	datad => \MEMORIA_DADOS|ram~69_q\,
	combout => \MEMORIA_DADOS|ram~98_combout\);

-- Location: LCCOMB_X109_Y16_N16
\BR|registrador~329feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~329feeder_combout\ = \MEMORIA_DADOS|ram~98_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_DADOS|ram~98_combout\,
	combout => \BR|registrador~329feeder_combout\);

-- Location: FF_X109_Y16_N17
\BR|registrador~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|registrador~329feeder_combout\,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~329_q\);

-- Location: LCCOMB_X106_Y16_N4
\BR|saidaA[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[3]~0_combout\ = (!\PC|q\(2) & (\BR|registrador~329_q\ & \MEMORIA_INSTRUCOES|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(2),
	datac => \BR|registrador~329_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|saidaA[3]~0_combout\);

-- Location: LCCOMB_X106_Y16_N2
\BR|saidaA[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[2]~1_combout\ = (!\PC|q\(2) & (\BR|registrador~328_q\ & \MEMORIA_INSTRUCOES|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(2),
	datac => \BR|registrador~328_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|saidaA[2]~1_combout\);

-- Location: LCCOMB_X106_Y16_N12
\ULA|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux31~2_combout\ = (\PC|q\(2) & (\BR|saidaA[2]~1_combout\ & (\PC|q\(3) $ (!\BR|saidaA[3]~0_combout\)))) # (!\PC|q\(2) & (!\BR|saidaA[2]~1_combout\ & (\PC|q\(3) $ (!\BR|saidaA[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(3),
	datac => \BR|saidaA[3]~0_combout\,
	datad => \BR|saidaA[2]~1_combout\,
	combout => \ULA|Mux31~2_combout\);

-- Location: LCCOMB_X108_Y16_N18
\ULA|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux31~6_combout\ = (\ULA|Mux31~4_combout\ & (\ULA|Mux31~3_combout\ & (\ULA|Mux31~5_combout\ & \ULA|Mux31~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux31~4_combout\,
	datab => \ULA|Mux31~3_combout\,
	datac => \ULA|Mux31~5_combout\,
	datad => \ULA|Mux31~2_combout\,
	combout => \ULA|Mux31~6_combout\);

-- Location: LCCOMB_X106_Y17_N16
\PC|q[10]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[10]~27_combout\ = (\PC|q\(10) & (!\PC|q[9]~26\)) # (!\PC|q\(10) & ((\PC|q[9]~26\) # (GND)))
-- \PC|q[10]~28\ = CARRY((!\PC|q[9]~26\) # (!\PC|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(10),
	datad => VCC,
	cin => \PC|q[9]~26\,
	combout => \PC|q[10]~27_combout\,
	cout => \PC|q[10]~28\);

-- Location: FF_X106_Y17_N17
\PC|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \PC|q[10]~27_combout\,
	clrn => \EDpc|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(10));

-- Location: LCCOMB_X106_Y17_N18
\PC|q[11]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[11]~29_combout\ = (\PC|q\(11) & (\PC|q[10]~28\ $ (GND))) # (!\PC|q\(11) & (!\PC|q[10]~28\ & VCC))
-- \PC|q[11]~30\ = CARRY((\PC|q\(11) & !\PC|q[10]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(11),
	datad => VCC,
	cin => \PC|q[10]~28\,
	combout => \PC|q[11]~29_combout\,
	cout => \PC|q[11]~30\);

-- Location: FF_X106_Y17_N19
\PC|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \PC|q[11]~29_combout\,
	clrn => \EDpc|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(11));

-- Location: LCCOMB_X106_Y17_N20
\PC|q[12]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[12]~31_combout\ = (\PC|q\(12) & (!\PC|q[11]~30\)) # (!\PC|q\(12) & ((\PC|q[11]~30\) # (GND)))
-- \PC|q[12]~32\ = CARRY((!\PC|q[11]~30\) # (!\PC|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(12),
	datad => VCC,
	cin => \PC|q[11]~30\,
	combout => \PC|q[12]~31_combout\,
	cout => \PC|q[12]~32\);

-- Location: FF_X106_Y17_N21
\PC|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \PC|q[12]~31_combout\,
	clrn => \EDpc|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(12));

-- Location: LCCOMB_X106_Y17_N22
\PC|q[13]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[13]~33_combout\ = (\PC|q\(13) & (\PC|q[12]~32\ $ (GND))) # (!\PC|q\(13) & (!\PC|q[12]~32\ & VCC))
-- \PC|q[13]~34\ = CARRY((\PC|q\(13) & !\PC|q[12]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(13),
	datad => VCC,
	cin => \PC|q[12]~32\,
	combout => \PC|q[13]~33_combout\,
	cout => \PC|q[13]~34\);

-- Location: FF_X106_Y17_N23
\PC|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \PC|q[13]~33_combout\,
	clrn => \EDpc|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(13));

-- Location: LCCOMB_X110_Y16_N26
\BR|saidaB[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[13]~11_combout\ = (\MEMORIA_INSTRUCOES|memROM~2_combout\ & (\BR|registrador~339_q\ & !\PC|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	datac => \BR|registrador~339_q\,
	datad => \PC|q\(7),
	combout => \BR|saidaB[13]~11_combout\);

-- Location: FF_X110_Y16_N29
\MEMORIA_DADOS|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \BR|saidaB[13]~11_combout\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~79_q\);

-- Location: FF_X110_Y16_N27
\MEMORIA_DADOS|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[13]~11_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~47_q\);

-- Location: LCCOMB_X105_Y16_N30
\MEMORIA_DADOS|ram~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~109_combout\ = (\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~79_q\)) # (!\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~47_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ram~79_q\,
	datac => \MEMORIA_DADOS|ram~47_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~109_combout\);

-- Location: FF_X105_Y16_N5
\BR|registrador~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \MEMORIA_DADOS|ram~109_combout\,
	sload => VCC,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~339_q\);

-- Location: LCCOMB_X105_Y16_N14
\BR|saidaA[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[13]~11_combout\ = (!\PC|q\(2) & (!\PC|q\(7) & (\BR|registrador~339_q\ & \MEMORIA_INSTRUCOES|memROM~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(7),
	datac => \BR|registrador~339_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaA[13]~11_combout\);

-- Location: LCCOMB_X110_Y16_N12
\BR|saidaB[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[12]~10_combout\ = (!\PC|q\(7) & (\BR|registrador~338_q\ & \MEMORIA_INSTRUCOES|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(7),
	datac => \BR|registrador~338_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaB[12]~10_combout\);

-- Location: FF_X110_Y16_N19
\MEMORIA_DADOS|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \BR|saidaB[12]~10_combout\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~46_q\);

-- Location: FF_X110_Y16_N13
\MEMORIA_DADOS|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[12]~10_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~78_q\);

-- Location: LCCOMB_X105_Y16_N26
\MEMORIA_DADOS|ram~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~108_combout\ = (\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~78_q\))) # (!\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~46_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ram~46_q\,
	datac => \MEMORIA_DADOS|ram~78_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~108_combout\);

-- Location: FF_X105_Y16_N13
\BR|registrador~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \MEMORIA_DADOS|ram~108_combout\,
	sload => VCC,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~338_q\);

-- Location: LCCOMB_X105_Y16_N18
\BR|saidaA[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[12]~10_combout\ = (\BR|registrador~338_q\ & (!\PC|q\(2) & \MEMORIA_INSTRUCOES|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~338_q\,
	datac => \PC|q\(2),
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|saidaA[12]~10_combout\);

-- Location: LCCOMB_X105_Y16_N16
\ULA|Mux31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux31~8_combout\ = (\PC|q\(13) & (\BR|saidaA[13]~11_combout\ & (\PC|q\(12) $ (!\BR|saidaA[12]~10_combout\)))) # (!\PC|q\(13) & (!\BR|saidaA[13]~11_combout\ & (\PC|q\(12) $ (!\BR|saidaA[12]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(13),
	datab => \PC|q\(12),
	datac => \BR|saidaA[13]~11_combout\,
	datad => \BR|saidaA[12]~10_combout\,
	combout => \ULA|Mux31~8_combout\);

-- Location: LCCOMB_X108_Y17_N6
\BR|saidaB[17]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[17]~16_combout\ = (\BR|registrador~343_q\ & (!\PC|q\(7) & \MEMORIA_INSTRUCOES|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~343_q\,
	datac => \PC|q\(7),
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaB[17]~16_combout\);

-- Location: LCCOMB_X108_Y17_N8
\MEMORIA_DADOS|ram~83feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~83feeder_combout\ = \BR|saidaB[17]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BR|saidaB[17]~16_combout\,
	combout => \MEMORIA_DADOS|ram~83feeder_combout\);

-- Location: FF_X108_Y17_N9
\MEMORIA_DADOS|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~83feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~83_q\);

-- Location: FF_X108_Y17_N7
\MEMORIA_DADOS|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[17]~16_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~51_q\);

-- Location: LCCOMB_X109_Y17_N10
\MEMORIA_DADOS|ram~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~114_combout\ = (\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~83_q\)) # (!\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~51_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ram~83_q\,
	datac => \MEMORIA_DADOS|ram~51_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~114_combout\);

-- Location: LCCOMB_X109_Y17_N30
\BR|registrador~343feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~343feeder_combout\ = \MEMORIA_DADOS|ram~114_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_DADOS|ram~114_combout\,
	combout => \BR|registrador~343feeder_combout\);

-- Location: FF_X109_Y17_N31
\BR|registrador~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|registrador~343feeder_combout\,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~343_q\);

-- Location: LCCOMB_X108_Y16_N28
\BR|saidaA[17]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[17]~16_combout\ = (!\PC|q\(7) & (\BR|registrador~343_q\ & (\MEMORIA_INSTRUCOES|memROM~2_combout\ & !\PC|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(7),
	datab => \BR|registrador~343_q\,
	datac => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	datad => \PC|q\(2),
	combout => \BR|saidaA[17]~16_combout\);

-- Location: LCCOMB_X108_Y15_N26
\BR|saidaB[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[16]~15_combout\ = (!\PC|q\(7) & (\BR|registrador~342_q\ & \MEMORIA_INSTRUCOES|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(7),
	datac => \BR|registrador~342_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaB[16]~15_combout\);

-- Location: FF_X108_Y15_N27
\MEMORIA_DADOS|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[16]~15_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~50_q\);

-- Location: LCCOMB_X108_Y15_N24
\MEMORIA_DADOS|ram~82feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~82feeder_combout\ = \BR|saidaB[16]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BR|saidaB[16]~15_combout\,
	combout => \MEMORIA_DADOS|ram~82feeder_combout\);

-- Location: FF_X108_Y15_N25
\MEMORIA_DADOS|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~82feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~82_q\);

-- Location: LCCOMB_X108_Y16_N16
\MEMORIA_DADOS|ram~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~113_combout\ = (\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~82_q\))) # (!\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~50_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ram~50_q\,
	datab => \MEMORIA_DADOS|ram~82_q\,
	datac => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~113_combout\);

-- Location: FF_X108_Y16_N7
\BR|registrador~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \MEMORIA_DADOS|ram~113_combout\,
	sload => VCC,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~342_q\);

-- Location: LCCOMB_X108_Y16_N6
\BR|saidaA[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[16]~15_combout\ = (!\PC|q\(2) & (\BR|registrador~342_q\ & \MEMORIA_INSTRUCOES|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datac => \BR|registrador~342_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|saidaA[16]~15_combout\);

-- Location: LCCOMB_X108_Y16_N2
\ULA|Mux31~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux31~11_combout\ = (\ULA|Mux31~10_combout\ & (!\BR|saidaA[17]~16_combout\ & (!\BR|saidaA[0]~14_combout\ & !\BR|saidaA[16]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux31~10_combout\,
	datab => \BR|saidaA[17]~16_combout\,
	datac => \BR|saidaA[0]~14_combout\,
	datad => \BR|saidaA[16]~15_combout\,
	combout => \ULA|Mux31~11_combout\);

-- Location: LCCOMB_X110_Y16_N28
\BR|saidaB[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[11]~9_combout\ = (!\PC|q\(7) & (\BR|registrador~337_q\ & \MEMORIA_INSTRUCOES|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(7),
	datab => \BR|registrador~337_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaB[11]~9_combout\);

-- Location: LCCOMB_X111_Y16_N4
\MEMORIA_DADOS|ram~77feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~77feeder_combout\ = \BR|saidaB[11]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BR|saidaB[11]~9_combout\,
	combout => \MEMORIA_DADOS|ram~77feeder_combout\);

-- Location: FF_X111_Y16_N5
\MEMORIA_DADOS|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~77feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~77_q\);

-- Location: LCCOMB_X111_Y16_N30
\MEMORIA_DADOS|ram~45feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~45feeder_combout\ = \BR|saidaB[11]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BR|saidaB[11]~9_combout\,
	combout => \MEMORIA_DADOS|ram~45feeder_combout\);

-- Location: FF_X111_Y16_N31
\MEMORIA_DADOS|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~45feeder_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~45_q\);

-- Location: LCCOMB_X107_Y15_N30
\MEMORIA_DADOS|ram~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~107_combout\ = (\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~77_q\)) # (!\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~45_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ram~77_q\,
	datab => \MEMORIA_DADOS|ram~45_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~107_combout\);

-- Location: FF_X107_Y15_N29
\BR|registrador~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \MEMORIA_DADOS|ram~107_combout\,
	sload => VCC,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~337_q\);

-- Location: LCCOMB_X107_Y15_N14
\BR|saidaA[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[11]~9_combout\ = (\BR|registrador~337_q\ & (!\PC|q\(2) & \MEMORIA_INSTRUCOES|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BR|registrador~337_q\,
	datac => \PC|q\(2),
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|saidaA[11]~9_combout\);

-- Location: LCCOMB_X110_Y16_N20
\BR|saidaB[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[10]~8_combout\ = (!\PC|q\(7) & (\BR|registrador~336_q\ & \MEMORIA_INSTRUCOES|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(7),
	datab => \BR|registrador~336_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaB[10]~8_combout\);

-- Location: LCCOMB_X111_Y16_N0
\MEMORIA_DADOS|ram~76feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~76feeder_combout\ = \BR|saidaB[10]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BR|saidaB[10]~8_combout\,
	combout => \MEMORIA_DADOS|ram~76feeder_combout\);

-- Location: FF_X111_Y16_N1
\MEMORIA_DADOS|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~76feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~76_q\);

-- Location: LCCOMB_X111_Y16_N22
\MEMORIA_DADOS|ram~44feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~44feeder_combout\ = \BR|saidaB[10]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BR|saidaB[10]~8_combout\,
	combout => \MEMORIA_DADOS|ram~44feeder_combout\);

-- Location: FF_X111_Y16_N23
\MEMORIA_DADOS|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~44feeder_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~44_q\);

-- Location: LCCOMB_X107_Y15_N22
\MEMORIA_DADOS|ram~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~106_combout\ = (\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~76_q\)) # (!\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~44_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ram~76_q\,
	datac => \MEMORIA_DADOS|ram~44_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~106_combout\);

-- Location: FF_X107_Y15_N21
\BR|registrador~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \MEMORIA_DADOS|ram~106_combout\,
	sload => VCC,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~336_q\);

-- Location: LCCOMB_X107_Y15_N18
\BR|saidaA[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[10]~8_combout\ = (\BR|registrador~336_q\ & (!\PC|q\(2) & \MEMORIA_INSTRUCOES|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BR|registrador~336_q\,
	datac => \PC|q\(2),
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|saidaA[10]~8_combout\);

-- Location: LCCOMB_X107_Y15_N0
\ULA|Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux31~7_combout\ = (\PC|q\(11) & (\BR|saidaA[11]~9_combout\ & (\PC|q\(10) $ (!\BR|saidaA[10]~8_combout\)))) # (!\PC|q\(11) & (!\BR|saidaA[11]~9_combout\ & (\PC|q\(10) $ (!\BR|saidaA[10]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(11),
	datab => \PC|q\(10),
	datac => \BR|saidaA[11]~9_combout\,
	datad => \BR|saidaA[10]~8_combout\,
	combout => \ULA|Mux31~7_combout\);

-- Location: LCCOMB_X106_Y17_N24
\PC|q[14]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[14]~35_combout\ = (\PC|q\(14) & (!\PC|q[13]~34\)) # (!\PC|q\(14) & ((\PC|q[13]~34\) # (GND)))
-- \PC|q[14]~36\ = CARRY((!\PC|q[13]~34\) # (!\PC|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(14),
	datad => VCC,
	cin => \PC|q[13]~34\,
	combout => \PC|q[14]~35_combout\,
	cout => \PC|q[14]~36\);

-- Location: FF_X106_Y17_N25
\PC|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \PC|q[14]~35_combout\,
	clrn => \EDpc|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(14));

-- Location: LCCOMB_X106_Y17_N26
\PC|q[15]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[15]~37_combout\ = \PC|q\(15) $ (!\PC|q[14]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(15),
	cin => \PC|q[14]~36\,
	combout => \PC|q[15]~37_combout\);

-- Location: FF_X106_Y17_N27
\PC|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \PC|q[15]~37_combout\,
	clrn => \EDpc|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(15));

-- Location: LCCOMB_X110_Y16_N14
\BR|saidaB[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[14]~12_combout\ = (\MEMORIA_INSTRUCOES|memROM~2_combout\ & (\BR|registrador~340_q\ & !\PC|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	datac => \BR|registrador~340_q\,
	datad => \PC|q\(7),
	combout => \BR|saidaB[14]~12_combout\);

-- Location: FF_X110_Y16_N15
\MEMORIA_DADOS|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[14]~12_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~48_q\);

-- Location: FF_X110_Y16_N17
\MEMORIA_DADOS|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \BR|saidaB[14]~12_combout\,
	sload => VCC,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~80_q\);

-- Location: LCCOMB_X109_Y16_N4
\MEMORIA_DADOS|ram~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~110_combout\ = (\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~80_q\))) # (!\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~48_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ram~48_q\,
	datac => \ULA|Mux31~19_combout\,
	datad => \MEMORIA_DADOS|ram~80_q\,
	combout => \MEMORIA_DADOS|ram~110_combout\);

-- Location: FF_X109_Y16_N27
\BR|registrador~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \MEMORIA_DADOS|ram~110_combout\,
	sload => VCC,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~340_q\);

-- Location: LCCOMB_X109_Y16_N8
\BR|saidaA[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[14]~12_combout\ = (\BR|registrador~340_q\ & (!\PC|q\(2) & (!\PC|q\(7) & \MEMORIA_INSTRUCOES|memROM~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~340_q\,
	datab => \PC|q\(2),
	datac => \PC|q\(7),
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaA[14]~12_combout\);

-- Location: LCCOMB_X110_Y16_N10
\BR|saidaB[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[15]~13_combout\ = (\BR|registrador~341_q\ & (!\PC|q\(7) & \MEMORIA_INSTRUCOES|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~341_q\,
	datac => \PC|q\(7),
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaB[15]~13_combout\);

-- Location: LCCOMB_X110_Y16_N0
\MEMORIA_DADOS|ram~81feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~81feeder_combout\ = \BR|saidaB[15]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BR|saidaB[15]~13_combout\,
	combout => \MEMORIA_DADOS|ram~81feeder_combout\);

-- Location: FF_X110_Y16_N1
\MEMORIA_DADOS|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~81feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~81_q\);

-- Location: FF_X110_Y16_N11
\MEMORIA_DADOS|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[15]~13_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~49_q\);

-- Location: LCCOMB_X109_Y16_N22
\MEMORIA_DADOS|ram~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~111_combout\ = (\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~81_q\)) # (!\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~49_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ram~81_q\,
	datac => \ULA|Mux31~19_combout\,
	datad => \MEMORIA_DADOS|ram~49_q\,
	combout => \MEMORIA_DADOS|ram~111_combout\);

-- Location: FF_X109_Y16_N7
\BR|registrador~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \MEMORIA_DADOS|ram~111_combout\,
	sload => VCC,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~341_q\);

-- Location: LCCOMB_X109_Y16_N28
\BR|saidaA[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[15]~13_combout\ = (\BR|registrador~341_q\ & (!\PC|q\(2) & \MEMORIA_INSTRUCOES|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~341_q\,
	datac => \PC|q\(2),
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|saidaA[15]~13_combout\);

-- Location: LCCOMB_X109_Y16_N18
\ULA|Mux31~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux31~9_combout\ = (\PC|q\(15) & (\BR|saidaA[15]~13_combout\ & (\PC|q\(14) $ (!\BR|saidaA[14]~12_combout\)))) # (!\PC|q\(15) & (!\BR|saidaA[15]~13_combout\ & (\PC|q\(14) $ (!\BR|saidaA[14]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(15),
	datab => \PC|q\(14),
	datac => \BR|saidaA[14]~12_combout\,
	datad => \BR|saidaA[15]~13_combout\,
	combout => \ULA|Mux31~9_combout\);

-- Location: LCCOMB_X108_Y16_N4
\ULA|Mux31~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux31~12_combout\ = (\ULA|Mux31~8_combout\ & (\ULA|Mux31~11_combout\ & (\ULA|Mux31~7_combout\ & \ULA|Mux31~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux31~8_combout\,
	datab => \ULA|Mux31~11_combout\,
	datac => \ULA|Mux31~7_combout\,
	datad => \ULA|Mux31~9_combout\,
	combout => \ULA|Mux31~12_combout\);

-- Location: LCCOMB_X108_Y15_N10
\BR|saidaB[23]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[23]~22_combout\ = (\BR|registrador~349_q\ & (!\PC|q\(7) & \MEMORIA_INSTRUCOES|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BR|registrador~349_q\,
	datac => \PC|q\(7),
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaB[23]~22_combout\);

-- Location: FF_X108_Y15_N11
\MEMORIA_DADOS|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[23]~22_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~57_q\);

-- Location: LCCOMB_X108_Y15_N28
\MEMORIA_DADOS|ram~89feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~89feeder_combout\ = \BR|saidaB[23]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BR|saidaB[23]~22_combout\,
	combout => \MEMORIA_DADOS|ram~89feeder_combout\);

-- Location: FF_X108_Y15_N29
\MEMORIA_DADOS|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~89feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~89_q\);

-- Location: LCCOMB_X107_Y14_N8
\MEMORIA_DADOS|ram~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~120_combout\ = (\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~89_q\))) # (!\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~57_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ram~57_q\,
	datac => \MEMORIA_DADOS|ram~89_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~120_combout\);

-- Location: FF_X107_Y14_N17
\BR|registrador~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \MEMORIA_DADOS|ram~120_combout\,
	sload => VCC,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~349_q\);

-- Location: LCCOMB_X107_Y14_N6
\BR|saidaA[23]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[23]~22_combout\ = (!\PC|q\(2) & (\BR|registrador~349_q\ & \MEMORIA_INSTRUCOES|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \BR|registrador~349_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|saidaA[23]~22_combout\);

-- Location: LCCOMB_X108_Y18_N10
\BR|saidaB[25]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[25]~24_combout\ = (\BR|registrador~351_q\ & (\MEMORIA_INSTRUCOES|memROM~2_combout\ & !\PC|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~351_q\,
	datac => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	datad => \PC|q\(7),
	combout => \BR|saidaB[25]~24_combout\);

-- Location: LCCOMB_X108_Y18_N16
\MEMORIA_DADOS|ram~91feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~91feeder_combout\ = \BR|saidaB[25]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BR|saidaB[25]~24_combout\,
	combout => \MEMORIA_DADOS|ram~91feeder_combout\);

-- Location: FF_X108_Y18_N17
\MEMORIA_DADOS|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~91feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~91_q\);

-- Location: FF_X108_Y18_N11
\MEMORIA_DADOS|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[25]~24_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~59_q\);

-- Location: LCCOMB_X107_Y14_N30
\MEMORIA_DADOS|ram~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~122_combout\ = (\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~91_q\)) # (!\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~59_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ram~91_q\,
	datac => \MEMORIA_DADOS|ram~59_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~122_combout\);

-- Location: FF_X107_Y14_N1
\BR|registrador~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \MEMORIA_DADOS|ram~122_combout\,
	sload => VCC,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~351_q\);

-- Location: LCCOMB_X107_Y14_N18
\BR|saidaA[25]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[25]~24_combout\ = (!\PC|q\(2) & (\BR|registrador~351_q\ & \MEMORIA_INSTRUCOES|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \BR|registrador~351_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|saidaA[25]~24_combout\);

-- Location: LCCOMB_X108_Y18_N6
\BR|saidaB[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[24]~23_combout\ = (\BR|registrador~350_q\ & (\MEMORIA_INSTRUCOES|memROM~2_combout\ & !\PC|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~350_q\,
	datac => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	datad => \PC|q\(7),
	combout => \BR|saidaB[24]~23_combout\);

-- Location: FF_X108_Y18_N7
\MEMORIA_DADOS|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[24]~23_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~58_q\);

-- Location: LCCOMB_X108_Y18_N8
\MEMORIA_DADOS|ram~90feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~90feeder_combout\ = \BR|saidaB[24]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BR|saidaB[24]~23_combout\,
	combout => \MEMORIA_DADOS|ram~90feeder_combout\);

-- Location: FF_X108_Y18_N9
\MEMORIA_DADOS|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~90feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~90_q\);

-- Location: LCCOMB_X107_Y14_N22
\MEMORIA_DADOS|ram~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~121_combout\ = (\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~90_q\))) # (!\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~58_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ram~58_q\,
	datac => \MEMORIA_DADOS|ram~90_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~121_combout\);

-- Location: FF_X107_Y14_N25
\BR|registrador~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \MEMORIA_DADOS|ram~121_combout\,
	sload => VCC,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~350_q\);

-- Location: LCCOMB_X107_Y14_N26
\BR|saidaA[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[24]~23_combout\ = (!\PC|q\(2) & (\BR|registrador~350_q\ & \MEMORIA_INSTRUCOES|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \BR|registrador~350_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|saidaA[24]~23_combout\);

-- Location: LCCOMB_X108_Y15_N18
\BR|saidaB[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[22]~21_combout\ = (\BR|registrador~348_q\ & (!\PC|q\(7) & \MEMORIA_INSTRUCOES|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BR|registrador~348_q\,
	datac => \PC|q\(7),
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaB[22]~21_combout\);

-- Location: LCCOMB_X108_Y15_N0
\MEMORIA_DADOS|ram~88feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~88feeder_combout\ = \BR|saidaB[22]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BR|saidaB[22]~21_combout\,
	combout => \MEMORIA_DADOS|ram~88feeder_combout\);

-- Location: FF_X108_Y15_N1
\MEMORIA_DADOS|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~88feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~88_q\);

-- Location: FF_X108_Y15_N19
\MEMORIA_DADOS|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[22]~21_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~56_q\);

-- Location: LCCOMB_X107_Y14_N14
\MEMORIA_DADOS|ram~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~119_combout\ = (\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~88_q\)) # (!\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~56_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ram~88_q\,
	datab => \MEMORIA_DADOS|ram~56_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~119_combout\);

-- Location: FF_X107_Y14_N21
\BR|registrador~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \MEMORIA_DADOS|ram~119_combout\,
	sload => VCC,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~348_q\);

-- Location: LCCOMB_X107_Y14_N10
\BR|saidaA[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[22]~21_combout\ = (!\PC|q\(2) & (\BR|registrador~348_q\ & \MEMORIA_INSTRUCOES|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \BR|registrador~348_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|saidaA[22]~21_combout\);

-- Location: LCCOMB_X107_Y14_N4
\ULA|Mux31~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux31~14_combout\ = (!\BR|saidaA[23]~22_combout\ & (!\BR|saidaA[25]~24_combout\ & (!\BR|saidaA[24]~23_combout\ & !\BR|saidaA[22]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|saidaA[23]~22_combout\,
	datab => \BR|saidaA[25]~24_combout\,
	datac => \BR|saidaA[24]~23_combout\,
	datad => \BR|saidaA[22]~21_combout\,
	combout => \ULA|Mux31~14_combout\);

-- Location: LCCOMB_X108_Y15_N30
\BR|saidaB[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[19]~18_combout\ = (\BR|registrador~345_q\ & (!\PC|q\(7) & \MEMORIA_INSTRUCOES|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~345_q\,
	datac => \PC|q\(7),
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaB[19]~18_combout\);

-- Location: FF_X108_Y15_N31
\MEMORIA_DADOS|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[19]~18_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~53_q\);

-- Location: LCCOMB_X108_Y15_N12
\MEMORIA_DADOS|ram~85feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~85feeder_combout\ = \BR|saidaB[19]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BR|saidaB[19]~18_combout\,
	combout => \MEMORIA_DADOS|ram~85feeder_combout\);

-- Location: FF_X108_Y15_N13
\MEMORIA_DADOS|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~85feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~85_q\);

-- Location: LCCOMB_X107_Y13_N8
\MEMORIA_DADOS|ram~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~116_combout\ = (\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~85_q\))) # (!\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~53_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ram~53_q\,
	datac => \MEMORIA_DADOS|ram~85_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~116_combout\);

-- Location: FF_X107_Y13_N29
\BR|registrador~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \MEMORIA_DADOS|ram~116_combout\,
	sload => VCC,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~345_q\);

-- Location: LCCOMB_X107_Y13_N6
\BR|saidaA[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[19]~18_combout\ = (!\PC|q\(2) & (\BR|registrador~345_q\ & \MEMORIA_INSTRUCOES|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \BR|registrador~345_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|saidaA[19]~18_combout\);

-- Location: LCCOMB_X108_Y15_N6
\BR|saidaB[20]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[20]~19_combout\ = (!\PC|q\(7) & (\BR|registrador~346_q\ & \MEMORIA_INSTRUCOES|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(7),
	datab => \BR|registrador~346_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaB[20]~19_combout\);

-- Location: LCCOMB_X108_Y15_N8
\MEMORIA_DADOS|ram~86feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~86feeder_combout\ = \BR|saidaB[20]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BR|saidaB[20]~19_combout\,
	combout => \MEMORIA_DADOS|ram~86feeder_combout\);

-- Location: FF_X108_Y15_N9
\MEMORIA_DADOS|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~86feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~86_q\);

-- Location: FF_X108_Y15_N7
\MEMORIA_DADOS|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[20]~19_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~54_q\);

-- Location: LCCOMB_X107_Y13_N26
\MEMORIA_DADOS|ram~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~117_combout\ = (\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~86_q\)) # (!\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~54_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEMORIA_DADOS|ram~86_q\,
	datac => \MEMORIA_DADOS|ram~54_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~117_combout\);

-- Location: FF_X107_Y13_N25
\BR|registrador~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \MEMORIA_DADOS|ram~117_combout\,
	sload => VCC,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~346_q\);

-- Location: LCCOMB_X107_Y13_N22
\BR|saidaA[20]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[20]~19_combout\ = (!\PC|q\(2) & (\BR|registrador~346_q\ & \MEMORIA_INSTRUCOES|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \BR|registrador~346_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|saidaA[20]~19_combout\);

-- Location: LCCOMB_X108_Y15_N14
\BR|saidaB[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[18]~17_combout\ = (\BR|registrador~344_q\ & (!\PC|q\(7) & \MEMORIA_INSTRUCOES|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~344_q\,
	datac => \PC|q\(7),
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaB[18]~17_combout\);

-- Location: LCCOMB_X108_Y15_N16
\MEMORIA_DADOS|ram~84feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~84feeder_combout\ = \BR|saidaB[18]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BR|saidaB[18]~17_combout\,
	combout => \MEMORIA_DADOS|ram~84feeder_combout\);

-- Location: FF_X108_Y15_N17
\MEMORIA_DADOS|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~84feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~84_q\);

-- Location: FF_X108_Y15_N15
\MEMORIA_DADOS|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[18]~17_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~52_q\);

-- Location: LCCOMB_X107_Y13_N14
\MEMORIA_DADOS|ram~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~115_combout\ = (\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~84_q\)) # (!\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~52_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ram~84_q\,
	datac => \MEMORIA_DADOS|ram~52_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~115_combout\);

-- Location: FF_X107_Y13_N21
\BR|registrador~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \MEMORIA_DADOS|ram~115_combout\,
	sload => VCC,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~344_q\);

-- Location: LCCOMB_X107_Y13_N30
\BR|saidaA[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[18]~17_combout\ = (!\PC|q\(2) & (\BR|registrador~344_q\ & \MEMORIA_INSTRUCOES|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \BR|registrador~344_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|saidaA[18]~17_combout\);

-- Location: LCCOMB_X108_Y15_N2
\BR|saidaB[21]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaB[21]~20_combout\ = (\BR|registrador~347_q\ & (!\PC|q\(7) & \MEMORIA_INSTRUCOES|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~347_q\,
	datac => \PC|q\(7),
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|saidaB[21]~20_combout\);

-- Location: LCCOMB_X108_Y15_N20
\MEMORIA_DADOS|ram~87feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~87feeder_combout\ = \BR|saidaB[21]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BR|saidaB[21]~20_combout\,
	combout => \MEMORIA_DADOS|ram~87feeder_combout\);

-- Location: FF_X108_Y15_N21
\MEMORIA_DADOS|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~87feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~87_q\);

-- Location: FF_X108_Y15_N3
\MEMORIA_DADOS|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[21]~20_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~55_q\);

-- Location: LCCOMB_X107_Y13_N10
\MEMORIA_DADOS|ram~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~118_combout\ = (\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~87_q\)) # (!\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~55_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ram~87_q\,
	datac => \MEMORIA_DADOS|ram~55_q\,
	datad => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~118_combout\);

-- Location: LCCOMB_X107_Y13_N16
\BR|registrador~347feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~347feeder_combout\ = \MEMORIA_DADOS|ram~118_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_DADOS|ram~118_combout\,
	combout => \BR|registrador~347feeder_combout\);

-- Location: FF_X107_Y13_N17
\BR|registrador~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|registrador~347feeder_combout\,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~347_q\);

-- Location: LCCOMB_X107_Y13_N18
\BR|saidaA[21]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[21]~20_combout\ = (!\PC|q\(2) & (\BR|registrador~347_q\ & \MEMORIA_INSTRUCOES|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \BR|registrador~347_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|saidaA[21]~20_combout\);

-- Location: LCCOMB_X107_Y13_N4
\ULA|Mux31~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux31~13_combout\ = (!\BR|saidaA[19]~18_combout\ & (!\BR|saidaA[20]~19_combout\ & (!\BR|saidaA[18]~17_combout\ & !\BR|saidaA[21]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|saidaA[19]~18_combout\,
	datab => \BR|saidaA[20]~19_combout\,
	datac => \BR|saidaA[18]~17_combout\,
	datad => \BR|saidaA[21]~20_combout\,
	combout => \ULA|Mux31~13_combout\);

-- Location: LCCOMB_X108_Y16_N12
\ULA|Mux31~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux31~15_combout\ = (\ULA|Mux31~14_combout\ & \ULA|Mux31~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Mux31~14_combout\,
	datad => \ULA|Mux31~13_combout\,
	combout => \ULA|Mux31~15_combout\);

-- Location: LCCOMB_X108_Y16_N20
\ULA|Mux31~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux31~18_combout\ = (\ULA|Mux31~17_combout\ & (\ULA|Mux31~6_combout\ & (\ULA|Mux31~12_combout\ & \ULA|Mux31~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux31~17_combout\,
	datab => \ULA|Mux31~6_combout\,
	datac => \ULA|Mux31~12_combout\,
	datad => \ULA|Mux31~15_combout\,
	combout => \ULA|Mux31~18_combout\);

-- Location: LCCOMB_X108_Y16_N26
\ULA|Mux31~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux31~19_combout\ = (\ULA|Mux31~18_combout\) # ((\BR|saidaA[0]~14_combout\ & ((!\SW[2]~input_o\) # (!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \BR|saidaA[0]~14_combout\,
	datad => \ULA|Mux31~18_combout\,
	combout => \ULA|Mux31~19_combout\);

-- Location: FF_X110_Y16_N5
\MEMORIA_DADOS|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|saidaB[0]~14_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~66_q\);

-- Location: LCCOMB_X109_Y16_N12
\MEMORIA_DADOS|ram~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~112_combout\ = (\ULA|Mux31~19_combout\ & ((!\MEMORIA_DADOS|ram~66_q\))) # (!\ULA|Mux31~19_combout\ & (!\MEMORIA_DADOS|ram~34_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ram~34_q\,
	datac => \ULA|Mux31~19_combout\,
	datad => \MEMORIA_DADOS|ram~66_q\,
	combout => \MEMORIA_DADOS|ram~112_combout\);

-- Location: FF_X109_Y16_N13
\BR|registrador~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~112_combout\,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~326_q\);

-- Location: LCCOMB_X108_Y16_N8
\BR|saidaA[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|saidaA[0]~14_combout\ = (!\PC|q\(7) & (!\BR|registrador~326_q\ & (\MEMORIA_INSTRUCOES|memROM~2_combout\ & !\PC|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(7),
	datab => \BR|registrador~326_q\,
	datac => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	datad => \PC|q\(2),
	combout => \BR|saidaA[0]~14_combout\);

-- Location: LCCOMB_X108_Y16_N0
\MEMORIA_DADOS|ram~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~131_combout\ = (\SW[4]~input_o\ & (!\ULA|Mux31~18_combout\ & ((\ULA|Mux31~10_combout\) # (!\BR|saidaA[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \ULA|Mux31~10_combout\,
	datac => \BR|saidaA[0]~14_combout\,
	datad => \ULA|Mux31~18_combout\,
	combout => \MEMORIA_DADOS|ram~131_combout\);

-- Location: FF_X111_Y16_N27
\MEMORIA_DADOS|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~36feeder_combout\,
	ena => \MEMORIA_DADOS|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~36_q\);

-- Location: LCCOMB_X111_Y16_N28
\MEMORIA_DADOS|ram~68feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~68feeder_combout\ = \BR|saidaB[2]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BR|saidaB[2]~1_combout\,
	combout => \MEMORIA_DADOS|ram~68feeder_combout\);

-- Location: FF_X111_Y16_N29
\MEMORIA_DADOS|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~68feeder_combout\,
	ena => \MEMORIA_DADOS|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~68_q\);

-- Location: LCCOMB_X108_Y16_N14
\MEMORIA_DADOS|ram~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~99_combout\ = (\ULA|Mux31~19_combout\ & ((\MEMORIA_DADOS|ram~68_q\))) # (!\ULA|Mux31~19_combout\ & (\MEMORIA_DADOS|ram~36_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ram~36_q\,
	datab => \MEMORIA_DADOS|ram~68_q\,
	datac => \ULA|Mux31~19_combout\,
	combout => \MEMORIA_DADOS|ram~99_combout\);

-- Location: FF_X108_Y16_N13
\BR|registrador~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \MEMORIA_DADOS|ram~99_combout\,
	sload => VCC,
	ena => \BR|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~328_q\);

-- Location: LCCOMB_X105_Y16_N2
\BR|registrador~1093\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1093_combout\ = (\SW[1]~input_o\ & ((\PC|q\(7)) # (!\MEMORIA_INSTRUCOES|memROM~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(7),
	datac => \SW[1]~input_o\,
	datad => \MEMORIA_INSTRUCOES|memROM~2_combout\,
	combout => \BR|registrador~1093_combout\);

-- Location: FF_X108_Y16_N15
\BR|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~99_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~40_q\);

-- Location: LCCOMB_X107_Y18_N8
\BR|registrador~1062\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1062_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (\BR|registrador~328_q\ & (!\PC|q\(2)))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((\BR|registrador~40_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~328_q\,
	datab => \PC|q\(2),
	datac => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datad => \BR|registrador~40_q\,
	combout => \BR|registrador~1062_combout\);

-- Location: LCCOMB_X105_Y16_N20
\ULA|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~0_combout\ = \PC|q\(2) $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|q\(2),
	datad => \SW[2]~input_o\,
	combout => \ULA|Add0~0_combout\);

-- Location: LCCOMB_X106_Y16_N16
\ULA|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~2_cout\ = CARRY(!\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datad => VCC,
	cout => \ULA|Add0~2_cout\);

-- Location: LCCOMB_X106_Y16_N18
\ULA|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~4_cout\ = CARRY((\BR|saidaA[0]~14_combout\ & (\SW[3]~input_o\ & !\ULA|Add0~2_cout\)) # (!\BR|saidaA[0]~14_combout\ & ((\SW[3]~input_o\) # (!\ULA|Add0~2_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BR|saidaA[0]~14_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \ULA|Add0~2_cout\,
	cout => \ULA|Add0~4_cout\);

-- Location: LCCOMB_X106_Y16_N20
\ULA|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~6_cout\ = CARRY((\BR|saidaA[1]~31_combout\ & ((!\ULA|Add0~4_cout\) # (!\SW[3]~input_o\))) # (!\BR|saidaA[1]~31_combout\ & (!\SW[3]~input_o\ & !\ULA|Add0~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BR|saidaA[1]~31_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \ULA|Add0~4_cout\,
	cout => \ULA|Add0~6_cout\);

-- Location: LCCOMB_X106_Y16_N22
\ULA|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~7_combout\ = (\BR|saidaA[2]~1_combout\ & ((\ULA|Add0~0_combout\ & (\ULA|Add0~6_cout\ & VCC)) # (!\ULA|Add0~0_combout\ & (!\ULA|Add0~6_cout\)))) # (!\BR|saidaA[2]~1_combout\ & ((\ULA|Add0~0_combout\ & (!\ULA|Add0~6_cout\)) # 
-- (!\ULA|Add0~0_combout\ & ((\ULA|Add0~6_cout\) # (GND)))))
-- \ULA|Add0~8\ = CARRY((\BR|saidaA[2]~1_combout\ & (!\ULA|Add0~0_combout\ & !\ULA|Add0~6_cout\)) # (!\BR|saidaA[2]~1_combout\ & ((!\ULA|Add0~6_cout\) # (!\ULA|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BR|saidaA[2]~1_combout\,
	datab => \ULA|Add0~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~6_cout\,
	combout => \ULA|Add0~7_combout\,
	cout => \ULA|Add0~8\);

-- Location: LCCOMB_X107_Y18_N22
\ULA|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~10_combout\ = (\ULA|Add0~9_combout\ & ((\BR|registrador~1062_combout\) # ((\ULA|Mux8~0_combout\ & \ULA|Add0~7_combout\)))) # (!\ULA|Add0~9_combout\ & (\ULA|Mux8~0_combout\ & ((\ULA|Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~9_combout\,
	datab => \ULA|Mux8~0_combout\,
	datac => \BR|registrador~1062_combout\,
	datad => \ULA|Add0~7_combout\,
	combout => \ULA|Add0~10_combout\);

-- Location: LCCOMB_X105_Y16_N12
\ULA|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~11_combout\ = \PC|q\(3) $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(3),
	datad => \SW[2]~input_o\,
	combout => \ULA|Add0~11_combout\);

-- Location: LCCOMB_X106_Y16_N24
\ULA|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~12_combout\ = ((\ULA|Add0~11_combout\ $ (\BR|saidaA[3]~0_combout\ $ (!\ULA|Add0~8\)))) # (GND)
-- \ULA|Add0~13\ = CARRY((\ULA|Add0~11_combout\ & ((\BR|saidaA[3]~0_combout\) # (!\ULA|Add0~8\))) # (!\ULA|Add0~11_combout\ & (\BR|saidaA[3]~0_combout\ & !\ULA|Add0~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~11_combout\,
	datab => \BR|saidaA[3]~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~8\,
	combout => \ULA|Add0~12_combout\,
	cout => \ULA|Add0~13\);

-- Location: LCCOMB_X109_Y16_N20
\BR|registrador~1095\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1095_combout\ = !\MEMORIA_DADOS|ram~98_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_DADOS|ram~98_combout\,
	combout => \BR|registrador~1095_combout\);

-- Location: FF_X109_Y16_N21
\BR|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|registrador~1095_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~41_q\);

-- Location: LCCOMB_X109_Y16_N2
\BR|registrador~1063\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1063_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (\BR|registrador~329_q\ & (!\PC|q\(2)))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((!\BR|registrador~41_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~329_q\,
	datab => \PC|q\(2),
	datac => \BR|registrador~41_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|registrador~1063_combout\);

-- Location: LCCOMB_X107_Y18_N20
\ULA|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~14_combout\ = (\ULA|Add0~9_combout\ & ((\BR|registrador~1063_combout\) # ((\ULA|Mux8~0_combout\ & \ULA|Add0~12_combout\)))) # (!\ULA|Add0~9_combout\ & (\ULA|Mux8~0_combout\ & (\ULA|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~9_combout\,
	datab => \ULA|Mux8~0_combout\,
	datac => \ULA|Add0~12_combout\,
	datad => \BR|registrador~1063_combout\,
	combout => \ULA|Add0~14_combout\);

-- Location: LCCOMB_X107_Y18_N30
\ULA|Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux30~4_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (!\ULA|Mux31~10_combout\ & ((\PC|q\(2)) # (\BR|registrador~327_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datab => \PC|q\(2),
	datac => \BR|registrador~327_q\,
	datad => \ULA|Mux31~10_combout\,
	combout => \ULA|Mux30~4_combout\);

-- Location: LCCOMB_X107_Y18_N10
\DISPLAY0|saida7seg[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|saida7seg[0]~2_combout\ = (!\ULA|Mux30~4_combout\ & ((\ULA|Add0~10_combout\ & (\ULA|Add0~14_combout\ $ (!\ULA|Mux31~19_combout\))) # (!\ULA|Add0~10_combout\ & (!\ULA|Add0~14_combout\ & \ULA|Mux31~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~10_combout\,
	datab => \ULA|Add0~14_combout\,
	datac => \ULA|Mux30~4_combout\,
	datad => \ULA|Mux31~19_combout\,
	combout => \DISPLAY0|saida7seg[0]~2_combout\);

-- Location: LCCOMB_X107_Y18_N18
\ULA|Add0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~111_combout\ = (\ULA|Mux31~19_combout\ & ((\ULA|Mux30~4_combout\ & ((\ULA|Add0~14_combout\) # (!\BR|saidaA[1]~31_combout\))) # (!\ULA|Mux30~4_combout\ & ((!\ULA|Add0~14_combout\))))) # (!\ULA|Mux31~19_combout\ & ((\BR|saidaA[1]~31_combout\) # 
-- ((\ULA|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux31~19_combout\,
	datab => \BR|saidaA[1]~31_combout\,
	datac => \ULA|Mux30~4_combout\,
	datad => \ULA|Add0~14_combout\,
	combout => \ULA|Add0~111_combout\);

-- Location: LCCOMB_X107_Y18_N16
\ULA|Add0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~112_combout\ = (\ULA|Add0~10_combout\ & \ULA|Add0~111_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ULA|Add0~10_combout\,
	datad => \ULA|Add0~111_combout\,
	combout => \ULA|Add0~112_combout\);

-- Location: LCCOMB_X107_Y18_N12
\DISPLAY0|saida7seg[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|saida7seg[2]~8_combout\ = (\ULA|Add0~10_combout\ & (\ULA|Add0~14_combout\ $ (((\ULA|Mux30~4_combout\) # (!\ULA|Mux31~19_combout\))))) # (!\ULA|Add0~10_combout\ & ((\ULA|Add0~14_combout\) # ((\ULA|Mux31~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~10_combout\,
	datab => \ULA|Add0~14_combout\,
	datac => \ULA|Mux30~4_combout\,
	datad => \ULA|Mux31~19_combout\,
	combout => \DISPLAY0|saida7seg[2]~8_combout\);

-- Location: LCCOMB_X107_Y18_N0
\DISPLAY0|saida7seg[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|saida7seg[2]~3_combout\ = (\ULA|Mux31~10_combout\) # ((\DISPLAY0|saida7seg[2]~8_combout\) # ((!\ULA|Add0~14_combout\ & !\BR|saidaA[1]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux31~10_combout\,
	datab => \ULA|Add0~14_combout\,
	datac => \BR|saidaA[1]~31_combout\,
	datad => \DISPLAY0|saida7seg[2]~8_combout\,
	combout => \DISPLAY0|saida7seg[2]~3_combout\);

-- Location: LCCOMB_X107_Y18_N26
\DISPLAY0|saida7seg[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|saida7seg[3]~4_combout\ = (\ULA|Mux30~4_combout\ & ((\ULA|Add0~10_combout\ & ((\ULA|Mux31~19_combout\))) # (!\ULA|Add0~10_combout\ & (\ULA|Add0~14_combout\ & !\ULA|Mux31~19_combout\)))) # (!\ULA|Mux30~4_combout\ & (!\ULA|Add0~14_combout\ & 
-- (\ULA|Add0~10_combout\ $ (\ULA|Mux31~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~10_combout\,
	datab => \ULA|Add0~14_combout\,
	datac => \ULA|Mux30~4_combout\,
	datad => \ULA|Mux31~19_combout\,
	combout => \DISPLAY0|saida7seg[3]~4_combout\);

-- Location: LCCOMB_X107_Y18_N24
\DISPLAY0|saida7seg[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|saida7seg[4]~5_combout\ = (\ULA|Mux30~4_combout\ & (((!\ULA|Add0~14_combout\ & \ULA|Mux31~19_combout\)))) # (!\ULA|Mux30~4_combout\ & ((\ULA|Add0~10_combout\ & (!\ULA|Add0~14_combout\)) # (!\ULA|Add0~10_combout\ & ((\ULA|Mux31~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~10_combout\,
	datab => \ULA|Add0~14_combout\,
	datac => \ULA|Mux30~4_combout\,
	datad => \ULA|Mux31~19_combout\,
	combout => \DISPLAY0|saida7seg[4]~5_combout\);

-- Location: LCCOMB_X107_Y18_N2
\DISPLAY0|saida7seg[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|saida7seg[5]~6_combout\ = (\ULA|Add0~10_combout\ & (\ULA|Mux31~19_combout\ & (\ULA|Add0~14_combout\ $ (\ULA|Mux30~4_combout\)))) # (!\ULA|Add0~10_combout\ & ((\ULA|Add0~14_combout\ & (\ULA|Mux30~4_combout\ & \ULA|Mux31~19_combout\)) # 
-- (!\ULA|Add0~14_combout\ & ((\ULA|Mux30~4_combout\) # (\ULA|Mux31~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~10_combout\,
	datab => \ULA|Add0~14_combout\,
	datac => \ULA|Mux30~4_combout\,
	datad => \ULA|Mux31~19_combout\,
	combout => \DISPLAY0|saida7seg[5]~6_combout\);

-- Location: LCCOMB_X107_Y18_N28
\DISPLAY0|saida7seg[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|saida7seg[6]~7_combout\ = (\ULA|Mux30~4_combout\ & (\ULA|Mux31~19_combout\ & (\ULA|Add0~10_combout\ $ (\ULA|Add0~14_combout\)))) # (!\ULA|Mux30~4_combout\ & ((\ULA|Add0~10_combout\ & (\ULA|Add0~14_combout\ & !\ULA|Mux31~19_combout\)) # 
-- (!\ULA|Add0~10_combout\ & (!\ULA|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~10_combout\,
	datab => \ULA|Add0~14_combout\,
	datac => \ULA|Mux30~4_combout\,
	datad => \ULA|Mux31~19_combout\,
	combout => \DISPLAY0|saida7seg[6]~7_combout\);

-- Location: LCCOMB_X108_Y17_N30
\ULA|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~19_combout\ = \SW[2]~input_o\ $ (\PC|q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \PC|q\(6),
	combout => \ULA|Add0~19_combout\);

-- Location: LCCOMB_X107_Y17_N24
\ULA|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~20_combout\ = \PC|q\(5) $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(5),
	datad => \SW[2]~input_o\,
	combout => \ULA|Add0~20_combout\);

-- Location: LCCOMB_X106_Y16_N14
\ULA|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~15_combout\ = \PC|q\(4) $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(4),
	datac => \SW[2]~input_o\,
	combout => \ULA|Add0~15_combout\);

-- Location: LCCOMB_X106_Y16_N26
\ULA|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~16_combout\ = (\BR|saidaA[4]~3_combout\ & ((\ULA|Add0~15_combout\ & (\ULA|Add0~13\ & VCC)) # (!\ULA|Add0~15_combout\ & (!\ULA|Add0~13\)))) # (!\BR|saidaA[4]~3_combout\ & ((\ULA|Add0~15_combout\ & (!\ULA|Add0~13\)) # (!\ULA|Add0~15_combout\ & 
-- ((\ULA|Add0~13\) # (GND)))))
-- \ULA|Add0~17\ = CARRY((\BR|saidaA[4]~3_combout\ & (!\ULA|Add0~15_combout\ & !\ULA|Add0~13\)) # (!\BR|saidaA[4]~3_combout\ & ((!\ULA|Add0~13\) # (!\ULA|Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BR|saidaA[4]~3_combout\,
	datab => \ULA|Add0~15_combout\,
	datad => VCC,
	cin => \ULA|Add0~13\,
	combout => \ULA|Add0~16_combout\,
	cout => \ULA|Add0~17\);

-- Location: LCCOMB_X106_Y16_N28
\ULA|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_combout\ = ((\ULA|Add0~20_combout\ $ (\BR|saidaA[5]~2_combout\ $ (!\ULA|Add0~17\)))) # (GND)
-- \ULA|Add0~22\ = CARRY((\ULA|Add0~20_combout\ & ((\BR|saidaA[5]~2_combout\) # (!\ULA|Add0~17\))) # (!\ULA|Add0~20_combout\ & (\BR|saidaA[5]~2_combout\ & !\ULA|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~20_combout\,
	datab => \BR|saidaA[5]~2_combout\,
	datad => VCC,
	cin => \ULA|Add0~17\,
	combout => \ULA|Add0~21_combout\,
	cout => \ULA|Add0~22\);

-- Location: LCCOMB_X106_Y16_N30
\ULA|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~23_combout\ = (\BR|saidaA[6]~4_combout\ & ((\ULA|Add0~19_combout\ & (\ULA|Add0~22\ & VCC)) # (!\ULA|Add0~19_combout\ & (!\ULA|Add0~22\)))) # (!\BR|saidaA[6]~4_combout\ & ((\ULA|Add0~19_combout\ & (!\ULA|Add0~22\)) # (!\ULA|Add0~19_combout\ & 
-- ((\ULA|Add0~22\) # (GND)))))
-- \ULA|Add0~24\ = CARRY((\BR|saidaA[6]~4_combout\ & (!\ULA|Add0~19_combout\ & !\ULA|Add0~22\)) # (!\BR|saidaA[6]~4_combout\ & ((!\ULA|Add0~22\) # (!\ULA|Add0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BR|saidaA[6]~4_combout\,
	datab => \ULA|Add0~19_combout\,
	datad => VCC,
	cin => \ULA|Add0~22\,
	combout => \ULA|Add0~23_combout\,
	cout => \ULA|Add0~24\);

-- Location: FF_X107_Y17_N9
\BR|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~102_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~44_q\);

-- Location: LCCOMB_X107_Y17_N6
\BR|registrador~1065\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1065_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((!\PC|q\(2) & \BR|registrador~332_q\)))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (\BR|registrador~44_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~44_q\,
	datab => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datac => \PC|q\(2),
	datad => \BR|registrador~332_q\,
	combout => \BR|registrador~1065_combout\);

-- Location: LCCOMB_X107_Y20_N22
\ULA|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_combout\ = (\ULA|Mux8~0_combout\ & ((\ULA|Add0~23_combout\) # ((\ULA|Add0~9_combout\ & \BR|registrador~1065_combout\)))) # (!\ULA|Mux8~0_combout\ & (\ULA|Add0~9_combout\ & ((\BR|registrador~1065_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux8~0_combout\,
	datab => \ULA|Add0~9_combout\,
	datac => \ULA|Add0~23_combout\,
	datad => \BR|registrador~1065_combout\,
	combout => \ULA|Add0~25_combout\);

-- Location: LCCOMB_X108_Y15_N22
\ULA|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~26_combout\ = \PC|q\(7) $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|q\(7),
	datad => \SW[2]~input_o\,
	combout => \ULA|Add0~26_combout\);

-- Location: LCCOMB_X106_Y15_N0
\ULA|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~27_combout\ = ((\BR|saidaA[7]~5_combout\ $ (\ULA|Add0~26_combout\ $ (!\ULA|Add0~24\)))) # (GND)
-- \ULA|Add0~28\ = CARRY((\BR|saidaA[7]~5_combout\ & ((\ULA|Add0~26_combout\) # (!\ULA|Add0~24\))) # (!\BR|saidaA[7]~5_combout\ & (\ULA|Add0~26_combout\ & !\ULA|Add0~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BR|saidaA[7]~5_combout\,
	datab => \ULA|Add0~26_combout\,
	datad => VCC,
	cin => \ULA|Add0~24\,
	combout => \ULA|Add0~27_combout\,
	cout => \ULA|Add0~28\);

-- Location: LCCOMB_X109_Y17_N18
\BR|registrador~1096\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1096_combout\ = !\MEMORIA_DADOS|ram~103_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_DADOS|ram~103_combout\,
	combout => \BR|registrador~1096_combout\);

-- Location: FF_X109_Y17_N19
\BR|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|registrador~1096_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~45_q\);

-- Location: LCCOMB_X107_Y17_N0
\BR|registrador~1066\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1066_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((!\PC|q\(2) & \BR|registrador~333_q\)))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (!\BR|registrador~45_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~45_q\,
	datab => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datac => \PC|q\(2),
	datad => \BR|registrador~333_q\,
	combout => \BR|registrador~1066_combout\);

-- Location: LCCOMB_X107_Y20_N28
\ULA|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_combout\ = (\ULA|Mux8~0_combout\ & ((\ULA|Add0~27_combout\) # ((\ULA|Add0~9_combout\ & \BR|registrador~1066_combout\)))) # (!\ULA|Mux8~0_combout\ & (((\ULA|Add0~9_combout\ & \BR|registrador~1066_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux8~0_combout\,
	datab => \ULA|Add0~27_combout\,
	datac => \ULA|Add0~9_combout\,
	datad => \BR|registrador~1066_combout\,
	combout => \ULA|Add0~29_combout\);

-- Location: LCCOMB_X107_Y16_N14
\BR|registrador~1097\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1097_combout\ = !\MEMORIA_DADOS|ram~100_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ram~100_combout\,
	combout => \BR|registrador~1097_combout\);

-- Location: FF_X107_Y16_N15
\BR|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|registrador~1097_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~43_q\);

-- Location: LCCOMB_X107_Y16_N24
\BR|registrador~1067\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1067_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (!\PC|q\(2) & ((\BR|registrador~331_q\)))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((!\BR|registrador~43_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \BR|registrador~43_q\,
	datac => \BR|registrador~331_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|registrador~1067_combout\);

-- Location: LCCOMB_X107_Y20_N26
\ULA|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~30_combout\ = (\ULA|Add0~21_combout\ & ((\ULA|Mux8~0_combout\) # ((\ULA|Add0~9_combout\ & \BR|registrador~1067_combout\)))) # (!\ULA|Add0~21_combout\ & (\ULA|Add0~9_combout\ & (\BR|registrador~1067_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~21_combout\,
	datab => \ULA|Add0~9_combout\,
	datac => \BR|registrador~1067_combout\,
	datad => \ULA|Mux8~0_combout\,
	combout => \ULA|Add0~30_combout\);

-- Location: FF_X107_Y16_N13
\BR|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~101_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~42_q\);

-- Location: LCCOMB_X107_Y16_N18
\BR|registrador~1064\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1064_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (!\PC|q\(2) & (\BR|registrador~330_q\))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((\BR|registrador~42_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datac => \BR|registrador~330_q\,
	datad => \BR|registrador~42_q\,
	combout => \BR|registrador~1064_combout\);

-- Location: LCCOMB_X107_Y20_N20
\ULA|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~18_combout\ = (\ULA|Mux8~0_combout\ & ((\ULA|Add0~16_combout\) # ((\ULA|Add0~9_combout\ & \BR|registrador~1064_combout\)))) # (!\ULA|Mux8~0_combout\ & (((\ULA|Add0~9_combout\ & \BR|registrador~1064_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux8~0_combout\,
	datab => \ULA|Add0~16_combout\,
	datac => \ULA|Add0~9_combout\,
	datad => \BR|registrador~1064_combout\,
	combout => \ULA|Add0~18_combout\);

-- Location: LCCOMB_X107_Y20_N0
\DISPLAY1|saida7seg[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|saida7seg[0]~4_combout\ = (!\ULA|Add0~30_combout\ & ((\ULA|Add0~25_combout\ & (\ULA|Add0~29_combout\ $ (!\ULA|Add0~18_combout\))) # (!\ULA|Add0~25_combout\ & (!\ULA|Add0~29_combout\ & \ULA|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~25_combout\,
	datab => \ULA|Add0~29_combout\,
	datac => \ULA|Add0~30_combout\,
	datad => \ULA|Add0~18_combout\,
	combout => \DISPLAY1|saida7seg[0]~4_combout\);

-- Location: LCCOMB_X107_Y20_N12
\DISPLAY1|saida7seg[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|saida7seg[1]~12_combout\ = (\ULA|Add0~30_combout\ & ((\ULA|Add0~25_combout\ $ (!\ULA|Add0~29_combout\)) # (!\ULA|Add0~18_combout\))) # (!\ULA|Add0~30_combout\ & (((\ULA|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~25_combout\,
	datab => \ULA|Add0~29_combout\,
	datac => \ULA|Add0~30_combout\,
	datad => \ULA|Add0~18_combout\,
	combout => \DISPLAY1|saida7seg[1]~12_combout\);

-- Location: LCCOMB_X107_Y20_N18
\DISPLAY1|saida7seg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|saida7seg~5_combout\ = (\ULA|Add0~25_combout\ & (\ULA|Add0~18_combout\ & (\ULA|Add0~29_combout\ $ (\ULA|Add0~30_combout\)))) # (!\ULA|Add0~25_combout\ & (\ULA|Add0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~25_combout\,
	datab => \ULA|Add0~29_combout\,
	datac => \ULA|Add0~30_combout\,
	datad => \ULA|Add0~18_combout\,
	combout => \DISPLAY1|saida7seg~5_combout\);

-- Location: LCCOMB_X107_Y20_N16
\DISPLAY1|saida7seg[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|saida7seg[1]~6_combout\ = (\ULA|Add0~29_combout\ & (((!\DISPLAY1|saida7seg~5_combout\)))) # (!\ULA|Add0~29_combout\ & (\DISPLAY1|saida7seg[1]~12_combout\ & (\ULA|Add0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY1|saida7seg[1]~12_combout\,
	datab => \ULA|Add0~29_combout\,
	datac => \ULA|Add0~25_combout\,
	datad => \DISPLAY1|saida7seg~5_combout\,
	combout => \DISPLAY1|saida7seg[1]~6_combout\);

-- Location: LCCOMB_X107_Y20_N10
\DISPLAY1|saida7seg[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|saida7seg[2]~13_combout\ = (\ULA|Add0~25_combout\ & (\ULA|Add0~18_combout\ & (\ULA|Add0~29_combout\ $ (!\ULA|Add0~30_combout\)))) # (!\ULA|Add0~25_combout\ & (!\ULA|Add0~29_combout\ & ((!\ULA|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~25_combout\,
	datab => \ULA|Add0~29_combout\,
	datac => \ULA|Add0~30_combout\,
	datad => \ULA|Add0~18_combout\,
	combout => \DISPLAY1|saida7seg[2]~13_combout\);

-- Location: LCCOMB_X107_Y20_N2
\DISPLAY1|saida7seg[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|saida7seg[2]~7_combout\ = (\DISPLAY1|saida7seg[2]~13_combout\ & ((\ULA|Add0~30_combout\) # ((\ULA|Add0~29_combout\ & !\DISPLAY1|saida7seg~5_combout\)))) # (!\DISPLAY1|saida7seg[2]~13_combout\ & (\ULA|Add0~29_combout\ & 
-- ((!\DISPLAY1|saida7seg~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY1|saida7seg[2]~13_combout\,
	datab => \ULA|Add0~29_combout\,
	datac => \ULA|Add0~30_combout\,
	datad => \DISPLAY1|saida7seg~5_combout\,
	combout => \DISPLAY1|saida7seg[2]~7_combout\);

-- Location: LCCOMB_X107_Y20_N4
\DISPLAY1|saida7seg[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|saida7seg[3]~8_combout\ = (\ULA|Add0~30_combout\ & ((\ULA|Add0~25_combout\ & ((\ULA|Add0~18_combout\))) # (!\ULA|Add0~25_combout\ & (\ULA|Add0~29_combout\ & !\ULA|Add0~18_combout\)))) # (!\ULA|Add0~30_combout\ & (!\ULA|Add0~29_combout\ & 
-- (\ULA|Add0~25_combout\ $ (\ULA|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~25_combout\,
	datab => \ULA|Add0~29_combout\,
	datac => \ULA|Add0~30_combout\,
	datad => \ULA|Add0~18_combout\,
	combout => \DISPLAY1|saida7seg[3]~8_combout\);

-- Location: LCCOMB_X107_Y20_N14
\DISPLAY1|saida7seg[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|saida7seg[4]~9_combout\ = (\ULA|Add0~30_combout\ & (((!\ULA|Add0~29_combout\ & \ULA|Add0~18_combout\)))) # (!\ULA|Add0~30_combout\ & ((\ULA|Add0~25_combout\ & (!\ULA|Add0~29_combout\)) # (!\ULA|Add0~25_combout\ & ((\ULA|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~25_combout\,
	datab => \ULA|Add0~29_combout\,
	datac => \ULA|Add0~30_combout\,
	datad => \ULA|Add0~18_combout\,
	combout => \DISPLAY1|saida7seg[4]~9_combout\);

-- Location: LCCOMB_X107_Y20_N24
\DISPLAY1|saida7seg[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|saida7seg[5]~10_combout\ = (\ULA|Add0~25_combout\ & (\ULA|Add0~18_combout\ & (\ULA|Add0~29_combout\ $ (\ULA|Add0~30_combout\)))) # (!\ULA|Add0~25_combout\ & ((\ULA|Add0~29_combout\ & (\ULA|Add0~30_combout\ & \ULA|Add0~18_combout\)) # 
-- (!\ULA|Add0~29_combout\ & ((\ULA|Add0~30_combout\) # (\ULA|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~25_combout\,
	datab => \ULA|Add0~29_combout\,
	datac => \ULA|Add0~30_combout\,
	datad => \ULA|Add0~18_combout\,
	combout => \DISPLAY1|saida7seg[5]~10_combout\);

-- Location: LCCOMB_X107_Y20_N30
\DISPLAY1|saida7seg[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|saida7seg[6]~11_combout\ = (\ULA|Add0~30_combout\ & (\ULA|Add0~18_combout\ & (\ULA|Add0~25_combout\ $ (\ULA|Add0~29_combout\)))) # (!\ULA|Add0~30_combout\ & ((\ULA|Add0~25_combout\ & (\ULA|Add0~29_combout\ & !\ULA|Add0~18_combout\)) # 
-- (!\ULA|Add0~25_combout\ & (!\ULA|Add0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~25_combout\,
	datab => \ULA|Add0~29_combout\,
	datac => \ULA|Add0~30_combout\,
	datad => \ULA|Add0~18_combout\,
	combout => \DISPLAY1|saida7seg[6]~11_combout\);

-- Location: LCCOMB_X107_Y17_N2
\ULA|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~36_combout\ = \SW[2]~input_o\ $ (\PC|q\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datad => \PC|q\(9),
	combout => \ULA|Add0~36_combout\);

-- Location: LCCOMB_X107_Y17_N14
\ULA|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~31_combout\ = \SW[2]~input_o\ $ (\PC|q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \PC|q\(8),
	combout => \ULA|Add0~31_combout\);

-- Location: LCCOMB_X106_Y15_N2
\ULA|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~32_combout\ = (\BR|saidaA[8]~6_combout\ & ((\ULA|Add0~31_combout\ & (\ULA|Add0~28\ & VCC)) # (!\ULA|Add0~31_combout\ & (!\ULA|Add0~28\)))) # (!\BR|saidaA[8]~6_combout\ & ((\ULA|Add0~31_combout\ & (!\ULA|Add0~28\)) # (!\ULA|Add0~31_combout\ & 
-- ((\ULA|Add0~28\) # (GND)))))
-- \ULA|Add0~33\ = CARRY((\BR|saidaA[8]~6_combout\ & (!\ULA|Add0~31_combout\ & !\ULA|Add0~28\)) # (!\BR|saidaA[8]~6_combout\ & ((!\ULA|Add0~28\) # (!\ULA|Add0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BR|saidaA[8]~6_combout\,
	datab => \ULA|Add0~31_combout\,
	datad => VCC,
	cin => \ULA|Add0~28\,
	combout => \ULA|Add0~32_combout\,
	cout => \ULA|Add0~33\);

-- Location: LCCOMB_X106_Y15_N4
\ULA|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~37_combout\ = ((\BR|saidaA[9]~7_combout\ $ (\ULA|Add0~36_combout\ $ (!\ULA|Add0~33\)))) # (GND)
-- \ULA|Add0~38\ = CARRY((\BR|saidaA[9]~7_combout\ & ((\ULA|Add0~36_combout\) # (!\ULA|Add0~33\))) # (!\BR|saidaA[9]~7_combout\ & (\ULA|Add0~36_combout\ & !\ULA|Add0~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BR|saidaA[9]~7_combout\,
	datab => \ULA|Add0~36_combout\,
	datad => VCC,
	cin => \ULA|Add0~33\,
	combout => \ULA|Add0~37_combout\,
	cout => \ULA|Add0~38\);

-- Location: LCCOMB_X107_Y17_N10
\BR|registrador~1099\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1099_combout\ = !\MEMORIA_DADOS|ram~105_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ram~105_combout\,
	combout => \BR|registrador~1099_combout\);

-- Location: FF_X107_Y17_N11
\BR|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|registrador~1099_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~47_q\);

-- Location: LCCOMB_X107_Y17_N20
\BR|registrador~1071\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1071_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (\BR|registrador~335_q\ & ((!\PC|q\(2))))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((!\BR|registrador~47_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~335_q\,
	datab => \BR|registrador~47_q\,
	datac => \PC|q\(2),
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|registrador~1071_combout\);

-- Location: LCCOMB_X105_Y17_N10
\ULA|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~46_combout\ = (\ULA|Mux8~0_combout\ & ((\ULA|Add0~37_combout\) # ((\ULA|Add0~9_combout\ & \BR|registrador~1071_combout\)))) # (!\ULA|Mux8~0_combout\ & (\ULA|Add0~9_combout\ & ((\BR|registrador~1071_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux8~0_combout\,
	datab => \ULA|Add0~9_combout\,
	datac => \ULA|Add0~37_combout\,
	datad => \BR|registrador~1071_combout\,
	combout => \ULA|Add0~46_combout\);

-- Location: LCCOMB_X107_Y15_N2
\ULA|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~35_combout\ = \SW[2]~input_o\ $ (\PC|q\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \PC|q\(10),
	combout => \ULA|Add0~35_combout\);

-- Location: LCCOMB_X106_Y15_N6
\ULA|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~39_combout\ = (\BR|saidaA[10]~8_combout\ & ((\ULA|Add0~35_combout\ & (\ULA|Add0~38\ & VCC)) # (!\ULA|Add0~35_combout\ & (!\ULA|Add0~38\)))) # (!\BR|saidaA[10]~8_combout\ & ((\ULA|Add0~35_combout\ & (!\ULA|Add0~38\)) # (!\ULA|Add0~35_combout\ & 
-- ((\ULA|Add0~38\) # (GND)))))
-- \ULA|Add0~40\ = CARRY((\BR|saidaA[10]~8_combout\ & (!\ULA|Add0~35_combout\ & !\ULA|Add0~38\)) # (!\BR|saidaA[10]~8_combout\ & ((!\ULA|Add0~38\) # (!\ULA|Add0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BR|saidaA[10]~8_combout\,
	datab => \ULA|Add0~35_combout\,
	datad => VCC,
	cin => \ULA|Add0~38\,
	combout => \ULA|Add0~39_combout\,
	cout => \ULA|Add0~40\);

-- Location: FF_X107_Y15_N23
\BR|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~106_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~48_q\);

-- Location: LCCOMB_X107_Y15_N24
\BR|registrador~1069\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1069_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((!\PC|q\(2) & \BR|registrador~336_q\)))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (\BR|registrador~48_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datab => \BR|registrador~48_q\,
	datac => \PC|q\(2),
	datad => \BR|registrador~336_q\,
	combout => \BR|registrador~1069_combout\);

-- Location: LCCOMB_X107_Y15_N16
\ULA|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~41_combout\ = (\ULA|Mux8~0_combout\ & ((\ULA|Add0~39_combout\) # ((\ULA|Add0~9_combout\ & \BR|registrador~1069_combout\)))) # (!\ULA|Mux8~0_combout\ & (((\ULA|Add0~9_combout\ & \BR|registrador~1069_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux8~0_combout\,
	datab => \ULA|Add0~39_combout\,
	datac => \ULA|Add0~9_combout\,
	datad => \BR|registrador~1069_combout\,
	combout => \ULA|Add0~41_combout\);

-- Location: LCCOMB_X107_Y15_N6
\BR|registrador~1098\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1098_combout\ = !\MEMORIA_DADOS|ram~107_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ram~107_combout\,
	combout => \BR|registrador~1098_combout\);

-- Location: FF_X107_Y15_N7
\BR|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|registrador~1098_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~49_q\);

-- Location: LCCOMB_X107_Y15_N4
\BR|registrador~1070\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1070_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((!\PC|q\(2) & \BR|registrador~337_q\)))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (!\BR|registrador~49_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~49_q\,
	datab => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datac => \PC|q\(2),
	datad => \BR|registrador~337_q\,
	combout => \BR|registrador~1070_combout\);

-- Location: LCCOMB_X107_Y15_N26
\ULA|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~42_combout\ = \SW[2]~input_o\ $ (\PC|q\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datad => \PC|q\(11),
	combout => \ULA|Add0~42_combout\);

-- Location: LCCOMB_X106_Y15_N8
\ULA|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~43_combout\ = ((\BR|saidaA[11]~9_combout\ $ (\ULA|Add0~42_combout\ $ (!\ULA|Add0~40\)))) # (GND)
-- \ULA|Add0~44\ = CARRY((\BR|saidaA[11]~9_combout\ & ((\ULA|Add0~42_combout\) # (!\ULA|Add0~40\))) # (!\BR|saidaA[11]~9_combout\ & (\ULA|Add0~42_combout\ & !\ULA|Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BR|saidaA[11]~9_combout\,
	datab => \ULA|Add0~42_combout\,
	datad => VCC,
	cin => \ULA|Add0~40\,
	combout => \ULA|Add0~43_combout\,
	cout => \ULA|Add0~44\);

-- Location: LCCOMB_X107_Y15_N12
\ULA|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~45_combout\ = (\ULA|Add0~9_combout\ & ((\BR|registrador~1070_combout\) # ((\ULA|Mux8~0_combout\ & \ULA|Add0~43_combout\)))) # (!\ULA|Add0~9_combout\ & (((\ULA|Mux8~0_combout\ & \ULA|Add0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~9_combout\,
	datab => \BR|registrador~1070_combout\,
	datac => \ULA|Mux8~0_combout\,
	datad => \ULA|Add0~43_combout\,
	combout => \ULA|Add0~45_combout\);

-- Location: FF_X107_Y17_N23
\BR|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~104_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~46_q\);

-- Location: LCCOMB_X107_Y17_N28
\BR|registrador~1068\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1068_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((\BR|registrador~334_q\ & !\PC|q\(2))))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (\BR|registrador~46_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~46_q\,
	datab => \BR|registrador~334_q\,
	datac => \PC|q\(2),
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|registrador~1068_combout\);

-- Location: LCCOMB_X105_Y17_N28
\ULA|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~34_combout\ = (\ULA|Mux8~0_combout\ & ((\ULA|Add0~32_combout\) # ((\ULA|Add0~9_combout\ & \BR|registrador~1068_combout\)))) # (!\ULA|Mux8~0_combout\ & (((\ULA|Add0~9_combout\ & \BR|registrador~1068_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux8~0_combout\,
	datab => \ULA|Add0~32_combout\,
	datac => \ULA|Add0~9_combout\,
	datad => \BR|registrador~1068_combout\,
	combout => \ULA|Add0~34_combout\);

-- Location: LCCOMB_X105_Y17_N12
\DISPLAY2|saida7seg[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY2|saida7seg[0]~4_combout\ = (!\ULA|Add0~46_combout\ & ((\ULA|Add0~41_combout\ & (\ULA|Add0~45_combout\ $ (!\ULA|Add0~34_combout\))) # (!\ULA|Add0~41_combout\ & (!\ULA|Add0~45_combout\ & \ULA|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~46_combout\,
	datab => \ULA|Add0~41_combout\,
	datac => \ULA|Add0~45_combout\,
	datad => \ULA|Add0~34_combout\,
	combout => \DISPLAY2|saida7seg[0]~4_combout\);

-- Location: LCCOMB_X105_Y17_N30
\DISPLAY2|saida7seg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY2|saida7seg~5_combout\ = (\ULA|Add0~41_combout\ & (\ULA|Add0~34_combout\ & (\ULA|Add0~46_combout\ $ (\ULA|Add0~45_combout\)))) # (!\ULA|Add0~41_combout\ & (((\ULA|Add0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~46_combout\,
	datab => \ULA|Add0~41_combout\,
	datac => \ULA|Add0~45_combout\,
	datad => \ULA|Add0~34_combout\,
	combout => \DISPLAY2|saida7seg~5_combout\);

-- Location: LCCOMB_X105_Y17_N20
\DISPLAY2|saida7seg[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY2|saida7seg[1]~12_combout\ = (\ULA|Add0~46_combout\ & ((\ULA|Add0~41_combout\ $ (!\ULA|Add0~45_combout\)) # (!\ULA|Add0~34_combout\))) # (!\ULA|Add0~46_combout\ & (((\ULA|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~46_combout\,
	datab => \ULA|Add0~41_combout\,
	datac => \ULA|Add0~45_combout\,
	datad => \ULA|Add0~34_combout\,
	combout => \DISPLAY2|saida7seg[1]~12_combout\);

-- Location: LCCOMB_X105_Y17_N8
\DISPLAY2|saida7seg[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY2|saida7seg[1]~6_combout\ = (\ULA|Add0~45_combout\ & (!\DISPLAY2|saida7seg~5_combout\)) # (!\ULA|Add0~45_combout\ & (((\ULA|Add0~41_combout\ & \DISPLAY2|saida7seg[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY2|saida7seg~5_combout\,
	datab => \ULA|Add0~41_combout\,
	datac => \ULA|Add0~45_combout\,
	datad => \DISPLAY2|saida7seg[1]~12_combout\,
	combout => \DISPLAY2|saida7seg[1]~6_combout\);

-- Location: LCCOMB_X105_Y17_N18
\DISPLAY2|saida7seg[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY2|saida7seg[2]~13_combout\ = (\ULA|Add0~41_combout\ & (\ULA|Add0~34_combout\ & (\ULA|Add0~46_combout\ $ (!\ULA|Add0~45_combout\)))) # (!\ULA|Add0~41_combout\ & (((!\ULA|Add0~45_combout\ & !\ULA|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~46_combout\,
	datab => \ULA|Add0~41_combout\,
	datac => \ULA|Add0~45_combout\,
	datad => \ULA|Add0~34_combout\,
	combout => \DISPLAY2|saida7seg[2]~13_combout\);

-- Location: LCCOMB_X105_Y17_N22
\DISPLAY2|saida7seg[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY2|saida7seg[2]~7_combout\ = (\DISPLAY2|saida7seg~5_combout\ & (\DISPLAY2|saida7seg[2]~13_combout\ & ((\ULA|Add0~46_combout\)))) # (!\DISPLAY2|saida7seg~5_combout\ & ((\ULA|Add0~45_combout\) # ((\DISPLAY2|saida7seg[2]~13_combout\ & 
-- \ULA|Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY2|saida7seg~5_combout\,
	datab => \DISPLAY2|saida7seg[2]~13_combout\,
	datac => \ULA|Add0~45_combout\,
	datad => \ULA|Add0~46_combout\,
	combout => \DISPLAY2|saida7seg[2]~7_combout\);

-- Location: LCCOMB_X105_Y17_N24
\DISPLAY2|saida7seg[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY2|saida7seg[3]~8_combout\ = (\ULA|Add0~46_combout\ & ((\ULA|Add0~41_combout\ & ((\ULA|Add0~34_combout\))) # (!\ULA|Add0~41_combout\ & (\ULA|Add0~45_combout\ & !\ULA|Add0~34_combout\)))) # (!\ULA|Add0~46_combout\ & (!\ULA|Add0~45_combout\ & 
-- (\ULA|Add0~41_combout\ $ (\ULA|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~46_combout\,
	datab => \ULA|Add0~41_combout\,
	datac => \ULA|Add0~45_combout\,
	datad => \ULA|Add0~34_combout\,
	combout => \DISPLAY2|saida7seg[3]~8_combout\);

-- Location: LCCOMB_X105_Y17_N2
\DISPLAY2|saida7seg[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY2|saida7seg[4]~9_combout\ = (\ULA|Add0~46_combout\ & (((!\ULA|Add0~45_combout\ & \ULA|Add0~34_combout\)))) # (!\ULA|Add0~46_combout\ & ((\ULA|Add0~41_combout\ & (!\ULA|Add0~45_combout\)) # (!\ULA|Add0~41_combout\ & ((\ULA|Add0~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~46_combout\,
	datab => \ULA|Add0~41_combout\,
	datac => \ULA|Add0~45_combout\,
	datad => \ULA|Add0~34_combout\,
	combout => \DISPLAY2|saida7seg[4]~9_combout\);

-- Location: LCCOMB_X105_Y17_N0
\DISPLAY2|saida7seg[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY2|saida7seg[5]~10_combout\ = (\ULA|Add0~46_combout\ & ((\ULA|Add0~41_combout\ & (!\ULA|Add0~45_combout\ & \ULA|Add0~34_combout\)) # (!\ULA|Add0~41_combout\ & ((\ULA|Add0~34_combout\) # (!\ULA|Add0~45_combout\))))) # (!\ULA|Add0~46_combout\ & 
-- (\ULA|Add0~34_combout\ & (\ULA|Add0~41_combout\ $ (!\ULA|Add0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~46_combout\,
	datab => \ULA|Add0~41_combout\,
	datac => \ULA|Add0~45_combout\,
	datad => \ULA|Add0~34_combout\,
	combout => \DISPLAY2|saida7seg[5]~10_combout\);

-- Location: LCCOMB_X105_Y17_N14
\DISPLAY2|saida7seg[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY2|saida7seg[6]~11_combout\ = (\ULA|Add0~46_combout\ & (\ULA|Add0~34_combout\ & (\ULA|Add0~41_combout\ $ (\ULA|Add0~45_combout\)))) # (!\ULA|Add0~46_combout\ & ((\ULA|Add0~41_combout\ & (\ULA|Add0~45_combout\ & !\ULA|Add0~34_combout\)) # 
-- (!\ULA|Add0~41_combout\ & (!\ULA|Add0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~46_combout\,
	datab => \ULA|Add0~41_combout\,
	datac => \ULA|Add0~45_combout\,
	datad => \ULA|Add0~34_combout\,
	combout => \DISPLAY2|saida7seg[6]~11_combout\);

-- Location: LCCOMB_X107_Y15_N10
\ULA|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~51_combout\ = \SW[2]~input_o\ $ (\PC|q\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \PC|q\(14),
	combout => \ULA|Add0~51_combout\);

-- Location: LCCOMB_X105_Y15_N14
\ULA|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~52_combout\ = \PC|q\(13) $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(13),
	datad => \SW[2]~input_o\,
	combout => \ULA|Add0~52_combout\);

-- Location: LCCOMB_X105_Y15_N16
\ULA|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~47_combout\ = \PC|q\(12) $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|q\(12),
	datad => \SW[2]~input_o\,
	combout => \ULA|Add0~47_combout\);

-- Location: LCCOMB_X106_Y15_N10
\ULA|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~48_combout\ = (\ULA|Add0~47_combout\ & ((\BR|saidaA[12]~10_combout\ & (\ULA|Add0~44\ & VCC)) # (!\BR|saidaA[12]~10_combout\ & (!\ULA|Add0~44\)))) # (!\ULA|Add0~47_combout\ & ((\BR|saidaA[12]~10_combout\ & (!\ULA|Add0~44\)) # 
-- (!\BR|saidaA[12]~10_combout\ & ((\ULA|Add0~44\) # (GND)))))
-- \ULA|Add0~49\ = CARRY((\ULA|Add0~47_combout\ & (!\BR|saidaA[12]~10_combout\ & !\ULA|Add0~44\)) # (!\ULA|Add0~47_combout\ & ((!\ULA|Add0~44\) # (!\BR|saidaA[12]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~47_combout\,
	datab => \BR|saidaA[12]~10_combout\,
	datad => VCC,
	cin => \ULA|Add0~44\,
	combout => \ULA|Add0~48_combout\,
	cout => \ULA|Add0~49\);

-- Location: LCCOMB_X106_Y15_N12
\ULA|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~53_combout\ = ((\ULA|Add0~52_combout\ $ (\BR|saidaA[13]~11_combout\ $ (!\ULA|Add0~49\)))) # (GND)
-- \ULA|Add0~54\ = CARRY((\ULA|Add0~52_combout\ & ((\BR|saidaA[13]~11_combout\) # (!\ULA|Add0~49\))) # (!\ULA|Add0~52_combout\ & (\BR|saidaA[13]~11_combout\ & !\ULA|Add0~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~52_combout\,
	datab => \BR|saidaA[13]~11_combout\,
	datad => VCC,
	cin => \ULA|Add0~49\,
	combout => \ULA|Add0~53_combout\,
	cout => \ULA|Add0~54\);

-- Location: LCCOMB_X106_Y15_N14
\ULA|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~55_combout\ = (\BR|saidaA[14]~12_combout\ & ((\ULA|Add0~51_combout\ & (\ULA|Add0~54\ & VCC)) # (!\ULA|Add0~51_combout\ & (!\ULA|Add0~54\)))) # (!\BR|saidaA[14]~12_combout\ & ((\ULA|Add0~51_combout\ & (!\ULA|Add0~54\)) # (!\ULA|Add0~51_combout\ & 
-- ((\ULA|Add0~54\) # (GND)))))
-- \ULA|Add0~56\ = CARRY((\BR|saidaA[14]~12_combout\ & (!\ULA|Add0~51_combout\ & !\ULA|Add0~54\)) # (!\BR|saidaA[14]~12_combout\ & ((!\ULA|Add0~54\) # (!\ULA|Add0~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BR|saidaA[14]~12_combout\,
	datab => \ULA|Add0~51_combout\,
	datad => VCC,
	cin => \ULA|Add0~54\,
	combout => \ULA|Add0~55_combout\,
	cout => \ULA|Add0~56\);

-- Location: FF_X109_Y16_N5
\BR|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~110_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~52_q\);

-- Location: LCCOMB_X109_Y16_N26
\BR|registrador~1073\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1073_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((\BR|registrador~340_q\ & !\PC|q\(2))))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (\BR|registrador~52_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datab => \BR|registrador~52_q\,
	datac => \BR|registrador~340_q\,
	datad => \PC|q\(2),
	combout => \BR|registrador~1073_combout\);

-- Location: LCCOMB_X106_Y12_N30
\ULA|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~57_combout\ = (\ULA|Mux8~0_combout\ & ((\ULA|Add0~55_combout\) # ((\ULA|Add0~9_combout\ & \BR|registrador~1073_combout\)))) # (!\ULA|Mux8~0_combout\ & (\ULA|Add0~9_combout\ & ((\BR|registrador~1073_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux8~0_combout\,
	datab => \ULA|Add0~9_combout\,
	datac => \ULA|Add0~55_combout\,
	datad => \BR|registrador~1073_combout\,
	combout => \ULA|Add0~57_combout\);

-- Location: LCCOMB_X109_Y16_N14
\BR|registrador~1100\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1100_combout\ = !\MEMORIA_DADOS|ram~111_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ram~111_combout\,
	combout => \BR|registrador~1100_combout\);

-- Location: FF_X109_Y16_N15
\BR|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|registrador~1100_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~53_q\);

-- Location: LCCOMB_X109_Y16_N6
\BR|registrador~1074\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1074_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (!\PC|q\(2) & ((\BR|registrador~341_q\)))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((!\BR|registrador~53_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \BR|registrador~53_q\,
	datac => \BR|registrador~341_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|registrador~1074_combout\);

-- Location: LCCOMB_X105_Y15_N8
\ULA|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~58_combout\ = \PC|q\(15) $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|q\(15),
	datad => \SW[2]~input_o\,
	combout => \ULA|Add0~58_combout\);

-- Location: LCCOMB_X106_Y15_N16
\ULA|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~59_combout\ = ((\ULA|Add0~58_combout\ $ (\BR|saidaA[15]~13_combout\ $ (!\ULA|Add0~56\)))) # (GND)
-- \ULA|Add0~60\ = CARRY((\ULA|Add0~58_combout\ & ((\BR|saidaA[15]~13_combout\) # (!\ULA|Add0~56\))) # (!\ULA|Add0~58_combout\ & (\BR|saidaA[15]~13_combout\ & !\ULA|Add0~56\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~58_combout\,
	datab => \BR|saidaA[15]~13_combout\,
	datad => VCC,
	cin => \ULA|Add0~56\,
	combout => \ULA|Add0~59_combout\,
	cout => \ULA|Add0~60\);

-- Location: LCCOMB_X106_Y12_N16
\ULA|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~61_combout\ = (\BR|registrador~1074_combout\ & ((\ULA|Add0~9_combout\) # ((\ULA|Mux8~0_combout\ & \ULA|Add0~59_combout\)))) # (!\BR|registrador~1074_combout\ & (\ULA|Mux8~0_combout\ & (\ULA|Add0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~1074_combout\,
	datab => \ULA|Mux8~0_combout\,
	datac => \ULA|Add0~59_combout\,
	datad => \ULA|Add0~9_combout\,
	combout => \ULA|Add0~61_combout\);

-- Location: FF_X105_Y16_N27
\BR|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~108_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~50_q\);

-- Location: LCCOMB_X105_Y16_N0
\BR|registrador~1072\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1072_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((!\PC|q\(2) & \BR|registrador~338_q\)))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (\BR|registrador~50_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datab => \BR|registrador~50_q\,
	datac => \PC|q\(2),
	datad => \BR|registrador~338_q\,
	combout => \BR|registrador~1072_combout\);

-- Location: LCCOMB_X106_Y12_N8
\ULA|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~50_combout\ = (\ULA|Mux8~0_combout\ & ((\ULA|Add0~48_combout\) # ((\BR|registrador~1072_combout\ & \ULA|Add0~9_combout\)))) # (!\ULA|Mux8~0_combout\ & (\BR|registrador~1072_combout\ & ((\ULA|Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux8~0_combout\,
	datab => \BR|registrador~1072_combout\,
	datac => \ULA|Add0~48_combout\,
	datad => \ULA|Add0~9_combout\,
	combout => \ULA|Add0~50_combout\);

-- Location: LCCOMB_X105_Y16_N6
\BR|registrador~1101\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1101_combout\ = !\MEMORIA_DADOS|ram~109_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ram~109_combout\,
	combout => \BR|registrador~1101_combout\);

-- Location: FF_X105_Y16_N7
\BR|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|registrador~1101_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~51_q\);

-- Location: LCCOMB_X105_Y16_N28
\BR|registrador~1075\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1075_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (!\PC|q\(2) & (\BR|registrador~339_q\))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((!\BR|registrador~51_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datac => \BR|registrador~339_q\,
	datad => \BR|registrador~51_q\,
	combout => \BR|registrador~1075_combout\);

-- Location: LCCOMB_X106_Y12_N10
\ULA|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~62_combout\ = (\BR|registrador~1075_combout\ & ((\ULA|Add0~9_combout\) # ((\ULA|Mux8~0_combout\ & \ULA|Add0~53_combout\)))) # (!\BR|registrador~1075_combout\ & (\ULA|Mux8~0_combout\ & (\ULA|Add0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~1075_combout\,
	datab => \ULA|Mux8~0_combout\,
	datac => \ULA|Add0~53_combout\,
	datad => \ULA|Add0~9_combout\,
	combout => \ULA|Add0~62_combout\);

-- Location: LCCOMB_X106_Y12_N24
\DISPLAY3|saida7seg[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY3|saida7seg[0]~2_combout\ = (!\ULA|Add0~62_combout\ & ((\ULA|Add0~57_combout\ & (\ULA|Add0~61_combout\ $ (!\ULA|Add0~50_combout\))) # (!\ULA|Add0~57_combout\ & (!\ULA|Add0~61_combout\ & \ULA|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~57_combout\,
	datab => \ULA|Add0~61_combout\,
	datac => \ULA|Add0~50_combout\,
	datad => \ULA|Add0~62_combout\,
	combout => \DISPLAY3|saida7seg[0]~2_combout\);

-- Location: LCCOMB_X106_Y12_N6
\DISPLAY3|saida7seg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY3|saida7seg~3_combout\ = (\ULA|Add0~57_combout\ & (\ULA|Add0~50_combout\ & (\ULA|Add0~61_combout\ $ (\ULA|Add0~62_combout\)))) # (!\ULA|Add0~57_combout\ & (\ULA|Add0~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~57_combout\,
	datab => \ULA|Add0~61_combout\,
	datac => \ULA|Add0~50_combout\,
	datad => \ULA|Add0~62_combout\,
	combout => \DISPLAY3|saida7seg~3_combout\);

-- Location: LCCOMB_X106_Y12_N28
\DISPLAY3|saida7seg[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY3|saida7seg[1]~11_combout\ = (\ULA|Add0~50_combout\ & ((\ULA|Add0~57_combout\ $ (!\ULA|Add0~61_combout\)) # (!\ULA|Add0~62_combout\))) # (!\ULA|Add0~50_combout\ & (((\ULA|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~57_combout\,
	datab => \ULA|Add0~61_combout\,
	datac => \ULA|Add0~50_combout\,
	datad => \ULA|Add0~62_combout\,
	combout => \DISPLAY3|saida7seg[1]~11_combout\);

-- Location: LCCOMB_X106_Y12_N4
\DISPLAY3|saida7seg[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY3|saida7seg[1]~4_combout\ = (\ULA|Add0~61_combout\ & (!\DISPLAY3|saida7seg~3_combout\)) # (!\ULA|Add0~61_combout\ & (((\ULA|Add0~57_combout\ & \DISPLAY3|saida7seg[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY3|saida7seg~3_combout\,
	datab => \ULA|Add0~61_combout\,
	datac => \ULA|Add0~57_combout\,
	datad => \DISPLAY3|saida7seg[1]~11_combout\,
	combout => \DISPLAY3|saida7seg[1]~4_combout\);

-- Location: LCCOMB_X106_Y12_N18
\DISPLAY3|saida7seg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY3|saida7seg[2]~5_combout\ = (\ULA|Add0~62_combout\ & (\ULA|Add0~50_combout\ $ (!\ULA|Add0~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~62_combout\,
	datab => \ULA|Add0~50_combout\,
	datac => \ULA|Add0~57_combout\,
	combout => \DISPLAY3|saida7seg[2]~5_combout\);

-- Location: LCCOMB_X106_Y12_N20
\DISPLAY3|saida7seg[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY3|saida7seg[2]~6_combout\ = (\ULA|Add0~61_combout\ & (!\DISPLAY3|saida7seg~3_combout\)) # (!\ULA|Add0~61_combout\ & (\DISPLAY3|saida7seg[2]~5_combout\ & ((!\ULA|Add0~57_combout\) # (!\DISPLAY3|saida7seg~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY3|saida7seg~3_combout\,
	datab => \ULA|Add0~61_combout\,
	datac => \ULA|Add0~57_combout\,
	datad => \DISPLAY3|saida7seg[2]~5_combout\,
	combout => \DISPLAY3|saida7seg[2]~6_combout\);

-- Location: LCCOMB_X106_Y12_N26
\DISPLAY3|saida7seg[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY3|saida7seg[3]~7_combout\ = (\ULA|Add0~62_combout\ & ((\ULA|Add0~57_combout\ & ((\ULA|Add0~50_combout\))) # (!\ULA|Add0~57_combout\ & (\ULA|Add0~61_combout\ & !\ULA|Add0~50_combout\)))) # (!\ULA|Add0~62_combout\ & (!\ULA|Add0~61_combout\ & 
-- (\ULA|Add0~57_combout\ $ (\ULA|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~57_combout\,
	datab => \ULA|Add0~61_combout\,
	datac => \ULA|Add0~50_combout\,
	datad => \ULA|Add0~62_combout\,
	combout => \DISPLAY3|saida7seg[3]~7_combout\);

-- Location: LCCOMB_X106_Y12_N12
\DISPLAY3|saida7seg[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY3|saida7seg[4]~8_combout\ = (\ULA|Add0~62_combout\ & (((!\ULA|Add0~61_combout\ & \ULA|Add0~50_combout\)))) # (!\ULA|Add0~62_combout\ & ((\ULA|Add0~57_combout\ & (!\ULA|Add0~61_combout\)) # (!\ULA|Add0~57_combout\ & ((\ULA|Add0~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~57_combout\,
	datab => \ULA|Add0~61_combout\,
	datac => \ULA|Add0~50_combout\,
	datad => \ULA|Add0~62_combout\,
	combout => \DISPLAY3|saida7seg[4]~8_combout\);

-- Location: LCCOMB_X106_Y12_N22
\DISPLAY3|saida7seg[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY3|saida7seg[5]~9_combout\ = (\ULA|Add0~57_combout\ & (\ULA|Add0~50_combout\ & (\ULA|Add0~61_combout\ $ (\ULA|Add0~62_combout\)))) # (!\ULA|Add0~57_combout\ & ((\ULA|Add0~61_combout\ & (\ULA|Add0~50_combout\ & \ULA|Add0~62_combout\)) # 
-- (!\ULA|Add0~61_combout\ & ((\ULA|Add0~50_combout\) # (\ULA|Add0~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~57_combout\,
	datab => \ULA|Add0~61_combout\,
	datac => \ULA|Add0~50_combout\,
	datad => \ULA|Add0~62_combout\,
	combout => \DISPLAY3|saida7seg[5]~9_combout\);

-- Location: LCCOMB_X106_Y12_N0
\DISPLAY3|saida7seg[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY3|saida7seg[6]~10_combout\ = (\ULA|Add0~62_combout\ & (\ULA|Add0~50_combout\ & (\ULA|Add0~57_combout\ $ (\ULA|Add0~61_combout\)))) # (!\ULA|Add0~62_combout\ & ((\ULA|Add0~57_combout\ & (\ULA|Add0~61_combout\ & !\ULA|Add0~50_combout\)) # 
-- (!\ULA|Add0~57_combout\ & (!\ULA|Add0~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~57_combout\,
	datab => \ULA|Add0~61_combout\,
	datac => \ULA|Add0~50_combout\,
	datad => \ULA|Add0~62_combout\,
	combout => \DISPLAY3|saida7seg[6]~10_combout\);

-- Location: LCCOMB_X106_Y15_N18
\ULA|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~63_combout\ = (\BR|saidaA[16]~15_combout\ & ((\SW[3]~input_o\ & (!\ULA|Add0~60\)) # (!\SW[3]~input_o\ & (\ULA|Add0~60\ & VCC)))) # (!\BR|saidaA[16]~15_combout\ & ((\SW[3]~input_o\ & ((\ULA|Add0~60\) # (GND))) # (!\SW[3]~input_o\ & 
-- (!\ULA|Add0~60\))))
-- \ULA|Add0~64\ = CARRY((\BR|saidaA[16]~15_combout\ & (\SW[3]~input_o\ & !\ULA|Add0~60\)) # (!\BR|saidaA[16]~15_combout\ & ((\SW[3]~input_o\) # (!\ULA|Add0~60\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BR|saidaA[16]~15_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \ULA|Add0~60\,
	combout => \ULA|Add0~63_combout\,
	cout => \ULA|Add0~64\);

-- Location: LCCOMB_X106_Y15_N20
\ULA|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~66_combout\ = ((\BR|saidaA[17]~16_combout\ $ (\SW[3]~input_o\ $ (\ULA|Add0~64\)))) # (GND)
-- \ULA|Add0~67\ = CARRY((\BR|saidaA[17]~16_combout\ & ((!\ULA|Add0~64\) # (!\SW[3]~input_o\))) # (!\BR|saidaA[17]~16_combout\ & (!\SW[3]~input_o\ & !\ULA|Add0~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BR|saidaA[17]~16_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \ULA|Add0~64\,
	combout => \ULA|Add0~66_combout\,
	cout => \ULA|Add0~67\);

-- Location: LCCOMB_X106_Y15_N22
\ULA|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~68_combout\ = (\BR|saidaA[18]~17_combout\ & ((\SW[3]~input_o\ & (!\ULA|Add0~67\)) # (!\SW[3]~input_o\ & (\ULA|Add0~67\ & VCC)))) # (!\BR|saidaA[18]~17_combout\ & ((\SW[3]~input_o\ & ((\ULA|Add0~67\) # (GND))) # (!\SW[3]~input_o\ & 
-- (!\ULA|Add0~67\))))
-- \ULA|Add0~69\ = CARRY((\BR|saidaA[18]~17_combout\ & (\SW[3]~input_o\ & !\ULA|Add0~67\)) # (!\BR|saidaA[18]~17_combout\ & ((\SW[3]~input_o\) # (!\ULA|Add0~67\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BR|saidaA[18]~17_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \ULA|Add0~67\,
	combout => \ULA|Add0~68_combout\,
	cout => \ULA|Add0~69\);

-- Location: LCCOMB_X106_Y15_N24
\ULA|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~71_combout\ = ((\BR|saidaA[19]~18_combout\ $ (\SW[3]~input_o\ $ (\ULA|Add0~69\)))) # (GND)
-- \ULA|Add0~72\ = CARRY((\BR|saidaA[19]~18_combout\ & ((!\ULA|Add0~69\) # (!\SW[3]~input_o\))) # (!\BR|saidaA[19]~18_combout\ & (!\SW[3]~input_o\ & !\ULA|Add0~69\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BR|saidaA[19]~18_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \ULA|Add0~69\,
	combout => \ULA|Add0~71_combout\,
	cout => \ULA|Add0~72\);

-- Location: LCCOMB_X107_Y13_N12
\BR|registrador~1102\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1102_combout\ = !\MEMORIA_DADOS|ram~116_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ram~116_combout\,
	combout => \BR|registrador~1102_combout\);

-- Location: FF_X107_Y13_N13
\BR|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|registrador~1102_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~57_q\);

-- Location: LCCOMB_X107_Y13_N28
\BR|registrador~1078\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1078_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((!\PC|q\(2) & \BR|registrador~345_q\)))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (!\BR|registrador~57_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~57_q\,
	datab => \PC|q\(2),
	datac => \BR|registrador~345_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|registrador~1078_combout\);

-- Location: LCCOMB_X106_Y13_N30
\ULA|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~73_combout\ = (\ULA|Mux8~0_combout\ & ((\ULA|Add0~71_combout\) # ((\ULA|Add0~9_combout\ & \BR|registrador~1078_combout\)))) # (!\ULA|Mux8~0_combout\ & (\ULA|Add0~9_combout\ & ((\BR|registrador~1078_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux8~0_combout\,
	datab => \ULA|Add0~9_combout\,
	datac => \ULA|Add0~71_combout\,
	datad => \BR|registrador~1078_combout\,
	combout => \ULA|Add0~73_combout\);

-- Location: FF_X107_Y13_N15
\BR|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~115_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~56_q\);

-- Location: LCCOMB_X107_Y13_N20
\BR|registrador~1077\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1077_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((!\PC|q\(2) & \BR|registrador~344_q\)))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (\BR|registrador~56_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~56_q\,
	datab => \PC|q\(2),
	datac => \BR|registrador~344_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|registrador~1077_combout\);

-- Location: LCCOMB_X106_Y13_N24
\ULA|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~70_combout\ = (\ULA|Add0~68_combout\ & ((\ULA|Mux8~0_combout\) # ((\BR|registrador~1077_combout\ & \ULA|Add0~9_combout\)))) # (!\ULA|Add0~68_combout\ & (\BR|registrador~1077_combout\ & (\ULA|Add0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~68_combout\,
	datab => \BR|registrador~1077_combout\,
	datac => \ULA|Add0~9_combout\,
	datad => \ULA|Mux8~0_combout\,
	combout => \ULA|Add0~70_combout\);

-- Location: FF_X108_Y16_N17
\BR|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~113_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~54_q\);

-- Location: LCCOMB_X109_Y16_N0
\BR|registrador~1076\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1076_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (!\PC|q\(2) & (\BR|registrador~342_q\))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((\BR|registrador~54_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \BR|registrador~342_q\,
	datac => \BR|registrador~54_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|registrador~1076_combout\);

-- Location: LCCOMB_X106_Y12_N14
\ULA|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~65_combout\ = (\ULA|Mux8~0_combout\ & ((\ULA|Add0~63_combout\) # ((\ULA|Add0~9_combout\ & \BR|registrador~1076_combout\)))) # (!\ULA|Mux8~0_combout\ & (\ULA|Add0~9_combout\ & ((\BR|registrador~1076_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux8~0_combout\,
	datab => \ULA|Add0~9_combout\,
	datac => \ULA|Add0~63_combout\,
	datad => \BR|registrador~1076_combout\,
	combout => \ULA|Add0~65_combout\);

-- Location: LCCOMB_X109_Y17_N28
\BR|registrador~1103\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1103_combout\ = !\MEMORIA_DADOS|ram~114_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_DADOS|ram~114_combout\,
	combout => \BR|registrador~1103_combout\);

-- Location: FF_X109_Y17_N29
\BR|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|registrador~1103_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~55_q\);

-- Location: LCCOMB_X108_Y17_N16
\BR|registrador~1079\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1079_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (\BR|registrador~343_q\ & (!\PC|q\(2)))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((!\BR|registrador~55_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~343_q\,
	datab => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datac => \PC|q\(2),
	datad => \BR|registrador~55_q\,
	combout => \BR|registrador~1079_combout\);

-- Location: LCCOMB_X107_Y15_N8
\ULA|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~74_combout\ = (\ULA|Add0~9_combout\ & ((\BR|registrador~1079_combout\) # ((\ULA|Add0~66_combout\ & \ULA|Mux8~0_combout\)))) # (!\ULA|Add0~9_combout\ & (\ULA|Add0~66_combout\ & (\ULA|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~9_combout\,
	datab => \ULA|Add0~66_combout\,
	datac => \ULA|Mux8~0_combout\,
	datad => \BR|registrador~1079_combout\,
	combout => \ULA|Add0~74_combout\);

-- Location: LCCOMB_X103_Y4_N8
\DISPLAY4|saida7seg[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY4|saida7seg[0]~2_combout\ = (!\ULA|Add0~74_combout\ & ((\ULA|Add0~73_combout\ & (\ULA|Add0~70_combout\ & \ULA|Add0~65_combout\)) # (!\ULA|Add0~73_combout\ & (\ULA|Add0~70_combout\ $ (\ULA|Add0~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~73_combout\,
	datab => \ULA|Add0~70_combout\,
	datac => \ULA|Add0~65_combout\,
	datad => \ULA|Add0~74_combout\,
	combout => \DISPLAY4|saida7seg[0]~2_combout\);

-- Location: LCCOMB_X103_Y4_N10
\DISPLAY4|saida7seg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY4|saida7seg~3_combout\ = (\ULA|Add0~70_combout\ & (\ULA|Add0~65_combout\ & (\ULA|Add0~73_combout\ $ (\ULA|Add0~74_combout\)))) # (!\ULA|Add0~70_combout\ & (\ULA|Add0~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~73_combout\,
	datab => \ULA|Add0~70_combout\,
	datac => \ULA|Add0~65_combout\,
	datad => \ULA|Add0~74_combout\,
	combout => \DISPLAY4|saida7seg~3_combout\);

-- Location: LCCOMB_X103_Y4_N30
\DISPLAY4|saida7seg[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY4|saida7seg[1]~11_combout\ = (\ULA|Add0~65_combout\ & ((\ULA|Add0~73_combout\ $ (!\ULA|Add0~70_combout\)) # (!\ULA|Add0~74_combout\))) # (!\ULA|Add0~65_combout\ & (((\ULA|Add0~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~73_combout\,
	datab => \ULA|Add0~70_combout\,
	datac => \ULA|Add0~65_combout\,
	datad => \ULA|Add0~74_combout\,
	combout => \DISPLAY4|saida7seg[1]~11_combout\);

-- Location: LCCOMB_X103_Y4_N20
\DISPLAY4|saida7seg[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY4|saida7seg[1]~4_combout\ = (\ULA|Add0~73_combout\ & (!\DISPLAY4|saida7seg~3_combout\)) # (!\ULA|Add0~73_combout\ & (((\ULA|Add0~70_combout\ & \DISPLAY4|saida7seg[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY4|saida7seg~3_combout\,
	datab => \ULA|Add0~70_combout\,
	datac => \DISPLAY4|saida7seg[1]~11_combout\,
	datad => \ULA|Add0~73_combout\,
	combout => \DISPLAY4|saida7seg[1]~4_combout\);

-- Location: LCCOMB_X103_Y4_N22
\DISPLAY4|saida7seg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY4|saida7seg[2]~5_combout\ = (\ULA|Add0~74_combout\ & (\ULA|Add0~70_combout\ $ (!\ULA|Add0~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Add0~70_combout\,
	datac => \ULA|Add0~65_combout\,
	datad => \ULA|Add0~74_combout\,
	combout => \DISPLAY4|saida7seg[2]~5_combout\);

-- Location: LCCOMB_X103_Y4_N12
\DISPLAY4|saida7seg[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY4|saida7seg[2]~6_combout\ = (\ULA|Add0~73_combout\ & (((!\DISPLAY4|saida7seg~3_combout\)))) # (!\ULA|Add0~73_combout\ & (\DISPLAY4|saida7seg[2]~5_combout\ & ((!\DISPLAY4|saida7seg~3_combout\) # (!\ULA|Add0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~73_combout\,
	datab => \ULA|Add0~70_combout\,
	datac => \DISPLAY4|saida7seg[2]~5_combout\,
	datad => \DISPLAY4|saida7seg~3_combout\,
	combout => \DISPLAY4|saida7seg[2]~6_combout\);

-- Location: LCCOMB_X103_Y4_N26
\DISPLAY4|saida7seg[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY4|saida7seg[3]~7_combout\ = (\ULA|Add0~74_combout\ & ((\ULA|Add0~70_combout\ & ((\ULA|Add0~65_combout\))) # (!\ULA|Add0~70_combout\ & (\ULA|Add0~73_combout\ & !\ULA|Add0~65_combout\)))) # (!\ULA|Add0~74_combout\ & (!\ULA|Add0~73_combout\ & 
-- (\ULA|Add0~70_combout\ $ (\ULA|Add0~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~73_combout\,
	datab => \ULA|Add0~70_combout\,
	datac => \ULA|Add0~65_combout\,
	datad => \ULA|Add0~74_combout\,
	combout => \DISPLAY4|saida7seg[3]~7_combout\);

-- Location: LCCOMB_X103_Y4_N24
\DISPLAY4|saida7seg[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY4|saida7seg[4]~8_combout\ = (\ULA|Add0~74_combout\ & (!\ULA|Add0~73_combout\ & ((\ULA|Add0~65_combout\)))) # (!\ULA|Add0~74_combout\ & ((\ULA|Add0~70_combout\ & (!\ULA|Add0~73_combout\)) # (!\ULA|Add0~70_combout\ & ((\ULA|Add0~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~73_combout\,
	datab => \ULA|Add0~70_combout\,
	datac => \ULA|Add0~65_combout\,
	datad => \ULA|Add0~74_combout\,
	combout => \DISPLAY4|saida7seg[4]~8_combout\);

-- Location: LCCOMB_X103_Y4_N18
\DISPLAY4|saida7seg[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY4|saida7seg[5]~9_combout\ = (\ULA|Add0~73_combout\ & (\ULA|Add0~65_combout\ & (\ULA|Add0~70_combout\ $ (\ULA|Add0~74_combout\)))) # (!\ULA|Add0~73_combout\ & ((\ULA|Add0~70_combout\ & (\ULA|Add0~65_combout\ & \ULA|Add0~74_combout\)) # 
-- (!\ULA|Add0~70_combout\ & ((\ULA|Add0~65_combout\) # (\ULA|Add0~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~73_combout\,
	datab => \ULA|Add0~70_combout\,
	datac => \ULA|Add0~65_combout\,
	datad => \ULA|Add0~74_combout\,
	combout => \DISPLAY4|saida7seg[5]~9_combout\);

-- Location: LCCOMB_X103_Y4_N4
\DISPLAY4|saida7seg[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY4|saida7seg[6]~10_combout\ = (\ULA|Add0~74_combout\ & (\ULA|Add0~65_combout\ & (\ULA|Add0~73_combout\ $ (\ULA|Add0~70_combout\)))) # (!\ULA|Add0~74_combout\ & ((\ULA|Add0~73_combout\ & (\ULA|Add0~70_combout\ & !\ULA|Add0~65_combout\)) # 
-- (!\ULA|Add0~73_combout\ & (!\ULA|Add0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~73_combout\,
	datab => \ULA|Add0~70_combout\,
	datac => \ULA|Add0~65_combout\,
	datad => \ULA|Add0~74_combout\,
	combout => \DISPLAY4|saida7seg[6]~10_combout\);

-- Location: LCCOMB_X106_Y15_N26
\ULA|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~75_combout\ = (\BR|saidaA[20]~19_combout\ & ((\SW[3]~input_o\ & (!\ULA|Add0~72\)) # (!\SW[3]~input_o\ & (\ULA|Add0~72\ & VCC)))) # (!\BR|saidaA[20]~19_combout\ & ((\SW[3]~input_o\ & ((\ULA|Add0~72\) # (GND))) # (!\SW[3]~input_o\ & 
-- (!\ULA|Add0~72\))))
-- \ULA|Add0~76\ = CARRY((\BR|saidaA[20]~19_combout\ & (\SW[3]~input_o\ & !\ULA|Add0~72\)) # (!\BR|saidaA[20]~19_combout\ & ((\SW[3]~input_o\) # (!\ULA|Add0~72\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BR|saidaA[20]~19_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \ULA|Add0~72\,
	combout => \ULA|Add0~75_combout\,
	cout => \ULA|Add0~76\);

-- Location: LCCOMB_X106_Y15_N28
\ULA|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~78_combout\ = ((\BR|saidaA[21]~20_combout\ $ (\SW[3]~input_o\ $ (\ULA|Add0~76\)))) # (GND)
-- \ULA|Add0~79\ = CARRY((\BR|saidaA[21]~20_combout\ & ((!\ULA|Add0~76\) # (!\SW[3]~input_o\))) # (!\BR|saidaA[21]~20_combout\ & (!\SW[3]~input_o\ & !\ULA|Add0~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BR|saidaA[21]~20_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \ULA|Add0~76\,
	combout => \ULA|Add0~78_combout\,
	cout => \ULA|Add0~79\);

-- Location: LCCOMB_X107_Y13_N0
\BR|registrador~1105\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1105_combout\ = !\MEMORIA_DADOS|ram~118_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_DADOS|ram~118_combout\,
	combout => \BR|registrador~1105_combout\);

-- Location: FF_X107_Y13_N1
\BR|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|registrador~1105_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~59_q\);

-- Location: LCCOMB_X107_Y13_N2
\BR|registrador~1083\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1083_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((!\PC|q\(2) & \BR|registrador~347_q\)))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (!\BR|registrador~59_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~59_q\,
	datab => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datac => \PC|q\(2),
	datad => \BR|registrador~347_q\,
	combout => \BR|registrador~1083_combout\);

-- Location: LCCOMB_X106_Y13_N14
\ULA|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~86_combout\ = (\ULA|Add0~78_combout\ & ((\ULA|Mux8~0_combout\) # ((\ULA|Add0~9_combout\ & \BR|registrador~1083_combout\)))) # (!\ULA|Add0~78_combout\ & (((\ULA|Add0~9_combout\ & \BR|registrador~1083_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~78_combout\,
	datab => \ULA|Mux8~0_combout\,
	datac => \ULA|Add0~9_combout\,
	datad => \BR|registrador~1083_combout\,
	combout => \ULA|Add0~86_combout\);

-- Location: FF_X107_Y13_N27
\BR|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~117_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~58_q\);

-- Location: LCCOMB_X107_Y13_N24
\BR|registrador~1080\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1080_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((!\PC|q\(2) & \BR|registrador~346_q\)))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (\BR|registrador~58_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~58_q\,
	datab => \PC|q\(2),
	datac => \BR|registrador~346_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|registrador~1080_combout\);

-- Location: LCCOMB_X106_Y13_N4
\ULA|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~77_combout\ = (\ULA|Add0~75_combout\ & ((\ULA|Mux8~0_combout\) # ((\BR|registrador~1080_combout\ & \ULA|Add0~9_combout\)))) # (!\ULA|Add0~75_combout\ & (\BR|registrador~1080_combout\ & (\ULA|Add0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~75_combout\,
	datab => \BR|registrador~1080_combout\,
	datac => \ULA|Add0~9_combout\,
	datad => \ULA|Mux8~0_combout\,
	combout => \ULA|Add0~77_combout\);

-- Location: LCCOMB_X106_Y15_N30
\ULA|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~80_combout\ = (\BR|saidaA[22]~21_combout\ & ((\SW[3]~input_o\ & (!\ULA|Add0~79\)) # (!\SW[3]~input_o\ & (\ULA|Add0~79\ & VCC)))) # (!\BR|saidaA[22]~21_combout\ & ((\SW[3]~input_o\ & ((\ULA|Add0~79\) # (GND))) # (!\SW[3]~input_o\ & 
-- (!\ULA|Add0~79\))))
-- \ULA|Add0~81\ = CARRY((\BR|saidaA[22]~21_combout\ & (\SW[3]~input_o\ & !\ULA|Add0~79\)) # (!\BR|saidaA[22]~21_combout\ & ((\SW[3]~input_o\) # (!\ULA|Add0~79\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BR|saidaA[22]~21_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \ULA|Add0~79\,
	combout => \ULA|Add0~80_combout\,
	cout => \ULA|Add0~81\);

-- Location: FF_X107_Y14_N15
\BR|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~119_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~60_q\);

-- Location: LCCOMB_X107_Y14_N20
\BR|registrador~1081\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1081_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((\BR|registrador~348_q\ & !\PC|q\(2))))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (\BR|registrador~60_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~60_q\,
	datab => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datac => \BR|registrador~348_q\,
	datad => \PC|q\(2),
	combout => \BR|registrador~1081_combout\);

-- Location: LCCOMB_X105_Y14_N4
\ULA|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~82_combout\ = (\ULA|Add0~80_combout\ & ((\ULA|Mux8~0_combout\) # ((\BR|registrador~1081_combout\ & \ULA|Add0~9_combout\)))) # (!\ULA|Add0~80_combout\ & (((\BR|registrador~1081_combout\ & \ULA|Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~80_combout\,
	datab => \ULA|Mux8~0_combout\,
	datac => \BR|registrador~1081_combout\,
	datad => \ULA|Add0~9_combout\,
	combout => \ULA|Add0~82_combout\);

-- Location: LCCOMB_X107_Y14_N28
\BR|registrador~1104\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1104_combout\ = !\MEMORIA_DADOS|ram~120_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ram~120_combout\,
	combout => \BR|registrador~1104_combout\);

-- Location: FF_X107_Y14_N29
\BR|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|registrador~1104_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~61_q\);

-- Location: LCCOMB_X107_Y14_N16
\BR|registrador~1082\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1082_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (!\PC|q\(2) & (\BR|registrador~349_q\))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((!\BR|registrador~61_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datac => \BR|registrador~349_q\,
	datad => \BR|registrador~61_q\,
	combout => \BR|registrador~1082_combout\);

-- Location: LCCOMB_X106_Y14_N0
\ULA|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~83_combout\ = ((\SW[3]~input_o\ $ (\BR|saidaA[23]~22_combout\ $ (\ULA|Add0~81\)))) # (GND)
-- \ULA|Add0~84\ = CARRY((\SW[3]~input_o\ & (\BR|saidaA[23]~22_combout\ & !\ULA|Add0~81\)) # (!\SW[3]~input_o\ & ((\BR|saidaA[23]~22_combout\) # (!\ULA|Add0~81\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \BR|saidaA[23]~22_combout\,
	datad => VCC,
	cin => \ULA|Add0~81\,
	combout => \ULA|Add0~83_combout\,
	cout => \ULA|Add0~84\);

-- Location: LCCOMB_X106_Y14_N22
\ULA|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~85_combout\ = (\BR|registrador~1082_combout\ & ((\ULA|Add0~9_combout\) # ((\ULA|Add0~83_combout\ & \ULA|Mux8~0_combout\)))) # (!\BR|registrador~1082_combout\ & (\ULA|Add0~83_combout\ & (\ULA|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~1082_combout\,
	datab => \ULA|Add0~83_combout\,
	datac => \ULA|Mux8~0_combout\,
	datad => \ULA|Add0~9_combout\,
	combout => \ULA|Add0~85_combout\);

-- Location: LCCOMB_X101_Y11_N16
\DISPLAY5|saida7seg[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY5|saida7seg[0]~2_combout\ = (!\ULA|Add0~86_combout\ & ((\ULA|Add0~77_combout\ & (\ULA|Add0~82_combout\ $ (!\ULA|Add0~85_combout\))) # (!\ULA|Add0~77_combout\ & (\ULA|Add0~82_combout\ & !\ULA|Add0~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~86_combout\,
	datab => \ULA|Add0~77_combout\,
	datac => \ULA|Add0~82_combout\,
	datad => \ULA|Add0~85_combout\,
	combout => \DISPLAY5|saida7seg[0]~2_combout\);

-- Location: LCCOMB_X101_Y11_N30
\DISPLAY5|saida7seg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY5|saida7seg~3_combout\ = (\ULA|Add0~82_combout\ & (\ULA|Add0~77_combout\ & (\ULA|Add0~86_combout\ $ (\ULA|Add0~85_combout\)))) # (!\ULA|Add0~82_combout\ & (((\ULA|Add0~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~86_combout\,
	datab => \ULA|Add0~77_combout\,
	datac => \ULA|Add0~82_combout\,
	datad => \ULA|Add0~85_combout\,
	combout => \DISPLAY5|saida7seg~3_combout\);

-- Location: LCCOMB_X101_Y11_N18
\DISPLAY5|saida7seg[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY5|saida7seg[1]~11_combout\ = (\ULA|Add0~86_combout\ & ((\ULA|Add0~82_combout\ $ (!\ULA|Add0~85_combout\)) # (!\ULA|Add0~77_combout\))) # (!\ULA|Add0~86_combout\ & (\ULA|Add0~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~86_combout\,
	datab => \ULA|Add0~77_combout\,
	datac => \ULA|Add0~82_combout\,
	datad => \ULA|Add0~85_combout\,
	combout => \DISPLAY5|saida7seg[1]~11_combout\);

-- Location: LCCOMB_X101_Y11_N12
\DISPLAY5|saida7seg[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY5|saida7seg[1]~4_combout\ = (\ULA|Add0~85_combout\ & (!\DISPLAY5|saida7seg~3_combout\)) # (!\ULA|Add0~85_combout\ & (((\DISPLAY5|saida7seg[1]~11_combout\ & \ULA|Add0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY5|saida7seg~3_combout\,
	datab => \DISPLAY5|saida7seg[1]~11_combout\,
	datac => \ULA|Add0~82_combout\,
	datad => \ULA|Add0~85_combout\,
	combout => \DISPLAY5|saida7seg[1]~4_combout\);

-- Location: LCCOMB_X101_Y11_N10
\DISPLAY5|saida7seg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY5|saida7seg[2]~5_combout\ = (\ULA|Add0~86_combout\ & (\ULA|Add0~82_combout\ $ (!\ULA|Add0~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Add0~86_combout\,
	datac => \ULA|Add0~82_combout\,
	datad => \ULA|Add0~77_combout\,
	combout => \DISPLAY5|saida7seg[2]~5_combout\);

-- Location: LCCOMB_X101_Y11_N4
\DISPLAY5|saida7seg[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY5|saida7seg[2]~6_combout\ = (\ULA|Add0~85_combout\ & (((!\DISPLAY5|saida7seg~3_combout\)))) # (!\ULA|Add0~85_combout\ & (\DISPLAY5|saida7seg[2]~5_combout\ & ((!\DISPLAY5|saida7seg~3_combout\) # (!\ULA|Add0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY5|saida7seg[2]~5_combout\,
	datab => \ULA|Add0~82_combout\,
	datac => \DISPLAY5|saida7seg~3_combout\,
	datad => \ULA|Add0~85_combout\,
	combout => \DISPLAY5|saida7seg[2]~6_combout\);

-- Location: LCCOMB_X101_Y11_N6
\DISPLAY5|saida7seg[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY5|saida7seg[3]~7_combout\ = (\ULA|Add0~86_combout\ & ((\ULA|Add0~77_combout\ & (\ULA|Add0~82_combout\)) # (!\ULA|Add0~77_combout\ & (!\ULA|Add0~82_combout\ & \ULA|Add0~85_combout\)))) # (!\ULA|Add0~86_combout\ & (!\ULA|Add0~85_combout\ & 
-- (\ULA|Add0~77_combout\ $ (\ULA|Add0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~86_combout\,
	datab => \ULA|Add0~77_combout\,
	datac => \ULA|Add0~82_combout\,
	datad => \ULA|Add0~85_combout\,
	combout => \DISPLAY5|saida7seg[3]~7_combout\);

-- Location: LCCOMB_X101_Y11_N0
\DISPLAY5|saida7seg[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY5|saida7seg[4]~8_combout\ = (\ULA|Add0~86_combout\ & (\ULA|Add0~77_combout\ & ((!\ULA|Add0~85_combout\)))) # (!\ULA|Add0~86_combout\ & ((\ULA|Add0~82_combout\ & ((!\ULA|Add0~85_combout\))) # (!\ULA|Add0~82_combout\ & (\ULA|Add0~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~86_combout\,
	datab => \ULA|Add0~77_combout\,
	datac => \ULA|Add0~82_combout\,
	datad => \ULA|Add0~85_combout\,
	combout => \DISPLAY5|saida7seg[4]~8_combout\);

-- Location: LCCOMB_X101_Y11_N22
\DISPLAY5|saida7seg[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY5|saida7seg[5]~9_combout\ = (\ULA|Add0~86_combout\ & ((\ULA|Add0~77_combout\ & ((!\ULA|Add0~85_combout\) # (!\ULA|Add0~82_combout\))) # (!\ULA|Add0~77_combout\ & (!\ULA|Add0~82_combout\ & !\ULA|Add0~85_combout\)))) # (!\ULA|Add0~86_combout\ & 
-- (\ULA|Add0~77_combout\ & (\ULA|Add0~82_combout\ $ (!\ULA|Add0~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~86_combout\,
	datab => \ULA|Add0~77_combout\,
	datac => \ULA|Add0~82_combout\,
	datad => \ULA|Add0~85_combout\,
	combout => \DISPLAY5|saida7seg[5]~9_combout\);

-- Location: LCCOMB_X101_Y11_N24
\DISPLAY5|saida7seg[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY5|saida7seg[6]~10_combout\ = (\ULA|Add0~86_combout\ & (\ULA|Add0~77_combout\ & (\ULA|Add0~82_combout\ $ (\ULA|Add0~85_combout\)))) # (!\ULA|Add0~86_combout\ & ((\ULA|Add0~82_combout\ & (!\ULA|Add0~77_combout\ & \ULA|Add0~85_combout\)) # 
-- (!\ULA|Add0~82_combout\ & ((!\ULA|Add0~85_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~86_combout\,
	datab => \ULA|Add0~77_combout\,
	datac => \ULA|Add0~82_combout\,
	datad => \ULA|Add0~85_combout\,
	combout => \DISPLAY5|saida7seg[6]~10_combout\);

-- Location: FF_X107_Y16_N21
\BR|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~123_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~64_q\);

-- Location: LCCOMB_X109_Y16_N30
\BR|registrador~1085\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1085_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (!\PC|q\(2) & (\BR|registrador~352_q\))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((\BR|registrador~64_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datab => \PC|q\(2),
	datac => \BR|registrador~352_q\,
	datad => \BR|registrador~64_q\,
	combout => \BR|registrador~1085_combout\);

-- Location: LCCOMB_X106_Y14_N2
\ULA|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~87_combout\ = (\SW[3]~input_o\ & ((\BR|saidaA[24]~23_combout\ & (!\ULA|Add0~84\)) # (!\BR|saidaA[24]~23_combout\ & ((\ULA|Add0~84\) # (GND))))) # (!\SW[3]~input_o\ & ((\BR|saidaA[24]~23_combout\ & (\ULA|Add0~84\ & VCC)) # 
-- (!\BR|saidaA[24]~23_combout\ & (!\ULA|Add0~84\))))
-- \ULA|Add0~88\ = CARRY((\SW[3]~input_o\ & ((!\ULA|Add0~84\) # (!\BR|saidaA[24]~23_combout\))) # (!\SW[3]~input_o\ & (!\BR|saidaA[24]~23_combout\ & !\ULA|Add0~84\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \BR|saidaA[24]~23_combout\,
	datad => VCC,
	cin => \ULA|Add0~84\,
	combout => \ULA|Add0~87_combout\,
	cout => \ULA|Add0~88\);

-- Location: LCCOMB_X106_Y14_N4
\ULA|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~90_combout\ = ((\SW[3]~input_o\ $ (\BR|saidaA[25]~24_combout\ $ (\ULA|Add0~88\)))) # (GND)
-- \ULA|Add0~91\ = CARRY((\SW[3]~input_o\ & (\BR|saidaA[25]~24_combout\ & !\ULA|Add0~88\)) # (!\SW[3]~input_o\ & ((\BR|saidaA[25]~24_combout\) # (!\ULA|Add0~88\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \BR|saidaA[25]~24_combout\,
	datad => VCC,
	cin => \ULA|Add0~88\,
	combout => \ULA|Add0~90_combout\,
	cout => \ULA|Add0~91\);

-- Location: LCCOMB_X106_Y14_N6
\ULA|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~92_combout\ = (\SW[3]~input_o\ & ((\BR|saidaA[26]~25_combout\ & (!\ULA|Add0~91\)) # (!\BR|saidaA[26]~25_combout\ & ((\ULA|Add0~91\) # (GND))))) # (!\SW[3]~input_o\ & ((\BR|saidaA[26]~25_combout\ & (\ULA|Add0~91\ & VCC)) # 
-- (!\BR|saidaA[26]~25_combout\ & (!\ULA|Add0~91\))))
-- \ULA|Add0~93\ = CARRY((\SW[3]~input_o\ & ((!\ULA|Add0~91\) # (!\BR|saidaA[26]~25_combout\))) # (!\SW[3]~input_o\ & (!\BR|saidaA[26]~25_combout\ & !\ULA|Add0~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \BR|saidaA[26]~25_combout\,
	datad => VCC,
	cin => \ULA|Add0~91\,
	combout => \ULA|Add0~92_combout\,
	cout => \ULA|Add0~93\);

-- Location: LCCOMB_X106_Y14_N30
\ULA|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~94_combout\ = (\ULA|Add0~9_combout\ & ((\BR|registrador~1085_combout\) # ((\ULA|Mux8~0_combout\ & \ULA|Add0~92_combout\)))) # (!\ULA|Add0~9_combout\ & (((\ULA|Mux8~0_combout\ & \ULA|Add0~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~9_combout\,
	datab => \BR|registrador~1085_combout\,
	datac => \ULA|Mux8~0_combout\,
	datad => \ULA|Add0~92_combout\,
	combout => \ULA|Add0~94_combout\);

-- Location: LCCOMB_X106_Y14_N8
\ULA|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~95_combout\ = ((\SW[3]~input_o\ $ (\BR|saidaA[27]~26_combout\ $ (\ULA|Add0~93\)))) # (GND)
-- \ULA|Add0~96\ = CARRY((\SW[3]~input_o\ & (\BR|saidaA[27]~26_combout\ & !\ULA|Add0~93\)) # (!\SW[3]~input_o\ & ((\BR|saidaA[27]~26_combout\) # (!\ULA|Add0~93\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \BR|saidaA[27]~26_combout\,
	datad => VCC,
	cin => \ULA|Add0~93\,
	combout => \ULA|Add0~95_combout\,
	cout => \ULA|Add0~96\);

-- Location: LCCOMB_X107_Y16_N10
\BR|registrador~1106\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1106_combout\ = !\MEMORIA_DADOS|ram~124_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_DADOS|ram~124_combout\,
	combout => \BR|registrador~1106_combout\);

-- Location: FF_X107_Y16_N11
\BR|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|registrador~1106_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~65_q\);

-- Location: LCCOMB_X107_Y17_N18
\BR|registrador~1086\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1086_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (!\PC|q\(2) & ((\BR|registrador~353_q\)))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((!\BR|registrador~65_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datac => \BR|registrador~65_q\,
	datad => \BR|registrador~353_q\,
	combout => \BR|registrador~1086_combout\);

-- Location: LCCOMB_X106_Y14_N20
\ULA|Add0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~97_combout\ = (\ULA|Add0~9_combout\ & ((\BR|registrador~1086_combout\) # ((\ULA|Mux8~0_combout\ & \ULA|Add0~95_combout\)))) # (!\ULA|Add0~9_combout\ & (\ULA|Mux8~0_combout\ & (\ULA|Add0~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~9_combout\,
	datab => \ULA|Mux8~0_combout\,
	datac => \ULA|Add0~95_combout\,
	datad => \BR|registrador~1086_combout\,
	combout => \ULA|Add0~97_combout\);

-- Location: FF_X107_Y14_N23
\BR|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~121_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~62_q\);

-- Location: LCCOMB_X107_Y14_N24
\BR|registrador~1084\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1084_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (!\PC|q\(2) & (\BR|registrador~350_q\))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((\BR|registrador~62_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datac => \BR|registrador~350_q\,
	datad => \BR|registrador~62_q\,
	combout => \BR|registrador~1084_combout\);

-- Location: LCCOMB_X106_Y14_N24
\ULA|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~89_combout\ = (\ULA|Add0~9_combout\ & ((\BR|registrador~1084_combout\) # ((\ULA|Mux8~0_combout\ & \ULA|Add0~87_combout\)))) # (!\ULA|Add0~9_combout\ & (((\ULA|Mux8~0_combout\ & \ULA|Add0~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~9_combout\,
	datab => \BR|registrador~1084_combout\,
	datac => \ULA|Mux8~0_combout\,
	datad => \ULA|Add0~87_combout\,
	combout => \ULA|Add0~89_combout\);

-- Location: LCCOMB_X107_Y14_N12
\BR|registrador~1107\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1107_combout\ = !\MEMORIA_DADOS|ram~122_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ram~122_combout\,
	combout => \BR|registrador~1107_combout\);

-- Location: FF_X107_Y14_N13
\BR|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|registrador~1107_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~63_q\);

-- Location: LCCOMB_X107_Y14_N0
\BR|registrador~1087\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1087_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (!\PC|q\(2) & (\BR|registrador~351_q\))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((!\BR|registrador~63_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datac => \BR|registrador~351_q\,
	datad => \BR|registrador~63_q\,
	combout => \BR|registrador~1087_combout\);

-- Location: LCCOMB_X106_Y14_N18
\ULA|Add0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~98_combout\ = (\ULA|Add0~9_combout\ & ((\BR|registrador~1087_combout\) # ((\ULA|Mux8~0_combout\ & \ULA|Add0~90_combout\)))) # (!\ULA|Add0~9_combout\ & (\ULA|Mux8~0_combout\ & ((\ULA|Add0~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~9_combout\,
	datab => \ULA|Mux8~0_combout\,
	datac => \BR|registrador~1087_combout\,
	datad => \ULA|Add0~90_combout\,
	combout => \ULA|Add0~98_combout\);

-- Location: LCCOMB_X103_Y14_N28
\DISPLAY6|saida7seg[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|saida7seg[0]~2_combout\ = (!\ULA|Add0~98_combout\ & ((\ULA|Add0~94_combout\ & (\ULA|Add0~97_combout\ $ (!\ULA|Add0~89_combout\))) # (!\ULA|Add0~94_combout\ & (!\ULA|Add0~97_combout\ & \ULA|Add0~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~94_combout\,
	datab => \ULA|Add0~97_combout\,
	datac => \ULA|Add0~89_combout\,
	datad => \ULA|Add0~98_combout\,
	combout => \DISPLAY6|saida7seg[0]~2_combout\);

-- Location: LCCOMB_X103_Y14_N26
\DISPLAY6|saida7seg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|saida7seg~3_combout\ = (\ULA|Add0~94_combout\ & (\ULA|Add0~89_combout\ & (\ULA|Add0~97_combout\ $ (\ULA|Add0~98_combout\)))) # (!\ULA|Add0~94_combout\ & (\ULA|Add0~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~94_combout\,
	datab => \ULA|Add0~97_combout\,
	datac => \ULA|Add0~89_combout\,
	datad => \ULA|Add0~98_combout\,
	combout => \DISPLAY6|saida7seg~3_combout\);

-- Location: LCCOMB_X103_Y14_N18
\DISPLAY6|saida7seg[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|saida7seg[1]~11_combout\ = (\ULA|Add0~89_combout\ & ((\ULA|Add0~94_combout\ $ (!\ULA|Add0~97_combout\)) # (!\ULA|Add0~98_combout\))) # (!\ULA|Add0~89_combout\ & (((\ULA|Add0~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~94_combout\,
	datab => \ULA|Add0~97_combout\,
	datac => \ULA|Add0~89_combout\,
	datad => \ULA|Add0~98_combout\,
	combout => \DISPLAY6|saida7seg[1]~11_combout\);

-- Location: LCCOMB_X103_Y14_N0
\DISPLAY6|saida7seg[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|saida7seg[1]~4_combout\ = (\ULA|Add0~97_combout\ & (!\DISPLAY6|saida7seg~3_combout\)) # (!\ULA|Add0~97_combout\ & (((\ULA|Add0~94_combout\ & \DISPLAY6|saida7seg[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY6|saida7seg~3_combout\,
	datab => \ULA|Add0~97_combout\,
	datac => \ULA|Add0~94_combout\,
	datad => \DISPLAY6|saida7seg[1]~11_combout\,
	combout => \DISPLAY6|saida7seg[1]~4_combout\);

-- Location: LCCOMB_X103_Y14_N10
\DISPLAY6|saida7seg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|saida7seg[2]~5_combout\ = (\ULA|Add0~98_combout\ & (\ULA|Add0~94_combout\ $ (!\ULA|Add0~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~94_combout\,
	datac => \ULA|Add0~89_combout\,
	datad => \ULA|Add0~98_combout\,
	combout => \DISPLAY6|saida7seg[2]~5_combout\);

-- Location: LCCOMB_X103_Y14_N4
\DISPLAY6|saida7seg[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|saida7seg[2]~6_combout\ = (\ULA|Add0~97_combout\ & (!\DISPLAY6|saida7seg~3_combout\)) # (!\ULA|Add0~97_combout\ & (\DISPLAY6|saida7seg[2]~5_combout\ & ((!\ULA|Add0~94_combout\) # (!\DISPLAY6|saida7seg~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY6|saida7seg~3_combout\,
	datab => \ULA|Add0~97_combout\,
	datac => \ULA|Add0~94_combout\,
	datad => \DISPLAY6|saida7seg[2]~5_combout\,
	combout => \DISPLAY6|saida7seg[2]~6_combout\);

-- Location: LCCOMB_X103_Y14_N30
\DISPLAY6|saida7seg[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|saida7seg[3]~7_combout\ = (\ULA|Add0~98_combout\ & ((\ULA|Add0~94_combout\ & ((\ULA|Add0~89_combout\))) # (!\ULA|Add0~94_combout\ & (\ULA|Add0~97_combout\ & !\ULA|Add0~89_combout\)))) # (!\ULA|Add0~98_combout\ & (!\ULA|Add0~97_combout\ & 
-- (\ULA|Add0~94_combout\ $ (\ULA|Add0~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~94_combout\,
	datab => \ULA|Add0~97_combout\,
	datac => \ULA|Add0~89_combout\,
	datad => \ULA|Add0~98_combout\,
	combout => \DISPLAY6|saida7seg[3]~7_combout\);

-- Location: LCCOMB_X103_Y14_N12
\DISPLAY6|saida7seg[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|saida7seg[4]~8_combout\ = (\ULA|Add0~98_combout\ & (((!\ULA|Add0~97_combout\ & \ULA|Add0~89_combout\)))) # (!\ULA|Add0~98_combout\ & ((\ULA|Add0~94_combout\ & (!\ULA|Add0~97_combout\)) # (!\ULA|Add0~94_combout\ & ((\ULA|Add0~89_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~94_combout\,
	datab => \ULA|Add0~97_combout\,
	datac => \ULA|Add0~89_combout\,
	datad => \ULA|Add0~98_combout\,
	combout => \DISPLAY6|saida7seg[4]~8_combout\);

-- Location: LCCOMB_X103_Y14_N14
\DISPLAY6|saida7seg[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|saida7seg[5]~9_combout\ = (\ULA|Add0~94_combout\ & (\ULA|Add0~89_combout\ & (\ULA|Add0~97_combout\ $ (\ULA|Add0~98_combout\)))) # (!\ULA|Add0~94_combout\ & ((\ULA|Add0~97_combout\ & (\ULA|Add0~89_combout\ & \ULA|Add0~98_combout\)) # 
-- (!\ULA|Add0~97_combout\ & ((\ULA|Add0~89_combout\) # (\ULA|Add0~98_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~94_combout\,
	datab => \ULA|Add0~97_combout\,
	datac => \ULA|Add0~89_combout\,
	datad => \ULA|Add0~98_combout\,
	combout => \DISPLAY6|saida7seg[5]~9_combout\);

-- Location: LCCOMB_X103_Y14_N20
\DISPLAY6|saida7seg[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|saida7seg[6]~10_combout\ = (\ULA|Add0~98_combout\ & (\ULA|Add0~89_combout\ & (\ULA|Add0~94_combout\ $ (\ULA|Add0~97_combout\)))) # (!\ULA|Add0~98_combout\ & ((\ULA|Add0~94_combout\ & (\ULA|Add0~97_combout\ & !\ULA|Add0~89_combout\)) # 
-- (!\ULA|Add0~94_combout\ & (!\ULA|Add0~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~94_combout\,
	datab => \ULA|Add0~97_combout\,
	datac => \ULA|Add0~89_combout\,
	datad => \ULA|Add0~98_combout\,
	combout => \DISPLAY6|saida7seg[6]~10_combout\);

-- Location: LCCOMB_X106_Y14_N10
\ULA|Add0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~99_combout\ = (\SW[3]~input_o\ & ((\BR|saidaA[28]~27_combout\ & (!\ULA|Add0~96\)) # (!\BR|saidaA[28]~27_combout\ & ((\ULA|Add0~96\) # (GND))))) # (!\SW[3]~input_o\ & ((\BR|saidaA[28]~27_combout\ & (\ULA|Add0~96\ & VCC)) # 
-- (!\BR|saidaA[28]~27_combout\ & (!\ULA|Add0~96\))))
-- \ULA|Add0~100\ = CARRY((\SW[3]~input_o\ & ((!\ULA|Add0~96\) # (!\BR|saidaA[28]~27_combout\))) # (!\SW[3]~input_o\ & (!\BR|saidaA[28]~27_combout\ & !\ULA|Add0~96\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \BR|saidaA[28]~27_combout\,
	datad => VCC,
	cin => \ULA|Add0~96\,
	combout => \ULA|Add0~99_combout\,
	cout => \ULA|Add0~100\);

-- Location: LCCOMB_X106_Y14_N12
\ULA|Add0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~102_combout\ = ((\SW[3]~input_o\ $ (\BR|saidaA[29]~28_combout\ $ (\ULA|Add0~100\)))) # (GND)
-- \ULA|Add0~103\ = CARRY((\SW[3]~input_o\ & (\BR|saidaA[29]~28_combout\ & !\ULA|Add0~100\)) # (!\SW[3]~input_o\ & ((\BR|saidaA[29]~28_combout\) # (!\ULA|Add0~100\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \BR|saidaA[29]~28_combout\,
	datad => VCC,
	cin => \ULA|Add0~100\,
	combout => \ULA|Add0~102_combout\,
	cout => \ULA|Add0~103\);

-- Location: LCCOMB_X106_Y14_N14
\ULA|Add0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~104_combout\ = (\SW[3]~input_o\ & ((\BR|saidaA[30]~29_combout\ & (!\ULA|Add0~103\)) # (!\BR|saidaA[30]~29_combout\ & ((\ULA|Add0~103\) # (GND))))) # (!\SW[3]~input_o\ & ((\BR|saidaA[30]~29_combout\ & (\ULA|Add0~103\ & VCC)) # 
-- (!\BR|saidaA[30]~29_combout\ & (!\ULA|Add0~103\))))
-- \ULA|Add0~105\ = CARRY((\SW[3]~input_o\ & ((!\ULA|Add0~103\) # (!\BR|saidaA[30]~29_combout\))) # (!\SW[3]~input_o\ & (!\BR|saidaA[30]~29_combout\ & !\ULA|Add0~103\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \BR|saidaA[30]~29_combout\,
	datad => VCC,
	cin => \ULA|Add0~103\,
	combout => \ULA|Add0~104_combout\,
	cout => \ULA|Add0~105\);

-- Location: FF_X107_Y16_N31
\BR|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	asdata => \MEMORIA_DADOS|ram~127_combout\,
	sload => VCC,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~68_q\);

-- Location: LCCOMB_X107_Y17_N16
\BR|registrador~1089\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1089_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (!\PC|q\(2) & ((\BR|registrador~356_q\)))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((\BR|registrador~68_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datac => \BR|registrador~68_q\,
	datad => \BR|registrador~356_q\,
	combout => \BR|registrador~1089_combout\);

-- Location: LCCOMB_X106_Y14_N26
\ULA|Add0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~106_combout\ = (\ULA|Add0~9_combout\ & ((\BR|registrador~1089_combout\) # ((\ULA|Mux8~0_combout\ & \ULA|Add0~104_combout\)))) # (!\ULA|Add0~9_combout\ & (\ULA|Mux8~0_combout\ & (\ULA|Add0~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~9_combout\,
	datab => \ULA|Mux8~0_combout\,
	datac => \ULA|Add0~104_combout\,
	datad => \BR|registrador~1089_combout\,
	combout => \ULA|Add0~106_combout\);

-- Location: LCCOMB_X106_Y14_N16
\ULA|Add0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~107_combout\ = \BR|saidaA[31]~30_combout\ $ (\ULA|Add0~105\ $ (\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BR|saidaA[31]~30_combout\,
	datad => \SW[3]~input_o\,
	cin => \ULA|Add0~105\,
	combout => \ULA|Add0~107_combout\);

-- Location: LCCOMB_X109_Y17_N6
\BR|registrador~1108\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1108_combout\ = !\MEMORIA_DADOS|ram~128_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_DADOS|ram~128_combout\,
	combout => \BR|registrador~1108_combout\);

-- Location: FF_X109_Y17_N7
\BR|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|registrador~1108_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~69_q\);

-- Location: LCCOMB_X108_Y17_N14
\BR|registrador~1090\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1090_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((\BR|registrador~357_q\ & !\PC|q\(2))))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (!\BR|registrador~69_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~69_q\,
	datab => \BR|registrador~357_q\,
	datac => \PC|q\(2),
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|registrador~1090_combout\);

-- Location: LCCOMB_X105_Y14_N18
\ULA|Add0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~109_combout\ = (\ULA|Add0~9_combout\ & ((\BR|registrador~1090_combout\) # ((\ULA|Add0~107_combout\ & \ULA|Mux8~0_combout\)))) # (!\ULA|Add0~9_combout\ & (\ULA|Add0~107_combout\ & (\ULA|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~9_combout\,
	datab => \ULA|Add0~107_combout\,
	datac => \ULA|Mux8~0_combout\,
	datad => \BR|registrador~1090_combout\,
	combout => \ULA|Add0~109_combout\);

-- Location: LCCOMB_X105_Y16_N22
\BR|registrador~1109\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1109_combout\ = !\MEMORIA_DADOS|ram~126_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEMORIA_DADOS|ram~126_combout\,
	combout => \BR|registrador~1109_combout\);

-- Location: FF_X105_Y16_N23
\BR|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \BR|registrador~1109_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~67_q\);

-- Location: LCCOMB_X105_Y16_N10
\BR|registrador~1091\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1091_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (!\PC|q\(2) & ((\BR|registrador~355_q\)))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((!\BR|registrador~67_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \BR|registrador~67_q\,
	datac => \BR|registrador~355_q\,
	datad => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	combout => \BR|registrador~1091_combout\);

-- Location: LCCOMB_X105_Y14_N20
\ULA|Add0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~110_combout\ = (\ULA|Add0~9_combout\ & ((\BR|registrador~1091_combout\) # ((\ULA|Mux8~0_combout\ & \ULA|Add0~102_combout\)))) # (!\ULA|Add0~9_combout\ & (\ULA|Mux8~0_combout\ & (\ULA|Add0~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~9_combout\,
	datab => \ULA|Mux8~0_combout\,
	datac => \ULA|Add0~102_combout\,
	datad => \BR|registrador~1091_combout\,
	combout => \ULA|Add0~110_combout\);

-- Location: FF_X107_Y16_N5
\BR|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \EDclk|saida~clkctrl_outclk\,
	d => \MEMORIA_DADOS|ram~125_combout\,
	ena => \BR|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR|registrador~66_q\);

-- Location: LCCOMB_X107_Y14_N2
\BR|registrador~1088\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR|registrador~1088_combout\ = (\MEMORIA_INSTRUCOES|memROM~1_combout\ & (\BR|registrador~354_q\ & ((!\PC|q\(2))))) # (!\MEMORIA_INSTRUCOES|memROM~1_combout\ & (((\BR|registrador~66_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR|registrador~354_q\,
	datab => \MEMORIA_INSTRUCOES|memROM~1_combout\,
	datac => \BR|registrador~66_q\,
	datad => \PC|q\(2),
	combout => \BR|registrador~1088_combout\);

-- Location: LCCOMB_X106_Y14_N28
\ULA|Add0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~101_combout\ = (\ULA|Add0~99_combout\ & ((\ULA|Mux8~0_combout\) # ((\BR|registrador~1088_combout\ & \ULA|Add0~9_combout\)))) # (!\ULA|Add0~99_combout\ & (\BR|registrador~1088_combout\ & ((\ULA|Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~99_combout\,
	datab => \BR|registrador~1088_combout\,
	datac => \ULA|Mux8~0_combout\,
	datad => \ULA|Add0~9_combout\,
	combout => \ULA|Add0~101_combout\);

-- Location: LCCOMB_X99_Y11_N8
\DISPLAY7|saida7seg[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|saida7seg[0]~2_combout\ = (!\ULA|Add0~110_combout\ & ((\ULA|Add0~106_combout\ & (\ULA|Add0~109_combout\ $ (!\ULA|Add0~101_combout\))) # (!\ULA|Add0~106_combout\ & (!\ULA|Add0~109_combout\ & \ULA|Add0~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~106_combout\,
	datab => \ULA|Add0~109_combout\,
	datac => \ULA|Add0~110_combout\,
	datad => \ULA|Add0~101_combout\,
	combout => \DISPLAY7|saida7seg[0]~2_combout\);

-- Location: LCCOMB_X99_Y11_N10
\DISPLAY7|saida7seg[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|saida7seg[1]~11_combout\ = (\ULA|Add0~110_combout\ & ((\ULA|Add0~106_combout\ $ (!\ULA|Add0~109_combout\)) # (!\ULA|Add0~101_combout\))) # (!\ULA|Add0~110_combout\ & (((\ULA|Add0~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~106_combout\,
	datab => \ULA|Add0~109_combout\,
	datac => \ULA|Add0~110_combout\,
	datad => \ULA|Add0~101_combout\,
	combout => \DISPLAY7|saida7seg[1]~11_combout\);

-- Location: LCCOMB_X99_Y11_N18
\DISPLAY7|saida7seg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|saida7seg~3_combout\ = (\ULA|Add0~106_combout\ & (\ULA|Add0~101_combout\ & (\ULA|Add0~109_combout\ $ (\ULA|Add0~110_combout\)))) # (!\ULA|Add0~106_combout\ & (\ULA|Add0~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~106_combout\,
	datab => \ULA|Add0~109_combout\,
	datac => \ULA|Add0~110_combout\,
	datad => \ULA|Add0~101_combout\,
	combout => \DISPLAY7|saida7seg~3_combout\);

-- Location: LCCOMB_X99_Y11_N4
\DISPLAY7|saida7seg[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|saida7seg[1]~4_combout\ = (\ULA|Add0~109_combout\ & (((!\DISPLAY7|saida7seg~3_combout\)))) # (!\ULA|Add0~109_combout\ & (\DISPLAY7|saida7seg[1]~11_combout\ & (\ULA|Add0~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY7|saida7seg[1]~11_combout\,
	datab => \ULA|Add0~109_combout\,
	datac => \ULA|Add0~106_combout\,
	datad => \DISPLAY7|saida7seg~3_combout\,
	combout => \DISPLAY7|saida7seg[1]~4_combout\);

-- Location: LCCOMB_X99_Y11_N26
\DISPLAY7|saida7seg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|saida7seg[2]~5_combout\ = (\ULA|Add0~110_combout\ & (\ULA|Add0~106_combout\ $ (!\ULA|Add0~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~106_combout\,
	datac => \ULA|Add0~110_combout\,
	datad => \ULA|Add0~101_combout\,
	combout => \DISPLAY7|saida7seg[2]~5_combout\);

-- Location: LCCOMB_X99_Y11_N20
\DISPLAY7|saida7seg[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|saida7seg[2]~6_combout\ = (\ULA|Add0~109_combout\ & (((!\DISPLAY7|saida7seg~3_combout\)))) # (!\ULA|Add0~109_combout\ & (\DISPLAY7|saida7seg[2]~5_combout\ & ((!\DISPLAY7|saida7seg~3_combout\) # (!\ULA|Add0~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY7|saida7seg[2]~5_combout\,
	datab => \ULA|Add0~109_combout\,
	datac => \ULA|Add0~106_combout\,
	datad => \DISPLAY7|saida7seg~3_combout\,
	combout => \DISPLAY7|saida7seg[2]~6_combout\);

-- Location: LCCOMB_X99_Y11_N6
\DISPLAY7|saida7seg[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|saida7seg[3]~7_combout\ = (\ULA|Add0~110_combout\ & ((\ULA|Add0~106_combout\ & ((\ULA|Add0~101_combout\))) # (!\ULA|Add0~106_combout\ & (\ULA|Add0~109_combout\ & !\ULA|Add0~101_combout\)))) # (!\ULA|Add0~110_combout\ & (!\ULA|Add0~109_combout\ & 
-- (\ULA|Add0~106_combout\ $ (\ULA|Add0~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~106_combout\,
	datab => \ULA|Add0~109_combout\,
	datac => \ULA|Add0~110_combout\,
	datad => \ULA|Add0~101_combout\,
	combout => \DISPLAY7|saida7seg[3]~7_combout\);

-- Location: LCCOMB_X99_Y11_N24
\DISPLAY7|saida7seg[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|saida7seg[4]~8_combout\ = (\ULA|Add0~110_combout\ & (((!\ULA|Add0~109_combout\ & \ULA|Add0~101_combout\)))) # (!\ULA|Add0~110_combout\ & ((\ULA|Add0~106_combout\ & (!\ULA|Add0~109_combout\)) # (!\ULA|Add0~106_combout\ & 
-- ((\ULA|Add0~101_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~106_combout\,
	datab => \ULA|Add0~109_combout\,
	datac => \ULA|Add0~110_combout\,
	datad => \ULA|Add0~101_combout\,
	combout => \DISPLAY7|saida7seg[4]~8_combout\);

-- Location: LCCOMB_X99_Y11_N22
\DISPLAY7|saida7seg[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|saida7seg[5]~9_combout\ = (\ULA|Add0~106_combout\ & (\ULA|Add0~101_combout\ & (\ULA|Add0~109_combout\ $ (\ULA|Add0~110_combout\)))) # (!\ULA|Add0~106_combout\ & ((\ULA|Add0~109_combout\ & (\ULA|Add0~110_combout\ & \ULA|Add0~101_combout\)) # 
-- (!\ULA|Add0~109_combout\ & ((\ULA|Add0~110_combout\) # (\ULA|Add0~101_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~106_combout\,
	datab => \ULA|Add0~109_combout\,
	datac => \ULA|Add0~110_combout\,
	datad => \ULA|Add0~101_combout\,
	combout => \DISPLAY7|saida7seg[5]~9_combout\);

-- Location: LCCOMB_X99_Y11_N12
\DISPLAY7|saida7seg[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|saida7seg[6]~10_combout\ = (\ULA|Add0~110_combout\ & (\ULA|Add0~101_combout\ & (\ULA|Add0~106_combout\ $ (\ULA|Add0~109_combout\)))) # (!\ULA|Add0~110_combout\ & ((\ULA|Add0~106_combout\ & (\ULA|Add0~109_combout\ & !\ULA|Add0~101_combout\)) # 
-- (!\ULA|Add0~106_combout\ & (!\ULA|Add0~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~106_combout\,
	datab => \ULA|Add0~109_combout\,
	datac => \ULA|Add0~110_combout\,
	datad => \ULA|Add0~101_combout\,
	combout => \DISPLAY7|saida7seg[6]~10_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;
END structure;


