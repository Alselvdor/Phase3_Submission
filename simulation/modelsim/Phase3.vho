-- Copyright (C) 2018  Intel Corporation. All rights reserved.
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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "12/18/2023 20:08:46"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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

ENTITY 	TopWiMax IS
    PORT (
	CLK_50Mhz : IN std_logic;
	reset : IN std_logic;
	load : IN std_logic;
	TopWiMax_in_valid : IN std_logic;
	TopWiMax_in_ready : IN std_logic;
	WiInput : IN std_logic;
	TopWiMax_out_valid : BUFFER std_logic;
	TopWiMax_out_ready : BUFFER std_logic;
	WiOutput1 : BUFFER std_logic_vector(15 DOWNTO 0);
	WiOutput2 : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END TopWiMax;

-- Design Ports Information
-- TopWiMax_out_valid	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TopWiMax_out_ready	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput1[0]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput1[1]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput1[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput1[3]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput1[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput1[5]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput1[6]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput1[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput1[8]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput1[9]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput1[10]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput1[11]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput1[12]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput1[13]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput1[14]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput1[15]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput2[0]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput2[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput2[2]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput2[3]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput2[4]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput2[5]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput2[6]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput2[7]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput2[8]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput2[9]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput2[10]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput2[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput2[12]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput2[13]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput2[14]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiOutput2[15]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TopWiMax_in_ready	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_50Mhz	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TopWiMax_in_valid	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiInput	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TopWiMax IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_50Mhz : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_TopWiMax_in_valid : std_logic;
SIGNAL ww_TopWiMax_in_ready : std_logic;
SIGNAL ww_WiInput : std_logic;
SIGNAL ww_TopWiMax_out_valid : std_logic;
SIGNAL ww_TopWiMax_out_ready : std_logic;
SIGNAL ww_WiOutput1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_WiOutput2 : std_logic_vector(15 DOWNTO 0);
SIGNAL \inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK_50Mhz~input_o\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN8\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\ : std_logic;
SIGNAL \inter1|Add6~25_sumout\ : std_logic;
SIGNAL \inter1|Add7~25_sumout\ : std_logic;
SIGNAL \inter1|Add6~22\ : std_logic;
SIGNAL \inter1|Add6~17_sumout\ : std_logic;
SIGNAL \inter1|Add6~6\ : std_logic;
SIGNAL \inter1|Add6~1_sumout\ : std_logic;
SIGNAL \inter1|counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTEN1\ : std_logic;
SIGNAL \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \TopWiMax_in_valid~input_o\ : std_logic;
SIGNAL \fec1|Add3~121_sumout\ : std_logic;
SIGNAL \fec1|LessThan5~0_combout\ : std_logic;
SIGNAL \fec1|Equal6~4_combout\ : std_logic;
SIGNAL \fec1|Add1~9_sumout\ : std_logic;
SIGNAL \fec1|Add1~18\ : std_logic;
SIGNAL \fec1|Add1~81_sumout\ : std_logic;
SIGNAL \fec1|Add1~90\ : std_logic;
SIGNAL \fec1|Add1~113_sumout\ : std_logic;
SIGNAL \fec1|Add1~114\ : std_logic;
SIGNAL \fec1|Add1~57_sumout\ : std_logic;
SIGNAL \fec1|Add1~58\ : std_logic;
SIGNAL \fec1|Add1~61_sumout\ : std_logic;
SIGNAL \fec1|Add1~62\ : std_logic;
SIGNAL \fec1|Add1~65_sumout\ : std_logic;
SIGNAL \fec1|Add1~66\ : std_logic;
SIGNAL \fec1|Add1~69_sumout\ : std_logic;
SIGNAL \fec1|Add1~70\ : std_logic;
SIGNAL \fec1|Add1~93_sumout\ : std_logic;
SIGNAL \fec1|Add1~94\ : std_logic;
SIGNAL \fec1|Add1~97_sumout\ : std_logic;
SIGNAL \fec1|Add1~98\ : std_logic;
SIGNAL \fec1|Add1~101_sumout\ : std_logic;
SIGNAL \fec1|Add1~102\ : std_logic;
SIGNAL \fec1|Add1~105_sumout\ : std_logic;
SIGNAL \fec1|Add1~106\ : std_logic;
SIGNAL \fec1|Add1~109_sumout\ : std_logic;
SIGNAL \fec1|Add1~110\ : std_logic;
SIGNAL \fec1|Add1~121_sumout\ : std_logic;
SIGNAL \fec1|Add1~122\ : std_logic;
SIGNAL \fec1|Add1~85_sumout\ : std_logic;
SIGNAL \fec1|Add1~86\ : std_logic;
SIGNAL \fec1|Add1~117_sumout\ : std_logic;
SIGNAL \fec1|process_0~3_combout\ : std_logic;
SIGNAL \fec1|process_0~1_combout\ : std_logic;
SIGNAL \fec1|Equal5~0_combout\ : std_logic;
SIGNAL \fec1|process_0~0_combout\ : std_logic;
SIGNAL \fec1|process_0~7_combout\ : std_logic;
SIGNAL \fec1|Equal5~1_combout\ : std_logic;
SIGNAL \fec1|counter_buffer_input[7]~1_combout\ : std_logic;
SIGNAL \fec1|LessThan5~1_combout\ : std_logic;
SIGNAL \fec1|LessThan2~0_combout\ : std_logic;
SIGNAL \fec1|Add3~6\ : std_logic;
SIGNAL \fec1|Add3~93_sumout\ : std_logic;
SIGNAL \fec1|Equal6~1_combout\ : std_logic;
SIGNAL \fec1|Equal6~2_combout\ : std_logic;
SIGNAL \fec1|Equal6~3_combout\ : std_logic;
SIGNAL \fec1|Equal6~0_combout\ : std_logic;
SIGNAL \fec1|Equal6~8_combout\ : std_logic;
SIGNAL \fec1|Selector34~3_combout\ : std_logic;
SIGNAL \fec1|LessThan4~0_combout\ : std_logic;
SIGNAL \fec1|Equal8~0_combout\ : std_logic;
SIGNAL \fec1|Equal8~1_combout\ : std_logic;
SIGNAL \fec1|counter_shift_and_output[21]~2_combout\ : std_logic;
SIGNAL \fec1|process_0~4_combout\ : std_logic;
SIGNAL \fec1|Selector34~2_combout\ : std_logic;
SIGNAL \fec1|counter_shift_and_output[21]~3_combout\ : std_logic;
SIGNAL \fec1|Add3~94\ : std_logic;
SIGNAL \fec1|Add3~97_sumout\ : std_logic;
SIGNAL \fec1|Add3~98\ : std_logic;
SIGNAL \fec1|Add3~101_sumout\ : std_logic;
SIGNAL \fec1|Add3~102\ : std_logic;
SIGNAL \fec1|Add3~33_sumout\ : std_logic;
SIGNAL \fec1|Add3~34\ : std_logic;
SIGNAL \fec1|Add3~37_sumout\ : std_logic;
SIGNAL \fec1|Add3~38\ : std_logic;
SIGNAL \fec1|Add3~41_sumout\ : std_logic;
SIGNAL \fec1|Add3~42\ : std_logic;
SIGNAL \fec1|Add3~45_sumout\ : std_logic;
SIGNAL \fec1|Add3~46\ : std_logic;
SIGNAL \fec1|Add3~49_sumout\ : std_logic;
SIGNAL \fec1|Add3~50\ : std_logic;
SIGNAL \fec1|Add3~53_sumout\ : std_logic;
SIGNAL \fec1|Add3~54\ : std_logic;
SIGNAL \fec1|Add3~17_sumout\ : std_logic;
SIGNAL \fec1|Add3~18\ : std_logic;
SIGNAL \fec1|Add3~21_sumout\ : std_logic;
SIGNAL \fec1|Add3~22\ : std_logic;
SIGNAL \fec1|Add3~25_sumout\ : std_logic;
SIGNAL \fec1|Add3~26\ : std_logic;
SIGNAL \fec1|Add3~29_sumout\ : std_logic;
SIGNAL \fec1|Add3~30\ : std_logic;
SIGNAL \fec1|Add3~57_sumout\ : std_logic;
SIGNAL \fec1|Add3~58\ : std_logic;
SIGNAL \fec1|Add3~61_sumout\ : std_logic;
SIGNAL \fec1|Add3~62\ : std_logic;
SIGNAL \fec1|Add3~65_sumout\ : std_logic;
SIGNAL \fec1|Add3~66\ : std_logic;
SIGNAL \fec1|Add3~69_sumout\ : std_logic;
SIGNAL \fec1|Add3~70\ : std_logic;
SIGNAL \fec1|Add3~73_sumout\ : std_logic;
SIGNAL \fec1|Add3~74\ : std_logic;
SIGNAL \fec1|Add3~77_sumout\ : std_logic;
SIGNAL \fec1|Add3~78\ : std_logic;
SIGNAL \fec1|Add3~81_sumout\ : std_logic;
SIGNAL \fec1|Add3~82\ : std_logic;
SIGNAL \fec1|Add3~85_sumout\ : std_logic;
SIGNAL \fec1|Add3~86\ : std_logic;
SIGNAL \fec1|Add3~89_sumout\ : std_logic;
SIGNAL \fec1|Add3~90\ : std_logic;
SIGNAL \fec1|Add3~13_sumout\ : std_logic;
SIGNAL \fec1|Selector73~0_combout\ : std_logic;
SIGNAL \fec1|PingPong_flag~q\ : std_logic;
SIGNAL \fec1|Equal6~5_combout\ : std_logic;
SIGNAL \fec1|Selector33~0_combout\ : std_logic;
SIGNAL \fec1|counter_buffer_input[7]~2_combout\ : std_logic;
SIGNAL \fec1|Add1~82\ : std_logic;
SIGNAL \fec1|Add1~41_sumout\ : std_logic;
SIGNAL \fec1|Add1~42\ : std_logic;
SIGNAL \fec1|Add1~37_sumout\ : std_logic;
SIGNAL \fec1|Add1~38\ : std_logic;
SIGNAL \fec1|Add1~33_sumout\ : std_logic;
SIGNAL \fec1|Add1~34\ : std_logic;
SIGNAL \fec1|Add1~77_sumout\ : std_logic;
SIGNAL \fec1|Add1~78\ : std_logic;
SIGNAL \fec1|Add1~73_sumout\ : std_logic;
SIGNAL \fec1|Add1~74\ : std_logic;
SIGNAL \fec1|Add1~53_sumout\ : std_logic;
SIGNAL \fec1|Add1~54\ : std_logic;
SIGNAL \fec1|Add1~49_sumout\ : std_logic;
SIGNAL \fec1|Add1~50\ : std_logic;
SIGNAL \fec1|Add1~45_sumout\ : std_logic;
SIGNAL \fec1|Add1~46\ : std_logic;
SIGNAL \fec1|Add1~125_sumout\ : std_logic;
SIGNAL \fec1|Add1~126\ : std_logic;
SIGNAL \fec1|Add1~89_sumout\ : std_logic;
SIGNAL \fec1|process_0~2_combout\ : std_logic;
SIGNAL \fec1|LessThan0~0_combout\ : std_logic;
SIGNAL \fec1|LessThan0~1_combout\ : std_logic;
SIGNAL \fec1|LessThan0~2_combout\ : std_logic;
SIGNAL \fec1|Selector32~0_combout\ : std_logic;
SIGNAL \fec1|input_state_reg.idle~q\ : std_logic;
SIGNAL \fec1|Selector33~1_combout\ : std_logic;
SIGNAL \fec1|Selector33~2_combout\ : std_logic;
SIGNAL \fec1|input_state_reg.input_buffer~q\ : std_logic;
SIGNAL \fec1|counter_buffer_input[7]~0_combout\ : std_logic;
SIGNAL \fec1|Add1~10\ : std_logic;
SIGNAL \fec1|Add1~5_sumout\ : std_logic;
SIGNAL \fec1|Add1~6\ : std_logic;
SIGNAL \fec1|Add1~1_sumout\ : std_logic;
SIGNAL \fec1|Add1~2\ : std_logic;
SIGNAL \fec1|Add1~29_sumout\ : std_logic;
SIGNAL \fec1|Add1~30\ : std_logic;
SIGNAL \fec1|Add1~25_sumout\ : std_logic;
SIGNAL \fec1|Add1~26\ : std_logic;
SIGNAL \fec1|Add1~21_sumout\ : std_logic;
SIGNAL \fec1|Add1~22\ : std_logic;
SIGNAL \fec1|Add1~17_sumout\ : std_logic;
SIGNAL \fec1|process_0~5_combout\ : std_logic;
SIGNAL \fec1|LessThan4~1_combout\ : std_logic;
SIGNAL \fec1|Selector41~0_combout\ : std_logic;
SIGNAL \fec1|counter_shift_and_output[21]~4_combout\ : std_logic;
SIGNAL \fec1|Add3~14\ : std_logic;
SIGNAL \fec1|Add3~9_sumout\ : std_logic;
SIGNAL \fec1|Selector41~1_combout\ : std_logic;
SIGNAL \fec1|process_0~6_combout\ : std_logic;
SIGNAL \fec1|counter_shift_and_output[21]~0_combout\ : std_logic;
SIGNAL \fec1|counter_shift_and_output[21]~1_combout\ : std_logic;
SIGNAL \fec1|Add3~122\ : std_logic;
SIGNAL \fec1|Add3~105_sumout\ : std_logic;
SIGNAL \fec1|Add3~106\ : std_logic;
SIGNAL \fec1|Add3~109_sumout\ : std_logic;
SIGNAL \fec1|Add3~110\ : std_logic;
SIGNAL \fec1|Add3~113_sumout\ : std_logic;
SIGNAL \fec1|Add3~114\ : std_logic;
SIGNAL \fec1|Add3~117_sumout\ : std_logic;
SIGNAL \fec1|Add3~118\ : std_logic;
SIGNAL \fec1|Add3~1_sumout\ : std_logic;
SIGNAL \fec1|Add3~2\ : std_logic;
SIGNAL \fec1|Add3~125_sumout\ : std_logic;
SIGNAL \fec1|Add3~126\ : std_logic;
SIGNAL \fec1|Add3~5_sumout\ : std_logic;
SIGNAL \fec1|Equal6~6_combout\ : std_logic;
SIGNAL \fec1|Equal6~7_combout\ : std_logic;
SIGNAL \fec1|Selector0~1_combout\ : std_logic;
SIGNAL \fec1|Add1~118\ : std_logic;
SIGNAL \fec1|Add1~13_sumout\ : std_logic;
SIGNAL \fec1|Selector0~0_combout\ : std_logic;
SIGNAL \fec1|Selector0~2_combout\ : std_logic;
SIGNAL \fec1|Selector34~0_combout\ : std_logic;
SIGNAL \fec1|Selector34~1_combout\ : std_logic;
SIGNAL \fec1|input_state_reg.PingPong_state~q\ : std_logic;
SIGNAL \inter1|Selector14~0_combout\ : std_logic;
SIGNAL \inter1|state_reg.input_buffer~q\ : std_logic;
SIGNAL \inter1|counter_out[5]~1_combout\ : std_logic;
SIGNAL \inter1|process_0~0_combout\ : std_logic;
SIGNAL \inter1|process_0~6_combout\ : std_logic;
SIGNAL \inter1|state_reg.PingPong_state~q\ : std_logic;
SIGNAL \inter1|Selector13~0_combout\ : std_logic;
SIGNAL \inter1|state_reg.idle~q\ : std_logic;
SIGNAL \inter1|LessThan2~0_combout\ : std_logic;
SIGNAL \inter1|counter_out[23]~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|Add7~94\ : std_logic;
SIGNAL \inter1|Add7~97_sumout\ : std_logic;
SIGNAL \inter1|Add7~98\ : std_logic;
SIGNAL \inter1|Add7~101_sumout\ : std_logic;
SIGNAL \inter1|Add7~102\ : std_logic;
SIGNAL \inter1|Add7~105_sumout\ : std_logic;
SIGNAL \inter1|Add7~106\ : std_logic;
SIGNAL \inter1|Add7~109_sumout\ : std_logic;
SIGNAL \inter1|Add7~110\ : std_logic;
SIGNAL \inter1|Add7~53_sumout\ : std_logic;
SIGNAL \inter1|Add7~54\ : std_logic;
SIGNAL \inter1|Add7~113_sumout\ : std_logic;
SIGNAL \inter1|Add7~114\ : std_logic;
SIGNAL \inter1|Add7~117_sumout\ : std_logic;
SIGNAL \inter1|Add7~118\ : std_logic;
SIGNAL \inter1|Add7~121_sumout\ : std_logic;
SIGNAL \inter1|Add7~122\ : std_logic;
SIGNAL \inter1|Add7~125_sumout\ : std_logic;
SIGNAL \inter1|Add7~126\ : std_logic;
SIGNAL \inter1|Add7~57_sumout\ : std_logic;
SIGNAL \inter1|Add7~58\ : std_logic;
SIGNAL \inter1|Add7~61_sumout\ : std_logic;
SIGNAL \inter1|Add7~62\ : std_logic;
SIGNAL \inter1|Add7~65_sumout\ : std_logic;
SIGNAL \inter1|Add7~66\ : std_logic;
SIGNAL \inter1|Add7~69_sumout\ : std_logic;
SIGNAL \inter1|Add7~70\ : std_logic;
SIGNAL \inter1|Add7~73_sumout\ : std_logic;
SIGNAL \inter1|Add7~74\ : std_logic;
SIGNAL \inter1|Add7~77_sumout\ : std_logic;
SIGNAL \inter1|process_0~2_combout\ : std_logic;
SIGNAL \inter1|Add7~78\ : std_logic;
SIGNAL \inter1|Add7~41_sumout\ : std_logic;
SIGNAL \inter1|Add7~42\ : std_logic;
SIGNAL \inter1|Add7~45_sumout\ : std_logic;
SIGNAL \inter1|Add7~46\ : std_logic;
SIGNAL \inter1|Add7~37_sumout\ : std_logic;
SIGNAL \inter1|Add7~38\ : std_logic;
SIGNAL \inter1|Add7~49_sumout\ : std_logic;
SIGNAL \inter1|process_0~1_combout\ : std_logic;
SIGNAL \inter1|counter_out[20]~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|process_0~4_combout\ : std_logic;
SIGNAL \inter1|counter_kmod16[1]~1_combout\ : std_logic;
SIGNAL \inter1|Equal0~1_combout\ : std_logic;
SIGNAL \inter1|counter_kmod16[1]~2_combout\ : std_logic;
SIGNAL \inter1|Add6~18\ : std_logic;
SIGNAL \inter1|Add6~13_sumout\ : std_logic;
SIGNAL \inter1|Add6~14\ : std_logic;
SIGNAL \inter1|Add6~9_sumout\ : std_logic;
SIGNAL \inter1|Add6~10\ : std_logic;
SIGNAL \inter1|Add6~5_sumout\ : std_logic;
SIGNAL \inter1|Selector15~0_combout\ : std_logic;
SIGNAL \inter1|Selector15~1_combout\ : std_logic;
SIGNAL \inter1|state_reg.PingPong_state~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|counter_out[5]~0_combout\ : std_logic;
SIGNAL \inter1|counter_out[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|Add7~26\ : std_logic;
SIGNAL \inter1|Add7~29_sumout\ : std_logic;
SIGNAL \inter1|Add7~30\ : std_logic;
SIGNAL \inter1|Add7~17_sumout\ : std_logic;
SIGNAL \inter1|Add7~18\ : std_logic;
SIGNAL \inter1|Add7~33_sumout\ : std_logic;
SIGNAL \inter1|counter_out[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|Add7~34\ : std_logic;
SIGNAL \inter1|Add7~21_sumout\ : std_logic;
SIGNAL \inter1|counter_out[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|Add7~22\ : std_logic;
SIGNAL \inter1|Add7~13_sumout\ : std_logic;
SIGNAL \inter1|Add7~14\ : std_logic;
SIGNAL \inter1|Add7~9_sumout\ : std_logic;
SIGNAL \inter1|Add7~10\ : std_logic;
SIGNAL \inter1|Add7~5_sumout\ : std_logic;
SIGNAL \inter1|counter_out[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|Add7~6\ : std_logic;
SIGNAL \inter1|Add7~1_sumout\ : std_logic;
SIGNAL \inter1|counter_out[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|Add7~2\ : std_logic;
SIGNAL \inter1|Add7~85_sumout\ : std_logic;
SIGNAL \inter1|Add7~86\ : std_logic;
SIGNAL \inter1|Add7~89_sumout\ : std_logic;
SIGNAL \inter1|Add7~90\ : std_logic;
SIGNAL \inter1|Add7~93_sumout\ : std_logic;
SIGNAL \inter1|process_0~7_combout\ : std_logic;
SIGNAL \inter1|Selector16~0_combout\ : std_logic;
SIGNAL \inter1|Selector16~1_combout\ : std_logic;
SIGNAL \inter1|Add7~50\ : std_logic;
SIGNAL \inter1|Add7~81_sumout\ : std_logic;
SIGNAL \inter1|Selector16~2_combout\ : std_logic;
SIGNAL \inter1|process_0~3_combout\ : std_logic;
SIGNAL \inter1|process_0~5_combout\ : std_logic;
SIGNAL \inter1|counter_kmod16[1]~0_combout\ : std_logic;
SIGNAL \inter1|Add6~26\ : std_logic;
SIGNAL \inter1|Add6~29_sumout\ : std_logic;
SIGNAL \inter1|Add6~30\ : std_logic;
SIGNAL \inter1|Add6~21_sumout\ : std_logic;
SIGNAL \inter1|counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|Equal0~0_combout\ : std_logic;
SIGNAL \inter1|LessThan0~0_combout\ : std_logic;
SIGNAL \inter1|Selector0~0_combout\ : std_logic;
SIGNAL \inter1|INTER_Output_valid~q\ : std_logic;
SIGNAL \modu1|flag~0_combout\ : std_logic;
SIGNAL \modu1|flag~q\ : std_logic;
SIGNAL \modu1|Finished_Flag~0_combout\ : std_logic;
SIGNAL \modu1|Finished_Flag~q\ : std_logic;
SIGNAL \modu1|MODU_output_valid~0_combout\ : std_logic;
SIGNAL \modu1|MODU_output_valid~q\ : std_logic;
SIGNAL \TopWiMax_in_ready~input_o\ : std_logic;
SIGNAL \modu1|MODU_output_Q[0]~feeder_combout\ : std_logic;
SIGNAL \modu1|MODU_output_Q[14]~0_combout\ : std_logic;
SIGNAL \fec1|process_0~8_combout\ : std_logic;
SIGNAL \fec1|process_0~10_combout\ : std_logic;
SIGNAL \WiInput~input_o\ : std_logic;
SIGNAL \RANDI1|Add0~121_sumout\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \RANDI1|counter_reset_seed[31]~0_combout\ : std_logic;
SIGNAL \RANDI1|Add0~122\ : std_logic;
SIGNAL \RANDI1|Add0~93_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~94\ : std_logic;
SIGNAL \RANDI1|Add0~89_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~90\ : std_logic;
SIGNAL \RANDI1|Add0~5_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~6\ : std_logic;
SIGNAL \RANDI1|Add0~1_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~2\ : std_logic;
SIGNAL \RANDI1|Add0~29_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~30\ : std_logic;
SIGNAL \RANDI1|Add0~25_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~26\ : std_logic;
SIGNAL \RANDI1|Add0~53_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~54\ : std_logic;
SIGNAL \RANDI1|Add0~21_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~22\ : std_logic;
SIGNAL \RANDI1|Add0~17_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~18\ : std_logic;
SIGNAL \RANDI1|Add0~13_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~14\ : std_logic;
SIGNAL \RANDI1|Add0~9_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~10\ : std_logic;
SIGNAL \RANDI1|Add0~49_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~50\ : std_logic;
SIGNAL \RANDI1|Add0~45_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~46\ : std_logic;
SIGNAL \RANDI1|Add0~41_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~42\ : std_logic;
SIGNAL \RANDI1|Add0~37_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~38\ : std_logic;
SIGNAL \RANDI1|Add0~33_sumout\ : std_logic;
SIGNAL \RANDI1|Equal0~2_combout\ : std_logic;
SIGNAL \RANDI1|Add0~34\ : std_logic;
SIGNAL \RANDI1|Add0~77_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~78\ : std_logic;
SIGNAL \RANDI1|Add0~73_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~74\ : std_logic;
SIGNAL \RANDI1|Add0~69_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~70\ : std_logic;
SIGNAL \RANDI1|Add0~65_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~66\ : std_logic;
SIGNAL \RANDI1|Add0~61_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~62\ : std_logic;
SIGNAL \RANDI1|Add0~105_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~106\ : std_logic;
SIGNAL \RANDI1|Add0~57_sumout\ : std_logic;
SIGNAL \RANDI1|Equal0~3_combout\ : std_logic;
SIGNAL \RANDI1|Equal0~1_combout\ : std_logic;
SIGNAL \RANDI1|Add0~58\ : std_logic;
SIGNAL \RANDI1|Add0~125_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~126\ : std_logic;
SIGNAL \RANDI1|Add0~117_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~118\ : std_logic;
SIGNAL \RANDI1|Add0~85_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~86\ : std_logic;
SIGNAL \RANDI1|Add0~97_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~98\ : std_logic;
SIGNAL \RANDI1|Add0~101_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~102\ : std_logic;
SIGNAL \RANDI1|Add0~109_sumout\ : std_logic;
SIGNAL \RANDI1|Add0~110\ : std_logic;
SIGNAL \RANDI1|Add0~113_sumout\ : std_logic;
SIGNAL \RANDI1|Equal0~5_combout\ : std_logic;
SIGNAL \RANDI1|Add0~114\ : std_logic;
SIGNAL \RANDI1|Add0~81_sumout\ : std_logic;
SIGNAL \RANDI1|counter_reset_seed[31]~1_combout\ : std_logic;
SIGNAL \RANDI1|Equal0~4_combout\ : std_logic;
SIGNAL \RANDI1|Equal0~0_combout\ : std_logic;
SIGNAL \RANDI1|Equal0~6_combout\ : std_logic;
SIGNAL \RANDI1|seed_reg[12]~feeder_combout\ : std_logic;
SIGNAL \RANDI1|seed_reg[10]~feeder_combout\ : std_logic;
SIGNAL \RANDI1|seed_reg[6]~feeder_combout\ : std_logic;
SIGNAL \RANDI1|seed_reg[5]~feeder_combout\ : std_logic;
SIGNAL \RANDI1|seed_reg[4]~feeder_combout\ : std_logic;
SIGNAL \RANDI1|seed_reg[2]~feeder_combout\ : std_logic;
SIGNAL \RANDI1|seed_reg[1]~feeder_combout\ : std_logic;
SIGNAL \RANDI1|seed_reg[14]~feeder_combout\ : std_logic;
SIGNAL \RANDI1|seed_reg[9]~2_combout\ : std_logic;
SIGNAL \RANDI1|seed_reg[9]~1_combout\ : std_logic;
SIGNAL \RANDI1|xor_1~0_combout\ : std_logic;
SIGNAL \RANDI1|seed_reg~8_combout\ : std_logic;
SIGNAL \RANDI1|seed_reg~7_combout\ : std_logic;
SIGNAL \RANDI1|seed_reg~6_combout\ : std_logic;
SIGNAL \RANDI1|seed_reg~5_combout\ : std_logic;
SIGNAL \RANDI1|seed_reg~4_combout\ : std_logic;
SIGNAL \RANDI1|seed_reg~3_combout\ : std_logic;
SIGNAL \RANDI1|seed_reg~0_combout\ : std_logic;
SIGNAL \fec1|Decoder0~1_combout\ : std_logic;
SIGNAL \fec1|Selector39~0_combout\ : std_logic;
SIGNAL \fec1|process_0~9_combout\ : std_logic;
SIGNAL \fec1|Selector35~0_combout\ : std_logic;
SIGNAL \RANDI1|randi_output_data~0_combout\ : std_logic;
SIGNAL \fec1|address_a[5]~0_combout\ : std_logic;
SIGNAL \fec1|address_a[6]~1_combout\ : std_logic;
SIGNAL \fec1|address_a[7]~2_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \fec1|Decoder0~0_combout\ : std_logic;
SIGNAL \fec1|shift_reg~0_combout\ : std_logic;
SIGNAL \fec1|Selector35~1_combout\ : std_logic;
SIGNAL \fec1|Selector35~2_combout\ : std_logic;
SIGNAL \fec1|shift_reg2~0_combout\ : std_logic;
SIGNAL \fec1|shift_reg~1_combout\ : std_logic;
SIGNAL \fec1|Selector36~0_combout\ : std_logic;
SIGNAL \fec1|shift_reg~2_combout\ : std_logic;
SIGNAL \fec1|shift_reg~3_combout\ : std_logic;
SIGNAL \fec1|Selector37~0_combout\ : std_logic;
SIGNAL \fec1|shift_reg~5_combout\ : std_logic;
SIGNAL \fec1|Selector38~0_combout\ : std_logic;
SIGNAL \fec1|Selector39~1_combout\ : std_logic;
SIGNAL \fec1|finished_tail_flag~0_combout\ : std_logic;
SIGNAL \fec1|finished_tail_flag~q\ : std_logic;
SIGNAL \fec1|output_state_reg.idle~q\ : std_logic;
SIGNAL \fec1|Equal9~0_combout\ : std_logic;
SIGNAL \fec1|output_state_reg.idle~0_combout\ : std_logic;
SIGNAL \fec1|output_state_reg.idle~DUPLICATE_q\ : std_logic;
SIGNAL \fec1|shift_reg2~1_combout\ : std_logic;
SIGNAL \fec1|shift_reg~4_combout\ : std_logic;
SIGNAL \fec1|Selector40~0_combout\ : std_logic;
SIGNAL \fec1|FEC_output_data~5_combout\ : std_logic;
SIGNAL \fec1|LessThan5~2_combout\ : std_logic;
SIGNAL \fec1|LessThan5~3_combout\ : std_logic;
SIGNAL \fec1|Selector74~0_combout\ : std_logic;
SIGNAL \fec1|output_state_reg.y~DUPLICATE_q\ : std_logic;
SIGNAL \fec1|Equal9~1_combout\ : std_logic;
SIGNAL \fec1|Selector74~2_combout\ : std_logic;
SIGNAL \fec1|Selector75~0_combout\ : std_logic;
SIGNAL \fec1|output_state_reg.y~0_combout\ : std_logic;
SIGNAL \fec1|output_state_reg.y~q\ : std_logic;
SIGNAL \fec1|Selector74~1_combout\ : std_logic;
SIGNAL \fec1|output_state_reg.x~q\ : std_logic;
SIGNAL \fec1|FEC_output_data~7_combout\ : std_logic;
SIGNAL \fec1|FEC_output_data~8_combout\ : std_logic;
SIGNAL \fec1|shift_reg2~2_combout\ : std_logic;
SIGNAL \fec1|shift_reg2~3_combout\ : std_logic;
SIGNAL \fec1|shift_reg2~4_combout\ : std_logic;
SIGNAL \fec1|shift_reg2~11_combout\ : std_logic;
SIGNAL \fec1|shift_reg2~7_combout\ : std_logic;
SIGNAL \fec1|shift_reg2~5_combout\ : std_logic;
SIGNAL \fec1|shift_reg2~6_combout\ : std_logic;
SIGNAL \fec1|shift_reg2~8_combout\ : std_logic;
SIGNAL \fec1|shift_reg2~13_combout\ : std_logic;
SIGNAL \fec1|shift_reg2~14_combout\ : std_logic;
SIGNAL \fec1|shift_reg2~12_combout\ : std_logic;
SIGNAL \fec1|shift_reg2~9_combout\ : std_logic;
SIGNAL \fec1|shift_reg2~10_combout\ : std_logic;
SIGNAL \fec1|FEC_output_data~3_combout\ : std_logic;
SIGNAL \fec1|FEC_output_data~6_combout\ : std_logic;
SIGNAL \fec1|FEC_output_data~4_combout\ : std_logic;
SIGNAL \inter1|counter_kmod16[0]~_wirecell_combout\ : std_logic;
SIGNAL \inter1|Add1~1_sumout\ : std_logic;
SIGNAL \inter1|counter_kmod16[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|Add0~3_combout\ : std_logic;
SIGNAL \inter1|counter_kmod16[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|Add1~2\ : std_logic;
SIGNAL \inter1|Add1~5_sumout\ : std_logic;
SIGNAL \inter1|Add0~4_combout\ : std_logic;
SIGNAL \inter1|Add0~0_combout\ : std_logic;
SIGNAL \inter1|Add1~6\ : std_logic;
SIGNAL \inter1|Add1~9_sumout\ : std_logic;
SIGNAL \inter1|Add5~0_combout\ : std_logic;
SIGNAL \inter1|Add0~1_combout\ : std_logic;
SIGNAL \inter1|Add1~10\ : std_logic;
SIGNAL \inter1|Add1~13_sumout\ : std_logic;
SIGNAL \inter1|Add0~2_combout\ : std_logic;
SIGNAL \inter1|Add1~14\ : std_logic;
SIGNAL \inter1|Add1~17_sumout\ : std_logic;
SIGNAL \inter1|Selector48~0_combout\ : std_logic;
SIGNAL \inter1|PingPong_flag~q\ : std_logic;
SIGNAL \inter1|address_a[6]~0_combout\ : std_logic;
SIGNAL \inter1|Add1~18\ : std_logic;
SIGNAL \inter1|Add1~21_sumout\ : std_logic;
SIGNAL \inter1|address_a[7]~1_combout\ : std_logic;
SIGNAL \inter1|address_a[8]~2_combout\ : std_logic;
SIGNAL \modu1|MODU_input_data_buffer~0_combout\ : std_logic;
SIGNAL \modu1|MODU_input_data_buffer~q\ : std_logic;
SIGNAL \modu1|MODU_output_Q[1]~1_combout\ : std_logic;
SIGNAL \modu1|MODU_output_Q[2]~2_combout\ : std_logic;
SIGNAL \modu1|MODU_output_Q[3]~3_combout\ : std_logic;
SIGNAL \modu1|MODU_output_Q[4]~4_combout\ : std_logic;
SIGNAL \modu1|MODU_output_Q[5]~5_combout\ : std_logic;
SIGNAL \modu1|MODU_output_Q[6]~6_combout\ : std_logic;
SIGNAL \modu1|MODU_output_Q[8]~feeder_combout\ : std_logic;
SIGNAL \modu1|MODU_output_Q[9]~7_combout\ : std_logic;
SIGNAL \modu1|MODU_output_Q[11]~8_combout\ : std_logic;
SIGNAL \modu1|MODU_output_Q[12]~9_combout\ : std_logic;
SIGNAL \modu1|MODU_output_Q[14]~10_combout\ : std_logic;
SIGNAL \modu1|MODU_output_I[0]~feeder_combout\ : std_logic;
SIGNAL \modu1|MODU_output_I[1]~0_combout\ : std_logic;
SIGNAL \modu1|MODU_output_I[2]~1_combout\ : std_logic;
SIGNAL \modu1|MODU_output_I[3]~2_combout\ : std_logic;
SIGNAL \modu1|MODU_output_I[4]~3_combout\ : std_logic;
SIGNAL \modu1|MODU_output_I[5]~4_combout\ : std_logic;
SIGNAL \modu1|MODU_output_I[6]~5_combout\ : std_logic;
SIGNAL \modu1|MODU_output_I[7]~feeder_combout\ : std_logic;
SIGNAL \modu1|MODU_output_I[8]~feeder_combout\ : std_logic;
SIGNAL \modu1|MODU_output_I[9]~6_combout\ : std_logic;
SIGNAL \modu1|MODU_output_I[10]~feeder_combout\ : std_logic;
SIGNAL \modu1|MODU_output_I[11]~7_combout\ : std_logic;
SIGNAL \modu1|MODU_output_I[12]~8_combout\ : std_logic;
SIGNAL \modu1|MODU_output_I[13]~feeder_combout\ : std_logic;
SIGNAL \modu1|MODU_output_I[14]~9_combout\ : std_logic;
SIGNAL \modu1|MODU_output_I[15]~feeder_combout\ : std_logic;
SIGNAL \inter1|ram2|altsyncram_component|auto_generated|q_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inter1|counter_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inter1|ram2|altsyncram_component|auto_generated|q_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fec1|ram1|altsyncram_component|auto_generated|q_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inter1|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \fec1|ram1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RANDI1|seed_reg\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \fec1|counter_shift_and_output\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fec1|counter_buffer_input\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inter1|counter_kmod16\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RANDI1|counter_reset_seed\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \modu1|MODU_output_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \modu1|MODU_output_I\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \fec1|shift_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \fec1|shift_reg2\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \pll1|pll_main_inst|altera_pll_i|fboutclk_wire\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll1|pll_main_inst|altera_pll_i|locked_wire\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll1|pll_main_inst|altera_pll_i|outclk_wire\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \fec1|ALT_INV_counter_shift_and_output\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fec1|ALT_INV_counter_buffer_input\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inter1|ALT_INV_Add7~81_sumout\ : std_logic;
SIGNAL \inter1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \inter1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \fec1|ram1|altsyncram_component|auto_generated|ALT_INV_q_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inter1|ALT_INV_counter_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inter1|ALT_INV_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fec1|ALT_INV_output_state_reg.y~DUPLICATE_q\ : std_logic;
SIGNAL \fec1|ALT_INV_output_state_reg.idle~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|ALT_INV_state_reg.PingPong_state~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|ALT_INV_counter_kmod16[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|ALT_INV_counter_kmod16[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|ALT_INV_counter_out[20]~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|ALT_INV_counter_out[23]~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|ALT_INV_counter_out[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|ALT_INV_counter_out[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|ALT_INV_counter_out[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|ALT_INV_counter_out[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|ALT_INV_counter_out[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|ALT_INV_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|ALT_INV_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inter1|ALT_INV_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_load~input_o\ : std_logic;
SIGNAL \ALT_INV_WiInput~input_o\ : std_logic;
SIGNAL \ALT_INV_TopWiMax_in_valid~input_o\ : std_logic;
SIGNAL \fec1|ALT_INV_FEC_output_data~8_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_FEC_output_data~7_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_FEC_output_data~6_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_FEC_output_data~5_combout\ : std_logic;
SIGNAL \RANDI1|ALT_INV_seed_reg\ : std_logic_vector(14 DOWNTO 2);
SIGNAL \fec1|ALT_INV_shift_reg2~13_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_shift_reg~5_combout\ : std_logic;
SIGNAL \RANDI1|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \RANDI1|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \RANDI1|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \RANDI1|ALT_INV_counter_reset_seed\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RANDI1|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \RANDI1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \RANDI1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \RANDI1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Selector41~0_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_LessThan4~1_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_counter_shift_and_output[21]~4_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_counter_shift_and_output[21]~2_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Equal8~1_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Selector34~3_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Equal6~8_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Selector34~2_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_counter_shift_and_output[21]~0_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Selector33~1_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_input_state_reg.idle~q\ : std_logic;
SIGNAL \fec1|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_counter_buffer_input[7]~1_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Selector33~0_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Equal6~7_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Equal6~6_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \inter1|ALT_INV_Add0~2_combout\ : std_logic;
SIGNAL \inter1|ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \inter1|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_shift_reg2~11_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_shift_reg2\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \fec1|ALT_INV_shift_reg2~9_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_shift_reg2~7_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_shift_reg2~5_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_shift_reg2~3_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_shift_reg2~2_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Selector39~0_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_shift_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \fec1|ALT_INV_process_0~10_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Equal9~1_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Selector74~2_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Selector74~0_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_LessThan5~3_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_LessThan5~2_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \RANDI1|ALT_INV_randi_output_data~0_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_shift_reg~4_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_shift_reg2~1_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_shift_reg~3_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_shift_reg~2_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_shift_reg~1_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_shift_reg2~0_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_shift_reg~0_combout\ : std_logic;
SIGNAL \RANDI1|ALT_INV_xor_1~0_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Selector35~0_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Equal6~5_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_process_0~9_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_process_0~8_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_process_0~7_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Equal6~4_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Equal6~3_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Equal6~2_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Selector34~0_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_input_state_reg.input_buffer~q\ : std_logic;
SIGNAL \fec1|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \inter1|ALT_INV_Selector16~1_combout\ : std_logic;
SIGNAL \inter1|ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \inter1|ALT_INV_process_0~7_combout\ : std_logic;
SIGNAL \inter1|ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \inter1|ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \inter1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inter1|ALT_INV_counter_kmod16[1]~1_combout\ : std_logic;
SIGNAL \inter1|ALT_INV_state_reg.idle~q\ : std_logic;
SIGNAL \inter1|ALT_INV_PingPong_flag~q\ : std_logic;
SIGNAL \fec1|ALT_INV_FEC_output_data~3_combout\ : std_logic;
SIGNAL \fec1|ALT_INV_output_state_reg.y~q\ : std_logic;
SIGNAL \fec1|ALT_INV_output_state_reg.idle~q\ : std_logic;
SIGNAL \fec1|ALT_INV_finished_tail_flag~q\ : std_logic;
SIGNAL \fec1|ALT_INV_output_state_reg.x~q\ : std_logic;
SIGNAL \fec1|ALT_INV_PingPong_flag~q\ : std_logic;
SIGNAL \fec1|ALT_INV_input_state_reg.PingPong_state~q\ : std_logic;
SIGNAL \inter1|ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \inter1|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \inter1|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \inter1|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \inter1|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \inter1|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \inter1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \inter1|ALT_INV_state_reg.PingPong_state~q\ : std_logic;
SIGNAL \inter1|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inter1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inter1|ALT_INV_state_reg.input_buffer~q\ : std_logic;
SIGNAL \modu1|ALT_INV_MODU_input_data_buffer~q\ : std_logic;
SIGNAL \modu1|ALT_INV_Finished_Flag~q\ : std_logic;
SIGNAL \modu1|ALT_INV_flag~q\ : std_logic;
SIGNAL \inter1|ALT_INV_INTER_Output_valid~q\ : std_logic;
SIGNAL \modu1|ALT_INV_MODU_output_valid~q\ : std_logic;
SIGNAL \fec1|ALT_INV_Selector75~0_combout\ : std_logic;
SIGNAL \RANDI1|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \fec1|ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \fec1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \inter1|ALT_INV_counter_kmod16\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLK_50Mhz <= CLK_50Mhz;
ww_reset <= reset;
ww_load <= load;
ww_TopWiMax_in_valid <= TopWiMax_in_valid;
ww_TopWiMax_in_ready <= TopWiMax_in_ready;
ww_WiInput <= WiInput;
TopWiMax_out_valid <= ww_TopWiMax_out_valid;
TopWiMax_out_ready <= ww_TopWiMax_out_ready;
WiOutput1 <= ww_WiOutput1;
WiOutput2 <= ww_WiOutput2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \fec1|FEC_output_data~4_combout\);

\inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\);

\inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inter1|address_a[8]~2_combout\ & \inter1|address_a[7]~1_combout\ & \inter1|address_a[6]~0_combout\ & \inter1|Add1~13_sumout\ & \inter1|Add1~9_sumout\ & 
\inter1|Add1~5_sumout\ & \inter1|Add1~1_sumout\ & \inter1|counter\(5) & \inter1|counter\(4));

\inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inter1|counter_out\(8) & \inter1|counter_out\(7) & \inter1|counter_out\(6) & \inter1|counter_out\(5) & \inter1|counter_out\(4) & \inter1|counter_out\(3) & 
\inter1|counter_out\(2) & \inter1|counter_out\(1) & \inter1|counter_out\(0));

\inter1|ram2|altsyncram_component|auto_generated|q_a\(0) <= \inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\inter1|ram2|altsyncram_component|auto_generated|q_b\(0) <= \inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \RANDI1|randi_output_data~0_combout\);

\fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\);

\fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\fec1|address_a[7]~2_combout\ & \fec1|address_a[6]~1_combout\ & \fec1|address_a[5]~0_combout\ & \fec1|counter_buffer_input\(4) & \fec1|counter_buffer_input\(3) & 
\fec1|counter_buffer_input\(2) & \fec1|counter_buffer_input\(1) & \fec1|counter_buffer_input\(0));

\fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\fec1|counter_shift_and_output\(7) & \fec1|counter_shift_and_output\(6) & \fec1|counter_shift_and_output\(5) & \fec1|counter_shift_and_output\(4) & 
\fec1|counter_shift_and_output\(3) & \fec1|counter_shift_and_output\(2) & \fec1|counter_shift_and_output\(1) & \fec1|counter_shift_and_output\(0));

\fec1|ram1|altsyncram_component|auto_generated|q_a\(0) <= \fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\fec1|ram1|altsyncram_component|auto_generated|q_b\(0) <= \fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ <= \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(0);
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ <= \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(1);
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ <= \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(2);
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ <= \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(3);
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ <= \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(4);
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ <= \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(5);
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ <= \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(6);
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ <= \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(7);

\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ <= \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(0);
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ <= \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(1);
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ <= \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(2);
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ <= \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(3);
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ <= \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(4);
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ <= \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(5);
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ <= \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(6);
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ <= \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(7);

\pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & gnd & gnd & \CLK_50Mhz~input_o\);

\pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ <= (\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ & \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ & 
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ & \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ & \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ & 
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ & \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ & \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\);

\pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTEN1\ <= \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(1);
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN8\ <= \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(8);

\pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & 
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);

\pll1|pll_main_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & 
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);
\fec1|ALT_INV_counter_shift_and_output\(18) <= NOT \fec1|counter_shift_and_output\(18);
\fec1|ALT_INV_counter_shift_and_output\(17) <= NOT \fec1|counter_shift_and_output\(17);
\fec1|ALT_INV_counter_shift_and_output\(30) <= NOT \fec1|counter_shift_and_output\(30);
\fec1|ALT_INV_counter_shift_and_output\(7) <= NOT \fec1|counter_shift_and_output\(7);
\fec1|ALT_INV_counter_shift_and_output\(5) <= NOT \fec1|counter_shift_and_output\(5);
\fec1|ALT_INV_counter_buffer_input\(16) <= NOT \fec1|counter_buffer_input\(16);
\fec1|ALT_INV_counter_buffer_input\(28) <= NOT \fec1|counter_buffer_input\(28);
\fec1|ALT_INV_counter_buffer_input\(30) <= NOT \fec1|counter_buffer_input\(30);
\fec1|ALT_INV_counter_buffer_input\(18) <= NOT \fec1|counter_buffer_input\(18);
\fec1|ALT_INV_counter_buffer_input\(27) <= NOT \fec1|counter_buffer_input\(27);
\fec1|ALT_INV_counter_buffer_input\(26) <= NOT \fec1|counter_buffer_input\(26);
\fec1|ALT_INV_counter_buffer_input\(25) <= NOT \fec1|counter_buffer_input\(25);
\fec1|ALT_INV_counter_buffer_input\(24) <= NOT \fec1|counter_buffer_input\(24);
\fec1|ALT_INV_counter_buffer_input\(23) <= NOT \fec1|counter_buffer_input\(23);
\fec1|ALT_INV_counter_buffer_input\(17) <= NOT \fec1|counter_buffer_input\(17);
\fec1|ALT_INV_counter_buffer_input\(29) <= NOT \fec1|counter_buffer_input\(29);
\fec1|ALT_INV_counter_buffer_input\(7) <= NOT \fec1|counter_buffer_input\(7);
\fec1|ALT_INV_counter_buffer_input\(11) <= NOT \fec1|counter_buffer_input\(11);
\fec1|ALT_INV_counter_buffer_input\(12) <= NOT \fec1|counter_buffer_input\(12);
\fec1|ALT_INV_counter_buffer_input\(22) <= NOT \fec1|counter_buffer_input\(22);
\fec1|ALT_INV_counter_buffer_input\(21) <= NOT \fec1|counter_buffer_input\(21);
\fec1|ALT_INV_counter_buffer_input\(20) <= NOT \fec1|counter_buffer_input\(20);
\fec1|ALT_INV_counter_buffer_input\(19) <= NOT \fec1|counter_buffer_input\(19);
\fec1|ALT_INV_counter_buffer_input\(13) <= NOT \fec1|counter_buffer_input\(13);
\fec1|ALT_INV_counter_buffer_input\(14) <= NOT \fec1|counter_buffer_input\(14);
\fec1|ALT_INV_counter_buffer_input\(15) <= NOT \fec1|counter_buffer_input\(15);
\fec1|ALT_INV_counter_buffer_input\(8) <= NOT \fec1|counter_buffer_input\(8);
\fec1|ALT_INV_counter_buffer_input\(9) <= NOT \fec1|counter_buffer_input\(9);
\fec1|ALT_INV_counter_buffer_input\(10) <= NOT \fec1|counter_buffer_input\(10);
\fec1|ALT_INV_counter_buffer_input\(3) <= NOT \fec1|counter_buffer_input\(3);
\fec1|ALT_INV_counter_buffer_input\(4) <= NOT \fec1|counter_buffer_input\(4);
\fec1|ALT_INV_counter_buffer_input\(5) <= NOT \fec1|counter_buffer_input\(5);
\fec1|ALT_INV_counter_buffer_input\(6) <= NOT \fec1|counter_buffer_input\(6);
\fec1|ALT_INV_counter_buffer_input\(0) <= NOT \fec1|counter_buffer_input\(0);
\fec1|ALT_INV_counter_buffer_input\(1) <= NOT \fec1|counter_buffer_input\(1);
\fec1|ALT_INV_counter_buffer_input\(2) <= NOT \fec1|counter_buffer_input\(2);
\inter1|ALT_INV_Add7~81_sumout\ <= NOT \inter1|Add7~81_sumout\;
\inter1|ALT_INV_Add1~21_sumout\ <= NOT \inter1|Add1~21_sumout\;
\inter1|ALT_INV_Add1~17_sumout\ <= NOT \inter1|Add1~17_sumout\;
\fec1|ram1|altsyncram_component|auto_generated|ALT_INV_q_b\(0) <= NOT \fec1|ram1|altsyncram_component|auto_generated|q_b\(0);
\inter1|ALT_INV_counter_out\(20) <= NOT \inter1|counter_out\(20);
\inter1|ALT_INV_counter_out\(19) <= NOT \inter1|counter_out\(19);
\inter1|ALT_INV_counter_out\(18) <= NOT \inter1|counter_out\(18);
\inter1|ALT_INV_counter_out\(17) <= NOT \inter1|counter_out\(17);
\inter1|ALT_INV_counter_out\(15) <= NOT \inter1|counter_out\(15);
\inter1|ALT_INV_counter_out\(14) <= NOT \inter1|counter_out\(14);
\inter1|ALT_INV_counter_out\(13) <= NOT \inter1|counter_out\(13);
\inter1|ALT_INV_counter_out\(12) <= NOT \inter1|counter_out\(12);
\inter1|ALT_INV_counter_out\(11) <= NOT \inter1|counter_out\(11);
\inter1|ALT_INV_counter_out\(10) <= NOT \inter1|counter_out\(10);
\inter1|ALT_INV_counter_out\(9) <= NOT \inter1|counter_out\(9);
\inter1|ALT_INV_counter_out\(26) <= NOT \inter1|counter_out\(26);
\inter1|ALT_INV_counter_out\(25) <= NOT \inter1|counter_out\(25);
\inter1|ALT_INV_counter_out\(24) <= NOT \inter1|counter_out\(24);
\inter1|ALT_INV_counter_out\(23) <= NOT \inter1|counter_out\(23);
\inter1|ALT_INV_counter_out\(22) <= NOT \inter1|counter_out\(22);
\inter1|ALT_INV_counter_out\(21) <= NOT \inter1|counter_out\(21);
\inter1|ALT_INV_counter_out\(16) <= NOT \inter1|counter_out\(16);
\inter1|ALT_INV_counter_out\(30) <= NOT \inter1|counter_out\(30);
\inter1|ALT_INV_counter_out\(28) <= NOT \inter1|counter_out\(28);
\inter1|ALT_INV_counter_out\(27) <= NOT \inter1|counter_out\(27);
\inter1|ALT_INV_counter_out\(29) <= NOT \inter1|counter_out\(29);
\inter1|ALT_INV_counter_out\(3) <= NOT \inter1|counter_out\(3);
\inter1|ALT_INV_counter_out\(1) <= NOT \inter1|counter_out\(1);
\inter1|ALT_INV_counter_out\(0) <= NOT \inter1|counter_out\(0);
\inter1|ALT_INV_counter_out\(4) <= NOT \inter1|counter_out\(4);
\inter1|ALT_INV_counter_out\(2) <= NOT \inter1|counter_out\(2);
\inter1|ALT_INV_counter_out\(5) <= NOT \inter1|counter_out\(5);
\inter1|ALT_INV_counter_out\(6) <= NOT \inter1|counter_out\(6);
\inter1|ALT_INV_counter_out\(7) <= NOT \inter1|counter_out\(7);
\inter1|ALT_INV_counter_out\(8) <= NOT \inter1|counter_out\(8);
\inter1|ALT_INV_counter\(1) <= NOT \inter1|counter\(1);
\inter1|ALT_INV_counter\(0) <= NOT \inter1|counter\(0);
\inter1|ALT_INV_counter\(2) <= NOT \inter1|counter\(2);
\inter1|ALT_INV_counter\(3) <= NOT \inter1|counter\(3);
\inter1|ALT_INV_counter\(4) <= NOT \inter1|counter\(4);
\inter1|ALT_INV_counter\(5) <= NOT \inter1|counter\(5);
\inter1|ALT_INV_counter\(6) <= NOT \inter1|counter\(6);
\inter1|ALT_INV_counter\(7) <= NOT \inter1|counter\(7);
\inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(0) <= NOT \inter1|ram2|altsyncram_component|auto_generated|q_b\(0);
\fec1|ALT_INV_output_state_reg.y~DUPLICATE_q\ <= NOT \fec1|output_state_reg.y~DUPLICATE_q\;
\fec1|ALT_INV_output_state_reg.idle~DUPLICATE_q\ <= NOT \fec1|output_state_reg.idle~DUPLICATE_q\;
\inter1|ALT_INV_state_reg.PingPong_state~DUPLICATE_q\ <= NOT \inter1|state_reg.PingPong_state~DUPLICATE_q\;
\inter1|ALT_INV_counter_kmod16[1]~DUPLICATE_q\ <= NOT \inter1|counter_kmod16[1]~DUPLICATE_q\;
\inter1|ALT_INV_counter_kmod16[0]~DUPLICATE_q\ <= NOT \inter1|counter_kmod16[0]~DUPLICATE_q\;
\inter1|ALT_INV_counter_out[20]~DUPLICATE_q\ <= NOT \inter1|counter_out[20]~DUPLICATE_q\;
\inter1|ALT_INV_counter_out[23]~DUPLICATE_q\ <= NOT \inter1|counter_out[23]~DUPLICATE_q\;
\inter1|ALT_INV_counter_out[3]~DUPLICATE_q\ <= NOT \inter1|counter_out[3]~DUPLICATE_q\;
\inter1|ALT_INV_counter_out[0]~DUPLICATE_q\ <= NOT \inter1|counter_out[0]~DUPLICATE_q\;
\inter1|ALT_INV_counter_out[4]~DUPLICATE_q\ <= NOT \inter1|counter_out[4]~DUPLICATE_q\;
\inter1|ALT_INV_counter_out[7]~DUPLICATE_q\ <= NOT \inter1|counter_out[7]~DUPLICATE_q\;
\inter1|ALT_INV_counter_out[8]~DUPLICATE_q\ <= NOT \inter1|counter_out[8]~DUPLICATE_q\;
\inter1|ALT_INV_counter[4]~DUPLICATE_q\ <= NOT \inter1|counter[4]~DUPLICATE_q\;
\inter1|ALT_INV_counter[5]~DUPLICATE_q\ <= NOT \inter1|counter[5]~DUPLICATE_q\;
\inter1|ALT_INV_counter[7]~DUPLICATE_q\ <= NOT \inter1|counter[7]~DUPLICATE_q\;
\ALT_INV_load~input_o\ <= NOT \load~input_o\;
\ALT_INV_WiInput~input_o\ <= NOT \WiInput~input_o\;
\ALT_INV_TopWiMax_in_valid~input_o\ <= NOT \TopWiMax_in_valid~input_o\;
\fec1|ALT_INV_FEC_output_data~8_combout\ <= NOT \fec1|FEC_output_data~8_combout\;
\fec1|ALT_INV_FEC_output_data~7_combout\ <= NOT \fec1|FEC_output_data~7_combout\;
\fec1|ALT_INV_FEC_output_data~6_combout\ <= NOT \fec1|FEC_output_data~6_combout\;
\fec1|ALT_INV_FEC_output_data~5_combout\ <= NOT \fec1|FEC_output_data~5_combout\;
\RANDI1|ALT_INV_seed_reg\(7) <= NOT \RANDI1|seed_reg\(7);
\RANDI1|ALT_INV_seed_reg\(8) <= NOT \RANDI1|seed_reg\(8);
\fec1|ALT_INV_shift_reg2~13_combout\ <= NOT \fec1|shift_reg2~13_combout\;
\fec1|ALT_INV_shift_reg~5_combout\ <= NOT \fec1|shift_reg~5_combout\;
\RANDI1|ALT_INV_Equal0~6_combout\ <= NOT \RANDI1|Equal0~6_combout\;
\RANDI1|ALT_INV_Equal0~5_combout\ <= NOT \RANDI1|Equal0~5_combout\;
\RANDI1|ALT_INV_Equal0~4_combout\ <= NOT \RANDI1|Equal0~4_combout\;
\RANDI1|ALT_INV_counter_reset_seed\(31) <= NOT \RANDI1|counter_reset_seed\(31);
\RANDI1|ALT_INV_Equal0~3_combout\ <= NOT \RANDI1|Equal0~3_combout\;
\RANDI1|ALT_INV_Equal0~2_combout\ <= NOT \RANDI1|Equal0~2_combout\;
\RANDI1|ALT_INV_Equal0~1_combout\ <= NOT \RANDI1|Equal0~1_combout\;
\RANDI1|ALT_INV_Equal0~0_combout\ <= NOT \RANDI1|Equal0~0_combout\;
\fec1|ALT_INV_Selector41~0_combout\ <= NOT \fec1|Selector41~0_combout\;
\fec1|ALT_INV_LessThan4~1_combout\ <= NOT \fec1|LessThan4~1_combout\;
\fec1|ALT_INV_counter_shift_and_output[21]~4_combout\ <= NOT \fec1|counter_shift_and_output[21]~4_combout\;
\fec1|ALT_INV_counter_shift_and_output[21]~2_combout\ <= NOT \fec1|counter_shift_and_output[21]~2_combout\;
\fec1|ALT_INV_Equal8~1_combout\ <= NOT \fec1|Equal8~1_combout\;
\fec1|ALT_INV_Selector34~3_combout\ <= NOT \fec1|Selector34~3_combout\;
\fec1|ALT_INV_Equal6~8_combout\ <= NOT \fec1|Equal6~8_combout\;
\fec1|ALT_INV_Selector34~2_combout\ <= NOT \fec1|Selector34~2_combout\;
\fec1|ALT_INV_counter_shift_and_output[21]~0_combout\ <= NOT \fec1|counter_shift_and_output[21]~0_combout\;
\fec1|ALT_INV_Equal8~0_combout\ <= NOT \fec1|Equal8~0_combout\;
\fec1|ALT_INV_Selector33~1_combout\ <= NOT \fec1|Selector33~1_combout\;
\fec1|ALT_INV_input_state_reg.idle~q\ <= NOT \fec1|input_state_reg.idle~q\;
\fec1|ALT_INV_Selector0~1_combout\ <= NOT \fec1|Selector0~1_combout\;
\fec1|ALT_INV_Selector0~0_combout\ <= NOT \fec1|Selector0~0_combout\;
\fec1|ALT_INV_counter_buffer_input[7]~1_combout\ <= NOT \fec1|counter_buffer_input[7]~1_combout\;
\fec1|ALT_INV_Selector33~0_combout\ <= NOT \fec1|Selector33~0_combout\;
\fec1|ALT_INV_Equal6~7_combout\ <= NOT \fec1|Equal6~7_combout\;
\fec1|ALT_INV_Equal6~6_combout\ <= NOT \fec1|Equal6~6_combout\;
\fec1|ALT_INV_LessThan0~2_combout\ <= NOT \fec1|LessThan0~2_combout\;
\inter1|ALT_INV_Add0~2_combout\ <= NOT \inter1|Add0~2_combout\;
\inter1|ALT_INV_Add0~1_combout\ <= NOT \inter1|Add0~1_combout\;
\inter1|ALT_INV_Add0~0_combout\ <= NOT \inter1|Add0~0_combout\;
\fec1|ALT_INV_shift_reg2~11_combout\ <= NOT \fec1|shift_reg2~11_combout\;
\fec1|ALT_INV_shift_reg2\(2) <= NOT \fec1|shift_reg2\(2);
\fec1|ALT_INV_shift_reg2~9_combout\ <= NOT \fec1|shift_reg2~9_combout\;
\fec1|ALT_INV_shift_reg2~7_combout\ <= NOT \fec1|shift_reg2~7_combout\;
\fec1|ALT_INV_shift_reg2~5_combout\ <= NOT \fec1|shift_reg2~5_combout\;
\fec1|ALT_INV_shift_reg2~3_combout\ <= NOT \fec1|shift_reg2~3_combout\;
\fec1|ALT_INV_shift_reg2~2_combout\ <= NOT \fec1|shift_reg2~2_combout\;
\fec1|ALT_INV_Selector39~0_combout\ <= NOT \fec1|Selector39~0_combout\;
\fec1|ALT_INV_Decoder0~1_combout\ <= NOT \fec1|Decoder0~1_combout\;
\fec1|ALT_INV_shift_reg\(2) <= NOT \fec1|shift_reg\(2);
\fec1|ALT_INV_process_0~10_combout\ <= NOT \fec1|process_0~10_combout\;
\fec1|ALT_INV_Equal9~1_combout\ <= NOT \fec1|Equal9~1_combout\;
\fec1|ALT_INV_Selector74~2_combout\ <= NOT \fec1|Selector74~2_combout\;
\fec1|ALT_INV_Equal9~0_combout\ <= NOT \fec1|Equal9~0_combout\;
\fec1|ALT_INV_Selector74~0_combout\ <= NOT \fec1|Selector74~0_combout\;
\fec1|ALT_INV_LessThan5~3_combout\ <= NOT \fec1|LessThan5~3_combout\;
\fec1|ALT_INV_LessThan5~2_combout\ <= NOT \fec1|LessThan5~2_combout\;
\fec1|ALT_INV_LessThan5~1_combout\ <= NOT \fec1|LessThan5~1_combout\;
\fec1|ALT_INV_Equal5~1_combout\ <= NOT \fec1|Equal5~1_combout\;
\RANDI1|ALT_INV_randi_output_data~0_combout\ <= NOT \RANDI1|randi_output_data~0_combout\;
\fec1|ALT_INV_shift_reg~4_combout\ <= NOT \fec1|shift_reg~4_combout\;
\fec1|ALT_INV_shift_reg2~1_combout\ <= NOT \fec1|shift_reg2~1_combout\;
\fec1|ALT_INV_shift_reg~3_combout\ <= NOT \fec1|shift_reg~3_combout\;
\fec1|ALT_INV_shift_reg~2_combout\ <= NOT \fec1|shift_reg~2_combout\;
\fec1|ALT_INV_shift_reg~1_combout\ <= NOT \fec1|shift_reg~1_combout\;
\fec1|ALT_INV_shift_reg2~0_combout\ <= NOT \fec1|shift_reg2~0_combout\;
\fec1|ALT_INV_shift_reg~0_combout\ <= NOT \fec1|shift_reg~0_combout\;
\RANDI1|ALT_INV_xor_1~0_combout\ <= NOT \RANDI1|xor_1~0_combout\;
\RANDI1|ALT_INV_seed_reg\(13) <= NOT \RANDI1|seed_reg\(13);
\fec1|ALT_INV_Decoder0~0_combout\ <= NOT \fec1|Decoder0~0_combout\;
\fec1|ALT_INV_Selector35~0_combout\ <= NOT \fec1|Selector35~0_combout\;
\fec1|ALT_INV_LessThan2~0_combout\ <= NOT \fec1|LessThan2~0_combout\;
\fec1|ALT_INV_Equal6~5_combout\ <= NOT \fec1|Equal6~5_combout\;
\fec1|ALT_INV_process_0~9_combout\ <= NOT \fec1|process_0~9_combout\;
\fec1|ALT_INV_process_0~8_combout\ <= NOT \fec1|process_0~8_combout\;
\fec1|ALT_INV_process_0~7_combout\ <= NOT \fec1|process_0~7_combout\;
\fec1|ALT_INV_process_0~6_combout\ <= NOT \fec1|process_0~6_combout\;
\fec1|ALT_INV_Equal6~4_combout\ <= NOT \fec1|Equal6~4_combout\;
\fec1|ALT_INV_LessThan5~0_combout\ <= NOT \fec1|LessThan5~0_combout\;
\fec1|ALT_INV_LessThan4~0_combout\ <= NOT \fec1|LessThan4~0_combout\;
\fec1|ALT_INV_Equal6~3_combout\ <= NOT \fec1|Equal6~3_combout\;
\fec1|ALT_INV_Equal6~2_combout\ <= NOT \fec1|Equal6~2_combout\;
\fec1|ALT_INV_Equal6~1_combout\ <= NOT \fec1|Equal6~1_combout\;
\fec1|ALT_INV_Equal6~0_combout\ <= NOT \fec1|Equal6~0_combout\;
\fec1|ALT_INV_counter_shift_and_output\(31) <= NOT \fec1|counter_shift_and_output\(31);
\fec1|ALT_INV_Selector34~0_combout\ <= NOT \fec1|Selector34~0_combout\;
\fec1|ALT_INV_input_state_reg.input_buffer~q\ <= NOT \fec1|input_state_reg.input_buffer~q\;
\fec1|ALT_INV_LessThan0~1_combout\ <= NOT \fec1|LessThan0~1_combout\;
\fec1|ALT_INV_LessThan0~0_combout\ <= NOT \fec1|LessThan0~0_combout\;
\fec1|ALT_INV_process_0~5_combout\ <= NOT \fec1|process_0~5_combout\;
\fec1|ALT_INV_process_0~4_combout\ <= NOT \fec1|process_0~4_combout\;
\fec1|ALT_INV_process_0~3_combout\ <= NOT \fec1|process_0~3_combout\;
\fec1|ALT_INV_process_0~2_combout\ <= NOT \fec1|process_0~2_combout\;
\fec1|ALT_INV_process_0~1_combout\ <= NOT \fec1|process_0~1_combout\;
\fec1|ALT_INV_process_0~0_combout\ <= NOT \fec1|process_0~0_combout\;
\fec1|ALT_INV_counter_buffer_input\(31) <= NOT \fec1|counter_buffer_input\(31);
\fec1|ALT_INV_Equal5~0_combout\ <= NOT \fec1|Equal5~0_combout\;
\inter1|ALT_INV_Selector16~1_combout\ <= NOT \inter1|Selector16~1_combout\;
\inter1|ALT_INV_Selector16~0_combout\ <= NOT \inter1|Selector16~0_combout\;
\inter1|ALT_INV_process_0~7_combout\ <= NOT \inter1|process_0~7_combout\;
\inter1|ALT_INV_Selector15~0_combout\ <= NOT \inter1|Selector15~0_combout\;
\inter1|ALT_INV_process_0~6_combout\ <= NOT \inter1|process_0~6_combout\;
\inter1|ALT_INV_Equal0~1_combout\ <= NOT \inter1|Equal0~1_combout\;
\inter1|ALT_INV_counter_kmod16[1]~1_combout\ <= NOT \inter1|counter_kmod16[1]~1_combout\;
\inter1|ALT_INV_state_reg.idle~q\ <= NOT \inter1|state_reg.idle~q\;
\inter1|ALT_INV_PingPong_flag~q\ <= NOT \inter1|PingPong_flag~q\;
\fec1|ALT_INV_shift_reg2\(1) <= NOT \fec1|shift_reg2\(1);
\fec1|ALT_INV_FEC_output_data~3_combout\ <= NOT \fec1|FEC_output_data~3_combout\;
\fec1|ALT_INV_shift_reg2\(0) <= NOT \fec1|shift_reg2\(0);
\fec1|ALT_INV_shift_reg2\(3) <= NOT \fec1|shift_reg2\(3);
\fec1|ALT_INV_shift_reg2\(4) <= NOT \fec1|shift_reg2\(4);
\fec1|ALT_INV_shift_reg2\(5) <= NOT \fec1|shift_reg2\(5);
\fec1|ALT_INV_shift_reg\(1) <= NOT \fec1|shift_reg\(1);
\fec1|ALT_INV_output_state_reg.y~q\ <= NOT \fec1|output_state_reg.y~q\;
\fec1|ALT_INV_output_state_reg.idle~q\ <= NOT \fec1|output_state_reg.idle~q\;
\fec1|ALT_INV_finished_tail_flag~q\ <= NOT \fec1|finished_tail_flag~q\;
\fec1|ALT_INV_output_state_reg.x~q\ <= NOT \fec1|output_state_reg.x~q\;
\fec1|ALT_INV_PingPong_flag~q\ <= NOT \fec1|PingPong_flag~q\;
\fec1|ALT_INV_shift_reg\(0) <= NOT \fec1|shift_reg\(0);
\fec1|ALT_INV_shift_reg\(3) <= NOT \fec1|shift_reg\(3);
\fec1|ALT_INV_shift_reg\(4) <= NOT \fec1|shift_reg\(4);
\fec1|ALT_INV_shift_reg\(5) <= NOT \fec1|shift_reg\(5);
\fec1|ALT_INV_input_state_reg.PingPong_state~q\ <= NOT \fec1|input_state_reg.PingPong_state~q\;
\inter1|ALT_INV_process_0~5_combout\ <= NOT \inter1|process_0~5_combout\;
\inter1|ALT_INV_process_0~4_combout\ <= NOT \inter1|process_0~4_combout\;
\inter1|ALT_INV_process_0~3_combout\ <= NOT \inter1|process_0~3_combout\;
\inter1|ALT_INV_counter_out\(31) <= NOT \inter1|counter_out\(31);
\inter1|ALT_INV_process_0~2_combout\ <= NOT \inter1|process_0~2_combout\;
\inter1|ALT_INV_process_0~1_combout\ <= NOT \inter1|process_0~1_combout\;
\inter1|ALT_INV_LessThan2~0_combout\ <= NOT \inter1|LessThan2~0_combout\;
\inter1|ALT_INV_process_0~0_combout\ <= NOT \inter1|process_0~0_combout\;
\inter1|ALT_INV_state_reg.PingPong_state~q\ <= NOT \inter1|state_reg.PingPong_state~q\;
\inter1|ALT_INV_LessThan0~0_combout\ <= NOT \inter1|LessThan0~0_combout\;
\inter1|ALT_INV_Equal0~0_combout\ <= NOT \inter1|Equal0~0_combout\;
\inter1|ALT_INV_state_reg.input_buffer~q\ <= NOT \inter1|state_reg.input_buffer~q\;
\modu1|ALT_INV_MODU_input_data_buffer~q\ <= NOT \modu1|MODU_input_data_buffer~q\;
\modu1|ALT_INV_Finished_Flag~q\ <= NOT \modu1|Finished_Flag~q\;
\modu1|ALT_INV_flag~q\ <= NOT \modu1|flag~q\;
\inter1|ALT_INV_INTER_Output_valid~q\ <= NOT \inter1|INTER_Output_valid~q\;
\modu1|ALT_INV_MODU_output_valid~q\ <= NOT \modu1|MODU_output_valid~q\;
\fec1|ALT_INV_Selector75~0_combout\ <= NOT \fec1|Selector75~0_combout\;
\RANDI1|ALT_INV_seed_reg\(2) <= NOT \RANDI1|seed_reg\(2);
\RANDI1|ALT_INV_seed_reg\(6) <= NOT \RANDI1|seed_reg\(6);
\RANDI1|ALT_INV_seed_reg\(10) <= NOT \RANDI1|seed_reg\(10);
\RANDI1|ALT_INV_Add0~81_sumout\ <= NOT \RANDI1|Add0~81_sumout\;
\RANDI1|ALT_INV_counter_reset_seed\(24) <= NOT \RANDI1|counter_reset_seed\(24);
\RANDI1|ALT_INV_counter_reset_seed\(0) <= NOT \RANDI1|counter_reset_seed\(0);
\RANDI1|ALT_INV_counter_reset_seed\(25) <= NOT \RANDI1|counter_reset_seed\(25);
\RANDI1|ALT_INV_counter_reset_seed\(30) <= NOT \RANDI1|counter_reset_seed\(30);
\RANDI1|ALT_INV_counter_reset_seed\(29) <= NOT \RANDI1|counter_reset_seed\(29);
\RANDI1|ALT_INV_counter_reset_seed\(22) <= NOT \RANDI1|counter_reset_seed\(22);
\RANDI1|ALT_INV_counter_reset_seed\(28) <= NOT \RANDI1|counter_reset_seed\(28);
\RANDI1|ALT_INV_counter_reset_seed\(27) <= NOT \RANDI1|counter_reset_seed\(27);
\RANDI1|ALT_INV_counter_reset_seed\(1) <= NOT \RANDI1|counter_reset_seed\(1);
\RANDI1|ALT_INV_counter_reset_seed\(2) <= NOT \RANDI1|counter_reset_seed\(2);
\RANDI1|ALT_INV_counter_reset_seed\(26) <= NOT \RANDI1|counter_reset_seed\(26);
\RANDI1|ALT_INV_counter_reset_seed\(17) <= NOT \RANDI1|counter_reset_seed\(17);
\RANDI1|ALT_INV_counter_reset_seed\(18) <= NOT \RANDI1|counter_reset_seed\(18);
\RANDI1|ALT_INV_counter_reset_seed\(19) <= NOT \RANDI1|counter_reset_seed\(19);
\RANDI1|ALT_INV_counter_reset_seed\(20) <= NOT \RANDI1|counter_reset_seed\(20);
\RANDI1|ALT_INV_counter_reset_seed\(21) <= NOT \RANDI1|counter_reset_seed\(21);
\RANDI1|ALT_INV_counter_reset_seed\(23) <= NOT \RANDI1|counter_reset_seed\(23);
\RANDI1|ALT_INV_counter_reset_seed\(7) <= NOT \RANDI1|counter_reset_seed\(7);
\RANDI1|ALT_INV_counter_reset_seed\(12) <= NOT \RANDI1|counter_reset_seed\(12);
\RANDI1|ALT_INV_counter_reset_seed\(13) <= NOT \RANDI1|counter_reset_seed\(13);
\RANDI1|ALT_INV_counter_reset_seed\(14) <= NOT \RANDI1|counter_reset_seed\(14);
\RANDI1|ALT_INV_counter_reset_seed\(15) <= NOT \RANDI1|counter_reset_seed\(15);
\RANDI1|ALT_INV_counter_reset_seed\(16) <= NOT \RANDI1|counter_reset_seed\(16);
\RANDI1|ALT_INV_counter_reset_seed\(5) <= NOT \RANDI1|counter_reset_seed\(5);
\RANDI1|ALT_INV_counter_reset_seed\(6) <= NOT \RANDI1|counter_reset_seed\(6);
\RANDI1|ALT_INV_counter_reset_seed\(8) <= NOT \RANDI1|counter_reset_seed\(8);
\RANDI1|ALT_INV_counter_reset_seed\(9) <= NOT \RANDI1|counter_reset_seed\(9);
\RANDI1|ALT_INV_counter_reset_seed\(10) <= NOT \RANDI1|counter_reset_seed\(10);
\RANDI1|ALT_INV_counter_reset_seed\(11) <= NOT \RANDI1|counter_reset_seed\(11);
\RANDI1|ALT_INV_counter_reset_seed\(3) <= NOT \RANDI1|counter_reset_seed\(3);
\RANDI1|ALT_INV_counter_reset_seed\(4) <= NOT \RANDI1|counter_reset_seed\(4);
\RANDI1|ALT_INV_seed_reg\(12) <= NOT \RANDI1|seed_reg\(12);
\fec1|ALT_INV_Add3~9_sumout\ <= NOT \fec1|Add3~9_sumout\;
\fec1|ALT_INV_Add1~13_sumout\ <= NOT \fec1|Add1~13_sumout\;
\inter1|ALT_INV_counter_kmod16\(3) <= NOT \inter1|counter_kmod16\(3);
\inter1|ALT_INV_counter_kmod16\(2) <= NOT \inter1|counter_kmod16\(2);
\inter1|ALT_INV_counter_kmod16\(1) <= NOT \inter1|counter_kmod16\(1);
\inter1|ALT_INV_counter_kmod16\(0) <= NOT \inter1|counter_kmod16\(0);
\RANDI1|ALT_INV_seed_reg\(14) <= NOT \RANDI1|seed_reg\(14);
\fec1|ALT_INV_counter_shift_and_output\(6) <= NOT \fec1|counter_shift_and_output\(6);
\fec1|ALT_INV_counter_shift_and_output\(0) <= NOT \fec1|counter_shift_and_output\(0);
\fec1|ALT_INV_counter_shift_and_output\(4) <= NOT \fec1|counter_shift_and_output\(4);
\fec1|ALT_INV_counter_shift_and_output\(3) <= NOT \fec1|counter_shift_and_output\(3);
\fec1|ALT_INV_counter_shift_and_output\(2) <= NOT \fec1|counter_shift_and_output\(2);
\fec1|ALT_INV_counter_shift_and_output\(1) <= NOT \fec1|counter_shift_and_output\(1);
\fec1|ALT_INV_counter_shift_and_output\(10) <= NOT \fec1|counter_shift_and_output\(10);
\fec1|ALT_INV_counter_shift_and_output\(9) <= NOT \fec1|counter_shift_and_output\(9);
\fec1|ALT_INV_counter_shift_and_output\(8) <= NOT \fec1|counter_shift_and_output\(8);
\fec1|ALT_INV_counter_shift_and_output\(29) <= NOT \fec1|counter_shift_and_output\(29);
\fec1|ALT_INV_counter_shift_and_output\(28) <= NOT \fec1|counter_shift_and_output\(28);
\fec1|ALT_INV_counter_shift_and_output\(27) <= NOT \fec1|counter_shift_and_output\(27);
\fec1|ALT_INV_counter_shift_and_output\(26) <= NOT \fec1|counter_shift_and_output\(26);
\fec1|ALT_INV_counter_shift_and_output\(25) <= NOT \fec1|counter_shift_and_output\(25);
\fec1|ALT_INV_counter_shift_and_output\(24) <= NOT \fec1|counter_shift_and_output\(24);
\fec1|ALT_INV_counter_shift_and_output\(23) <= NOT \fec1|counter_shift_and_output\(23);
\fec1|ALT_INV_counter_shift_and_output\(22) <= NOT \fec1|counter_shift_and_output\(22);
\fec1|ALT_INV_counter_shift_and_output\(21) <= NOT \fec1|counter_shift_and_output\(21);
\fec1|ALT_INV_counter_shift_and_output\(16) <= NOT \fec1|counter_shift_and_output\(16);
\fec1|ALT_INV_counter_shift_and_output\(15) <= NOT \fec1|counter_shift_and_output\(15);
\fec1|ALT_INV_counter_shift_and_output\(14) <= NOT \fec1|counter_shift_and_output\(14);
\fec1|ALT_INV_counter_shift_and_output\(13) <= NOT \fec1|counter_shift_and_output\(13);
\fec1|ALT_INV_counter_shift_and_output\(12) <= NOT \fec1|counter_shift_and_output\(12);
\fec1|ALT_INV_counter_shift_and_output\(11) <= NOT \fec1|counter_shift_and_output\(11);
\fec1|ALT_INV_counter_shift_and_output\(20) <= NOT \fec1|counter_shift_and_output\(20);
\fec1|ALT_INV_counter_shift_and_output\(19) <= NOT \fec1|counter_shift_and_output\(19);

-- Location: IOOBUF_X80_Y81_N2
\TopWiMax_out_valid~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_valid~q\,
	devoe => ww_devoe,
	o => ww_TopWiMax_out_valid);

-- Location: IOOBUF_X58_Y0_N76
\TopWiMax_out_ready~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \TopWiMax_in_ready~input_o\,
	devoe => ww_devoe,
	o => ww_TopWiMax_out_ready);

-- Location: IOOBUF_X74_Y81_N59
\WiOutput1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_Q\(0),
	devoe => ww_devoe,
	o => ww_WiOutput1(0));

-- Location: IOOBUF_X76_Y81_N53
\WiOutput1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_Q\(1),
	devoe => ww_devoe,
	o => ww_WiOutput1(1));

-- Location: IOOBUF_X70_Y81_N53
\WiOutput1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_Q\(2),
	devoe => ww_devoe,
	o => ww_WiOutput1(2));

-- Location: IOOBUF_X70_Y81_N2
\WiOutput1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_Q\(3),
	devoe => ww_devoe,
	o => ww_WiOutput1(3));

-- Location: IOOBUF_X70_Y81_N19
\WiOutput1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_Q\(4),
	devoe => ww_devoe,
	o => ww_WiOutput1(4));

-- Location: IOOBUF_X70_Y81_N36
\WiOutput1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_Q\(5),
	devoe => ww_devoe,
	o => ww_WiOutput1(5));

-- Location: IOOBUF_X78_Y81_N2
\WiOutput1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_Q\(6),
	devoe => ww_devoe,
	o => ww_WiOutput1(6));

-- Location: IOOBUF_X66_Y81_N59
\WiOutput1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_Q\(7),
	devoe => ww_devoe,
	o => ww_WiOutput1(7));

-- Location: IOOBUF_X74_Y81_N42
\WiOutput1[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_Q\(8),
	devoe => ww_devoe,
	o => ww_WiOutput1(8));

-- Location: IOOBUF_X78_Y81_N53
\WiOutput1[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_Q\(9),
	devoe => ww_devoe,
	o => ww_WiOutput1(9));

-- Location: IOOBUF_X80_Y81_N19
\WiOutput1[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_Q\(10),
	devoe => ww_devoe,
	o => ww_WiOutput1(10));

-- Location: IOOBUF_X74_Y81_N76
\WiOutput1[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_Q\(11),
	devoe => ww_devoe,
	o => ww_WiOutput1(11));

-- Location: IOOBUF_X76_Y81_N2
\WiOutput1[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_Q\(12),
	devoe => ww_devoe,
	o => ww_WiOutput1(12));

-- Location: IOOBUF_X78_Y81_N19
\WiOutput1[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_Q\(13),
	devoe => ww_devoe,
	o => ww_WiOutput1(13));

-- Location: IOOBUF_X76_Y81_N19
\WiOutput1[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_Q\(14),
	devoe => ww_devoe,
	o => ww_WiOutput1(14));

-- Location: IOOBUF_X80_Y81_N36
\WiOutput1[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_Q\(15),
	devoe => ww_devoe,
	o => ww_WiOutput1(15));

-- Location: IOOBUF_X76_Y81_N36
\WiOutput2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_I\(0),
	devoe => ww_devoe,
	o => ww_WiOutput2(0));

-- Location: IOOBUF_X66_Y81_N42
\WiOutput2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_I\(1),
	devoe => ww_devoe,
	o => ww_WiOutput2(1));

-- Location: IOOBUF_X64_Y81_N53
\WiOutput2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_I\(2),
	devoe => ww_devoe,
	o => ww_WiOutput2(2));

-- Location: IOOBUF_X72_Y81_N19
\WiOutput2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_I\(3),
	devoe => ww_devoe,
	o => ww_WiOutput2(3));

-- Location: IOOBUF_X64_Y81_N36
\WiOutput2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_I\(4),
	devoe => ww_devoe,
	o => ww_WiOutput2(4));

-- Location: IOOBUF_X68_Y81_N2
\WiOutput2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_I\(5),
	devoe => ww_devoe,
	o => ww_WiOutput2(5));

-- Location: IOOBUF_X66_Y81_N93
\WiOutput2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_I\(6),
	devoe => ww_devoe,
	o => ww_WiOutput2(6));

-- Location: IOOBUF_X68_Y81_N36
\WiOutput2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_I\(7),
	devoe => ww_devoe,
	o => ww_WiOutput2(7));

-- Location: IOOBUF_X68_Y81_N53
\WiOutput2[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_I\(8),
	devoe => ww_devoe,
	o => ww_WiOutput2(8));

-- Location: IOOBUF_X72_Y81_N53
\WiOutput2[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_I\(9),
	devoe => ww_devoe,
	o => ww_WiOutput2(9));

-- Location: IOOBUF_X66_Y81_N76
\WiOutput2[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_I\(10),
	devoe => ww_devoe,
	o => ww_WiOutput2(10));

-- Location: IOOBUF_X64_Y81_N2
\WiOutput2[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_I\(11),
	devoe => ww_devoe,
	o => ww_WiOutput2(11));

-- Location: IOOBUF_X74_Y81_N93
\WiOutput2[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_I\(12),
	devoe => ww_devoe,
	o => ww_WiOutput2(12));

-- Location: IOOBUF_X72_Y81_N2
\WiOutput2[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_I\(13),
	devoe => ww_devoe,
	o => ww_WiOutput2(13));

-- Location: IOOBUF_X68_Y81_N19
\WiOutput2[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_I\(14),
	devoe => ww_devoe,
	o => ww_WiOutput2(14));

-- Location: IOOBUF_X72_Y81_N36
\WiOutput2[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modu1|MODU_output_I\(15),
	devoe => ww_devoe,
	o => ww_WiOutput2(15));

-- Location: IOIBUF_X56_Y81_N1
\CLK_50Mhz~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_50Mhz,
	o => \CLK_50Mhz~input_o\);

-- Location: PLLREFCLKSELECT_X89_Y80_N0
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
-- pragma translate_off
GENERIC MAP (
	pll_auto_clk_sw_en => "false",
	pll_clk_loss_edge => "both_edges",
	pll_clk_loss_sw_en => "false",
	pll_clk_sw_dly => 0,
	pll_clkin_0_src => "clk_0",
	pll_clkin_1_src => "ref_clk1",
	pll_manu_clk_sw_en => "false",
	pll_sw_refclk_src => "clk_0")
-- pragma translate_on
PORT MAP (
	clkin => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: IOIBUF_X88_Y81_N2
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FRACTIONALPLL_X89_Y74_N0
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "none",
	nreset_invert => "true",
	output_clock_frequency => "300.0 mhz",
	pll_atb => 0,
	pll_bwctrl => 4000,
	pll_cmp_buf_dly => "0 ps",
	pll_cp_comp => "true",
	pll_cp_current => 10,
	pll_ctrl_override_setting => "false",
	pll_dsm_dither => "disable",
	pll_dsm_out_sel => "disable",
	pll_dsm_reset => "false",
	pll_ecn_bypass => "false",
	pll_ecn_test_en => "false",
	pll_enable => "true",
	pll_fbclk_mux_1 => "glb",
	pll_fbclk_mux_2 => "m_cnt",
	pll_fractional_carry_out => 32,
	pll_fractional_division => 1,
	pll_fractional_division_string => "'0'",
	pll_fractional_value_ready => "true",
	pll_lf_testen => "false",
	pll_lock_fltr_cfg => 25,
	pll_lock_fltr_test => "false",
	pll_m_cnt_bypass_en => "false",
	pll_m_cnt_coarse_dly => "0 ps",
	pll_m_cnt_fine_dly => "0 ps",
	pll_m_cnt_hi_div => 6,
	pll_m_cnt_in_src => "ph_mux_clk",
	pll_m_cnt_lo_div => 6,
	pll_m_cnt_odd_div_duty_en => "false",
	pll_m_cnt_ph_mux_prst => 0,
	pll_m_cnt_prst => 1,
	pll_n_cnt_bypass_en => "false",
	pll_n_cnt_coarse_dly => "0 ps",
	pll_n_cnt_fine_dly => "0 ps",
	pll_n_cnt_hi_div => 1,
	pll_n_cnt_lo_div => 1,
	pll_n_cnt_odd_div_duty_en => "false",
	pll_ref_buf_dly => "0 ps",
	pll_reg_boost => 0,
	pll_regulator_bypass => "false",
	pll_ripplecap_ctrl => 0,
	pll_slf_rst => "false",
	pll_tclk_mux_en => "false",
	pll_tclk_sel => "n_src",
	pll_test_enable => "false",
	pll_testdn_enable => "false",
	pll_testup_enable => "false",
	pll_unlock_fltr_cfg => 2,
	pll_vco_div => 2,
	pll_vco_ph0_en => "true",
	pll_vco_ph1_en => "true",
	pll_vco_ph2_en => "true",
	pll_vco_ph3_en => "true",
	pll_vco_ph4_en => "true",
	pll_vco_ph5_en => "true",
	pll_vco_ph6_en => "true",
	pll_vco_ph7_en => "true",
	pll_vctrl_test_voltage => 750,
	reference_clock_frequency => "50.0 mhz",
	vccd0g_atb => "disable",
	vccd0g_output => 0,
	vccd1g_atb => "disable",
	vccd1g_output => 0,
	vccm1g_tap => 2,
	vccr_pd => "false",
	vcodiv_override => "false",
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	coreclkfb => \pll1|pll_main_inst|altera_pll_i|fboutclk_wire\(0),
	ecnc1test => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => \reset~input_o\,
	refclkin => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	cntnen => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \pll1|pll_main_inst|altera_pll_i|fboutclk_wire\(0),
	lock => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	tclk => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X89_Y78_N0
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\,
	shift => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	shiften => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X89_Y73_N1
\pll1|pll_main_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 2,
	dprio0_cnt_lo_div => 1,
	dprio0_cnt_odd_div_even_duty_en => "true",
	duty_cycle => 50,
	output_clock_frequency => "100.0 mhz",
	phase_shift => "0 ps",
  fractional_pll_index => 0,
  output_counter_index => 8)
-- pragma translate_on
PORT MAP (
	nen0 => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN8\,
	tclk0 => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \pll1|pll_main_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \pll1|pll_main_inst|altera_pll_i|outclk_wire\(1));

-- Location: CLKCTRL_G13
\pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \pll1|pll_main_inst|altera_pll_i|outclk_wire\(1),
	outclk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\);

-- Location: LABCELL_X79_Y75_N30
\inter1|Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add6~25_sumout\ = SUM(( \inter1|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \inter1|Add6~26\ = CARRY(( \inter1|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inter1|ALT_INV_counter\(0),
	cin => GND,
	sumout => \inter1|Add6~25_sumout\,
	cout => \inter1|Add6~26\);

-- Location: LABCELL_X81_Y76_N0
\inter1|Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~25_sumout\ = SUM(( \inter1|counter_out[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \inter1|Add7~26\ = CARRY(( \inter1|counter_out[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_counter_out[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \inter1|Add7~25_sumout\,
	cout => \inter1|Add7~26\);

-- Location: LABCELL_X79_Y75_N36
\inter1|Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add6~21_sumout\ = SUM(( \inter1|counter\(2) ) + ( GND ) + ( \inter1|Add6~30\ ))
-- \inter1|Add6~22\ = CARRY(( \inter1|counter\(2) ) + ( GND ) + ( \inter1|Add6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inter1|ALT_INV_counter\(2),
	cin => \inter1|Add6~30\,
	sumout => \inter1|Add6~21_sumout\,
	cout => \inter1|Add6~22\);

-- Location: LABCELL_X79_Y75_N39
\inter1|Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add6~17_sumout\ = SUM(( \inter1|counter\(3) ) + ( GND ) + ( \inter1|Add6~22\ ))
-- \inter1|Add6~18\ = CARRY(( \inter1|counter\(3) ) + ( GND ) + ( \inter1|Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inter1|ALT_INV_counter\(3),
	cin => \inter1|Add6~22\,
	sumout => \inter1|Add6~17_sumout\,
	cout => \inter1|Add6~18\);

-- Location: FF_X79_Y75_N53
\inter1|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add6~1_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_kmod16[1]~0_combout\,
	ena => \inter1|counter_kmod16[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter\(7));

-- Location: LABCELL_X79_Y75_N48
\inter1|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add6~5_sumout\ = SUM(( \inter1|counter\(6) ) + ( GND ) + ( \inter1|Add6~10\ ))
-- \inter1|Add6~6\ = CARRY(( \inter1|counter\(6) ) + ( GND ) + ( \inter1|Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inter1|ALT_INV_counter\(6),
	cin => \inter1|Add6~10\,
	sumout => \inter1|Add6~5_sumout\,
	cout => \inter1|Add6~6\);

-- Location: LABCELL_X79_Y75_N51
\inter1|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add6~1_sumout\ = SUM(( \inter1|counter\(7) ) + ( GND ) + ( \inter1|Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inter1|ALT_INV_counter\(7),
	cin => \inter1|Add6~6\,
	sumout => \inter1|Add6~1_sumout\);

-- Location: FF_X79_Y75_N52
\inter1|counter[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add6~1_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_kmod16[1]~0_combout\,
	ena => \inter1|counter_kmod16[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter[7]~DUPLICATE_q\);

-- Location: PLLOUTPUTCOUNTER_X89_Y80_N1
\pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 3,
	dprio0_cnt_lo_div => 3,
	dprio0_cnt_odd_div_even_duty_en => "false",
	duty_cycle => 50,
	output_clock_frequency => "50.0 mhz",
	phase_shift => "0 ps",
  fractional_pll_index => 0,
  output_counter_index => 1)
-- pragma translate_on
PORT MAP (
	nen0 => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTEN1\,
	tclk0 => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \pll1|pll_main_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \pll1|pll_main_inst|altera_pll_i|outclk_wire\(0));

-- Location: CLKCTRL_G11
\pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \pll1|pll_main_inst|altera_pll_i|outclk_wire\(0),
	outclk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\);

-- Location: IOIBUF_X80_Y81_N52
\TopWiMax_in_valid~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TopWiMax_in_valid,
	o => \TopWiMax_in_valid~input_o\);

-- Location: LABCELL_X83_Y77_N0
\fec1|Add3~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~121_sumout\ = SUM(( \fec1|counter_shift_and_output\(0) ) + ( VCC ) + ( !VCC ))
-- \fec1|Add3~122\ = CARRY(( \fec1|counter_shift_and_output\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_shift_and_output\(0),
	cin => GND,
	sumout => \fec1|Add3~121_sumout\,
	cout => \fec1|Add3~122\);

-- Location: MLABCELL_X82_Y76_N0
\fec1|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|LessThan5~0_combout\ = ( !\fec1|counter_shift_and_output\(2) & ( (!\fec1|counter_shift_and_output\(1) & (!\fec1|counter_shift_and_output\(4) & !\fec1|counter_shift_and_output\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_shift_and_output\(1),
	datac => \fec1|ALT_INV_counter_shift_and_output\(4),
	datad => \fec1|ALT_INV_counter_shift_and_output\(3),
	dataf => \fec1|ALT_INV_counter_shift_and_output\(2),
	combout => \fec1|LessThan5~0_combout\);

-- Location: MLABCELL_X82_Y77_N15
\fec1|Equal6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Equal6~4_combout\ = ( \fec1|counter_shift_and_output\(6) & ( !\fec1|counter_shift_and_output\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fec1|ALT_INV_counter_shift_and_output\(0),
	dataf => \fec1|ALT_INV_counter_shift_and_output\(6),
	combout => \fec1|Equal6~4_combout\);

-- Location: LABCELL_X80_Y78_N0
\fec1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~9_sumout\ = SUM(( \fec1|counter_buffer_input\(0) ) + ( VCC ) + ( !VCC ))
-- \fec1|Add1~10\ = CARRY(( \fec1|counter_buffer_input\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_buffer_input\(0),
	cin => GND,
	sumout => \fec1|Add1~9_sumout\,
	cout => \fec1|Add1~10\);

-- Location: LABCELL_X80_Y78_N18
\fec1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~17_sumout\ = SUM(( \fec1|counter_buffer_input\(6) ) + ( GND ) + ( \fec1|Add1~22\ ))
-- \fec1|Add1~18\ = CARRY(( \fec1|counter_buffer_input\(6) ) + ( GND ) + ( \fec1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_buffer_input\(6),
	cin => \fec1|Add1~22\,
	sumout => \fec1|Add1~17_sumout\,
	cout => \fec1|Add1~18\);

-- Location: LABCELL_X80_Y78_N21
\fec1|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~81_sumout\ = SUM(( \fec1|counter_buffer_input\(7) ) + ( GND ) + ( \fec1|Add1~18\ ))
-- \fec1|Add1~82\ = CARRY(( \fec1|counter_buffer_input\(7) ) + ( GND ) + ( \fec1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(7),
	cin => \fec1|Add1~18\,
	sumout => \fec1|Add1~81_sumout\,
	cout => \fec1|Add1~82\);

-- Location: LABCELL_X80_Y78_N51
\fec1|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~89_sumout\ = SUM(( \fec1|counter_buffer_input\(17) ) + ( GND ) + ( \fec1|Add1~126\ ))
-- \fec1|Add1~90\ = CARRY(( \fec1|counter_buffer_input\(17) ) + ( GND ) + ( \fec1|Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(17),
	cin => \fec1|Add1~126\,
	sumout => \fec1|Add1~89_sumout\,
	cout => \fec1|Add1~90\);

-- Location: LABCELL_X80_Y78_N54
\fec1|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~113_sumout\ = SUM(( \fec1|counter_buffer_input\(18) ) + ( GND ) + ( \fec1|Add1~90\ ))
-- \fec1|Add1~114\ = CARRY(( \fec1|counter_buffer_input\(18) ) + ( GND ) + ( \fec1|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_buffer_input\(18),
	cin => \fec1|Add1~90\,
	sumout => \fec1|Add1~113_sumout\,
	cout => \fec1|Add1~114\);

-- Location: FF_X80_Y78_N56
\fec1|counter_buffer_input[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~113_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(18));

-- Location: LABCELL_X80_Y78_N57
\fec1|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~57_sumout\ = SUM(( \fec1|counter_buffer_input\(19) ) + ( GND ) + ( \fec1|Add1~114\ ))
-- \fec1|Add1~58\ = CARRY(( \fec1|counter_buffer_input\(19) ) + ( GND ) + ( \fec1|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_buffer_input\(19),
	cin => \fec1|Add1~114\,
	sumout => \fec1|Add1~57_sumout\,
	cout => \fec1|Add1~58\);

-- Location: FF_X80_Y78_N59
\fec1|counter_buffer_input[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~57_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(19));

-- Location: LABCELL_X80_Y77_N0
\fec1|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~61_sumout\ = SUM(( \fec1|counter_buffer_input\(20) ) + ( GND ) + ( \fec1|Add1~58\ ))
-- \fec1|Add1~62\ = CARRY(( \fec1|counter_buffer_input\(20) ) + ( GND ) + ( \fec1|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_buffer_input\(20),
	cin => \fec1|Add1~58\,
	sumout => \fec1|Add1~61_sumout\,
	cout => \fec1|Add1~62\);

-- Location: FF_X80_Y77_N2
\fec1|counter_buffer_input[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~61_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(20));

-- Location: LABCELL_X80_Y77_N3
\fec1|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~65_sumout\ = SUM(( \fec1|counter_buffer_input\(21) ) + ( GND ) + ( \fec1|Add1~62\ ))
-- \fec1|Add1~66\ = CARRY(( \fec1|counter_buffer_input\(21) ) + ( GND ) + ( \fec1|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(21),
	cin => \fec1|Add1~62\,
	sumout => \fec1|Add1~65_sumout\,
	cout => \fec1|Add1~66\);

-- Location: FF_X80_Y77_N5
\fec1|counter_buffer_input[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~65_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(21));

-- Location: LABCELL_X80_Y77_N6
\fec1|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~69_sumout\ = SUM(( \fec1|counter_buffer_input\(22) ) + ( GND ) + ( \fec1|Add1~66\ ))
-- \fec1|Add1~70\ = CARRY(( \fec1|counter_buffer_input\(22) ) + ( GND ) + ( \fec1|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec1|ALT_INV_counter_buffer_input\(22),
	cin => \fec1|Add1~66\,
	sumout => \fec1|Add1~69_sumout\,
	cout => \fec1|Add1~70\);

-- Location: FF_X80_Y77_N8
\fec1|counter_buffer_input[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~69_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(22));

-- Location: LABCELL_X80_Y77_N9
\fec1|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~93_sumout\ = SUM(( \fec1|counter_buffer_input\(23) ) + ( GND ) + ( \fec1|Add1~70\ ))
-- \fec1|Add1~94\ = CARRY(( \fec1|counter_buffer_input\(23) ) + ( GND ) + ( \fec1|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_buffer_input\(23),
	cin => \fec1|Add1~70\,
	sumout => \fec1|Add1~93_sumout\,
	cout => \fec1|Add1~94\);

-- Location: FF_X80_Y77_N11
\fec1|counter_buffer_input[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~93_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(23));

-- Location: LABCELL_X80_Y77_N12
\fec1|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~97_sumout\ = SUM(( \fec1|counter_buffer_input\(24) ) + ( GND ) + ( \fec1|Add1~94\ ))
-- \fec1|Add1~98\ = CARRY(( \fec1|counter_buffer_input\(24) ) + ( GND ) + ( \fec1|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec1|ALT_INV_counter_buffer_input\(24),
	cin => \fec1|Add1~94\,
	sumout => \fec1|Add1~97_sumout\,
	cout => \fec1|Add1~98\);

-- Location: FF_X80_Y77_N14
\fec1|counter_buffer_input[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~97_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(24));

-- Location: LABCELL_X80_Y77_N15
\fec1|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~101_sumout\ = SUM(( \fec1|counter_buffer_input\(25) ) + ( GND ) + ( \fec1|Add1~98\ ))
-- \fec1|Add1~102\ = CARRY(( \fec1|counter_buffer_input\(25) ) + ( GND ) + ( \fec1|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_buffer_input\(25),
	cin => \fec1|Add1~98\,
	sumout => \fec1|Add1~101_sumout\,
	cout => \fec1|Add1~102\);

-- Location: FF_X80_Y77_N17
\fec1|counter_buffer_input[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~101_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(25));

-- Location: LABCELL_X80_Y77_N18
\fec1|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~105_sumout\ = SUM(( \fec1|counter_buffer_input\(26) ) + ( GND ) + ( \fec1|Add1~102\ ))
-- \fec1|Add1~106\ = CARRY(( \fec1|counter_buffer_input\(26) ) + ( GND ) + ( \fec1|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_buffer_input\(26),
	cin => \fec1|Add1~102\,
	sumout => \fec1|Add1~105_sumout\,
	cout => \fec1|Add1~106\);

-- Location: FF_X80_Y77_N20
\fec1|counter_buffer_input[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~105_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(26));

-- Location: LABCELL_X80_Y77_N21
\fec1|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~109_sumout\ = SUM(( \fec1|counter_buffer_input\(27) ) + ( GND ) + ( \fec1|Add1~106\ ))
-- \fec1|Add1~110\ = CARRY(( \fec1|counter_buffer_input\(27) ) + ( GND ) + ( \fec1|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(27),
	cin => \fec1|Add1~106\,
	sumout => \fec1|Add1~109_sumout\,
	cout => \fec1|Add1~110\);

-- Location: FF_X80_Y77_N23
\fec1|counter_buffer_input[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~109_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(27));

-- Location: LABCELL_X80_Y77_N24
\fec1|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~121_sumout\ = SUM(( \fec1|counter_buffer_input\(28) ) + ( GND ) + ( \fec1|Add1~110\ ))
-- \fec1|Add1~122\ = CARRY(( \fec1|counter_buffer_input\(28) ) + ( GND ) + ( \fec1|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_buffer_input\(28),
	cin => \fec1|Add1~110\,
	sumout => \fec1|Add1~121_sumout\,
	cout => \fec1|Add1~122\);

-- Location: FF_X80_Y77_N26
\fec1|counter_buffer_input[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~121_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(28));

-- Location: LABCELL_X80_Y77_N27
\fec1|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~85_sumout\ = SUM(( \fec1|counter_buffer_input\(29) ) + ( GND ) + ( \fec1|Add1~122\ ))
-- \fec1|Add1~86\ = CARRY(( \fec1|counter_buffer_input\(29) ) + ( GND ) + ( \fec1|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(29),
	cin => \fec1|Add1~122\,
	sumout => \fec1|Add1~85_sumout\,
	cout => \fec1|Add1~86\);

-- Location: FF_X80_Y77_N29
\fec1|counter_buffer_input[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~85_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(29));

-- Location: LABCELL_X80_Y77_N30
\fec1|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~117_sumout\ = SUM(( \fec1|counter_buffer_input\(30) ) + ( GND ) + ( \fec1|Add1~86\ ))
-- \fec1|Add1~118\ = CARRY(( \fec1|counter_buffer_input\(30) ) + ( GND ) + ( \fec1|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec1|ALT_INV_counter_buffer_input\(30),
	cin => \fec1|Add1~86\,
	sumout => \fec1|Add1~117_sumout\,
	cout => \fec1|Add1~118\);

-- Location: FF_X80_Y77_N32
\fec1|counter_buffer_input[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~117_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(30));

-- Location: LABCELL_X80_Y77_N48
\fec1|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|process_0~3_combout\ = ( !\fec1|counter_buffer_input\(27) & ( !\fec1|counter_buffer_input\(16) & ( (!\fec1|counter_buffer_input\(26) & (!\fec1|counter_buffer_input\(30) & (!\fec1|counter_buffer_input\(28) & !\fec1|counter_buffer_input\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(26),
	datab => \fec1|ALT_INV_counter_buffer_input\(30),
	datac => \fec1|ALT_INV_counter_buffer_input\(28),
	datad => \fec1|ALT_INV_counter_buffer_input\(18),
	datae => \fec1|ALT_INV_counter_buffer_input\(27),
	dataf => \fec1|ALT_INV_counter_buffer_input\(16),
	combout => \fec1|process_0~3_combout\);

-- Location: LABCELL_X80_Y77_N36
\fec1|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|process_0~1_combout\ = ( !\fec1|counter_buffer_input\(20) & ( !\fec1|counter_buffer_input\(12) & ( (!\fec1|counter_buffer_input\(19) & (!\fec1|counter_buffer_input\(22) & (!\fec1|counter_buffer_input\(21) & !\fec1|counter_buffer_input\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(19),
	datab => \fec1|ALT_INV_counter_buffer_input\(22),
	datac => \fec1|ALT_INV_counter_buffer_input\(21),
	datad => \fec1|ALT_INV_counter_buffer_input\(11),
	datae => \fec1|ALT_INV_counter_buffer_input\(20),
	dataf => \fec1|ALT_INV_counter_buffer_input\(12),
	combout => \fec1|process_0~1_combout\);

-- Location: MLABCELL_X78_Y78_N0
\fec1|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Equal5~0_combout\ = ( \fec1|counter_buffer_input\(0) & ( (\fec1|counter_buffer_input\(1) & \fec1|counter_buffer_input\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(1),
	datab => \fec1|ALT_INV_counter_buffer_input\(2),
	dataf => \fec1|ALT_INV_counter_buffer_input\(0),
	combout => \fec1|Equal5~0_combout\);

-- Location: LABCELL_X81_Y78_N0
\fec1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|process_0~0_combout\ = ( !\fec1|counter_buffer_input\(14) & ( !\fec1|counter_buffer_input\(8) & ( (!\fec1|counter_buffer_input\(10) & (!\fec1|counter_buffer_input\(13) & (!\fec1|counter_buffer_input\(15) & !\fec1|counter_buffer_input\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(10),
	datab => \fec1|ALT_INV_counter_buffer_input\(13),
	datac => \fec1|ALT_INV_counter_buffer_input\(15),
	datad => \fec1|ALT_INV_counter_buffer_input\(9),
	datae => \fec1|ALT_INV_counter_buffer_input\(14),
	dataf => \fec1|ALT_INV_counter_buffer_input\(8),
	combout => \fec1|process_0~0_combout\);

-- Location: LABCELL_X81_Y78_N30
\fec1|process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|process_0~7_combout\ = ( \fec1|counter_buffer_input\(3) & ( (!\fec1|counter_buffer_input\(31) & (\fec1|counter_buffer_input\(4) & (\fec1|counter_buffer_input\(6) & !\fec1|counter_buffer_input\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(31),
	datab => \fec1|ALT_INV_counter_buffer_input\(4),
	datac => \fec1|ALT_INV_counter_buffer_input\(6),
	datad => \fec1|ALT_INV_counter_buffer_input\(5),
	dataf => \fec1|ALT_INV_counter_buffer_input\(3),
	combout => \fec1|process_0~7_combout\);

-- Location: LABCELL_X81_Y78_N42
\fec1|Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Equal5~1_combout\ = ( \fec1|process_0~0_combout\ & ( \fec1|process_0~7_combout\ & ( (\fec1|process_0~3_combout\ & (\fec1|process_0~2_combout\ & (\fec1|process_0~1_combout\ & \fec1|Equal5~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_process_0~3_combout\,
	datab => \fec1|ALT_INV_process_0~2_combout\,
	datac => \fec1|ALT_INV_process_0~1_combout\,
	datad => \fec1|ALT_INV_Equal5~0_combout\,
	datae => \fec1|ALT_INV_process_0~0_combout\,
	dataf => \fec1|ALT_INV_process_0~7_combout\,
	combout => \fec1|Equal5~1_combout\);

-- Location: LABCELL_X81_Y77_N54
\fec1|counter_buffer_input[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|counter_buffer_input[7]~1_combout\ = ( \TopWiMax_in_valid~input_o\ & ( (!\fec1|Equal5~1_combout\ & (\fec1|input_state_reg.input_buffer~q\ & (!\fec1|LessThan0~1_combout\ & !\fec1|counter_buffer_input\(31)))) ) ) # ( !\TopWiMax_in_valid~input_o\ & ( 
-- (!\fec1|input_state_reg.input_buffer~q\) # ((!\fec1|Equal5~1_combout\ & (!\fec1|LessThan0~1_combout\ & !\fec1|counter_buffer_input\(31)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011001100111011001100110000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_Equal5~1_combout\,
	datab => \fec1|ALT_INV_input_state_reg.input_buffer~q\,
	datac => \fec1|ALT_INV_LessThan0~1_combout\,
	datad => \fec1|ALT_INV_counter_buffer_input\(31),
	dataf => \ALT_INV_TopWiMax_in_valid~input_o\,
	combout => \fec1|counter_buffer_input[7]~1_combout\);

-- Location: MLABCELL_X82_Y77_N54
\fec1|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|LessThan5~1_combout\ = ( \fec1|counter_shift_and_output\(6) & ( \fec1|counter_shift_and_output\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_shift_and_output\(7),
	dataf => \fec1|ALT_INV_counter_shift_and_output\(6),
	combout => \fec1|LessThan5~1_combout\);

-- Location: MLABCELL_X82_Y76_N27
\fec1|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|LessThan2~0_combout\ = ( \fec1|counter_shift_and_output\(6) & ( (!\fec1|counter_shift_and_output\(7) & !\fec1|counter_shift_and_output\(5)) ) ) # ( !\fec1|counter_shift_and_output\(6) & ( !\fec1|counter_shift_and_output\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_shift_and_output\(7),
	datad => \fec1|ALT_INV_counter_shift_and_output\(5),
	dataf => \fec1|ALT_INV_counter_shift_and_output\(6),
	combout => \fec1|LessThan2~0_combout\);

-- Location: LABCELL_X83_Y77_N21
\fec1|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~5_sumout\ = SUM(( \fec1|counter_shift_and_output\(7) ) + ( GND ) + ( \fec1|Add3~126\ ))
-- \fec1|Add3~6\ = CARRY(( \fec1|counter_shift_and_output\(7) ) + ( GND ) + ( \fec1|Add3~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_shift_and_output\(7),
	cin => \fec1|Add3~126\,
	sumout => \fec1|Add3~5_sumout\,
	cout => \fec1|Add3~6\);

-- Location: LABCELL_X83_Y77_N24
\fec1|Add3~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~93_sumout\ = SUM(( \fec1|counter_shift_and_output\(8) ) + ( GND ) + ( \fec1|Add3~6\ ))
-- \fec1|Add3~94\ = CARRY(( \fec1|counter_shift_and_output\(8) ) + ( GND ) + ( \fec1|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_shift_and_output\(8),
	cin => \fec1|Add3~6\,
	sumout => \fec1|Add3~93_sumout\,
	cout => \fec1|Add3~94\);

-- Location: MLABCELL_X82_Y77_N6
\fec1|Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Equal6~1_combout\ = ( !\fec1|counter_shift_and_output\(11) & ( !\fec1|counter_shift_and_output\(13) & ( (!\fec1|counter_shift_and_output\(12) & (!\fec1|counter_shift_and_output\(16) & (!\fec1|counter_shift_and_output\(15) & 
-- !\fec1|counter_shift_and_output\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_shift_and_output\(12),
	datab => \fec1|ALT_INV_counter_shift_and_output\(16),
	datac => \fec1|ALT_INV_counter_shift_and_output\(15),
	datad => \fec1|ALT_INV_counter_shift_and_output\(14),
	datae => \fec1|ALT_INV_counter_shift_and_output\(11),
	dataf => \fec1|ALT_INV_counter_shift_and_output\(13),
	combout => \fec1|Equal6~1_combout\);

-- Location: LABCELL_X83_Y76_N42
\fec1|Equal6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Equal6~2_combout\ = ( !\fec1|counter_shift_and_output\(25) & ( !\fec1|counter_shift_and_output\(23) & ( (!\fec1|counter_shift_and_output\(21) & (!\fec1|counter_shift_and_output\(22) & (!\fec1|counter_shift_and_output\(26) & 
-- !\fec1|counter_shift_and_output\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_shift_and_output\(21),
	datab => \fec1|ALT_INV_counter_shift_and_output\(22),
	datac => \fec1|ALT_INV_counter_shift_and_output\(26),
	datad => \fec1|ALT_INV_counter_shift_and_output\(24),
	datae => \fec1|ALT_INV_counter_shift_and_output\(25),
	dataf => \fec1|ALT_INV_counter_shift_and_output\(23),
	combout => \fec1|Equal6~2_combout\);

-- Location: LABCELL_X81_Y77_N48
\fec1|Equal6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Equal6~3_combout\ = ( !\fec1|counter_shift_and_output\(29) & ( !\fec1|counter_shift_and_output\(8) & ( (!\fec1|counter_shift_and_output\(27) & (!\fec1|counter_shift_and_output\(10) & (!\fec1|counter_shift_and_output\(28) & 
-- !\fec1|counter_shift_and_output\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_shift_and_output\(27),
	datab => \fec1|ALT_INV_counter_shift_and_output\(10),
	datac => \fec1|ALT_INV_counter_shift_and_output\(28),
	datad => \fec1|ALT_INV_counter_shift_and_output\(9),
	datae => \fec1|ALT_INV_counter_shift_and_output\(29),
	dataf => \fec1|ALT_INV_counter_shift_and_output\(8),
	combout => \fec1|Equal6~3_combout\);

-- Location: LABCELL_X83_Y76_N36
\fec1|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Equal6~0_combout\ = ( !\fec1|counter_shift_and_output\(17) & ( (!\fec1|counter_shift_and_output\(18) & (!\fec1|counter_shift_and_output\(20) & !\fec1|counter_shift_and_output\(19))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec1|ALT_INV_counter_shift_and_output\(18),
	datac => \fec1|ALT_INV_counter_shift_and_output\(20),
	datad => \fec1|ALT_INV_counter_shift_and_output\(19),
	dataf => \fec1|ALT_INV_counter_shift_and_output\(17),
	combout => \fec1|Equal6~0_combout\);

-- Location: LABCELL_X83_Y76_N51
\fec1|Equal6~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Equal6~8_combout\ = ( !\fec1|counter_shift_and_output\(31) & ( !\fec1|counter_shift_and_output\(30) & ( (\fec1|Equal6~1_combout\ & (\fec1|Equal6~2_combout\ & (\fec1|Equal6~3_combout\ & \fec1|Equal6~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_Equal6~1_combout\,
	datab => \fec1|ALT_INV_Equal6~2_combout\,
	datac => \fec1|ALT_INV_Equal6~3_combout\,
	datad => \fec1|ALT_INV_Equal6~0_combout\,
	datae => \fec1|ALT_INV_counter_shift_and_output\(31),
	dataf => \fec1|ALT_INV_counter_shift_and_output\(30),
	combout => \fec1|Equal6~8_combout\);

-- Location: MLABCELL_X82_Y77_N18
\fec1|Selector34~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector34~3_combout\ = ( !\TopWiMax_in_valid~input_o\ & ( \fec1|Equal6~8_combout\ & ( (\fec1|LessThan5~0_combout\ & (\fec1|Equal6~4_combout\ & (!\fec1|counter_shift_and_output\(7) $ (!\fec1|counter_shift_and_output\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_shift_and_output\(7),
	datab => \fec1|ALT_INV_LessThan5~0_combout\,
	datac => \fec1|ALT_INV_counter_shift_and_output\(5),
	datad => \fec1|ALT_INV_Equal6~4_combout\,
	datae => \ALT_INV_TopWiMax_in_valid~input_o\,
	dataf => \fec1|ALT_INV_Equal6~8_combout\,
	combout => \fec1|Selector34~3_combout\);

-- Location: MLABCELL_X82_Y76_N24
\fec1|LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|LessThan4~0_combout\ = ( \fec1|Equal6~2_combout\ & ( (!\fec1|counter_shift_and_output\(30) & (\fec1|Equal6~1_combout\ & (\fec1|Equal6~3_combout\ & \fec1|Equal6~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_shift_and_output\(30),
	datab => \fec1|ALT_INV_Equal6~1_combout\,
	datac => \fec1|ALT_INV_Equal6~3_combout\,
	datad => \fec1|ALT_INV_Equal6~0_combout\,
	dataf => \fec1|ALT_INV_Equal6~2_combout\,
	combout => \fec1|LessThan4~0_combout\);

-- Location: MLABCELL_X82_Y76_N54
\fec1|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Equal8~0_combout\ = ( \fec1|counter_shift_and_output\(2) & ( \fec1|counter_shift_and_output\(0) & ( (\fec1|counter_shift_and_output\(1) & (\fec1|counter_shift_and_output\(5) & (\fec1|counter_shift_and_output\(4) & 
-- \fec1|counter_shift_and_output\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_shift_and_output\(1),
	datab => \fec1|ALT_INV_counter_shift_and_output\(5),
	datac => \fec1|ALT_INV_counter_shift_and_output\(4),
	datad => \fec1|ALT_INV_counter_shift_and_output\(3),
	datae => \fec1|ALT_INV_counter_shift_and_output\(2),
	dataf => \fec1|ALT_INV_counter_shift_and_output\(0),
	combout => \fec1|Equal8~0_combout\);

-- Location: MLABCELL_X82_Y76_N12
\fec1|Equal8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Equal8~1_combout\ = ( \fec1|counter_shift_and_output\(7) & ( (!\fec1|counter_shift_and_output\(6) & \fec1|Equal8~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_shift_and_output\(6),
	datac => \fec1|ALT_INV_Equal8~0_combout\,
	dataf => \fec1|ALT_INV_counter_shift_and_output\(7),
	combout => \fec1|Equal8~1_combout\);

-- Location: MLABCELL_X82_Y77_N42
\fec1|counter_shift_and_output[21]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|counter_shift_and_output[21]~2_combout\ = ( !\fec1|counter_shift_and_output\(31) & ( \fec1|Equal8~1_combout\ & ( \fec1|LessThan4~0_combout\ ) ) ) # ( !\fec1|counter_shift_and_output\(31) & ( !\fec1|Equal8~1_combout\ & ( (\fec1|Equal6~6_combout\ & 
-- (\fec1|LessThan5~0_combout\ & (\fec1|LessThan4~0_combout\ & \fec1|Equal6~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_Equal6~6_combout\,
	datab => \fec1|ALT_INV_LessThan5~0_combout\,
	datac => \fec1|ALT_INV_LessThan4~0_combout\,
	datad => \fec1|ALT_INV_Equal6~4_combout\,
	datae => \fec1|ALT_INV_counter_shift_and_output\(31),
	dataf => \fec1|ALT_INV_Equal8~1_combout\,
	combout => \fec1|counter_shift_and_output[21]~2_combout\);

-- Location: LABCELL_X81_Y78_N36
\fec1|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|process_0~4_combout\ = ( \fec1|process_0~2_combout\ & ( (\fec1|process_0~1_combout\ & (\fec1|process_0~3_combout\ & \fec1|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_process_0~1_combout\,
	datac => \fec1|ALT_INV_process_0~3_combout\,
	datad => \fec1|ALT_INV_process_0~0_combout\,
	dataf => \fec1|ALT_INV_process_0~2_combout\,
	combout => \fec1|process_0~4_combout\);

-- Location: LABCELL_X81_Y78_N54
\fec1|Selector34~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector34~2_combout\ = ( \fec1|process_0~4_combout\ & ( !\fec1|LessThan0~1_combout\ & ( (\fec1|input_state_reg.input_buffer~q\ & (\fec1|process_0~7_combout\ & (!\fec1|counter_buffer_input\(31) & \fec1|Equal5~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_input_state_reg.input_buffer~q\,
	datab => \fec1|ALT_INV_process_0~7_combout\,
	datac => \fec1|ALT_INV_counter_buffer_input\(31),
	datad => \fec1|ALT_INV_Equal5~0_combout\,
	datae => \fec1|ALT_INV_process_0~4_combout\,
	dataf => \fec1|ALT_INV_LessThan0~1_combout\,
	combout => \fec1|Selector34~2_combout\);

-- Location: MLABCELL_X82_Y77_N48
\fec1|counter_shift_and_output[21]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|counter_shift_and_output[21]~3_combout\ = ( \fec1|Selector33~0_combout\ & ( \fec1|Selector34~2_combout\ ) ) # ( !\fec1|Selector33~0_combout\ & ( \fec1|Selector34~2_combout\ ) ) # ( \fec1|Selector33~0_combout\ & ( !\fec1|Selector34~2_combout\ & ( 
-- \fec1|input_state_reg.PingPong_state~q\ ) ) ) # ( !\fec1|Selector33~0_combout\ & ( !\fec1|Selector34~2_combout\ & ( (\fec1|input_state_reg.PingPong_state~q\ & (((\fec1|counter_shift_and_output[21]~2_combout\) # (\fec1|Equal5~1_combout\)) # 
-- (\fec1|Selector34~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_Selector34~3_combout\,
	datab => \fec1|ALT_INV_Equal5~1_combout\,
	datac => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datad => \fec1|ALT_INV_counter_shift_and_output[21]~2_combout\,
	datae => \fec1|ALT_INV_Selector33~0_combout\,
	dataf => \fec1|ALT_INV_Selector34~2_combout\,
	combout => \fec1|counter_shift_and_output[21]~3_combout\);

-- Location: FF_X83_Y77_N26
\fec1|counter_shift_and_output[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~93_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(8));

-- Location: LABCELL_X83_Y77_N27
\fec1|Add3~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~97_sumout\ = SUM(( \fec1|counter_shift_and_output\(9) ) + ( GND ) + ( \fec1|Add3~94\ ))
-- \fec1|Add3~98\ = CARRY(( \fec1|counter_shift_and_output\(9) ) + ( GND ) + ( \fec1|Add3~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_shift_and_output\(9),
	cin => \fec1|Add3~94\,
	sumout => \fec1|Add3~97_sumout\,
	cout => \fec1|Add3~98\);

-- Location: FF_X83_Y77_N29
\fec1|counter_shift_and_output[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~97_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(9));

-- Location: LABCELL_X83_Y77_N30
\fec1|Add3~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~101_sumout\ = SUM(( \fec1|counter_shift_and_output\(10) ) + ( GND ) + ( \fec1|Add3~98\ ))
-- \fec1|Add3~102\ = CARRY(( \fec1|counter_shift_and_output\(10) ) + ( GND ) + ( \fec1|Add3~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec1|ALT_INV_counter_shift_and_output\(10),
	cin => \fec1|Add3~98\,
	sumout => \fec1|Add3~101_sumout\,
	cout => \fec1|Add3~102\);

-- Location: FF_X83_Y77_N32
\fec1|counter_shift_and_output[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~101_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(10));

-- Location: LABCELL_X83_Y77_N33
\fec1|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~33_sumout\ = SUM(( \fec1|counter_shift_and_output\(11) ) + ( GND ) + ( \fec1|Add3~102\ ))
-- \fec1|Add3~34\ = CARRY(( \fec1|counter_shift_and_output\(11) ) + ( GND ) + ( \fec1|Add3~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_shift_and_output\(11),
	cin => \fec1|Add3~102\,
	sumout => \fec1|Add3~33_sumout\,
	cout => \fec1|Add3~34\);

-- Location: FF_X83_Y77_N35
\fec1|counter_shift_and_output[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~33_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(11));

-- Location: LABCELL_X83_Y77_N36
\fec1|Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~37_sumout\ = SUM(( \fec1|counter_shift_and_output\(12) ) + ( GND ) + ( \fec1|Add3~34\ ))
-- \fec1|Add3~38\ = CARRY(( \fec1|counter_shift_and_output\(12) ) + ( GND ) + ( \fec1|Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_shift_and_output\(12),
	cin => \fec1|Add3~34\,
	sumout => \fec1|Add3~37_sumout\,
	cout => \fec1|Add3~38\);

-- Location: FF_X83_Y77_N38
\fec1|counter_shift_and_output[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~37_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(12));

-- Location: LABCELL_X83_Y77_N39
\fec1|Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~41_sumout\ = SUM(( \fec1|counter_shift_and_output\(13) ) + ( GND ) + ( \fec1|Add3~38\ ))
-- \fec1|Add3~42\ = CARRY(( \fec1|counter_shift_and_output\(13) ) + ( GND ) + ( \fec1|Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_shift_and_output\(13),
	cin => \fec1|Add3~38\,
	sumout => \fec1|Add3~41_sumout\,
	cout => \fec1|Add3~42\);

-- Location: FF_X83_Y77_N41
\fec1|counter_shift_and_output[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~41_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(13));

-- Location: LABCELL_X83_Y77_N42
\fec1|Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~45_sumout\ = SUM(( \fec1|counter_shift_and_output\(14) ) + ( GND ) + ( \fec1|Add3~42\ ))
-- \fec1|Add3~46\ = CARRY(( \fec1|counter_shift_and_output\(14) ) + ( GND ) + ( \fec1|Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec1|ALT_INV_counter_shift_and_output\(14),
	cin => \fec1|Add3~42\,
	sumout => \fec1|Add3~45_sumout\,
	cout => \fec1|Add3~46\);

-- Location: FF_X83_Y77_N44
\fec1|counter_shift_and_output[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~45_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(14));

-- Location: LABCELL_X83_Y77_N45
\fec1|Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~49_sumout\ = SUM(( \fec1|counter_shift_and_output\(15) ) + ( GND ) + ( \fec1|Add3~46\ ))
-- \fec1|Add3~50\ = CARRY(( \fec1|counter_shift_and_output\(15) ) + ( GND ) + ( \fec1|Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_shift_and_output\(15),
	cin => \fec1|Add3~46\,
	sumout => \fec1|Add3~49_sumout\,
	cout => \fec1|Add3~50\);

-- Location: FF_X83_Y77_N47
\fec1|counter_shift_and_output[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~49_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(15));

-- Location: LABCELL_X83_Y77_N48
\fec1|Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~53_sumout\ = SUM(( \fec1|counter_shift_and_output\(16) ) + ( GND ) + ( \fec1|Add3~50\ ))
-- \fec1|Add3~54\ = CARRY(( \fec1|counter_shift_and_output\(16) ) + ( GND ) + ( \fec1|Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_shift_and_output\(16),
	cin => \fec1|Add3~50\,
	sumout => \fec1|Add3~53_sumout\,
	cout => \fec1|Add3~54\);

-- Location: FF_X83_Y77_N50
\fec1|counter_shift_and_output[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~53_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(16));

-- Location: LABCELL_X83_Y77_N51
\fec1|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~17_sumout\ = SUM(( \fec1|counter_shift_and_output\(17) ) + ( GND ) + ( \fec1|Add3~54\ ))
-- \fec1|Add3~18\ = CARRY(( \fec1|counter_shift_and_output\(17) ) + ( GND ) + ( \fec1|Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_shift_and_output\(17),
	cin => \fec1|Add3~54\,
	sumout => \fec1|Add3~17_sumout\,
	cout => \fec1|Add3~18\);

-- Location: FF_X83_Y77_N53
\fec1|counter_shift_and_output[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~17_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(17));

-- Location: LABCELL_X83_Y77_N54
\fec1|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~21_sumout\ = SUM(( \fec1|counter_shift_and_output\(18) ) + ( GND ) + ( \fec1|Add3~18\ ))
-- \fec1|Add3~22\ = CARRY(( \fec1|counter_shift_and_output\(18) ) + ( GND ) + ( \fec1|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_shift_and_output\(18),
	cin => \fec1|Add3~18\,
	sumout => \fec1|Add3~21_sumout\,
	cout => \fec1|Add3~22\);

-- Location: FF_X83_Y77_N56
\fec1|counter_shift_and_output[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~21_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(18));

-- Location: LABCELL_X83_Y77_N57
\fec1|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~25_sumout\ = SUM(( \fec1|counter_shift_and_output\(19) ) + ( GND ) + ( \fec1|Add3~22\ ))
-- \fec1|Add3~26\ = CARRY(( \fec1|counter_shift_and_output\(19) ) + ( GND ) + ( \fec1|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_shift_and_output\(19),
	cin => \fec1|Add3~22\,
	sumout => \fec1|Add3~25_sumout\,
	cout => \fec1|Add3~26\);

-- Location: FF_X83_Y77_N59
\fec1|counter_shift_and_output[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~25_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(19));

-- Location: LABCELL_X83_Y76_N0
\fec1|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~29_sumout\ = SUM(( \fec1|counter_shift_and_output\(20) ) + ( GND ) + ( \fec1|Add3~26\ ))
-- \fec1|Add3~30\ = CARRY(( \fec1|counter_shift_and_output\(20) ) + ( GND ) + ( \fec1|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_shift_and_output\(20),
	cin => \fec1|Add3~26\,
	sumout => \fec1|Add3~29_sumout\,
	cout => \fec1|Add3~30\);

-- Location: FF_X83_Y76_N2
\fec1|counter_shift_and_output[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~29_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(20));

-- Location: LABCELL_X83_Y76_N3
\fec1|Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~57_sumout\ = SUM(( \fec1|counter_shift_and_output\(21) ) + ( GND ) + ( \fec1|Add3~30\ ))
-- \fec1|Add3~58\ = CARRY(( \fec1|counter_shift_and_output\(21) ) + ( GND ) + ( \fec1|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_shift_and_output\(21),
	cin => \fec1|Add3~30\,
	sumout => \fec1|Add3~57_sumout\,
	cout => \fec1|Add3~58\);

-- Location: FF_X83_Y76_N5
\fec1|counter_shift_and_output[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~57_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(21));

-- Location: LABCELL_X83_Y76_N6
\fec1|Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~61_sumout\ = SUM(( \fec1|counter_shift_and_output\(22) ) + ( GND ) + ( \fec1|Add3~58\ ))
-- \fec1|Add3~62\ = CARRY(( \fec1|counter_shift_and_output\(22) ) + ( GND ) + ( \fec1|Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec1|ALT_INV_counter_shift_and_output\(22),
	cin => \fec1|Add3~58\,
	sumout => \fec1|Add3~61_sumout\,
	cout => \fec1|Add3~62\);

-- Location: FF_X83_Y76_N8
\fec1|counter_shift_and_output[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~61_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(22));

-- Location: LABCELL_X83_Y76_N9
\fec1|Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~65_sumout\ = SUM(( \fec1|counter_shift_and_output\(23) ) + ( GND ) + ( \fec1|Add3~62\ ))
-- \fec1|Add3~66\ = CARRY(( \fec1|counter_shift_and_output\(23) ) + ( GND ) + ( \fec1|Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_shift_and_output\(23),
	cin => \fec1|Add3~62\,
	sumout => \fec1|Add3~65_sumout\,
	cout => \fec1|Add3~66\);

-- Location: FF_X83_Y76_N11
\fec1|counter_shift_and_output[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~65_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(23));

-- Location: LABCELL_X83_Y76_N12
\fec1|Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~69_sumout\ = SUM(( \fec1|counter_shift_and_output\(24) ) + ( GND ) + ( \fec1|Add3~66\ ))
-- \fec1|Add3~70\ = CARRY(( \fec1|counter_shift_and_output\(24) ) + ( GND ) + ( \fec1|Add3~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec1|ALT_INV_counter_shift_and_output\(24),
	cin => \fec1|Add3~66\,
	sumout => \fec1|Add3~69_sumout\,
	cout => \fec1|Add3~70\);

-- Location: FF_X83_Y76_N14
\fec1|counter_shift_and_output[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~69_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(24));

-- Location: LABCELL_X83_Y76_N15
\fec1|Add3~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~73_sumout\ = SUM(( \fec1|counter_shift_and_output\(25) ) + ( GND ) + ( \fec1|Add3~70\ ))
-- \fec1|Add3~74\ = CARRY(( \fec1|counter_shift_and_output\(25) ) + ( GND ) + ( \fec1|Add3~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_shift_and_output\(25),
	cin => \fec1|Add3~70\,
	sumout => \fec1|Add3~73_sumout\,
	cout => \fec1|Add3~74\);

-- Location: FF_X83_Y76_N17
\fec1|counter_shift_and_output[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~73_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(25));

-- Location: LABCELL_X83_Y76_N18
\fec1|Add3~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~77_sumout\ = SUM(( \fec1|counter_shift_and_output\(26) ) + ( GND ) + ( \fec1|Add3~74\ ))
-- \fec1|Add3~78\ = CARRY(( \fec1|counter_shift_and_output\(26) ) + ( GND ) + ( \fec1|Add3~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_shift_and_output\(26),
	cin => \fec1|Add3~74\,
	sumout => \fec1|Add3~77_sumout\,
	cout => \fec1|Add3~78\);

-- Location: FF_X83_Y76_N20
\fec1|counter_shift_and_output[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~77_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(26));

-- Location: LABCELL_X83_Y76_N21
\fec1|Add3~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~81_sumout\ = SUM(( \fec1|counter_shift_and_output\(27) ) + ( GND ) + ( \fec1|Add3~78\ ))
-- \fec1|Add3~82\ = CARRY(( \fec1|counter_shift_and_output\(27) ) + ( GND ) + ( \fec1|Add3~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_shift_and_output\(27),
	cin => \fec1|Add3~78\,
	sumout => \fec1|Add3~81_sumout\,
	cout => \fec1|Add3~82\);

-- Location: FF_X83_Y76_N23
\fec1|counter_shift_and_output[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~81_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(27));

-- Location: LABCELL_X83_Y76_N24
\fec1|Add3~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~85_sumout\ = SUM(( \fec1|counter_shift_and_output\(28) ) + ( GND ) + ( \fec1|Add3~82\ ))
-- \fec1|Add3~86\ = CARRY(( \fec1|counter_shift_and_output\(28) ) + ( GND ) + ( \fec1|Add3~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_shift_and_output\(28),
	cin => \fec1|Add3~82\,
	sumout => \fec1|Add3~85_sumout\,
	cout => \fec1|Add3~86\);

-- Location: FF_X83_Y76_N26
\fec1|counter_shift_and_output[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~85_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(28));

-- Location: LABCELL_X83_Y76_N27
\fec1|Add3~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~89_sumout\ = SUM(( \fec1|counter_shift_and_output\(29) ) + ( GND ) + ( \fec1|Add3~86\ ))
-- \fec1|Add3~90\ = CARRY(( \fec1|counter_shift_and_output\(29) ) + ( GND ) + ( \fec1|Add3~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_shift_and_output\(29),
	cin => \fec1|Add3~86\,
	sumout => \fec1|Add3~89_sumout\,
	cout => \fec1|Add3~90\);

-- Location: FF_X83_Y76_N29
\fec1|counter_shift_and_output[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~89_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(29));

-- Location: LABCELL_X83_Y76_N30
\fec1|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~13_sumout\ = SUM(( \fec1|counter_shift_and_output\(30) ) + ( GND ) + ( \fec1|Add3~90\ ))
-- \fec1|Add3~14\ = CARRY(( \fec1|counter_shift_and_output\(30) ) + ( GND ) + ( \fec1|Add3~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec1|ALT_INV_counter_shift_and_output\(30),
	cin => \fec1|Add3~90\,
	sumout => \fec1|Add3~13_sumout\,
	cout => \fec1|Add3~14\);

-- Location: FF_X83_Y76_N32
\fec1|counter_shift_and_output[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~13_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(30));

-- Location: LABCELL_X81_Y77_N30
\fec1|Selector73~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector73~0_combout\ = ( \fec1|PingPong_flag~q\ & ( \fec1|counter_buffer_input\(31) & ( (!\fec1|Equal5~1_combout\) # (!\fec1|input_state_reg.PingPong_state~q\) ) ) ) # ( !\fec1|PingPong_flag~q\ & ( \fec1|counter_buffer_input\(31) & ( 
-- (\fec1|Equal5~1_combout\ & \fec1|input_state_reg.PingPong_state~q\) ) ) ) # ( \fec1|PingPong_flag~q\ & ( !\fec1|counter_buffer_input\(31) & ( (!\fec1|Equal5~1_combout\) # (!\fec1|input_state_reg.PingPong_state~q\) ) ) ) # ( !\fec1|PingPong_flag~q\ & ( 
-- !\fec1|counter_buffer_input\(31) & ( (\fec1|Equal5~1_combout\ & (((!\fec1|LessThan0~1_combout\ & \fec1|input_state_reg.input_buffer~q\)) # (\fec1|input_state_reg.PingPong_state~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100100011111111001111110000000011000000111111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_LessThan0~1_combout\,
	datab => \fec1|ALT_INV_Equal5~1_combout\,
	datac => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datad => \fec1|ALT_INV_input_state_reg.input_buffer~q\,
	datae => \fec1|ALT_INV_PingPong_flag~q\,
	dataf => \fec1|ALT_INV_counter_buffer_input\(31),
	combout => \fec1|Selector73~0_combout\);

-- Location: FF_X81_Y77_N31
\fec1|PingPong_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Selector73~0_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|PingPong_flag~q\);

-- Location: LABCELL_X83_Y76_N39
\fec1|Equal6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Equal6~5_combout\ = ( \fec1|Equal6~1_combout\ & ( (\fec1|Equal6~3_combout\ & (\fec1|Equal6~2_combout\ & \fec1|Equal6~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_Equal6~3_combout\,
	datac => \fec1|ALT_INV_Equal6~2_combout\,
	datad => \fec1|ALT_INV_Equal6~0_combout\,
	dataf => \fec1|ALT_INV_Equal6~1_combout\,
	combout => \fec1|Equal6~5_combout\);

-- Location: LABCELL_X83_Y76_N54
\fec1|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector33~0_combout\ = ( \fec1|PingPong_flag~q\ & ( \fec1|Equal6~5_combout\ & ( ((\fec1|LessThan2~0_combout\ & !\fec1|counter_shift_and_output\(30))) # (\fec1|counter_shift_and_output\(31)) ) ) ) # ( !\fec1|PingPong_flag~q\ & ( 
-- \fec1|Equal6~5_combout\ & ( (!\fec1|LessThan5~1_combout\ & (!\fec1|counter_shift_and_output\(31) & (!\fec1|LessThan2~0_combout\ & !\fec1|counter_shift_and_output\(30)))) ) ) ) # ( \fec1|PingPong_flag~q\ & ( !\fec1|Equal6~5_combout\ & ( 
-- \fec1|counter_shift_and_output\(31) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001110000000000000000011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_LessThan5~1_combout\,
	datab => \fec1|ALT_INV_counter_shift_and_output\(31),
	datac => \fec1|ALT_INV_LessThan2~0_combout\,
	datad => \fec1|ALT_INV_counter_shift_and_output\(30),
	datae => \fec1|ALT_INV_PingPong_flag~q\,
	dataf => \fec1|ALT_INV_Equal6~5_combout\,
	combout => \fec1|Selector33~0_combout\);

-- Location: LABCELL_X81_Y77_N0
\fec1|counter_buffer_input[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|counter_buffer_input[7]~2_combout\ = ( \fec1|Equal6~7_combout\ & ( \fec1|input_state_reg.PingPong_state~q\ & ( (!\fec1|LessThan0~2_combout\) # ((!\fec1|Selector33~0_combout\) # (\fec1|Equal5~1_combout\)) ) ) ) # ( !\fec1|Equal6~7_combout\ & ( 
-- \fec1|input_state_reg.PingPong_state~q\ & ( ((!\fec1|LessThan0~2_combout\ & \fec1|Selector33~0_combout\)) # (\fec1|Equal5~1_combout\) ) ) ) # ( \fec1|Equal6~7_combout\ & ( !\fec1|input_state_reg.PingPong_state~q\ & ( 
-- !\fec1|counter_buffer_input[7]~1_combout\ ) ) ) # ( !\fec1|Equal6~7_combout\ & ( !\fec1|input_state_reg.PingPong_state~q\ & ( !\fec1|counter_buffer_input[7]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000110011101110111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_LessThan0~2_combout\,
	datab => \fec1|ALT_INV_Equal5~1_combout\,
	datac => \fec1|ALT_INV_counter_buffer_input[7]~1_combout\,
	datad => \fec1|ALT_INV_Selector33~0_combout\,
	datae => \fec1|ALT_INV_Equal6~7_combout\,
	dataf => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	combout => \fec1|counter_buffer_input[7]~2_combout\);

-- Location: FF_X80_Y78_N23
\fec1|counter_buffer_input[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~81_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(7));

-- Location: LABCELL_X80_Y78_N24
\fec1|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~41_sumout\ = SUM(( \fec1|counter_buffer_input\(8) ) + ( GND ) + ( \fec1|Add1~82\ ))
-- \fec1|Add1~42\ = CARRY(( \fec1|counter_buffer_input\(8) ) + ( GND ) + ( \fec1|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_buffer_input\(8),
	cin => \fec1|Add1~82\,
	sumout => \fec1|Add1~41_sumout\,
	cout => \fec1|Add1~42\);

-- Location: FF_X80_Y78_N26
\fec1|counter_buffer_input[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~41_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(8));

-- Location: LABCELL_X80_Y78_N27
\fec1|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~37_sumout\ = SUM(( \fec1|counter_buffer_input\(9) ) + ( GND ) + ( \fec1|Add1~42\ ))
-- \fec1|Add1~38\ = CARRY(( \fec1|counter_buffer_input\(9) ) + ( GND ) + ( \fec1|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(9),
	cin => \fec1|Add1~42\,
	sumout => \fec1|Add1~37_sumout\,
	cout => \fec1|Add1~38\);

-- Location: FF_X80_Y78_N29
\fec1|counter_buffer_input[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~37_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(9));

-- Location: LABCELL_X80_Y78_N30
\fec1|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~33_sumout\ = SUM(( \fec1|counter_buffer_input\(10) ) + ( GND ) + ( \fec1|Add1~38\ ))
-- \fec1|Add1~34\ = CARRY(( \fec1|counter_buffer_input\(10) ) + ( GND ) + ( \fec1|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec1|ALT_INV_counter_buffer_input\(10),
	cin => \fec1|Add1~38\,
	sumout => \fec1|Add1~33_sumout\,
	cout => \fec1|Add1~34\);

-- Location: FF_X80_Y78_N32
\fec1|counter_buffer_input[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~33_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(10));

-- Location: LABCELL_X80_Y78_N33
\fec1|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~77_sumout\ = SUM(( \fec1|counter_buffer_input\(11) ) + ( GND ) + ( \fec1|Add1~34\ ))
-- \fec1|Add1~78\ = CARRY(( \fec1|counter_buffer_input\(11) ) + ( GND ) + ( \fec1|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(11),
	cin => \fec1|Add1~34\,
	sumout => \fec1|Add1~77_sumout\,
	cout => \fec1|Add1~78\);

-- Location: FF_X80_Y78_N35
\fec1|counter_buffer_input[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~77_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(11));

-- Location: LABCELL_X80_Y78_N36
\fec1|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~73_sumout\ = SUM(( \fec1|counter_buffer_input\(12) ) + ( GND ) + ( \fec1|Add1~78\ ))
-- \fec1|Add1~74\ = CARRY(( \fec1|counter_buffer_input\(12) ) + ( GND ) + ( \fec1|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_buffer_input\(12),
	cin => \fec1|Add1~78\,
	sumout => \fec1|Add1~73_sumout\,
	cout => \fec1|Add1~74\);

-- Location: FF_X80_Y78_N38
\fec1|counter_buffer_input[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~73_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(12));

-- Location: LABCELL_X80_Y78_N39
\fec1|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~53_sumout\ = SUM(( \fec1|counter_buffer_input\(13) ) + ( GND ) + ( \fec1|Add1~74\ ))
-- \fec1|Add1~54\ = CARRY(( \fec1|counter_buffer_input\(13) ) + ( GND ) + ( \fec1|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_buffer_input\(13),
	cin => \fec1|Add1~74\,
	sumout => \fec1|Add1~53_sumout\,
	cout => \fec1|Add1~54\);

-- Location: FF_X80_Y78_N41
\fec1|counter_buffer_input[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~53_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(13));

-- Location: LABCELL_X80_Y78_N42
\fec1|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~49_sumout\ = SUM(( \fec1|counter_buffer_input\(14) ) + ( GND ) + ( \fec1|Add1~54\ ))
-- \fec1|Add1~50\ = CARRY(( \fec1|counter_buffer_input\(14) ) + ( GND ) + ( \fec1|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec1|ALT_INV_counter_buffer_input\(14),
	cin => \fec1|Add1~54\,
	sumout => \fec1|Add1~49_sumout\,
	cout => \fec1|Add1~50\);

-- Location: FF_X80_Y78_N44
\fec1|counter_buffer_input[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~49_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(14));

-- Location: LABCELL_X80_Y78_N45
\fec1|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~45_sumout\ = SUM(( \fec1|counter_buffer_input\(15) ) + ( GND ) + ( \fec1|Add1~50\ ))
-- \fec1|Add1~46\ = CARRY(( \fec1|counter_buffer_input\(15) ) + ( GND ) + ( \fec1|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_buffer_input\(15),
	cin => \fec1|Add1~50\,
	sumout => \fec1|Add1~45_sumout\,
	cout => \fec1|Add1~46\);

-- Location: FF_X80_Y78_N47
\fec1|counter_buffer_input[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~45_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(15));

-- Location: LABCELL_X80_Y78_N48
\fec1|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~125_sumout\ = SUM(( \fec1|counter_buffer_input\(16) ) + ( GND ) + ( \fec1|Add1~46\ ))
-- \fec1|Add1~126\ = CARRY(( \fec1|counter_buffer_input\(16) ) + ( GND ) + ( \fec1|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_buffer_input\(16),
	cin => \fec1|Add1~46\,
	sumout => \fec1|Add1~125_sumout\,
	cout => \fec1|Add1~126\);

-- Location: FF_X80_Y78_N50
\fec1|counter_buffer_input[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~125_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(16));

-- Location: FF_X80_Y78_N53
\fec1|counter_buffer_input[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~89_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(17));

-- Location: LABCELL_X80_Y77_N42
\fec1|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|process_0~2_combout\ = ( !\fec1|counter_buffer_input\(29) & ( !\fec1|counter_buffer_input\(25) & ( (!\fec1|counter_buffer_input\(17) & (!\fec1|counter_buffer_input\(23) & (!\fec1|counter_buffer_input\(7) & !\fec1|counter_buffer_input\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(17),
	datab => \fec1|ALT_INV_counter_buffer_input\(23),
	datac => \fec1|ALT_INV_counter_buffer_input\(7),
	datad => \fec1|ALT_INV_counter_buffer_input\(24),
	datae => \fec1|ALT_INV_counter_buffer_input\(29),
	dataf => \fec1|ALT_INV_counter_buffer_input\(25),
	combout => \fec1|process_0~2_combout\);

-- Location: LABCELL_X81_Y78_N18
\fec1|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|LessThan0~0_combout\ = ( \fec1|counter_buffer_input\(2) & ( \fec1|counter_buffer_input\(0) & ( (!\fec1|counter_buffer_input\(5) & ((!\fec1|counter_buffer_input\(1)) # ((!\fec1|counter_buffer_input\(4)) # (!\fec1|counter_buffer_input\(3))))) ) ) ) # 
-- ( !\fec1|counter_buffer_input\(2) & ( \fec1|counter_buffer_input\(0) & ( !\fec1|counter_buffer_input\(5) ) ) ) # ( \fec1|counter_buffer_input\(2) & ( !\fec1|counter_buffer_input\(0) & ( !\fec1|counter_buffer_input\(5) ) ) ) # ( 
-- !\fec1|counter_buffer_input\(2) & ( !\fec1|counter_buffer_input\(0) & ( !\fec1|counter_buffer_input\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(1),
	datab => \fec1|ALT_INV_counter_buffer_input\(4),
	datac => \fec1|ALT_INV_counter_buffer_input\(5),
	datad => \fec1|ALT_INV_counter_buffer_input\(3),
	datae => \fec1|ALT_INV_counter_buffer_input\(2),
	dataf => \fec1|ALT_INV_counter_buffer_input\(0),
	combout => \fec1|LessThan0~0_combout\);

-- Location: LABCELL_X81_Y78_N24
\fec1|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|LessThan0~1_combout\ = ( \fec1|process_0~0_combout\ & ( \fec1|process_0~1_combout\ & ( (\fec1|process_0~2_combout\ & (\fec1|process_0~3_combout\ & ((!\fec1|counter_buffer_input\(6)) # (\fec1|LessThan0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(6),
	datab => \fec1|ALT_INV_process_0~2_combout\,
	datac => \fec1|ALT_INV_process_0~3_combout\,
	datad => \fec1|ALT_INV_LessThan0~0_combout\,
	datae => \fec1|ALT_INV_process_0~0_combout\,
	dataf => \fec1|ALT_INV_process_0~1_combout\,
	combout => \fec1|LessThan0~1_combout\);

-- Location: LABCELL_X81_Y78_N6
\fec1|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|LessThan0~2_combout\ = ( !\fec1|LessThan0~1_combout\ & ( !\fec1|counter_buffer_input\(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_buffer_input\(31),
	dataf => \fec1|ALT_INV_LessThan0~1_combout\,
	combout => \fec1|LessThan0~2_combout\);

-- Location: LABCELL_X81_Y77_N45
\fec1|Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector32~0_combout\ = ( \fec1|process_0~6_combout\ & ( ((!\fec1|input_state_reg.PingPong_state~q\ & \fec1|input_state_reg.idle~q\)) # (\TopWiMax_in_valid~input_o\) ) ) # ( !\fec1|process_0~6_combout\ & ( (((\fec1|input_state_reg.PingPong_state~q\ 
-- & \fec1|Selector33~0_combout\)) # (\fec1|input_state_reg.idle~q\)) # (\TopWiMax_in_valid~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111001101111111111100110011101110110011001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datab => \ALT_INV_TopWiMax_in_valid~input_o\,
	datac => \fec1|ALT_INV_Selector33~0_combout\,
	datad => \fec1|ALT_INV_input_state_reg.idle~q\,
	dataf => \fec1|ALT_INV_process_0~6_combout\,
	combout => \fec1|Selector32~0_combout\);

-- Location: FF_X81_Y77_N47
\fec1|input_state_reg.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Selector32~0_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|input_state_reg.idle~q\);

-- Location: LABCELL_X81_Y77_N18
\fec1|Selector33~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector33~1_combout\ = ( \fec1|input_state_reg.idle~q\ & ( \fec1|input_state_reg.PingPong_state~q\ & ( (\fec1|input_state_reg.input_buffer~q\ & ((!\fec1|Equal6~7_combout\) # (!\fec1|LessThan0~2_combout\))) ) ) ) # ( !\fec1|input_state_reg.idle~q\ & 
-- ( \fec1|input_state_reg.PingPong_state~q\ & ( (\fec1|input_state_reg.input_buffer~q\ & !\fec1|LessThan0~2_combout\) ) ) ) # ( \fec1|input_state_reg.idle~q\ & ( !\fec1|input_state_reg.PingPong_state~q\ & ( (\fec1|input_state_reg.input_buffer~q\ & 
-- ((!\fec1|LessThan0~2_combout\) # (!\fec1|Equal5~1_combout\))) ) ) ) # ( !\fec1|input_state_reg.idle~q\ & ( !\fec1|input_state_reg.PingPong_state~q\ & ( (\fec1|input_state_reg.input_buffer~q\ & !\fec1|LessThan0~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100110011000000110000001100000011001000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_Equal6~7_combout\,
	datab => \fec1|ALT_INV_input_state_reg.input_buffer~q\,
	datac => \fec1|ALT_INV_LessThan0~2_combout\,
	datad => \fec1|ALT_INV_Equal5~1_combout\,
	datae => \fec1|ALT_INV_input_state_reg.idle~q\,
	dataf => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	combout => \fec1|Selector33~1_combout\);

-- Location: LABCELL_X81_Y77_N12
\fec1|Selector33~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector33~2_combout\ = ( \fec1|input_state_reg.idle~q\ & ( \fec1|input_state_reg.PingPong_state~q\ & ( (\fec1|Selector33~1_combout\ & (!\fec1|Selector33~0_combout\ & ((!\fec1|process_0~6_combout\) # (\TopWiMax_in_valid~input_o\)))) ) ) ) # ( 
-- !\fec1|input_state_reg.idle~q\ & ( \fec1|input_state_reg.PingPong_state~q\ & ( (!\fec1|Selector33~0_combout\ & (((!\fec1|process_0~6_combout\ & \fec1|Selector33~1_combout\)) # (\TopWiMax_in_valid~input_o\))) ) ) ) # ( \fec1|input_state_reg.idle~q\ & ( 
-- !\fec1|input_state_reg.PingPong_state~q\ & ( \fec1|Selector33~1_combout\ ) ) ) # ( !\fec1|input_state_reg.idle~q\ & ( !\fec1|input_state_reg.PingPong_state~q\ & ( (\fec1|Selector33~1_combout\) # (\TopWiMax_in_valid~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000011110000111100111011000000000000101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_process_0~6_combout\,
	datab => \ALT_INV_TopWiMax_in_valid~input_o\,
	datac => \fec1|ALT_INV_Selector33~1_combout\,
	datad => \fec1|ALT_INV_Selector33~0_combout\,
	datae => \fec1|ALT_INV_input_state_reg.idle~q\,
	dataf => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	combout => \fec1|Selector33~2_combout\);

-- Location: FF_X81_Y77_N14
\fec1|input_state_reg.input_buffer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Selector33~2_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|input_state_reg.input_buffer~q\);

-- Location: LABCELL_X81_Y77_N39
\fec1|counter_buffer_input[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|counter_buffer_input[7]~0_combout\ = ( \fec1|input_state_reg.PingPong_state~q\ & ( ((!\fec1|counter_buffer_input\(31) & (\fec1|input_state_reg.input_buffer~q\ & !\fec1|LessThan0~1_combout\))) # (\fec1|Equal5~1_combout\) ) ) # ( 
-- !\fec1|input_state_reg.PingPong_state~q\ & ( (!\fec1|counter_buffer_input\(31) & (\fec1|input_state_reg.input_buffer~q\ & !\fec1|LessThan0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000101111000011110010111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(31),
	datab => \fec1|ALT_INV_input_state_reg.input_buffer~q\,
	datac => \fec1|ALT_INV_Equal5~1_combout\,
	datad => \fec1|ALT_INV_LessThan0~1_combout\,
	dataf => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	combout => \fec1|counter_buffer_input[7]~0_combout\);

-- Location: FF_X80_Y78_N2
\fec1|counter_buffer_input[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~9_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(0));

-- Location: LABCELL_X80_Y78_N3
\fec1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~5_sumout\ = SUM(( \fec1|counter_buffer_input\(1) ) + ( GND ) + ( \fec1|Add1~10\ ))
-- \fec1|Add1~6\ = CARRY(( \fec1|counter_buffer_input\(1) ) + ( GND ) + ( \fec1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(1),
	cin => \fec1|Add1~10\,
	sumout => \fec1|Add1~5_sumout\,
	cout => \fec1|Add1~6\);

-- Location: FF_X80_Y78_N5
\fec1|counter_buffer_input[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~5_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(1));

-- Location: LABCELL_X80_Y78_N6
\fec1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~1_sumout\ = SUM(( \fec1|counter_buffer_input\(2) ) + ( GND ) + ( \fec1|Add1~6\ ))
-- \fec1|Add1~2\ = CARRY(( \fec1|counter_buffer_input\(2) ) + ( GND ) + ( \fec1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec1|ALT_INV_counter_buffer_input\(2),
	cin => \fec1|Add1~6\,
	sumout => \fec1|Add1~1_sumout\,
	cout => \fec1|Add1~2\);

-- Location: FF_X80_Y78_N8
\fec1|counter_buffer_input[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~1_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(2));

-- Location: LABCELL_X80_Y78_N9
\fec1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~29_sumout\ = SUM(( \fec1|counter_buffer_input\(3) ) + ( GND ) + ( \fec1|Add1~2\ ))
-- \fec1|Add1~30\ = CARRY(( \fec1|counter_buffer_input\(3) ) + ( GND ) + ( \fec1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_buffer_input\(3),
	cin => \fec1|Add1~2\,
	sumout => \fec1|Add1~29_sumout\,
	cout => \fec1|Add1~30\);

-- Location: FF_X80_Y78_N11
\fec1|counter_buffer_input[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~29_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(3));

-- Location: LABCELL_X80_Y78_N12
\fec1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~25_sumout\ = SUM(( \fec1|counter_buffer_input\(4) ) + ( GND ) + ( \fec1|Add1~30\ ))
-- \fec1|Add1~26\ = CARRY(( \fec1|counter_buffer_input\(4) ) + ( GND ) + ( \fec1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec1|ALT_INV_counter_buffer_input\(4),
	cin => \fec1|Add1~30\,
	sumout => \fec1|Add1~25_sumout\,
	cout => \fec1|Add1~26\);

-- Location: FF_X80_Y78_N14
\fec1|counter_buffer_input[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~25_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(4));

-- Location: LABCELL_X80_Y78_N15
\fec1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~21_sumout\ = SUM(( \fec1|counter_buffer_input\(5) ) + ( GND ) + ( \fec1|Add1~26\ ))
-- \fec1|Add1~22\ = CARRY(( \fec1|counter_buffer_input\(5) ) + ( GND ) + ( \fec1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_buffer_input\(5),
	cin => \fec1|Add1~26\,
	sumout => \fec1|Add1~21_sumout\,
	cout => \fec1|Add1~22\);

-- Location: FF_X80_Y78_N17
\fec1|counter_buffer_input[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~21_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(5));

-- Location: FF_X80_Y78_N20
\fec1|counter_buffer_input[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add1~17_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_buffer_input[7]~0_combout\,
	ena => \fec1|counter_buffer_input[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(6));

-- Location: LABCELL_X81_Y78_N12
\fec1|process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|process_0~5_combout\ = ( \fec1|process_0~4_combout\ & ( !\fec1|counter_buffer_input\(31) & ( (\fec1|counter_buffer_input\(6) & (\fec1|counter_buffer_input\(4) & (!\fec1|counter_buffer_input\(5) & \fec1|counter_buffer_input\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(6),
	datab => \fec1|ALT_INV_counter_buffer_input\(4),
	datac => \fec1|ALT_INV_counter_buffer_input\(5),
	datad => \fec1|ALT_INV_counter_buffer_input\(3),
	datae => \fec1|ALT_INV_process_0~4_combout\,
	dataf => \fec1|ALT_INV_counter_buffer_input\(31),
	combout => \fec1|process_0~5_combout\);

-- Location: MLABCELL_X82_Y77_N33
\fec1|LessThan4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|LessThan4~1_combout\ = ( \fec1|counter_shift_and_output\(6) & ( (!\fec1|counter_shift_and_output\(31) & ((!\fec1|LessThan4~0_combout\) # (\fec1|counter_shift_and_output\(7)))) ) ) # ( !\fec1|counter_shift_and_output\(6) & ( 
-- (!\fec1|counter_shift_and_output\(31) & ((!\fec1|LessThan4~0_combout\) # ((\fec1|counter_shift_and_output\(7) & \fec1|Equal8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110100000000110011010000000011011101000000001101110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_shift_and_output\(7),
	datab => \fec1|ALT_INV_LessThan4~0_combout\,
	datac => \fec1|ALT_INV_Equal8~0_combout\,
	datad => \fec1|ALT_INV_counter_shift_and_output\(31),
	dataf => \fec1|ALT_INV_counter_shift_and_output\(6),
	combout => \fec1|LessThan4~1_combout\);

-- Location: MLABCELL_X82_Y77_N24
\fec1|Selector41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector41~0_combout\ = ( \TopWiMax_in_valid~input_o\ & ( \fec1|Selector33~0_combout\ & ( (!\fec1|process_0~5_combout\) # ((!\fec1|LessThan4~1_combout\) # (!\fec1|Equal5~0_combout\)) ) ) ) # ( !\TopWiMax_in_valid~input_o\ & ( 
-- \fec1|Selector33~0_combout\ & ( (!\fec1|process_0~5_combout\ & (!\fec1|process_0~6_combout\)) # (\fec1|process_0~5_combout\ & ((!\fec1|Equal5~0_combout\ & (!\fec1|process_0~6_combout\)) # (\fec1|Equal5~0_combout\ & ((!\fec1|LessThan4~1_combout\))))) ) ) ) 
-- # ( \TopWiMax_in_valid~input_o\ & ( !\fec1|Selector33~0_combout\ & ( (\fec1|process_0~5_combout\ & (!\fec1|LessThan4~1_combout\ & \fec1|Equal5~0_combout\)) ) ) ) # ( !\TopWiMax_in_valid~input_o\ & ( !\fec1|Selector33~0_combout\ & ( 
-- (\fec1|process_0~5_combout\ & (!\fec1|LessThan4~1_combout\ & \fec1|Equal5~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011001100110110001111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_process_0~5_combout\,
	datab => \fec1|ALT_INV_process_0~6_combout\,
	datac => \fec1|ALT_INV_LessThan4~1_combout\,
	datad => \fec1|ALT_INV_Equal5~0_combout\,
	datae => \ALT_INV_TopWiMax_in_valid~input_o\,
	dataf => \fec1|ALT_INV_Selector33~0_combout\,
	combout => \fec1|Selector41~0_combout\);

-- Location: MLABCELL_X82_Y77_N57
\fec1|counter_shift_and_output[21]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|counter_shift_and_output[21]~4_combout\ = ( !\fec1|Selector33~0_combout\ & ( (!\fec1|process_0~5_combout\ & (((!\fec1|process_0~6_combout\) # (\TopWiMax_in_valid~input_o\)))) # (\fec1|process_0~5_combout\ & (!\fec1|Equal5~0_combout\ & 
-- ((!\fec1|process_0~6_combout\) # (\TopWiMax_in_valid~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011101110111000001110111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_process_0~5_combout\,
	datab => \fec1|ALT_INV_Equal5~0_combout\,
	datac => \fec1|ALT_INV_process_0~6_combout\,
	datad => \ALT_INV_TopWiMax_in_valid~input_o\,
	dataf => \fec1|ALT_INV_Selector33~0_combout\,
	combout => \fec1|counter_shift_and_output[21]~4_combout\);

-- Location: LABCELL_X83_Y76_N33
\fec1|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~9_sumout\ = SUM(( \fec1|counter_shift_and_output\(31) ) + ( GND ) + ( \fec1|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_shift_and_output\(31),
	cin => \fec1|Add3~14\,
	sumout => \fec1|Add3~9_sumout\);

-- Location: MLABCELL_X82_Y77_N0
\fec1|Selector41~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector41~1_combout\ = ( \fec1|counter_shift_and_output\(31) & ( \fec1|input_state_reg.PingPong_state~q\ & ( ((\fec1|Selector41~0_combout\ & \fec1|Add3~9_sumout\)) # (\fec1|counter_shift_and_output[21]~4_combout\) ) ) ) # ( 
-- !\fec1|counter_shift_and_output\(31) & ( \fec1|input_state_reg.PingPong_state~q\ & ( (\fec1|Selector41~0_combout\ & \fec1|Add3~9_sumout\) ) ) ) # ( \fec1|counter_shift_and_output\(31) & ( !\fec1|input_state_reg.PingPong_state~q\ & ( 
-- (!\fec1|Selector34~2_combout\) # (\fec1|Add3~9_sumout\) ) ) ) # ( !\fec1|counter_shift_and_output\(31) & ( !\fec1|input_state_reg.PingPong_state~q\ & ( (\fec1|Add3~9_sumout\ & \fec1|Selector34~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111100000101000001010011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_Selector41~0_combout\,
	datab => \fec1|ALT_INV_counter_shift_and_output[21]~4_combout\,
	datac => \fec1|ALT_INV_Add3~9_sumout\,
	datad => \fec1|ALT_INV_Selector34~2_combout\,
	datae => \fec1|ALT_INV_counter_shift_and_output\(31),
	dataf => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	combout => \fec1|Selector41~1_combout\);

-- Location: FF_X82_Y77_N2
\fec1|counter_shift_and_output[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Selector41~1_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(31));

-- Location: MLABCELL_X82_Y77_N21
\fec1|process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|process_0~6_combout\ = ( !\fec1|counter_shift_and_output\(31) & ( \fec1|LessThan4~0_combout\ & ( (\fec1|LessThan5~0_combout\ & (\fec1|Equal6~4_combout\ & (!\fec1|counter_shift_and_output\(7) $ (!\fec1|counter_shift_and_output\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_shift_and_output\(7),
	datab => \fec1|ALT_INV_LessThan5~0_combout\,
	datac => \fec1|ALT_INV_Equal6~4_combout\,
	datad => \fec1|ALT_INV_counter_shift_and_output\(5),
	datae => \fec1|ALT_INV_counter_shift_and_output\(31),
	dataf => \fec1|ALT_INV_LessThan4~0_combout\,
	combout => \fec1|process_0~6_combout\);

-- Location: MLABCELL_X82_Y77_N36
\fec1|counter_shift_and_output[21]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|counter_shift_and_output[21]~0_combout\ = ( \fec1|LessThan4~0_combout\ & ( \fec1|counter_shift_and_output\(6) & ( (\fec1|counter_shift_and_output\(7) & (\fec1|Equal5~1_combout\ & !\fec1|counter_shift_and_output\(31))) ) ) ) # ( 
-- !\fec1|LessThan4~0_combout\ & ( \fec1|counter_shift_and_output\(6) & ( (\fec1|Equal5~1_combout\ & !\fec1|counter_shift_and_output\(31)) ) ) ) # ( \fec1|LessThan4~0_combout\ & ( !\fec1|counter_shift_and_output\(6) & ( (\fec1|counter_shift_and_output\(7) & 
-- (!\fec1|counter_shift_and_output\(31) & \fec1|Equal8~0_combout\)) ) ) ) # ( !\fec1|LessThan4~0_combout\ & ( !\fec1|counter_shift_and_output\(6) & ( (\fec1|Equal5~1_combout\ & !\fec1|counter_shift_and_output\(31)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000101000000110000001100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_shift_and_output\(7),
	datab => \fec1|ALT_INV_Equal5~1_combout\,
	datac => \fec1|ALT_INV_counter_shift_and_output\(31),
	datad => \fec1|ALT_INV_Equal8~0_combout\,
	datae => \fec1|ALT_INV_LessThan4~0_combout\,
	dataf => \fec1|ALT_INV_counter_shift_and_output\(6),
	combout => \fec1|counter_shift_and_output[21]~0_combout\);

-- Location: LABCELL_X81_Y77_N24
\fec1|counter_shift_and_output[21]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|counter_shift_and_output[21]~1_combout\ = ( \fec1|counter_shift_and_output[21]~0_combout\ & ( \fec1|Selector33~0_combout\ & ( \fec1|input_state_reg.PingPong_state~q\ ) ) ) # ( !\fec1|counter_shift_and_output[21]~0_combout\ & ( 
-- \fec1|Selector33~0_combout\ & ( (\fec1|input_state_reg.PingPong_state~q\ & (!\TopWiMax_in_valid~input_o\ & (\fec1|process_0~6_combout\ & !\fec1|Equal5~1_combout\))) ) ) ) # ( \fec1|counter_shift_and_output[21]~0_combout\ & ( !\fec1|Selector33~0_combout\ & 
-- ( \fec1|input_state_reg.PingPong_state~q\ ) ) ) # ( !\fec1|counter_shift_and_output[21]~0_combout\ & ( !\fec1|Selector33~0_combout\ & ( (\fec1|input_state_reg.PingPong_state~q\ & !\fec1|Equal5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010101010100000100000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datab => \ALT_INV_TopWiMax_in_valid~input_o\,
	datac => \fec1|ALT_INV_process_0~6_combout\,
	datad => \fec1|ALT_INV_Equal5~1_combout\,
	datae => \fec1|ALT_INV_counter_shift_and_output[21]~0_combout\,
	dataf => \fec1|ALT_INV_Selector33~0_combout\,
	combout => \fec1|counter_shift_and_output[21]~1_combout\);

-- Location: FF_X83_Y77_N2
\fec1|counter_shift_and_output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~121_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(0));

-- Location: LABCELL_X83_Y77_N3
\fec1|Add3~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~105_sumout\ = SUM(( \fec1|counter_shift_and_output\(1) ) + ( GND ) + ( \fec1|Add3~122\ ))
-- \fec1|Add3~106\ = CARRY(( \fec1|counter_shift_and_output\(1) ) + ( GND ) + ( \fec1|Add3~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fec1|ALT_INV_counter_shift_and_output\(1),
	cin => \fec1|Add3~122\,
	sumout => \fec1|Add3~105_sumout\,
	cout => \fec1|Add3~106\);

-- Location: FF_X83_Y77_N5
\fec1|counter_shift_and_output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~105_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(1));

-- Location: LABCELL_X83_Y77_N6
\fec1|Add3~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~109_sumout\ = SUM(( \fec1|counter_shift_and_output\(2) ) + ( GND ) + ( \fec1|Add3~106\ ))
-- \fec1|Add3~110\ = CARRY(( \fec1|counter_shift_and_output\(2) ) + ( GND ) + ( \fec1|Add3~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec1|ALT_INV_counter_shift_and_output\(2),
	cin => \fec1|Add3~106\,
	sumout => \fec1|Add3~109_sumout\,
	cout => \fec1|Add3~110\);

-- Location: FF_X83_Y77_N8
\fec1|counter_shift_and_output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~109_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(2));

-- Location: LABCELL_X83_Y77_N9
\fec1|Add3~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~113_sumout\ = SUM(( \fec1|counter_shift_and_output\(3) ) + ( GND ) + ( \fec1|Add3~110\ ))
-- \fec1|Add3~114\ = CARRY(( \fec1|counter_shift_and_output\(3) ) + ( GND ) + ( \fec1|Add3~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_shift_and_output\(3),
	cin => \fec1|Add3~110\,
	sumout => \fec1|Add3~113_sumout\,
	cout => \fec1|Add3~114\);

-- Location: FF_X83_Y77_N11
\fec1|counter_shift_and_output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~113_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(3));

-- Location: LABCELL_X83_Y77_N12
\fec1|Add3~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~117_sumout\ = SUM(( \fec1|counter_shift_and_output\(4) ) + ( GND ) + ( \fec1|Add3~114\ ))
-- \fec1|Add3~118\ = CARRY(( \fec1|counter_shift_and_output\(4) ) + ( GND ) + ( \fec1|Add3~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec1|ALT_INV_counter_shift_and_output\(4),
	cin => \fec1|Add3~114\,
	sumout => \fec1|Add3~117_sumout\,
	cout => \fec1|Add3~118\);

-- Location: FF_X83_Y77_N14
\fec1|counter_shift_and_output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~117_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(4));

-- Location: LABCELL_X83_Y77_N15
\fec1|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~1_sumout\ = SUM(( \fec1|counter_shift_and_output\(5) ) + ( GND ) + ( \fec1|Add3~118\ ))
-- \fec1|Add3~2\ = CARRY(( \fec1|counter_shift_and_output\(5) ) + ( GND ) + ( \fec1|Add3~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_shift_and_output\(5),
	cin => \fec1|Add3~118\,
	sumout => \fec1|Add3~1_sumout\,
	cout => \fec1|Add3~2\);

-- Location: FF_X83_Y77_N17
\fec1|counter_shift_and_output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~1_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(5));

-- Location: LABCELL_X83_Y77_N18
\fec1|Add3~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add3~125_sumout\ = SUM(( \fec1|counter_shift_and_output\(6) ) + ( GND ) + ( \fec1|Add3~2\ ))
-- \fec1|Add3~126\ = CARRY(( \fec1|counter_shift_and_output\(6) ) + ( GND ) + ( \fec1|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_shift_and_output\(6),
	cin => \fec1|Add3~2\,
	sumout => \fec1|Add3~125_sumout\,
	cout => \fec1|Add3~126\);

-- Location: FF_X83_Y77_N20
\fec1|counter_shift_and_output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~125_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(6));

-- Location: FF_X83_Y77_N23
\fec1|counter_shift_and_output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Add3~5_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec1|counter_shift_and_output[21]~1_combout\,
	ena => \fec1|counter_shift_and_output[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_shift_and_output\(7));

-- Location: MLABCELL_X82_Y77_N30
\fec1|Equal6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Equal6~6_combout\ = (\fec1|counter_shift_and_output\(7) & !\fec1|counter_shift_and_output\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_shift_and_output\(7),
	datad => \fec1|ALT_INV_counter_shift_and_output\(5),
	combout => \fec1|Equal6~6_combout\);

-- Location: MLABCELL_X82_Y77_N12
\fec1|Equal6~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Equal6~7_combout\ = ( \fec1|Equal6~4_combout\ & ( (\fec1|Equal6~6_combout\ & (\fec1|LessThan5~0_combout\ & (\fec1|LessThan4~0_combout\ & !\fec1|counter_shift_and_output\(31)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_Equal6~6_combout\,
	datab => \fec1|ALT_INV_LessThan5~0_combout\,
	datac => \fec1|ALT_INV_LessThan4~0_combout\,
	datad => \fec1|ALT_INV_counter_shift_and_output\(31),
	dataf => \fec1|ALT_INV_Equal6~4_combout\,
	combout => \fec1|Equal6~7_combout\);

-- Location: LABCELL_X81_Y77_N42
\fec1|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector0~1_combout\ = ( \fec1|input_state_reg.input_buffer~q\ & ( (\fec1|input_state_reg.PingPong_state~q\ & (!\fec1|Equal6~7_combout\ & !\fec1|Selector33~0_combout\)) ) ) # ( !\fec1|input_state_reg.input_buffer~q\ & ( 
-- (!\fec1|input_state_reg.PingPong_state~q\ & (!\TopWiMax_in_valid~input_o\)) # (\fec1|input_state_reg.PingPong_state~q\ & (((!\fec1|Equal6~7_combout\ & !\fec1|Selector33~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100010001000110110001000100001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datab => \ALT_INV_TopWiMax_in_valid~input_o\,
	datac => \fec1|ALT_INV_Equal6~7_combout\,
	datad => \fec1|ALT_INV_Selector33~0_combout\,
	dataf => \fec1|ALT_INV_input_state_reg.input_buffer~q\,
	combout => \fec1|Selector0~1_combout\);

-- Location: LABCELL_X80_Y77_N33
\fec1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Add1~13_sumout\ = SUM(( \fec1|counter_buffer_input\(31) ) + ( GND ) + ( \fec1|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_counter_buffer_input\(31),
	cin => \fec1|Add1~118\,
	sumout => \fec1|Add1~13_sumout\);

-- Location: LABCELL_X81_Y77_N6
\fec1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector0~0_combout\ = ( \fec1|Equal6~7_combout\ & ( \fec1|input_state_reg.input_buffer~q\ & ( (!\fec1|LessThan0~2_combout\) # ((\fec1|input_state_reg.PingPong_state~q\ & !\fec1|Selector33~0_combout\)) ) ) ) # ( !\fec1|Equal6~7_combout\ & ( 
-- \fec1|input_state_reg.input_buffer~q\ & ( (!\fec1|LessThan0~2_combout\ & ((!\fec1|input_state_reg.PingPong_state~q\) # (\fec1|Selector33~0_combout\))) ) ) ) # ( \fec1|Equal6~7_combout\ & ( !\fec1|input_state_reg.input_buffer~q\ & ( 
-- (!\fec1|input_state_reg.PingPong_state~q\ & (\TopWiMax_in_valid~input_o\)) # (\fec1|input_state_reg.PingPong_state~q\ & (((!\fec1|LessThan0~2_combout\) # (!\fec1|Selector33~0_combout\)))) ) ) ) # ( !\fec1|Equal6~7_combout\ & ( 
-- !\fec1|input_state_reg.input_buffer~q\ & ( (!\fec1|input_state_reg.PingPong_state~q\ & (\TopWiMax_in_valid~input_o\)) # (\fec1|input_state_reg.PingPong_state~q\ & (((!\fec1|LessThan0~2_combout\ & \fec1|Selector33~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110010011101110111001010100000111100001111010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datab => \ALT_INV_TopWiMax_in_valid~input_o\,
	datac => \fec1|ALT_INV_LessThan0~2_combout\,
	datad => \fec1|ALT_INV_Selector33~0_combout\,
	datae => \fec1|ALT_INV_Equal6~7_combout\,
	dataf => \fec1|ALT_INV_input_state_reg.input_buffer~q\,
	combout => \fec1|Selector0~0_combout\);

-- Location: LABCELL_X81_Y77_N36
\fec1|Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector0~2_combout\ = ( \fec1|Selector0~0_combout\ & ( ((\fec1|counter_buffer_input\(31) & \fec1|Selector0~1_combout\)) # (\fec1|Add1~13_sumout\) ) ) # ( !\fec1|Selector0~0_combout\ & ( (\fec1|counter_buffer_input\(31) & \fec1|Selector0~1_combout\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(31),
	datac => \fec1|ALT_INV_Selector0~1_combout\,
	datad => \fec1|ALT_INV_Add1~13_sumout\,
	dataf => \fec1|ALT_INV_Selector0~0_combout\,
	combout => \fec1|Selector0~2_combout\);

-- Location: FF_X81_Y77_N38
\fec1|counter_buffer_input[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Selector0~2_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|counter_buffer_input\(31));

-- Location: LABCELL_X81_Y78_N33
\fec1|Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector34~0_combout\ = ( !\fec1|LessThan0~1_combout\ & ( (!\fec1|counter_buffer_input\(31) & \fec1|input_state_reg.input_buffer~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(31),
	datad => \fec1|ALT_INV_input_state_reg.input_buffer~q\,
	dataf => \fec1|ALT_INV_LessThan0~1_combout\,
	combout => \fec1|Selector34~0_combout\);

-- Location: LABCELL_X83_Y78_N0
\fec1|Selector34~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector34~1_combout\ = ( \fec1|input_state_reg.PingPong_state~q\ & ( \fec1|process_0~6_combout\ & ( ((\fec1|Selector34~0_combout\ & (\fec1|Equal5~0_combout\ & \fec1|process_0~5_combout\))) # (\TopWiMax_in_valid~input_o\) ) ) ) # ( 
-- !\fec1|input_state_reg.PingPong_state~q\ & ( \fec1|process_0~6_combout\ & ( (\fec1|Selector34~0_combout\ & (\fec1|Equal5~0_combout\ & \fec1|process_0~5_combout\)) ) ) ) # ( \fec1|input_state_reg.PingPong_state~q\ & ( !\fec1|process_0~6_combout\ ) ) # ( 
-- !\fec1|input_state_reg.PingPong_state~q\ & ( !\fec1|process_0~6_combout\ & ( (\fec1|Selector34~0_combout\ & (\fec1|Equal5~0_combout\ & \fec1|process_0~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011111111111111111100000000000000110101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_TopWiMax_in_valid~input_o\,
	datab => \fec1|ALT_INV_Selector34~0_combout\,
	datac => \fec1|ALT_INV_Equal5~0_combout\,
	datad => \fec1|ALT_INV_process_0~5_combout\,
	datae => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	dataf => \fec1|ALT_INV_process_0~6_combout\,
	combout => \fec1|Selector34~1_combout\);

-- Location: FF_X83_Y78_N2
\fec1|input_state_reg.PingPong_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Selector34~1_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|input_state_reg.PingPong_state~q\);

-- Location: LABCELL_X80_Y76_N30
\inter1|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Selector14~0_combout\ = ( \inter1|state_reg.input_buffer~q\ & ( \fec1|input_state_reg.PingPong_state~q\ & ( (!\inter1|counter[7]~DUPLICATE_q\) # ((!\inter1|state_reg.idle~q\) # ((!\inter1|Equal0~0_combout\ & !\inter1|counter\(6)))) ) ) ) # ( 
-- !\inter1|state_reg.input_buffer~q\ & ( \fec1|input_state_reg.PingPong_state~q\ & ( !\inter1|state_reg.idle~q\ ) ) ) # ( \inter1|state_reg.input_buffer~q\ & ( !\fec1|input_state_reg.PingPong_state~q\ & ( (!\inter1|counter[7]~DUPLICATE_q\) # 
-- ((!\inter1|Equal0~0_combout\ & !\inter1|counter\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010101110101011111111000000001111111111101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_counter[7]~DUPLICATE_q\,
	datab => \inter1|ALT_INV_Equal0~0_combout\,
	datac => \inter1|ALT_INV_counter\(6),
	datad => \inter1|ALT_INV_state_reg.idle~q\,
	datae => \inter1|ALT_INV_state_reg.input_buffer~q\,
	dataf => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	combout => \inter1|Selector14~0_combout\);

-- Location: FF_X80_Y76_N31
\inter1|state_reg.input_buffer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Selector14~0_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|state_reg.input_buffer~q\);

-- Location: LABCELL_X80_Y76_N27
\inter1|counter_out[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|counter_out[5]~1_combout\ = ( \inter1|state_reg.input_buffer~q\ & ( (\inter1|counter[7]~DUPLICATE_q\ & (\inter1|state_reg.idle~q\ & ((\inter1|Equal0~0_combout\) # (\inter1|counter\(6))))) ) ) # ( !\inter1|state_reg.input_buffer~q\ & ( 
-- \inter1|state_reg.idle~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000001000000110000000100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_counter\(6),
	datab => \inter1|ALT_INV_counter[7]~DUPLICATE_q\,
	datac => \inter1|ALT_INV_state_reg.idle~q\,
	datad => \inter1|ALT_INV_Equal0~0_combout\,
	dataf => \inter1|ALT_INV_state_reg.input_buffer~q\,
	combout => \inter1|counter_out[5]~1_combout\);

-- Location: FF_X81_Y76_N10
\inter1|counter_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~33_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(3));

-- Location: FF_X81_Y76_N13
\inter1|counter_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~21_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(4));

-- Location: FF_X81_Y76_N1
\inter1|counter_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~25_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(0));

-- Location: LABCELL_X80_Y75_N57
\inter1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|process_0~0_combout\ = ( \inter1|counter_out\(2) & ( \inter1|counter_out\(0) & ( (\inter1|counter_out\(3) & (\inter1|counter_out\(1) & (\inter1|counter_out\(4) & \inter1|counter_out\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_counter_out\(3),
	datab => \inter1|ALT_INV_counter_out\(1),
	datac => \inter1|ALT_INV_counter_out\(4),
	datad => \inter1|ALT_INV_counter_out\(5),
	datae => \inter1|ALT_INV_counter_out\(2),
	dataf => \inter1|ALT_INV_counter_out\(0),
	combout => \inter1|process_0~0_combout\);

-- Location: LABCELL_X80_Y76_N42
\inter1|process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|process_0~6_combout\ = ( !\inter1|counter_out[7]~DUPLICATE_q\ & ( \inter1|counter_out\(6) & ( \inter1|counter_out[8]~DUPLICATE_q\ ) ) ) # ( \inter1|counter_out[7]~DUPLICATE_q\ & ( !\inter1|counter_out\(6) & ( !\inter1|counter_out[8]~DUPLICATE_q\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inter1|ALT_INV_counter_out[8]~DUPLICATE_q\,
	datae => \inter1|ALT_INV_counter_out[7]~DUPLICATE_q\,
	dataf => \inter1|ALT_INV_counter_out\(6),
	combout => \inter1|process_0~6_combout\);

-- Location: FF_X80_Y76_N13
\inter1|state_reg.PingPong_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Selector15~1_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|state_reg.PingPong_state~q\);

-- Location: LABCELL_X80_Y76_N36
\inter1|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Selector13~0_combout\ = ( \inter1|state_reg.idle~q\ & ( \inter1|state_reg.PingPong_state~q\ & ( (!\inter1|process_0~0_combout\) # (((!\inter1|process_0~5_combout\) # (!\inter1|process_0~6_combout\)) # (\fec1|input_state_reg.PingPong_state~q\)) ) ) 
-- ) # ( !\inter1|state_reg.idle~q\ & ( \inter1|state_reg.PingPong_state~q\ & ( \fec1|input_state_reg.PingPong_state~q\ ) ) ) # ( \inter1|state_reg.idle~q\ & ( !\inter1|state_reg.PingPong_state~q\ ) ) # ( !\inter1|state_reg.idle~q\ & ( 
-- !\inter1|state_reg.PingPong_state~q\ & ( \fec1|input_state_reg.PingPong_state~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100110011001100111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_process_0~0_combout\,
	datab => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datac => \inter1|ALT_INV_process_0~5_combout\,
	datad => \inter1|ALT_INV_process_0~6_combout\,
	datae => \inter1|ALT_INV_state_reg.idle~q\,
	dataf => \inter1|ALT_INV_state_reg.PingPong_state~q\,
	combout => \inter1|Selector13~0_combout\);

-- Location: FF_X80_Y76_N37
\inter1|state_reg.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Selector13~0_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|state_reg.idle~q\);

-- Location: FF_X81_Y76_N25
\inter1|counter_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~1_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(8));

-- Location: FF_X81_Y76_N22
\inter1|counter_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~5_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(7));

-- Location: LABCELL_X80_Y75_N30
\inter1|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|LessThan2~0_combout\ = ( \inter1|counter_out\(6) & ( (\inter1|counter_out\(8) & ((\inter1|counter_out\(7)) # (\inter1|process_0~0_combout\))) ) ) # ( !\inter1|counter_out\(6) & ( (\inter1|counter_out\(8) & \inter1|counter_out\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inter1|ALT_INV_process_0~0_combout\,
	datac => \inter1|ALT_INV_counter_out\(8),
	datad => \inter1|ALT_INV_counter_out\(7),
	dataf => \inter1|ALT_INV_counter_out\(6),
	combout => \inter1|LessThan2~0_combout\);

-- Location: FF_X81_Y75_N11
\inter1|counter_out[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~65_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out[23]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y76_N33
\inter1|Add7~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~93_sumout\ = SUM(( \inter1|counter_out\(11) ) + ( GND ) + ( \inter1|Add7~90\ ))
-- \inter1|Add7~94\ = CARRY(( \inter1|counter_out\(11) ) + ( GND ) + ( \inter1|Add7~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_counter_out\(11),
	cin => \inter1|Add7~90\,
	sumout => \inter1|Add7~93_sumout\,
	cout => \inter1|Add7~94\);

-- Location: LABCELL_X81_Y76_N36
\inter1|Add7~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~97_sumout\ = SUM(( \inter1|counter_out\(12) ) + ( GND ) + ( \inter1|Add7~94\ ))
-- \inter1|Add7~98\ = CARRY(( \inter1|counter_out\(12) ) + ( GND ) + ( \inter1|Add7~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inter1|ALT_INV_counter_out\(12),
	cin => \inter1|Add7~94\,
	sumout => \inter1|Add7~97_sumout\,
	cout => \inter1|Add7~98\);

-- Location: FF_X81_Y76_N37
\inter1|counter_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~97_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(12));

-- Location: LABCELL_X81_Y76_N39
\inter1|Add7~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~101_sumout\ = SUM(( \inter1|counter_out\(13) ) + ( GND ) + ( \inter1|Add7~98\ ))
-- \inter1|Add7~102\ = CARRY(( \inter1|counter_out\(13) ) + ( GND ) + ( \inter1|Add7~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_counter_out\(13),
	cin => \inter1|Add7~98\,
	sumout => \inter1|Add7~101_sumout\,
	cout => \inter1|Add7~102\);

-- Location: FF_X81_Y76_N41
\inter1|counter_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~101_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(13));

-- Location: LABCELL_X81_Y76_N42
\inter1|Add7~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~105_sumout\ = SUM(( \inter1|counter_out\(14) ) + ( GND ) + ( \inter1|Add7~102\ ))
-- \inter1|Add7~106\ = CARRY(( \inter1|counter_out\(14) ) + ( GND ) + ( \inter1|Add7~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inter1|ALT_INV_counter_out\(14),
	cin => \inter1|Add7~102\,
	sumout => \inter1|Add7~105_sumout\,
	cout => \inter1|Add7~106\);

-- Location: FF_X81_Y76_N43
\inter1|counter_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~105_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(14));

-- Location: LABCELL_X81_Y76_N45
\inter1|Add7~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~109_sumout\ = SUM(( \inter1|counter_out\(15) ) + ( GND ) + ( \inter1|Add7~106\ ))
-- \inter1|Add7~110\ = CARRY(( \inter1|counter_out\(15) ) + ( GND ) + ( \inter1|Add7~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_counter_out\(15),
	cin => \inter1|Add7~106\,
	sumout => \inter1|Add7~109_sumout\,
	cout => \inter1|Add7~110\);

-- Location: FF_X81_Y76_N47
\inter1|counter_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~109_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(15));

-- Location: LABCELL_X81_Y76_N48
\inter1|Add7~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~53_sumout\ = SUM(( \inter1|counter_out\(16) ) + ( GND ) + ( \inter1|Add7~110\ ))
-- \inter1|Add7~54\ = CARRY(( \inter1|counter_out\(16) ) + ( GND ) + ( \inter1|Add7~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_counter_out\(16),
	cin => \inter1|Add7~110\,
	sumout => \inter1|Add7~53_sumout\,
	cout => \inter1|Add7~54\);

-- Location: FF_X81_Y76_N50
\inter1|counter_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~53_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(16));

-- Location: LABCELL_X81_Y76_N51
\inter1|Add7~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~113_sumout\ = SUM(( \inter1|counter_out\(17) ) + ( GND ) + ( \inter1|Add7~54\ ))
-- \inter1|Add7~114\ = CARRY(( \inter1|counter_out\(17) ) + ( GND ) + ( \inter1|Add7~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_counter_out\(17),
	cin => \inter1|Add7~54\,
	sumout => \inter1|Add7~113_sumout\,
	cout => \inter1|Add7~114\);

-- Location: FF_X81_Y76_N53
\inter1|counter_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~113_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(17));

-- Location: LABCELL_X81_Y76_N54
\inter1|Add7~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~117_sumout\ = SUM(( \inter1|counter_out\(18) ) + ( GND ) + ( \inter1|Add7~114\ ))
-- \inter1|Add7~118\ = CARRY(( \inter1|counter_out\(18) ) + ( GND ) + ( \inter1|Add7~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_counter_out\(18),
	cin => \inter1|Add7~114\,
	sumout => \inter1|Add7~117_sumout\,
	cout => \inter1|Add7~118\);

-- Location: FF_X81_Y76_N56
\inter1|counter_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~117_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(18));

-- Location: LABCELL_X81_Y76_N57
\inter1|Add7~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~121_sumout\ = SUM(( \inter1|counter_out\(19) ) + ( GND ) + ( \inter1|Add7~118\ ))
-- \inter1|Add7~122\ = CARRY(( \inter1|counter_out\(19) ) + ( GND ) + ( \inter1|Add7~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_counter_out\(19),
	cin => \inter1|Add7~118\,
	sumout => \inter1|Add7~121_sumout\,
	cout => \inter1|Add7~122\);

-- Location: FF_X81_Y76_N59
\inter1|counter_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~121_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(19));

-- Location: LABCELL_X81_Y75_N0
\inter1|Add7~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~125_sumout\ = SUM(( \inter1|counter_out\(20) ) + ( GND ) + ( \inter1|Add7~122\ ))
-- \inter1|Add7~126\ = CARRY(( \inter1|counter_out\(20) ) + ( GND ) + ( \inter1|Add7~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_counter_out\(20),
	cin => \inter1|Add7~122\,
	sumout => \inter1|Add7~125_sumout\,
	cout => \inter1|Add7~126\);

-- Location: FF_X81_Y75_N2
\inter1|counter_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~125_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(20));

-- Location: LABCELL_X81_Y75_N3
\inter1|Add7~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~57_sumout\ = SUM(( \inter1|counter_out\(21) ) + ( GND ) + ( \inter1|Add7~126\ ))
-- \inter1|Add7~58\ = CARRY(( \inter1|counter_out\(21) ) + ( GND ) + ( \inter1|Add7~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inter1|ALT_INV_counter_out\(21),
	cin => \inter1|Add7~126\,
	sumout => \inter1|Add7~57_sumout\,
	cout => \inter1|Add7~58\);

-- Location: FF_X81_Y75_N5
\inter1|counter_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~57_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(21));

-- Location: LABCELL_X81_Y75_N6
\inter1|Add7~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~61_sumout\ = SUM(( \inter1|counter_out\(22) ) + ( GND ) + ( \inter1|Add7~58\ ))
-- \inter1|Add7~62\ = CARRY(( \inter1|counter_out\(22) ) + ( GND ) + ( \inter1|Add7~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inter1|ALT_INV_counter_out\(22),
	cin => \inter1|Add7~58\,
	sumout => \inter1|Add7~61_sumout\,
	cout => \inter1|Add7~62\);

-- Location: FF_X81_Y75_N8
\inter1|counter_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~61_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(22));

-- Location: LABCELL_X81_Y75_N9
\inter1|Add7~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~65_sumout\ = SUM(( \inter1|counter_out[23]~DUPLICATE_q\ ) + ( GND ) + ( \inter1|Add7~62\ ))
-- \inter1|Add7~66\ = CARRY(( \inter1|counter_out[23]~DUPLICATE_q\ ) + ( GND ) + ( \inter1|Add7~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_counter_out[23]~DUPLICATE_q\,
	cin => \inter1|Add7~62\,
	sumout => \inter1|Add7~65_sumout\,
	cout => \inter1|Add7~66\);

-- Location: FF_X81_Y75_N10
\inter1|counter_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~65_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(23));

-- Location: LABCELL_X81_Y75_N12
\inter1|Add7~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~69_sumout\ = SUM(( \inter1|counter_out\(24) ) + ( GND ) + ( \inter1|Add7~66\ ))
-- \inter1|Add7~70\ = CARRY(( \inter1|counter_out\(24) ) + ( GND ) + ( \inter1|Add7~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inter1|ALT_INV_counter_out\(24),
	cin => \inter1|Add7~66\,
	sumout => \inter1|Add7~69_sumout\,
	cout => \inter1|Add7~70\);

-- Location: FF_X81_Y75_N14
\inter1|counter_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~69_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(24));

-- Location: LABCELL_X81_Y75_N15
\inter1|Add7~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~73_sumout\ = SUM(( \inter1|counter_out\(25) ) + ( GND ) + ( \inter1|Add7~70\ ))
-- \inter1|Add7~74\ = CARRY(( \inter1|counter_out\(25) ) + ( GND ) + ( \inter1|Add7~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_counter_out\(25),
	cin => \inter1|Add7~70\,
	sumout => \inter1|Add7~73_sumout\,
	cout => \inter1|Add7~74\);

-- Location: FF_X81_Y75_N17
\inter1|counter_out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~73_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(25));

-- Location: LABCELL_X81_Y75_N18
\inter1|Add7~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~77_sumout\ = SUM(( \inter1|counter_out\(26) ) + ( GND ) + ( \inter1|Add7~74\ ))
-- \inter1|Add7~78\ = CARRY(( \inter1|counter_out\(26) ) + ( GND ) + ( \inter1|Add7~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_counter_out\(26),
	cin => \inter1|Add7~74\,
	sumout => \inter1|Add7~77_sumout\,
	cout => \inter1|Add7~78\);

-- Location: FF_X81_Y75_N20
\inter1|counter_out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~77_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(26));

-- Location: LABCELL_X81_Y75_N42
\inter1|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|process_0~2_combout\ = ( !\inter1|counter_out\(21) & ( !\inter1|counter_out\(25) & ( (!\inter1|counter_out\(23) & (!\inter1|counter_out\(22) & (!\inter1|counter_out\(26) & !\inter1|counter_out\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_counter_out\(23),
	datab => \inter1|ALT_INV_counter_out\(22),
	datac => \inter1|ALT_INV_counter_out\(26),
	datad => \inter1|ALT_INV_counter_out\(24),
	datae => \inter1|ALT_INV_counter_out\(21),
	dataf => \inter1|ALT_INV_counter_out\(25),
	combout => \inter1|process_0~2_combout\);

-- Location: LABCELL_X81_Y75_N21
\inter1|Add7~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~41_sumout\ = SUM(( \inter1|counter_out\(27) ) + ( GND ) + ( \inter1|Add7~78\ ))
-- \inter1|Add7~42\ = CARRY(( \inter1|counter_out\(27) ) + ( GND ) + ( \inter1|Add7~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inter1|ALT_INV_counter_out\(27),
	cin => \inter1|Add7~78\,
	sumout => \inter1|Add7~41_sumout\,
	cout => \inter1|Add7~42\);

-- Location: FF_X81_Y75_N23
\inter1|counter_out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~41_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(27));

-- Location: LABCELL_X81_Y75_N24
\inter1|Add7~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~45_sumout\ = SUM(( \inter1|counter_out\(28) ) + ( GND ) + ( \inter1|Add7~42\ ))
-- \inter1|Add7~46\ = CARRY(( \inter1|counter_out\(28) ) + ( GND ) + ( \inter1|Add7~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_counter_out\(28),
	cin => \inter1|Add7~42\,
	sumout => \inter1|Add7~45_sumout\,
	cout => \inter1|Add7~46\);

-- Location: FF_X81_Y75_N26
\inter1|counter_out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~45_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(28));

-- Location: LABCELL_X81_Y75_N27
\inter1|Add7~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~37_sumout\ = SUM(( \inter1|counter_out\(29) ) + ( GND ) + ( \inter1|Add7~46\ ))
-- \inter1|Add7~38\ = CARRY(( \inter1|counter_out\(29) ) + ( GND ) + ( \inter1|Add7~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_counter_out\(29),
	cin => \inter1|Add7~46\,
	sumout => \inter1|Add7~37_sumout\,
	cout => \inter1|Add7~38\);

-- Location: FF_X81_Y75_N28
\inter1|counter_out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~37_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(29));

-- Location: LABCELL_X81_Y75_N30
\inter1|Add7~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~49_sumout\ = SUM(( \inter1|counter_out\(30) ) + ( GND ) + ( \inter1|Add7~38\ ))
-- \inter1|Add7~50\ = CARRY(( \inter1|counter_out\(30) ) + ( GND ) + ( \inter1|Add7~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_counter_out\(30),
	cin => \inter1|Add7~38\,
	sumout => \inter1|Add7~49_sumout\,
	cout => \inter1|Add7~50\);

-- Location: FF_X81_Y75_N31
\inter1|counter_out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~49_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(30));

-- Location: LABCELL_X81_Y75_N36
\inter1|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|process_0~1_combout\ = ( !\inter1|counter_out\(16) & ( (!\inter1|counter_out\(30) & (!\inter1|counter_out\(29) & (!\inter1|counter_out\(28) & !\inter1|counter_out\(27)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_counter_out\(30),
	datab => \inter1|ALT_INV_counter_out\(29),
	datac => \inter1|ALT_INV_counter_out\(28),
	datad => \inter1|ALT_INV_counter_out\(27),
	dataf => \inter1|ALT_INV_counter_out\(16),
	combout => \inter1|process_0~1_combout\);

-- Location: FF_X81_Y75_N1
\inter1|counter_out[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~125_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out[20]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y76_N54
\inter1|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|process_0~4_combout\ = ( !\inter1|counter_out\(18) & ( !\inter1|counter_out\(14) & ( (!\inter1|counter_out\(15) & (!\inter1|counter_out\(19) & (!\inter1|counter_out\(17) & !\inter1|counter_out[20]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_counter_out\(15),
	datab => \inter1|ALT_INV_counter_out\(19),
	datac => \inter1|ALT_INV_counter_out\(17),
	datad => \inter1|ALT_INV_counter_out[20]~DUPLICATE_q\,
	datae => \inter1|ALT_INV_counter_out\(18),
	dataf => \inter1|ALT_INV_counter_out\(14),
	combout => \inter1|process_0~4_combout\);

-- Location: LABCELL_X80_Y75_N42
\inter1|counter_kmod16[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|counter_kmod16[1]~1_combout\ = ( \inter1|process_0~1_combout\ & ( \inter1|process_0~4_combout\ & ( (!\inter1|LessThan2~0_combout\ & (\inter1|process_0~2_combout\ & (\inter1|process_0~3_combout\ & \inter1|state_reg.PingPong_state~DUPLICATE_q\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_LessThan2~0_combout\,
	datab => \inter1|ALT_INV_process_0~2_combout\,
	datac => \inter1|ALT_INV_process_0~3_combout\,
	datad => \inter1|ALT_INV_state_reg.PingPong_state~DUPLICATE_q\,
	datae => \inter1|ALT_INV_process_0~1_combout\,
	dataf => \inter1|ALT_INV_process_0~4_combout\,
	combout => \inter1|counter_kmod16[1]~1_combout\);

-- Location: LABCELL_X80_Y76_N3
\inter1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Equal0~1_combout\ = ( \inter1|counter\(7) & ( (\inter1|Equal0~0_combout\ & !\inter1|counter\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_Equal0~0_combout\,
	datad => \inter1|ALT_INV_counter\(6),
	dataf => \inter1|ALT_INV_counter\(7),
	combout => \inter1|Equal0~1_combout\);

-- Location: LABCELL_X79_Y75_N24
\inter1|counter_kmod16[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|counter_kmod16[1]~2_combout\ = ( \inter1|Equal0~1_combout\ & ( ((!\inter1|LessThan0~0_combout\ & \fec1|input_state_reg.PingPong_state~q\)) # (\inter1|state_reg.idle~q\) ) ) # ( !\inter1|Equal0~1_combout\ & ( (!\inter1|state_reg.idle~q\ & 
-- (!\inter1|LessThan0~0_combout\ & (\fec1|input_state_reg.PingPong_state~q\))) # (\inter1|state_reg.idle~q\ & ((!\inter1|LessThan0~0_combout\) # ((!\inter1|counter_kmod16[1]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101001100010111010100110001011101010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_state_reg.idle~q\,
	datab => \inter1|ALT_INV_LessThan0~0_combout\,
	datac => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datad => \inter1|ALT_INV_counter_kmod16[1]~1_combout\,
	dataf => \inter1|ALT_INV_Equal0~1_combout\,
	combout => \inter1|counter_kmod16[1]~2_combout\);

-- Location: FF_X79_Y75_N41
\inter1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add6~17_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_kmod16[1]~0_combout\,
	ena => \inter1|counter_kmod16[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter\(3));

-- Location: LABCELL_X79_Y75_N42
\inter1|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add6~13_sumout\ = SUM(( \inter1|counter\(4) ) + ( GND ) + ( \inter1|Add6~18\ ))
-- \inter1|Add6~14\ = CARRY(( \inter1|counter\(4) ) + ( GND ) + ( \inter1|Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inter1|ALT_INV_counter\(4),
	cin => \inter1|Add6~18\,
	sumout => \inter1|Add6~13_sumout\,
	cout => \inter1|Add6~14\);

-- Location: FF_X79_Y75_N43
\inter1|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add6~13_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_kmod16[1]~0_combout\,
	ena => \inter1|counter_kmod16[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter\(4));

-- Location: LABCELL_X79_Y75_N45
\inter1|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add6~9_sumout\ = SUM(( \inter1|counter\(5) ) + ( GND ) + ( \inter1|Add6~14\ ))
-- \inter1|Add6~10\ = CARRY(( \inter1|counter\(5) ) + ( GND ) + ( \inter1|Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inter1|ALT_INV_counter\(5),
	cin => \inter1|Add6~14\,
	sumout => \inter1|Add6~9_sumout\,
	cout => \inter1|Add6~10\);

-- Location: FF_X79_Y75_N46
\inter1|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add6~9_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_kmod16[1]~0_combout\,
	ena => \inter1|counter_kmod16[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter\(5));

-- Location: FF_X79_Y75_N50
\inter1|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add6~5_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_kmod16[1]~0_combout\,
	ena => \inter1|counter_kmod16[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter\(6));

-- Location: LABCELL_X80_Y76_N51
\inter1|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Selector15~0_combout\ = ( \inter1|counter[7]~DUPLICATE_q\ & ( \inter1|state_reg.input_buffer~q\ & ( (\inter1|Equal0~0_combout\) # (\inter1|counter\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_counter\(6),
	datab => \inter1|ALT_INV_Equal0~0_combout\,
	datae => \inter1|ALT_INV_counter[7]~DUPLICATE_q\,
	dataf => \inter1|ALT_INV_state_reg.input_buffer~q\,
	combout => \inter1|Selector15~0_combout\);

-- Location: LABCELL_X80_Y76_N12
\inter1|Selector15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Selector15~1_combout\ = ( \inter1|state_reg.PingPong_state~q\ & ( \inter1|process_0~6_combout\ & ( ((!\inter1|process_0~0_combout\) # ((!\inter1|process_0~5_combout\) # (\fec1|input_state_reg.PingPong_state~q\))) # (\inter1|Selector15~0_combout\) 
-- ) ) ) # ( !\inter1|state_reg.PingPong_state~q\ & ( \inter1|process_0~6_combout\ & ( \inter1|Selector15~0_combout\ ) ) ) # ( \inter1|state_reg.PingPong_state~q\ & ( !\inter1|process_0~6_combout\ ) ) # ( !\inter1|state_reg.PingPong_state~q\ & ( 
-- !\inter1|process_0~6_combout\ & ( \inter1|Selector15~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111101010101010101011111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_Selector15~0_combout\,
	datab => \inter1|ALT_INV_process_0~0_combout\,
	datac => \inter1|ALT_INV_process_0~5_combout\,
	datad => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datae => \inter1|ALT_INV_state_reg.PingPong_state~q\,
	dataf => \inter1|ALT_INV_process_0~6_combout\,
	combout => \inter1|Selector15~1_combout\);

-- Location: FF_X80_Y76_N14
\inter1|state_reg.PingPong_state~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Selector15~1_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|state_reg.PingPong_state~DUPLICATE_q\);

-- Location: LABCELL_X81_Y75_N54
\inter1|counter_out[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|counter_out[5]~0_combout\ = ( \inter1|process_0~5_combout\ & ( \fec1|input_state_reg.PingPong_state~q\ & ( (\inter1|state_reg.PingPong_state~DUPLICATE_q\ & \inter1|LessThan2~0_combout\) ) ) ) # ( !\inter1|process_0~5_combout\ & ( 
-- \fec1|input_state_reg.PingPong_state~q\ & ( \inter1|state_reg.PingPong_state~DUPLICATE_q\ ) ) ) # ( \inter1|process_0~5_combout\ & ( !\fec1|input_state_reg.PingPong_state~q\ & ( (\inter1|state_reg.PingPong_state~DUPLICATE_q\ & 
-- (((\inter1|process_0~0_combout\ & \inter1|process_0~6_combout\)) # (\inter1|LessThan2~0_combout\))) ) ) ) # ( !\inter1|process_0~5_combout\ & ( !\fec1|input_state_reg.PingPong_state~q\ & ( \inter1|state_reg.PingPong_state~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000001010001010101010101010101010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_state_reg.PingPong_state~DUPLICATE_q\,
	datab => \inter1|ALT_INV_process_0~0_combout\,
	datac => \inter1|ALT_INV_LessThan2~0_combout\,
	datad => \inter1|ALT_INV_process_0~6_combout\,
	datae => \inter1|ALT_INV_process_0~5_combout\,
	dataf => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	combout => \inter1|counter_out[5]~0_combout\);

-- Location: FF_X81_Y76_N2
\inter1|counter_out[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~25_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out[0]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y76_N3
\inter1|Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~29_sumout\ = SUM(( \inter1|counter_out\(1) ) + ( GND ) + ( \inter1|Add7~26\ ))
-- \inter1|Add7~30\ = CARRY(( \inter1|counter_out\(1) ) + ( GND ) + ( \inter1|Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inter1|ALT_INV_counter_out\(1),
	cin => \inter1|Add7~26\,
	sumout => \inter1|Add7~29_sumout\,
	cout => \inter1|Add7~30\);

-- Location: FF_X81_Y76_N5
\inter1|counter_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~29_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(1));

-- Location: LABCELL_X81_Y76_N6
\inter1|Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~17_sumout\ = SUM(( \inter1|counter_out\(2) ) + ( GND ) + ( \inter1|Add7~30\ ))
-- \inter1|Add7~18\ = CARRY(( \inter1|counter_out\(2) ) + ( GND ) + ( \inter1|Add7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_counter_out\(2),
	cin => \inter1|Add7~30\,
	sumout => \inter1|Add7~17_sumout\,
	cout => \inter1|Add7~18\);

-- Location: FF_X81_Y76_N7
\inter1|counter_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~17_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(2));

-- Location: LABCELL_X81_Y76_N9
\inter1|Add7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~33_sumout\ = SUM(( \inter1|counter_out[3]~DUPLICATE_q\ ) + ( GND ) + ( \inter1|Add7~18\ ))
-- \inter1|Add7~34\ = CARRY(( \inter1|counter_out[3]~DUPLICATE_q\ ) + ( GND ) + ( \inter1|Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_counter_out[3]~DUPLICATE_q\,
	cin => \inter1|Add7~18\,
	sumout => \inter1|Add7~33_sumout\,
	cout => \inter1|Add7~34\);

-- Location: FF_X81_Y76_N11
\inter1|counter_out[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~33_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out[3]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y76_N12
\inter1|Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~21_sumout\ = SUM(( \inter1|counter_out[4]~DUPLICATE_q\ ) + ( GND ) + ( \inter1|Add7~34\ ))
-- \inter1|Add7~22\ = CARRY(( \inter1|counter_out[4]~DUPLICATE_q\ ) + ( GND ) + ( \inter1|Add7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inter1|ALT_INV_counter_out[4]~DUPLICATE_q\,
	cin => \inter1|Add7~34\,
	sumout => \inter1|Add7~21_sumout\,
	cout => \inter1|Add7~22\);

-- Location: FF_X81_Y76_N14
\inter1|counter_out[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~21_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out[4]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y76_N15
\inter1|Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~13_sumout\ = SUM(( \inter1|counter_out\(5) ) + ( GND ) + ( \inter1|Add7~22\ ))
-- \inter1|Add7~14\ = CARRY(( \inter1|counter_out\(5) ) + ( GND ) + ( \inter1|Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_counter_out\(5),
	cin => \inter1|Add7~22\,
	sumout => \inter1|Add7~13_sumout\,
	cout => \inter1|Add7~14\);

-- Location: FF_X81_Y76_N17
\inter1|counter_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~13_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(5));

-- Location: LABCELL_X81_Y76_N18
\inter1|Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~9_sumout\ = SUM(( \inter1|counter_out\(6) ) + ( GND ) + ( \inter1|Add7~14\ ))
-- \inter1|Add7~10\ = CARRY(( \inter1|counter_out\(6) ) + ( GND ) + ( \inter1|Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_counter_out\(6),
	cin => \inter1|Add7~14\,
	sumout => \inter1|Add7~9_sumout\,
	cout => \inter1|Add7~10\);

-- Location: FF_X81_Y76_N20
\inter1|counter_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~9_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(6));

-- Location: LABCELL_X81_Y76_N21
\inter1|Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~5_sumout\ = SUM(( \inter1|counter_out[7]~DUPLICATE_q\ ) + ( GND ) + ( \inter1|Add7~10\ ))
-- \inter1|Add7~6\ = CARRY(( \inter1|counter_out[7]~DUPLICATE_q\ ) + ( GND ) + ( \inter1|Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inter1|ALT_INV_counter_out[7]~DUPLICATE_q\,
	cin => \inter1|Add7~10\,
	sumout => \inter1|Add7~5_sumout\,
	cout => \inter1|Add7~6\);

-- Location: FF_X81_Y76_N23
\inter1|counter_out[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~5_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out[7]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y76_N24
\inter1|Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~1_sumout\ = SUM(( \inter1|counter_out[8]~DUPLICATE_q\ ) + ( GND ) + ( \inter1|Add7~6\ ))
-- \inter1|Add7~2\ = CARRY(( \inter1|counter_out[8]~DUPLICATE_q\ ) + ( GND ) + ( \inter1|Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_counter_out[8]~DUPLICATE_q\,
	cin => \inter1|Add7~6\,
	sumout => \inter1|Add7~1_sumout\,
	cout => \inter1|Add7~2\);

-- Location: FF_X81_Y76_N26
\inter1|counter_out[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~1_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out[8]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y76_N27
\inter1|Add7~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~85_sumout\ = SUM(( \inter1|counter_out\(9) ) + ( GND ) + ( \inter1|Add7~2\ ))
-- \inter1|Add7~86\ = CARRY(( \inter1|counter_out\(9) ) + ( GND ) + ( \inter1|Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inter1|ALT_INV_counter_out\(9),
	cin => \inter1|Add7~2\,
	sumout => \inter1|Add7~85_sumout\,
	cout => \inter1|Add7~86\);

-- Location: FF_X81_Y76_N29
\inter1|counter_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~85_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(9));

-- Location: LABCELL_X81_Y76_N30
\inter1|Add7~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~89_sumout\ = SUM(( \inter1|counter_out\(10) ) + ( GND ) + ( \inter1|Add7~86\ ))
-- \inter1|Add7~90\ = CARRY(( \inter1|counter_out\(10) ) + ( GND ) + ( \inter1|Add7~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_counter_out\(10),
	cin => \inter1|Add7~86\,
	sumout => \inter1|Add7~89_sumout\,
	cout => \inter1|Add7~90\);

-- Location: FF_X81_Y76_N31
\inter1|counter_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~89_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(10));

-- Location: FF_X81_Y76_N35
\inter1|counter_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add7~93_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_out[5]~0_combout\,
	ena => \inter1|counter_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(11));

-- Location: LABCELL_X81_Y75_N39
\inter1|process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|process_0~7_combout\ = ( !\fec1|input_state_reg.PingPong_state~q\ & ( (\inter1|process_0~0_combout\ & \inter1|process_0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_process_0~0_combout\,
	datad => \inter1|ALT_INV_process_0~6_combout\,
	dataf => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	combout => \inter1|process_0~7_combout\);

-- Location: LABCELL_X80_Y76_N24
\inter1|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Selector16~0_combout\ = ( !\inter1|state_reg.PingPong_state~q\ & ( (\inter1|counter[7]~DUPLICATE_q\ & (\inter1|state_reg.input_buffer~q\ & ((\inter1|Equal0~0_combout\) # (\inter1|counter\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011000000010000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_counter\(6),
	datab => \inter1|ALT_INV_counter[7]~DUPLICATE_q\,
	datac => \inter1|ALT_INV_state_reg.input_buffer~q\,
	datad => \inter1|ALT_INV_Equal0~0_combout\,
	dataf => \inter1|ALT_INV_state_reg.PingPong_state~q\,
	combout => \inter1|Selector16~0_combout\);

-- Location: LABCELL_X80_Y75_N48
\inter1|Selector16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Selector16~1_combout\ = ( \inter1|counter[7]~DUPLICATE_q\ & ( \inter1|state_reg.input_buffer~q\ & ( (\inter1|counter_out\(31) & (!\inter1|Equal0~0_combout\ & (!\inter1|counter\(6) & !\inter1|state_reg.PingPong_state~DUPLICATE_q\))) ) ) ) # ( 
-- !\inter1|counter[7]~DUPLICATE_q\ & ( \inter1|state_reg.input_buffer~q\ & ( (\inter1|counter_out\(31) & !\inter1|state_reg.PingPong_state~DUPLICATE_q\) ) ) ) # ( \inter1|counter[7]~DUPLICATE_q\ & ( !\inter1|state_reg.input_buffer~q\ & ( 
-- (\inter1|counter_out\(31) & !\inter1|state_reg.PingPong_state~DUPLICATE_q\) ) ) ) # ( !\inter1|counter[7]~DUPLICATE_q\ & ( !\inter1|state_reg.input_buffer~q\ & ( (\inter1|counter_out\(31) & !\inter1|state_reg.PingPong_state~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_counter_out\(31),
	datab => \inter1|ALT_INV_Equal0~0_combout\,
	datac => \inter1|ALT_INV_counter\(6),
	datad => \inter1|ALT_INV_state_reg.PingPong_state~DUPLICATE_q\,
	datae => \inter1|ALT_INV_counter[7]~DUPLICATE_q\,
	dataf => \inter1|ALT_INV_state_reg.input_buffer~q\,
	combout => \inter1|Selector16~1_combout\);

-- Location: LABCELL_X81_Y75_N33
\inter1|Add7~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add7~81_sumout\ = SUM(( \inter1|counter_out\(31) ) + ( GND ) + ( \inter1|Add7~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_counter_out\(31),
	cin => \inter1|Add7~50\,
	sumout => \inter1|Add7~81_sumout\);

-- Location: LABCELL_X81_Y75_N48
\inter1|Selector16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Selector16~2_combout\ = ( \inter1|process_0~5_combout\ & ( \inter1|Add7~81_sumout\ & ( (((\inter1|counter_kmod16[1]~1_combout\ & !\inter1|process_0~7_combout\)) # (\inter1|Selector16~1_combout\)) # (\inter1|Selector16~0_combout\) ) ) ) # ( 
-- !\inter1|process_0~5_combout\ & ( \inter1|Add7~81_sumout\ & ( ((\inter1|Selector16~1_combout\) # (\inter1|Selector16~0_combout\)) # (\inter1|counter_kmod16[1]~1_combout\) ) ) ) # ( \inter1|process_0~5_combout\ & ( !\inter1|Add7~81_sumout\ & ( 
-- \inter1|Selector16~1_combout\ ) ) ) # ( !\inter1|process_0~5_combout\ & ( !\inter1|Add7~81_sumout\ & ( \inter1|Selector16~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101011111111111110100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_counter_kmod16[1]~1_combout\,
	datab => \inter1|ALT_INV_process_0~7_combout\,
	datac => \inter1|ALT_INV_Selector16~0_combout\,
	datad => \inter1|ALT_INV_Selector16~1_combout\,
	datae => \inter1|ALT_INV_process_0~5_combout\,
	dataf => \inter1|ALT_INV_Add7~81_sumout\,
	combout => \inter1|Selector16~2_combout\);

-- Location: FF_X81_Y75_N49
\inter1|counter_out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Selector16~2_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_out\(31));

-- Location: LABCELL_X80_Y76_N18
\inter1|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|process_0~3_combout\ = ( !\inter1|counter_out\(9) & ( !\inter1|counter_out\(10) & ( (!\inter1|counter_out\(11) & (!\inter1|counter_out\(31) & (!\inter1|counter_out\(13) & !\inter1|counter_out\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_counter_out\(11),
	datab => \inter1|ALT_INV_counter_out\(31),
	datac => \inter1|ALT_INV_counter_out\(13),
	datad => \inter1|ALT_INV_counter_out\(12),
	datae => \inter1|ALT_INV_counter_out\(9),
	dataf => \inter1|ALT_INV_counter_out\(10),
	combout => \inter1|process_0~3_combout\);

-- Location: LABCELL_X80_Y75_N33
\inter1|process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|process_0~5_combout\ = ( \inter1|process_0~4_combout\ & ( (\inter1|process_0~3_combout\ & (\inter1|process_0~2_combout\ & \inter1|process_0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_process_0~3_combout\,
	datac => \inter1|ALT_INV_process_0~2_combout\,
	datad => \inter1|ALT_INV_process_0~1_combout\,
	dataf => \inter1|ALT_INV_process_0~4_combout\,
	combout => \inter1|process_0~5_combout\);

-- Location: LABCELL_X80_Y75_N39
\inter1|counter_kmod16[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|counter_kmod16[1]~0_combout\ = ( \inter1|LessThan2~0_combout\ & ( (\inter1|state_reg.input_buffer~q\ & \inter1|LessThan0~0_combout\) ) ) # ( !\inter1|LessThan2~0_combout\ & ( (\inter1|LessThan0~0_combout\ & (((\inter1|process_0~5_combout\ & 
-- \inter1|state_reg.PingPong_state~DUPLICATE_q\)) # (\inter1|state_reg.input_buffer~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110111000000000011011100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_process_0~5_combout\,
	datab => \inter1|ALT_INV_state_reg.input_buffer~q\,
	datac => \inter1|ALT_INV_state_reg.PingPong_state~DUPLICATE_q\,
	datad => \inter1|ALT_INV_LessThan0~0_combout\,
	dataf => \inter1|ALT_INV_LessThan2~0_combout\,
	combout => \inter1|counter_kmod16[1]~0_combout\);

-- Location: FF_X79_Y75_N32
\inter1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add6~25_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_kmod16[1]~0_combout\,
	ena => \inter1|counter_kmod16[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter\(0));

-- Location: LABCELL_X79_Y75_N33
\inter1|Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add6~29_sumout\ = SUM(( \inter1|counter\(1) ) + ( GND ) + ( \inter1|Add6~26\ ))
-- \inter1|Add6~30\ = CARRY(( \inter1|counter\(1) ) + ( GND ) + ( \inter1|Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inter1|ALT_INV_counter\(1),
	cin => \inter1|Add6~26\,
	sumout => \inter1|Add6~29_sumout\,
	cout => \inter1|Add6~30\);

-- Location: FF_X79_Y75_N35
\inter1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add6~29_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_kmod16[1]~0_combout\,
	ena => \inter1|counter_kmod16[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter\(1));

-- Location: FF_X79_Y75_N38
\inter1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add6~21_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_kmod16[1]~0_combout\,
	ena => \inter1|counter_kmod16[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter\(2));

-- Location: FF_X79_Y75_N47
\inter1|counter[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add6~9_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_kmod16[1]~0_combout\,
	ena => \inter1|counter_kmod16[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter[5]~DUPLICATE_q\);

-- Location: FF_X79_Y75_N44
\inter1|counter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add6~13_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_kmod16[1]~0_combout\,
	ena => \inter1|counter_kmod16[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter[4]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y75_N18
\inter1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Equal0~0_combout\ = ( \inter1|counter[5]~DUPLICATE_q\ & ( \inter1|counter[4]~DUPLICATE_q\ & ( (\inter1|counter\(2) & (\inter1|counter\(3) & (\inter1|counter\(1) & \inter1|counter\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_counter\(2),
	datab => \inter1|ALT_INV_counter\(3),
	datac => \inter1|ALT_INV_counter\(1),
	datad => \inter1|ALT_INV_counter\(0),
	datae => \inter1|ALT_INV_counter[5]~DUPLICATE_q\,
	dataf => \inter1|ALT_INV_counter[4]~DUPLICATE_q\,
	combout => \inter1|Equal0~0_combout\);

-- Location: LABCELL_X80_Y76_N6
\inter1|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|LessThan0~0_combout\ = ( \inter1|counter[7]~DUPLICATE_q\ & ( (\inter1|counter\(6)) # (\inter1|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110011111100000000000000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inter1|ALT_INV_Equal0~0_combout\,
	datac => \inter1|ALT_INV_counter\(6),
	datae => \inter1|ALT_INV_counter[7]~DUPLICATE_q\,
	combout => \inter1|LessThan0~0_combout\);

-- Location: LABCELL_X80_Y75_N12
\inter1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Selector0~0_combout\ = ( \inter1|INTER_Output_valid~q\ & ( \inter1|state_reg.input_buffer~q\ ) ) # ( !\inter1|INTER_Output_valid~q\ & ( \inter1|state_reg.input_buffer~q\ & ( ((!\inter1|LessThan2~0_combout\ & (\inter1|process_0~5_combout\ & 
-- \inter1|state_reg.PingPong_state~DUPLICATE_q\))) # (\inter1|LessThan0~0_combout\) ) ) ) # ( \inter1|INTER_Output_valid~q\ & ( !\inter1|state_reg.input_buffer~q\ & ( \inter1|state_reg.PingPong_state~DUPLICATE_q\ ) ) ) # ( !\inter1|INTER_Output_valid~q\ & ( 
-- !\inter1|state_reg.input_buffer~q\ & ( (!\inter1|LessThan2~0_combout\ & (\inter1|process_0~5_combout\ & \inter1|state_reg.PingPong_state~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000001111111101010101010111011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_LessThan0~0_combout\,
	datab => \inter1|ALT_INV_LessThan2~0_combout\,
	datac => \inter1|ALT_INV_process_0~5_combout\,
	datad => \inter1|ALT_INV_state_reg.PingPong_state~DUPLICATE_q\,
	datae => \inter1|ALT_INV_INTER_Output_valid~q\,
	dataf => \inter1|ALT_INV_state_reg.input_buffer~q\,
	combout => \inter1|Selector0~0_combout\);

-- Location: FF_X80_Y75_N13
\inter1|INTER_Output_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Selector0~0_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|INTER_Output_valid~q\);

-- Location: LABCELL_X80_Y75_N18
\modu1|flag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|flag~0_combout\ = ( !\modu1|flag~q\ & ( \inter1|INTER_Output_valid~q\ ) ) # ( \modu1|flag~q\ & ( !\inter1|INTER_Output_valid~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \modu1|ALT_INV_flag~q\,
	dataf => \inter1|ALT_INV_INTER_Output_valid~q\,
	combout => \modu1|flag~0_combout\);

-- Location: FF_X80_Y75_N19
\modu1|flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|flag~0_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|flag~q\);

-- Location: LABCELL_X74_Y79_N33
\modu1|Finished_Flag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|Finished_Flag~0_combout\ = (!\inter1|INTER_Output_valid~q\) # (\modu1|Finished_Flag~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inter1|ALT_INV_INTER_Output_valid~q\,
	datad => \modu1|ALT_INV_Finished_Flag~q\,
	combout => \modu1|Finished_Flag~0_combout\);

-- Location: FF_X74_Y79_N35
\modu1|Finished_Flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|Finished_Flag~0_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|Finished_Flag~q\);

-- Location: LABCELL_X74_Y79_N30
\modu1|MODU_output_valid~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_valid~0_combout\ = ( \modu1|Finished_Flag~q\ & ( (\inter1|INTER_Output_valid~q\ & ((\modu1|MODU_output_valid~q\) # (\modu1|flag~q\))) ) ) # ( !\modu1|Finished_Flag~q\ & ( ((\inter1|INTER_Output_valid~q\ & \modu1|flag~q\)) # 
-- (\modu1|MODU_output_valid~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111100000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inter1|ALT_INV_INTER_Output_valid~q\,
	datac => \modu1|ALT_INV_flag~q\,
	datad => \modu1|ALT_INV_MODU_output_valid~q\,
	dataf => \modu1|ALT_INV_Finished_Flag~q\,
	combout => \modu1|MODU_output_valid~0_combout\);

-- Location: FF_X74_Y79_N31
\modu1|MODU_output_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_valid~0_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_valid~q\);

-- Location: IOIBUF_X58_Y0_N92
\TopWiMax_in_ready~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TopWiMax_in_ready,
	o => \TopWiMax_in_ready~input_o\);

-- Location: MLABCELL_X72_Y79_N30
\modu1|MODU_output_Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_Q[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \modu1|MODU_output_Q[0]~feeder_combout\);

-- Location: LABCELL_X74_Y79_N0
\modu1|MODU_output_Q[14]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_Q[14]~0_combout\ = ( \inter1|INTER_Output_valid~q\ & ( \modu1|flag~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \modu1|ALT_INV_flag~q\,
	dataf => \inter1|ALT_INV_INTER_Output_valid~q\,
	combout => \modu1|MODU_output_Q[14]~0_combout\);

-- Location: FF_X72_Y79_N31
\modu1|MODU_output_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_Q[0]~feeder_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_Q\(0));

-- Location: LABCELL_X81_Y78_N9
\fec1|process_0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|process_0~8_combout\ = ( \fec1|counter_buffer_input\(0) & ( !\fec1|counter_buffer_input\(1) $ (\fec1|counter_buffer_input\(2)) ) ) # ( !\fec1|counter_buffer_input\(0) & ( (!\fec1|counter_buffer_input\(1) & !\fec1|counter_buffer_input\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(1),
	datad => \fec1|ALT_INV_counter_buffer_input\(2),
	dataf => \fec1|ALT_INV_counter_buffer_input\(0),
	combout => \fec1|process_0~8_combout\);

-- Location: LABCELL_X81_Y78_N48
\fec1|process_0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|process_0~10_combout\ = ( \fec1|process_0~0_combout\ & ( \fec1|process_0~7_combout\ & ( (\fec1|process_0~1_combout\ & (\fec1|process_0~2_combout\ & (\fec1|process_0~3_combout\ & !\fec1|process_0~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_process_0~1_combout\,
	datab => \fec1|ALT_INV_process_0~2_combout\,
	datac => \fec1|ALT_INV_process_0~3_combout\,
	datad => \fec1|ALT_INV_process_0~8_combout\,
	datae => \fec1|ALT_INV_process_0~0_combout\,
	dataf => \fec1|ALT_INV_process_0~7_combout\,
	combout => \fec1|process_0~10_combout\);

-- Location: IOIBUF_X78_Y81_N35
\WiInput~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WiInput,
	o => \WiInput~input_o\);

-- Location: LABCELL_X85_Y79_N0
\RANDI1|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~121_sumout\ = SUM(( \RANDI1|counter_reset_seed\(0) ) + ( VCC ) + ( !VCC ))
-- \RANDI1|Add0~122\ = CARRY(( \RANDI1|counter_reset_seed\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RANDI1|ALT_INV_counter_reset_seed\(0),
	cin => GND,
	sumout => \RANDI1|Add0~121_sumout\,
	cout => \RANDI1|Add0~122\);

-- Location: IOIBUF_X84_Y81_N52
\load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: LABCELL_X85_Y78_N45
\RANDI1|counter_reset_seed[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|counter_reset_seed[31]~0_combout\ = (!\load~input_o\ & \TopWiMax_in_valid~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load~input_o\,
	datab => \ALT_INV_TopWiMax_in_valid~input_o\,
	combout => \RANDI1|counter_reset_seed[31]~0_combout\);

-- Location: FF_X85_Y79_N2
\RANDI1|counter_reset_seed[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~121_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(0));

-- Location: LABCELL_X85_Y79_N3
\RANDI1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~93_sumout\ = SUM(( \RANDI1|counter_reset_seed\(1) ) + ( GND ) + ( \RANDI1|Add0~122\ ))
-- \RANDI1|Add0~94\ = CARRY(( \RANDI1|counter_reset_seed\(1) ) + ( GND ) + ( \RANDI1|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RANDI1|ALT_INV_counter_reset_seed\(1),
	cin => \RANDI1|Add0~122\,
	sumout => \RANDI1|Add0~93_sumout\,
	cout => \RANDI1|Add0~94\);

-- Location: FF_X85_Y79_N5
\RANDI1|counter_reset_seed[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~93_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(1));

-- Location: LABCELL_X85_Y79_N6
\RANDI1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~89_sumout\ = SUM(( \RANDI1|counter_reset_seed\(2) ) + ( GND ) + ( \RANDI1|Add0~94\ ))
-- \RANDI1|Add0~90\ = CARRY(( \RANDI1|counter_reset_seed\(2) ) + ( GND ) + ( \RANDI1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RANDI1|ALT_INV_counter_reset_seed\(2),
	cin => \RANDI1|Add0~94\,
	sumout => \RANDI1|Add0~89_sumout\,
	cout => \RANDI1|Add0~90\);

-- Location: FF_X85_Y79_N8
\RANDI1|counter_reset_seed[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~89_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(2));

-- Location: LABCELL_X85_Y79_N9
\RANDI1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~5_sumout\ = SUM(( \RANDI1|counter_reset_seed\(3) ) + ( GND ) + ( \RANDI1|Add0~90\ ))
-- \RANDI1|Add0~6\ = CARRY(( \RANDI1|counter_reset_seed\(3) ) + ( GND ) + ( \RANDI1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RANDI1|ALT_INV_counter_reset_seed\(3),
	cin => \RANDI1|Add0~90\,
	sumout => \RANDI1|Add0~5_sumout\,
	cout => \RANDI1|Add0~6\);

-- Location: FF_X85_Y79_N11
\RANDI1|counter_reset_seed[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~5_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(3));

-- Location: LABCELL_X85_Y79_N12
\RANDI1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~1_sumout\ = SUM(( \RANDI1|counter_reset_seed\(4) ) + ( GND ) + ( \RANDI1|Add0~6\ ))
-- \RANDI1|Add0~2\ = CARRY(( \RANDI1|counter_reset_seed\(4) ) + ( GND ) + ( \RANDI1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RANDI1|ALT_INV_counter_reset_seed\(4),
	cin => \RANDI1|Add0~6\,
	sumout => \RANDI1|Add0~1_sumout\,
	cout => \RANDI1|Add0~2\);

-- Location: FF_X85_Y79_N14
\RANDI1|counter_reset_seed[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~1_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(4));

-- Location: LABCELL_X85_Y79_N15
\RANDI1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~29_sumout\ = SUM(( \RANDI1|counter_reset_seed\(5) ) + ( GND ) + ( \RANDI1|Add0~2\ ))
-- \RANDI1|Add0~30\ = CARRY(( \RANDI1|counter_reset_seed\(5) ) + ( GND ) + ( \RANDI1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RANDI1|ALT_INV_counter_reset_seed\(5),
	cin => \RANDI1|Add0~2\,
	sumout => \RANDI1|Add0~29_sumout\,
	cout => \RANDI1|Add0~30\);

-- Location: FF_X85_Y79_N17
\RANDI1|counter_reset_seed[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~29_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(5));

-- Location: LABCELL_X85_Y79_N18
\RANDI1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~25_sumout\ = SUM(( \RANDI1|counter_reset_seed\(6) ) + ( GND ) + ( \RANDI1|Add0~30\ ))
-- \RANDI1|Add0~26\ = CARRY(( \RANDI1|counter_reset_seed\(6) ) + ( GND ) + ( \RANDI1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RANDI1|ALT_INV_counter_reset_seed\(6),
	cin => \RANDI1|Add0~30\,
	sumout => \RANDI1|Add0~25_sumout\,
	cout => \RANDI1|Add0~26\);

-- Location: FF_X85_Y79_N20
\RANDI1|counter_reset_seed[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~25_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(6));

-- Location: LABCELL_X85_Y79_N21
\RANDI1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~53_sumout\ = SUM(( \RANDI1|counter_reset_seed\(7) ) + ( GND ) + ( \RANDI1|Add0~26\ ))
-- \RANDI1|Add0~54\ = CARRY(( \RANDI1|counter_reset_seed\(7) ) + ( GND ) + ( \RANDI1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RANDI1|ALT_INV_counter_reset_seed\(7),
	cin => \RANDI1|Add0~26\,
	sumout => \RANDI1|Add0~53_sumout\,
	cout => \RANDI1|Add0~54\);

-- Location: FF_X85_Y79_N23
\RANDI1|counter_reset_seed[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~53_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(7));

-- Location: LABCELL_X85_Y79_N24
\RANDI1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~21_sumout\ = SUM(( \RANDI1|counter_reset_seed\(8) ) + ( GND ) + ( \RANDI1|Add0~54\ ))
-- \RANDI1|Add0~22\ = CARRY(( \RANDI1|counter_reset_seed\(8) ) + ( GND ) + ( \RANDI1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RANDI1|ALT_INV_counter_reset_seed\(8),
	cin => \RANDI1|Add0~54\,
	sumout => \RANDI1|Add0~21_sumout\,
	cout => \RANDI1|Add0~22\);

-- Location: FF_X85_Y79_N26
\RANDI1|counter_reset_seed[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~21_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(8));

-- Location: LABCELL_X85_Y79_N27
\RANDI1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~17_sumout\ = SUM(( \RANDI1|counter_reset_seed\(9) ) + ( GND ) + ( \RANDI1|Add0~22\ ))
-- \RANDI1|Add0~18\ = CARRY(( \RANDI1|counter_reset_seed\(9) ) + ( GND ) + ( \RANDI1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RANDI1|ALT_INV_counter_reset_seed\(9),
	cin => \RANDI1|Add0~22\,
	sumout => \RANDI1|Add0~17_sumout\,
	cout => \RANDI1|Add0~18\);

-- Location: FF_X85_Y79_N29
\RANDI1|counter_reset_seed[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~17_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(9));

-- Location: LABCELL_X85_Y79_N30
\RANDI1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~13_sumout\ = SUM(( \RANDI1|counter_reset_seed\(10) ) + ( GND ) + ( \RANDI1|Add0~18\ ))
-- \RANDI1|Add0~14\ = CARRY(( \RANDI1|counter_reset_seed\(10) ) + ( GND ) + ( \RANDI1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RANDI1|ALT_INV_counter_reset_seed\(10),
	cin => \RANDI1|Add0~18\,
	sumout => \RANDI1|Add0~13_sumout\,
	cout => \RANDI1|Add0~14\);

-- Location: FF_X85_Y79_N32
\RANDI1|counter_reset_seed[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~13_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(10));

-- Location: LABCELL_X85_Y79_N33
\RANDI1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~9_sumout\ = SUM(( \RANDI1|counter_reset_seed\(11) ) + ( GND ) + ( \RANDI1|Add0~14\ ))
-- \RANDI1|Add0~10\ = CARRY(( \RANDI1|counter_reset_seed\(11) ) + ( GND ) + ( \RANDI1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RANDI1|ALT_INV_counter_reset_seed\(11),
	cin => \RANDI1|Add0~14\,
	sumout => \RANDI1|Add0~9_sumout\,
	cout => \RANDI1|Add0~10\);

-- Location: FF_X85_Y79_N35
\RANDI1|counter_reset_seed[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~9_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(11));

-- Location: LABCELL_X85_Y79_N36
\RANDI1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~49_sumout\ = SUM(( \RANDI1|counter_reset_seed\(12) ) + ( GND ) + ( \RANDI1|Add0~10\ ))
-- \RANDI1|Add0~50\ = CARRY(( \RANDI1|counter_reset_seed\(12) ) + ( GND ) + ( \RANDI1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RANDI1|ALT_INV_counter_reset_seed\(12),
	cin => \RANDI1|Add0~10\,
	sumout => \RANDI1|Add0~49_sumout\,
	cout => \RANDI1|Add0~50\);

-- Location: FF_X85_Y79_N38
\RANDI1|counter_reset_seed[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~49_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(12));

-- Location: LABCELL_X85_Y79_N39
\RANDI1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~45_sumout\ = SUM(( \RANDI1|counter_reset_seed\(13) ) + ( GND ) + ( \RANDI1|Add0~50\ ))
-- \RANDI1|Add0~46\ = CARRY(( \RANDI1|counter_reset_seed\(13) ) + ( GND ) + ( \RANDI1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RANDI1|ALT_INV_counter_reset_seed\(13),
	cin => \RANDI1|Add0~50\,
	sumout => \RANDI1|Add0~45_sumout\,
	cout => \RANDI1|Add0~46\);

-- Location: FF_X85_Y79_N41
\RANDI1|counter_reset_seed[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~45_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(13));

-- Location: LABCELL_X85_Y79_N42
\RANDI1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~41_sumout\ = SUM(( \RANDI1|counter_reset_seed\(14) ) + ( GND ) + ( \RANDI1|Add0~46\ ))
-- \RANDI1|Add0~42\ = CARRY(( \RANDI1|counter_reset_seed\(14) ) + ( GND ) + ( \RANDI1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RANDI1|ALT_INV_counter_reset_seed\(14),
	cin => \RANDI1|Add0~46\,
	sumout => \RANDI1|Add0~41_sumout\,
	cout => \RANDI1|Add0~42\);

-- Location: FF_X85_Y79_N44
\RANDI1|counter_reset_seed[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~41_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(14));

-- Location: LABCELL_X85_Y79_N45
\RANDI1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~37_sumout\ = SUM(( \RANDI1|counter_reset_seed\(15) ) + ( GND ) + ( \RANDI1|Add0~42\ ))
-- \RANDI1|Add0~38\ = CARRY(( \RANDI1|counter_reset_seed\(15) ) + ( GND ) + ( \RANDI1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RANDI1|ALT_INV_counter_reset_seed\(15),
	cin => \RANDI1|Add0~42\,
	sumout => \RANDI1|Add0~37_sumout\,
	cout => \RANDI1|Add0~38\);

-- Location: FF_X85_Y79_N47
\RANDI1|counter_reset_seed[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~37_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(15));

-- Location: LABCELL_X85_Y79_N48
\RANDI1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~33_sumout\ = SUM(( \RANDI1|counter_reset_seed\(16) ) + ( GND ) + ( \RANDI1|Add0~38\ ))
-- \RANDI1|Add0~34\ = CARRY(( \RANDI1|counter_reset_seed\(16) ) + ( GND ) + ( \RANDI1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RANDI1|ALT_INV_counter_reset_seed\(16),
	cin => \RANDI1|Add0~38\,
	sumout => \RANDI1|Add0~33_sumout\,
	cout => \RANDI1|Add0~34\);

-- Location: FF_X85_Y79_N50
\RANDI1|counter_reset_seed[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~33_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(16));

-- Location: LABCELL_X83_Y78_N42
\RANDI1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Equal0~2_combout\ = ( !\RANDI1|counter_reset_seed\(13) & ( !\RANDI1|counter_reset_seed\(12) & ( (!\RANDI1|counter_reset_seed\(15) & (!\RANDI1|counter_reset_seed\(7) & (!\RANDI1|counter_reset_seed\(14) & !\RANDI1|counter_reset_seed\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RANDI1|ALT_INV_counter_reset_seed\(15),
	datab => \RANDI1|ALT_INV_counter_reset_seed\(7),
	datac => \RANDI1|ALT_INV_counter_reset_seed\(14),
	datad => \RANDI1|ALT_INV_counter_reset_seed\(16),
	datae => \RANDI1|ALT_INV_counter_reset_seed\(13),
	dataf => \RANDI1|ALT_INV_counter_reset_seed\(12),
	combout => \RANDI1|Equal0~2_combout\);

-- Location: LABCELL_X85_Y79_N51
\RANDI1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~77_sumout\ = SUM(( \RANDI1|counter_reset_seed\(17) ) + ( GND ) + ( \RANDI1|Add0~34\ ))
-- \RANDI1|Add0~78\ = CARRY(( \RANDI1|counter_reset_seed\(17) ) + ( GND ) + ( \RANDI1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RANDI1|ALT_INV_counter_reset_seed\(17),
	cin => \RANDI1|Add0~34\,
	sumout => \RANDI1|Add0~77_sumout\,
	cout => \RANDI1|Add0~78\);

-- Location: FF_X85_Y79_N53
\RANDI1|counter_reset_seed[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~77_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(17));

-- Location: LABCELL_X85_Y79_N54
\RANDI1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~73_sumout\ = SUM(( \RANDI1|counter_reset_seed\(18) ) + ( GND ) + ( \RANDI1|Add0~78\ ))
-- \RANDI1|Add0~74\ = CARRY(( \RANDI1|counter_reset_seed\(18) ) + ( GND ) + ( \RANDI1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RANDI1|ALT_INV_counter_reset_seed\(18),
	cin => \RANDI1|Add0~78\,
	sumout => \RANDI1|Add0~73_sumout\,
	cout => \RANDI1|Add0~74\);

-- Location: FF_X85_Y79_N56
\RANDI1|counter_reset_seed[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~73_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(18));

-- Location: LABCELL_X85_Y79_N57
\RANDI1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~69_sumout\ = SUM(( \RANDI1|counter_reset_seed\(19) ) + ( GND ) + ( \RANDI1|Add0~74\ ))
-- \RANDI1|Add0~70\ = CARRY(( \RANDI1|counter_reset_seed\(19) ) + ( GND ) + ( \RANDI1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RANDI1|ALT_INV_counter_reset_seed\(19),
	cin => \RANDI1|Add0~74\,
	sumout => \RANDI1|Add0~69_sumout\,
	cout => \RANDI1|Add0~70\);

-- Location: FF_X85_Y79_N59
\RANDI1|counter_reset_seed[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~69_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(19));

-- Location: LABCELL_X85_Y78_N0
\RANDI1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~65_sumout\ = SUM(( \RANDI1|counter_reset_seed\(20) ) + ( GND ) + ( \RANDI1|Add0~70\ ))
-- \RANDI1|Add0~66\ = CARRY(( \RANDI1|counter_reset_seed\(20) ) + ( GND ) + ( \RANDI1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RANDI1|ALT_INV_counter_reset_seed\(20),
	cin => \RANDI1|Add0~70\,
	sumout => \RANDI1|Add0~65_sumout\,
	cout => \RANDI1|Add0~66\);

-- Location: FF_X85_Y78_N2
\RANDI1|counter_reset_seed[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~65_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(20));

-- Location: LABCELL_X85_Y78_N3
\RANDI1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~61_sumout\ = SUM(( \RANDI1|counter_reset_seed\(21) ) + ( GND ) + ( \RANDI1|Add0~66\ ))
-- \RANDI1|Add0~62\ = CARRY(( \RANDI1|counter_reset_seed\(21) ) + ( GND ) + ( \RANDI1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RANDI1|ALT_INV_counter_reset_seed\(21),
	cin => \RANDI1|Add0~66\,
	sumout => \RANDI1|Add0~61_sumout\,
	cout => \RANDI1|Add0~62\);

-- Location: FF_X85_Y78_N5
\RANDI1|counter_reset_seed[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~61_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(21));

-- Location: LABCELL_X85_Y78_N6
\RANDI1|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~105_sumout\ = SUM(( \RANDI1|counter_reset_seed\(22) ) + ( GND ) + ( \RANDI1|Add0~62\ ))
-- \RANDI1|Add0~106\ = CARRY(( \RANDI1|counter_reset_seed\(22) ) + ( GND ) + ( \RANDI1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RANDI1|ALT_INV_counter_reset_seed\(22),
	cin => \RANDI1|Add0~62\,
	sumout => \RANDI1|Add0~105_sumout\,
	cout => \RANDI1|Add0~106\);

-- Location: FF_X85_Y78_N8
\RANDI1|counter_reset_seed[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~105_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(22));

-- Location: LABCELL_X85_Y78_N9
\RANDI1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~57_sumout\ = SUM(( \RANDI1|counter_reset_seed\(23) ) + ( GND ) + ( \RANDI1|Add0~106\ ))
-- \RANDI1|Add0~58\ = CARRY(( \RANDI1|counter_reset_seed\(23) ) + ( GND ) + ( \RANDI1|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RANDI1|ALT_INV_counter_reset_seed\(23),
	cin => \RANDI1|Add0~106\,
	sumout => \RANDI1|Add0~57_sumout\,
	cout => \RANDI1|Add0~58\);

-- Location: FF_X85_Y78_N11
\RANDI1|counter_reset_seed[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~57_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(23));

-- Location: LABCELL_X85_Y78_N36
\RANDI1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Equal0~3_combout\ = ( !\RANDI1|counter_reset_seed\(21) & ( !\RANDI1|counter_reset_seed\(17) & ( (!\RANDI1|counter_reset_seed\(19) & (!\RANDI1|counter_reset_seed\(23) & (!\RANDI1|counter_reset_seed\(20) & !\RANDI1|counter_reset_seed\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RANDI1|ALT_INV_counter_reset_seed\(19),
	datab => \RANDI1|ALT_INV_counter_reset_seed\(23),
	datac => \RANDI1|ALT_INV_counter_reset_seed\(20),
	datad => \RANDI1|ALT_INV_counter_reset_seed\(18),
	datae => \RANDI1|ALT_INV_counter_reset_seed\(21),
	dataf => \RANDI1|ALT_INV_counter_reset_seed\(17),
	combout => \RANDI1|Equal0~3_combout\);

-- Location: MLABCELL_X84_Y79_N42
\RANDI1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Equal0~1_combout\ = ( \RANDI1|counter_reset_seed\(6) & ( !\RANDI1|counter_reset_seed\(11) & ( (!\RANDI1|counter_reset_seed\(9) & (!\RANDI1|counter_reset_seed\(8) & (!\RANDI1|counter_reset_seed\(10) & !\RANDI1|counter_reset_seed\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RANDI1|ALT_INV_counter_reset_seed\(9),
	datab => \RANDI1|ALT_INV_counter_reset_seed\(8),
	datac => \RANDI1|ALT_INV_counter_reset_seed\(10),
	datad => \RANDI1|ALT_INV_counter_reset_seed\(5),
	datae => \RANDI1|ALT_INV_counter_reset_seed\(6),
	dataf => \RANDI1|ALT_INV_counter_reset_seed\(11),
	combout => \RANDI1|Equal0~1_combout\);

-- Location: LABCELL_X85_Y78_N12
\RANDI1|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~125_sumout\ = SUM(( \RANDI1|counter_reset_seed\(24) ) + ( GND ) + ( \RANDI1|Add0~58\ ))
-- \RANDI1|Add0~126\ = CARRY(( \RANDI1|counter_reset_seed\(24) ) + ( GND ) + ( \RANDI1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RANDI1|ALT_INV_counter_reset_seed\(24),
	cin => \RANDI1|Add0~58\,
	sumout => \RANDI1|Add0~125_sumout\,
	cout => \RANDI1|Add0~126\);

-- Location: FF_X85_Y78_N14
\RANDI1|counter_reset_seed[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~125_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(24));

-- Location: LABCELL_X85_Y78_N15
\RANDI1|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~117_sumout\ = SUM(( \RANDI1|counter_reset_seed\(25) ) + ( GND ) + ( \RANDI1|Add0~126\ ))
-- \RANDI1|Add0~118\ = CARRY(( \RANDI1|counter_reset_seed\(25) ) + ( GND ) + ( \RANDI1|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RANDI1|ALT_INV_counter_reset_seed\(25),
	cin => \RANDI1|Add0~126\,
	sumout => \RANDI1|Add0~117_sumout\,
	cout => \RANDI1|Add0~118\);

-- Location: FF_X85_Y78_N17
\RANDI1|counter_reset_seed[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~117_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(25));

-- Location: LABCELL_X85_Y78_N18
\RANDI1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~85_sumout\ = SUM(( \RANDI1|counter_reset_seed\(26) ) + ( GND ) + ( \RANDI1|Add0~118\ ))
-- \RANDI1|Add0~86\ = CARRY(( \RANDI1|counter_reset_seed\(26) ) + ( GND ) + ( \RANDI1|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RANDI1|ALT_INV_counter_reset_seed\(26),
	cin => \RANDI1|Add0~118\,
	sumout => \RANDI1|Add0~85_sumout\,
	cout => \RANDI1|Add0~86\);

-- Location: FF_X85_Y78_N20
\RANDI1|counter_reset_seed[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~85_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(26));

-- Location: LABCELL_X85_Y78_N21
\RANDI1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~97_sumout\ = SUM(( \RANDI1|counter_reset_seed\(27) ) + ( GND ) + ( \RANDI1|Add0~86\ ))
-- \RANDI1|Add0~98\ = CARRY(( \RANDI1|counter_reset_seed\(27) ) + ( GND ) + ( \RANDI1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RANDI1|ALT_INV_counter_reset_seed\(27),
	cin => \RANDI1|Add0~86\,
	sumout => \RANDI1|Add0~97_sumout\,
	cout => \RANDI1|Add0~98\);

-- Location: FF_X85_Y78_N23
\RANDI1|counter_reset_seed[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~97_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(27));

-- Location: LABCELL_X85_Y78_N24
\RANDI1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~101_sumout\ = SUM(( \RANDI1|counter_reset_seed\(28) ) + ( GND ) + ( \RANDI1|Add0~98\ ))
-- \RANDI1|Add0~102\ = CARRY(( \RANDI1|counter_reset_seed\(28) ) + ( GND ) + ( \RANDI1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RANDI1|ALT_INV_counter_reset_seed\(28),
	cin => \RANDI1|Add0~98\,
	sumout => \RANDI1|Add0~101_sumout\,
	cout => \RANDI1|Add0~102\);

-- Location: FF_X85_Y78_N26
\RANDI1|counter_reset_seed[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~101_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(28));

-- Location: LABCELL_X85_Y78_N27
\RANDI1|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~109_sumout\ = SUM(( \RANDI1|counter_reset_seed\(29) ) + ( GND ) + ( \RANDI1|Add0~102\ ))
-- \RANDI1|Add0~110\ = CARRY(( \RANDI1|counter_reset_seed\(29) ) + ( GND ) + ( \RANDI1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RANDI1|ALT_INV_counter_reset_seed\(29),
	cin => \RANDI1|Add0~102\,
	sumout => \RANDI1|Add0~109_sumout\,
	cout => \RANDI1|Add0~110\);

-- Location: FF_X85_Y78_N29
\RANDI1|counter_reset_seed[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~109_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(29));

-- Location: LABCELL_X85_Y78_N30
\RANDI1|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~113_sumout\ = SUM(( \RANDI1|counter_reset_seed\(30) ) + ( GND ) + ( \RANDI1|Add0~110\ ))
-- \RANDI1|Add0~114\ = CARRY(( \RANDI1|counter_reset_seed\(30) ) + ( GND ) + ( \RANDI1|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RANDI1|ALT_INV_counter_reset_seed\(30),
	cin => \RANDI1|Add0~110\,
	sumout => \RANDI1|Add0~113_sumout\,
	cout => \RANDI1|Add0~114\);

-- Location: FF_X85_Y78_N32
\RANDI1|counter_reset_seed[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|Add0~113_sumout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \RANDI1|Equal0~6_combout\,
	ena => \RANDI1|counter_reset_seed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(30));

-- Location: LABCELL_X85_Y78_N54
\RANDI1|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Equal0~5_combout\ = ( !\RANDI1|counter_reset_seed\(29) & ( !\RANDI1|counter_reset_seed\(22) & ( (!\RANDI1|counter_reset_seed\(25) & (!\RANDI1|counter_reset_seed\(30) & (\RANDI1|counter_reset_seed\(0) & !\RANDI1|counter_reset_seed\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RANDI1|ALT_INV_counter_reset_seed\(25),
	datab => \RANDI1|ALT_INV_counter_reset_seed\(30),
	datac => \RANDI1|ALT_INV_counter_reset_seed\(0),
	datad => \RANDI1|ALT_INV_counter_reset_seed\(24),
	datae => \RANDI1|ALT_INV_counter_reset_seed\(29),
	dataf => \RANDI1|ALT_INV_counter_reset_seed\(22),
	combout => \RANDI1|Equal0~5_combout\);

-- Location: LABCELL_X85_Y78_N33
\RANDI1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Add0~81_sumout\ = SUM(( \RANDI1|counter_reset_seed\(31) ) + ( GND ) + ( \RANDI1|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RANDI1|ALT_INV_counter_reset_seed\(31),
	cin => \RANDI1|Add0~114\,
	sumout => \RANDI1|Add0~81_sumout\);

-- Location: LABCELL_X85_Y78_N42
\RANDI1|counter_reset_seed[31]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|counter_reset_seed[31]~1_combout\ = ( \RANDI1|Add0~81_sumout\ & ( ((!\load~input_o\ & \TopWiMax_in_valid~input_o\)) # (\RANDI1|counter_reset_seed\(31)) ) ) # ( !\RANDI1|Add0~81_sumout\ & ( (\RANDI1|counter_reset_seed\(31) & 
-- ((!\TopWiMax_in_valid~input_o\) # (\load~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011101000000001101110100100010111111110010001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load~input_o\,
	datab => \ALT_INV_TopWiMax_in_valid~input_o\,
	datad => \RANDI1|ALT_INV_counter_reset_seed\(31),
	dataf => \RANDI1|ALT_INV_Add0~81_sumout\,
	combout => \RANDI1|counter_reset_seed[31]~1_combout\);

-- Location: FF_X85_Y78_N44
\RANDI1|counter_reset_seed[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|counter_reset_seed[31]~1_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|counter_reset_seed\(31));

-- Location: LABCELL_X85_Y78_N48
\RANDI1|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Equal0~4_combout\ = ( !\RANDI1|counter_reset_seed\(27) & ( \RANDI1|counter_reset_seed\(1) & ( (!\RANDI1|counter_reset_seed\(26) & (!\RANDI1|counter_reset_seed\(31) & (!\RANDI1|counter_reset_seed\(28) & \RANDI1|counter_reset_seed\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RANDI1|ALT_INV_counter_reset_seed\(26),
	datab => \RANDI1|ALT_INV_counter_reset_seed\(31),
	datac => \RANDI1|ALT_INV_counter_reset_seed\(28),
	datad => \RANDI1|ALT_INV_counter_reset_seed\(2),
	datae => \RANDI1|ALT_INV_counter_reset_seed\(27),
	dataf => \RANDI1|ALT_INV_counter_reset_seed\(1),
	combout => \RANDI1|Equal0~4_combout\);

-- Location: MLABCELL_X84_Y78_N30
\RANDI1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Equal0~0_combout\ = ( \RANDI1|counter_reset_seed\(4) & ( \RANDI1|counter_reset_seed\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RANDI1|ALT_INV_counter_reset_seed\(4),
	dataf => \RANDI1|ALT_INV_counter_reset_seed\(3),
	combout => \RANDI1|Equal0~0_combout\);

-- Location: MLABCELL_X84_Y78_N36
\RANDI1|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|Equal0~6_combout\ = ( \RANDI1|Equal0~4_combout\ & ( \RANDI1|Equal0~0_combout\ & ( (\RANDI1|Equal0~2_combout\ & (\RANDI1|Equal0~3_combout\ & (\RANDI1|Equal0~1_combout\ & \RANDI1|Equal0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RANDI1|ALT_INV_Equal0~2_combout\,
	datab => \RANDI1|ALT_INV_Equal0~3_combout\,
	datac => \RANDI1|ALT_INV_Equal0~1_combout\,
	datad => \RANDI1|ALT_INV_Equal0~5_combout\,
	datae => \RANDI1|ALT_INV_Equal0~4_combout\,
	dataf => \RANDI1|ALT_INV_Equal0~0_combout\,
	combout => \RANDI1|Equal0~6_combout\);

-- Location: MLABCELL_X84_Y79_N39
\RANDI1|seed_reg[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|seed_reg[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \RANDI1|seed_reg[12]~feeder_combout\);

-- Location: MLABCELL_X84_Y79_N15
\RANDI1|seed_reg[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|seed_reg[10]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \RANDI1|seed_reg[10]~feeder_combout\);

-- Location: MLABCELL_X84_Y79_N21
\RANDI1|seed_reg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|seed_reg[6]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \RANDI1|seed_reg[6]~feeder_combout\);

-- Location: MLABCELL_X84_Y79_N54
\RANDI1|seed_reg[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|seed_reg[5]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \RANDI1|seed_reg[5]~feeder_combout\);

-- Location: MLABCELL_X84_Y79_N57
\RANDI1|seed_reg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|seed_reg[4]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \RANDI1|seed_reg[4]~feeder_combout\);

-- Location: MLABCELL_X84_Y79_N33
\RANDI1|seed_reg[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|seed_reg[2]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \RANDI1|seed_reg[2]~feeder_combout\);

-- Location: MLABCELL_X84_Y79_N6
\RANDI1|seed_reg[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|seed_reg[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \RANDI1|seed_reg[1]~feeder_combout\);

-- Location: MLABCELL_X84_Y79_N0
\RANDI1|seed_reg[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|seed_reg[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \RANDI1|seed_reg[14]~feeder_combout\);

-- Location: MLABCELL_X84_Y79_N9
\RANDI1|seed_reg[9]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|seed_reg[9]~2_combout\ = ( !\load~input_o\ & ( !\RANDI1|Equal0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RANDI1|ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_load~input_o\,
	combout => \RANDI1|seed_reg[9]~2_combout\);

-- Location: MLABCELL_X84_Y79_N48
\RANDI1|seed_reg[9]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|seed_reg[9]~1_combout\ = (\TopWiMax_in_valid~input_o\) # (\load~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load~input_o\,
	datab => \ALT_INV_TopWiMax_in_valid~input_o\,
	combout => \RANDI1|seed_reg[9]~1_combout\);

-- Location: FF_X84_Y79_N2
\RANDI1|seed_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|seed_reg[14]~feeder_combout\,
	asdata => \RANDI1|seed_reg\(13),
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sload => \RANDI1|seed_reg[9]~2_combout\,
	ena => \RANDI1|seed_reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|seed_reg\(14));

-- Location: MLABCELL_X84_Y79_N3
\RANDI1|xor_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|xor_1~0_combout\ = ( \RANDI1|seed_reg\(13) & ( !\RANDI1|seed_reg\(14) ) ) # ( !\RANDI1|seed_reg\(13) & ( \RANDI1|seed_reg\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RANDI1|ALT_INV_seed_reg\(14),
	dataf => \RANDI1|ALT_INV_seed_reg\(13),
	combout => \RANDI1|xor_1~0_combout\);

-- Location: MLABCELL_X84_Y79_N51
\RANDI1|seed_reg~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|seed_reg~8_combout\ = (!\load~input_o\ & (\TopWiMax_in_valid~input_o\ & (!\RANDI1|Equal0~6_combout\ & \RANDI1|xor_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load~input_o\,
	datab => \ALT_INV_TopWiMax_in_valid~input_o\,
	datac => \RANDI1|ALT_INV_Equal0~6_combout\,
	datad => \RANDI1|ALT_INV_xor_1~0_combout\,
	combout => \RANDI1|seed_reg~8_combout\);

-- Location: FF_X84_Y79_N53
\RANDI1|seed_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|seed_reg~8_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \RANDI1|seed_reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|seed_reg\(0));

-- Location: FF_X84_Y79_N7
\RANDI1|seed_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|seed_reg[1]~feeder_combout\,
	asdata => \RANDI1|seed_reg\(0),
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sload => \RANDI1|seed_reg[9]~2_combout\,
	ena => \RANDI1|seed_reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|seed_reg\(1));

-- Location: FF_X84_Y79_N34
\RANDI1|seed_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|seed_reg[2]~feeder_combout\,
	asdata => \RANDI1|seed_reg\(1),
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sload => \RANDI1|seed_reg[9]~2_combout\,
	ena => \RANDI1|seed_reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|seed_reg\(2));

-- Location: MLABCELL_X84_Y79_N30
\RANDI1|seed_reg~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|seed_reg~7_combout\ = ( \RANDI1|seed_reg\(2) & ( (!\RANDI1|Equal0~6_combout\ & !\load~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RANDI1|ALT_INV_Equal0~6_combout\,
	datac => \ALT_INV_load~input_o\,
	dataf => \RANDI1|ALT_INV_seed_reg\(2),
	combout => \RANDI1|seed_reg~7_combout\);

-- Location: FF_X84_Y79_N32
\RANDI1|seed_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|seed_reg~7_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \RANDI1|seed_reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|seed_reg\(3));

-- Location: FF_X84_Y79_N59
\RANDI1|seed_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|seed_reg[4]~feeder_combout\,
	asdata => \RANDI1|seed_reg\(3),
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sload => \RANDI1|seed_reg[9]~2_combout\,
	ena => \RANDI1|seed_reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|seed_reg\(4));

-- Location: FF_X84_Y79_N55
\RANDI1|seed_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|seed_reg[5]~feeder_combout\,
	asdata => \RANDI1|seed_reg\(4),
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sload => \RANDI1|seed_reg[9]~2_combout\,
	ena => \RANDI1|seed_reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|seed_reg\(5));

-- Location: FF_X84_Y79_N23
\RANDI1|seed_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|seed_reg[6]~feeder_combout\,
	asdata => \RANDI1|seed_reg\(5),
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sload => \RANDI1|seed_reg[9]~2_combout\,
	ena => \RANDI1|seed_reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|seed_reg\(6));

-- Location: MLABCELL_X84_Y79_N18
\RANDI1|seed_reg~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|seed_reg~6_combout\ = (!\RANDI1|Equal0~6_combout\ & (!\load~input_o\ & \RANDI1|seed_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RANDI1|ALT_INV_Equal0~6_combout\,
	datac => \ALT_INV_load~input_o\,
	datad => \RANDI1|ALT_INV_seed_reg\(6),
	combout => \RANDI1|seed_reg~6_combout\);

-- Location: FF_X84_Y79_N19
\RANDI1|seed_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|seed_reg~6_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \RANDI1|seed_reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|seed_reg\(7));

-- Location: MLABCELL_X84_Y79_N27
\RANDI1|seed_reg~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|seed_reg~5_combout\ = ( \RANDI1|seed_reg\(7) & ( (!\load~input_o\ & !\RANDI1|Equal0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load~input_o\,
	datab => \RANDI1|ALT_INV_Equal0~6_combout\,
	dataf => \RANDI1|ALT_INV_seed_reg\(7),
	combout => \RANDI1|seed_reg~5_combout\);

-- Location: FF_X84_Y79_N28
\RANDI1|seed_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|seed_reg~5_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \RANDI1|seed_reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|seed_reg\(8));

-- Location: MLABCELL_X84_Y79_N24
\RANDI1|seed_reg~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|seed_reg~4_combout\ = ( \RANDI1|seed_reg\(8) & ( (!\load~input_o\ & !\RANDI1|Equal0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load~input_o\,
	datab => \RANDI1|ALT_INV_Equal0~6_combout\,
	dataf => \RANDI1|ALT_INV_seed_reg\(8),
	combout => \RANDI1|seed_reg~4_combout\);

-- Location: FF_X84_Y79_N26
\RANDI1|seed_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|seed_reg~4_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \RANDI1|seed_reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|seed_reg\(9));

-- Location: FF_X84_Y79_N16
\RANDI1|seed_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|seed_reg[10]~feeder_combout\,
	asdata => \RANDI1|seed_reg\(9),
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sload => \RANDI1|seed_reg[9]~2_combout\,
	ena => \RANDI1|seed_reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|seed_reg\(10));

-- Location: MLABCELL_X84_Y79_N12
\RANDI1|seed_reg~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|seed_reg~3_combout\ = ( \RANDI1|seed_reg\(10) & ( (!\RANDI1|Equal0~6_combout\ & !\load~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RANDI1|ALT_INV_Equal0~6_combout\,
	datac => \ALT_INV_load~input_o\,
	dataf => \RANDI1|ALT_INV_seed_reg\(10),
	combout => \RANDI1|seed_reg~3_combout\);

-- Location: FF_X84_Y79_N13
\RANDI1|seed_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|seed_reg~3_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \RANDI1|seed_reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|seed_reg\(11));

-- Location: FF_X84_Y79_N40
\RANDI1|seed_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|seed_reg[12]~feeder_combout\,
	asdata => \RANDI1|seed_reg\(11),
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sload => \RANDI1|seed_reg[9]~2_combout\,
	ena => \RANDI1|seed_reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|seed_reg\(12));

-- Location: MLABCELL_X84_Y79_N36
\RANDI1|seed_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|seed_reg~0_combout\ = ( \RANDI1|seed_reg\(12) & ( (!\RANDI1|Equal0~6_combout\ & !\load~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RANDI1|ALT_INV_Equal0~6_combout\,
	datac => \ALT_INV_load~input_o\,
	dataf => \RANDI1|ALT_INV_seed_reg\(12),
	combout => \RANDI1|seed_reg~0_combout\);

-- Location: FF_X84_Y79_N38
\RANDI1|seed_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI1|seed_reg~0_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \RANDI1|seed_reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI1|seed_reg\(13));

-- Location: MLABCELL_X78_Y78_N48
\fec1|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Decoder0~1_combout\ = ( \fec1|counter_buffer_input\(0) & ( (\fec1|counter_buffer_input\(1) & !\fec1|counter_buffer_input\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(1),
	datab => \fec1|ALT_INV_counter_buffer_input\(2),
	dataf => \fec1|ALT_INV_counter_buffer_input\(0),
	combout => \fec1|Decoder0~1_combout\);

-- Location: LABCELL_X83_Y78_N36
\fec1|Selector39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector39~0_combout\ = ( \fec1|Decoder0~1_combout\ & ( \RANDI1|seed_reg\(14) & ( (\TopWiMax_in_valid~input_o\ & (!\WiInput~input_o\ $ (\RANDI1|seed_reg\(13)))) ) ) ) # ( !\fec1|Decoder0~1_combout\ & ( \RANDI1|seed_reg\(14) & ( \fec1|shift_reg\(1) ) 
-- ) ) # ( \fec1|Decoder0~1_combout\ & ( !\RANDI1|seed_reg\(14) & ( (\TopWiMax_in_valid~input_o\ & (!\WiInput~input_o\ $ (!\RANDI1|seed_reg\(13)))) ) ) ) # ( !\fec1|Decoder0~1_combout\ & ( !\RANDI1|seed_reg\(14) & ( \fec1|shift_reg\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000001010101000000110011001100110101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_TopWiMax_in_valid~input_o\,
	datab => \fec1|ALT_INV_shift_reg\(1),
	datac => \ALT_INV_WiInput~input_o\,
	datad => \RANDI1|ALT_INV_seed_reg\(13),
	datae => \fec1|ALT_INV_Decoder0~1_combout\,
	dataf => \RANDI1|ALT_INV_seed_reg\(14),
	combout => \fec1|Selector39~0_combout\);

-- Location: LABCELL_X81_Y78_N39
\fec1|process_0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|process_0~9_combout\ = ( \fec1|Equal5~0_combout\ & ( (\fec1|process_0~7_combout\ & \fec1|process_0~4_combout\) ) ) # ( !\fec1|Equal5~0_combout\ & ( (\fec1|process_0~7_combout\ & (!\fec1|process_0~8_combout\ & \fec1|process_0~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec1|ALT_INV_process_0~7_combout\,
	datac => \fec1|ALT_INV_process_0~8_combout\,
	datad => \fec1|ALT_INV_process_0~4_combout\,
	dataf => \fec1|ALT_INV_Equal5~0_combout\,
	combout => \fec1|process_0~9_combout\);

-- Location: MLABCELL_X82_Y76_N6
\fec1|Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector35~0_combout\ = ( \fec1|Equal6~5_combout\ & ( (\fec1|PingPong_flag~q\ & (((!\fec1|counter_shift_and_output\(30) & \fec1|LessThan2~0_combout\)) # (\fec1|counter_shift_and_output\(31)))) ) ) # ( !\fec1|Equal6~5_combout\ & ( 
-- (\fec1|counter_shift_and_output\(31) & \fec1|PingPong_flag~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_shift_and_output\(31),
	datab => \fec1|ALT_INV_counter_shift_and_output\(30),
	datac => \fec1|ALT_INV_LessThan2~0_combout\,
	datad => \fec1|ALT_INV_PingPong_flag~q\,
	dataf => \fec1|ALT_INV_Equal6~5_combout\,
	combout => \fec1|Selector35~0_combout\);

-- Location: LABCELL_X83_Y78_N27
\RANDI1|randi_output_data~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI1|randi_output_data~0_combout\ = ( \WiInput~input_o\ & ( (\TopWiMax_in_valid~input_o\ & (!\RANDI1|seed_reg\(13) $ (\RANDI1|seed_reg\(14)))) ) ) # ( !\WiInput~input_o\ & ( (\TopWiMax_in_valid~input_o\ & (!\RANDI1|seed_reg\(13) $ 
-- (!\RANDI1|seed_reg\(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RANDI1|ALT_INV_seed_reg\(13),
	datac => \RANDI1|ALT_INV_seed_reg\(14),
	datad => \ALT_INV_TopWiMax_in_valid~input_o\,
	dataf => \ALT_INV_WiInput~input_o\,
	combout => \RANDI1|randi_output_data~0_combout\);

-- Location: LABCELL_X83_Y78_N30
\fec1|address_a[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|address_a[5]~0_combout\ = !\fec1|counter_buffer_input\(5) $ (!\fec1|PingPong_flag~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(5),
	datab => \fec1|ALT_INV_PingPong_flag~q\,
	combout => \fec1|address_a[5]~0_combout\);

-- Location: LABCELL_X83_Y78_N33
\fec1|address_a[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|address_a[6]~1_combout\ = !\fec1|counter_buffer_input\(6) $ (((!\fec1|PingPong_flag~q\) # (\fec1|counter_buffer_input\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011011101001000101101110100100010110111010010001011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(5),
	datab => \fec1|ALT_INV_PingPong_flag~q\,
	datad => \fec1|ALT_INV_counter_buffer_input\(6),
	combout => \fec1|address_a[6]~1_combout\);

-- Location: LABCELL_X83_Y78_N24
\fec1|address_a[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|address_a[7]~2_combout\ = ( \fec1|PingPong_flag~q\ & ( !\fec1|counter_buffer_input\(7) $ (((!\fec1|counter_buffer_input\(5) & !\fec1|counter_buffer_input\(6)))) ) ) # ( !\fec1|PingPong_flag~q\ & ( \fec1|counter_buffer_input\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101011010101010100101101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(7),
	datac => \fec1|ALT_INV_counter_buffer_input\(5),
	datad => \fec1|ALT_INV_counter_buffer_input\(6),
	dataf => \fec1|ALT_INV_PingPong_flag~q\,
	combout => \fec1|address_a[7]~2_combout\);

-- Location: LABCELL_X75_Y78_N33
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: M10K_X76_Y78_N0
\fec1|ram1|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FEC:fec1|FEC_RAM_2PORTS:ram1|altsyncram:altsyncram_component|altsyncram_1014:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 192,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 20,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 192,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \TopWiMax_in_valid~input_o\,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	portadatain => \fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: MLABCELL_X78_Y78_N36
\fec1|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Decoder0~0_combout\ = (\fec1|counter_buffer_input\(1) & \fec1|counter_buffer_input\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(1),
	datab => \fec1|ALT_INV_counter_buffer_input\(0),
	combout => \fec1|Decoder0~0_combout\);

-- Location: MLABCELL_X78_Y78_N12
\fec1|shift_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|shift_reg~0_combout\ = ( \fec1|Decoder0~0_combout\ & ( \fec1|shift_reg\(5) & ( (!\fec1|counter_buffer_input\(2)) # ((\TopWiMax_in_valid~input_o\ & (!\WiInput~input_o\ $ (!\RANDI1|xor_1~0_combout\)))) ) ) ) # ( !\fec1|Decoder0~0_combout\ & ( 
-- \fec1|shift_reg\(5) ) ) # ( \fec1|Decoder0~0_combout\ & ( !\fec1|shift_reg\(5) & ( (\TopWiMax_in_valid~input_o\ & (\fec1|counter_buffer_input\(2) & (!\WiInput~input_o\ $ (!\RANDI1|xor_1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001001011111111111111111111111100010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WiInput~input_o\,
	datab => \ALT_INV_TopWiMax_in_valid~input_o\,
	datac => \RANDI1|ALT_INV_xor_1~0_combout\,
	datad => \fec1|ALT_INV_counter_buffer_input\(2),
	datae => \fec1|ALT_INV_Decoder0~0_combout\,
	dataf => \fec1|ALT_INV_shift_reg\(5),
	combout => \fec1|shift_reg~0_combout\);

-- Location: LABCELL_X79_Y78_N30
\fec1|Selector35~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector35~1_combout\ = ( \fec1|ram1|altsyncram_component|auto_generated|q_b\(0) & ( \fec1|shift_reg~0_combout\ ) ) # ( !\fec1|ram1|altsyncram_component|auto_generated|q_b\(0) & ( \fec1|shift_reg~0_combout\ & ( 
-- (!\fec1|input_state_reg.PingPong_state~q\) # ((!\fec1|PingPong_flag~q\ & (\fec1|process_0~9_combout\ & !\fec1|Selector35~0_combout\))) ) ) ) # ( \fec1|ram1|altsyncram_component|auto_generated|q_b\(0) & ( !\fec1|shift_reg~0_combout\ & ( 
-- (\fec1|input_state_reg.PingPong_state~q\ & (((!\fec1|process_0~9_combout\) # (\fec1|Selector35~0_combout\)) # (\fec1|PingPong_flag~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011010000111111110010111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_PingPong_flag~q\,
	datab => \fec1|ALT_INV_process_0~9_combout\,
	datac => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datad => \fec1|ALT_INV_Selector35~0_combout\,
	datae => \fec1|ram1|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	dataf => \fec1|ALT_INV_shift_reg~0_combout\,
	combout => \fec1|Selector35~1_combout\);

-- Location: LABCELL_X79_Y78_N0
\fec1|Selector35~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector35~2_combout\ = ( \fec1|Selector35~0_combout\ & ( ((\fec1|input_state_reg.input_buffer~q\ & \fec1|process_0~9_combout\)) # (\fec1|input_state_reg.PingPong_state~q\) ) ) # ( !\fec1|Selector35~0_combout\ & ( (\fec1|process_0~9_combout\ & 
-- ((!\fec1|input_state_reg.PingPong_state~q\ & ((\fec1|input_state_reg.input_buffer~q\))) # (\fec1|input_state_reg.PingPong_state~q\ & (!\fec1|PingPong_flag~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111010000000000011101000001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_PingPong_flag~q\,
	datab => \fec1|ALT_INV_input_state_reg.input_buffer~q\,
	datac => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datad => \fec1|ALT_INV_process_0~9_combout\,
	dataf => \fec1|ALT_INV_Selector35~0_combout\,
	combout => \fec1|Selector35~2_combout\);

-- Location: FF_X79_Y78_N32
\fec1|shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Selector35~1_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \fec1|Selector35~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|shift_reg\(5));

-- Location: MLABCELL_X78_Y78_N39
\fec1|shift_reg2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|shift_reg2~0_combout\ = (\fec1|counter_buffer_input\(1) & !\fec1|counter_buffer_input\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(1),
	datab => \fec1|ALT_INV_counter_buffer_input\(0),
	combout => \fec1|shift_reg2~0_combout\);

-- Location: MLABCELL_X78_Y78_N15
\fec1|shift_reg~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|shift_reg~1_combout\ = ( \fec1|shift_reg2~0_combout\ & ( \fec1|shift_reg\(4) & ( (!\fec1|counter_buffer_input\(2)) # ((\TopWiMax_in_valid~input_o\ & (!\WiInput~input_o\ $ (!\RANDI1|xor_1~0_combout\)))) ) ) ) # ( !\fec1|shift_reg2~0_combout\ & ( 
-- \fec1|shift_reg\(4) ) ) # ( \fec1|shift_reg2~0_combout\ & ( !\fec1|shift_reg\(4) & ( (\TopWiMax_in_valid~input_o\ & (\fec1|counter_buffer_input\(2) & (!\WiInput~input_o\ $ (!\RANDI1|xor_1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000001011111111111111111111000111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WiInput~input_o\,
	datab => \ALT_INV_TopWiMax_in_valid~input_o\,
	datac => \fec1|ALT_INV_counter_buffer_input\(2),
	datad => \RANDI1|ALT_INV_xor_1~0_combout\,
	datae => \fec1|ALT_INV_shift_reg2~0_combout\,
	dataf => \fec1|ALT_INV_shift_reg\(4),
	combout => \fec1|shift_reg~1_combout\);

-- Location: LABCELL_X79_Y78_N33
\fec1|Selector36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector36~0_combout\ = ( \fec1|shift_reg\(5) & ( \fec1|shift_reg~1_combout\ ) ) # ( !\fec1|shift_reg\(5) & ( \fec1|shift_reg~1_combout\ & ( (!\fec1|input_state_reg.PingPong_state~q\) # ((!\fec1|PingPong_flag~q\ & (\fec1|process_0~9_combout\ & 
-- !\fec1|Selector35~0_combout\))) ) ) ) # ( \fec1|shift_reg\(5) & ( !\fec1|shift_reg~1_combout\ & ( (\fec1|input_state_reg.PingPong_state~q\ & (((!\fec1|process_0~9_combout\) # (\fec1|Selector35~0_combout\)) # (\fec1|PingPong_flag~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001101111111111111001000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_PingPong_flag~q\,
	datab => \fec1|ALT_INV_process_0~9_combout\,
	datac => \fec1|ALT_INV_Selector35~0_combout\,
	datad => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datae => \fec1|ALT_INV_shift_reg\(5),
	dataf => \fec1|ALT_INV_shift_reg~1_combout\,
	combout => \fec1|Selector36~0_combout\);

-- Location: FF_X79_Y78_N35
\fec1|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Selector36~0_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \fec1|Selector35~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|shift_reg\(4));

-- Location: MLABCELL_X78_Y78_N51
\fec1|shift_reg~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|shift_reg~2_combout\ = (!\fec1|counter_buffer_input\(1) & \fec1|counter_buffer_input\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(1),
	datab => \fec1|ALT_INV_counter_buffer_input\(2),
	combout => \fec1|shift_reg~2_combout\);

-- Location: MLABCELL_X78_Y78_N24
\fec1|shift_reg~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|shift_reg~3_combout\ = ( \WiInput~input_o\ & ( \RANDI1|xor_1~0_combout\ & ( (\fec1|shift_reg\(3) & ((!\fec1|counter_buffer_input\(0)) # (!\fec1|shift_reg~2_combout\))) ) ) ) # ( !\WiInput~input_o\ & ( \RANDI1|xor_1~0_combout\ & ( 
-- (!\fec1|counter_buffer_input\(0) & (\fec1|shift_reg\(3))) # (\fec1|counter_buffer_input\(0) & ((!\fec1|shift_reg~2_combout\ & (\fec1|shift_reg\(3))) # (\fec1|shift_reg~2_combout\ & ((\TopWiMax_in_valid~input_o\))))) ) ) ) # ( \WiInput~input_o\ & ( 
-- !\RANDI1|xor_1~0_combout\ & ( (!\fec1|counter_buffer_input\(0) & (\fec1|shift_reg\(3))) # (\fec1|counter_buffer_input\(0) & ((!\fec1|shift_reg~2_combout\ & (\fec1|shift_reg\(3))) # (\fec1|shift_reg~2_combout\ & ((\TopWiMax_in_valid~input_o\))))) ) ) ) # ( 
-- !\WiInput~input_o\ & ( !\RANDI1|xor_1~0_combout\ & ( (\fec1|shift_reg\(3) & ((!\fec1|counter_buffer_input\(0)) # (!\fec1|shift_reg~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000101011101010100010101110101010001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_shift_reg\(3),
	datab => \fec1|ALT_INV_counter_buffer_input\(0),
	datac => \fec1|ALT_INV_shift_reg~2_combout\,
	datad => \ALT_INV_TopWiMax_in_valid~input_o\,
	datae => \ALT_INV_WiInput~input_o\,
	dataf => \RANDI1|ALT_INV_xor_1~0_combout\,
	combout => \fec1|shift_reg~3_combout\);

-- Location: LABCELL_X79_Y78_N6
\fec1|Selector37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector37~0_combout\ = ( \fec1|shift_reg\(4) & ( \fec1|shift_reg~3_combout\ ) ) # ( !\fec1|shift_reg\(4) & ( \fec1|shift_reg~3_combout\ & ( (!\fec1|input_state_reg.PingPong_state~q\) # ((\fec1|process_0~9_combout\ & (!\fec1|PingPong_flag~q\ & 
-- !\fec1|Selector35~0_combout\))) ) ) ) # ( \fec1|shift_reg\(4) & ( !\fec1|shift_reg~3_combout\ & ( (\fec1|input_state_reg.PingPong_state~q\ & ((!\fec1|process_0~9_combout\) # ((\fec1|Selector35~0_combout\) # (\fec1|PingPong_flag~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001010101010110111010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datab => \fec1|ALT_INV_process_0~9_combout\,
	datac => \fec1|ALT_INV_PingPong_flag~q\,
	datad => \fec1|ALT_INV_Selector35~0_combout\,
	datae => \fec1|ALT_INV_shift_reg\(4),
	dataf => \fec1|ALT_INV_shift_reg~3_combout\,
	combout => \fec1|Selector37~0_combout\);

-- Location: FF_X79_Y78_N8
\fec1|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Selector37~0_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \fec1|Selector35~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|shift_reg\(3));

-- Location: MLABCELL_X78_Y78_N54
\fec1|shift_reg~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|shift_reg~5_combout\ = ( \WiInput~input_o\ & ( \RANDI1|xor_1~0_combout\ & ( (\fec1|shift_reg\(2) & ((!\fec1|shift_reg~2_combout\) # (\fec1|counter_buffer_input\(0)))) ) ) ) # ( !\WiInput~input_o\ & ( \RANDI1|xor_1~0_combout\ & ( 
-- (!\fec1|counter_buffer_input\(0) & ((!\fec1|shift_reg~2_combout\ & (\fec1|shift_reg\(2))) # (\fec1|shift_reg~2_combout\ & ((\TopWiMax_in_valid~input_o\))))) # (\fec1|counter_buffer_input\(0) & (\fec1|shift_reg\(2))) ) ) ) # ( \WiInput~input_o\ & ( 
-- !\RANDI1|xor_1~0_combout\ & ( (!\fec1|counter_buffer_input\(0) & ((!\fec1|shift_reg~2_combout\ & (\fec1|shift_reg\(2))) # (\fec1|shift_reg~2_combout\ & ((\TopWiMax_in_valid~input_o\))))) # (\fec1|counter_buffer_input\(0) & (\fec1|shift_reg\(2))) ) ) ) # ( 
-- !\WiInput~input_o\ & ( !\RANDI1|xor_1~0_combout\ & ( (\fec1|shift_reg\(2) & ((!\fec1|shift_reg~2_combout\) # (\fec1|counter_buffer_input\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010001010100010101110101010001010111010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_shift_reg\(2),
	datab => \fec1|ALT_INV_counter_buffer_input\(0),
	datac => \fec1|ALT_INV_shift_reg~2_combout\,
	datad => \ALT_INV_TopWiMax_in_valid~input_o\,
	datae => \ALT_INV_WiInput~input_o\,
	dataf => \RANDI1|ALT_INV_xor_1~0_combout\,
	combout => \fec1|shift_reg~5_combout\);

-- Location: LABCELL_X79_Y78_N9
\fec1|Selector38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector38~0_combout\ = ( \fec1|shift_reg\(3) & ( \fec1|shift_reg~5_combout\ ) ) # ( !\fec1|shift_reg\(3) & ( \fec1|shift_reg~5_combout\ & ( (!\fec1|input_state_reg.PingPong_state~q\) # ((\fec1|process_0~9_combout\ & (!\fec1|Selector35~0_combout\ & 
-- !\fec1|PingPong_flag~q\))) ) ) ) # ( \fec1|shift_reg\(3) & ( !\fec1|shift_reg~5_combout\ & ( (\fec1|input_state_reg.PingPong_state~q\ & ((!\fec1|process_0~9_combout\) # ((\fec1|PingPong_flag~q\) # (\fec1|Selector35~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001010101010110111010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datab => \fec1|ALT_INV_process_0~9_combout\,
	datac => \fec1|ALT_INV_Selector35~0_combout\,
	datad => \fec1|ALT_INV_PingPong_flag~q\,
	datae => \fec1|ALT_INV_shift_reg\(3),
	dataf => \fec1|ALT_INV_shift_reg~5_combout\,
	combout => \fec1|Selector38~0_combout\);

-- Location: FF_X79_Y78_N11
\fec1|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Selector38~0_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \fec1|Selector35~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|shift_reg\(2));

-- Location: LABCELL_X83_Y78_N12
\fec1|Selector39~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector39~1_combout\ = ( \fec1|Selector39~0_combout\ & ( \fec1|shift_reg\(2) ) ) # ( !\fec1|Selector39~0_combout\ & ( \fec1|shift_reg\(2) & ( (\fec1|input_state_reg.PingPong_state~q\ & (((!\fec1|Equal5~1_combout\ & !\fec1|process_0~10_combout\)) # 
-- (\fec1|PingPong_flag~q\))) ) ) ) # ( \fec1|Selector39~0_combout\ & ( !\fec1|shift_reg\(2) & ( (!\fec1|input_state_reg.PingPong_state~q\) # ((!\fec1|PingPong_flag~q\ & ((\fec1|process_0~10_combout\) # (\fec1|Equal5~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101001111110000001011000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_Equal5~1_combout\,
	datab => \fec1|ALT_INV_PingPong_flag~q\,
	datac => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datad => \fec1|ALT_INV_process_0~10_combout\,
	datae => \fec1|ALT_INV_Selector39~0_combout\,
	dataf => \fec1|ALT_INV_shift_reg\(2),
	combout => \fec1|Selector39~1_combout\);

-- Location: FF_X83_Y78_N14
\fec1|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Selector39~1_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \fec1|Selector35~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|shift_reg\(1));

-- Location: LABCELL_X81_Y77_N57
\fec1|finished_tail_flag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|finished_tail_flag~0_combout\ = ( \fec1|LessThan0~1_combout\ & ( \fec1|finished_tail_flag~q\ ) ) # ( !\fec1|LessThan0~1_combout\ & ( ((\fec1|Equal5~1_combout\ & (\fec1|input_state_reg.input_buffer~q\ & !\fec1|counter_buffer_input\(31)))) # 
-- (\fec1|finished_tail_flag~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100001111000111110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_Equal5~1_combout\,
	datab => \fec1|ALT_INV_input_state_reg.input_buffer~q\,
	datac => \fec1|ALT_INV_finished_tail_flag~q\,
	datad => \fec1|ALT_INV_counter_buffer_input\(31),
	dataf => \fec1|ALT_INV_LessThan0~1_combout\,
	combout => \fec1|finished_tail_flag~0_combout\);

-- Location: FF_X79_Y78_N47
\fec1|finished_tail_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \fec1|finished_tail_flag~0_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|finished_tail_flag~q\);

-- Location: FF_X82_Y76_N44
\fec1|output_state_reg.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \fec1|output_state_reg.idle~0_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|output_state_reg.idle~q\);

-- Location: MLABCELL_X82_Y76_N3
\fec1|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Equal9~0_combout\ = ( \fec1|counter_shift_and_output\(0) & ( (!\fec1|counter_shift_and_output\(7) & (!\fec1|counter_shift_and_output\(5) & !\fec1|counter_shift_and_output\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec1|ALT_INV_counter_shift_and_output\(7),
	datac => \fec1|ALT_INV_counter_shift_and_output\(5),
	datad => \fec1|ALT_INV_counter_shift_and_output\(6),
	dataf => \fec1|ALT_INV_counter_shift_and_output\(0),
	combout => \fec1|Equal9~0_combout\);

-- Location: MLABCELL_X82_Y76_N42
\fec1|output_state_reg.idle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|output_state_reg.idle~0_combout\ = ( \fec1|output_state_reg.idle~q\ & ( \fec1|Equal9~0_combout\ ) ) # ( !\fec1|output_state_reg.idle~q\ & ( \fec1|Equal9~0_combout\ & ( (!\fec1|counter_shift_and_output\(31) & (\fec1|LessThan4~0_combout\ & 
-- (\fec1|finished_tail_flag~q\ & \fec1|LessThan5~0_combout\))) ) ) ) # ( \fec1|output_state_reg.idle~q\ & ( !\fec1|Equal9~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_shift_and_output\(31),
	datab => \fec1|ALT_INV_LessThan4~0_combout\,
	datac => \fec1|ALT_INV_finished_tail_flag~q\,
	datad => \fec1|ALT_INV_LessThan5~0_combout\,
	datae => \fec1|ALT_INV_output_state_reg.idle~q\,
	dataf => \fec1|ALT_INV_Equal9~0_combout\,
	combout => \fec1|output_state_reg.idle~0_combout\);

-- Location: FF_X82_Y76_N43
\fec1|output_state_reg.idle~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \fec1|output_state_reg.idle~0_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|output_state_reg.idle~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y78_N3
\fec1|shift_reg2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|shift_reg2~1_combout\ = ( !\fec1|counter_buffer_input\(0) & ( (\fec1|counter_buffer_input\(1) & !\fec1|counter_buffer_input\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_buffer_input\(1),
	datab => \fec1|ALT_INV_counter_buffer_input\(2),
	dataf => \fec1|ALT_INV_counter_buffer_input\(0),
	combout => \fec1|shift_reg2~1_combout\);

-- Location: LABCELL_X83_Y78_N51
\fec1|shift_reg~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|shift_reg~4_combout\ = ( \RANDI1|seed_reg\(13) & ( \fec1|shift_reg2~1_combout\ & ( (\TopWiMax_in_valid~input_o\ & (!\WiInput~input_o\ $ (\RANDI1|seed_reg\(14)))) ) ) ) # ( !\RANDI1|seed_reg\(13) & ( \fec1|shift_reg2~1_combout\ & ( 
-- (\TopWiMax_in_valid~input_o\ & (!\WiInput~input_o\ $ (!\RANDI1|seed_reg\(14)))) ) ) ) # ( \RANDI1|seed_reg\(13) & ( !\fec1|shift_reg2~1_combout\ & ( \fec1|shift_reg\(0) ) ) ) # ( !\RANDI1|seed_reg\(13) & ( !\fec1|shift_reg2~1_combout\ & ( 
-- \fec1|shift_reg\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000011001100000000010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WiInput~input_o\,
	datab => \RANDI1|ALT_INV_seed_reg\(14),
	datac => \fec1|ALT_INV_shift_reg\(0),
	datad => \ALT_INV_TopWiMax_in_valid~input_o\,
	datae => \RANDI1|ALT_INV_seed_reg\(13),
	dataf => \fec1|ALT_INV_shift_reg2~1_combout\,
	combout => \fec1|shift_reg~4_combout\);

-- Location: LABCELL_X83_Y78_N6
\fec1|Selector40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector40~0_combout\ = ( \fec1|Selector35~0_combout\ & ( \fec1|shift_reg\(1) & ( (\fec1|input_state_reg.PingPong_state~q\) # (\fec1|shift_reg~4_combout\) ) ) ) # ( !\fec1|Selector35~0_combout\ & ( \fec1|shift_reg\(1) & ( \fec1|shift_reg~4_combout\ 
-- ) ) ) # ( \fec1|Selector35~0_combout\ & ( !\fec1|shift_reg\(1) & ( (\fec1|shift_reg~4_combout\ & ((!\fec1|input_state_reg.PingPong_state~q\) # ((\fec1|process_0~9_combout\ & !\fec1|PingPong_flag~q\)))) ) ) ) # ( !\fec1|Selector35~0_combout\ & ( 
-- !\fec1|shift_reg\(1) & ( (\fec1|shift_reg~4_combout\ & ((!\fec1|input_state_reg.PingPong_state~q\) # ((\fec1|process_0~9_combout\ & !\fec1|PingPong_flag~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010000010100010101000001010101010101010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_shift_reg~4_combout\,
	datab => \fec1|ALT_INV_process_0~9_combout\,
	datac => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datad => \fec1|ALT_INV_PingPong_flag~q\,
	datae => \fec1|ALT_INV_Selector35~0_combout\,
	dataf => \fec1|ALT_INV_shift_reg\(1),
	combout => \fec1|Selector40~0_combout\);

-- Location: FF_X83_Y78_N8
\fec1|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|Selector40~0_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \fec1|Selector35~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|shift_reg\(0));

-- Location: LABCELL_X79_Y78_N42
\fec1|FEC_output_data~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|FEC_output_data~5_combout\ = ( \fec1|finished_tail_flag~q\ & ( \fec1|shift_reg\(4) & ( (!\fec1|PingPong_flag~q\ & (((!\fec1|output_state_reg.idle~DUPLICATE_q\)))) # (\fec1|PingPong_flag~q\ & (!\fec1|shift_reg\(3) $ (((\fec1|shift_reg\(0)))))) ) ) ) 
-- # ( !\fec1|finished_tail_flag~q\ & ( \fec1|shift_reg\(4) & ( (\fec1|PingPong_flag~q\ & (!\fec1|shift_reg\(3) $ (\fec1|shift_reg\(0)))) ) ) ) # ( \fec1|finished_tail_flag~q\ & ( !\fec1|shift_reg\(4) & ( (!\fec1|PingPong_flag~q\ & 
-- (((!\fec1|output_state_reg.idle~DUPLICATE_q\)))) # (\fec1|PingPong_flag~q\ & (!\fec1|shift_reg\(3) $ (((!\fec1|shift_reg\(0)))))) ) ) ) # ( !\fec1|finished_tail_flag~q\ & ( !\fec1|shift_reg\(4) & ( (\fec1|PingPong_flag~q\ & (!\fec1|shift_reg\(3) $ 
-- (!\fec1|shift_reg\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010110001011100101000001010000001011100101011000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_shift_reg\(3),
	datab => \fec1|ALT_INV_output_state_reg.idle~DUPLICATE_q\,
	datac => \fec1|ALT_INV_PingPong_flag~q\,
	datad => \fec1|ALT_INV_shift_reg\(0),
	datae => \fec1|ALT_INV_finished_tail_flag~q\,
	dataf => \fec1|ALT_INV_shift_reg\(4),
	combout => \fec1|FEC_output_data~5_combout\);

-- Location: MLABCELL_X82_Y76_N15
\fec1|LessThan5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|LessThan5~2_combout\ = ( \fec1|LessThan5~1_combout\ & ( ((!\fec1|LessThan5~0_combout\) # (\fec1|counter_shift_and_output\(5))) # (\fec1|counter_shift_and_output\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec1|ALT_INV_counter_shift_and_output\(0),
	datac => \fec1|ALT_INV_counter_shift_and_output\(5),
	datad => \fec1|ALT_INV_LessThan5~0_combout\,
	dataf => \fec1|ALT_INV_LessThan5~1_combout\,
	combout => \fec1|LessThan5~2_combout\);

-- Location: MLABCELL_X82_Y76_N48
\fec1|LessThan5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|LessThan5~3_combout\ = ( !\fec1|LessThan5~2_combout\ & ( \fec1|LessThan4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_LessThan4~0_combout\,
	dataf => \fec1|ALT_INV_LessThan5~2_combout\,
	combout => \fec1|LessThan5~3_combout\);

-- Location: LABCELL_X83_Y76_N48
\fec1|Selector74~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector74~0_combout\ = ( !\fec1|LessThan5~1_combout\ & ( !\fec1|counter_shift_and_output\(30) & ( (\fec1|Equal6~1_combout\ & (\fec1|Equal6~2_combout\ & (\fec1|Equal6~0_combout\ & \fec1|Equal6~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_Equal6~1_combout\,
	datab => \fec1|ALT_INV_Equal6~2_combout\,
	datac => \fec1|ALT_INV_Equal6~0_combout\,
	datad => \fec1|ALT_INV_Equal6~3_combout\,
	datae => \fec1|ALT_INV_LessThan5~1_combout\,
	dataf => \fec1|ALT_INV_counter_shift_and_output\(30),
	combout => \fec1|Selector74~0_combout\);

-- Location: FF_X82_Y76_N20
\fec1|output_state_reg.y~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \fec1|output_state_reg.y~0_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \fec1|finished_tail_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|output_state_reg.y~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y76_N21
\fec1|Equal9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Equal9~1_combout\ = ( \fec1|LessThan4~0_combout\ & ( (!\fec1|Equal9~0_combout\) # ((!\fec1|LessThan5~0_combout\) # (\fec1|counter_shift_and_output\(31))) ) ) # ( !\fec1|LessThan4~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_Equal9~0_combout\,
	datab => \fec1|ALT_INV_LessThan5~0_combout\,
	datac => \fec1|ALT_INV_counter_shift_and_output\(31),
	dataf => \fec1|ALT_INV_LessThan4~0_combout\,
	combout => \fec1|Equal9~1_combout\);

-- Location: MLABCELL_X82_Y76_N9
\fec1|Selector74~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector74~2_combout\ = ( \fec1|LessThan4~0_combout\ & ( (!\fec1|counter_shift_and_output\(31) & \fec1|LessThan5~2_combout\) ) ) # ( !\fec1|LessThan4~0_combout\ & ( !\fec1|counter_shift_and_output\(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_counter_shift_and_output\(31),
	datac => \fec1|ALT_INV_LessThan5~2_combout\,
	dataf => \fec1|ALT_INV_LessThan4~0_combout\,
	combout => \fec1|Selector74~2_combout\);

-- Location: MLABCELL_X82_Y76_N30
\fec1|Selector75~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector75~0_combout\ = ( !\fec1|output_state_reg.y~DUPLICATE_q\ & ( ((!\fec1|output_state_reg.idle~q\ & (((\fec1|Equal9~1_combout\)))) # (\fec1|output_state_reg.idle~q\ & (\fec1|Selector74~2_combout\))) ) ) # ( \fec1|output_state_reg.y~DUPLICATE_q\ 
-- & ( (!\fec1|output_state_reg.idle~q\ & ((((\fec1|Equal9~1_combout\))))) # (\fec1|output_state_reg.idle~q\ & (\fec1|input_state_reg.PingPong_state~q\ & (((\fec1|Selector74~0_combout\)) # (\fec1|counter_shift_and_output\(31))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000010001000111001111110011111100110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datab => \fec1|ALT_INV_output_state_reg.idle~q\,
	datac => \fec1|ALT_INV_counter_shift_and_output\(31),
	datad => \fec1|ALT_INV_Selector74~0_combout\,
	datae => \fec1|ALT_INV_output_state_reg.y~DUPLICATE_q\,
	dataf => \fec1|ALT_INV_Equal9~1_combout\,
	datag => \fec1|ALT_INV_Selector74~2_combout\,
	combout => \fec1|Selector75~0_combout\);

-- Location: MLABCELL_X82_Y76_N18
\fec1|output_state_reg.y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|output_state_reg.y~0_combout\ = ( !\fec1|Selector75~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \fec1|ALT_INV_Selector75~0_combout\,
	combout => \fec1|output_state_reg.y~0_combout\);

-- Location: FF_X82_Y76_N19
\fec1|output_state_reg.y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \fec1|output_state_reg.y~0_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \fec1|finished_tail_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|output_state_reg.y~q\);

-- Location: MLABCELL_X82_Y76_N36
\fec1|Selector74~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|Selector74~1_combout\ = ( \fec1|output_state_reg.x~q\ & ( \fec1|output_state_reg.y~q\ & ( (!\fec1|counter_shift_and_output\(31) & ((!\fec1|LessThan5~3_combout\) # ((\fec1|input_state_reg.PingPong_state~q\ & \fec1|Selector74~0_combout\)))) # 
-- (\fec1|counter_shift_and_output\(31) & (\fec1|input_state_reg.PingPong_state~q\)) ) ) ) # ( !\fec1|output_state_reg.x~q\ & ( \fec1|output_state_reg.y~q\ & ( (\fec1|input_state_reg.PingPong_state~q\ & ((\fec1|Selector74~0_combout\) # 
-- (\fec1|counter_shift_and_output\(31)))) ) ) ) # ( \fec1|output_state_reg.x~q\ & ( !\fec1|output_state_reg.y~q\ & ( (!\fec1|counter_shift_and_output\(31) & !\fec1|LessThan5~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000010001010101011101000111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datab => \fec1|ALT_INV_counter_shift_and_output\(31),
	datac => \fec1|ALT_INV_LessThan5~3_combout\,
	datad => \fec1|ALT_INV_Selector74~0_combout\,
	datae => \fec1|ALT_INV_output_state_reg.x~q\,
	dataf => \fec1|ALT_INV_output_state_reg.y~q\,
	combout => \fec1|Selector74~1_combout\);

-- Location: FF_X82_Y76_N37
\fec1|output_state_reg.x\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \fec1|Selector74~1_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \fec1|finished_tail_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|output_state_reg.x~q\);

-- Location: LABCELL_X79_Y78_N24
\fec1|FEC_output_data~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|FEC_output_data~7_combout\ = ( \fec1|output_state_reg.x~q\ & ( \fec1|finished_tail_flag~q\ & ( !\fec1|FEC_output_data~5_combout\ $ (\fec1|shift_reg\(5)) ) ) ) # ( !\fec1|output_state_reg.x~q\ & ( \fec1|finished_tail_flag~q\ & ( 
-- !\fec1|FEC_output_data~5_combout\ $ (((!\fec1|output_state_reg.idle~q\ & ((\fec1|shift_reg\(5)))) # (\fec1|output_state_reg.idle~q\ & (\fec1|shift_reg\(1))))) ) ) ) # ( \fec1|output_state_reg.x~q\ & ( !\fec1|finished_tail_flag~q\ & ( 
-- !\fec1|FEC_output_data~5_combout\ $ (\fec1|shift_reg\(5)) ) ) ) # ( !\fec1|output_state_reg.x~q\ & ( !\fec1|finished_tail_flag~q\ & ( !\fec1|shift_reg\(1) $ (\fec1|FEC_output_data~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001110011000011001111001001001110011100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_shift_reg\(1),
	datab => \fec1|ALT_INV_FEC_output_data~5_combout\,
	datac => \fec1|ALT_INV_output_state_reg.idle~q\,
	datad => \fec1|ALT_INV_shift_reg\(5),
	datae => \fec1|ALT_INV_output_state_reg.x~q\,
	dataf => \fec1|ALT_INV_finished_tail_flag~q\,
	combout => \fec1|FEC_output_data~7_combout\);

-- Location: LABCELL_X79_Y78_N21
\fec1|FEC_output_data~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|FEC_output_data~8_combout\ = ( \fec1|finished_tail_flag~q\ & ( (!\fec1|output_state_reg.x~q\ & (\fec1|output_state_reg.idle~DUPLICATE_q\ & !\fec1|output_state_reg.y~DUPLICATE_q\)) ) ) # ( !\fec1|finished_tail_flag~q\ & ( 
-- (!\fec1|output_state_reg.x~q\ & !\fec1|output_state_reg.y~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec1|ALT_INV_output_state_reg.x~q\,
	datac => \fec1|ALT_INV_output_state_reg.idle~DUPLICATE_q\,
	datad => \fec1|ALT_INV_output_state_reg.y~DUPLICATE_q\,
	dataf => \fec1|ALT_INV_finished_tail_flag~q\,
	combout => \fec1|FEC_output_data~8_combout\);

-- Location: MLABCELL_X82_Y76_N51
\fec1|shift_reg2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|shift_reg2~2_combout\ = ( \fec1|Equal6~5_combout\ & ( (!\fec1|LessThan2~0_combout\ & (!\fec1|counter_shift_and_output\(31) & (!\fec1|PingPong_flag~q\ & \fec1|Selector74~0_combout\))) ) ) # ( !\fec1|Equal6~5_combout\ & ( 
-- (!\fec1|counter_shift_and_output\(31) & (!\fec1|PingPong_flag~q\ & \fec1|Selector74~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_LessThan2~0_combout\,
	datab => \fec1|ALT_INV_counter_shift_and_output\(31),
	datac => \fec1|ALT_INV_PingPong_flag~q\,
	datad => \fec1|ALT_INV_Selector74~0_combout\,
	dataf => \fec1|ALT_INV_Equal6~5_combout\,
	combout => \fec1|shift_reg2~2_combout\);

-- Location: MLABCELL_X78_Y78_N30
\fec1|shift_reg2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|shift_reg2~3_combout\ = ( \fec1|counter_buffer_input\(2) & ( \fec1|process_0~4_combout\ & ( (\fec1|process_0~7_combout\ & (\fec1|counter_buffer_input\(1) & (\fec1|counter_buffer_input\(0) & \fec1|PingPong_flag~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_process_0~7_combout\,
	datab => \fec1|ALT_INV_counter_buffer_input\(1),
	datac => \fec1|ALT_INV_counter_buffer_input\(0),
	datad => \fec1|ALT_INV_PingPong_flag~q\,
	datae => \fec1|ALT_INV_counter_buffer_input\(2),
	dataf => \fec1|ALT_INV_process_0~4_combout\,
	combout => \fec1|shift_reg2~3_combout\);

-- Location: LABCELL_X79_Y78_N51
\fec1|shift_reg2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|shift_reg2~4_combout\ = ( \fec1|shift_reg2~3_combout\ & ( (!\fec1|shift_reg2~2_combout\ & (\RANDI1|randi_output_data~0_combout\)) # (\fec1|shift_reg2~2_combout\ & ((\fec1|ram1|altsyncram_component|auto_generated|q_b\(0)))) ) ) # ( 
-- !\fec1|shift_reg2~3_combout\ & ( (!\fec1|shift_reg2~2_combout\ & ((\fec1|shift_reg2\(5)))) # (\fec1|shift_reg2~2_combout\ & (\fec1|ram1|altsyncram_component|auto_generated|q_b\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_shift_reg2~2_combout\,
	datab => \RANDI1|ALT_INV_randi_output_data~0_combout\,
	datac => \fec1|ram1|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	datad => \fec1|ALT_INV_shift_reg2\(5),
	dataf => \fec1|ALT_INV_shift_reg2~3_combout\,
	combout => \fec1|shift_reg2~4_combout\);

-- Location: FF_X79_Y78_N53
\fec1|shift_reg2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|shift_reg2~4_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \fec1|input_state_reg.PingPong_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|shift_reg2\(5));

-- Location: MLABCELL_X78_Y78_N18
\fec1|shift_reg2~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|shift_reg2~11_combout\ = ( \fec1|counter_buffer_input\(1) & ( \fec1|process_0~4_combout\ & ( (\fec1|process_0~7_combout\ & (!\fec1|counter_buffer_input\(2) & (\fec1|counter_buffer_input\(0) & \fec1|PingPong_flag~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_process_0~7_combout\,
	datab => \fec1|ALT_INV_counter_buffer_input\(2),
	datac => \fec1|ALT_INV_counter_buffer_input\(0),
	datad => \fec1|ALT_INV_PingPong_flag~q\,
	datae => \fec1|ALT_INV_counter_buffer_input\(1),
	dataf => \fec1|ALT_INV_process_0~4_combout\,
	combout => \fec1|shift_reg2~11_combout\);

-- Location: MLABCELL_X78_Y78_N9
\fec1|shift_reg2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|shift_reg2~7_combout\ = ( \fec1|counter_buffer_input\(0) & ( !\fec1|counter_buffer_input\(1) & ( (\fec1|process_0~7_combout\ & (\fec1|counter_buffer_input\(2) & (\fec1|PingPong_flag~q\ & \fec1|process_0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_process_0~7_combout\,
	datab => \fec1|ALT_INV_counter_buffer_input\(2),
	datac => \fec1|ALT_INV_PingPong_flag~q\,
	datad => \fec1|ALT_INV_process_0~4_combout\,
	datae => \fec1|ALT_INV_counter_buffer_input\(0),
	dataf => \fec1|ALT_INV_counter_buffer_input\(1),
	combout => \fec1|shift_reg2~7_combout\);

-- Location: MLABCELL_X78_Y78_N6
\fec1|shift_reg2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|shift_reg2~5_combout\ = ( \fec1|counter_buffer_input\(1) & ( !\fec1|counter_buffer_input\(0) & ( (\fec1|process_0~7_combout\ & (\fec1|counter_buffer_input\(2) & (\fec1|process_0~4_combout\ & \fec1|PingPong_flag~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_process_0~7_combout\,
	datab => \fec1|ALT_INV_counter_buffer_input\(2),
	datac => \fec1|ALT_INV_process_0~4_combout\,
	datad => \fec1|ALT_INV_PingPong_flag~q\,
	datae => \fec1|ALT_INV_counter_buffer_input\(1),
	dataf => \fec1|ALT_INV_counter_buffer_input\(0),
	combout => \fec1|shift_reg2~5_combout\);

-- Location: LABCELL_X79_Y78_N48
\fec1|shift_reg2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|shift_reg2~6_combout\ = ( \fec1|shift_reg2\(5) & ( ((!\fec1|shift_reg2~5_combout\ & ((\fec1|shift_reg2\(4)))) # (\fec1|shift_reg2~5_combout\ & (\RANDI1|randi_output_data~0_combout\))) # (\fec1|shift_reg2~2_combout\) ) ) # ( !\fec1|shift_reg2\(5) & ( 
-- (!\fec1|shift_reg2~2_combout\ & ((!\fec1|shift_reg2~5_combout\ & ((\fec1|shift_reg2\(4)))) # (\fec1|shift_reg2~5_combout\ & (\RANDI1|randi_output_data~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000101010001001010111111101110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_shift_reg2~2_combout\,
	datab => \RANDI1|ALT_INV_randi_output_data~0_combout\,
	datac => \fec1|ALT_INV_shift_reg2~5_combout\,
	datad => \fec1|ALT_INV_shift_reg2\(4),
	dataf => \fec1|ALT_INV_shift_reg2\(5),
	combout => \fec1|shift_reg2~6_combout\);

-- Location: FF_X79_Y78_N50
\fec1|shift_reg2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|shift_reg2~6_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \fec1|input_state_reg.PingPong_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|shift_reg2\(4));

-- Location: LABCELL_X79_Y78_N57
\fec1|shift_reg2~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|shift_reg2~8_combout\ = ( \fec1|shift_reg2\(4) & ( ((!\fec1|shift_reg2~7_combout\ & ((\fec1|shift_reg2\(3)))) # (\fec1|shift_reg2~7_combout\ & (\RANDI1|randi_output_data~0_combout\))) # (\fec1|shift_reg2~2_combout\) ) ) # ( !\fec1|shift_reg2\(4) & ( 
-- (!\fec1|shift_reg2~2_combout\ & ((!\fec1|shift_reg2~7_combout\ & ((\fec1|shift_reg2\(3)))) # (\fec1|shift_reg2~7_combout\ & (\RANDI1|randi_output_data~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000101010001001010111111101110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_shift_reg2~2_combout\,
	datab => \RANDI1|ALT_INV_randi_output_data~0_combout\,
	datac => \fec1|ALT_INV_shift_reg2~7_combout\,
	datad => \fec1|ALT_INV_shift_reg2\(3),
	dataf => \fec1|ALT_INV_shift_reg2\(4),
	combout => \fec1|shift_reg2~8_combout\);

-- Location: FF_X79_Y78_N59
\fec1|shift_reg2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|shift_reg2~8_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \fec1|input_state_reg.PingPong_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|shift_reg2\(3));

-- Location: MLABCELL_X78_Y78_N45
\fec1|shift_reg2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|shift_reg2~13_combout\ = ( !\fec1|counter_buffer_input\(1) & ( \fec1|counter_buffer_input\(2) & ( (\fec1|process_0~7_combout\ & (!\fec1|counter_buffer_input\(0) & (\fec1|PingPong_flag~q\ & \fec1|process_0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_process_0~7_combout\,
	datab => \fec1|ALT_INV_counter_buffer_input\(0),
	datac => \fec1|ALT_INV_PingPong_flag~q\,
	datad => \fec1|ALT_INV_process_0~4_combout\,
	datae => \fec1|ALT_INV_counter_buffer_input\(1),
	dataf => \fec1|ALT_INV_counter_buffer_input\(2),
	combout => \fec1|shift_reg2~13_combout\);

-- Location: LABCELL_X79_Y78_N36
\fec1|shift_reg2~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|shift_reg2~14_combout\ = ( \fec1|shift_reg2~13_combout\ & ( (!\fec1|shift_reg2~2_combout\ & (\RANDI1|randi_output_data~0_combout\)) # (\fec1|shift_reg2~2_combout\ & ((\fec1|shift_reg2\(3)))) ) ) # ( !\fec1|shift_reg2~13_combout\ & ( 
-- (!\fec1|shift_reg2~2_combout\ & ((\fec1|shift_reg2\(2)))) # (\fec1|shift_reg2~2_combout\ & (\fec1|shift_reg2\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_shift_reg2~2_combout\,
	datab => \RANDI1|ALT_INV_randi_output_data~0_combout\,
	datac => \fec1|ALT_INV_shift_reg2\(3),
	datad => \fec1|ALT_INV_shift_reg2\(2),
	dataf => \fec1|ALT_INV_shift_reg2~13_combout\,
	combout => \fec1|shift_reg2~14_combout\);

-- Location: FF_X79_Y78_N38
\fec1|shift_reg2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|shift_reg2~14_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \fec1|input_state_reg.PingPong_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|shift_reg2\(2));

-- Location: LABCELL_X79_Y78_N39
\fec1|shift_reg2~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|shift_reg2~12_combout\ = ( \fec1|shift_reg2\(2) & ( ((!\fec1|shift_reg2~11_combout\ & ((\fec1|shift_reg2\(1)))) # (\fec1|shift_reg2~11_combout\ & (\RANDI1|randi_output_data~0_combout\))) # (\fec1|shift_reg2~2_combout\) ) ) # ( !\fec1|shift_reg2\(2) 
-- & ( (!\fec1|shift_reg2~2_combout\ & ((!\fec1|shift_reg2~11_combout\ & ((\fec1|shift_reg2\(1)))) # (\fec1|shift_reg2~11_combout\ & (\RANDI1|randi_output_data~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000101010001001010111111101110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_shift_reg2~2_combout\,
	datab => \RANDI1|ALT_INV_randi_output_data~0_combout\,
	datac => \fec1|ALT_INV_shift_reg2~11_combout\,
	datad => \fec1|ALT_INV_shift_reg2\(1),
	dataf => \fec1|ALT_INV_shift_reg2\(2),
	combout => \fec1|shift_reg2~12_combout\);

-- Location: FF_X79_Y78_N41
\fec1|shift_reg2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|shift_reg2~12_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \fec1|input_state_reg.PingPong_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|shift_reg2\(1));

-- Location: MLABCELL_X78_Y78_N42
\fec1|shift_reg2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|shift_reg2~9_combout\ = ( !\fec1|counter_buffer_input\(2) & ( \fec1|counter_buffer_input\(1) & ( (\fec1|process_0~7_combout\ & (!\fec1|counter_buffer_input\(0) & (\fec1|process_0~4_combout\ & \fec1|PingPong_flag~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_process_0~7_combout\,
	datab => \fec1|ALT_INV_counter_buffer_input\(0),
	datac => \fec1|ALT_INV_process_0~4_combout\,
	datad => \fec1|ALT_INV_PingPong_flag~q\,
	datae => \fec1|ALT_INV_counter_buffer_input\(2),
	dataf => \fec1|ALT_INV_counter_buffer_input\(1),
	combout => \fec1|shift_reg2~9_combout\);

-- Location: LABCELL_X79_Y78_N54
\fec1|shift_reg2~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|shift_reg2~10_combout\ = ( \fec1|shift_reg2\(1) & ( ((!\fec1|shift_reg2~9_combout\ & ((\fec1|shift_reg2\(0)))) # (\fec1|shift_reg2~9_combout\ & (\RANDI1|randi_output_data~0_combout\))) # (\fec1|shift_reg2~2_combout\) ) ) # ( !\fec1|shift_reg2\(1) & 
-- ( (!\fec1|shift_reg2~2_combout\ & ((!\fec1|shift_reg2~9_combout\ & ((\fec1|shift_reg2\(0)))) # (\fec1|shift_reg2~9_combout\ & (\RANDI1|randi_output_data~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000101010001001010111111101110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_shift_reg2~2_combout\,
	datab => \RANDI1|ALT_INV_randi_output_data~0_combout\,
	datac => \fec1|ALT_INV_shift_reg2~9_combout\,
	datad => \fec1|ALT_INV_shift_reg2\(0),
	dataf => \fec1|ALT_INV_shift_reg2\(1),
	combout => \fec1|shift_reg2~10_combout\);

-- Location: FF_X79_Y78_N56
\fec1|shift_reg2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec1|shift_reg2~10_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \fec1|input_state_reg.PingPong_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec1|shift_reg2\(0));

-- Location: LABCELL_X79_Y78_N3
\fec1|FEC_output_data~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|FEC_output_data~3_combout\ = ( \fec1|shift_reg2\(4) & ( !\fec1|shift_reg2\(3) $ (\fec1|shift_reg2\(0)) ) ) # ( !\fec1|shift_reg2\(4) & ( !\fec1|shift_reg2\(3) $ (!\fec1|shift_reg2\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec1|ALT_INV_shift_reg2\(3),
	datad => \fec1|ALT_INV_shift_reg2\(0),
	dataf => \fec1|ALT_INV_shift_reg2\(4),
	combout => \fec1|FEC_output_data~3_combout\);

-- Location: LABCELL_X79_Y78_N18
\fec1|FEC_output_data~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|FEC_output_data~6_combout\ = ( \fec1|FEC_output_data~5_combout\ & ( !\fec1|shift_reg2\(5) $ (\fec1|FEC_output_data~3_combout\) ) ) # ( !\fec1|FEC_output_data~5_combout\ & ( !\fec1|FEC_output_data~3_combout\ $ (((!\fec1|output_state_reg.x~q\ & 
-- ((\fec1|shift_reg2\(1)))) # (\fec1|output_state_reg.x~q\ & (\fec1|shift_reg2\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110001000011101111000100001110110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_shift_reg2\(5),
	datab => \fec1|ALT_INV_output_state_reg.x~q\,
	datac => \fec1|ALT_INV_shift_reg2\(1),
	datad => \fec1|ALT_INV_FEC_output_data~3_combout\,
	dataf => \fec1|ALT_INV_FEC_output_data~5_combout\,
	combout => \fec1|FEC_output_data~6_combout\);

-- Location: LABCELL_X79_Y78_N12
\fec1|FEC_output_data~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec1|FEC_output_data~4_combout\ = ( \fec1|ram1|altsyncram_component|auto_generated|q_b\(0) & ( \fec1|FEC_output_data~6_combout\ & ( (\fec1|input_state_reg.PingPong_state~q\ & (!\fec1|FEC_output_data~8_combout\ & ((!\fec1|PingPong_flag~q\) # 
-- (\fec1|FEC_output_data~7_combout\)))) ) ) ) # ( !\fec1|ram1|altsyncram_component|auto_generated|q_b\(0) & ( \fec1|FEC_output_data~6_combout\ & ( (\fec1|input_state_reg.PingPong_state~q\ & (\fec1|PingPong_flag~q\ & (!\fec1|FEC_output_data~7_combout\ & 
-- !\fec1|FEC_output_data~8_combout\))) ) ) ) # ( \fec1|ram1|altsyncram_component|auto_generated|q_b\(0) & ( !\fec1|FEC_output_data~6_combout\ & ( (\fec1|input_state_reg.PingPong_state~q\ & (\fec1|PingPong_flag~q\ & (\fec1|FEC_output_data~7_combout\ & 
-- !\fec1|FEC_output_data~8_combout\))) ) ) ) # ( !\fec1|ram1|altsyncram_component|auto_generated|q_b\(0) & ( !\fec1|FEC_output_data~6_combout\ & ( (\fec1|input_state_reg.PingPong_state~q\ & (!\fec1|FEC_output_data~8_combout\ & ((!\fec1|PingPong_flag~q\) # 
-- (!\fec1|FEC_output_data~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010000000000000000010000000000010000000000000100010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datab => \fec1|ALT_INV_PingPong_flag~q\,
	datac => \fec1|ALT_INV_FEC_output_data~7_combout\,
	datad => \fec1|ALT_INV_FEC_output_data~8_combout\,
	datae => \fec1|ram1|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	dataf => \fec1|ALT_INV_FEC_output_data~6_combout\,
	combout => \fec1|FEC_output_data~4_combout\);

-- Location: LABCELL_X80_Y75_N0
\inter1|counter_kmod16[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|counter_kmod16[0]~_wirecell_combout\ = !\inter1|counter_kmod16\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inter1|ALT_INV_counter_kmod16\(0),
	combout => \inter1|counter_kmod16[0]~_wirecell_combout\);

-- Location: FF_X80_Y75_N2
\inter1|counter_kmod16[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|counter_kmod16[0]~_wirecell_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_kmod16[1]~0_combout\,
	ena => \inter1|counter_kmod16[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_kmod16\(0));

-- Location: LABCELL_X79_Y75_N0
\inter1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add1~1_sumout\ = SUM(( \inter1|counter_kmod16\(0) ) + ( \inter1|counter\(6) ) + ( !VCC ))
-- \inter1|Add1~2\ = CARRY(( \inter1|counter_kmod16\(0) ) + ( \inter1|counter\(6) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_counter_kmod16\(0),
	datac => \inter1|ALT_INV_counter\(6),
	cin => GND,
	sumout => \inter1|Add1~1_sumout\,
	cout => \inter1|Add1~2\);

-- Location: FF_X80_Y75_N5
\inter1|counter_kmod16[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add0~3_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_kmod16[1]~0_combout\,
	ena => \inter1|counter_kmod16[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_kmod16\(1));

-- Location: FF_X80_Y75_N1
\inter1|counter_kmod16[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|counter_kmod16[0]~_wirecell_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_kmod16[1]~0_combout\,
	ena => \inter1|counter_kmod16[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_kmod16[0]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y75_N3
\inter1|Add0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add0~3_combout\ = ( \inter1|counter_kmod16[0]~DUPLICATE_q\ & ( !\inter1|counter_kmod16\(1) ) ) # ( !\inter1|counter_kmod16[0]~DUPLICATE_q\ & ( \inter1|counter_kmod16\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inter1|ALT_INV_counter_kmod16\(1),
	dataf => \inter1|ALT_INV_counter_kmod16[0]~DUPLICATE_q\,
	combout => \inter1|Add0~3_combout\);

-- Location: FF_X80_Y75_N4
\inter1|counter_kmod16[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add0~3_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_kmod16[1]~0_combout\,
	ena => \inter1|counter_kmod16[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_kmod16[1]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y75_N3
\inter1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add1~5_sumout\ = SUM(( !\inter1|counter_kmod16\(0) $ (!\inter1|counter_kmod16[1]~DUPLICATE_q\) ) + ( \inter1|counter[7]~DUPLICATE_q\ ) + ( \inter1|Add1~2\ ))
-- \inter1|Add1~6\ = CARRY(( !\inter1|counter_kmod16\(0) $ (!\inter1|counter_kmod16[1]~DUPLICATE_q\) ) + ( \inter1|counter[7]~DUPLICATE_q\ ) + ( \inter1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_counter_kmod16\(0),
	datac => \inter1|ALT_INV_counter[7]~DUPLICATE_q\,
	datad => \inter1|ALT_INV_counter_kmod16[1]~DUPLICATE_q\,
	cin => \inter1|Add1~2\,
	sumout => \inter1|Add1~5_sumout\,
	cout => \inter1|Add1~6\);

-- Location: LABCELL_X80_Y75_N6
\inter1|Add0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add0~4_combout\ = ( \inter1|counter_kmod16[0]~DUPLICATE_q\ & ( !\inter1|counter_kmod16\(1) $ (!\inter1|counter_kmod16\(2)) ) ) # ( !\inter1|counter_kmod16[0]~DUPLICATE_q\ & ( \inter1|counter_kmod16\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_counter_kmod16\(1),
	datad => \inter1|ALT_INV_counter_kmod16\(2),
	dataf => \inter1|ALT_INV_counter_kmod16[0]~DUPLICATE_q\,
	combout => \inter1|Add0~4_combout\);

-- Location: FF_X80_Y75_N8
\inter1|counter_kmod16[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add0~4_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_kmod16[1]~0_combout\,
	ena => \inter1|counter_kmod16[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_kmod16\(2));

-- Location: LABCELL_X80_Y75_N36
\inter1|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add0~0_combout\ = ( \inter1|counter_kmod16\(2) & ( (!\inter1|counter_kmod16\(1)) # (\inter1|counter_kmod16\(0)) ) ) # ( !\inter1|counter_kmod16\(2) & ( (\inter1|counter_kmod16\(1) & !\inter1|counter_kmod16\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_counter_kmod16\(1),
	datad => \inter1|ALT_INV_counter_kmod16\(0),
	dataf => \inter1|ALT_INV_counter_kmod16\(2),
	combout => \inter1|Add0~0_combout\);

-- Location: LABCELL_X79_Y75_N6
\inter1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add1~9_sumout\ = SUM(( \inter1|Add0~0_combout\ ) + ( GND ) + ( \inter1|Add1~6\ ))
-- \inter1|Add1~10\ = CARRY(( \inter1|Add0~0_combout\ ) + ( GND ) + ( \inter1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inter1|ALT_INV_Add0~0_combout\,
	cin => \inter1|Add1~6\,
	sumout => \inter1|Add1~9_sumout\,
	cout => \inter1|Add1~10\);

-- Location: LABCELL_X80_Y75_N9
\inter1|Add5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add5~0_combout\ = ( \inter1|counter_kmod16[0]~DUPLICATE_q\ & ( !\inter1|counter_kmod16\(3) $ (((!\inter1|counter_kmod16\(1)) # (!\inter1|counter_kmod16\(2)))) ) ) # ( !\inter1|counter_kmod16[0]~DUPLICATE_q\ & ( \inter1|counter_kmod16\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_counter_kmod16\(1),
	datac => \inter1|ALT_INV_counter_kmod16\(2),
	datad => \inter1|ALT_INV_counter_kmod16\(3),
	dataf => \inter1|ALT_INV_counter_kmod16[0]~DUPLICATE_q\,
	combout => \inter1|Add5~0_combout\);

-- Location: FF_X80_Y75_N11
\inter1|counter_kmod16[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Add5~0_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \inter1|counter_kmod16[1]~0_combout\,
	ena => \inter1|counter_kmod16[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|counter_kmod16\(3));

-- Location: LABCELL_X80_Y75_N27
\inter1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add0~1_combout\ = ( \inter1|counter_kmod16[0]~DUPLICATE_q\ & ( !\inter1|counter_kmod16\(1) $ (!\inter1|counter_kmod16\(2) $ (\inter1|counter_kmod16\(3))) ) ) # ( !\inter1|counter_kmod16[0]~DUPLICATE_q\ & ( !\inter1|counter_kmod16\(3) $ 
-- (((!\inter1|counter_kmod16\(2)) # (\inter1|counter_kmod16\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110100101101001011010010110101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_counter_kmod16\(1),
	datab => \inter1|ALT_INV_counter_kmod16\(2),
	datac => \inter1|ALT_INV_counter_kmod16\(3),
	dataf => \inter1|ALT_INV_counter_kmod16[0]~DUPLICATE_q\,
	combout => \inter1|Add0~1_combout\);

-- Location: LABCELL_X79_Y75_N9
\inter1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add1~13_sumout\ = SUM(( \inter1|Add0~1_combout\ ) + ( GND ) + ( \inter1|Add1~10\ ))
-- \inter1|Add1~14\ = CARRY(( \inter1|Add0~1_combout\ ) + ( GND ) + ( \inter1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inter1|ALT_INV_Add0~1_combout\,
	cin => \inter1|Add1~10\,
	sumout => \inter1|Add1~13_sumout\,
	cout => \inter1|Add1~14\);

-- Location: LABCELL_X80_Y75_N24
\inter1|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add0~2_combout\ = ( \inter1|counter_kmod16\(3) & ( ((\inter1|counter_kmod16\(1) & \inter1|counter_kmod16\(0))) # (\inter1|counter_kmod16\(2)) ) ) # ( !\inter1|counter_kmod16\(3) & ( (\inter1|counter_kmod16\(1) & \inter1|counter_kmod16\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_counter_kmod16\(1),
	datab => \inter1|ALT_INV_counter_kmod16\(2),
	datac => \inter1|ALT_INV_counter_kmod16\(0),
	dataf => \inter1|ALT_INV_counter_kmod16\(3),
	combout => \inter1|Add0~2_combout\);

-- Location: LABCELL_X79_Y75_N12
\inter1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add1~17_sumout\ = SUM(( GND ) + ( !\inter1|counter_kmod16\(3) $ (!\inter1|Add0~2_combout\) ) + ( \inter1|Add1~14\ ))
-- \inter1|Add1~18\ = CARRY(( GND ) + ( !\inter1|counter_kmod16\(3) $ (!\inter1|Add0~2_combout\) ) + ( \inter1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_counter_kmod16\(3),
	dataf => \inter1|ALT_INV_Add0~2_combout\,
	cin => \inter1|Add1~14\,
	sumout => \inter1|Add1~17_sumout\,
	cout => \inter1|Add1~18\);

-- Location: LABCELL_X80_Y76_N0
\inter1|Selector48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Selector48~0_combout\ = ( \inter1|state_reg.PingPong_state~q\ & ( !\inter1|Equal0~1_combout\ $ (!\inter1|PingPong_flag~q\) ) ) # ( !\inter1|state_reg.PingPong_state~q\ & ( ((\inter1|LessThan0~0_combout\ & \inter1|state_reg.input_buffer~q\)) # 
-- (\inter1|PingPong_flag~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_Equal0~1_combout\,
	datab => \inter1|ALT_INV_LessThan0~0_combout\,
	datac => \inter1|ALT_INV_state_reg.input_buffer~q\,
	datad => \inter1|ALT_INV_PingPong_flag~q\,
	dataf => \inter1|ALT_INV_state_reg.PingPong_state~q\,
	combout => \inter1|Selector48~0_combout\);

-- Location: FF_X80_Y76_N1
\inter1|PingPong_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \inter1|Selector48~0_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inter1|PingPong_flag~q\);

-- Location: LABCELL_X79_Y75_N57
\inter1|address_a[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|address_a[6]~0_combout\ = ( \inter1|PingPong_flag~q\ & ( !\inter1|Add1~17_sumout\ ) ) # ( !\inter1|PingPong_flag~q\ & ( \inter1|Add1~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inter1|ALT_INV_Add1~17_sumout\,
	dataf => \inter1|ALT_INV_PingPong_flag~q\,
	combout => \inter1|address_a[6]~0_combout\);

-- Location: LABCELL_X79_Y75_N15
\inter1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|Add1~21_sumout\ = SUM(( (\inter1|counter_kmod16\(3) & \inter1|Add0~2_combout\) ) + ( GND ) + ( \inter1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_counter_kmod16\(3),
	datac => \inter1|ALT_INV_Add0~2_combout\,
	cin => \inter1|Add1~18\,
	sumout => \inter1|Add1~21_sumout\);

-- Location: LABCELL_X79_Y75_N27
\inter1|address_a[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|address_a[7]~1_combout\ = ( \inter1|Add1~21_sumout\ & ( (!\inter1|PingPong_flag~q\) # (\inter1|Add1~17_sumout\) ) ) # ( !\inter1|Add1~21_sumout\ & ( (!\inter1|Add1~17_sumout\ & \inter1|PingPong_flag~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_Add1~17_sumout\,
	datad => \inter1|ALT_INV_PingPong_flag~q\,
	dataf => \inter1|ALT_INV_Add1~21_sumout\,
	combout => \inter1|address_a[7]~1_combout\);

-- Location: LABCELL_X79_Y75_N54
\inter1|address_a[8]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inter1|address_a[8]~2_combout\ = ( \inter1|Add1~21_sumout\ & ( \inter1|PingPong_flag~q\ ) ) # ( !\inter1|Add1~21_sumout\ & ( (\inter1|PingPong_flag~q\ & \inter1|Add1~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inter1|ALT_INV_PingPong_flag~q\,
	datab => \inter1|ALT_INV_Add1~17_sumout\,
	dataf => \inter1|ALT_INV_Add1~21_sumout\,
	combout => \inter1|address_a[8]~2_combout\);

-- Location: M10K_X76_Y75_N0
\inter1|ram2|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "INTER:inter1|INTER_RAM_2PORT:ram2|altsyncram:altsyncram_component|altsyncram_9014:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 384,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 9,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 20,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 384,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \fec1|input_state_reg.PingPong_state~q\,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	portadatain => \inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X74_Y79_N57
\modu1|MODU_input_data_buffer~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_input_data_buffer~0_combout\ = ( \modu1|MODU_input_data_buffer~q\ & ( \inter1|ram2|altsyncram_component|auto_generated|q_b\(0) ) ) # ( !\modu1|MODU_input_data_buffer~q\ & ( \inter1|ram2|altsyncram_component|auto_generated|q_b\(0) & ( 
-- \inter1|INTER_Output_valid~q\ ) ) ) # ( \modu1|MODU_input_data_buffer~q\ & ( !\inter1|ram2|altsyncram_component|auto_generated|q_b\(0) & ( !\inter1|INTER_Output_valid~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inter1|ALT_INV_INTER_Output_valid~q\,
	datae => \modu1|ALT_INV_MODU_input_data_buffer~q\,
	dataf => \inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	combout => \modu1|MODU_input_data_buffer~0_combout\);

-- Location: FF_X74_Y79_N58
\modu1|MODU_input_data_buffer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_input_data_buffer~0_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_input_data_buffer~q\);

-- Location: LABCELL_X74_Y79_N9
\modu1|MODU_output_Q[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_Q[1]~1_combout\ = ( !\modu1|MODU_input_data_buffer~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \modu1|ALT_INV_MODU_input_data_buffer~q\,
	combout => \modu1|MODU_output_Q[1]~1_combout\);

-- Location: FF_X74_Y79_N10
\modu1|MODU_output_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_Q[1]~1_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_Q\(1));

-- Location: LABCELL_X74_Y79_N15
\modu1|MODU_output_Q[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_Q[2]~2_combout\ = ( !\modu1|MODU_input_data_buffer~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \modu1|ALT_INV_MODU_input_data_buffer~q\,
	combout => \modu1|MODU_output_Q[2]~2_combout\);

-- Location: FF_X74_Y79_N16
\modu1|MODU_output_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_Q[2]~2_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_Q\(2));

-- Location: LABCELL_X74_Y79_N48
\modu1|MODU_output_Q[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_Q[3]~3_combout\ = ( !\modu1|MODU_input_data_buffer~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \modu1|ALT_INV_MODU_input_data_buffer~q\,
	combout => \modu1|MODU_output_Q[3]~3_combout\);

-- Location: FF_X74_Y79_N49
\modu1|MODU_output_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_Q[3]~3_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_Q\(3));

-- Location: LABCELL_X74_Y79_N24
\modu1|MODU_output_Q[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_Q[4]~4_combout\ = ( !\modu1|MODU_input_data_buffer~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \modu1|ALT_INV_MODU_input_data_buffer~q\,
	combout => \modu1|MODU_output_Q[4]~4_combout\);

-- Location: FF_X74_Y79_N25
\modu1|MODU_output_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_Q[4]~4_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_Q\(4));

-- Location: LABCELL_X74_Y79_N51
\modu1|MODU_output_Q[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_Q[5]~5_combout\ = ( !\modu1|MODU_input_data_buffer~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \modu1|ALT_INV_MODU_input_data_buffer~q\,
	combout => \modu1|MODU_output_Q[5]~5_combout\);

-- Location: FF_X74_Y79_N52
\modu1|MODU_output_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_Q[5]~5_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_Q\(5));

-- Location: LABCELL_X74_Y79_N27
\modu1|MODU_output_Q[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_Q[6]~6_combout\ = ( !\modu1|MODU_input_data_buffer~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \modu1|ALT_INV_MODU_input_data_buffer~q\,
	combout => \modu1|MODU_output_Q[6]~6_combout\);

-- Location: FF_X74_Y79_N28
\modu1|MODU_output_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_Q[6]~6_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_Q\(6));

-- Location: FF_X74_Y79_N4
\modu1|MODU_output_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \modu1|MODU_input_data_buffer~q\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_Q\(7));

-- Location: LABCELL_X74_Y79_N39
\modu1|MODU_output_Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_Q[8]~feeder_combout\ = ( \modu1|MODU_input_data_buffer~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \modu1|ALT_INV_MODU_input_data_buffer~q\,
	combout => \modu1|MODU_output_Q[8]~feeder_combout\);

-- Location: FF_X74_Y79_N40
\modu1|MODU_output_Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_Q[8]~feeder_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_Q\(8));

-- Location: LABCELL_X74_Y79_N42
\modu1|MODU_output_Q[9]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_Q[9]~7_combout\ = ( !\modu1|MODU_input_data_buffer~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \modu1|ALT_INV_MODU_input_data_buffer~q\,
	combout => \modu1|MODU_output_Q[9]~7_combout\);

-- Location: FF_X74_Y79_N43
\modu1|MODU_output_Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_Q[9]~7_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_Q\(9));

-- Location: FF_X74_Y79_N37
\modu1|MODU_output_Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \modu1|MODU_input_data_buffer~q\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_Q\(10));

-- Location: LABCELL_X74_Y79_N18
\modu1|MODU_output_Q[11]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_Q[11]~8_combout\ = ( !\modu1|MODU_input_data_buffer~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \modu1|ALT_INV_MODU_input_data_buffer~q\,
	combout => \modu1|MODU_output_Q[11]~8_combout\);

-- Location: FF_X74_Y79_N19
\modu1|MODU_output_Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_Q[11]~8_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_Q\(11));

-- Location: LABCELL_X74_Y79_N45
\modu1|MODU_output_Q[12]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_Q[12]~9_combout\ = ( !\modu1|MODU_input_data_buffer~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \modu1|ALT_INV_MODU_input_data_buffer~q\,
	combout => \modu1|MODU_output_Q[12]~9_combout\);

-- Location: FF_X74_Y79_N46
\modu1|MODU_output_Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_Q[12]~9_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_Q\(12));

-- Location: FF_X74_Y79_N41
\modu1|MODU_output_Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_Q[8]~feeder_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_Q\(13));

-- Location: LABCELL_X74_Y79_N6
\modu1|MODU_output_Q[14]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_Q[14]~10_combout\ = ( !\modu1|MODU_input_data_buffer~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \modu1|ALT_INV_MODU_input_data_buffer~q\,
	combout => \modu1|MODU_output_Q[14]~10_combout\);

-- Location: FF_X74_Y79_N8
\modu1|MODU_output_Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_Q[14]~10_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_Q\(14));

-- Location: FF_X74_Y79_N22
\modu1|MODU_output_Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \modu1|MODU_input_data_buffer~q\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_Q\(15));

-- Location: MLABCELL_X72_Y79_N33
\modu1|MODU_output_I[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_I[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \modu1|MODU_output_I[0]~feeder_combout\);

-- Location: FF_X72_Y79_N34
\modu1|MODU_output_I[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_I[0]~feeder_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_I\(0));

-- Location: MLABCELL_X72_Y79_N6
\modu1|MODU_output_I[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_I[1]~0_combout\ = ( !\inter1|ram2|altsyncram_component|auto_generated|q_b\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	combout => \modu1|MODU_output_I[1]~0_combout\);

-- Location: FF_X72_Y79_N7
\modu1|MODU_output_I[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_I[1]~0_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_I\(1));

-- Location: MLABCELL_X72_Y79_N9
\modu1|MODU_output_I[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_I[2]~1_combout\ = ( !\inter1|ram2|altsyncram_component|auto_generated|q_b\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	combout => \modu1|MODU_output_I[2]~1_combout\);

-- Location: FF_X72_Y79_N10
\modu1|MODU_output_I[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_I[2]~1_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_I\(2));

-- Location: MLABCELL_X72_Y79_N42
\modu1|MODU_output_I[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_I[3]~2_combout\ = ( !\inter1|ram2|altsyncram_component|auto_generated|q_b\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	combout => \modu1|MODU_output_I[3]~2_combout\);

-- Location: FF_X72_Y79_N44
\modu1|MODU_output_I[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_I[3]~2_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_I\(3));

-- Location: MLABCELL_X72_Y79_N45
\modu1|MODU_output_I[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_I[4]~3_combout\ = ( !\inter1|ram2|altsyncram_component|auto_generated|q_b\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	combout => \modu1|MODU_output_I[4]~3_combout\);

-- Location: FF_X72_Y79_N46
\modu1|MODU_output_I[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_I[4]~3_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_I\(4));

-- Location: MLABCELL_X72_Y79_N18
\modu1|MODU_output_I[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_I[5]~4_combout\ = ( !\inter1|ram2|altsyncram_component|auto_generated|q_b\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	combout => \modu1|MODU_output_I[5]~4_combout\);

-- Location: FF_X72_Y79_N19
\modu1|MODU_output_I[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_I[5]~4_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_I\(5));

-- Location: MLABCELL_X72_Y79_N54
\modu1|MODU_output_I[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_I[6]~5_combout\ = ( !\inter1|ram2|altsyncram_component|auto_generated|q_b\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	combout => \modu1|MODU_output_I[6]~5_combout\);

-- Location: FF_X72_Y79_N56
\modu1|MODU_output_I[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_I[6]~5_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_I\(6));

-- Location: MLABCELL_X72_Y79_N3
\modu1|MODU_output_I[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_I[7]~feeder_combout\ = ( \inter1|ram2|altsyncram_component|auto_generated|q_b\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	combout => \modu1|MODU_output_I[7]~feeder_combout\);

-- Location: FF_X72_Y79_N5
\modu1|MODU_output_I[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_I[7]~feeder_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_I\(7));

-- Location: MLABCELL_X72_Y79_N36
\modu1|MODU_output_I[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_I[8]~feeder_combout\ = ( \inter1|ram2|altsyncram_component|auto_generated|q_b\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	combout => \modu1|MODU_output_I[8]~feeder_combout\);

-- Location: FF_X72_Y79_N37
\modu1|MODU_output_I[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_I[8]~feeder_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_I\(8));

-- Location: MLABCELL_X72_Y79_N21
\modu1|MODU_output_I[9]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_I[9]~6_combout\ = ( !\inter1|ram2|altsyncram_component|auto_generated|q_b\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	combout => \modu1|MODU_output_I[9]~6_combout\);

-- Location: FF_X72_Y79_N23
\modu1|MODU_output_I[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_I[9]~6_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_I\(9));

-- Location: MLABCELL_X72_Y79_N12
\modu1|MODU_output_I[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_I[10]~feeder_combout\ = ( \inter1|ram2|altsyncram_component|auto_generated|q_b\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	combout => \modu1|MODU_output_I[10]~feeder_combout\);

-- Location: FF_X72_Y79_N13
\modu1|MODU_output_I[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_I[10]~feeder_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_I\(10));

-- Location: MLABCELL_X72_Y79_N48
\modu1|MODU_output_I[11]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_I[11]~7_combout\ = ( !\inter1|ram2|altsyncram_component|auto_generated|q_b\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	combout => \modu1|MODU_output_I[11]~7_combout\);

-- Location: FF_X72_Y79_N49
\modu1|MODU_output_I[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_I[11]~7_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_I\(11));

-- Location: LABCELL_X74_Y79_N12
\modu1|MODU_output_I[12]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_I[12]~8_combout\ = ( !\inter1|ram2|altsyncram_component|auto_generated|q_b\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	combout => \modu1|MODU_output_I[12]~8_combout\);

-- Location: FF_X74_Y79_N14
\modu1|MODU_output_I[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_I[12]~8_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_I\(12));

-- Location: MLABCELL_X72_Y79_N27
\modu1|MODU_output_I[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_I[13]~feeder_combout\ = ( \inter1|ram2|altsyncram_component|auto_generated|q_b\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	combout => \modu1|MODU_output_I[13]~feeder_combout\);

-- Location: FF_X72_Y79_N29
\modu1|MODU_output_I[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_I[13]~feeder_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_I\(13));

-- Location: MLABCELL_X72_Y79_N51
\modu1|MODU_output_I[14]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_I[14]~9_combout\ = ( !\inter1|ram2|altsyncram_component|auto_generated|q_b\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	combout => \modu1|MODU_output_I[14]~9_combout\);

-- Location: FF_X72_Y79_N53
\modu1|MODU_output_I[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_I[14]~9_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_I\(14));

-- Location: MLABCELL_X72_Y79_N0
\modu1|MODU_output_I[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \modu1|MODU_output_I[15]~feeder_combout\ = ( \inter1|ram2|altsyncram_component|auto_generated|q_b\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	combout => \modu1|MODU_output_I[15]~feeder_combout\);

-- Location: FF_X72_Y79_N1
\modu1|MODU_output_I[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \modu1|MODU_output_I[15]~feeder_combout\,
	clrn => \pll1|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \modu1|MODU_output_Q[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modu1|MODU_output_I\(15));


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
      number_of_fplls => 1);
-- pragma translate_on
END structure;


