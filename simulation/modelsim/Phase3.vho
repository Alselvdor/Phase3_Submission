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

-- DATE "12/21/2023 15:23:19"

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

ENTITY 	TopWiMax_wrapper IS
    PORT (
	CLK_50Mhzs : IN std_logic;
	reset : IN std_logic;
	load : IN std_logic;
	TopWiMax_wrapper_in_ready : IN std_logic;
	RANDI_output_valid : BUFFER std_logic;
	FEC_output_valid : BUFFER std_logic;
	INTER_output_valid : BUFFER std_logic;
	MODU_output_valid : BUFFER std_logic
	);
END TopWiMax_wrapper;

-- Design Ports Information
-- RANDI_output_valid	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FEC_output_valid	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INTER_output_valid	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MODU_output_valid	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TopWiMax_wrapper_in_ready	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_50Mhzs	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TopWiMax_wrapper IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_50Mhzs : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_TopWiMax_wrapper_in_ready : std_logic;
SIGNAL ww_RANDI_output_valid : std_logic;
SIGNAL ww_FEC_output_valid : std_logic;
SIGNAL ww_INTER_output_valid : std_logic;
SIGNAL ww_MODU_output_valid : std_logic;
SIGNAL \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK_50Mhzs~input_o\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN2\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \RANDI_Counter2[0]~7_combout\ : std_logic;
SIGNAL \reset~inputCLKENA0_outclk\ : std_logic;
SIGNAL \TopWiMax_wrapper_in_ready~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|seed_reg[12]~feeder_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~5_sumout\ : std_logic;
SIGNAL \TopWiMax_input_ready~feeder_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \RANDI_Counter~6_combout\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \RANDI_Counter[2]~5_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \RANDI_Counter~4_combout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \RANDI_Counter[3]~3_combout\ : std_logic;
SIGNAL \WiInput~0_combout\ : std_logic;
SIGNAL \TopWiMax_input_ready~0_combout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \RANDI_Counter[4]~2_combout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \RANDI_Counter[6]~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \TopWiMax_input_ready~2_combout\ : std_logic;
SIGNAL \RANDI_Counter[31]~1_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \TopWiMax_input_ready~1_combout\ : std_logic;
SIGNAL \TopWiMax_input_ready~q\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~6\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~13_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~14\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~53_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~54\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~49_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~50\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~45_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~46\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~41_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~42\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~37_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~38\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~33_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~34\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~77_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~78\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~73_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~74\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~69_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~70\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~9_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~10\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~65_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~66\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~61_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~62\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~57_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~58\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~89_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~90\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~85_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~86\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~125_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~126\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~97_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~98\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~117_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~118\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~113_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~114\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~81_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~82\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~109_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~110\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~105_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~106\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~101_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~102\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~17_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~18\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~21_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~22\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~25_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~26\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~29_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Equal0~1_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~30\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~121_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~122\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~1_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~2\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Add0~93_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|counter_reset_seed[31]~1_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Equal0~4_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Equal0~5_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Equal0~6_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Equal0~2_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Equal0~3_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Equal0~0_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|Equal0~7_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|seed_reg[10]~feeder_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|seed_reg[6]~feeder_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|seed_reg[5]~feeder_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|seed_reg[4]~feeder_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|seed_reg[2]~feeder_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|seed_reg[1]~feeder_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|seed_reg[14]~feeder_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|seed_reg[0]~2_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|seed_reg[0]~1_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|seed_reg~8_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|seed_reg~7_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|seed_reg~6_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|seed_reg~5_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|seed_reg~4_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|seed_reg~3_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|seed_reg~0_combout\ : std_logic;
SIGNAL \WiInput~2_combout\ : std_logic;
SIGNAL \WiInput~3_combout\ : std_logic;
SIGNAL \WiInput~4_combout\ : std_logic;
SIGNAL \WiInput~1_combout\ : std_logic;
SIGNAL \WiInput~q\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|randi_output_data~0_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \RANDI_Flag~0_combout\ : std_logic;
SIGNAL \RANDI_Flag~q\ : std_logic;
SIGNAL \RANDI_Counter2[0]~0_combout\ : std_logic;
SIGNAL \Add1~126\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \RANDI_Counter2[1]~6_combout\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \RANDI_Counter2[2]~4_combout\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \RANDI_Counter2[3]~5_combout\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \RANDI_Counter2[4]~3_combout\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \RANDI_Counter2[31]~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \RANDI_Counter2[6]~2_combout\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \RANDI_output_valid~0_combout\ : std_logic;
SIGNAL \RANDI_output_valid~reg0_q\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN5\ : std_logic;
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~109_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~121_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~38\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~41_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|counter_buffer_input[6]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|counter_buffer_input[1]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|Equal5~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|LessThan0~5_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|LessThan0~6_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector0~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~14\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~49_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|counter_buffer_input[29]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~50\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~9_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~10\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~1_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector0~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector0~2_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|counter_buffer_input[5]~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~42\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~45_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~46\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~5_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~6\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~17_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~18\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~21_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~22\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~13_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|LessThan0~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|LessThan0~2_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|process_0~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|LessThan0~3_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Equal5~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector73~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|PingPong_flag~q\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~2\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~125_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~126\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~5_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~6\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~65_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~66\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~69_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~70\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~73_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~74\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~77_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~78\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~81_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~82\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~85_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~86\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~89_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~90\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~93_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~94\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~97_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~98\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~101_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|counter_shift_and_output[16]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|Equal6~3_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|counter_shift_and_output[11]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~102\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~33_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~34\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~37_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~38\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~41_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~42\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~45_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~46\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~49_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~50\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~53_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~54\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~17_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~18\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~21_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~22\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~25_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~26\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~29_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~30\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~57_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~58\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~61_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Equal6~2_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Equal6~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Equal6~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Equal6~5_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~62\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~13_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|counter_shift_and_output[6]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|LessThan2~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|LessThan5~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|counter_shift_and_output[31]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~14\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~9_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector41~2_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector41~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Equal8~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Equal8~2_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|LessThan4~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector41~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector41~3_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector33~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Equal8~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|counter_shift_and_output[28]~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Equal6~4_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|LessThan5~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector34~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Equal8~3_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|counter_shift_and_output[0]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~122\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~105_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|counter_shift_and_output[1]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~106\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~109_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~110\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~113_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|counter_shift_and_output[3]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~114\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~117_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~118\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add3~1_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Equal6~6_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|process_0~2_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector32~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|input_state_reg.idle~q\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector33~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector33~2_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|input_state_reg.input_buffer~q\ : std_logic;
SIGNAL \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~110\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~105_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~106\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~101_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~102\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~121_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~122\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~125_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~126\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~113_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~114\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~117_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~118\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~53_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~54\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~57_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~58\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~61_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|counter_buffer_input[9]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~62\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~65_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~66\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~69_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|counter_buffer_input[11]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~70\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~73_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|counter_buffer_input[12]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~74\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~77_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~78\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~81_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~82\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~85_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~86\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~89_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~90\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~93_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~94\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~25_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~26\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~97_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~98\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~29_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~30\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~33_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~34\ : std_logic;
SIGNAL \twimax_wrap|fec1|Add1~37_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|LessThan0~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|LessThan0~4_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector73~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector34~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|input_state_reg.PingPong_state~q\ : std_logic;
SIGNAL \twimax_wrap|fec1|finished_tail_flag~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|finished_tail_flag~q\ : std_logic;
SIGNAL \twimax_wrap|fec1|Equal9~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|output_state_reg.idle~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|output_state_reg.idle~q\ : std_logic;
SIGNAL \twimax_wrap|fec1|shift_reg2~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|process_0~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|shift_reg2~5_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|shift_reg2~3_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|shift_reg2~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|address_a[5]~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|address_a[6]~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|address_a[7]~2_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|shift_reg2~2_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|shift_reg2~4_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|shift_reg2~6_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|shift_reg2~9_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|shift_reg2~11_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|shift_reg2~12_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|shift_reg2~10_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|shift_reg2~7_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|shift_reg2~8_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|FEC_output_data~8_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector74~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Equal9~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|LessThan5~2_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector74~3_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector75~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|output_state_reg.y~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|output_state_reg.y~q\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector74~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector74~2_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|output_state_reg.x~q\ : std_logic;
SIGNAL \twimax_wrap|fec1|output_state_reg.y~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|FEC_output_data~9_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|FEC_output_data~6_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|FEC_output_data~7_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector35~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector35~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector35~3_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector35~2_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector36~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector37~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|shift_reg[3]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|shift_reg[5]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|shift_reg~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector39~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector38~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector39~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|shift_reg[1]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|Selector40~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|FEC_output_data~3_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|FEC_output_data~5_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|FEC_output_data~4_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|FEC_output_data~12_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|FEC_output_data~10_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|FEC_output_data~11_combout\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \FEC_Counter[0]~3_combout\ : std_logic;
SIGNAL \FEC_Counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \FEC_Counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \FEC_Counter[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \FEC_Counter[7]~1_combout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \FEC_Counter[1]~4_combout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \FEC_Counter[2]~5_combout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \FEC_Counter[3]~6_combout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \FEC_Counter[4]~7_combout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \FEC_Counter[5]~8_combout\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \FEC_Counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \FEC_Counter[7]~2_combout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~121_sumout\ : std_logic;
SIGNAL \Add2~122\ : std_logic;
SIGNAL \Add2~117_sumout\ : std_logic;
SIGNAL \Add2~118\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \Add2~70\ : std_logic;
SIGNAL \Add2~125_sumout\ : std_logic;
SIGNAL \Add2~126\ : std_logic;
SIGNAL \Add2~109_sumout\ : std_logic;
SIGNAL \Add2~110\ : std_logic;
SIGNAL \Add2~93_sumout\ : std_logic;
SIGNAL \Add2~94\ : std_logic;
SIGNAL \Add2~73_sumout\ : std_logic;
SIGNAL \Add2~74\ : std_logic;
SIGNAL \Add2~77_sumout\ : std_logic;
SIGNAL \Add2~78\ : std_logic;
SIGNAL \Add2~81_sumout\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~85_sumout\ : std_logic;
SIGNAL \Add2~86\ : std_logic;
SIGNAL \Add2~89_sumout\ : std_logic;
SIGNAL \Add2~90\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \Add2~66\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~113_sumout\ : std_logic;
SIGNAL \Add2~114\ : std_logic;
SIGNAL \Add2~101_sumout\ : std_logic;
SIGNAL \Add2~102\ : std_logic;
SIGNAL \Add2~105_sumout\ : std_logic;
SIGNAL \Add2~106\ : std_logic;
SIGNAL \Add2~97_sumout\ : std_logic;
SIGNAL \Add2~98\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \FEC_Counter~0_combout\ : std_logic;
SIGNAL \FEC_Flag~0_combout\ : std_logic;
SIGNAL \FEC_Flag~1_combout\ : std_logic;
SIGNAL \FEC_Flag~q\ : std_logic;
SIGNAL \FEC_output_valid~0_combout\ : std_logic;
SIGNAL \FEC_output_valid~reg0_q\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add6~21_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~25_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|process_0~0_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|process_0~7_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Selector14~0_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|state_reg.input_buffer~q\ : std_logic;
SIGNAL \twimax_wrap|inter1|Selector15~0_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|state_reg.PingPong_state~q\ : std_logic;
SIGNAL \twimax_wrap|inter1|Selector13~0_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|state_reg.idle~q\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add6~10\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add6~25_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|counter_kmod16[3]~1_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|LessThan2~0_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|counter_kmod16[3]~3_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add6~26\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add6~13_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add6~14\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add6~17_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add6~18\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add6~5_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add6~6\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add6~1_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|counter_out[28]~1_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|process_0~6_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|counter_out[28]~0_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~26\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~29_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~30\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~33_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~34\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~13_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~14\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~17_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~18\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~21_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~22\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~9_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~10\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~5_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|counter_out[7]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~6\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~1_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|counter_out[8]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~2\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~97_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~98\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~101_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|counter_out[10]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~102\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~105_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~106\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~109_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|counter_out[12]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~110\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~77_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~78\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~113_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~114\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~117_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~118\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~121_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~122\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~93_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~94\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~125_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~126\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~57_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~58\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~65_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~66\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~69_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~70\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~73_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~74\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~37_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~38\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~41_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~42\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~45_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~46\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~49_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~50\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~53_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~54\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~85_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Selector16~0_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Selector16~1_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~86\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~61_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~62\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~89_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~90\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add7~81_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|counter_out[15]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|inter1|counter_out[16]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|inter1|process_0~4_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|process_0~2_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|process_0~1_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|counter_kmod16[3]~2_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Selector16~2_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|counter_out[9]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|inter1|process_0~3_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|process_0~5_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|counter_kmod16[3]~0_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add6~22\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add6~29_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add6~30\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add6~9_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|inter1|Equal0~0_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|LessThan0~0_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Selector0~0_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|INTER_Output_valid~q\ : std_logic;
SIGNAL \twimax_wrap|inter1|counter_kmod16[0]~_wirecell_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|counter_kmod16[0]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add1~1_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add0~3_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add1~2\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add1~5_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add0~4_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|counter_kmod16[2]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add0~0_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add1~6\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add1~9_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add5~0_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add0~1_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add1~10\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add1~13_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Selector48~0_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|PingPong_flag~q\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add0~2_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add1~14\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add1~17_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|address_a[6]~0_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add1~18\ : std_logic;
SIGNAL \twimax_wrap|inter1|Add1~21_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|address_a[7]~1_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|address_a[8]~2_combout\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \INTER_Counter[0]~4_combout\ : std_logic;
SIGNAL \INTER_Counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \INTER_Counter[1]~5_combout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \INTER_Counter[2]~6_combout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \INTER_Counter[3]~7_combout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \INTER_Counter[5]~9_combout\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add3~106\ : std_logic;
SIGNAL \Add3~109_sumout\ : std_logic;
SIGNAL \Add3~110\ : std_logic;
SIGNAL \Add3~113_sumout\ : std_logic;
SIGNAL \Add3~114\ : std_logic;
SIGNAL \Add3~69_sumout\ : std_logic;
SIGNAL \Add3~70\ : std_logic;
SIGNAL \Add3~73_sumout\ : std_logic;
SIGNAL \Add3~74\ : std_logic;
SIGNAL \Add3~77_sumout\ : std_logic;
SIGNAL \Add3~78\ : std_logic;
SIGNAL \Add3~81_sumout\ : std_logic;
SIGNAL \Add3~82\ : std_logic;
SIGNAL \Add3~117_sumout\ : std_logic;
SIGNAL \Equal3~7_combout\ : std_logic;
SIGNAL \Add3~118\ : std_logic;
SIGNAL \Add3~85_sumout\ : std_logic;
SIGNAL \Add3~86\ : std_logic;
SIGNAL \Add3~89_sumout\ : std_logic;
SIGNAL \INTER_Counter[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \INTER_Counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \Add3~90\ : std_logic;
SIGNAL \Add3~45_sumout\ : std_logic;
SIGNAL \Add3~46\ : std_logic;
SIGNAL \Add3~49_sumout\ : std_logic;
SIGNAL \Add3~50\ : std_logic;
SIGNAL \Add3~53_sumout\ : std_logic;
SIGNAL \Add3~54\ : std_logic;
SIGNAL \Add3~57_sumout\ : std_logic;
SIGNAL \Add3~58\ : std_logic;
SIGNAL \Add3~61_sumout\ : std_logic;
SIGNAL \Add3~62\ : std_logic;
SIGNAL \Add3~65_sumout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Add3~66\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~8_combout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \INTER_Counter[7]~3_combout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~121_sumout\ : std_logic;
SIGNAL \Add3~122\ : std_logic;
SIGNAL \Add3~125_sumout\ : std_logic;
SIGNAL \Add3~126\ : std_logic;
SIGNAL \Add3~93_sumout\ : std_logic;
SIGNAL \Add3~94\ : std_logic;
SIGNAL \Add3~97_sumout\ : std_logic;
SIGNAL \Add3~98\ : std_logic;
SIGNAL \Add3~101_sumout\ : std_logic;
SIGNAL \Add3~102\ : std_logic;
SIGNAL \Add3~105_sumout\ : std_logic;
SIGNAL \INTER_Counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \INTER_Counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \INTER_Counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Equal3~6_combout\ : std_logic;
SIGNAL \INTER_Counter[31]~0_combout\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \INTER_Counter[31]~1_combout\ : std_logic;
SIGNAL \INTER_Counter[7]~2_combout\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \INTER_Counter[4]~8_combout\ : std_logic;
SIGNAL \INTER_Counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \INTER_Flag~0_combout\ : std_logic;
SIGNAL \INTER_Flag~q\ : std_logic;
SIGNAL \INTER_output_valid~0_combout\ : std_logic;
SIGNAL \INTER_output_valid~reg0_q\ : std_logic;
SIGNAL \twimax_wrap|modu1|flag~0_combout\ : std_logic;
SIGNAL \twimax_wrap|modu1|flag~q\ : std_logic;
SIGNAL \twimax_wrap|modu1|MODU_output_Q[15]~0_combout\ : std_logic;
SIGNAL \twimax_wrap|modu1|Finished_Flag~0_combout\ : std_logic;
SIGNAL \twimax_wrap|modu1|Finished_Flag~q\ : std_logic;
SIGNAL \twimax_wrap|modu1|MODU_output_valid~0_combout\ : std_logic;
SIGNAL \twimax_wrap|modu1|MODU_output_valid~q\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \MODU_Counter[7]~9_combout\ : std_logic;
SIGNAL \MODU_Counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \MODU_Counter[1]~2_combout\ : std_logic;
SIGNAL \MODU_Counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \MODU_Counter[3]~1_combout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \MODU_Counter[4]~7_combout\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \MODU_Counter~8_combout\ : std_logic;
SIGNAL \Mux5~50_combout\ : std_logic;
SIGNAL \Mux5~15_combout\ : std_logic;
SIGNAL \Mux5~24_combout\ : std_logic;
SIGNAL \Mux5~39_combout\ : std_logic;
SIGNAL \Mux5~16_combout\ : std_logic;
SIGNAL \Mux5~40_combout\ : std_logic;
SIGNAL \Mux5~41_combout\ : std_logic;
SIGNAL \Mux5~19_combout\ : std_logic;
SIGNAL \Mux5~54_combout\ : std_logic;
SIGNAL \Mux5~18_combout\ : std_logic;
SIGNAL \Mux5~17_combout\ : std_logic;
SIGNAL \Mux5~53_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \MODU_Counter~10_combout\ : std_logic;
SIGNAL \Mux5~30_combout\ : std_logic;
SIGNAL \Mux5~32_combout\ : std_logic;
SIGNAL \Mux5~45_combout\ : std_logic;
SIGNAL \Mux5~44_combout\ : std_logic;
SIGNAL \Mux5~47_combout\ : std_logic;
SIGNAL \Mux5~46_combout\ : std_logic;
SIGNAL \Mux5~33_combout\ : std_logic;
SIGNAL \Mux5~31_combout\ : std_logic;
SIGNAL \Mux5~37_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mux5~13_combout\ : std_logic;
SIGNAL \Mux5~42_combout\ : std_logic;
SIGNAL \Mux5~48_combout\ : std_logic;
SIGNAL \Mux5~49_combout\ : std_logic;
SIGNAL \Mux5~43_combout\ : std_logic;
SIGNAL \Mux5~26_combout\ : std_logic;
SIGNAL \Mux5~25_combout\ : std_logic;
SIGNAL \Mux5~23_combout\ : std_logic;
SIGNAL \Mux5~52_combout\ : std_logic;
SIGNAL \MODU_Counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Mux5~51_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~14_combout\ : std_logic;
SIGNAL \MODU_Counter[10]~6_combout\ : std_logic;
SIGNAL \Add5~34\ : std_logic;
SIGNAL \Add5~38\ : std_logic;
SIGNAL \Add5~45_sumout\ : std_logic;
SIGNAL \MODU_Counter~13_combout\ : std_logic;
SIGNAL \MODU_Counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Add5~46\ : std_logic;
SIGNAL \Add5~61_sumout\ : std_logic;
SIGNAL \MODU_Counter~17_combout\ : std_logic;
SIGNAL \Add5~62\ : std_logic;
SIGNAL \Add5~57_sumout\ : std_logic;
SIGNAL \MODU_Counter~16_combout\ : std_logic;
SIGNAL \Add5~58\ : std_logic;
SIGNAL \Add5~85_sumout\ : std_logic;
SIGNAL \MODU_Counter~23_combout\ : std_logic;
SIGNAL \Add5~86\ : std_logic;
SIGNAL \Add5~81_sumout\ : std_logic;
SIGNAL \MODU_Counter~22_combout\ : std_logic;
SIGNAL \Add5~82\ : std_logic;
SIGNAL \Add5~77_sumout\ : std_logic;
SIGNAL \MODU_Counter~21_combout\ : std_logic;
SIGNAL \MODU_Counter[16]~DUPLICATE_q\ : std_logic;
SIGNAL \MODU_Counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Add5~78\ : std_logic;
SIGNAL \Add5~53_sumout\ : std_logic;
SIGNAL \MODU_Counter~15_combout\ : std_logic;
SIGNAL \Add5~54\ : std_logic;
SIGNAL \Add5~73_sumout\ : std_logic;
SIGNAL \MODU_Counter~20_combout\ : std_logic;
SIGNAL \Add5~74\ : std_logic;
SIGNAL \Add5~69_sumout\ : std_logic;
SIGNAL \MODU_Counter~19_combout\ : std_logic;
SIGNAL \MODU_Counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Add5~70\ : std_logic;
SIGNAL \Add5~41_sumout\ : std_logic;
SIGNAL \MODU_Counter~12_combout\ : std_logic;
SIGNAL \Add5~42\ : std_logic;
SIGNAL \Add5~93_sumout\ : std_logic;
SIGNAL \MODU_Counter~25_combout\ : std_logic;
SIGNAL \Add5~94\ : std_logic;
SIGNAL \Add5~65_sumout\ : std_logic;
SIGNAL \MODU_Counter~18_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \MODU_Counter[20]~DUPLICATE_q\ : std_logic;
SIGNAL \Add5~66\ : std_logic;
SIGNAL \Add5~117_sumout\ : std_logic;
SIGNAL \MODU_Counter~31_combout\ : std_logic;
SIGNAL \Add5~118\ : std_logic;
SIGNAL \Add5~113_sumout\ : std_logic;
SIGNAL \MODU_Counter~30_combout\ : std_logic;
SIGNAL \Add5~114\ : std_logic;
SIGNAL \Add5~109_sumout\ : std_logic;
SIGNAL \MODU_Counter~29_combout\ : std_logic;
SIGNAL \Add5~110\ : std_logic;
SIGNAL \Add5~105_sumout\ : std_logic;
SIGNAL \MODU_Counter~28_combout\ : std_logic;
SIGNAL \MODU_Counter[26]~DUPLICATE_q\ : std_logic;
SIGNAL \Add5~106\ : std_logic;
SIGNAL \Add5~101_sumout\ : std_logic;
SIGNAL \MODU_Counter~27_combout\ : std_logic;
SIGNAL \Add5~102\ : std_logic;
SIGNAL \Add5~49_sumout\ : std_logic;
SIGNAL \MODU_Counter~14_combout\ : std_logic;
SIGNAL \Add5~50\ : std_logic;
SIGNAL \Add5~97_sumout\ : std_logic;
SIGNAL \MODU_Counter~26_combout\ : std_logic;
SIGNAL \Add5~98\ : std_logic;
SIGNAL \Add5~89_sumout\ : std_logic;
SIGNAL \MODU_Counter~24_combout\ : std_logic;
SIGNAL \MODU_Counter[30]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \MODU_Counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \MODU_Counter[28]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \Equal4~4_combout\ : std_logic;
SIGNAL \Equal4~5_combout\ : std_logic;
SIGNAL \MODU_Counter[31]~DUPLICATE_q\ : std_logic;
SIGNAL \Add5~90\ : std_logic;
SIGNAL \Add5~121_sumout\ : std_logic;
SIGNAL \MODU_Counter[31]~32_combout\ : std_logic;
SIGNAL \MODU_Counter[10]~0_combout\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \MODU_Counter[5]~4_combout\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \MODU_Counter~5_combout\ : std_logic;
SIGNAL \Mux5~12_combout\ : std_logic;
SIGNAL \MODU_Flag~0_combout\ : std_logic;
SIGNAL \MODU_Flag~1_combout\ : std_logic;
SIGNAL \MODU_Flag~q\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \Mux4~10_combout\ : std_logic;
SIGNAL \Mux4~12_combout\ : std_logic;
SIGNAL \Mux4~13_combout\ : std_logic;
SIGNAL \Mux4~14_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~11_combout\ : std_logic;
SIGNAL \twimax_wrap|modu1|MODU_input_data_buffer~0_combout\ : std_logic;
SIGNAL \twimax_wrap|modu1|MODU_input_data_buffer~q\ : std_logic;
SIGNAL \process_4~1_combout\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \MODU_Counter[2]~3_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux5~38_combout\ : std_logic;
SIGNAL \Equal4~6_combout\ : std_logic;
SIGNAL \Add5~37_sumout\ : std_logic;
SIGNAL \MODU_Counter~11_combout\ : std_logic;
SIGNAL \MODU_Counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~18_combout\ : std_logic;
SIGNAL \Mux4~17_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~16_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~15_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \process_4~0_combout\ : std_logic;
SIGNAL \MODU_output_valid~0_combout\ : std_logic;
SIGNAL \MODU_output_valid~reg0_q\ : std_logic;
SIGNAL RANDI_Counter2 : std_logic_vector(31 DOWNTO 0);
SIGNAL \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|q_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \twimax_wrap|RANDI1|seed_reg\ : std_logic_vector(14 DOWNTO 0);
SIGNAL MODU_Counter : std_logic_vector(31 DOWNTO 0);
SIGNAL FEC_Counter : std_logic_vector(31 DOWNTO 0);
SIGNAL RANDI_Counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|fboutclk_wire\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|q_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|q_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \twimax_wrap|RANDI1|counter_reset_seed\ : std_logic_vector(31 DOWNTO 0);
SIGNAL INTER_Counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \twimax_wrap|fec1|counter_buffer_input\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \twimax_wrap|fec1|counter_shift_and_output\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \twimax_wrap|inter1|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \twimax_wrap|inter1|counter_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \twimax_wrap|inter1|counter_kmod16\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \twimax_wrap|fec1|shift_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \twimax_wrap|fec1|shift_reg2\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \twimax_wrap|modu1|MODU_output_I\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \twimax_wrap|modu1|MODU_output_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[31]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_MODU_Counter[31]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_MODU_Counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_MODU_Counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_MODU_Counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_INTER_Counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_INTER_Counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_INTER_Counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_shift_reg[1]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_output_state_reg.y~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_shift_reg[3]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_shift_reg[5]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_counter_kmod16[2]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_counter_kmod16[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_INTER_Counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_INTER_Counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_INTER_Counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_INTER_Counter[16]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_counter_out[16]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_counter_out[15]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_counter_out[12]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_counter_out[10]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_counter_out[9]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_counter_out[7]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_counter_out[8]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_FEC_Counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_FEC_Counter[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_FEC_Counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[6]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[0]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[3]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[1]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[16]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[11]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_counter_buffer_input[6]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_counter_buffer_input[1]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_counter_buffer_input[12]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_counter_buffer_input[11]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_counter_buffer_input[9]~DUPLICATE_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_counter_buffer_input[29]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_MODU_Counter[26]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_MODU_Counter[30]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_MODU_Counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_MODU_Counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_MODU_Counter[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_MODU_Counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_MODU_Counter[28]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_MODU_Counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_MODU_Counter[20]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_MODU_Counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_FEC_Counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_reset~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_TopWiMax_wrapper_in_ready~input_o\ : std_logic;
SIGNAL \ALT_INV_load~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux4~18_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~16_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~15_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~12_combout\ : std_logic;
SIGNAL \ALT_INV_WiInput~4_combout\ : std_logic;
SIGNAL \ALT_INV_WiInput~3_combout\ : std_logic;
SIGNAL \ALT_INV_WiInput~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~54_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~53_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~52_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~51_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~50_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~49_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~48_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~47_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|ALT_INV_seed_reg\ : std_logic_vector(14 DOWNTO 2);
SIGNAL \twimax_wrap|fec1|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~46_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~45_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~44_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~43_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~42_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~41_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~40_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~39_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_Add0~2_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_Selector16~1_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_counter_kmod16[3]~2_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_process_0~7_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_counter_kmod16[3]~1_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_state_reg.idle~q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_shift_reg2~11_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Selector41~2_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Selector41~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Selector41~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[28]~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Equal8~3_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Equal8~2_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Selector33~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_input_state_reg.idle~q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_counter_buffer_input[5]~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Selector33~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Equal6~6_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \twimax_wrap|modu1|ALT_INV_MODU_input_data_buffer~q\ : std_logic;
SIGNAL \twimax_wrap|modu1|ALT_INV_Finished_Flag~q\ : std_logic;
SIGNAL \ALT_INV_Equal4~6_combout\ : std_logic;
SIGNAL \ALT_INV_process_4~1_combout\ : std_logic;
SIGNAL \ALT_INV_MODU_Counter[10]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~38_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~37_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~32_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~31_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~30_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~25_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~24_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~23_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~18_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~16_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~15_combout\ : std_logic;
SIGNAL \twimax_wrap|modu1|ALT_INV_flag~q\ : std_logic;
SIGNAL \ALT_INV_Equal3~8_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~7_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_PingPong_flag~q\ : std_logic;
SIGNAL \ALT_INV_INTER_Counter[31]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_counter_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \twimax_wrap|inter1|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_state_reg.PingPong_state~q\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_state_reg.input_buffer~q\ : std_logic;
SIGNAL \ALT_INV_FEC_Flag~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_FEC_output_data~11_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_FEC_output_data~10_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_shift_reg2~9_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_shift_reg2\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \twimax_wrap|fec1|ALT_INV_shift_reg2~7_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_shift_reg2~5_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_shift_reg2~3_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_shift_reg2~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_shift_reg2~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Selector39~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_shift_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \twimax_wrap|fec1|ALT_INV_Equal9~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Selector74~3_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Selector74~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Selector74~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_LessThan5~2_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Equal8~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_shift_reg~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Selector35~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Selector35~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Equal6~5_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Selector34~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Equal6~4_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Equal6~3_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Equal6~2_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \twimax_wrap|fec1|ALT_INV_Selector73~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_input_state_reg.input_buffer~q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_counter_buffer_input\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \twimax_wrap|RANDI1|ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \twimax_wrap|RANDI1|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~7_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \ALT_INV_TopWiMax_input_ready~2_combout\ : std_logic;
SIGNAL \ALT_INV_TopWiMax_input_ready~0_combout\ : std_logic;
SIGNAL ALT_INV_RANDI_Counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_WiInput~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \ALT_INV_process_4~0_combout\ : std_logic;
SIGNAL \ALT_INV_MODU_Flag~q\ : std_logic;
SIGNAL \ALT_INV_Mux4~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \twimax_wrap|modu1|ALT_INV_MODU_output_Q\ : std_logic_vector(15 DOWNTO 15);
SIGNAL \ALT_INV_MODU_Flag~0_combout\ : std_logic;
SIGNAL \twimax_wrap|modu1|ALT_INV_MODU_output_valid~q\ : std_logic;
SIGNAL ALT_INV_MODU_Counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Equal4~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \twimax_wrap|modu1|ALT_INV_MODU_output_I\ : std_logic_vector(15 DOWNTO 15);
SIGNAL \ALT_INV_INTER_Flag~q\ : std_logic;
SIGNAL \ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL ALT_INV_INTER_Counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \twimax_wrap|inter1|ALT_INV_INTER_Output_valid~q\ : std_logic;
SIGNAL \ALT_INV_FEC_Flag~q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_FEC_output_data~9_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_FEC_output_data~8_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_FEC_output_data~7_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_FEC_output_data~6_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_FEC_output_data~5_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_output_state_reg.y~q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_FEC_output_data~4_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_output_state_reg.idle~q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_finished_tail_flag~q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_output_state_reg.x~q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_PingPong_flag~q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_FEC_output_data~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL ALT_INV_FEC_Counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\ : std_logic;
SIGNAL \ALT_INV_RANDI_Flag~q\ : std_logic;
SIGNAL \ALT_INV_process_1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL ALT_INV_RANDI_Counter2 : std_logic_vector(31 DOWNTO 0);
SIGNAL \twimax_wrap|RANDI1|ALT_INV_randi_output_data~0_combout\ : std_logic;
SIGNAL \ALT_INV_WiInput~q\ : std_logic;
SIGNAL \ALT_INV_TopWiMax_input_ready~q\ : std_logic;
SIGNAL \ALT_INV_process_1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_MODU_output_valid~reg0_q\ : std_logic;
SIGNAL \ALT_INV_INTER_output_valid~reg0_q\ : std_logic;
SIGNAL \ALT_INV_FEC_output_valid~reg0_q\ : std_logic;
SIGNAL \ALT_INV_RANDI_output_valid~reg0_q\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_FEC_output_data~12_combout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Selector75~0_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_counter_kmod16\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \twimax_wrap|inter1|ALT_INV_Add7~81_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \twimax_wrap|fec1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \twimax_wrap|RANDI1|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Mux5~33_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~26_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~19_combout\ : std_logic;
SIGNAL \ALT_INV_Add3~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ALT_INV_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Mux5~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ALT_INV_q_b\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_CLK_50Mhzs <= CLK_50Mhzs;
ww_reset <= reset;
ww_load <= load;
ww_TopWiMax_wrapper_in_ready <= TopWiMax_wrapper_in_ready;
RANDI_output_valid <= ww_RANDI_output_valid;
FEC_output_valid <= ww_FEC_output_valid;
INTER_output_valid <= ww_INTER_output_valid;
MODU_output_valid <= ww_MODU_output_valid;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \twimax_wrap|RANDI1|randi_output_data~0_combout\
);

\twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\);

\twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\twimax_wrap|fec1|address_a[7]~2_combout\ & \twimax_wrap|fec1|address_a[6]~1_combout\ & \twimax_wrap|fec1|address_a[5]~0_combout\ & 
\twimax_wrap|fec1|counter_buffer_input\(4) & \twimax_wrap|fec1|counter_buffer_input\(3) & \twimax_wrap|fec1|counter_buffer_input\(2) & \twimax_wrap|fec1|counter_buffer_input\(1) & \twimax_wrap|fec1|counter_buffer_input\(0));

\twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\twimax_wrap|fec1|counter_shift_and_output\(7) & \twimax_wrap|fec1|counter_shift_and_output[6]~DUPLICATE_q\ & \twimax_wrap|fec1|counter_shift_and_output\(5) & 
\twimax_wrap|fec1|counter_shift_and_output\(4) & \twimax_wrap|fec1|counter_shift_and_output\(3) & \twimax_wrap|fec1|counter_shift_and_output\(2) & \twimax_wrap|fec1|counter_shift_and_output\(1) & \twimax_wrap|fec1|counter_shift_and_output\(0));

\twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|q_a\(0) <= \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|q_b\(0) <= \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \twimax_wrap|fec1|FEC_output_data~12_combout\
);

\twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\);

\twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\twimax_wrap|inter1|address_a[8]~2_combout\ & \twimax_wrap|inter1|address_a[7]~1_combout\ & \twimax_wrap|inter1|address_a[6]~0_combout\ & 
\twimax_wrap|inter1|Add1~13_sumout\ & \twimax_wrap|inter1|Add1~9_sumout\ & \twimax_wrap|inter1|Add1~5_sumout\ & \twimax_wrap|inter1|Add1~1_sumout\ & \twimax_wrap|inter1|counter\(5) & \twimax_wrap|inter1|counter\(4));

\twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\twimax_wrap|inter1|counter_out\(8) & \twimax_wrap|inter1|counter_out\(7) & \twimax_wrap|inter1|counter_out\(6) & \twimax_wrap|inter1|counter_out\(5) & 
\twimax_wrap|inter1|counter_out\(4) & \twimax_wrap|inter1|counter_out\(3) & \twimax_wrap|inter1|counter_out\(2) & \twimax_wrap|inter1|counter_out\(1) & \twimax_wrap|inter1|counter_out\(0));

\twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|q_a\(0) <= \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|q_b\(0) <= \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ <= \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(0);
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ <= \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(1);
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ <= \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(2);
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ <= \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(3);
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ <= \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(4);
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ <= \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(5);
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ <= \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(6);
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ <= \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(7);

\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ <= \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(0);
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ <= \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(1);
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ <= \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(2);
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ <= \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(3);
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ <= \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(4);
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ <= \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(5);
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ <= \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(6);
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ <= \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(7);

\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & gnd & gnd & \CLK_50Mhzs~input_o\);

\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ <= (\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ & \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ & 
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ & \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ & \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ & 
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ & \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ & \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\);

\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN2\ <= \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(2);
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN5\ <= \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(5);

\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & 
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);

\pll1_wrap|pll_main_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & 
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output[31]~DUPLICATE_q\ <= NOT \twimax_wrap|fec1|counter_shift_and_output[31]~DUPLICATE_q\;
\ALT_INV_MODU_Counter[31]~DUPLICATE_q\ <= NOT \MODU_Counter[31]~DUPLICATE_q\;
\ALT_INV_MODU_Counter[7]~DUPLICATE_q\ <= NOT \MODU_Counter[7]~DUPLICATE_q\;
\ALT_INV_MODU_Counter[4]~DUPLICATE_q\ <= NOT \MODU_Counter[4]~DUPLICATE_q\;
\ALT_INV_MODU_Counter[1]~DUPLICATE_q\ <= NOT \MODU_Counter[1]~DUPLICATE_q\;
\ALT_INV_INTER_Counter[4]~DUPLICATE_q\ <= NOT \INTER_Counter[4]~DUPLICATE_q\;
\ALT_INV_INTER_Counter[3]~DUPLICATE_q\ <= NOT \INTER_Counter[3]~DUPLICATE_q\;
\ALT_INV_INTER_Counter[0]~DUPLICATE_q\ <= NOT \INTER_Counter[0]~DUPLICATE_q\;
\twimax_wrap|fec1|ALT_INV_shift_reg[1]~DUPLICATE_q\ <= NOT \twimax_wrap|fec1|shift_reg[1]~DUPLICATE_q\;
\twimax_wrap|fec1|ALT_INV_output_state_reg.y~DUPLICATE_q\ <= NOT \twimax_wrap|fec1|output_state_reg.y~DUPLICATE_q\;
\twimax_wrap|fec1|ALT_INV_shift_reg[3]~DUPLICATE_q\ <= NOT \twimax_wrap|fec1|shift_reg[3]~DUPLICATE_q\;
\twimax_wrap|fec1|ALT_INV_shift_reg[5]~DUPLICATE_q\ <= NOT \twimax_wrap|fec1|shift_reg[5]~DUPLICATE_q\;
\twimax_wrap|inter1|ALT_INV_counter_kmod16[2]~DUPLICATE_q\ <= NOT \twimax_wrap|inter1|counter_kmod16[2]~DUPLICATE_q\;
\twimax_wrap|inter1|ALT_INV_counter_kmod16[0]~DUPLICATE_q\ <= NOT \twimax_wrap|inter1|counter_kmod16[0]~DUPLICATE_q\;
\ALT_INV_INTER_Counter[15]~DUPLICATE_q\ <= NOT \INTER_Counter[15]~DUPLICATE_q\;
\ALT_INV_INTER_Counter[12]~DUPLICATE_q\ <= NOT \INTER_Counter[12]~DUPLICATE_q\;
\ALT_INV_INTER_Counter[11]~DUPLICATE_q\ <= NOT \INTER_Counter[11]~DUPLICATE_q\;
\ALT_INV_INTER_Counter[16]~DUPLICATE_q\ <= NOT \INTER_Counter[16]~DUPLICATE_q\;
\twimax_wrap|inter1|ALT_INV_counter_out[16]~DUPLICATE_q\ <= NOT \twimax_wrap|inter1|counter_out[16]~DUPLICATE_q\;
\twimax_wrap|inter1|ALT_INV_counter_out[15]~DUPLICATE_q\ <= NOT \twimax_wrap|inter1|counter_out[15]~DUPLICATE_q\;
\twimax_wrap|inter1|ALT_INV_counter_out[12]~DUPLICATE_q\ <= NOT \twimax_wrap|inter1|counter_out[12]~DUPLICATE_q\;
\twimax_wrap|inter1|ALT_INV_counter_out[10]~DUPLICATE_q\ <= NOT \twimax_wrap|inter1|counter_out[10]~DUPLICATE_q\;
\twimax_wrap|inter1|ALT_INV_counter_out[9]~DUPLICATE_q\ <= NOT \twimax_wrap|inter1|counter_out[9]~DUPLICATE_q\;
\twimax_wrap|inter1|ALT_INV_counter_out[7]~DUPLICATE_q\ <= NOT \twimax_wrap|inter1|counter_out[7]~DUPLICATE_q\;
\twimax_wrap|inter1|ALT_INV_counter_out[8]~DUPLICATE_q\ <= NOT \twimax_wrap|inter1|counter_out[8]~DUPLICATE_q\;
\twimax_wrap|inter1|ALT_INV_counter[5]~DUPLICATE_q\ <= NOT \twimax_wrap|inter1|counter[5]~DUPLICATE_q\;
\ALT_INV_FEC_Counter[11]~DUPLICATE_q\ <= NOT \FEC_Counter[11]~DUPLICATE_q\;
\ALT_INV_FEC_Counter[16]~DUPLICATE_q\ <= NOT \FEC_Counter[16]~DUPLICATE_q\;
\ALT_INV_FEC_Counter[15]~DUPLICATE_q\ <= NOT \FEC_Counter[15]~DUPLICATE_q\;
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output[6]~DUPLICATE_q\ <= NOT \twimax_wrap|fec1|counter_shift_and_output[6]~DUPLICATE_q\;
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output[0]~DUPLICATE_q\ <= NOT \twimax_wrap|fec1|counter_shift_and_output[0]~DUPLICATE_q\;
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output[3]~DUPLICATE_q\ <= NOT \twimax_wrap|fec1|counter_shift_and_output[3]~DUPLICATE_q\;
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output[1]~DUPLICATE_q\ <= NOT \twimax_wrap|fec1|counter_shift_and_output[1]~DUPLICATE_q\;
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output[16]~DUPLICATE_q\ <= NOT \twimax_wrap|fec1|counter_shift_and_output[16]~DUPLICATE_q\;
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output[11]~DUPLICATE_q\ <= NOT \twimax_wrap|fec1|counter_shift_and_output[11]~DUPLICATE_q\;
\twimax_wrap|fec1|ALT_INV_counter_buffer_input[6]~DUPLICATE_q\ <= NOT \twimax_wrap|fec1|counter_buffer_input[6]~DUPLICATE_q\;
\twimax_wrap|fec1|ALT_INV_counter_buffer_input[1]~DUPLICATE_q\ <= NOT \twimax_wrap|fec1|counter_buffer_input[1]~DUPLICATE_q\;
\twimax_wrap|fec1|ALT_INV_counter_buffer_input[12]~DUPLICATE_q\ <= NOT \twimax_wrap|fec1|counter_buffer_input[12]~DUPLICATE_q\;
\twimax_wrap|fec1|ALT_INV_counter_buffer_input[11]~DUPLICATE_q\ <= NOT \twimax_wrap|fec1|counter_buffer_input[11]~DUPLICATE_q\;
\twimax_wrap|fec1|ALT_INV_counter_buffer_input[9]~DUPLICATE_q\ <= NOT \twimax_wrap|fec1|counter_buffer_input[9]~DUPLICATE_q\;
\twimax_wrap|fec1|ALT_INV_counter_buffer_input[29]~DUPLICATE_q\ <= NOT \twimax_wrap|fec1|counter_buffer_input[29]~DUPLICATE_q\;
\ALT_INV_MODU_Counter[26]~DUPLICATE_q\ <= NOT \MODU_Counter[26]~DUPLICATE_q\;
\ALT_INV_MODU_Counter[30]~DUPLICATE_q\ <= NOT \MODU_Counter[30]~DUPLICATE_q\;
\ALT_INV_MODU_Counter[14]~DUPLICATE_q\ <= NOT \MODU_Counter[14]~DUPLICATE_q\;
\ALT_INV_MODU_Counter[15]~DUPLICATE_q\ <= NOT \MODU_Counter[15]~DUPLICATE_q\;
\ALT_INV_MODU_Counter[16]~DUPLICATE_q\ <= NOT \MODU_Counter[16]~DUPLICATE_q\;
\ALT_INV_MODU_Counter[17]~DUPLICATE_q\ <= NOT \MODU_Counter[17]~DUPLICATE_q\;
\ALT_INV_MODU_Counter[28]~DUPLICATE_q\ <= NOT \MODU_Counter[28]~DUPLICATE_q\;
\ALT_INV_MODU_Counter[11]~DUPLICATE_q\ <= NOT \MODU_Counter[11]~DUPLICATE_q\;
\ALT_INV_MODU_Counter[20]~DUPLICATE_q\ <= NOT \MODU_Counter[20]~DUPLICATE_q\;
\ALT_INV_MODU_Counter[10]~DUPLICATE_q\ <= NOT \MODU_Counter[10]~DUPLICATE_q\;
\ALT_INV_FEC_Counter[6]~DUPLICATE_q\ <= NOT \FEC_Counter[6]~DUPLICATE_q\;
\ALT_INV_reset~inputCLKENA0_outclk\ <= NOT \reset~inputCLKENA0_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_TopWiMax_wrapper_in_ready~input_o\ <= NOT \TopWiMax_wrapper_in_ready~input_o\;
\ALT_INV_load~input_o\ <= NOT \load~input_o\;
\ALT_INV_Mux4~18_combout\ <= NOT \Mux4~18_combout\;
\ALT_INV_Mux4~17_combout\ <= NOT \Mux4~17_combout\;
\ALT_INV_Mux4~16_combout\ <= NOT \Mux4~16_combout\;
\ALT_INV_Mux4~15_combout\ <= NOT \Mux4~15_combout\;
\ALT_INV_Mux4~14_combout\ <= NOT \Mux4~14_combout\;
\ALT_INV_Mux4~13_combout\ <= NOT \Mux4~13_combout\;
\ALT_INV_Mux4~12_combout\ <= NOT \Mux4~12_combout\;
\ALT_INV_WiInput~4_combout\ <= NOT \WiInput~4_combout\;
\ALT_INV_WiInput~3_combout\ <= NOT \WiInput~3_combout\;
\ALT_INV_WiInput~2_combout\ <= NOT \WiInput~2_combout\;
\ALT_INV_Mux5~54_combout\ <= NOT \Mux5~54_combout\;
\ALT_INV_Mux5~53_combout\ <= NOT \Mux5~53_combout\;
\ALT_INV_Mux5~52_combout\ <= NOT \Mux5~52_combout\;
\ALT_INV_Mux5~51_combout\ <= NOT \Mux5~51_combout\;
\ALT_INV_Mux5~50_combout\ <= NOT \Mux5~50_combout\;
\ALT_INV_Mux5~49_combout\ <= NOT \Mux5~49_combout\;
\ALT_INV_Mux5~48_combout\ <= NOT \Mux5~48_combout\;
\ALT_INV_Mux5~47_combout\ <= NOT \Mux5~47_combout\;
\twimax_wrap|RANDI1|ALT_INV_seed_reg\(7) <= NOT \twimax_wrap|RANDI1|seed_reg\(7);
\twimax_wrap|RANDI1|ALT_INV_seed_reg\(8) <= NOT \twimax_wrap|RANDI1|seed_reg\(8);
\twimax_wrap|fec1|ALT_INV_process_0~2_combout\ <= NOT \twimax_wrap|fec1|process_0~2_combout\;
\ALT_INV_Mux5~46_combout\ <= NOT \Mux5~46_combout\;
\ALT_INV_Mux5~45_combout\ <= NOT \Mux5~45_combout\;
\ALT_INV_Mux5~44_combout\ <= NOT \Mux5~44_combout\;
\ALT_INV_Mux5~43_combout\ <= NOT \Mux5~43_combout\;
\ALT_INV_Mux5~42_combout\ <= NOT \Mux5~42_combout\;
\ALT_INV_Mux5~41_combout\ <= NOT \Mux5~41_combout\;
\ALT_INV_Mux5~40_combout\ <= NOT \Mux5~40_combout\;
\ALT_INV_Mux5~39_combout\ <= NOT \Mux5~39_combout\;
\twimax_wrap|inter1|ALT_INV_Add0~2_combout\ <= NOT \twimax_wrap|inter1|Add0~2_combout\;
\twimax_wrap|inter1|ALT_INV_Add0~1_combout\ <= NOT \twimax_wrap|inter1|Add0~1_combout\;
\twimax_wrap|inter1|ALT_INV_Add0~0_combout\ <= NOT \twimax_wrap|inter1|Add0~0_combout\;
\twimax_wrap|inter1|ALT_INV_Selector16~1_combout\ <= NOT \twimax_wrap|inter1|Selector16~1_combout\;
\twimax_wrap|inter1|ALT_INV_Selector16~0_combout\ <= NOT \twimax_wrap|inter1|Selector16~0_combout\;
\twimax_wrap|inter1|ALT_INV_counter_kmod16[3]~2_combout\ <= NOT \twimax_wrap|inter1|counter_kmod16[3]~2_combout\;
\twimax_wrap|inter1|ALT_INV_process_0~7_combout\ <= NOT \twimax_wrap|inter1|process_0~7_combout\;
\twimax_wrap|inter1|ALT_INV_process_0~6_combout\ <= NOT \twimax_wrap|inter1|process_0~6_combout\;
\twimax_wrap|inter1|ALT_INV_counter_kmod16[3]~1_combout\ <= NOT \twimax_wrap|inter1|counter_kmod16[3]~1_combout\;
\twimax_wrap|inter1|ALT_INV_state_reg.idle~q\ <= NOT \twimax_wrap|inter1|state_reg.idle~q\;
\twimax_wrap|fec1|ALT_INV_shift_reg2~11_combout\ <= NOT \twimax_wrap|fec1|shift_reg2~11_combout\;
\twimax_wrap|fec1|ALT_INV_Selector41~2_combout\ <= NOT \twimax_wrap|fec1|Selector41~2_combout\;
\twimax_wrap|fec1|ALT_INV_Selector41~1_combout\ <= NOT \twimax_wrap|fec1|Selector41~1_combout\;
\twimax_wrap|fec1|ALT_INV_Selector41~0_combout\ <= NOT \twimax_wrap|fec1|Selector41~0_combout\;
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output[28]~1_combout\ <= NOT \twimax_wrap|fec1|counter_shift_and_output[28]~1_combout\;
\twimax_wrap|fec1|ALT_INV_Equal8~3_combout\ <= NOT \twimax_wrap|fec1|Equal8~3_combout\;
\twimax_wrap|fec1|ALT_INV_LessThan4~0_combout\ <= NOT \twimax_wrap|fec1|LessThan4~0_combout\;
\twimax_wrap|fec1|ALT_INV_Equal8~2_combout\ <= NOT \twimax_wrap|fec1|Equal8~2_combout\;
\twimax_wrap|fec1|ALT_INV_Selector33~1_combout\ <= NOT \twimax_wrap|fec1|Selector33~1_combout\;
\twimax_wrap|fec1|ALT_INV_input_state_reg.idle~q\ <= NOT \twimax_wrap|fec1|input_state_reg.idle~q\;
\twimax_wrap|fec1|ALT_INV_counter_buffer_input[5]~1_combout\ <= NOT \twimax_wrap|fec1|counter_buffer_input[5]~1_combout\;
\twimax_wrap|fec1|ALT_INV_Selector0~1_combout\ <= NOT \twimax_wrap|fec1|Selector0~1_combout\;
\twimax_wrap|fec1|ALT_INV_Selector0~0_combout\ <= NOT \twimax_wrap|fec1|Selector0~0_combout\;
\twimax_wrap|fec1|ALT_INV_Selector33~0_combout\ <= NOT \twimax_wrap|fec1|Selector33~0_combout\;
\twimax_wrap|fec1|ALT_INV_Equal6~6_combout\ <= NOT \twimax_wrap|fec1|Equal6~6_combout\;
\twimax_wrap|fec1|ALT_INV_LessThan0~6_combout\ <= NOT \twimax_wrap|fec1|LessThan0~6_combout\;
\twimax_wrap|modu1|ALT_INV_MODU_input_data_buffer~q\ <= NOT \twimax_wrap|modu1|MODU_input_data_buffer~q\;
\twimax_wrap|modu1|ALT_INV_Finished_Flag~q\ <= NOT \twimax_wrap|modu1|Finished_Flag~q\;
\ALT_INV_Equal4~6_combout\ <= NOT \Equal4~6_combout\;
\ALT_INV_process_4~1_combout\ <= NOT \process_4~1_combout\;
\ALT_INV_MODU_Counter[10]~0_combout\ <= NOT \MODU_Counter[10]~0_combout\;
\ALT_INV_Equal4~5_combout\ <= NOT \Equal4~5_combout\;
\ALT_INV_Mux5~38_combout\ <= NOT \Mux5~38_combout\;
\ALT_INV_Mux5~37_combout\ <= NOT \Mux5~37_combout\;
\ALT_INV_Mux5~32_combout\ <= NOT \Mux5~32_combout\;
\ALT_INV_Mux5~31_combout\ <= NOT \Mux5~31_combout\;
\ALT_INV_Mux5~30_combout\ <= NOT \Mux5~30_combout\;
\ALT_INV_Mux5~25_combout\ <= NOT \Mux5~25_combout\;
\ALT_INV_Mux5~24_combout\ <= NOT \Mux5~24_combout\;
\ALT_INV_Mux5~23_combout\ <= NOT \Mux5~23_combout\;
\ALT_INV_Mux5~18_combout\ <= NOT \Mux5~18_combout\;
\ALT_INV_Mux5~17_combout\ <= NOT \Mux5~17_combout\;
\ALT_INV_Mux5~16_combout\ <= NOT \Mux5~16_combout\;
\ALT_INV_Mux5~15_combout\ <= NOT \Mux5~15_combout\;
\twimax_wrap|modu1|ALT_INV_flag~q\ <= NOT \twimax_wrap|modu1|flag~q\;
\ALT_INV_Equal3~8_combout\ <= NOT \Equal3~8_combout\;
\ALT_INV_Equal3~7_combout\ <= NOT \Equal3~7_combout\;
\twimax_wrap|inter1|ALT_INV_PingPong_flag~q\ <= NOT \twimax_wrap|inter1|PingPong_flag~q\;
\ALT_INV_INTER_Counter[31]~0_combout\ <= NOT \INTER_Counter[31]~0_combout\;
\ALT_INV_Equal3~6_combout\ <= NOT \Equal3~6_combout\;
\ALT_INV_Equal3~5_combout\ <= NOT \Equal3~5_combout\;
\ALT_INV_Equal3~4_combout\ <= NOT \Equal3~4_combout\;
\ALT_INV_Equal3~3_combout\ <= NOT \Equal3~3_combout\;
\ALT_INV_Equal3~2_combout\ <= NOT \Equal3~2_combout\;
\ALT_INV_Equal3~1_combout\ <= NOT \Equal3~1_combout\;
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\twimax_wrap|inter1|ALT_INV_process_0~5_combout\ <= NOT \twimax_wrap|inter1|process_0~5_combout\;
\twimax_wrap|inter1|ALT_INV_process_0~4_combout\ <= NOT \twimax_wrap|inter1|process_0~4_combout\;
\twimax_wrap|inter1|ALT_INV_process_0~3_combout\ <= NOT \twimax_wrap|inter1|process_0~3_combout\;
\twimax_wrap|inter1|ALT_INV_counter_out\(31) <= NOT \twimax_wrap|inter1|counter_out\(31);
\twimax_wrap|inter1|ALT_INV_process_0~2_combout\ <= NOT \twimax_wrap|inter1|process_0~2_combout\;
\twimax_wrap|inter1|ALT_INV_process_0~1_combout\ <= NOT \twimax_wrap|inter1|process_0~1_combout\;
\twimax_wrap|inter1|ALT_INV_LessThan2~0_combout\ <= NOT \twimax_wrap|inter1|LessThan2~0_combout\;
\twimax_wrap|inter1|ALT_INV_process_0~0_combout\ <= NOT \twimax_wrap|inter1|process_0~0_combout\;
\twimax_wrap|inter1|ALT_INV_state_reg.PingPong_state~q\ <= NOT \twimax_wrap|inter1|state_reg.PingPong_state~q\;
\twimax_wrap|inter1|ALT_INV_LessThan0~0_combout\ <= NOT \twimax_wrap|inter1|LessThan0~0_combout\;
\twimax_wrap|inter1|ALT_INV_Equal0~0_combout\ <= NOT \twimax_wrap|inter1|Equal0~0_combout\;
\twimax_wrap|inter1|ALT_INV_state_reg.input_buffer~q\ <= NOT \twimax_wrap|inter1|state_reg.input_buffer~q\;
\ALT_INV_FEC_Flag~0_combout\ <= NOT \FEC_Flag~0_combout\;
\twimax_wrap|fec1|ALT_INV_FEC_output_data~11_combout\ <= NOT \twimax_wrap|fec1|FEC_output_data~11_combout\;
\twimax_wrap|fec1|ALT_INV_FEC_output_data~10_combout\ <= NOT \twimax_wrap|fec1|FEC_output_data~10_combout\;
\twimax_wrap|fec1|ALT_INV_shift_reg2~9_combout\ <= NOT \twimax_wrap|fec1|shift_reg2~9_combout\;
\twimax_wrap|fec1|ALT_INV_shift_reg2\(2) <= NOT \twimax_wrap|fec1|shift_reg2\(2);
\twimax_wrap|fec1|ALT_INV_shift_reg2~7_combout\ <= NOT \twimax_wrap|fec1|shift_reg2~7_combout\;
\twimax_wrap|fec1|ALT_INV_shift_reg2~5_combout\ <= NOT \twimax_wrap|fec1|shift_reg2~5_combout\;
\twimax_wrap|fec1|ALT_INV_shift_reg2~3_combout\ <= NOT \twimax_wrap|fec1|shift_reg2~3_combout\;
\twimax_wrap|fec1|ALT_INV_shift_reg2~1_combout\ <= NOT \twimax_wrap|fec1|shift_reg2~1_combout\;
\twimax_wrap|fec1|ALT_INV_shift_reg2~0_combout\ <= NOT \twimax_wrap|fec1|shift_reg2~0_combout\;
\twimax_wrap|fec1|ALT_INV_Selector39~0_combout\ <= NOT \twimax_wrap|fec1|Selector39~0_combout\;
\twimax_wrap|fec1|ALT_INV_shift_reg\(2) <= NOT \twimax_wrap|fec1|shift_reg\(2);
\twimax_wrap|fec1|ALT_INV_Equal9~1_combout\ <= NOT \twimax_wrap|fec1|Equal9~1_combout\;
\twimax_wrap|fec1|ALT_INV_Selector74~3_combout\ <= NOT \twimax_wrap|fec1|Selector74~3_combout\;
\twimax_wrap|fec1|ALT_INV_Equal9~0_combout\ <= NOT \twimax_wrap|fec1|Equal9~0_combout\;
\twimax_wrap|fec1|ALT_INV_Selector74~1_combout\ <= NOT \twimax_wrap|fec1|Selector74~1_combout\;
\twimax_wrap|fec1|ALT_INV_Selector74~0_combout\ <= NOT \twimax_wrap|fec1|Selector74~0_combout\;
\twimax_wrap|fec1|ALT_INV_LessThan5~2_combout\ <= NOT \twimax_wrap|fec1|LessThan5~2_combout\;
\twimax_wrap|fec1|ALT_INV_LessThan5~1_combout\ <= NOT \twimax_wrap|fec1|LessThan5~1_combout\;
\twimax_wrap|fec1|ALT_INV_Equal8~1_combout\ <= NOT \twimax_wrap|fec1|Equal8~1_combout\;
\twimax_wrap|fec1|ALT_INV_shift_reg~0_combout\ <= NOT \twimax_wrap|fec1|shift_reg~0_combout\;
\twimax_wrap|fec1|ALT_INV_Selector35~1_combout\ <= NOT \twimax_wrap|fec1|Selector35~1_combout\;
\twimax_wrap|fec1|ALT_INV_Selector35~0_combout\ <= NOT \twimax_wrap|fec1|Selector35~0_combout\;
\twimax_wrap|fec1|ALT_INV_LessThan2~0_combout\ <= NOT \twimax_wrap|fec1|LessThan2~0_combout\;
\twimax_wrap|fec1|ALT_INV_Equal6~5_combout\ <= NOT \twimax_wrap|fec1|Equal6~5_combout\;
\twimax_wrap|fec1|ALT_INV_process_0~1_combout\ <= NOT \twimax_wrap|fec1|process_0~1_combout\;
\ALT_INV_Equal2~6_combout\ <= NOT \Equal2~6_combout\;
\ALT_INV_Equal2~5_combout\ <= NOT \Equal2~5_combout\;
\ALT_INV_Equal2~4_combout\ <= NOT \Equal2~4_combout\;
\ALT_INV_Equal2~3_combout\ <= NOT \Equal2~3_combout\;
\ALT_INV_Equal2~2_combout\ <= NOT \Equal2~2_combout\;
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\twimax_wrap|fec1|ALT_INV_Selector34~0_combout\ <= NOT \twimax_wrap|fec1|Selector34~0_combout\;
\twimax_wrap|fec1|ALT_INV_Equal6~4_combout\ <= NOT \twimax_wrap|fec1|Equal6~4_combout\;
\twimax_wrap|fec1|ALT_INV_LessThan5~0_combout\ <= NOT \twimax_wrap|fec1|LessThan5~0_combout\;
\twimax_wrap|fec1|ALT_INV_Equal8~0_combout\ <= NOT \twimax_wrap|fec1|Equal8~0_combout\;
\twimax_wrap|fec1|ALT_INV_Equal6~3_combout\ <= NOT \twimax_wrap|fec1|Equal6~3_combout\;
\twimax_wrap|fec1|ALT_INV_Equal6~2_combout\ <= NOT \twimax_wrap|fec1|Equal6~2_combout\;
\twimax_wrap|fec1|ALT_INV_Equal6~1_combout\ <= NOT \twimax_wrap|fec1|Equal6~1_combout\;
\twimax_wrap|fec1|ALT_INV_Equal6~0_combout\ <= NOT \twimax_wrap|fec1|Equal6~0_combout\;
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(31) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(31);
\twimax_wrap|fec1|ALT_INV_Selector73~0_combout\ <= NOT \twimax_wrap|fec1|Selector73~0_combout\;
\twimax_wrap|fec1|ALT_INV_input_state_reg.input_buffer~q\ <= NOT \twimax_wrap|fec1|input_state_reg.input_buffer~q\;
\twimax_wrap|fec1|ALT_INV_LessThan0~5_combout\ <= NOT \twimax_wrap|fec1|LessThan0~5_combout\;
\twimax_wrap|fec1|ALT_INV_Equal5~1_combout\ <= NOT \twimax_wrap|fec1|Equal5~1_combout\;
\twimax_wrap|fec1|ALT_INV_process_0~0_combout\ <= NOT \twimax_wrap|fec1|process_0~0_combout\;
\twimax_wrap|fec1|ALT_INV_Equal5~0_combout\ <= NOT \twimax_wrap|fec1|Equal5~0_combout\;
\twimax_wrap|fec1|ALT_INV_LessThan0~4_combout\ <= NOT \twimax_wrap|fec1|LessThan0~4_combout\;
\twimax_wrap|fec1|ALT_INV_LessThan0~3_combout\ <= NOT \twimax_wrap|fec1|LessThan0~3_combout\;
\twimax_wrap|fec1|ALT_INV_LessThan0~2_combout\ <= NOT \twimax_wrap|fec1|LessThan0~2_combout\;
\twimax_wrap|fec1|ALT_INV_LessThan0~1_combout\ <= NOT \twimax_wrap|fec1|LessThan0~1_combout\;
\twimax_wrap|fec1|ALT_INV_LessThan0~0_combout\ <= NOT \twimax_wrap|fec1|LessThan0~0_combout\;
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(31) <= NOT \twimax_wrap|fec1|counter_buffer_input\(31);
\twimax_wrap|RANDI1|ALT_INV_Equal0~7_combout\ <= NOT \twimax_wrap|RANDI1|Equal0~7_combout\;
\twimax_wrap|RANDI1|ALT_INV_Equal0~6_combout\ <= NOT \twimax_wrap|RANDI1|Equal0~6_combout\;
\twimax_wrap|RANDI1|ALT_INV_Equal0~5_combout\ <= NOT \twimax_wrap|RANDI1|Equal0~5_combout\;
\twimax_wrap|RANDI1|ALT_INV_Equal0~4_combout\ <= NOT \twimax_wrap|RANDI1|Equal0~4_combout\;
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(31) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(31);
\twimax_wrap|RANDI1|ALT_INV_Equal0~3_combout\ <= NOT \twimax_wrap|RANDI1|Equal0~3_combout\;
\twimax_wrap|RANDI1|ALT_INV_Equal0~2_combout\ <= NOT \twimax_wrap|RANDI1|Equal0~2_combout\;
\twimax_wrap|RANDI1|ALT_INV_Equal0~1_combout\ <= NOT \twimax_wrap|RANDI1|Equal0~1_combout\;
\twimax_wrap|RANDI1|ALT_INV_Equal0~0_combout\ <= NOT \twimax_wrap|RANDI1|Equal0~0_combout\;
\ALT_INV_process_0~7_combout\ <= NOT \process_0~7_combout\;
\ALT_INV_process_0~6_combout\ <= NOT \process_0~6_combout\;
\ALT_INV_TopWiMax_input_ready~2_combout\ <= NOT \TopWiMax_input_ready~2_combout\;
\ALT_INV_TopWiMax_input_ready~0_combout\ <= NOT \TopWiMax_input_ready~0_combout\;
ALT_INV_RANDI_Counter(1) <= NOT RANDI_Counter(1);
ALT_INV_RANDI_Counter(2) <= NOT RANDI_Counter(2);
\ALT_INV_WiInput~0_combout\ <= NOT \WiInput~0_combout\;
ALT_INV_RANDI_Counter(0) <= NOT RANDI_Counter(0);
ALT_INV_RANDI_Counter(3) <= NOT RANDI_Counter(3);
ALT_INV_RANDI_Counter(4) <= NOT RANDI_Counter(4);
\ALT_INV_process_0~5_combout\ <= NOT \process_0~5_combout\;
\ALT_INV_process_0~4_combout\ <= NOT \process_0~4_combout\;
\ALT_INV_process_0~3_combout\ <= NOT \process_0~3_combout\;
ALT_INV_RANDI_Counter(31) <= NOT RANDI_Counter(31);
\ALT_INV_process_0~2_combout\ <= NOT \process_0~2_combout\;
\ALT_INV_process_0~1_combout\ <= NOT \process_0~1_combout\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
ALT_INV_RANDI_Counter(6) <= NOT RANDI_Counter(6);
\ALT_INV_process_1~2_combout\ <= NOT \process_1~2_combout\;
\ALT_INV_LessThan3~0_combout\ <= NOT \LessThan3~0_combout\;
\ALT_INV_Equal1~7_combout\ <= NOT \Equal1~7_combout\;
\ALT_INV_Equal1~6_combout\ <= NOT \Equal1~6_combout\;
\ALT_INV_Equal1~5_combout\ <= NOT \Equal1~5_combout\;
\ALT_INV_process_4~0_combout\ <= NOT \process_4~0_combout\;
\ALT_INV_MODU_Flag~q\ <= NOT \MODU_Flag~q\;
\ALT_INV_Mux4~11_combout\ <= NOT \Mux4~11_combout\;
\ALT_INV_Mux4~10_combout\ <= NOT \Mux4~10_combout\;
\ALT_INV_Mux4~9_combout\ <= NOT \Mux4~9_combout\;
\ALT_INV_Mux4~8_combout\ <= NOT \Mux4~8_combout\;
\ALT_INV_Mux4~7_combout\ <= NOT \Mux4~7_combout\;
\ALT_INV_Mux4~6_combout\ <= NOT \Mux4~6_combout\;
\ALT_INV_Mux4~5_combout\ <= NOT \Mux4~5_combout\;
\ALT_INV_Mux4~4_combout\ <= NOT \Mux4~4_combout\;
\ALT_INV_Mux4~3_combout\ <= NOT \Mux4~3_combout\;
\ALT_INV_Mux4~2_combout\ <= NOT \Mux4~2_combout\;
\ALT_INV_Mux4~1_combout\ <= NOT \Mux4~1_combout\;
\twimax_wrap|modu1|ALT_INV_MODU_output_Q\(15) <= NOT \twimax_wrap|modu1|MODU_output_Q\(15);
\ALT_INV_MODU_Flag~0_combout\ <= NOT \MODU_Flag~0_combout\;
\twimax_wrap|modu1|ALT_INV_MODU_output_valid~q\ <= NOT \twimax_wrap|modu1|MODU_output_valid~q\;
ALT_INV_MODU_Counter(31) <= NOT MODU_Counter(31);
\ALT_INV_Equal4~4_combout\ <= NOT \Equal4~4_combout\;
\ALT_INV_Equal4~3_combout\ <= NOT \Equal4~3_combout\;
\ALT_INV_Equal4~2_combout\ <= NOT \Equal4~2_combout\;
\ALT_INV_Equal4~1_combout\ <= NOT \Equal4~1_combout\;
\ALT_INV_Equal4~0_combout\ <= NOT \Equal4~0_combout\;
\ALT_INV_Mux5~14_combout\ <= NOT \Mux5~14_combout\;
\ALT_INV_Mux5~13_combout\ <= NOT \Mux5~13_combout\;
\ALT_INV_Mux5~12_combout\ <= NOT \Mux5~12_combout\;
ALT_INV_MODU_Counter(7) <= NOT MODU_Counter(7);
ALT_INV_MODU_Counter(4) <= NOT MODU_Counter(4);
ALT_INV_MODU_Counter(5) <= NOT MODU_Counter(5);
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
ALT_INV_MODU_Counter(2) <= NOT MODU_Counter(2);
ALT_INV_MODU_Counter(1) <= NOT MODU_Counter(1);
ALT_INV_MODU_Counter(3) <= NOT MODU_Counter(3);
ALT_INV_MODU_Counter(0) <= NOT MODU_Counter(0);
\twimax_wrap|modu1|ALT_INV_MODU_output_I\(15) <= NOT \twimax_wrap|modu1|MODU_output_I\(15);
\ALT_INV_INTER_Flag~q\ <= NOT \INTER_Flag~q\;
\ALT_INV_Mux3~3_combout\ <= NOT \Mux3~3_combout\;
\ALT_INV_Mux3~2_combout\ <= NOT \Mux3~2_combout\;
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
ALT_INV_INTER_Counter(5) <= NOT INTER_Counter(5);
ALT_INV_INTER_Counter(4) <= NOT INTER_Counter(4);
ALT_INV_INTER_Counter(3) <= NOT INTER_Counter(3);
ALT_INV_INTER_Counter(2) <= NOT INTER_Counter(2);
ALT_INV_INTER_Counter(1) <= NOT INTER_Counter(1);
ALT_INV_INTER_Counter(0) <= NOT INTER_Counter(0);
ALT_INV_INTER_Counter(7) <= NOT INTER_Counter(7);
ALT_INV_INTER_Counter(31) <= NOT INTER_Counter(31);
\twimax_wrap|inter1|ALT_INV_INTER_Output_valid~q\ <= NOT \twimax_wrap|inter1|INTER_Output_valid~q\;
\ALT_INV_FEC_Flag~q\ <= NOT \FEC_Flag~q\;
\twimax_wrap|fec1|ALT_INV_FEC_output_data~9_combout\ <= NOT \twimax_wrap|fec1|FEC_output_data~9_combout\;
\twimax_wrap|fec1|ALT_INV_FEC_output_data~8_combout\ <= NOT \twimax_wrap|fec1|FEC_output_data~8_combout\;
\twimax_wrap|fec1|ALT_INV_shift_reg2\(1) <= NOT \twimax_wrap|fec1|shift_reg2\(1);
\twimax_wrap|fec1|ALT_INV_FEC_output_data~7_combout\ <= NOT \twimax_wrap|fec1|FEC_output_data~7_combout\;
\twimax_wrap|fec1|ALT_INV_FEC_output_data~6_combout\ <= NOT \twimax_wrap|fec1|FEC_output_data~6_combout\;
\twimax_wrap|fec1|ALT_INV_shift_reg2\(0) <= NOT \twimax_wrap|fec1|shift_reg2\(0);
\twimax_wrap|fec1|ALT_INV_shift_reg2\(3) <= NOT \twimax_wrap|fec1|shift_reg2\(3);
\twimax_wrap|fec1|ALT_INV_shift_reg2\(4) <= NOT \twimax_wrap|fec1|shift_reg2\(4);
\twimax_wrap|fec1|ALT_INV_shift_reg2\(5) <= NOT \twimax_wrap|fec1|shift_reg2\(5);
\twimax_wrap|fec1|ALT_INV_FEC_output_data~5_combout\ <= NOT \twimax_wrap|fec1|FEC_output_data~5_combout\;
\twimax_wrap|fec1|ALT_INV_shift_reg\(1) <= NOT \twimax_wrap|fec1|shift_reg\(1);
\twimax_wrap|fec1|ALT_INV_output_state_reg.y~q\ <= NOT \twimax_wrap|fec1|output_state_reg.y~q\;
\twimax_wrap|fec1|ALT_INV_FEC_output_data~4_combout\ <= NOT \twimax_wrap|fec1|FEC_output_data~4_combout\;
\twimax_wrap|fec1|ALT_INV_output_state_reg.idle~q\ <= NOT \twimax_wrap|fec1|output_state_reg.idle~q\;
\twimax_wrap|fec1|ALT_INV_finished_tail_flag~q\ <= NOT \twimax_wrap|fec1|finished_tail_flag~q\;
\twimax_wrap|fec1|ALT_INV_output_state_reg.x~q\ <= NOT \twimax_wrap|fec1|output_state_reg.x~q\;
\twimax_wrap|fec1|ALT_INV_PingPong_flag~q\ <= NOT \twimax_wrap|fec1|PingPong_flag~q\;
\twimax_wrap|fec1|ALT_INV_FEC_output_data~3_combout\ <= NOT \twimax_wrap|fec1|FEC_output_data~3_combout\;
\twimax_wrap|fec1|ALT_INV_shift_reg\(0) <= NOT \twimax_wrap|fec1|shift_reg\(0);
\twimax_wrap|fec1|ALT_INV_shift_reg\(3) <= NOT \twimax_wrap|fec1|shift_reg\(3);
\twimax_wrap|fec1|ALT_INV_shift_reg\(4) <= NOT \twimax_wrap|fec1|shift_reg\(4);
\twimax_wrap|fec1|ALT_INV_shift_reg\(5) <= NOT \twimax_wrap|fec1|shift_reg\(5);
\ALT_INV_Mux2~3_combout\ <= NOT \Mux2~3_combout\;
\ALT_INV_Mux2~2_combout\ <= NOT \Mux2~2_combout\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
ALT_INV_FEC_Counter(5) <= NOT FEC_Counter(5);
ALT_INV_FEC_Counter(4) <= NOT FEC_Counter(4);
ALT_INV_FEC_Counter(3) <= NOT FEC_Counter(3);
ALT_INV_FEC_Counter(2) <= NOT FEC_Counter(2);
ALT_INV_FEC_Counter(1) <= NOT FEC_Counter(1);
ALT_INV_FEC_Counter(0) <= NOT FEC_Counter(0);
ALT_INV_FEC_Counter(7) <= NOT FEC_Counter(7);
ALT_INV_FEC_Counter(31) <= NOT FEC_Counter(31);
\twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\ <= NOT \twimax_wrap|fec1|input_state_reg.PingPong_state~q\;
\ALT_INV_RANDI_Flag~q\ <= NOT \RANDI_Flag~q\;
\ALT_INV_process_1~1_combout\ <= NOT \process_1~1_combout\;
\ALT_INV_Mux1~2_combout\ <= NOT \Mux1~2_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
ALT_INV_RANDI_Counter2(0) <= NOT RANDI_Counter2(0);
ALT_INV_RANDI_Counter2(1) <= NOT RANDI_Counter2(1);
ALT_INV_RANDI_Counter2(3) <= NOT RANDI_Counter2(3);
ALT_INV_RANDI_Counter2(2) <= NOT RANDI_Counter2(2);
ALT_INV_RANDI_Counter2(4) <= NOT RANDI_Counter2(4);
\twimax_wrap|RANDI1|ALT_INV_randi_output_data~0_combout\ <= NOT \twimax_wrap|RANDI1|randi_output_data~0_combout\;
\twimax_wrap|RANDI1|ALT_INV_seed_reg\(13) <= NOT \twimax_wrap|RANDI1|seed_reg\(13);
\ALT_INV_WiInput~q\ <= NOT \WiInput~q\;
\ALT_INV_TopWiMax_input_ready~q\ <= NOT \TopWiMax_input_ready~q\;
\ALT_INV_process_1~0_combout\ <= NOT \process_1~0_combout\;
ALT_INV_RANDI_Counter2(6) <= NOT RANDI_Counter2(6);
\ALT_INV_Equal1~4_combout\ <= NOT \Equal1~4_combout\;
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
ALT_INV_RANDI_Counter2(31) <= NOT RANDI_Counter2(31);
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_MODU_output_valid~reg0_q\ <= NOT \MODU_output_valid~reg0_q\;
\ALT_INV_INTER_output_valid~reg0_q\ <= NOT \INTER_output_valid~reg0_q\;
\ALT_INV_FEC_output_valid~reg0_q\ <= NOT \FEC_output_valid~reg0_q\;
\ALT_INV_RANDI_output_valid~reg0_q\ <= NOT \RANDI_output_valid~reg0_q\;
\twimax_wrap|fec1|ALT_INV_FEC_output_data~12_combout\ <= NOT \twimax_wrap|fec1|FEC_output_data~12_combout\;
\twimax_wrap|fec1|ALT_INV_Selector75~0_combout\ <= NOT \twimax_wrap|fec1|Selector75~0_combout\;
\twimax_wrap|RANDI1|ALT_INV_seed_reg\(2) <= NOT \twimax_wrap|RANDI1|seed_reg\(2);
\twimax_wrap|RANDI1|ALT_INV_seed_reg\(6) <= NOT \twimax_wrap|RANDI1|seed_reg\(6);
\twimax_wrap|RANDI1|ALT_INV_seed_reg\(10) <= NOT \twimax_wrap|RANDI1|seed_reg\(10);
\twimax_wrap|inter1|ALT_INV_counter_kmod16\(3) <= NOT \twimax_wrap|inter1|counter_kmod16\(3);
\twimax_wrap|inter1|ALT_INV_counter_kmod16\(2) <= NOT \twimax_wrap|inter1|counter_kmod16\(2);
\twimax_wrap|inter1|ALT_INV_counter_kmod16\(1) <= NOT \twimax_wrap|inter1|counter_kmod16\(1);
\twimax_wrap|inter1|ALT_INV_counter_kmod16\(0) <= NOT \twimax_wrap|inter1|counter_kmod16\(0);
\twimax_wrap|inter1|ALT_INV_Add7~81_sumout\ <= NOT \twimax_wrap|inter1|Add7~81_sumout\;
\twimax_wrap|fec1|ALT_INV_Add3~9_sumout\ <= NOT \twimax_wrap|fec1|Add3~9_sumout\;
\twimax_wrap|fec1|ALT_INV_Add1~1_sumout\ <= NOT \twimax_wrap|fec1|Add1~1_sumout\;
\twimax_wrap|RANDI1|ALT_INV_Add0~93_sumout\ <= NOT \twimax_wrap|RANDI1|Add0~93_sumout\;
\ALT_INV_Add0~125_sumout\ <= NOT \Add0~125_sumout\;
\ALT_INV_Add0~121_sumout\ <= NOT \Add0~121_sumout\;
\ALT_INV_Add0~117_sumout\ <= NOT \Add0~117_sumout\;
\ALT_INV_Add0~113_sumout\ <= NOT \Add0~113_sumout\;
\ALT_INV_Add0~109_sumout\ <= NOT \Add0~109_sumout\;
\ALT_INV_Add0~65_sumout\ <= NOT \Add0~65_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_Add5~121_sumout\ <= NOT \Add5~121_sumout\;
\ALT_INV_Add5~117_sumout\ <= NOT \Add5~117_sumout\;
\ALT_INV_Add5~113_sumout\ <= NOT \Add5~113_sumout\;
\ALT_INV_Add5~109_sumout\ <= NOT \Add5~109_sumout\;
\ALT_INV_Add5~105_sumout\ <= NOT \Add5~105_sumout\;
\ALT_INV_Add5~101_sumout\ <= NOT \Add5~101_sumout\;
\ALT_INV_Add5~97_sumout\ <= NOT \Add5~97_sumout\;
\ALT_INV_Add5~93_sumout\ <= NOT \Add5~93_sumout\;
\ALT_INV_Add5~89_sumout\ <= NOT \Add5~89_sumout\;
\ALT_INV_Add5~85_sumout\ <= NOT \Add5~85_sumout\;
\ALT_INV_Add5~81_sumout\ <= NOT \Add5~81_sumout\;
\ALT_INV_Add5~77_sumout\ <= NOT \Add5~77_sumout\;
\ALT_INV_Add5~73_sumout\ <= NOT \Add5~73_sumout\;
\ALT_INV_Add5~69_sumout\ <= NOT \Add5~69_sumout\;
\ALT_INV_Add5~65_sumout\ <= NOT \Add5~65_sumout\;
\ALT_INV_Add5~61_sumout\ <= NOT \Add5~61_sumout\;
\ALT_INV_Add5~57_sumout\ <= NOT \Add5~57_sumout\;
\ALT_INV_Add5~53_sumout\ <= NOT \Add5~53_sumout\;
\ALT_INV_Add5~49_sumout\ <= NOT \Add5~49_sumout\;
\ALT_INV_Add5~45_sumout\ <= NOT \Add5~45_sumout\;
\ALT_INV_Add5~41_sumout\ <= NOT \Add5~41_sumout\;
\ALT_INV_Add5~37_sumout\ <= NOT \Add5~37_sumout\;
\ALT_INV_Add5~33_sumout\ <= NOT \Add5~33_sumout\;
\ALT_INV_Add5~29_sumout\ <= NOT \Add5~29_sumout\;
\ALT_INV_Add5~25_sumout\ <= NOT \Add5~25_sumout\;
\ALT_INV_Add5~21_sumout\ <= NOT \Add5~21_sumout\;
\ALT_INV_Add5~17_sumout\ <= NOT \Add5~17_sumout\;
\ALT_INV_Add5~13_sumout\ <= NOT \Add5~13_sumout\;
\ALT_INV_Add5~9_sumout\ <= NOT \Add5~9_sumout\;
\ALT_INV_Add5~5_sumout\ <= NOT \Add5~5_sumout\;
\ALT_INV_Add5~1_sumout\ <= NOT \Add5~1_sumout\;
\ALT_INV_Mux5~33_combout\ <= NOT \Mux5~33_combout\;
\ALT_INV_Mux5~26_combout\ <= NOT \Mux5~26_combout\;
\ALT_INV_Mux5~19_combout\ <= NOT \Mux5~19_combout\;
\ALT_INV_Add3~33_sumout\ <= NOT \Add3~33_sumout\;
\ALT_INV_Add3~29_sumout\ <= NOT \Add3~29_sumout\;
\ALT_INV_Add3~25_sumout\ <= NOT \Add3~25_sumout\;
\ALT_INV_Add3~21_sumout\ <= NOT \Add3~21_sumout\;
\ALT_INV_Add3~17_sumout\ <= NOT \Add3~17_sumout\;
\ALT_INV_Add3~13_sumout\ <= NOT \Add3~13_sumout\;
\ALT_INV_Add3~5_sumout\ <= NOT \Add3~5_sumout\;
\twimax_wrap|inter1|ALT_INV_Add1~21_sumout\ <= NOT \twimax_wrap|inter1|Add1~21_sumout\;
\twimax_wrap|inter1|ALT_INV_Add1~17_sumout\ <= NOT \twimax_wrap|inter1|Add1~17_sumout\;
ALT_INV_INTER_Counter(9) <= NOT INTER_Counter(9);
ALT_INV_INTER_Counter(8) <= NOT INTER_Counter(8);
ALT_INV_INTER_Counter(20) <= NOT INTER_Counter(20);
ALT_INV_INTER_Counter(15) <= NOT INTER_Counter(15);
ALT_INV_INTER_Counter(14) <= NOT INTER_Counter(14);
ALT_INV_INTER_Counter(13) <= NOT INTER_Counter(13);
ALT_INV_INTER_Counter(12) <= NOT INTER_Counter(12);
ALT_INV_INTER_Counter(11) <= NOT INTER_Counter(11);
ALT_INV_INTER_Counter(10) <= NOT INTER_Counter(10);
ALT_INV_INTER_Counter(22) <= NOT INTER_Counter(22);
ALT_INV_INTER_Counter(21) <= NOT INTER_Counter(21);
ALT_INV_INTER_Counter(19) <= NOT INTER_Counter(19);
ALT_INV_INTER_Counter(18) <= NOT INTER_Counter(18);
ALT_INV_INTER_Counter(17) <= NOT INTER_Counter(17);
ALT_INV_INTER_Counter(16) <= NOT INTER_Counter(16);
ALT_INV_INTER_Counter(28) <= NOT INTER_Counter(28);
ALT_INV_INTER_Counter(27) <= NOT INTER_Counter(27);
ALT_INV_INTER_Counter(26) <= NOT INTER_Counter(26);
ALT_INV_INTER_Counter(25) <= NOT INTER_Counter(25);
ALT_INV_INTER_Counter(24) <= NOT INTER_Counter(24);
ALT_INV_INTER_Counter(23) <= NOT INTER_Counter(23);
ALT_INV_INTER_Counter(30) <= NOT INTER_Counter(30);
ALT_INV_INTER_Counter(29) <= NOT INTER_Counter(29);
\ALT_INV_Add3~1_sumout\ <= NOT \Add3~1_sumout\;
\twimax_wrap|inter1|ALT_INV_counter_out\(18) <= NOT \twimax_wrap|inter1|counter_out\(18);
\twimax_wrap|inter1|ALT_INV_counter_out\(16) <= NOT \twimax_wrap|inter1|counter_out\(16);
\twimax_wrap|inter1|ALT_INV_counter_out\(15) <= NOT \twimax_wrap|inter1|counter_out\(15);
\twimax_wrap|inter1|ALT_INV_counter_out\(14) <= NOT \twimax_wrap|inter1|counter_out\(14);
\twimax_wrap|inter1|ALT_INV_counter_out\(12) <= NOT \twimax_wrap|inter1|counter_out\(12);
\twimax_wrap|inter1|ALT_INV_counter_out\(11) <= NOT \twimax_wrap|inter1|counter_out\(11);
\twimax_wrap|inter1|ALT_INV_counter_out\(10) <= NOT \twimax_wrap|inter1|counter_out\(10);
\twimax_wrap|inter1|ALT_INV_counter_out\(9) <= NOT \twimax_wrap|inter1|counter_out\(9);
\twimax_wrap|inter1|ALT_INV_counter_out\(17) <= NOT \twimax_wrap|inter1|counter_out\(17);
\twimax_wrap|inter1|ALT_INV_counter_out\(30) <= NOT \twimax_wrap|inter1|counter_out\(30);
\twimax_wrap|inter1|ALT_INV_counter_out\(28) <= NOT \twimax_wrap|inter1|counter_out\(28);
\twimax_wrap|inter1|ALT_INV_counter_out\(13) <= NOT \twimax_wrap|inter1|counter_out\(13);
\twimax_wrap|inter1|ALT_INV_counter_out\(22) <= NOT \twimax_wrap|inter1|counter_out\(22);
\twimax_wrap|inter1|ALT_INV_counter_out\(21) <= NOT \twimax_wrap|inter1|counter_out\(21);
\twimax_wrap|inter1|ALT_INV_counter_out\(20) <= NOT \twimax_wrap|inter1|counter_out\(20);
\twimax_wrap|inter1|ALT_INV_counter_out\(29) <= NOT \twimax_wrap|inter1|counter_out\(29);
\twimax_wrap|inter1|ALT_INV_counter_out\(19) <= NOT \twimax_wrap|inter1|counter_out\(19);
\twimax_wrap|inter1|ALT_INV_counter_out\(27) <= NOT \twimax_wrap|inter1|counter_out\(27);
\twimax_wrap|inter1|ALT_INV_counter_out\(26) <= NOT \twimax_wrap|inter1|counter_out\(26);
\twimax_wrap|inter1|ALT_INV_counter_out\(25) <= NOT \twimax_wrap|inter1|counter_out\(25);
\twimax_wrap|inter1|ALT_INV_counter_out\(24) <= NOT \twimax_wrap|inter1|counter_out\(24);
\twimax_wrap|inter1|ALT_INV_counter_out\(23) <= NOT \twimax_wrap|inter1|counter_out\(23);
\twimax_wrap|inter1|ALT_INV_counter_out\(2) <= NOT \twimax_wrap|inter1|counter_out\(2);
\twimax_wrap|inter1|ALT_INV_counter_out\(1) <= NOT \twimax_wrap|inter1|counter_out\(1);
\twimax_wrap|inter1|ALT_INV_counter_out\(0) <= NOT \twimax_wrap|inter1|counter_out\(0);
\twimax_wrap|inter1|ALT_INV_counter_out\(5) <= NOT \twimax_wrap|inter1|counter_out\(5);
\twimax_wrap|inter1|ALT_INV_counter_out\(4) <= NOT \twimax_wrap|inter1|counter_out\(4);
\twimax_wrap|inter1|ALT_INV_counter_out\(3) <= NOT \twimax_wrap|inter1|counter_out\(3);
\twimax_wrap|inter1|ALT_INV_counter_out\(6) <= NOT \twimax_wrap|inter1|counter_out\(6);
\twimax_wrap|inter1|ALT_INV_counter_out\(7) <= NOT \twimax_wrap|inter1|counter_out\(7);
\twimax_wrap|inter1|ALT_INV_counter_out\(8) <= NOT \twimax_wrap|inter1|counter_out\(8);
\twimax_wrap|inter1|ALT_INV_counter\(1) <= NOT \twimax_wrap|inter1|counter\(1);
\twimax_wrap|inter1|ALT_INV_counter\(3) <= NOT \twimax_wrap|inter1|counter\(3);
\twimax_wrap|inter1|ALT_INV_counter\(0) <= NOT \twimax_wrap|inter1|counter\(0);
\twimax_wrap|inter1|ALT_INV_counter\(5) <= NOT \twimax_wrap|inter1|counter\(5);
\twimax_wrap|inter1|ALT_INV_counter\(4) <= NOT \twimax_wrap|inter1|counter\(4);
\twimax_wrap|inter1|ALT_INV_counter\(2) <= NOT \twimax_wrap|inter1|counter\(2);
\twimax_wrap|inter1|ALT_INV_counter\(6) <= NOT \twimax_wrap|inter1|counter\(6);
\twimax_wrap|inter1|ALT_INV_counter\(7) <= NOT \twimax_wrap|inter1|counter\(7);
\ALT_INV_Add2~33_sumout\ <= NOT \Add2~33_sumout\;
\ALT_INV_Add2~29_sumout\ <= NOT \Add2~29_sumout\;
\ALT_INV_Add2~25_sumout\ <= NOT \Add2~25_sumout\;
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
ALT_INV_FEC_Counter(11) <= NOT FEC_Counter(11);
ALT_INV_FEC_Counter(8) <= NOT FEC_Counter(8);
ALT_INV_FEC_Counter(9) <= NOT FEC_Counter(9);
ALT_INV_FEC_Counter(26) <= NOT FEC_Counter(26);
ALT_INV_FEC_Counter(12) <= NOT FEC_Counter(12);
ALT_INV_FEC_Counter(28) <= NOT FEC_Counter(28);
ALT_INV_FEC_Counter(27) <= NOT FEC_Counter(27);
ALT_INV_FEC_Counter(29) <= NOT FEC_Counter(29);
ALT_INV_FEC_Counter(13) <= NOT FEC_Counter(13);
ALT_INV_FEC_Counter(18) <= NOT FEC_Counter(18);
ALT_INV_FEC_Counter(17) <= NOT FEC_Counter(17);
ALT_INV_FEC_Counter(16) <= NOT FEC_Counter(16);
ALT_INV_FEC_Counter(15) <= NOT FEC_Counter(15);
ALT_INV_FEC_Counter(14) <= NOT FEC_Counter(14);
ALT_INV_FEC_Counter(10) <= NOT FEC_Counter(10);
ALT_INV_FEC_Counter(24) <= NOT FEC_Counter(24);
ALT_INV_FEC_Counter(23) <= NOT FEC_Counter(23);
ALT_INV_FEC_Counter(22) <= NOT FEC_Counter(22);
ALT_INV_FEC_Counter(21) <= NOT FEC_Counter(21);
ALT_INV_FEC_Counter(20) <= NOT FEC_Counter(20);
ALT_INV_FEC_Counter(19) <= NOT FEC_Counter(19);
ALT_INV_FEC_Counter(30) <= NOT FEC_Counter(30);
ALT_INV_FEC_Counter(25) <= NOT FEC_Counter(25);
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(6) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(6);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(0) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(0);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(4) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(4);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(3) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(3);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(2) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(2);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(1) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(1);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(17) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(17);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(16) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(16);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(15) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(15);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(14) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(14);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(13) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(13);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(12) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(12);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(11) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(11);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(10) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(10);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(9) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(9);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(8) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(8);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(29) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(29);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(28) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(28);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(23) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(23);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(22) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(22);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(21) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(21);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(20) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(20);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(19) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(19);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(18) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(18);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(27) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(27);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(26) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(26);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(25) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(25);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(24) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(24);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(30) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(30);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(7) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(7);
\twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(5) <= NOT \twimax_wrap|fec1|counter_shift_and_output\(5);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(4) <= NOT \twimax_wrap|fec1|counter_buffer_input\(4);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(3) <= NOT \twimax_wrap|fec1|counter_buffer_input\(3);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(6) <= NOT \twimax_wrap|fec1|counter_buffer_input\(6);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(5) <= NOT \twimax_wrap|fec1|counter_buffer_input\(5);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(0) <= NOT \twimax_wrap|fec1|counter_buffer_input\(0);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(1) <= NOT \twimax_wrap|fec1|counter_buffer_input\(1);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(2) <= NOT \twimax_wrap|fec1|counter_buffer_input\(2);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(19) <= NOT \twimax_wrap|fec1|counter_buffer_input\(19);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(17) <= NOT \twimax_wrap|fec1|counter_buffer_input\(17);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(16) <= NOT \twimax_wrap|fec1|counter_buffer_input\(16);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(15) <= NOT \twimax_wrap|fec1|counter_buffer_input\(15);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(14) <= NOT \twimax_wrap|fec1|counter_buffer_input\(14);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(13) <= NOT \twimax_wrap|fec1|counter_buffer_input\(13);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(12) <= NOT \twimax_wrap|fec1|counter_buffer_input\(12);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(11) <= NOT \twimax_wrap|fec1|counter_buffer_input\(11);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(10) <= NOT \twimax_wrap|fec1|counter_buffer_input\(10);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(9) <= NOT \twimax_wrap|fec1|counter_buffer_input\(9);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(8) <= NOT \twimax_wrap|fec1|counter_buffer_input\(8);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(7) <= NOT \twimax_wrap|fec1|counter_buffer_input\(7);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(29) <= NOT \twimax_wrap|fec1|counter_buffer_input\(29);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(24) <= NOT \twimax_wrap|fec1|counter_buffer_input\(24);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(23) <= NOT \twimax_wrap|fec1|counter_buffer_input\(23);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(22) <= NOT \twimax_wrap|fec1|counter_buffer_input\(22);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(21) <= NOT \twimax_wrap|fec1|counter_buffer_input\(21);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(20) <= NOT \twimax_wrap|fec1|counter_buffer_input\(20);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(18) <= NOT \twimax_wrap|fec1|counter_buffer_input\(18);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(27) <= NOT \twimax_wrap|fec1|counter_buffer_input\(27);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(26) <= NOT \twimax_wrap|fec1|counter_buffer_input\(26);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(28) <= NOT \twimax_wrap|fec1|counter_buffer_input\(28);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(30) <= NOT \twimax_wrap|fec1|counter_buffer_input\(30);
\twimax_wrap|fec1|ALT_INV_counter_buffer_input\(25) <= NOT \twimax_wrap|fec1|counter_buffer_input\(25);
\ALT_INV_Add1~125_sumout\ <= NOT \Add1~125_sumout\;
\ALT_INV_Add1~121_sumout\ <= NOT \Add1~121_sumout\;
\ALT_INV_Add1~117_sumout\ <= NOT \Add1~117_sumout\;
\ALT_INV_Add1~113_sumout\ <= NOT \Add1~113_sumout\;
\ALT_INV_Add1~109_sumout\ <= NOT \Add1~109_sumout\;
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(17) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(17);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(29) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(29);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(19) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(19);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(20) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(20);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(22) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(22);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(23) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(23);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(24) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(24);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(18) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(18);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(15) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(15);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(16) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(16);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(21) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(21);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(8) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(8);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(9) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(9);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(10) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(10);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(12) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(12);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(13) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(13);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(14) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(14);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(2) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(2);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(3) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(3);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(4) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(4);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(5) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(5);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(6) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(6);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(7) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(7);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(28) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(28);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(27) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(27);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(26) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(26);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(25) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(25);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(1) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(1);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(11) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(11);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(0) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(0);
\twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(30) <= NOT \twimax_wrap|RANDI1|counter_reset_seed\(30);
\twimax_wrap|RANDI1|ALT_INV_seed_reg\(12) <= NOT \twimax_wrap|RANDI1|seed_reg\(12);
ALT_INV_RANDI_Counter(10) <= NOT RANDI_Counter(10);
ALT_INV_RANDI_Counter(9) <= NOT RANDI_Counter(9);
ALT_INV_RANDI_Counter(8) <= NOT RANDI_Counter(8);
ALT_INV_RANDI_Counter(7) <= NOT RANDI_Counter(7);
ALT_INV_RANDI_Counter(27) <= NOT RANDI_Counter(27);
ALT_INV_RANDI_Counter(12) <= NOT RANDI_Counter(12);
ALT_INV_RANDI_Counter(30) <= NOT RANDI_Counter(30);
ALT_INV_RANDI_Counter(29) <= NOT RANDI_Counter(29);
ALT_INV_RANDI_Counter(28) <= NOT RANDI_Counter(28);
ALT_INV_RANDI_Counter(26) <= NOT RANDI_Counter(26);
ALT_INV_RANDI_Counter(17) <= NOT RANDI_Counter(17);
ALT_INV_RANDI_Counter(16) <= NOT RANDI_Counter(16);
ALT_INV_RANDI_Counter(15) <= NOT RANDI_Counter(15);
ALT_INV_RANDI_Counter(14) <= NOT RANDI_Counter(14);
ALT_INV_RANDI_Counter(13) <= NOT RANDI_Counter(13);
ALT_INV_RANDI_Counter(11) <= NOT RANDI_Counter(11);
ALT_INV_RANDI_Counter(23) <= NOT RANDI_Counter(23);
ALT_INV_RANDI_Counter(22) <= NOT RANDI_Counter(22);
ALT_INV_RANDI_Counter(21) <= NOT RANDI_Counter(21);
ALT_INV_RANDI_Counter(20) <= NOT RANDI_Counter(20);
ALT_INV_RANDI_Counter(19) <= NOT RANDI_Counter(19);
ALT_INV_RANDI_Counter(18) <= NOT RANDI_Counter(18);
ALT_INV_RANDI_Counter(25) <= NOT RANDI_Counter(25);
ALT_INV_RANDI_Counter(24) <= NOT RANDI_Counter(24);
ALT_INV_RANDI_Counter(5) <= NOT RANDI_Counter(5);
\ALT_INV_Add1~101_sumout\ <= NOT \Add1~101_sumout\;
\ALT_INV_Add1~53_sumout\ <= NOT \Add1~53_sumout\;
ALT_INV_MODU_Counter(23) <= NOT MODU_Counter(23);
ALT_INV_MODU_Counter(24) <= NOT MODU_Counter(24);
ALT_INV_MODU_Counter(25) <= NOT MODU_Counter(25);
ALT_INV_MODU_Counter(26) <= NOT MODU_Counter(26);
ALT_INV_MODU_Counter(27) <= NOT MODU_Counter(27);
ALT_INV_MODU_Counter(29) <= NOT MODU_Counter(29);
ALT_INV_MODU_Counter(21) <= NOT MODU_Counter(21);
ALT_INV_MODU_Counter(30) <= NOT MODU_Counter(30);
ALT_INV_MODU_Counter(14) <= NOT MODU_Counter(14);
ALT_INV_MODU_Counter(15) <= NOT MODU_Counter(15);
ALT_INV_MODU_Counter(16) <= NOT MODU_Counter(16);
ALT_INV_MODU_Counter(18) <= NOT MODU_Counter(18);
ALT_INV_MODU_Counter(19) <= NOT MODU_Counter(19);
ALT_INV_MODU_Counter(22) <= NOT MODU_Counter(22);
ALT_INV_MODU_Counter(12) <= NOT MODU_Counter(12);
ALT_INV_MODU_Counter(13) <= NOT MODU_Counter(13);
ALT_INV_MODU_Counter(17) <= NOT MODU_Counter(17);
ALT_INV_MODU_Counter(28) <= NOT MODU_Counter(28);
ALT_INV_MODU_Counter(11) <= NOT MODU_Counter(11);
ALT_INV_MODU_Counter(20) <= NOT MODU_Counter(20);
ALT_INV_MODU_Counter(10) <= NOT MODU_Counter(10);
ALT_INV_MODU_Counter(9) <= NOT MODU_Counter(9);
ALT_INV_MODU_Counter(8) <= NOT MODU_Counter(8);
ALT_INV_MODU_Counter(6) <= NOT MODU_Counter(6);
\ALT_INV_Mux5~8_combout\ <= NOT \Mux5~8_combout\;
\ALT_INV_Mux5~4_combout\ <= NOT \Mux5~4_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
ALT_INV_INTER_Counter(6) <= NOT INTER_Counter(6);
\twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(0) <= NOT \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|q_b\(0);
\twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ALT_INV_q_b\(0) <= NOT \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|q_b\(0);
ALT_INV_FEC_Counter(6) <= NOT FEC_Counter(6);
\twimax_wrap|RANDI1|ALT_INV_seed_reg\(14) <= NOT \twimax_wrap|RANDI1|seed_reg\(14);
ALT_INV_RANDI_Counter2(5) <= NOT RANDI_Counter2(5);
ALT_INV_RANDI_Counter2(18) <= NOT RANDI_Counter2(18);
ALT_INV_RANDI_Counter2(17) <= NOT RANDI_Counter2(17);
ALT_INV_RANDI_Counter2(16) <= NOT RANDI_Counter2(16);
ALT_INV_RANDI_Counter2(15) <= NOT RANDI_Counter2(15);
ALT_INV_RANDI_Counter2(14) <= NOT RANDI_Counter2(14);
ALT_INV_RANDI_Counter2(13) <= NOT RANDI_Counter2(13);
ALT_INV_RANDI_Counter2(12) <= NOT RANDI_Counter2(12);
ALT_INV_RANDI_Counter2(10) <= NOT RANDI_Counter2(10);
ALT_INV_RANDI_Counter2(9) <= NOT RANDI_Counter2(9);
ALT_INV_RANDI_Counter2(8) <= NOT RANDI_Counter2(8);
ALT_INV_RANDI_Counter2(7) <= NOT RANDI_Counter2(7);
ALT_INV_RANDI_Counter2(24) <= NOT RANDI_Counter2(24);
ALT_INV_RANDI_Counter2(23) <= NOT RANDI_Counter2(23);
ALT_INV_RANDI_Counter2(22) <= NOT RANDI_Counter2(22);
ALT_INV_RANDI_Counter2(21) <= NOT RANDI_Counter2(21);
ALT_INV_RANDI_Counter2(20) <= NOT RANDI_Counter2(20);
ALT_INV_RANDI_Counter2(19) <= NOT RANDI_Counter2(19);
ALT_INV_RANDI_Counter2(25) <= NOT RANDI_Counter2(25);
ALT_INV_RANDI_Counter2(30) <= NOT RANDI_Counter2(30);
ALT_INV_RANDI_Counter2(29) <= NOT RANDI_Counter2(29);
ALT_INV_RANDI_Counter2(28) <= NOT RANDI_Counter2(28);
ALT_INV_RANDI_Counter2(27) <= NOT RANDI_Counter2(27);
ALT_INV_RANDI_Counter2(26) <= NOT RANDI_Counter2(26);
ALT_INV_RANDI_Counter2(11) <= NOT RANDI_Counter2(11);

-- Location: IOOBUF_X0_Y18_N79
\RANDI_output_valid~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RANDI_output_valid~reg0_q\,
	devoe => ww_devoe,
	o => ww_RANDI_output_valid);

-- Location: IOOBUF_X0_Y18_N96
\FEC_output_valid~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FEC_output_valid~reg0_q\,
	devoe => ww_devoe,
	o => ww_FEC_output_valid);

-- Location: IOOBUF_X0_Y18_N62
\INTER_output_valid~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTER_output_valid~reg0_q\,
	devoe => ww_devoe,
	o => ww_INTER_output_valid);

-- Location: IOOBUF_X0_Y18_N45
\MODU_output_valid~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MODU_output_valid~reg0_q\,
	devoe => ww_devoe,
	o => ww_MODU_output_valid);

-- Location: IOIBUF_X22_Y0_N1
\CLK_50Mhzs~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_50Mhzs,
	o => \CLK_50Mhzs~input_o\);

-- Location: PLLREFCLKSELECT_X0_Y7_N0
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
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
	clkin => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: IOIBUF_X33_Y0_N41
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FRACTIONALPLL_X0_Y1_N0
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL\ : cyclonev_fractional_pll
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
	coreclkfb => \pll1_wrap|pll_main_inst|altera_pll_i|fboutclk_wire\(0),
	ecnc1test => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => \reset~input_o\,
	refclkin => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	cntnen => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \pll1_wrap|pll_main_inst|altera_pll_i|fboutclk_wire\(0),
	lock => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	tclk => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X0_Y5_N0
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\,
	shift => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	shiften => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X0_Y2_N1
\pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
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
  output_counter_index => 2)
-- pragma translate_on
PORT MAP (
	nen0 => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN2\,
	tclk0 => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire\(0));

-- Location: CLKCTRL_G2
\pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire\(0),
	outclk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\);

-- Location: LABCELL_X7_Y6_N0
\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( !RANDI_Counter2(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~126\ = CARRY(( !RANDI_Counter2(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter2(0),
	cin => GND,
	sumout => \Add1~125_sumout\,
	cout => \Add1~126\);

-- Location: LABCELL_X6_Y6_N33
\RANDI_Counter2[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI_Counter2[0]~7_combout\ = !\Add1~125_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~125_sumout\,
	combout => \RANDI_Counter2[0]~7_combout\);

-- Location: CLKCTRL_G4
\reset~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \reset~input_o\,
	outclk => \reset~inputCLKENA0_outclk\);

-- Location: IOIBUF_X34_Y0_N1
\TopWiMax_wrapper_in_ready~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TopWiMax_wrapper_in_ready,
	o => \TopWiMax_wrapper_in_ready~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: LABCELL_X10_Y3_N9
\process_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = ( !\load~input_o\ & ( (\TopWiMax_wrapper_in_ready~input_o\ & ((!RANDI_Counter2(5)) # (RANDI_Counter2(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000101010101010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_TopWiMax_wrapper_in_ready~input_o\,
	datac => ALT_INV_RANDI_Counter2(6),
	datad => ALT_INV_RANDI_Counter2(5),
	dataf => \ALT_INV_load~input_o\,
	combout => \process_1~0_combout\);

-- Location: LABCELL_X6_Y6_N12
\Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (RANDI_Counter2(2) & (RANDI_Counter2(6) & (RANDI_Counter2(4) & RANDI_Counter2(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter2(2),
	datab => ALT_INV_RANDI_Counter2(6),
	datac => ALT_INV_RANDI_Counter2(4),
	datad => ALT_INV_RANDI_Counter2(3),
	combout => \Equal1~5_combout\);

-- Location: LABCELL_X6_Y6_N42
\Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = ( \Equal1~5_combout\ & ( (RANDI_Counter2(1) & (RANDI_Counter2(0) & !RANDI_Counter2(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RANDI_Counter2(1),
	datac => ALT_INV_RANDI_Counter2(0),
	datad => ALT_INV_RANDI_Counter2(5),
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \Equal1~6_combout\);

-- Location: LABCELL_X6_Y6_N36
\Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = ( RANDI_Counter2(0) & ( (!RANDI_Counter2(2) & ((!RANDI_Counter2(1) & (RANDI_Counter2(4) & RANDI_Counter2(3))) # (RANDI_Counter2(1) & (!RANDI_Counter2(4))))) # (RANDI_Counter2(2) & (!RANDI_Counter2(3) $ (((!RANDI_Counter2(4)) # 
-- (RANDI_Counter2(1)))))) ) ) # ( !RANDI_Counter2(0) & ( (!RANDI_Counter2(2) & ((!RANDI_Counter2(3) & (RANDI_Counter2(1))) # (RANDI_Counter2(3) & ((RANDI_Counter2(4)))))) # (RANDI_Counter2(2) & (!RANDI_Counter2(4) & ((!RANDI_Counter2(3)) # 
-- (RANDI_Counter2(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001000011010011100100001101000100100011110010010010001111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter2(2),
	datab => ALT_INV_RANDI_Counter2(1),
	datac => ALT_INV_RANDI_Counter2(4),
	datad => ALT_INV_RANDI_Counter2(3),
	dataf => ALT_INV_RANDI_Counter2(0),
	combout => \Mux1~2_combout\);

-- Location: LABCELL_X6_Y6_N39
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( RANDI_Counter2(0) & ( (!RANDI_Counter2(3) & (((!RANDI_Counter2(1)) # (!RANDI_Counter2(4))))) # (RANDI_Counter2(3) & (RANDI_Counter2(2) & ((RANDI_Counter2(4))))) ) ) # ( !RANDI_Counter2(0) & ( (!RANDI_Counter2(1) & ((!RANDI_Counter2(4) 
-- & ((RANDI_Counter2(3)))) # (RANDI_Counter2(4) & (!RANDI_Counter2(2))))) # (RANDI_Counter2(1) & (RANDI_Counter2(3) & (!RANDI_Counter2(2) $ (!RANDI_Counter2(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110110001010000011011000101011110000110001011111000011000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter2(2),
	datab => ALT_INV_RANDI_Counter2(1),
	datac => ALT_INV_RANDI_Counter2(3),
	datad => ALT_INV_RANDI_Counter2(4),
	dataf => ALT_INV_RANDI_Counter2(0),
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X6_Y6_N45
\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( RANDI_Counter2(0) & ( (!RANDI_Counter2(2) & ((!RANDI_Counter2(3) & ((RANDI_Counter2(4)) # (RANDI_Counter2(1)))) # (RANDI_Counter2(3) & ((!RANDI_Counter2(4)))))) # (RANDI_Counter2(2) & (!RANDI_Counter2(1) $ (((RANDI_Counter2(3) & 
-- !RANDI_Counter2(4)))))) ) ) # ( !RANDI_Counter2(0) & ( (!RANDI_Counter2(1) & (!RANDI_Counter2(3) & ((!RANDI_Counter2(2)) # (!RANDI_Counter2(4))))) # (RANDI_Counter2(1) & (RANDI_Counter2(2) & (RANDI_Counter2(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000110000001110000011000000101101011111001000110101111100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter2(2),
	datab => ALT_INV_RANDI_Counter2(1),
	datac => ALT_INV_RANDI_Counter2(3),
	datad => ALT_INV_RANDI_Counter2(4),
	dataf => ALT_INV_RANDI_Counter2(0),
	combout => \Mux1~1_combout\);

-- Location: LABCELL_X10_Y4_N6
\twimax_wrap|RANDI1|seed_reg[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|seed_reg[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \twimax_wrap|RANDI1|seed_reg[12]~feeder_combout\);

-- Location: MLABCELL_X9_Y5_N0
\twimax_wrap|RANDI1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~5_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(0) ) + ( VCC ) + ( !VCC ))
-- \twimax_wrap|RANDI1|Add0~6\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(0),
	cin => GND,
	sumout => \twimax_wrap|RANDI1|Add0~5_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~6\);

-- Location: MLABCELL_X13_Y3_N30
\TopWiMax_input_ready~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \TopWiMax_input_ready~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \TopWiMax_input_ready~feeder_combout\);

-- Location: MLABCELL_X13_Y3_N15
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (RANDI_Counter(5) & !RANDI_Counter(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter(5),
	datad => ALT_INV_RANDI_Counter(6),
	combout => \LessThan1~0_combout\);

-- Location: LABCELL_X14_Y3_N0
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( !RANDI_Counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~118\ = CARRY(( !RANDI_Counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter(0),
	cin => GND,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: LABCELL_X14_Y3_N3
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( !RANDI_Counter(1) ) + ( VCC ) + ( \Add0~118\ ))
-- \Add0~126\ = CARRY(( !RANDI_Counter(1) ) + ( VCC ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter(1),
	cin => \Add0~118\,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

-- Location: MLABCELL_X13_Y3_N54
\RANDI_Counter~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI_Counter~6_combout\ = ( \TopWiMax_wrapper_in_ready~input_o\ & ( (\process_0~5_combout\ & (!\process_0~6_combout\ & !\Add0~125_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~5_combout\,
	datab => \ALT_INV_process_0~6_combout\,
	datac => \ALT_INV_Add0~125_sumout\,
	dataf => \ALT_INV_TopWiMax_wrapper_in_ready~input_o\,
	combout => \RANDI_Counter~6_combout\);

-- Location: FF_X13_Y3_N56
\RANDI_Counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI_Counter~6_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(1));

-- Location: LABCELL_X14_Y3_N6
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( !RANDI_Counter(2) ) + ( VCC ) + ( \Add0~126\ ))
-- \Add0~122\ = CARRY(( !RANDI_Counter(2) ) + ( VCC ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RANDI_Counter(2),
	cin => \Add0~126\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: MLABCELL_X13_Y3_N0
\RANDI_Counter[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI_Counter[2]~5_combout\ = ( RANDI_Counter(2) & ( \LessThan1~0_combout\ & ( (!\process_0~5_combout\) # ((!\TopWiMax_wrapper_in_ready~input_o\) # (!\TopWiMax_input_ready~0_combout\)) ) ) ) # ( RANDI_Counter(2) & ( !\LessThan1~0_combout\ & ( 
-- (!\process_0~5_combout\) # ((!\TopWiMax_wrapper_in_ready~input_o\) # ((!\Add0~121_sumout\ & !\TopWiMax_input_ready~0_combout\))) ) ) ) # ( !RANDI_Counter(2) & ( !\LessThan1~0_combout\ & ( (!\Add0~121_sumout\ & (\process_0~5_combout\ & 
-- (\TopWiMax_wrapper_in_ready~input_o\ & !\TopWiMax_input_ready~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000111111101111110000000000000000001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~121_sumout\,
	datab => \ALT_INV_process_0~5_combout\,
	datac => \ALT_INV_TopWiMax_wrapper_in_ready~input_o\,
	datad => \ALT_INV_TopWiMax_input_ready~0_combout\,
	datae => ALT_INV_RANDI_Counter(2),
	dataf => \ALT_INV_LessThan1~0_combout\,
	combout => \RANDI_Counter[2]~5_combout\);

-- Location: FF_X13_Y3_N2
\RANDI_Counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI_Counter[2]~5_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(2));

-- Location: MLABCELL_X13_Y3_N42
\process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = ( RANDI_Counter(5) & ( RANDI_Counter(4) & ( !RANDI_Counter(6) ) ) ) # ( !RANDI_Counter(5) & ( RANDI_Counter(4) & ( (RANDI_Counter(6) & (\WiInput~0_combout\ & (RANDI_Counter(2) & RANDI_Counter(1)))) ) ) ) # ( RANDI_Counter(5) & ( 
-- !RANDI_Counter(4) & ( !RANDI_Counter(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter(6),
	datab => \ALT_INV_WiInput~0_combout\,
	datac => ALT_INV_RANDI_Counter(2),
	datad => ALT_INV_RANDI_Counter(1),
	datae => ALT_INV_RANDI_Counter(5),
	dataf => ALT_INV_RANDI_Counter(4),
	combout => \process_0~6_combout\);

-- Location: MLABCELL_X13_Y3_N57
\RANDI_Counter~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI_Counter~4_combout\ = ( \TopWiMax_wrapper_in_ready~input_o\ & ( (\process_0~5_combout\ & (!\process_0~6_combout\ & !\Add0~117_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~5_combout\,
	datab => \ALT_INV_process_0~6_combout\,
	datad => \ALT_INV_Add0~117_sumout\,
	dataf => \ALT_INV_TopWiMax_wrapper_in_ready~input_o\,
	combout => \RANDI_Counter~4_combout\);

-- Location: FF_X13_Y3_N59
\RANDI_Counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI_Counter~4_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(0));

-- Location: LABCELL_X14_Y3_N9
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( !RANDI_Counter(3) ) + ( VCC ) + ( \Add0~122\ ))
-- \Add0~114\ = CARRY(( !RANDI_Counter(3) ) + ( VCC ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter(3),
	cin => \Add0~122\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: MLABCELL_X13_Y3_N21
\RANDI_Counter[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI_Counter[3]~3_combout\ = ( RANDI_Counter(3) & ( \Add0~113_sumout\ & ( (!\process_0~5_combout\) # ((!\TopWiMax_wrapper_in_ready~input_o\) # ((\LessThan1~0_combout\ & !\TopWiMax_input_ready~0_combout\))) ) ) ) # ( RANDI_Counter(3) & ( 
-- !\Add0~113_sumout\ & ( (!\process_0~5_combout\) # ((!\TopWiMax_input_ready~0_combout\) # (!\TopWiMax_wrapper_in_ready~input_o\)) ) ) ) # ( !RANDI_Counter(3) & ( !\Add0~113_sumout\ & ( (\process_0~5_combout\ & (!\LessThan1~0_combout\ & 
-- (!\TopWiMax_input_ready~0_combout\ & \TopWiMax_wrapper_in_ready~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000111111111111101000000000000000001111111110111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~5_combout\,
	datab => \ALT_INV_LessThan1~0_combout\,
	datac => \ALT_INV_TopWiMax_input_ready~0_combout\,
	datad => \ALT_INV_TopWiMax_wrapper_in_ready~input_o\,
	datae => ALT_INV_RANDI_Counter(3),
	dataf => \ALT_INV_Add0~113_sumout\,
	combout => \RANDI_Counter[3]~3_combout\);

-- Location: FF_X13_Y3_N23
\RANDI_Counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI_Counter[3]~3_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(3));

-- Location: MLABCELL_X13_Y3_N12
\WiInput~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WiInput~0_combout\ = (RANDI_Counter(0) & RANDI_Counter(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RANDI_Counter(0),
	datac => ALT_INV_RANDI_Counter(3),
	combout => \WiInput~0_combout\);

-- Location: MLABCELL_X13_Y3_N6
\TopWiMax_input_ready~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TopWiMax_input_ready~0_combout\ = ( !RANDI_Counter(5) & ( RANDI_Counter(4) & ( (RANDI_Counter(6) & (\WiInput~0_combout\ & (RANDI_Counter(2) & RANDI_Counter(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter(6),
	datab => \ALT_INV_WiInput~0_combout\,
	datac => ALT_INV_RANDI_Counter(2),
	datad => ALT_INV_RANDI_Counter(1),
	datae => ALT_INV_RANDI_Counter(5),
	dataf => ALT_INV_RANDI_Counter(4),
	combout => \TopWiMax_input_ready~0_combout\);

-- Location: LABCELL_X14_Y3_N12
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( !RANDI_Counter(4) ) + ( VCC ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( !RANDI_Counter(4) ) + ( VCC ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter(4),
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: MLABCELL_X13_Y3_N18
\RANDI_Counter[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI_Counter[4]~2_combout\ = ( RANDI_Counter(4) & ( \Add0~109_sumout\ & ( (!\process_0~5_combout\) # ((!\TopWiMax_wrapper_in_ready~input_o\) # ((\LessThan1~0_combout\ & !\TopWiMax_input_ready~0_combout\))) ) ) ) # ( RANDI_Counter(4) & ( 
-- !\Add0~109_sumout\ & ( (!\process_0~5_combout\) # ((!\TopWiMax_wrapper_in_ready~input_o\) # (!\TopWiMax_input_ready~0_combout\)) ) ) ) # ( !RANDI_Counter(4) & ( !\Add0~109_sumout\ & ( (\process_0~5_combout\ & (!\LessThan1~0_combout\ & 
-- (\TopWiMax_wrapper_in_ready~input_o\ & !\TopWiMax_input_ready~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000111111111111101000000000000000001111101111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~5_combout\,
	datab => \ALT_INV_LessThan1~0_combout\,
	datac => \ALT_INV_TopWiMax_wrapper_in_ready~input_o\,
	datad => \ALT_INV_TopWiMax_input_ready~0_combout\,
	datae => ALT_INV_RANDI_Counter(4),
	dataf => \ALT_INV_Add0~109_sumout\,
	combout => \RANDI_Counter[4]~2_combout\);

-- Location: FF_X13_Y3_N20
\RANDI_Counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI_Counter[4]~2_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(4));

-- Location: LABCELL_X14_Y3_N15
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( RANDI_Counter(5) ) + ( VCC ) + ( \Add0~110\ ))
-- \Add0~6\ = CARRY(( RANDI_Counter(5) ) + ( VCC ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter(5),
	cin => \Add0~110\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X10_Y3_N6
\process_0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = ( \process_0~6_combout\ ) # ( !\process_0~6_combout\ & ( (!\TopWiMax_wrapper_in_ready~input_o\) # (!\process_0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_TopWiMax_wrapper_in_ready~input_o\,
	datab => \ALT_INV_process_0~5_combout\,
	dataf => \ALT_INV_process_0~6_combout\,
	combout => \process_0~8_combout\);

-- Location: FF_X14_Y3_N17
\RANDI_Counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(5));

-- Location: LABCELL_X14_Y3_N18
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !RANDI_Counter(6) ) + ( VCC ) + ( \Add0~6\ ))
-- \Add0~2\ = CARRY(( !RANDI_Counter(6) ) + ( VCC ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RANDI_Counter(6),
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: MLABCELL_X13_Y3_N36
\RANDI_Counter[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI_Counter[6]~0_combout\ = ( RANDI_Counter(6) & ( \TopWiMax_wrapper_in_ready~input_o\ & ( (!\process_0~5_combout\) # ((!\Add0~1_sumout\ & !\TopWiMax_input_ready~0_combout\)) ) ) ) # ( !RANDI_Counter(6) & ( \TopWiMax_wrapper_in_ready~input_o\ & ( 
-- (\process_0~5_combout\ & (!\Add0~1_sumout\ & (!RANDI_Counter(5) & !\TopWiMax_input_ready~0_combout\))) ) ) ) # ( RANDI_Counter(6) & ( !\TopWiMax_wrapper_in_ready~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101000000000000001110111010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~5_combout\,
	datab => \ALT_INV_Add0~1_sumout\,
	datac => ALT_INV_RANDI_Counter(5),
	datad => \ALT_INV_TopWiMax_input_ready~0_combout\,
	datae => ALT_INV_RANDI_Counter(6),
	dataf => \ALT_INV_TopWiMax_wrapper_in_ready~input_o\,
	combout => \RANDI_Counter[6]~0_combout\);

-- Location: FF_X13_Y3_N38
\RANDI_Counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI_Counter[6]~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(6));

-- Location: LABCELL_X14_Y3_N21
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( RANDI_Counter(7) ) + ( VCC ) + ( \Add0~2\ ))
-- \Add0~94\ = CARRY(( RANDI_Counter(7) ) + ( VCC ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter(7),
	cin => \Add0~2\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X14_Y3_N23
\RANDI_Counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~93_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(7));

-- Location: LABCELL_X14_Y3_N24
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( RANDI_Counter(8) ) + ( VCC ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( RANDI_Counter(8) ) + ( VCC ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter(8),
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X14_Y3_N26
\RANDI_Counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~97_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(8));

-- Location: LABCELL_X14_Y3_N27
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( RANDI_Counter(9) ) + ( VCC ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( RANDI_Counter(9) ) + ( VCC ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter(9),
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X14_Y3_N29
\RANDI_Counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~101_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(9));

-- Location: LABCELL_X14_Y3_N30
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( RANDI_Counter(10) ) + ( VCC ) + ( \Add0~102\ ))
-- \Add0~106\ = CARRY(( RANDI_Counter(10) ) + ( VCC ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RANDI_Counter(10),
	cin => \Add0~102\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X14_Y3_N32
\RANDI_Counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~105_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(10));

-- Location: LABCELL_X14_Y3_N33
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( RANDI_Counter(11) ) + ( VCC ) + ( \Add0~106\ ))
-- \Add0~42\ = CARRY(( RANDI_Counter(11) ) + ( VCC ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter(11),
	cin => \Add0~106\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X14_Y3_N35
\RANDI_Counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(11));

-- Location: LABCELL_X14_Y3_N36
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( RANDI_Counter(12) ) + ( VCC ) + ( \Add0~42\ ))
-- \Add0~86\ = CARRY(( RANDI_Counter(12) ) + ( VCC ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter(12),
	cin => \Add0~42\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X14_Y3_N38
\RANDI_Counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~85_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(12));

-- Location: LABCELL_X14_Y3_N39
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( RANDI_Counter(13) ) + ( VCC ) + ( \Add0~86\ ))
-- \Add0~46\ = CARRY(( RANDI_Counter(13) ) + ( VCC ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter(13),
	cin => \Add0~86\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X14_Y3_N41
\RANDI_Counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(13));

-- Location: LABCELL_X14_Y3_N42
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( RANDI_Counter(14) ) + ( VCC ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( RANDI_Counter(14) ) + ( VCC ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RANDI_Counter(14),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X14_Y3_N44
\RANDI_Counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~49_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(14));

-- Location: LABCELL_X14_Y3_N45
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( RANDI_Counter(15) ) + ( VCC ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( RANDI_Counter(15) ) + ( VCC ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter(15),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X14_Y3_N47
\RANDI_Counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(15));

-- Location: LABCELL_X14_Y3_N48
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( RANDI_Counter(16) ) + ( VCC ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( RANDI_Counter(16) ) + ( VCC ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter(16),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X14_Y3_N50
\RANDI_Counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(16));

-- Location: LABCELL_X14_Y3_N51
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( RANDI_Counter(17) ) + ( VCC ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( RANDI_Counter(17) ) + ( VCC ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter(17),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X14_Y3_N53
\RANDI_Counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~61_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(17));

-- Location: LABCELL_X10_Y3_N36
\process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = ( !RANDI_Counter(17) & ( !RANDI_Counter(13) & ( (!RANDI_Counter(14) & (!RANDI_Counter(15) & (!RANDI_Counter(16) & !RANDI_Counter(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter(14),
	datab => ALT_INV_RANDI_Counter(15),
	datac => ALT_INV_RANDI_Counter(16),
	datad => ALT_INV_RANDI_Counter(11),
	datae => ALT_INV_RANDI_Counter(17),
	dataf => ALT_INV_RANDI_Counter(13),
	combout => \process_0~2_combout\);

-- Location: LABCELL_X14_Y3_N54
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( RANDI_Counter(18) ) + ( VCC ) + ( \Add0~62\ ))
-- \Add0~18\ = CARRY(( RANDI_Counter(18) ) + ( VCC ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter(18),
	cin => \Add0~62\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X14_Y3_N56
\RANDI_Counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(18));

-- Location: LABCELL_X14_Y3_N57
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( RANDI_Counter(19) ) + ( VCC ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( RANDI_Counter(19) ) + ( VCC ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter(19),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X14_Y3_N59
\RANDI_Counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(19));

-- Location: LABCELL_X14_Y2_N0
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( RANDI_Counter(20) ) + ( VCC ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( RANDI_Counter(20) ) + ( VCC ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter(20),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X14_Y2_N2
\RANDI_Counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(20));

-- Location: LABCELL_X14_Y2_N3
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( RANDI_Counter(21) ) + ( VCC ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( RANDI_Counter(21) ) + ( VCC ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter(21),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X14_Y2_N5
\RANDI_Counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(21));

-- Location: LABCELL_X14_Y2_N6
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( RANDI_Counter(22) ) + ( VCC ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( RANDI_Counter(22) ) + ( VCC ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RANDI_Counter(22),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X14_Y2_N8
\RANDI_Counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(22));

-- Location: LABCELL_X14_Y2_N9
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( RANDI_Counter(23) ) + ( VCC ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( RANDI_Counter(23) ) + ( VCC ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter(23),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X14_Y2_N11
\RANDI_Counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(23));

-- Location: LABCELL_X14_Y2_N42
\process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = ( !RANDI_Counter(20) & ( !RANDI_Counter(18) & ( (!RANDI_Counter(19) & (!RANDI_Counter(23) & (!RANDI_Counter(21) & !RANDI_Counter(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter(19),
	datab => ALT_INV_RANDI_Counter(23),
	datac => ALT_INV_RANDI_Counter(21),
	datad => ALT_INV_RANDI_Counter(22),
	datae => ALT_INV_RANDI_Counter(20),
	dataf => ALT_INV_RANDI_Counter(18),
	combout => \process_0~1_combout\);

-- Location: LABCELL_X14_Y2_N12
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( RANDI_Counter(24) ) + ( VCC ) + ( \Add0~38\ ))
-- \Add0~10\ = CARRY(( RANDI_Counter(24) ) + ( VCC ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RANDI_Counter(24),
	cin => \Add0~38\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X14_Y2_N14
\RANDI_Counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(24));

-- Location: LABCELL_X14_Y2_N15
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( RANDI_Counter(25) ) + ( VCC ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( RANDI_Counter(25) ) + ( VCC ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter(25),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X14_Y2_N17
\RANDI_Counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(25));

-- Location: LABCELL_X14_Y2_N36
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( !RANDI_Counter(24) & ( !RANDI_Counter(25) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter(25),
	dataf => ALT_INV_RANDI_Counter(24),
	combout => \process_0~0_combout\);

-- Location: LABCELL_X14_Y2_N18
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( RANDI_Counter(26) ) + ( VCC ) + ( \Add0~14\ ))
-- \Add0~70\ = CARRY(( RANDI_Counter(26) ) + ( VCC ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter(26),
	cin => \Add0~14\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X14_Y2_N20
\RANDI_Counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~69_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(26));

-- Location: LABCELL_X14_Y2_N21
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( RANDI_Counter(27) ) + ( VCC ) + ( \Add0~70\ ))
-- \Add0~90\ = CARRY(( RANDI_Counter(27) ) + ( VCC ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter(27),
	cin => \Add0~70\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X14_Y2_N23
\RANDI_Counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~89_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(27));

-- Location: LABCELL_X14_Y2_N24
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( RANDI_Counter(28) ) + ( VCC ) + ( \Add0~90\ ))
-- \Add0~74\ = CARRY(( RANDI_Counter(28) ) + ( VCC ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter(28),
	cin => \Add0~90\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X14_Y2_N26
\RANDI_Counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~73_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(28));

-- Location: LABCELL_X14_Y2_N27
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( RANDI_Counter(29) ) + ( VCC ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( RANDI_Counter(29) ) + ( VCC ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter(29),
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X14_Y2_N29
\RANDI_Counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~77_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(29));

-- Location: LABCELL_X14_Y2_N30
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( RANDI_Counter(30) ) + ( VCC ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( RANDI_Counter(30) ) + ( VCC ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RANDI_Counter(30),
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X14_Y2_N32
\RANDI_Counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~81_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \process_0~8_combout\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(30));

-- Location: LABCELL_X14_Y2_N33
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( RANDI_Counter(31) ) + ( VCC ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter(31),
	cin => \Add0~82\,
	sumout => \Add0~65_sumout\);

-- Location: LABCELL_X14_Y2_N54
\process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = ( !RANDI_Counter(9) & ( !RANDI_Counter(8) & ( (!RANDI_Counter(10) & (!RANDI_Counter(7) & (!RANDI_Counter(27) & !RANDI_Counter(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter(10),
	datab => ALT_INV_RANDI_Counter(7),
	datac => ALT_INV_RANDI_Counter(27),
	datad => ALT_INV_RANDI_Counter(12),
	datae => ALT_INV_RANDI_Counter(9),
	dataf => ALT_INV_RANDI_Counter(8),
	combout => \process_0~4_combout\);

-- Location: LABCELL_X10_Y3_N24
\process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = ( \process_0~2_combout\ & ( !\process_0~6_combout\ & ( (\process_0~3_combout\ & (\process_0~4_combout\ & (\process_0~0_combout\ & \process_0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~3_combout\,
	datab => \ALT_INV_process_0~4_combout\,
	datac => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_process_0~1_combout\,
	datae => \ALT_INV_process_0~2_combout\,
	dataf => \ALT_INV_process_0~6_combout\,
	combout => \process_0~7_combout\);

-- Location: LABCELL_X10_Y3_N18
\TopWiMax_input_ready~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \TopWiMax_input_ready~2_combout\ = ( \process_0~2_combout\ & ( \process_0~1_combout\ & ( (\process_0~0_combout\ & (\TopWiMax_input_ready~0_combout\ & (\process_0~3_combout\ & \process_0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_TopWiMax_input_ready~0_combout\,
	datac => \ALT_INV_process_0~3_combout\,
	datad => \ALT_INV_process_0~4_combout\,
	datae => \ALT_INV_process_0~2_combout\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \TopWiMax_input_ready~2_combout\);

-- Location: LABCELL_X14_Y2_N39
\RANDI_Counter[31]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI_Counter[31]~1_combout\ = ( \TopWiMax_input_ready~2_combout\ & ( (!\TopWiMax_wrapper_in_ready~input_o\ & (((RANDI_Counter(31))))) # (\TopWiMax_wrapper_in_ready~input_o\ & (\Add0~65_sumout\ & (\process_0~7_combout\))) ) ) # ( 
-- !\TopWiMax_input_ready~2_combout\ & ( (!\process_0~7_combout\ & (((RANDI_Counter(31))))) # (\process_0~7_combout\ & ((!\TopWiMax_wrapper_in_ready~input_o\ & ((RANDI_Counter(31)))) # (\TopWiMax_wrapper_in_ready~input_o\ & (\Add0~65_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111101000000011111110100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~65_sumout\,
	datab => \ALT_INV_process_0~7_combout\,
	datac => \ALT_INV_TopWiMax_wrapper_in_ready~input_o\,
	datad => ALT_INV_RANDI_Counter(31),
	dataf => \ALT_INV_TopWiMax_input_ready~2_combout\,
	combout => \RANDI_Counter[31]~1_combout\);

-- Location: FF_X14_Y2_N41
\RANDI_Counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI_Counter[31]~1_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter(31));

-- Location: LABCELL_X14_Y2_N48
\process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = ( !RANDI_Counter(29) & ( !\load~input_o\ & ( (!RANDI_Counter(26) & (!RANDI_Counter(30) & (!RANDI_Counter(28) & !RANDI_Counter(31)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter(26),
	datab => ALT_INV_RANDI_Counter(30),
	datac => ALT_INV_RANDI_Counter(28),
	datad => ALT_INV_RANDI_Counter(31),
	datae => ALT_INV_RANDI_Counter(29),
	dataf => \ALT_INV_load~input_o\,
	combout => \process_0~3_combout\);

-- Location: LABCELL_X10_Y3_N12
\process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = ( \process_0~4_combout\ & ( (\process_0~2_combout\ & (\process_0~1_combout\ & (\process_0~0_combout\ & \process_0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~2_combout\,
	datab => \ALT_INV_process_0~1_combout\,
	datac => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_process_0~3_combout\,
	dataf => \ALT_INV_process_0~4_combout\,
	combout => \process_0~5_combout\);

-- Location: MLABCELL_X13_Y3_N33
\TopWiMax_input_ready~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \TopWiMax_input_ready~1_combout\ = ( \TopWiMax_wrapper_in_ready~input_o\ & ( (\process_0~5_combout\ & ((!\LessThan1~0_combout\) # (\TopWiMax_input_ready~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~5_combout\,
	datab => \ALT_INV_TopWiMax_input_ready~0_combout\,
	datac => \ALT_INV_LessThan1~0_combout\,
	dataf => \ALT_INV_TopWiMax_wrapper_in_ready~input_o\,
	combout => \TopWiMax_input_ready~1_combout\);

-- Location: FF_X13_Y3_N32
TopWiMax_input_ready : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \TopWiMax_input_ready~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \TopWiMax_input_ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TopWiMax_input_ready~q\);

-- Location: MLABCELL_X9_Y4_N57
\twimax_wrap|RANDI1|counter_reset_seed[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\ = ( \TopWiMax_input_ready~q\ & ( !\load~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_load~input_o\,
	dataf => \ALT_INV_TopWiMax_input_ready~q\,
	combout => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\);

-- Location: FF_X9_Y5_N2
\twimax_wrap|RANDI1|counter_reset_seed[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~5_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(0));

-- Location: MLABCELL_X9_Y5_N3
\twimax_wrap|RANDI1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~13_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(1) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~6\ ))
-- \twimax_wrap|RANDI1|Add0~14\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(1) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(1),
	cin => \twimax_wrap|RANDI1|Add0~6\,
	sumout => \twimax_wrap|RANDI1|Add0~13_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~14\);

-- Location: FF_X9_Y5_N5
\twimax_wrap|RANDI1|counter_reset_seed[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~13_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(1));

-- Location: MLABCELL_X9_Y5_N6
\twimax_wrap|RANDI1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~53_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(2) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~14\ ))
-- \twimax_wrap|RANDI1|Add0~54\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(2) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(2),
	cin => \twimax_wrap|RANDI1|Add0~14\,
	sumout => \twimax_wrap|RANDI1|Add0~53_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~54\);

-- Location: FF_X9_Y5_N8
\twimax_wrap|RANDI1|counter_reset_seed[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~53_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(2));

-- Location: MLABCELL_X9_Y5_N9
\twimax_wrap|RANDI1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~49_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(3) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~54\ ))
-- \twimax_wrap|RANDI1|Add0~50\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(3) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(3),
	cin => \twimax_wrap|RANDI1|Add0~54\,
	sumout => \twimax_wrap|RANDI1|Add0~49_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~50\);

-- Location: FF_X9_Y5_N11
\twimax_wrap|RANDI1|counter_reset_seed[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~49_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(3));

-- Location: MLABCELL_X9_Y5_N12
\twimax_wrap|RANDI1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~45_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(4) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~50\ ))
-- \twimax_wrap|RANDI1|Add0~46\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(4) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(4),
	cin => \twimax_wrap|RANDI1|Add0~50\,
	sumout => \twimax_wrap|RANDI1|Add0~45_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~46\);

-- Location: FF_X9_Y5_N14
\twimax_wrap|RANDI1|counter_reset_seed[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~45_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(4));

-- Location: MLABCELL_X9_Y5_N15
\twimax_wrap|RANDI1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~41_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(5) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~46\ ))
-- \twimax_wrap|RANDI1|Add0~42\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(5) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(5),
	cin => \twimax_wrap|RANDI1|Add0~46\,
	sumout => \twimax_wrap|RANDI1|Add0~41_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~42\);

-- Location: FF_X9_Y5_N17
\twimax_wrap|RANDI1|counter_reset_seed[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~41_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(5));

-- Location: MLABCELL_X9_Y5_N18
\twimax_wrap|RANDI1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~37_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(6) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~42\ ))
-- \twimax_wrap|RANDI1|Add0~38\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(6) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(6),
	cin => \twimax_wrap|RANDI1|Add0~42\,
	sumout => \twimax_wrap|RANDI1|Add0~37_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~38\);

-- Location: FF_X9_Y5_N20
\twimax_wrap|RANDI1|counter_reset_seed[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~37_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(6));

-- Location: MLABCELL_X9_Y5_N21
\twimax_wrap|RANDI1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~33_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(7) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~38\ ))
-- \twimax_wrap|RANDI1|Add0~34\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(7) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(7),
	cin => \twimax_wrap|RANDI1|Add0~38\,
	sumout => \twimax_wrap|RANDI1|Add0~33_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~34\);

-- Location: FF_X9_Y5_N23
\twimax_wrap|RANDI1|counter_reset_seed[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~33_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(7));

-- Location: MLABCELL_X9_Y5_N24
\twimax_wrap|RANDI1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~77_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(8) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~34\ ))
-- \twimax_wrap|RANDI1|Add0~78\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(8) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(8),
	cin => \twimax_wrap|RANDI1|Add0~34\,
	sumout => \twimax_wrap|RANDI1|Add0~77_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~78\);

-- Location: FF_X9_Y5_N26
\twimax_wrap|RANDI1|counter_reset_seed[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~77_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(8));

-- Location: MLABCELL_X9_Y5_N27
\twimax_wrap|RANDI1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~73_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(9) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~78\ ))
-- \twimax_wrap|RANDI1|Add0~74\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(9) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(9),
	cin => \twimax_wrap|RANDI1|Add0~78\,
	sumout => \twimax_wrap|RANDI1|Add0~73_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~74\);

-- Location: FF_X9_Y5_N29
\twimax_wrap|RANDI1|counter_reset_seed[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~73_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(9));

-- Location: MLABCELL_X9_Y5_N30
\twimax_wrap|RANDI1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~69_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(10) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~74\ ))
-- \twimax_wrap|RANDI1|Add0~70\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(10) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(10),
	cin => \twimax_wrap|RANDI1|Add0~74\,
	sumout => \twimax_wrap|RANDI1|Add0~69_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~70\);

-- Location: FF_X9_Y5_N32
\twimax_wrap|RANDI1|counter_reset_seed[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~69_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(10));

-- Location: MLABCELL_X9_Y5_N33
\twimax_wrap|RANDI1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~9_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(11) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~70\ ))
-- \twimax_wrap|RANDI1|Add0~10\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(11) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(11),
	cin => \twimax_wrap|RANDI1|Add0~70\,
	sumout => \twimax_wrap|RANDI1|Add0~9_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~10\);

-- Location: FF_X9_Y5_N35
\twimax_wrap|RANDI1|counter_reset_seed[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~9_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(11));

-- Location: MLABCELL_X9_Y5_N36
\twimax_wrap|RANDI1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~65_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(12) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~10\ ))
-- \twimax_wrap|RANDI1|Add0~66\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(12) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(12),
	cin => \twimax_wrap|RANDI1|Add0~10\,
	sumout => \twimax_wrap|RANDI1|Add0~65_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~66\);

-- Location: FF_X9_Y5_N38
\twimax_wrap|RANDI1|counter_reset_seed[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~65_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(12));

-- Location: MLABCELL_X9_Y5_N39
\twimax_wrap|RANDI1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~61_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(13) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~66\ ))
-- \twimax_wrap|RANDI1|Add0~62\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(13) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(13),
	cin => \twimax_wrap|RANDI1|Add0~66\,
	sumout => \twimax_wrap|RANDI1|Add0~61_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~62\);

-- Location: FF_X9_Y5_N41
\twimax_wrap|RANDI1|counter_reset_seed[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~61_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(13));

-- Location: MLABCELL_X9_Y5_N42
\twimax_wrap|RANDI1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~57_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(14) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~62\ ))
-- \twimax_wrap|RANDI1|Add0~58\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(14) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(14),
	cin => \twimax_wrap|RANDI1|Add0~62\,
	sumout => \twimax_wrap|RANDI1|Add0~57_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~58\);

-- Location: FF_X9_Y5_N44
\twimax_wrap|RANDI1|counter_reset_seed[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~57_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(14));

-- Location: MLABCELL_X9_Y5_N45
\twimax_wrap|RANDI1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~89_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(15) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~58\ ))
-- \twimax_wrap|RANDI1|Add0~90\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(15) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(15),
	cin => \twimax_wrap|RANDI1|Add0~58\,
	sumout => \twimax_wrap|RANDI1|Add0~89_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~90\);

-- Location: FF_X9_Y5_N47
\twimax_wrap|RANDI1|counter_reset_seed[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~89_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(15));

-- Location: MLABCELL_X9_Y5_N48
\twimax_wrap|RANDI1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~85_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(16) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~90\ ))
-- \twimax_wrap|RANDI1|Add0~86\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(16) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(16),
	cin => \twimax_wrap|RANDI1|Add0~90\,
	sumout => \twimax_wrap|RANDI1|Add0~85_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~86\);

-- Location: FF_X9_Y5_N50
\twimax_wrap|RANDI1|counter_reset_seed[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~85_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(16));

-- Location: MLABCELL_X9_Y5_N51
\twimax_wrap|RANDI1|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~125_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(17) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~86\ ))
-- \twimax_wrap|RANDI1|Add0~126\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(17) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(17),
	cin => \twimax_wrap|RANDI1|Add0~86\,
	sumout => \twimax_wrap|RANDI1|Add0~125_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~126\);

-- Location: FF_X9_Y5_N53
\twimax_wrap|RANDI1|counter_reset_seed[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~125_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(17));

-- Location: MLABCELL_X9_Y5_N54
\twimax_wrap|RANDI1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~97_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(18) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~126\ ))
-- \twimax_wrap|RANDI1|Add0~98\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(18) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(18),
	cin => \twimax_wrap|RANDI1|Add0~126\,
	sumout => \twimax_wrap|RANDI1|Add0~97_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~98\);

-- Location: FF_X9_Y5_N56
\twimax_wrap|RANDI1|counter_reset_seed[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~97_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(18));

-- Location: MLABCELL_X9_Y5_N57
\twimax_wrap|RANDI1|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~117_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(19) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~98\ ))
-- \twimax_wrap|RANDI1|Add0~118\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(19) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(19),
	cin => \twimax_wrap|RANDI1|Add0~98\,
	sumout => \twimax_wrap|RANDI1|Add0~117_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~118\);

-- Location: FF_X9_Y5_N59
\twimax_wrap|RANDI1|counter_reset_seed[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~117_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(19));

-- Location: MLABCELL_X9_Y4_N0
\twimax_wrap|RANDI1|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~113_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(20) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~118\ ))
-- \twimax_wrap|RANDI1|Add0~114\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(20) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(20),
	cin => \twimax_wrap|RANDI1|Add0~118\,
	sumout => \twimax_wrap|RANDI1|Add0~113_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~114\);

-- Location: FF_X9_Y4_N2
\twimax_wrap|RANDI1|counter_reset_seed[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~113_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(20));

-- Location: MLABCELL_X9_Y4_N3
\twimax_wrap|RANDI1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~81_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(21) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~114\ ))
-- \twimax_wrap|RANDI1|Add0~82\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(21) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(21),
	cin => \twimax_wrap|RANDI1|Add0~114\,
	sumout => \twimax_wrap|RANDI1|Add0~81_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~82\);

-- Location: FF_X9_Y4_N5
\twimax_wrap|RANDI1|counter_reset_seed[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~81_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(21));

-- Location: MLABCELL_X9_Y4_N6
\twimax_wrap|RANDI1|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~109_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(22) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~82\ ))
-- \twimax_wrap|RANDI1|Add0~110\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(22) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(22),
	cin => \twimax_wrap|RANDI1|Add0~82\,
	sumout => \twimax_wrap|RANDI1|Add0~109_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~110\);

-- Location: FF_X9_Y4_N8
\twimax_wrap|RANDI1|counter_reset_seed[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~109_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(22));

-- Location: MLABCELL_X9_Y4_N9
\twimax_wrap|RANDI1|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~105_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(23) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~110\ ))
-- \twimax_wrap|RANDI1|Add0~106\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(23) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(23),
	cin => \twimax_wrap|RANDI1|Add0~110\,
	sumout => \twimax_wrap|RANDI1|Add0~105_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~106\);

-- Location: FF_X9_Y4_N11
\twimax_wrap|RANDI1|counter_reset_seed[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~105_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(23));

-- Location: MLABCELL_X9_Y4_N12
\twimax_wrap|RANDI1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~101_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(24) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~106\ ))
-- \twimax_wrap|RANDI1|Add0~102\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(24) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(24),
	cin => \twimax_wrap|RANDI1|Add0~106\,
	sumout => \twimax_wrap|RANDI1|Add0~101_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~102\);

-- Location: FF_X9_Y4_N14
\twimax_wrap|RANDI1|counter_reset_seed[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~101_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(24));

-- Location: MLABCELL_X9_Y4_N15
\twimax_wrap|RANDI1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~17_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(25) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~102\ ))
-- \twimax_wrap|RANDI1|Add0~18\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(25) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(25),
	cin => \twimax_wrap|RANDI1|Add0~102\,
	sumout => \twimax_wrap|RANDI1|Add0~17_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~18\);

-- Location: FF_X9_Y4_N17
\twimax_wrap|RANDI1|counter_reset_seed[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~17_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(25));

-- Location: MLABCELL_X9_Y4_N18
\twimax_wrap|RANDI1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~21_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(26) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~18\ ))
-- \twimax_wrap|RANDI1|Add0~22\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(26) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(26),
	cin => \twimax_wrap|RANDI1|Add0~18\,
	sumout => \twimax_wrap|RANDI1|Add0~21_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~22\);

-- Location: FF_X9_Y4_N20
\twimax_wrap|RANDI1|counter_reset_seed[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~21_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(26));

-- Location: MLABCELL_X9_Y4_N21
\twimax_wrap|RANDI1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~25_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(27) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~22\ ))
-- \twimax_wrap|RANDI1|Add0~26\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(27) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(27),
	cin => \twimax_wrap|RANDI1|Add0~22\,
	sumout => \twimax_wrap|RANDI1|Add0~25_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~26\);

-- Location: FF_X9_Y4_N23
\twimax_wrap|RANDI1|counter_reset_seed[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~25_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(27));

-- Location: MLABCELL_X9_Y4_N24
\twimax_wrap|RANDI1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~29_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(28) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~26\ ))
-- \twimax_wrap|RANDI1|Add0~30\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(28) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(28),
	cin => \twimax_wrap|RANDI1|Add0~26\,
	sumout => \twimax_wrap|RANDI1|Add0~29_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~30\);

-- Location: FF_X9_Y4_N26
\twimax_wrap|RANDI1|counter_reset_seed[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~29_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(28));

-- Location: MLABCELL_X9_Y4_N42
\twimax_wrap|RANDI1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Equal0~1_combout\ = ( !\twimax_wrap|RANDI1|counter_reset_seed\(11) & ( !\twimax_wrap|RANDI1|counter_reset_seed\(28) & ( (!\twimax_wrap|RANDI1|counter_reset_seed\(27) & (!\twimax_wrap|RANDI1|counter_reset_seed\(25) & 
-- (!\twimax_wrap|RANDI1|counter_reset_seed\(26) & \twimax_wrap|RANDI1|counter_reset_seed\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(27),
	datab => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(25),
	datac => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(26),
	datad => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(1),
	datae => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(11),
	dataf => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(28),
	combout => \twimax_wrap|RANDI1|Equal0~1_combout\);

-- Location: MLABCELL_X9_Y4_N27
\twimax_wrap|RANDI1|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~121_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(29) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~30\ ))
-- \twimax_wrap|RANDI1|Add0~122\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(29) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(29),
	cin => \twimax_wrap|RANDI1|Add0~30\,
	sumout => \twimax_wrap|RANDI1|Add0~121_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~122\);

-- Location: FF_X9_Y4_N29
\twimax_wrap|RANDI1|counter_reset_seed[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~121_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(29));

-- Location: MLABCELL_X9_Y4_N30
\twimax_wrap|RANDI1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~1_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(30) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~122\ ))
-- \twimax_wrap|RANDI1|Add0~2\ = CARRY(( \twimax_wrap|RANDI1|counter_reset_seed\(30) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(30),
	cin => \twimax_wrap|RANDI1|Add0~122\,
	sumout => \twimax_wrap|RANDI1|Add0~1_sumout\,
	cout => \twimax_wrap|RANDI1|Add0~2\);

-- Location: FF_X9_Y4_N32
\twimax_wrap|RANDI1|counter_reset_seed[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|Add0~1_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|RANDI1|Equal0~7_combout\,
	ena => \twimax_wrap|RANDI1|counter_reset_seed[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(30));

-- Location: MLABCELL_X9_Y4_N33
\twimax_wrap|RANDI1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Add0~93_sumout\ = SUM(( \twimax_wrap|RANDI1|counter_reset_seed\(31) ) + ( GND ) + ( \twimax_wrap|RANDI1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(31),
	cin => \twimax_wrap|RANDI1|Add0~2\,
	sumout => \twimax_wrap|RANDI1|Add0~93_sumout\);

-- Location: MLABCELL_X9_Y4_N51
\twimax_wrap|RANDI1|counter_reset_seed[31]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|counter_reset_seed[31]~1_combout\ = ( \twimax_wrap|RANDI1|Add0~93_sumout\ & ( ((\TopWiMax_input_ready~q\ & !\load~input_o\)) # (\twimax_wrap|RANDI1|counter_reset_seed\(31)) ) ) # ( !\twimax_wrap|RANDI1|Add0~93_sumout\ & ( 
-- (\twimax_wrap|RANDI1|counter_reset_seed\(31) & ((!\TopWiMax_input_ready~q\) # (\load~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111000000001010111101010000111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_TopWiMax_input_ready~q\,
	datac => \ALT_INV_load~input_o\,
	datad => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(31),
	dataf => \twimax_wrap|RANDI1|ALT_INV_Add0~93_sumout\,
	combout => \twimax_wrap|RANDI1|counter_reset_seed[31]~1_combout\);

-- Location: FF_X9_Y4_N53
\twimax_wrap|RANDI1|counter_reset_seed[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|counter_reset_seed[31]~1_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|counter_reset_seed\(31));

-- Location: MLABCELL_X9_Y4_N36
\twimax_wrap|RANDI1|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Equal0~4_combout\ = ( !\twimax_wrap|RANDI1|counter_reset_seed\(24) & ( (!\twimax_wrap|RANDI1|counter_reset_seed\(18) & (!\twimax_wrap|RANDI1|counter_reset_seed\(22) & (!\twimax_wrap|RANDI1|counter_reset_seed\(31) & 
-- !\twimax_wrap|RANDI1|counter_reset_seed\(23)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(18),
	datab => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(22),
	datac => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(31),
	datad => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(23),
	dataf => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(24),
	combout => \twimax_wrap|RANDI1|Equal0~4_combout\);

-- Location: MLABCELL_X9_Y4_N48
\twimax_wrap|RANDI1|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Equal0~5_combout\ = ( !\twimax_wrap|RANDI1|counter_reset_seed\(19) & ( (!\twimax_wrap|RANDI1|counter_reset_seed\(17) & (!\twimax_wrap|RANDI1|counter_reset_seed\(29) & !\twimax_wrap|RANDI1|counter_reset_seed\(20))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(17),
	datac => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(29),
	datad => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(20),
	dataf => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(19),
	combout => \twimax_wrap|RANDI1|Equal0~5_combout\);

-- Location: MLABCELL_X9_Y4_N54
\twimax_wrap|RANDI1|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Equal0~6_combout\ = ( !\twimax_wrap|RANDI1|counter_reset_seed\(16) & ( (\twimax_wrap|RANDI1|Equal0~4_combout\ & (!\twimax_wrap|RANDI1|counter_reset_seed\(15) & (\twimax_wrap|RANDI1|Equal0~5_combout\ & 
-- !\twimax_wrap|RANDI1|counter_reset_seed\(21)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|RANDI1|ALT_INV_Equal0~4_combout\,
	datab => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(15),
	datac => \twimax_wrap|RANDI1|ALT_INV_Equal0~5_combout\,
	datad => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(21),
	dataf => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(16),
	combout => \twimax_wrap|RANDI1|Equal0~6_combout\);

-- Location: LABCELL_X10_Y5_N30
\twimax_wrap|RANDI1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Equal0~2_combout\ = ( !\twimax_wrap|RANDI1|counter_reset_seed\(7) & ( \twimax_wrap|RANDI1|counter_reset_seed\(2) & ( (\twimax_wrap|RANDI1|counter_reset_seed\(4) & (!\twimax_wrap|RANDI1|counter_reset_seed\(5) & 
-- (\twimax_wrap|RANDI1|counter_reset_seed\(6) & \twimax_wrap|RANDI1|counter_reset_seed\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(4),
	datab => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(5),
	datac => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(6),
	datad => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(3),
	datae => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(7),
	dataf => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(2),
	combout => \twimax_wrap|RANDI1|Equal0~2_combout\);

-- Location: MLABCELL_X9_Y6_N0
\twimax_wrap|RANDI1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Equal0~3_combout\ = ( !\twimax_wrap|RANDI1|counter_reset_seed\(13) & ( !\twimax_wrap|RANDI1|counter_reset_seed\(8) & ( (!\twimax_wrap|RANDI1|counter_reset_seed\(14) & (!\twimax_wrap|RANDI1|counter_reset_seed\(12) & 
-- (!\twimax_wrap|RANDI1|counter_reset_seed\(9) & !\twimax_wrap|RANDI1|counter_reset_seed\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(14),
	datab => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(12),
	datac => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(9),
	datad => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(10),
	datae => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(13),
	dataf => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(8),
	combout => \twimax_wrap|RANDI1|Equal0~3_combout\);

-- Location: MLABCELL_X9_Y4_N39
\twimax_wrap|RANDI1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Equal0~0_combout\ = ( \twimax_wrap|RANDI1|counter_reset_seed\(0) & ( !\twimax_wrap|RANDI1|counter_reset_seed\(30) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(30),
	dataf => \twimax_wrap|RANDI1|ALT_INV_counter_reset_seed\(0),
	combout => \twimax_wrap|RANDI1|Equal0~0_combout\);

-- Location: LABCELL_X10_Y4_N51
\twimax_wrap|RANDI1|Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|Equal0~7_combout\ = ( \twimax_wrap|RANDI1|Equal0~0_combout\ & ( (\twimax_wrap|RANDI1|Equal0~1_combout\ & (\twimax_wrap|RANDI1|Equal0~6_combout\ & (\twimax_wrap|RANDI1|Equal0~2_combout\ & \twimax_wrap|RANDI1|Equal0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|RANDI1|ALT_INV_Equal0~1_combout\,
	datab => \twimax_wrap|RANDI1|ALT_INV_Equal0~6_combout\,
	datac => \twimax_wrap|RANDI1|ALT_INV_Equal0~2_combout\,
	datad => \twimax_wrap|RANDI1|ALT_INV_Equal0~3_combout\,
	dataf => \twimax_wrap|RANDI1|ALT_INV_Equal0~0_combout\,
	combout => \twimax_wrap|RANDI1|Equal0~7_combout\);

-- Location: LABCELL_X10_Y4_N15
\twimax_wrap|RANDI1|seed_reg[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|seed_reg[10]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \twimax_wrap|RANDI1|seed_reg[10]~feeder_combout\);

-- Location: LABCELL_X10_Y4_N48
\twimax_wrap|RANDI1|seed_reg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|seed_reg[6]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \twimax_wrap|RANDI1|seed_reg[6]~feeder_combout\);

-- Location: LABCELL_X10_Y4_N57
\twimax_wrap|RANDI1|seed_reg[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|seed_reg[5]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \twimax_wrap|RANDI1|seed_reg[5]~feeder_combout\);

-- Location: LABCELL_X10_Y4_N54
\twimax_wrap|RANDI1|seed_reg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|seed_reg[4]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \twimax_wrap|RANDI1|seed_reg[4]~feeder_combout\);

-- Location: LABCELL_X10_Y4_N30
\twimax_wrap|RANDI1|seed_reg[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|seed_reg[2]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \twimax_wrap|RANDI1|seed_reg[2]~feeder_combout\);

-- Location: LABCELL_X10_Y4_N9
\twimax_wrap|RANDI1|seed_reg[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|seed_reg[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \twimax_wrap|RANDI1|seed_reg[1]~feeder_combout\);

-- Location: LABCELL_X10_Y4_N0
\twimax_wrap|RANDI1|seed_reg[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|seed_reg[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \twimax_wrap|RANDI1|seed_reg[14]~feeder_combout\);

-- Location: LABCELL_X10_Y4_N42
\twimax_wrap|RANDI1|seed_reg[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|seed_reg[0]~2_combout\ = ( \twimax_wrap|RANDI1|Equal0~3_combout\ & ( \twimax_wrap|RANDI1|Equal0~1_combout\ & ( (!\load~input_o\ & ((!\twimax_wrap|RANDI1|Equal0~0_combout\) # ((!\twimax_wrap|RANDI1|Equal0~2_combout\) # 
-- (!\twimax_wrap|RANDI1|Equal0~6_combout\)))) ) ) ) # ( !\twimax_wrap|RANDI1|Equal0~3_combout\ & ( \twimax_wrap|RANDI1|Equal0~1_combout\ & ( !\load~input_o\ ) ) ) # ( \twimax_wrap|RANDI1|Equal0~3_combout\ & ( !\twimax_wrap|RANDI1|Equal0~1_combout\ & ( 
-- !\load~input_o\ ) ) ) # ( !\twimax_wrap|RANDI1|Equal0~3_combout\ & ( !\twimax_wrap|RANDI1|Equal0~1_combout\ & ( !\load~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|RANDI1|ALT_INV_Equal0~0_combout\,
	datab => \twimax_wrap|RANDI1|ALT_INV_Equal0~2_combout\,
	datac => \twimax_wrap|RANDI1|ALT_INV_Equal0~6_combout\,
	datad => \ALT_INV_load~input_o\,
	datae => \twimax_wrap|RANDI1|ALT_INV_Equal0~3_combout\,
	dataf => \twimax_wrap|RANDI1|ALT_INV_Equal0~1_combout\,
	combout => \twimax_wrap|RANDI1|seed_reg[0]~2_combout\);

-- Location: LABCELL_X10_Y4_N33
\twimax_wrap|RANDI1|seed_reg[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|seed_reg[0]~1_combout\ = ( \TopWiMax_input_ready~q\ ) # ( !\TopWiMax_input_ready~q\ & ( \load~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_load~input_o\,
	dataf => \ALT_INV_TopWiMax_input_ready~q\,
	combout => \twimax_wrap|RANDI1|seed_reg[0]~1_combout\);

-- Location: FF_X10_Y4_N2
\twimax_wrap|RANDI1|seed_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|seed_reg[14]~feeder_combout\,
	asdata => \twimax_wrap|RANDI1|seed_reg\(13),
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sload => \twimax_wrap|RANDI1|seed_reg[0]~2_combout\,
	ena => \twimax_wrap|RANDI1|seed_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|seed_reg\(14));

-- Location: LABCELL_X10_Y4_N39
\twimax_wrap|RANDI1|seed_reg~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|seed_reg~8_combout\ = ( !\twimax_wrap|RANDI1|Equal0~7_combout\ & ( (\TopWiMax_input_ready~q\ & (!\load~input_o\ & (!\twimax_wrap|RANDI1|seed_reg\(13) $ (!\twimax_wrap|RANDI1|seed_reg\(14))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000100000000100000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|RANDI1|ALT_INV_seed_reg\(13),
	datab => \ALT_INV_TopWiMax_input_ready~q\,
	datac => \ALT_INV_load~input_o\,
	datad => \twimax_wrap|RANDI1|ALT_INV_seed_reg\(14),
	dataf => \twimax_wrap|RANDI1|ALT_INV_Equal0~7_combout\,
	combout => \twimax_wrap|RANDI1|seed_reg~8_combout\);

-- Location: FF_X10_Y4_N41
\twimax_wrap|RANDI1|seed_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|seed_reg~8_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|RANDI1|seed_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|seed_reg\(0));

-- Location: FF_X10_Y4_N10
\twimax_wrap|RANDI1|seed_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|seed_reg[1]~feeder_combout\,
	asdata => \twimax_wrap|RANDI1|seed_reg\(0),
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sload => \twimax_wrap|RANDI1|seed_reg[0]~2_combout\,
	ena => \twimax_wrap|RANDI1|seed_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|seed_reg\(1));

-- Location: FF_X10_Y4_N32
\twimax_wrap|RANDI1|seed_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|seed_reg[2]~feeder_combout\,
	asdata => \twimax_wrap|RANDI1|seed_reg\(1),
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sload => \twimax_wrap|RANDI1|seed_reg[0]~2_combout\,
	ena => \twimax_wrap|RANDI1|seed_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|seed_reg\(2));

-- Location: LABCELL_X10_Y4_N21
\twimax_wrap|RANDI1|seed_reg~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|seed_reg~7_combout\ = ( !\twimax_wrap|RANDI1|Equal0~7_combout\ & ( (!\load~input_o\ & \twimax_wrap|RANDI1|seed_reg\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_load~input_o\,
	datac => \twimax_wrap|RANDI1|ALT_INV_seed_reg\(2),
	dataf => \twimax_wrap|RANDI1|ALT_INV_Equal0~7_combout\,
	combout => \twimax_wrap|RANDI1|seed_reg~7_combout\);

-- Location: FF_X10_Y4_N23
\twimax_wrap|RANDI1|seed_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|seed_reg~7_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|RANDI1|seed_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|seed_reg\(3));

-- Location: FF_X10_Y4_N56
\twimax_wrap|RANDI1|seed_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|seed_reg[4]~feeder_combout\,
	asdata => \twimax_wrap|RANDI1|seed_reg\(3),
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sload => \twimax_wrap|RANDI1|seed_reg[0]~2_combout\,
	ena => \twimax_wrap|RANDI1|seed_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|seed_reg\(4));

-- Location: FF_X10_Y4_N59
\twimax_wrap|RANDI1|seed_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|seed_reg[5]~feeder_combout\,
	asdata => \twimax_wrap|RANDI1|seed_reg\(4),
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sload => \twimax_wrap|RANDI1|seed_reg[0]~2_combout\,
	ena => \twimax_wrap|RANDI1|seed_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|seed_reg\(5));

-- Location: FF_X10_Y4_N49
\twimax_wrap|RANDI1|seed_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|seed_reg[6]~feeder_combout\,
	asdata => \twimax_wrap|RANDI1|seed_reg\(5),
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sload => \twimax_wrap|RANDI1|seed_reg[0]~2_combout\,
	ena => \twimax_wrap|RANDI1|seed_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|seed_reg\(6));

-- Location: LABCELL_X10_Y4_N27
\twimax_wrap|RANDI1|seed_reg~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|seed_reg~6_combout\ = (!\twimax_wrap|RANDI1|Equal0~7_combout\ & (!\load~input_o\ & \twimax_wrap|RANDI1|seed_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|RANDI1|ALT_INV_Equal0~7_combout\,
	datab => \ALT_INV_load~input_o\,
	datad => \twimax_wrap|RANDI1|ALT_INV_seed_reg\(6),
	combout => \twimax_wrap|RANDI1|seed_reg~6_combout\);

-- Location: FF_X10_Y4_N28
\twimax_wrap|RANDI1|seed_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|seed_reg~6_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|RANDI1|seed_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|seed_reg\(7));

-- Location: LABCELL_X10_Y4_N24
\twimax_wrap|RANDI1|seed_reg~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|seed_reg~5_combout\ = ( \twimax_wrap|RANDI1|seed_reg\(7) & ( (!\load~input_o\ & !\twimax_wrap|RANDI1|Equal0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_load~input_o\,
	datac => \twimax_wrap|RANDI1|ALT_INV_Equal0~7_combout\,
	dataf => \twimax_wrap|RANDI1|ALT_INV_seed_reg\(7),
	combout => \twimax_wrap|RANDI1|seed_reg~5_combout\);

-- Location: FF_X10_Y4_N25
\twimax_wrap|RANDI1|seed_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|seed_reg~5_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|RANDI1|seed_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|seed_reg\(8));

-- Location: LABCELL_X10_Y4_N18
\twimax_wrap|RANDI1|seed_reg~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|seed_reg~4_combout\ = ( \twimax_wrap|RANDI1|seed_reg\(8) & ( (!\load~input_o\ & !\twimax_wrap|RANDI1|Equal0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_load~input_o\,
	datac => \twimax_wrap|RANDI1|ALT_INV_Equal0~7_combout\,
	dataf => \twimax_wrap|RANDI1|ALT_INV_seed_reg\(8),
	combout => \twimax_wrap|RANDI1|seed_reg~4_combout\);

-- Location: FF_X10_Y4_N20
\twimax_wrap|RANDI1|seed_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|seed_reg~4_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|RANDI1|seed_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|seed_reg\(9));

-- Location: FF_X10_Y4_N16
\twimax_wrap|RANDI1|seed_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|seed_reg[10]~feeder_combout\,
	asdata => \twimax_wrap|RANDI1|seed_reg\(9),
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sload => \twimax_wrap|RANDI1|seed_reg[0]~2_combout\,
	ena => \twimax_wrap|RANDI1|seed_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|seed_reg\(10));

-- Location: LABCELL_X10_Y4_N12
\twimax_wrap|RANDI1|seed_reg~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|seed_reg~3_combout\ = ( \twimax_wrap|RANDI1|seed_reg\(10) & ( (!\load~input_o\ & !\twimax_wrap|RANDI1|Equal0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_load~input_o\,
	datac => \twimax_wrap|RANDI1|ALT_INV_Equal0~7_combout\,
	dataf => \twimax_wrap|RANDI1|ALT_INV_seed_reg\(10),
	combout => \twimax_wrap|RANDI1|seed_reg~3_combout\);

-- Location: FF_X10_Y4_N14
\twimax_wrap|RANDI1|seed_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|seed_reg~3_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|RANDI1|seed_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|seed_reg\(11));

-- Location: FF_X10_Y4_N7
\twimax_wrap|RANDI1|seed_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|seed_reg[12]~feeder_combout\,
	asdata => \twimax_wrap|RANDI1|seed_reg\(11),
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sload => \twimax_wrap|RANDI1|seed_reg[0]~2_combout\,
	ena => \twimax_wrap|RANDI1|seed_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|seed_reg\(12));

-- Location: LABCELL_X10_Y4_N3
\twimax_wrap|RANDI1|seed_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|seed_reg~0_combout\ = ( !\twimax_wrap|RANDI1|Equal0~7_combout\ & ( (!\load~input_o\ & \twimax_wrap|RANDI1|seed_reg\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_load~input_o\,
	datad => \twimax_wrap|RANDI1|ALT_INV_seed_reg\(12),
	dataf => \twimax_wrap|RANDI1|ALT_INV_Equal0~7_combout\,
	combout => \twimax_wrap|RANDI1|seed_reg~0_combout\);

-- Location: FF_X10_Y4_N5
\twimax_wrap|RANDI1|seed_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|RANDI1|seed_reg~0_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|RANDI1|seed_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|RANDI1|seed_reg\(13));

-- Location: MLABCELL_X13_Y3_N48
\WiInput~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \WiInput~2_combout\ = ( !RANDI_Counter(5) & ( RANDI_Counter(4) & ( (!RANDI_Counter(3) & (!RANDI_Counter(2) $ (((!RANDI_Counter(0) & RANDI_Counter(1)))))) # (RANDI_Counter(3) & (((RANDI_Counter(0) & RANDI_Counter(1))))) ) ) ) # ( !RANDI_Counter(5) & ( 
-- !RANDI_Counter(4) & ( (!RANDI_Counter(2) & ((!RANDI_Counter(0)) # ((RANDI_Counter(3) & RANDI_Counter(1))))) # (RANDI_Counter(2) & (((!RANDI_Counter(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110110001010000000000000000010100000011000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter(2),
	datab => ALT_INV_RANDI_Counter(0),
	datac => ALT_INV_RANDI_Counter(3),
	datad => ALT_INV_RANDI_Counter(1),
	datae => ALT_INV_RANDI_Counter(5),
	dataf => ALT_INV_RANDI_Counter(4),
	combout => \WiInput~2_combout\);

-- Location: MLABCELL_X13_Y3_N24
\WiInput~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \WiInput~3_combout\ = ( RANDI_Counter(5) & ( RANDI_Counter(4) & ( (!RANDI_Counter(0) & (((!RANDI_Counter(3)) # (!RANDI_Counter(1))))) # (RANDI_Counter(0) & (!RANDI_Counter(2) & (!RANDI_Counter(3) & !RANDI_Counter(1)))) ) ) ) # ( !RANDI_Counter(5) & ( 
-- RANDI_Counter(4) & ( (!RANDI_Counter(3) & (RANDI_Counter(2) & ((!RANDI_Counter(0)) # (RANDI_Counter(1))))) # (RANDI_Counter(3) & (!RANDI_Counter(1) $ (((!RANDI_Counter(2)) # (!RANDI_Counter(0)))))) ) ) ) # ( RANDI_Counter(5) & ( !RANDI_Counter(4) & ( 
-- (!RANDI_Counter(2) & ((!RANDI_Counter(0) & (!RANDI_Counter(3))) # (RANDI_Counter(0) & ((RANDI_Counter(1)) # (RANDI_Counter(3)))))) # (RANDI_Counter(2) & (RANDI_Counter(1) & (!RANDI_Counter(0) $ (RANDI_Counter(3))))) ) ) ) # ( !RANDI_Counter(5) & ( 
-- !RANDI_Counter(4) & ( (!RANDI_Counter(1) & (RANDI_Counter(2) & (!RANDI_Counter(0) $ (RANDI_Counter(3))))) # (RANDI_Counter(1) & ((!RANDI_Counter(0) & (!RANDI_Counter(2))) # (RANDI_Counter(0) & ((!RANDI_Counter(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110111000100000101110001101000001010111101110110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter(2),
	datab => ALT_INV_RANDI_Counter(0),
	datac => ALT_INV_RANDI_Counter(3),
	datad => ALT_INV_RANDI_Counter(1),
	datae => ALT_INV_RANDI_Counter(5),
	dataf => ALT_INV_RANDI_Counter(4),
	combout => \WiInput~3_combout\);

-- Location: LABCELL_X10_Y3_N15
\WiInput~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \WiInput~4_combout\ = ( RANDI_Counter(6) & ( !\WiInput~3_combout\ ) ) # ( !RANDI_Counter(6) & ( \WiInput~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WiInput~2_combout\,
	datad => \ALT_INV_WiInput~3_combout\,
	dataf => ALT_INV_RANDI_Counter(6),
	combout => \WiInput~4_combout\);

-- Location: LABCELL_X10_Y3_N42
\WiInput~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WiInput~1_combout\ = ( \WiInput~q\ & ( \TopWiMax_wrapper_in_ready~input_o\ & ( (((!\TopWiMax_input_ready~2_combout\ & !\process_0~7_combout\)) # (\reset~input_o\)) # (\WiInput~4_combout\) ) ) ) # ( !\WiInput~q\ & ( \TopWiMax_wrapper_in_ready~input_o\ & ( 
-- (\WiInput~4_combout\ & (!\reset~input_o\ & ((\process_0~7_combout\) # (\TopWiMax_input_ready~2_combout\)))) ) ) ) # ( \WiInput~q\ & ( !\TopWiMax_wrapper_in_ready~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100010000001100001011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_TopWiMax_input_ready~2_combout\,
	datab => \ALT_INV_WiInput~4_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_process_0~7_combout\,
	datae => \ALT_INV_WiInput~q\,
	dataf => \ALT_INV_TopWiMax_wrapper_in_ready~input_o\,
	combout => \WiInput~1_combout\);

-- Location: FF_X10_Y3_N43
WiInput : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \WiInput~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WiInput~q\);

-- Location: LABCELL_X10_Y4_N36
\twimax_wrap|RANDI1|randi_output_data~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|RANDI1|randi_output_data~0_combout\ = ( \TopWiMax_input_ready~q\ & ( !\twimax_wrap|RANDI1|seed_reg\(13) $ (!\twimax_wrap|RANDI1|seed_reg\(14) $ (\WiInput~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|RANDI1|ALT_INV_seed_reg\(13),
	datac => \twimax_wrap|RANDI1|ALT_INV_seed_reg\(14),
	datad => \ALT_INV_WiInput~q\,
	dataf => \ALT_INV_TopWiMax_input_ready~q\,
	combout => \twimax_wrap|RANDI1|randi_output_data~0_combout\);

-- Location: LABCELL_X6_Y6_N48
\process_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = ( \Mux1~1_combout\ & ( \twimax_wrap|RANDI1|randi_output_data~0_combout\ & ( (!RANDI_Counter2(6) & (((!\Mux1~0_combout\) # (RANDI_Counter2(5))))) # (RANDI_Counter2(6) & ((!\Mux1~2_combout\) # ((!RANDI_Counter2(5))))) ) ) ) # ( 
-- !\Mux1~1_combout\ & ( \twimax_wrap|RANDI1|randi_output_data~0_combout\ & ( (!RANDI_Counter2(6) & (((!\Mux1~0_combout\) # (RANDI_Counter2(5))))) # (RANDI_Counter2(6) & (!\Mux1~2_combout\ & (RANDI_Counter2(5)))) ) ) ) # ( \Mux1~1_combout\ & ( 
-- !\twimax_wrap|RANDI1|randi_output_data~0_combout\ & ( (!RANDI_Counter2(6) & (((!RANDI_Counter2(5) & \Mux1~0_combout\)))) # (RANDI_Counter2(6) & (\Mux1~2_combout\ & (RANDI_Counter2(5)))) ) ) ) # ( !\Mux1~1_combout\ & ( 
-- !\twimax_wrap|RANDI1|randi_output_data~0_combout\ & ( (!RANDI_Counter2(6) & (((!RANDI_Counter2(5) & \Mux1~0_combout\)))) # (RANDI_Counter2(6) & (((!RANDI_Counter2(5))) # (\Mux1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000111110001000000011100000111001110000011101111111000111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~2_combout\,
	datab => ALT_INV_RANDI_Counter2(6),
	datac => ALT_INV_RANDI_Counter2(5),
	datad => \ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_Mux1~1_combout\,
	dataf => \twimax_wrap|RANDI1|ALT_INV_randi_output_data~0_combout\,
	combout => \process_1~1_combout\);

-- Location: LABCELL_X10_Y3_N57
\LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ( !RANDI_Counter2(6) & ( RANDI_Counter2(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter2(5),
	datae => ALT_INV_RANDI_Counter2(6),
	combout => \LessThan3~0_combout\);

-- Location: LABCELL_X10_Y3_N48
\RANDI_Flag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI_Flag~0_combout\ = ( \RANDI_Flag~q\ & ( \TopWiMax_wrapper_in_ready~input_o\ ) ) # ( !\RANDI_Flag~q\ & ( \TopWiMax_wrapper_in_ready~input_o\ & ( (!\load~input_o\ & (\process_1~1_combout\ & (\Equal1~4_combout\ & !\LessThan3~0_combout\))) ) ) ) # ( 
-- \RANDI_Flag~q\ & ( !\TopWiMax_wrapper_in_ready~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000010000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load~input_o\,
	datab => \ALT_INV_process_1~1_combout\,
	datac => \ALT_INV_Equal1~4_combout\,
	datad => \ALT_INV_LessThan3~0_combout\,
	datae => \ALT_INV_RANDI_Flag~q\,
	dataf => \ALT_INV_TopWiMax_wrapper_in_ready~input_o\,
	combout => \RANDI_Flag~0_combout\);

-- Location: FF_X10_Y3_N50
RANDI_Flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI_Flag~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI_Flag~q\);

-- Location: LABCELL_X10_Y3_N3
\RANDI_Counter2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI_Counter2[0]~0_combout\ = ( \RANDI_Flag~q\ & ( (\Equal1~4_combout\ & \Equal1~6_combout\) ) ) # ( !\RANDI_Flag~q\ & ( (\Equal1~4_combout\ & (((\process_1~0_combout\ & !\process_1~1_combout\)) # (\Equal1~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000101000101010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~4_combout\,
	datab => \ALT_INV_process_1~0_combout\,
	datac => \ALT_INV_Equal1~6_combout\,
	datad => \ALT_INV_process_1~1_combout\,
	dataf => \ALT_INV_RANDI_Flag~q\,
	combout => \RANDI_Counter2[0]~0_combout\);

-- Location: FF_X6_Y6_N35
\RANDI_Counter2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI_Counter2[0]~7_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(0));

-- Location: LABCELL_X7_Y6_N3
\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( !RANDI_Counter2(1) ) + ( VCC ) + ( \Add1~126\ ))
-- \Add1~122\ = CARRY(( !RANDI_Counter2(1) ) + ( VCC ) + ( \Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter2(1),
	cin => \Add1~126\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

-- Location: LABCELL_X6_Y6_N30
\RANDI_Counter2[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI_Counter2[1]~6_combout\ = !\Add1~121_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~121_sumout\,
	combout => \RANDI_Counter2[1]~6_combout\);

-- Location: FF_X6_Y6_N32
\RANDI_Counter2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI_Counter2[1]~6_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(1));

-- Location: LABCELL_X7_Y6_N6
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( !RANDI_Counter2(2) ) + ( VCC ) + ( \Add1~122\ ))
-- \Add1~114\ = CARRY(( !RANDI_Counter2(2) ) + ( VCC ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter2(2),
	cin => \Add1~122\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

-- Location: LABCELL_X6_Y6_N54
\RANDI_Counter2[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI_Counter2[2]~4_combout\ = !\Add1~113_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~113_sumout\,
	combout => \RANDI_Counter2[2]~4_combout\);

-- Location: FF_X6_Y6_N56
\RANDI_Counter2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI_Counter2[2]~4_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(2));

-- Location: LABCELL_X7_Y6_N9
\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( !RANDI_Counter2(3) ) + ( VCC ) + ( \Add1~114\ ))
-- \Add1~118\ = CARRY(( !RANDI_Counter2(3) ) + ( VCC ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter2(3),
	cin => \Add1~114\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

-- Location: LABCELL_X6_Y6_N57
\RANDI_Counter2[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI_Counter2[3]~5_combout\ = !\Add1~117_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~117_sumout\,
	combout => \RANDI_Counter2[3]~5_combout\);

-- Location: FF_X6_Y6_N59
\RANDI_Counter2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI_Counter2[3]~5_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(3));

-- Location: LABCELL_X7_Y6_N12
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( !RANDI_Counter2(4) ) + ( VCC ) + ( \Add1~118\ ))
-- \Add1~110\ = CARRY(( !RANDI_Counter2(4) ) + ( VCC ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter2(4),
	cin => \Add1~118\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

-- Location: LABCELL_X6_Y6_N21
\RANDI_Counter2[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI_Counter2[4]~3_combout\ = ( !\Add1~109_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~109_sumout\,
	combout => \RANDI_Counter2[4]~3_combout\);

-- Location: FF_X6_Y6_N23
\RANDI_Counter2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI_Counter2[4]~3_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(4));

-- Location: LABCELL_X7_Y6_N15
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( RANDI_Counter2(5) ) + ( VCC ) + ( \Add1~110\ ))
-- \Add1~106\ = CARRY(( RANDI_Counter2(5) ) + ( VCC ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter2(5),
	cin => \Add1~110\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

-- Location: LABCELL_X7_Y6_N57
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( RANDI_Counter2(19) ) + ( VCC ) + ( \Add1~98\ ))
-- \Add1~30\ = CARRY(( RANDI_Counter2(19) ) + ( VCC ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter2(19),
	cin => \Add1~98\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: LABCELL_X7_Y5_N0
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( RANDI_Counter2(20) ) + ( VCC ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( RANDI_Counter2(20) ) + ( VCC ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter2(20),
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X7_Y5_N2
\RANDI_Counter2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~33_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(20));

-- Location: LABCELL_X7_Y5_N3
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( RANDI_Counter2(21) ) + ( VCC ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( RANDI_Counter2(21) ) + ( VCC ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter2(21),
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X7_Y5_N5
\RANDI_Counter2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~37_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(21));

-- Location: LABCELL_X7_Y5_N6
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( RANDI_Counter2(22) ) + ( VCC ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( RANDI_Counter2(22) ) + ( VCC ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RANDI_Counter2(22),
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X7_Y5_N8
\RANDI_Counter2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~41_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(22));

-- Location: LABCELL_X7_Y5_N9
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( RANDI_Counter2(23) ) + ( VCC ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( RANDI_Counter2(23) ) + ( VCC ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter2(23),
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X7_Y5_N11
\RANDI_Counter2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~45_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(23));

-- Location: LABCELL_X7_Y5_N12
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( RANDI_Counter2(24) ) + ( VCC ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( RANDI_Counter2(24) ) + ( VCC ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RANDI_Counter2(24),
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X7_Y5_N14
\RANDI_Counter2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~49_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(24));

-- Location: LABCELL_X7_Y5_N15
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( RANDI_Counter2(25) ) + ( VCC ) + ( \Add1~50\ ))
-- \Add1~26\ = CARRY(( RANDI_Counter2(25) ) + ( VCC ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter2(25),
	cin => \Add1~50\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X7_Y5_N17
\RANDI_Counter2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~25_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(25));

-- Location: LABCELL_X7_Y5_N18
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( RANDI_Counter2(26) ) + ( VCC ) + ( \Add1~26\ ))
-- \Add1~6\ = CARRY(( RANDI_Counter2(26) ) + ( VCC ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter2(26),
	cin => \Add1~26\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X7_Y5_N20
\RANDI_Counter2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~5_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(26));

-- Location: LABCELL_X7_Y5_N21
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( RANDI_Counter2(27) ) + ( VCC ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( RANDI_Counter2(27) ) + ( VCC ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter2(27),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X7_Y5_N23
\RANDI_Counter2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~9_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(27));

-- Location: LABCELL_X7_Y5_N24
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( RANDI_Counter2(28) ) + ( VCC ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( RANDI_Counter2(28) ) + ( VCC ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter2(28),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X7_Y5_N26
\RANDI_Counter2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~13_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(28));

-- Location: LABCELL_X7_Y5_N27
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( RANDI_Counter2(29) ) + ( VCC ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( RANDI_Counter2(29) ) + ( VCC ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter2(29),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X7_Y5_N29
\RANDI_Counter2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~17_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(29));

-- Location: LABCELL_X7_Y5_N30
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( RANDI_Counter2(30) ) + ( VCC ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( RANDI_Counter2(30) ) + ( VCC ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RANDI_Counter2(30),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X7_Y5_N32
\RANDI_Counter2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~21_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(30));

-- Location: LABCELL_X7_Y5_N33
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( RANDI_Counter2(31) ) + ( VCC ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter2(31),
	cin => \Add1~22\,
	sumout => \Add1~53_sumout\);

-- Location: LABCELL_X10_Y3_N30
\process_1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = ( \Equal1~4_combout\ & ( \TopWiMax_wrapper_in_ready~input_o\ & ( (!\load~input_o\ & (!\process_1~1_combout\ & !\LessThan3~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load~input_o\,
	datab => \ALT_INV_process_1~1_combout\,
	datad => \ALT_INV_LessThan3~0_combout\,
	datae => \ALT_INV_Equal1~4_combout\,
	dataf => \ALT_INV_TopWiMax_wrapper_in_ready~input_o\,
	combout => \process_1~2_combout\);

-- Location: LABCELL_X7_Y5_N51
\RANDI_Counter2[31]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI_Counter2[31]~1_combout\ = ( RANDI_Counter2(31) & ( \process_1~2_combout\ & ( (!\Equal1~7_combout\ & ((\RANDI_Flag~q\) # (\Add1~53_sumout\))) ) ) ) # ( !RANDI_Counter2(31) & ( \process_1~2_combout\ & ( (\Add1~53_sumout\ & (!\RANDI_Flag~q\ & 
-- !\Equal1~7_combout\)) ) ) ) # ( RANDI_Counter2(31) & ( !\process_1~2_combout\ & ( !\Equal1~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000001000000010000000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~53_sumout\,
	datab => \ALT_INV_RANDI_Flag~q\,
	datac => \ALT_INV_Equal1~7_combout\,
	datae => ALT_INV_RANDI_Counter2(31),
	dataf => \ALT_INV_process_1~2_combout\,
	combout => \RANDI_Counter2[31]~1_combout\);

-- Location: FF_X7_Y5_N53
\RANDI_Counter2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI_Counter2[31]~1_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(31));

-- Location: LABCELL_X7_Y5_N54
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !RANDI_Counter2(8) & ( !RANDI_Counter2(7) & ( (!RANDI_Counter2(10) & (!RANDI_Counter2(12) & (!RANDI_Counter2(31) & !RANDI_Counter2(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter2(10),
	datab => ALT_INV_RANDI_Counter2(12),
	datac => ALT_INV_RANDI_Counter2(31),
	datad => ALT_INV_RANDI_Counter2(9),
	datae => ALT_INV_RANDI_Counter2(8),
	dataf => ALT_INV_RANDI_Counter2(7),
	combout => \Equal1~2_combout\);

-- Location: LABCELL_X7_Y5_N36
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !RANDI_Counter2(27) & ( !RANDI_Counter2(26) & ( (!RANDI_Counter2(28) & (!RANDI_Counter2(30) & (!RANDI_Counter2(29) & !RANDI_Counter2(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter2(28),
	datab => ALT_INV_RANDI_Counter2(30),
	datac => ALT_INV_RANDI_Counter2(29),
	datad => ALT_INV_RANDI_Counter2(25),
	datae => ALT_INV_RANDI_Counter2(27),
	dataf => ALT_INV_RANDI_Counter2(26),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X6_Y6_N0
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( !RANDI_Counter2(16) & ( !RANDI_Counter2(13) & ( (!RANDI_Counter2(15) & (!RANDI_Counter2(18) & (!RANDI_Counter2(17) & !RANDI_Counter2(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter2(15),
	datab => ALT_INV_RANDI_Counter2(18),
	datac => ALT_INV_RANDI_Counter2(17),
	datad => ALT_INV_RANDI_Counter2(14),
	datae => ALT_INV_RANDI_Counter2(16),
	dataf => ALT_INV_RANDI_Counter2(13),
	combout => \Equal1~3_combout\);

-- Location: LABCELL_X6_Y6_N24
\Equal1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = ( \Equal1~3_combout\ & ( !RANDI_Counter2(11) & ( (\Equal1~1_combout\ & (\Equal1~6_combout\ & (\Equal1~2_combout\ & \Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_Equal1~6_combout\,
	datac => \ALT_INV_Equal1~2_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	datae => \ALT_INV_Equal1~3_combout\,
	dataf => ALT_INV_RANDI_Counter2(11),
	combout => \Equal1~7_combout\);

-- Location: FF_X7_Y6_N17
\RANDI_Counter2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~105_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(5));

-- Location: LABCELL_X7_Y6_N18
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( !RANDI_Counter2(6) ) + ( VCC ) + ( \Add1~106\ ))
-- \Add1~102\ = CARRY(( !RANDI_Counter2(6) ) + ( VCC ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter2(6),
	cin => \Add1~106\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: LABCELL_X6_Y6_N15
\RANDI_Counter2[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI_Counter2[6]~2_combout\ = ( !\Add1~101_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~101_sumout\,
	combout => \RANDI_Counter2[6]~2_combout\);

-- Location: FF_X6_Y6_N17
\RANDI_Counter2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI_Counter2[6]~2_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(6));

-- Location: LABCELL_X7_Y6_N21
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( RANDI_Counter2(7) ) + ( VCC ) + ( \Add1~102\ ))
-- \Add1~58\ = CARRY(( RANDI_Counter2(7) ) + ( VCC ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter2(7),
	cin => \Add1~102\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X7_Y6_N23
\RANDI_Counter2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~57_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(7));

-- Location: LABCELL_X7_Y6_N24
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( RANDI_Counter2(8) ) + ( VCC ) + ( \Add1~58\ ))
-- \Add1~62\ = CARRY(( RANDI_Counter2(8) ) + ( VCC ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter2(8),
	cin => \Add1~58\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X7_Y6_N26
\RANDI_Counter2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~61_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(8));

-- Location: LABCELL_X7_Y6_N27
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( RANDI_Counter2(9) ) + ( VCC ) + ( \Add1~62\ ))
-- \Add1~66\ = CARRY(( RANDI_Counter2(9) ) + ( VCC ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter2(9),
	cin => \Add1~62\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X7_Y6_N29
\RANDI_Counter2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~65_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(9));

-- Location: LABCELL_X7_Y6_N30
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( RANDI_Counter2(10) ) + ( VCC ) + ( \Add1~66\ ))
-- \Add1~70\ = CARRY(( RANDI_Counter2(10) ) + ( VCC ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RANDI_Counter2(10),
	cin => \Add1~66\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X7_Y6_N32
\RANDI_Counter2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~69_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(10));

-- Location: LABCELL_X7_Y6_N33
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( RANDI_Counter2(11) ) + ( VCC ) + ( \Add1~70\ ))
-- \Add1~2\ = CARRY(( RANDI_Counter2(11) ) + ( VCC ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter2(11),
	cin => \Add1~70\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X7_Y6_N35
\RANDI_Counter2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~1_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(11));

-- Location: LABCELL_X7_Y6_N36
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( RANDI_Counter2(12) ) + ( VCC ) + ( \Add1~2\ ))
-- \Add1~74\ = CARRY(( RANDI_Counter2(12) ) + ( VCC ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter2(12),
	cin => \Add1~2\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: FF_X7_Y6_N38
\RANDI_Counter2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~73_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(12));

-- Location: LABCELL_X7_Y6_N39
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( RANDI_Counter2(13) ) + ( VCC ) + ( \Add1~74\ ))
-- \Add1~78\ = CARRY(( RANDI_Counter2(13) ) + ( VCC ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter2(13),
	cin => \Add1~74\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X7_Y6_N41
\RANDI_Counter2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~77_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(13));

-- Location: LABCELL_X7_Y6_N42
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( RANDI_Counter2(14) ) + ( VCC ) + ( \Add1~78\ ))
-- \Add1~82\ = CARRY(( RANDI_Counter2(14) ) + ( VCC ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RANDI_Counter2(14),
	cin => \Add1~78\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: FF_X7_Y6_N44
\RANDI_Counter2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~81_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(14));

-- Location: LABCELL_X7_Y6_N45
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( RANDI_Counter2(15) ) + ( VCC ) + ( \Add1~82\ ))
-- \Add1~86\ = CARRY(( RANDI_Counter2(15) ) + ( VCC ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter2(15),
	cin => \Add1~82\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

-- Location: FF_X7_Y6_N47
\RANDI_Counter2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~85_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(15));

-- Location: LABCELL_X7_Y6_N48
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( RANDI_Counter2(16) ) + ( VCC ) + ( \Add1~86\ ))
-- \Add1~90\ = CARRY(( RANDI_Counter2(16) ) + ( VCC ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter2(16),
	cin => \Add1~86\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

-- Location: FF_X7_Y6_N50
\RANDI_Counter2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~89_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(16));

-- Location: LABCELL_X7_Y6_N51
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( RANDI_Counter2(17) ) + ( VCC ) + ( \Add1~90\ ))
-- \Add1~94\ = CARRY(( RANDI_Counter2(17) ) + ( VCC ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter2(17),
	cin => \Add1~90\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: FF_X7_Y6_N53
\RANDI_Counter2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~93_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(17));

-- Location: LABCELL_X7_Y6_N54
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( RANDI_Counter2(18) ) + ( VCC ) + ( \Add1~94\ ))
-- \Add1~98\ = CARRY(( RANDI_Counter2(18) ) + ( VCC ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RANDI_Counter2(18),
	cin => \Add1~94\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: FF_X7_Y6_N56
\RANDI_Counter2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~97_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(18));

-- Location: FF_X7_Y6_N59
\RANDI_Counter2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~29_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal1~7_combout\,
	ena => \RANDI_Counter2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RANDI_Counter2(19));

-- Location: LABCELL_X7_Y5_N42
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !RANDI_Counter2(20) & ( !RANDI_Counter2(22) & ( (!RANDI_Counter2(19) & (!RANDI_Counter2(24) & (!RANDI_Counter2(21) & !RANDI_Counter2(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RANDI_Counter2(19),
	datab => ALT_INV_RANDI_Counter2(24),
	datac => ALT_INV_RANDI_Counter2(21),
	datad => ALT_INV_RANDI_Counter2(23),
	datae => ALT_INV_RANDI_Counter2(20),
	dataf => ALT_INV_RANDI_Counter2(22),
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X6_Y6_N6
\Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = ( \Equal1~3_combout\ & ( !RANDI_Counter2(11) & ( (\Equal1~1_combout\ & (\Equal1~0_combout\ & \Equal1~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal1~2_combout\,
	datae => \ALT_INV_Equal1~3_combout\,
	dataf => ALT_INV_RANDI_Counter2(11),
	combout => \Equal1~4_combout\);

-- Location: LABCELL_X10_Y3_N0
\RANDI_output_valid~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RANDI_output_valid~0_combout\ = ( \process_1~1_combout\ & ( (\RANDI_output_valid~reg0_q\ & ((!\Equal1~4_combout\) # (!\process_1~0_combout\))) ) ) # ( !\process_1~1_combout\ & ( (!\Equal1~4_combout\ & (((\RANDI_output_valid~reg0_q\)))) # 
-- (\Equal1~4_combout\ & ((!\process_1~0_combout\ & ((\RANDI_output_valid~reg0_q\))) # (\process_1~0_combout\ & (!\RANDI_Flag~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011111110000100001111111000000000111011100000000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~4_combout\,
	datab => \ALT_INV_process_1~0_combout\,
	datac => \ALT_INV_RANDI_Flag~q\,
	datad => \ALT_INV_RANDI_output_valid~reg0_q\,
	dataf => \ALT_INV_process_1~1_combout\,
	combout => \RANDI_output_valid~0_combout\);

-- Location: FF_X10_Y3_N1
\RANDI_output_valid~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RANDI_output_valid~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RANDI_output_valid~reg0_q\);

-- Location: PLLOUTPUTCOUNTER_X0_Y5_N1
\pll1_wrap|pll_main_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
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
  output_counter_index => 5)
-- pragma translate_on
PORT MAP (
	nen0 => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN5\,
	tclk0 => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \pll1_wrap|pll_main_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \pll1_wrap|pll_main_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire\(1));

-- Location: CLKCTRL_G6
\pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire\(1),
	outclk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\);

-- Location: MLABCELL_X9_Y2_N0
\twimax_wrap|fec1|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~109_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(0) ) + ( VCC ) + ( !VCC ))
-- \twimax_wrap|fec1|Add1~110\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(0),
	cin => GND,
	sumout => \twimax_wrap|fec1|Add1~109_sumout\,
	cout => \twimax_wrap|fec1|Add1~110\);

-- Location: LABCELL_X5_Y2_N0
\twimax_wrap|fec1|Add3~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~121_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \twimax_wrap|fec1|Add3~122\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \twimax_wrap|fec1|Add3~121_sumout\,
	cout => \twimax_wrap|fec1|Add3~122\);

-- Location: MLABCELL_X9_Y1_N6
\twimax_wrap|fec1|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~37_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(22) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~34\ ))
-- \twimax_wrap|fec1|Add1~38\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(22) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(22),
	cin => \twimax_wrap|fec1|Add1~34\,
	sumout => \twimax_wrap|fec1|Add1~37_sumout\,
	cout => \twimax_wrap|fec1|Add1~38\);

-- Location: MLABCELL_X9_Y1_N9
\twimax_wrap|fec1|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~41_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(23) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~38\ ))
-- \twimax_wrap|fec1|Add1~42\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(23) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(23),
	cin => \twimax_wrap|fec1|Add1~38\,
	sumout => \twimax_wrap|fec1|Add1~41_sumout\,
	cout => \twimax_wrap|fec1|Add1~42\);

-- Location: FF_X9_Y2_N19
\twimax_wrap|fec1|counter_buffer_input[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~117_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input[6]~DUPLICATE_q\);

-- Location: FF_X9_Y2_N4
\twimax_wrap|fec1|counter_buffer_input[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~105_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input[1]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y1_N36
\twimax_wrap|fec1|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Equal5~0_combout\ = ( \twimax_wrap|fec1|counter_buffer_input\(2) & ( (\twimax_wrap|fec1|counter_buffer_input\(0) & \twimax_wrap|fec1|counter_buffer_input[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(0),
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input[1]~DUPLICATE_q\,
	dataf => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(2),
	combout => \twimax_wrap|fec1|Equal5~0_combout\);

-- Location: LABCELL_X10_Y1_N6
\twimax_wrap|fec1|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|LessThan0~5_combout\ = ( \twimax_wrap|fec1|counter_buffer_input\(5) & ( \twimax_wrap|fec1|counter_buffer_input[6]~DUPLICATE_q\ ) ) # ( !\twimax_wrap|fec1|counter_buffer_input\(5) & ( (\twimax_wrap|fec1|counter_buffer_input\(4) & 
-- (\twimax_wrap|fec1|counter_buffer_input[6]~DUPLICATE_q\ & (\twimax_wrap|fec1|Equal5~0_combout\ & \twimax_wrap|fec1|counter_buffer_input\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(4),
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input[6]~DUPLICATE_q\,
	datac => \twimax_wrap|fec1|ALT_INV_Equal5~0_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(3),
	dataf => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(5),
	combout => \twimax_wrap|fec1|LessThan0~5_combout\);

-- Location: LABCELL_X10_Y1_N21
\twimax_wrap|fec1|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|LessThan0~6_combout\ = (!\twimax_wrap|fec1|counter_buffer_input\(31) & ((!\twimax_wrap|fec1|LessThan0~4_combout\) # (\twimax_wrap|fec1|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100000000101110110000000010111011000000001011101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_LessThan0~4_combout\,
	datab => \twimax_wrap|fec1|ALT_INV_LessThan0~5_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(31),
	combout => \twimax_wrap|fec1|LessThan0~6_combout\);

-- Location: LABCELL_X10_Y1_N54
\twimax_wrap|fec1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector0~0_combout\ = ( \twimax_wrap|fec1|Selector33~0_combout\ & ( \TopWiMax_input_ready~q\ & ( (!\twimax_wrap|fec1|LessThan0~6_combout\) # ((!\twimax_wrap|fec1|input_state_reg.input_buffer~q\ & 
-- !\twimax_wrap|fec1|input_state_reg.PingPong_state~q\)) ) ) ) # ( !\twimax_wrap|fec1|Selector33~0_combout\ & ( \TopWiMax_input_ready~q\ & ( (!\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & (((!\twimax_wrap|fec1|input_state_reg.input_buffer~q\) # 
-- (!\twimax_wrap|fec1|LessThan0~6_combout\)))) # (\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & (\twimax_wrap|fec1|Equal6~6_combout\)) ) ) ) # ( \twimax_wrap|fec1|Selector33~0_combout\ & ( !\TopWiMax_input_ready~q\ & ( 
-- (!\twimax_wrap|fec1|LessThan0~6_combout\ & ((\twimax_wrap|fec1|input_state_reg.PingPong_state~q\) # (\twimax_wrap|fec1|input_state_reg.input_buffer~q\))) ) ) ) # ( !\twimax_wrap|fec1|Selector33~0_combout\ & ( !\TopWiMax_input_ready~q\ & ( 
-- (!\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & (((\twimax_wrap|fec1|input_state_reg.input_buffer~q\ & !\twimax_wrap|fec1|LessThan0~6_combout\)))) # (\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & (\twimax_wrap|fec1|Equal6~6_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010101001100001111000011111100010101011111110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_Equal6~6_combout\,
	datab => \twimax_wrap|fec1|ALT_INV_input_state_reg.input_buffer~q\,
	datac => \twimax_wrap|fec1|ALT_INV_LessThan0~6_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datae => \twimax_wrap|fec1|ALT_INV_Selector33~0_combout\,
	dataf => \ALT_INV_TopWiMax_input_ready~q\,
	combout => \twimax_wrap|fec1|Selector0~0_combout\);

-- Location: MLABCELL_X9_Y1_N24
\twimax_wrap|fec1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~13_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(28) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~22\ ))
-- \twimax_wrap|fec1|Add1~14\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(28) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(28),
	cin => \twimax_wrap|fec1|Add1~22\,
	sumout => \twimax_wrap|fec1|Add1~13_sumout\,
	cout => \twimax_wrap|fec1|Add1~14\);

-- Location: MLABCELL_X9_Y1_N27
\twimax_wrap|fec1|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~49_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input[29]~DUPLICATE_q\ ) + ( GND ) + ( \twimax_wrap|fec1|Add1~14\ ))
-- \twimax_wrap|fec1|Add1~50\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input[29]~DUPLICATE_q\ ) + ( GND ) + ( \twimax_wrap|fec1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input[29]~DUPLICATE_q\,
	cin => \twimax_wrap|fec1|Add1~14\,
	sumout => \twimax_wrap|fec1|Add1~49_sumout\,
	cout => \twimax_wrap|fec1|Add1~50\);

-- Location: FF_X9_Y1_N29
\twimax_wrap|fec1|counter_buffer_input[29]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~49_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input[29]~DUPLICATE_q\);

-- Location: MLABCELL_X9_Y1_N30
\twimax_wrap|fec1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~9_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(30) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~50\ ))
-- \twimax_wrap|fec1|Add1~10\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(30) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(30),
	cin => \twimax_wrap|fec1|Add1~50\,
	sumout => \twimax_wrap|fec1|Add1~9_sumout\,
	cout => \twimax_wrap|fec1|Add1~10\);

-- Location: FF_X9_Y1_N32
\twimax_wrap|fec1|counter_buffer_input[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~9_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(30));

-- Location: MLABCELL_X9_Y1_N33
\twimax_wrap|fec1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~1_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(31) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(31),
	cin => \twimax_wrap|fec1|Add1~10\,
	sumout => \twimax_wrap|fec1|Add1~1_sumout\);

-- Location: LABCELL_X10_Y1_N30
\twimax_wrap|fec1|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector0~1_combout\ = ( \twimax_wrap|fec1|input_state_reg.input_buffer~q\ & ( (\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & (!\twimax_wrap|fec1|Equal6~6_combout\ & !\twimax_wrap|fec1|Selector33~0_combout\)) ) ) # ( 
-- !\twimax_wrap|fec1|input_state_reg.input_buffer~q\ & ( (!\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & (!\TopWiMax_input_ready~q\)) # (\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & (((!\twimax_wrap|fec1|Equal6~6_combout\ & 
-- !\twimax_wrap|fec1|Selector33~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011100010001000101110001000100000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_TopWiMax_input_ready~q\,
	datab => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datac => \twimax_wrap|fec1|ALT_INV_Equal6~6_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_Selector33~0_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_input_state_reg.input_buffer~q\,
	combout => \twimax_wrap|fec1|Selector0~1_combout\);

-- Location: LABCELL_X10_Y1_N0
\twimax_wrap|fec1|Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector0~2_combout\ = ( \twimax_wrap|fec1|Selector0~1_combout\ & ( ((\twimax_wrap|fec1|Selector0~0_combout\ & \twimax_wrap|fec1|Add1~1_sumout\)) # (\twimax_wrap|fec1|counter_buffer_input\(31)) ) ) # ( 
-- !\twimax_wrap|fec1|Selector0~1_combout\ & ( (\twimax_wrap|fec1|Selector0~0_combout\ & \twimax_wrap|fec1|Add1~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_Selector0~0_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_Add1~1_sumout\,
	datad => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(31),
	dataf => \twimax_wrap|fec1|ALT_INV_Selector0~1_combout\,
	combout => \twimax_wrap|fec1|Selector0~2_combout\);

-- Location: FF_X10_Y1_N2
\twimax_wrap|fec1|counter_buffer_input[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Selector0~2_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(31));

-- Location: LABCELL_X10_Y1_N36
\twimax_wrap|fec1|counter_buffer_input[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|counter_buffer_input[5]~1_combout\ = ( !\twimax_wrap|fec1|counter_buffer_input\(31) & ( \TopWiMax_input_ready~q\ & ( (!\twimax_wrap|fec1|Equal5~1_combout\ & (\twimax_wrap|fec1|input_state_reg.input_buffer~q\ & 
-- ((!\twimax_wrap|fec1|LessThan0~4_combout\) # (\twimax_wrap|fec1|LessThan0~5_combout\)))) ) ) ) # ( \twimax_wrap|fec1|counter_buffer_input\(31) & ( !\TopWiMax_input_ready~q\ & ( !\twimax_wrap|fec1|input_state_reg.input_buffer~q\ ) ) ) # ( 
-- !\twimax_wrap|fec1|counter_buffer_input\(31) & ( !\TopWiMax_input_ready~q\ & ( (!\twimax_wrap|fec1|input_state_reg.input_buffer~q\) # ((!\twimax_wrap|fec1|Equal5~1_combout\ & ((!\twimax_wrap|fec1|LessThan0~4_combout\) # 
-- (\twimax_wrap|fec1|LessThan0~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110110000111111110000000000000000101100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_LessThan0~4_combout\,
	datab => \twimax_wrap|fec1|ALT_INV_LessThan0~5_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_Equal5~1_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_input_state_reg.input_buffer~q\,
	datae => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(31),
	dataf => \ALT_INV_TopWiMax_input_ready~q\,
	combout => \twimax_wrap|fec1|counter_buffer_input[5]~1_combout\);

-- Location: LABCELL_X10_Y1_N42
\twimax_wrap|fec1|counter_buffer_input[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\ = ( \twimax_wrap|fec1|counter_buffer_input[5]~1_combout\ & ( \twimax_wrap|fec1|LessThan0~6_combout\ & ( (\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & (((\twimax_wrap|fec1|Equal6~6_combout\ & 
-- !\twimax_wrap|fec1|Selector33~0_combout\)) # (\twimax_wrap|fec1|Equal5~1_combout\))) ) ) ) # ( !\twimax_wrap|fec1|counter_buffer_input[5]~1_combout\ & ( \twimax_wrap|fec1|LessThan0~6_combout\ & ( (!\twimax_wrap|fec1|input_state_reg.PingPong_state~q\) # 
-- (((\twimax_wrap|fec1|Equal6~6_combout\ & !\twimax_wrap|fec1|Selector33~0_combout\)) # (\twimax_wrap|fec1|Equal5~1_combout\)) ) ) ) # ( \twimax_wrap|fec1|counter_buffer_input[5]~1_combout\ & ( !\twimax_wrap|fec1|LessThan0~6_combout\ & ( 
-- (\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & (((\twimax_wrap|fec1|Selector33~0_combout\) # (\twimax_wrap|fec1|Equal5~1_combout\)) # (\twimax_wrap|fec1|Equal6~6_combout\))) ) ) ) # ( !\twimax_wrap|fec1|counter_buffer_input[5]~1_combout\ & ( 
-- !\twimax_wrap|fec1|LessThan0~6_combout\ & ( ((!\twimax_wrap|fec1|input_state_reg.PingPong_state~q\) # ((\twimax_wrap|fec1|Selector33~0_combout\) # (\twimax_wrap|fec1|Equal5~1_combout\))) # (\twimax_wrap|fec1|Equal6~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111111111000100110011001111011111110011110001001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_Equal6~6_combout\,
	datab => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datac => \twimax_wrap|fec1|ALT_INV_Equal5~1_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_Selector33~0_combout\,
	datae => \twimax_wrap|fec1|ALT_INV_counter_buffer_input[5]~1_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_LessThan0~6_combout\,
	combout => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\);

-- Location: FF_X9_Y1_N11
\twimax_wrap|fec1|counter_buffer_input[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~41_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(23));

-- Location: MLABCELL_X9_Y1_N12
\twimax_wrap|fec1|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~45_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(24) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~42\ ))
-- \twimax_wrap|fec1|Add1~46\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(24) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(24),
	cin => \twimax_wrap|fec1|Add1~42\,
	sumout => \twimax_wrap|fec1|Add1~45_sumout\,
	cout => \twimax_wrap|fec1|Add1~46\);

-- Location: FF_X9_Y1_N14
\twimax_wrap|fec1|counter_buffer_input[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~45_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(24));

-- Location: MLABCELL_X9_Y1_N15
\twimax_wrap|fec1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~5_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(25) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~46\ ))
-- \twimax_wrap|fec1|Add1~6\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(25) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(25),
	cin => \twimax_wrap|fec1|Add1~46\,
	sumout => \twimax_wrap|fec1|Add1~5_sumout\,
	cout => \twimax_wrap|fec1|Add1~6\);

-- Location: FF_X9_Y1_N17
\twimax_wrap|fec1|counter_buffer_input[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~5_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(25));

-- Location: MLABCELL_X9_Y1_N18
\twimax_wrap|fec1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~17_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(26) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~6\ ))
-- \twimax_wrap|fec1|Add1~18\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(26) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(26),
	cin => \twimax_wrap|fec1|Add1~6\,
	sumout => \twimax_wrap|fec1|Add1~17_sumout\,
	cout => \twimax_wrap|fec1|Add1~18\);

-- Location: FF_X9_Y1_N20
\twimax_wrap|fec1|counter_buffer_input[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~17_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(26));

-- Location: MLABCELL_X9_Y1_N21
\twimax_wrap|fec1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~21_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(27) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~18\ ))
-- \twimax_wrap|fec1|Add1~22\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(27) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(27),
	cin => \twimax_wrap|fec1|Add1~18\,
	sumout => \twimax_wrap|fec1|Add1~21_sumout\,
	cout => \twimax_wrap|fec1|Add1~22\);

-- Location: FF_X9_Y1_N23
\twimax_wrap|fec1|counter_buffer_input[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~21_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(27));

-- Location: FF_X9_Y1_N26
\twimax_wrap|fec1|counter_buffer_input[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~13_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(28));

-- Location: MLABCELL_X9_Y1_N42
\twimax_wrap|fec1|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|LessThan0~0_combout\ = ( !\twimax_wrap|fec1|counter_buffer_input\(27) & ( !\twimax_wrap|fec1|counter_buffer_input\(18) & ( (!\twimax_wrap|fec1|counter_buffer_input\(28) & (!\twimax_wrap|fec1|counter_buffer_input\(30) & 
-- (!\twimax_wrap|fec1|counter_buffer_input\(26) & !\twimax_wrap|fec1|counter_buffer_input\(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(28),
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(30),
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(26),
	datad => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(25),
	datae => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(27),
	dataf => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(18),
	combout => \twimax_wrap|fec1|LessThan0~0_combout\);

-- Location: FF_X9_Y2_N34
\twimax_wrap|fec1|counter_buffer_input[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~69_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(11));

-- Location: FF_X9_Y2_N28
\twimax_wrap|fec1|counter_buffer_input[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~61_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(9));

-- Location: FF_X9_Y2_N37
\twimax_wrap|fec1|counter_buffer_input[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~73_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(12));

-- Location: LABCELL_X10_Y2_N6
\twimax_wrap|fec1|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|LessThan0~2_combout\ = ( !\twimax_wrap|fec1|counter_buffer_input\(7) & ( !\twimax_wrap|fec1|counter_buffer_input\(12) & ( (!\twimax_wrap|fec1|counter_buffer_input\(10) & (!\twimax_wrap|fec1|counter_buffer_input\(11) & 
-- (!\twimax_wrap|fec1|counter_buffer_input\(9) & !\twimax_wrap|fec1|counter_buffer_input\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(10),
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(11),
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(9),
	datad => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(8),
	datae => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(7),
	dataf => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(12),
	combout => \twimax_wrap|fec1|LessThan0~2_combout\);

-- Location: LABCELL_X10_Y1_N9
\twimax_wrap|fec1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|process_0~0_combout\ = ( !\twimax_wrap|fec1|counter_buffer_input\(5) & ( (\twimax_wrap|fec1|counter_buffer_input\(4) & (\twimax_wrap|fec1|counter_buffer_input[6]~DUPLICATE_q\ & (\twimax_wrap|fec1|counter_buffer_input\(3) & 
-- !\twimax_wrap|fec1|counter_buffer_input\(31)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(4),
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input[6]~DUPLICATE_q\,
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(3),
	datad => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(31),
	dataf => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(5),
	combout => \twimax_wrap|fec1|process_0~0_combout\);

-- Location: LABCELL_X6_Y2_N30
\twimax_wrap|fec1|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|LessThan0~3_combout\ = ( !\twimax_wrap|fec1|counter_buffer_input\(15) & ( !\twimax_wrap|fec1|counter_buffer_input\(13) & ( (!\twimax_wrap|fec1|counter_buffer_input\(19) & (!\twimax_wrap|fec1|counter_buffer_input\(16) & 
-- (!\twimax_wrap|fec1|counter_buffer_input\(17) & !\twimax_wrap|fec1|counter_buffer_input\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(19),
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(16),
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(17),
	datad => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(14),
	datae => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(15),
	dataf => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(13),
	combout => \twimax_wrap|fec1|LessThan0~3_combout\);

-- Location: MLABCELL_X9_Y1_N54
\twimax_wrap|fec1|Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Equal5~1_combout\ = ( \twimax_wrap|fec1|process_0~0_combout\ & ( \twimax_wrap|fec1|LessThan0~3_combout\ & ( (\twimax_wrap|fec1|LessThan0~1_combout\ & (\twimax_wrap|fec1|LessThan0~0_combout\ & (\twimax_wrap|fec1|Equal5~0_combout\ & 
-- \twimax_wrap|fec1|LessThan0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_LessThan0~1_combout\,
	datab => \twimax_wrap|fec1|ALT_INV_LessThan0~0_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_Equal5~0_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_LessThan0~2_combout\,
	datae => \twimax_wrap|fec1|ALT_INV_process_0~0_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_LessThan0~3_combout\,
	combout => \twimax_wrap|fec1|Equal5~1_combout\);

-- Location: LABCELL_X10_Y2_N15
\twimax_wrap|fec1|Selector73~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector73~1_combout\ = ( \twimax_wrap|fec1|Selector73~0_combout\ & ( (!\twimax_wrap|fec1|input_state_reg.PingPong_state~q\) # (!\twimax_wrap|fec1|Equal5~1_combout\ $ (!\twimax_wrap|fec1|PingPong_flag~q\)) ) ) # ( 
-- !\twimax_wrap|fec1|Selector73~0_combout\ & ( !\twimax_wrap|fec1|PingPong_flag~q\ $ (((!\twimax_wrap|fec1|Equal5~1_combout\) # (!\twimax_wrap|fec1|input_state_reg.PingPong_state~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101011110101111110101111010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_Equal5~1_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datad => \twimax_wrap|fec1|ALT_INV_PingPong_flag~q\,
	dataf => \twimax_wrap|fec1|ALT_INV_Selector73~0_combout\,
	combout => \twimax_wrap|fec1|Selector73~1_combout\);

-- Location: FF_X10_Y2_N16
\twimax_wrap|fec1|PingPong_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Selector73~1_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|PingPong_flag~q\);

-- Location: LABCELL_X5_Y2_N15
\twimax_wrap|fec1|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~1_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(5) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~118\ ))
-- \twimax_wrap|fec1|Add3~2\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(5) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(5),
	cin => \twimax_wrap|fec1|Add3~118\,
	sumout => \twimax_wrap|fec1|Add3~1_sumout\,
	cout => \twimax_wrap|fec1|Add3~2\);

-- Location: LABCELL_X5_Y2_N18
\twimax_wrap|fec1|Add3~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~125_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(6) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~2\ ))
-- \twimax_wrap|fec1|Add3~126\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(6) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(6),
	cin => \twimax_wrap|fec1|Add3~2\,
	sumout => \twimax_wrap|fec1|Add3~125_sumout\,
	cout => \twimax_wrap|fec1|Add3~126\);

-- Location: FF_X5_Y2_N20
\twimax_wrap|fec1|counter_shift_and_output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~125_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(6));

-- Location: LABCELL_X5_Y2_N21
\twimax_wrap|fec1|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~5_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(7) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~126\ ))
-- \twimax_wrap|fec1|Add3~6\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(7) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(7),
	cin => \twimax_wrap|fec1|Add3~126\,
	sumout => \twimax_wrap|fec1|Add3~5_sumout\,
	cout => \twimax_wrap|fec1|Add3~6\);

-- Location: FF_X5_Y2_N22
\twimax_wrap|fec1|counter_shift_and_output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~5_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(7));

-- Location: LABCELL_X5_Y2_N24
\twimax_wrap|fec1|Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~65_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(8) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~6\ ))
-- \twimax_wrap|fec1|Add3~66\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(8) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(8),
	cin => \twimax_wrap|fec1|Add3~6\,
	sumout => \twimax_wrap|fec1|Add3~65_sumout\,
	cout => \twimax_wrap|fec1|Add3~66\);

-- Location: FF_X5_Y2_N25
\twimax_wrap|fec1|counter_shift_and_output[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~65_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(8));

-- Location: LABCELL_X5_Y2_N27
\twimax_wrap|fec1|Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~69_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(9) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~66\ ))
-- \twimax_wrap|fec1|Add3~70\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(9) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(9),
	cin => \twimax_wrap|fec1|Add3~66\,
	sumout => \twimax_wrap|fec1|Add3~69_sumout\,
	cout => \twimax_wrap|fec1|Add3~70\);

-- Location: FF_X5_Y2_N29
\twimax_wrap|fec1|counter_shift_and_output[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~69_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(9));

-- Location: LABCELL_X5_Y2_N30
\twimax_wrap|fec1|Add3~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~73_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(10) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~70\ ))
-- \twimax_wrap|fec1|Add3~74\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(10) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(10),
	cin => \twimax_wrap|fec1|Add3~70\,
	sumout => \twimax_wrap|fec1|Add3~73_sumout\,
	cout => \twimax_wrap|fec1|Add3~74\);

-- Location: FF_X5_Y2_N32
\twimax_wrap|fec1|counter_shift_and_output[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~73_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(10));

-- Location: LABCELL_X5_Y2_N33
\twimax_wrap|fec1|Add3~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~77_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(11) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~74\ ))
-- \twimax_wrap|fec1|Add3~78\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(11) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(11),
	cin => \twimax_wrap|fec1|Add3~74\,
	sumout => \twimax_wrap|fec1|Add3~77_sumout\,
	cout => \twimax_wrap|fec1|Add3~78\);

-- Location: FF_X5_Y2_N35
\twimax_wrap|fec1|counter_shift_and_output[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~77_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(11));

-- Location: LABCELL_X5_Y2_N36
\twimax_wrap|fec1|Add3~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~81_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(12) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~78\ ))
-- \twimax_wrap|fec1|Add3~82\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(12) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(12),
	cin => \twimax_wrap|fec1|Add3~78\,
	sumout => \twimax_wrap|fec1|Add3~81_sumout\,
	cout => \twimax_wrap|fec1|Add3~82\);

-- Location: FF_X5_Y2_N37
\twimax_wrap|fec1|counter_shift_and_output[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~81_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(12));

-- Location: LABCELL_X5_Y2_N39
\twimax_wrap|fec1|Add3~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~85_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(13) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~82\ ))
-- \twimax_wrap|fec1|Add3~86\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(13) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(13),
	cin => \twimax_wrap|fec1|Add3~82\,
	sumout => \twimax_wrap|fec1|Add3~85_sumout\,
	cout => \twimax_wrap|fec1|Add3~86\);

-- Location: FF_X5_Y2_N41
\twimax_wrap|fec1|counter_shift_and_output[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~85_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(13));

-- Location: LABCELL_X5_Y2_N42
\twimax_wrap|fec1|Add3~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~89_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(14) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~86\ ))
-- \twimax_wrap|fec1|Add3~90\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(14) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(14),
	cin => \twimax_wrap|fec1|Add3~86\,
	sumout => \twimax_wrap|fec1|Add3~89_sumout\,
	cout => \twimax_wrap|fec1|Add3~90\);

-- Location: FF_X5_Y2_N43
\twimax_wrap|fec1|counter_shift_and_output[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~89_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(14));

-- Location: LABCELL_X5_Y2_N45
\twimax_wrap|fec1|Add3~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~93_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(15) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~90\ ))
-- \twimax_wrap|fec1|Add3~94\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(15) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(15),
	cin => \twimax_wrap|fec1|Add3~90\,
	sumout => \twimax_wrap|fec1|Add3~93_sumout\,
	cout => \twimax_wrap|fec1|Add3~94\);

-- Location: FF_X5_Y2_N47
\twimax_wrap|fec1|counter_shift_and_output[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~93_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(15));

-- Location: LABCELL_X5_Y2_N48
\twimax_wrap|fec1|Add3~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~97_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(16) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~94\ ))
-- \twimax_wrap|fec1|Add3~98\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(16) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(16),
	cin => \twimax_wrap|fec1|Add3~94\,
	sumout => \twimax_wrap|fec1|Add3~97_sumout\,
	cout => \twimax_wrap|fec1|Add3~98\);

-- Location: FF_X5_Y2_N50
\twimax_wrap|fec1|counter_shift_and_output[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~97_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(16));

-- Location: LABCELL_X5_Y2_N51
\twimax_wrap|fec1|Add3~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~101_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(17) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~98\ ))
-- \twimax_wrap|fec1|Add3~102\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(17) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(17),
	cin => \twimax_wrap|fec1|Add3~98\,
	sumout => \twimax_wrap|fec1|Add3~101_sumout\,
	cout => \twimax_wrap|fec1|Add3~102\);

-- Location: FF_X5_Y2_N52
\twimax_wrap|fec1|counter_shift_and_output[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~101_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(17));

-- Location: FF_X5_Y2_N49
\twimax_wrap|fec1|counter_shift_and_output[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~97_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output[16]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y1_N54
\twimax_wrap|fec1|Equal6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Equal6~3_combout\ = ( !\twimax_wrap|fec1|counter_shift_and_output\(14) & ( !\twimax_wrap|fec1|counter_shift_and_output\(15) & ( (!\twimax_wrap|fec1|counter_shift_and_output\(12) & (!\twimax_wrap|fec1|counter_shift_and_output\(17) & 
-- (!\twimax_wrap|fec1|counter_shift_and_output\(13) & !\twimax_wrap|fec1|counter_shift_and_output[16]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(12),
	datab => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(17),
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(13),
	datad => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[16]~DUPLICATE_q\,
	datae => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(14),
	dataf => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(15),
	combout => \twimax_wrap|fec1|Equal6~3_combout\);

-- Location: FF_X5_Y2_N34
\twimax_wrap|fec1|counter_shift_and_output[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~77_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output[11]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y2_N54
\twimax_wrap|fec1|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~33_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(18) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~102\ ))
-- \twimax_wrap|fec1|Add3~34\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(18) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(18),
	cin => \twimax_wrap|fec1|Add3~102\,
	sumout => \twimax_wrap|fec1|Add3~33_sumout\,
	cout => \twimax_wrap|fec1|Add3~34\);

-- Location: FF_X5_Y2_N55
\twimax_wrap|fec1|counter_shift_and_output[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~33_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(18));

-- Location: LABCELL_X5_Y2_N57
\twimax_wrap|fec1|Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~37_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(19) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~34\ ))
-- \twimax_wrap|fec1|Add3~38\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(19) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(19),
	cin => \twimax_wrap|fec1|Add3~34\,
	sumout => \twimax_wrap|fec1|Add3~37_sumout\,
	cout => \twimax_wrap|fec1|Add3~38\);

-- Location: FF_X5_Y2_N59
\twimax_wrap|fec1|counter_shift_and_output[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~37_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(19));

-- Location: LABCELL_X5_Y1_N0
\twimax_wrap|fec1|Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~41_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(20) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~38\ ))
-- \twimax_wrap|fec1|Add3~42\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(20) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(20),
	cin => \twimax_wrap|fec1|Add3~38\,
	sumout => \twimax_wrap|fec1|Add3~41_sumout\,
	cout => \twimax_wrap|fec1|Add3~42\);

-- Location: FF_X5_Y1_N2
\twimax_wrap|fec1|counter_shift_and_output[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~41_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(20));

-- Location: LABCELL_X5_Y1_N3
\twimax_wrap|fec1|Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~45_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(21) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~42\ ))
-- \twimax_wrap|fec1|Add3~46\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(21) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(21),
	cin => \twimax_wrap|fec1|Add3~42\,
	sumout => \twimax_wrap|fec1|Add3~45_sumout\,
	cout => \twimax_wrap|fec1|Add3~46\);

-- Location: FF_X5_Y1_N5
\twimax_wrap|fec1|counter_shift_and_output[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~45_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(21));

-- Location: LABCELL_X5_Y1_N6
\twimax_wrap|fec1|Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~49_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(22) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~46\ ))
-- \twimax_wrap|fec1|Add3~50\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(22) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(22),
	cin => \twimax_wrap|fec1|Add3~46\,
	sumout => \twimax_wrap|fec1|Add3~49_sumout\,
	cout => \twimax_wrap|fec1|Add3~50\);

-- Location: FF_X5_Y1_N7
\twimax_wrap|fec1|counter_shift_and_output[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~49_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(22));

-- Location: LABCELL_X5_Y1_N9
\twimax_wrap|fec1|Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~53_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(23) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~50\ ))
-- \twimax_wrap|fec1|Add3~54\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(23) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(23),
	cin => \twimax_wrap|fec1|Add3~50\,
	sumout => \twimax_wrap|fec1|Add3~53_sumout\,
	cout => \twimax_wrap|fec1|Add3~54\);

-- Location: FF_X5_Y1_N11
\twimax_wrap|fec1|counter_shift_and_output[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~53_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(23));

-- Location: LABCELL_X5_Y1_N12
\twimax_wrap|fec1|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~17_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(24) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~54\ ))
-- \twimax_wrap|fec1|Add3~18\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(24) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(24),
	cin => \twimax_wrap|fec1|Add3~54\,
	sumout => \twimax_wrap|fec1|Add3~17_sumout\,
	cout => \twimax_wrap|fec1|Add3~18\);

-- Location: FF_X5_Y1_N14
\twimax_wrap|fec1|counter_shift_and_output[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~17_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(24));

-- Location: LABCELL_X5_Y1_N15
\twimax_wrap|fec1|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~21_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(25) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~18\ ))
-- \twimax_wrap|fec1|Add3~22\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(25) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(25),
	cin => \twimax_wrap|fec1|Add3~18\,
	sumout => \twimax_wrap|fec1|Add3~21_sumout\,
	cout => \twimax_wrap|fec1|Add3~22\);

-- Location: FF_X5_Y1_N17
\twimax_wrap|fec1|counter_shift_and_output[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~21_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(25));

-- Location: LABCELL_X5_Y1_N18
\twimax_wrap|fec1|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~25_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(26) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~22\ ))
-- \twimax_wrap|fec1|Add3~26\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(26) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(26),
	cin => \twimax_wrap|fec1|Add3~22\,
	sumout => \twimax_wrap|fec1|Add3~25_sumout\,
	cout => \twimax_wrap|fec1|Add3~26\);

-- Location: FF_X5_Y1_N20
\twimax_wrap|fec1|counter_shift_and_output[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~25_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(26));

-- Location: LABCELL_X5_Y1_N21
\twimax_wrap|fec1|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~29_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(27) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~26\ ))
-- \twimax_wrap|fec1|Add3~30\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(27) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(27),
	cin => \twimax_wrap|fec1|Add3~26\,
	sumout => \twimax_wrap|fec1|Add3~29_sumout\,
	cout => \twimax_wrap|fec1|Add3~30\);

-- Location: FF_X5_Y1_N23
\twimax_wrap|fec1|counter_shift_and_output[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~29_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(27));

-- Location: LABCELL_X5_Y1_N24
\twimax_wrap|fec1|Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~57_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(28) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~30\ ))
-- \twimax_wrap|fec1|Add3~58\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(28) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(28),
	cin => \twimax_wrap|fec1|Add3~30\,
	sumout => \twimax_wrap|fec1|Add3~57_sumout\,
	cout => \twimax_wrap|fec1|Add3~58\);

-- Location: FF_X5_Y1_N26
\twimax_wrap|fec1|counter_shift_and_output[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~57_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(28));

-- Location: LABCELL_X5_Y1_N27
\twimax_wrap|fec1|Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~61_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(29) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~58\ ))
-- \twimax_wrap|fec1|Add3~62\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(29) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(29),
	cin => \twimax_wrap|fec1|Add3~58\,
	sumout => \twimax_wrap|fec1|Add3~61_sumout\,
	cout => \twimax_wrap|fec1|Add3~62\);

-- Location: FF_X5_Y1_N29
\twimax_wrap|fec1|counter_shift_and_output[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~61_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(29));

-- Location: LABCELL_X5_Y1_N48
\twimax_wrap|fec1|Equal6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Equal6~2_combout\ = ( !\twimax_wrap|fec1|counter_shift_and_output\(29) & ( !\twimax_wrap|fec1|counter_shift_and_output\(28) & ( (!\twimax_wrap|fec1|counter_shift_and_output\(8) & 
-- (!\twimax_wrap|fec1|counter_shift_and_output[11]~DUPLICATE_q\ & (!\twimax_wrap|fec1|counter_shift_and_output\(10) & !\twimax_wrap|fec1|counter_shift_and_output\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(8),
	datab => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[11]~DUPLICATE_q\,
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(10),
	datad => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(9),
	datae => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(29),
	dataf => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(28),
	combout => \twimax_wrap|fec1|Equal6~2_combout\);

-- Location: LABCELL_X5_Y1_N36
\twimax_wrap|fec1|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Equal6~0_combout\ = ( !\twimax_wrap|fec1|counter_shift_and_output\(25) & ( (!\twimax_wrap|fec1|counter_shift_and_output\(24) & (!\twimax_wrap|fec1|counter_shift_and_output\(26) & !\twimax_wrap|fec1|counter_shift_and_output\(27))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(24),
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(26),
	datad => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(27),
	dataf => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(25),
	combout => \twimax_wrap|fec1|Equal6~0_combout\);

-- Location: LABCELL_X5_Y1_N42
\twimax_wrap|fec1|Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Equal6~1_combout\ = ( !\twimax_wrap|fec1|counter_shift_and_output\(20) & ( !\twimax_wrap|fec1|counter_shift_and_output\(18) & ( (!\twimax_wrap|fec1|counter_shift_and_output\(22) & (!\twimax_wrap|fec1|counter_shift_and_output\(23) & 
-- (!\twimax_wrap|fec1|counter_shift_and_output\(21) & !\twimax_wrap|fec1|counter_shift_and_output\(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(22),
	datab => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(23),
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(21),
	datad => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(19),
	datae => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(20),
	dataf => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(18),
	combout => \twimax_wrap|fec1|Equal6~1_combout\);

-- Location: LABCELL_X5_Y1_N39
\twimax_wrap|fec1|Equal6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Equal6~5_combout\ = ( \twimax_wrap|fec1|Equal6~1_combout\ & ( (\twimax_wrap|fec1|Equal6~3_combout\ & (\twimax_wrap|fec1|Equal6~2_combout\ & \twimax_wrap|fec1|Equal6~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_Equal6~3_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_Equal6~2_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_Equal6~0_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_Equal6~1_combout\,
	combout => \twimax_wrap|fec1|Equal6~5_combout\);

-- Location: LABCELL_X5_Y1_N30
\twimax_wrap|fec1|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~13_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(30) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~62\ ))
-- \twimax_wrap|fec1|Add3~14\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(30) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(30),
	cin => \twimax_wrap|fec1|Add3~62\,
	sumout => \twimax_wrap|fec1|Add3~13_sumout\,
	cout => \twimax_wrap|fec1|Add3~14\);

-- Location: FF_X5_Y1_N31
\twimax_wrap|fec1|counter_shift_and_output[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~13_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(30));

-- Location: FF_X5_Y2_N19
\twimax_wrap|fec1|counter_shift_and_output[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~125_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output[6]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y2_N57
\twimax_wrap|fec1|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|LessThan2~0_combout\ = (!\twimax_wrap|fec1|counter_shift_and_output\(7) & ((!\twimax_wrap|fec1|counter_shift_and_output[6]~DUPLICATE_q\) # (!\twimax_wrap|fec1|counter_shift_and_output\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000111100001010000011110000101000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[6]~DUPLICATE_q\,
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(7),
	datad => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(5),
	combout => \twimax_wrap|fec1|LessThan2~0_combout\);

-- Location: LABCELL_X6_Y2_N36
\twimax_wrap|fec1|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|LessThan5~1_combout\ = ( \twimax_wrap|fec1|counter_shift_and_output\(6) & ( \twimax_wrap|fec1|counter_shift_and_output\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(7),
	dataf => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(6),
	combout => \twimax_wrap|fec1|LessThan5~1_combout\);

-- Location: FF_X7_Y2_N31
\twimax_wrap|fec1|counter_shift_and_output[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Selector41~3_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output[31]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y1_N33
\twimax_wrap|fec1|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~9_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output[31]~DUPLICATE_q\ ) + ( GND ) + ( \twimax_wrap|fec1|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[31]~DUPLICATE_q\,
	cin => \twimax_wrap|fec1|Add3~14\,
	sumout => \twimax_wrap|fec1|Add3~9_sumout\);

-- Location: LABCELL_X7_Y2_N24
\twimax_wrap|fec1|Selector41~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector41~2_combout\ = ( !\twimax_wrap|fec1|Selector34~0_combout\ & ( (\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & !\twimax_wrap|fec1|Equal5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datac => \twimax_wrap|fec1|ALT_INV_Equal5~1_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_Selector34~0_combout\,
	combout => \twimax_wrap|fec1|Selector41~2_combout\);

-- Location: LABCELL_X7_Y2_N27
\twimax_wrap|fec1|Selector41~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector41~1_combout\ = ( !\twimax_wrap|fec1|Selector73~0_combout\ & ( (!\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & \twimax_wrap|fec1|counter_shift_and_output\(31)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(31),
	dataf => \twimax_wrap|fec1|ALT_INV_Selector73~0_combout\,
	combout => \twimax_wrap|fec1|Selector41~1_combout\);

-- Location: LABCELL_X10_Y2_N45
\twimax_wrap|fec1|Equal8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Equal8~1_combout\ = ( \twimax_wrap|fec1|Equal6~0_combout\ & ( (\twimax_wrap|fec1|Equal6~2_combout\ & (\twimax_wrap|fec1|Equal6~1_combout\ & (\twimax_wrap|fec1|Equal6~3_combout\ & !\twimax_wrap|fec1|counter_shift_and_output\(30)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_Equal6~2_combout\,
	datab => \twimax_wrap|fec1|ALT_INV_Equal6~1_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_Equal6~3_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(30),
	dataf => \twimax_wrap|fec1|ALT_INV_Equal6~0_combout\,
	combout => \twimax_wrap|fec1|Equal8~1_combout\);

-- Location: FF_X5_Y2_N10
\twimax_wrap|fec1|counter_shift_and_output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~113_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(3));

-- Location: FF_X5_Y2_N4
\twimax_wrap|fec1|counter_shift_and_output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~105_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(1));

-- Location: LABCELL_X7_Y2_N6
\twimax_wrap|fec1|Equal8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Equal8~2_combout\ = ( \twimax_wrap|fec1|counter_shift_and_output\(0) & ( \twimax_wrap|fec1|counter_shift_and_output\(1) & ( (\twimax_wrap|fec1|counter_shift_and_output\(5) & (\twimax_wrap|fec1|counter_shift_and_output\(4) & 
-- (\twimax_wrap|fec1|counter_shift_and_output\(3) & \twimax_wrap|fec1|counter_shift_and_output\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(5),
	datab => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(4),
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(3),
	datad => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(2),
	datae => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(0),
	dataf => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(1),
	combout => \twimax_wrap|fec1|Equal8~2_combout\);

-- Location: LABCELL_X7_Y2_N54
\twimax_wrap|fec1|LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|LessThan4~0_combout\ = ( \twimax_wrap|fec1|Equal8~2_combout\ & ( (!\twimax_wrap|fec1|counter_shift_and_output[31]~DUPLICATE_q\ & ((!\twimax_wrap|fec1|Equal8~1_combout\) # (\twimax_wrap|fec1|counter_shift_and_output\(7)))) ) ) # ( 
-- !\twimax_wrap|fec1|Equal8~2_combout\ & ( (!\twimax_wrap|fec1|counter_shift_and_output[31]~DUPLICATE_q\ & ((!\twimax_wrap|fec1|Equal8~1_combout\) # ((\twimax_wrap|fec1|counter_shift_and_output[6]~DUPLICATE_q\ & 
-- \twimax_wrap|fec1|counter_shift_and_output\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000010000111100000001000011110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[6]~DUPLICATE_q\,
	datab => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(7),
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[31]~DUPLICATE_q\,
	datad => \twimax_wrap|fec1|ALT_INV_Equal8~1_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_Equal8~2_combout\,
	combout => \twimax_wrap|fec1|LessThan4~0_combout\);

-- Location: LABCELL_X7_Y2_N21
\twimax_wrap|fec1|Selector41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector41~0_combout\ = ( \twimax_wrap|fec1|Equal5~1_combout\ & ( (!\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & (\twimax_wrap|fec1|Selector73~0_combout\)) # (\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & 
-- ((!\twimax_wrap|fec1|LessThan4~0_combout\))) ) ) # ( !\twimax_wrap|fec1|Equal5~1_combout\ & ( (!\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & \twimax_wrap|fec1|Selector73~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111001000100111011100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datab => \twimax_wrap|fec1|ALT_INV_Selector73~0_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_LessThan4~0_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_Equal5~1_combout\,
	combout => \twimax_wrap|fec1|Selector41~0_combout\);

-- Location: LABCELL_X7_Y2_N30
\twimax_wrap|fec1|Selector41~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector41~3_combout\ = ( \twimax_wrap|fec1|counter_shift_and_output\(31) & ( \twimax_wrap|fec1|Selector41~0_combout\ & ( (((!\twimax_wrap|fec1|Selector33~0_combout\ & \twimax_wrap|fec1|Selector41~2_combout\)) # 
-- (\twimax_wrap|fec1|Selector41~1_combout\)) # (\twimax_wrap|fec1|Add3~9_sumout\) ) ) ) # ( !\twimax_wrap|fec1|counter_shift_and_output\(31) & ( \twimax_wrap|fec1|Selector41~0_combout\ & ( (\twimax_wrap|fec1|Selector41~1_combout\) # 
-- (\twimax_wrap|fec1|Add3~9_sumout\) ) ) ) # ( \twimax_wrap|fec1|counter_shift_and_output\(31) & ( !\twimax_wrap|fec1|Selector41~0_combout\ & ( ((\twimax_wrap|fec1|Selector41~2_combout\ & ((!\twimax_wrap|fec1|Selector33~0_combout\) # 
-- (\twimax_wrap|fec1|Add3~9_sumout\)))) # (\twimax_wrap|fec1|Selector41~1_combout\) ) ) ) # ( !\twimax_wrap|fec1|counter_shift_and_output\(31) & ( !\twimax_wrap|fec1|Selector41~0_combout\ & ( ((\twimax_wrap|fec1|Add3~9_sumout\ & 
-- (\twimax_wrap|fec1|Selector33~0_combout\ & \twimax_wrap|fec1|Selector41~2_combout\))) # (\twimax_wrap|fec1|Selector41~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111111000011011111111101010101111111110101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_Add3~9_sumout\,
	datab => \twimax_wrap|fec1|ALT_INV_Selector33~0_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_Selector41~2_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_Selector41~1_combout\,
	datae => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(31),
	dataf => \twimax_wrap|fec1|ALT_INV_Selector41~0_combout\,
	combout => \twimax_wrap|fec1|Selector41~3_combout\);

-- Location: FF_X7_Y2_N32
\twimax_wrap|fec1|counter_shift_and_output[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Selector41~3_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(31));

-- Location: LABCELL_X6_Y2_N0
\twimax_wrap|fec1|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector33~0_combout\ = ( \twimax_wrap|fec1|LessThan5~1_combout\ & ( \twimax_wrap|fec1|counter_shift_and_output\(31) & ( \twimax_wrap|fec1|PingPong_flag~q\ ) ) ) # ( !\twimax_wrap|fec1|LessThan5~1_combout\ & ( 
-- \twimax_wrap|fec1|counter_shift_and_output\(31) & ( \twimax_wrap|fec1|PingPong_flag~q\ ) ) ) # ( \twimax_wrap|fec1|LessThan5~1_combout\ & ( !\twimax_wrap|fec1|counter_shift_and_output\(31) & ( (\twimax_wrap|fec1|PingPong_flag~q\ & 
-- (\twimax_wrap|fec1|Equal6~5_combout\ & (!\twimax_wrap|fec1|counter_shift_and_output\(30) & \twimax_wrap|fec1|LessThan2~0_combout\))) ) ) ) # ( !\twimax_wrap|fec1|LessThan5~1_combout\ & ( !\twimax_wrap|fec1|counter_shift_and_output\(31) & ( 
-- (\twimax_wrap|fec1|Equal6~5_combout\ & (!\twimax_wrap|fec1|counter_shift_and_output\(30) & (!\twimax_wrap|fec1|PingPong_flag~q\ $ (\twimax_wrap|fec1|LessThan2~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010000000000000001000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_PingPong_flag~q\,
	datab => \twimax_wrap|fec1|ALT_INV_Equal6~5_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(30),
	datad => \twimax_wrap|fec1|ALT_INV_LessThan2~0_combout\,
	datae => \twimax_wrap|fec1|ALT_INV_LessThan5~1_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(31),
	combout => \twimax_wrap|fec1|Selector33~0_combout\);

-- Location: LABCELL_X10_Y2_N30
\twimax_wrap|fec1|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Equal8~0_combout\ = ( !\twimax_wrap|fec1|counter_shift_and_output\(30) & ( !\twimax_wrap|fec1|counter_shift_and_output[31]~DUPLICATE_q\ & ( (\twimax_wrap|fec1|Equal6~2_combout\ & (\twimax_wrap|fec1|Equal6~3_combout\ & 
-- (\twimax_wrap|fec1|Equal6~0_combout\ & \twimax_wrap|fec1|Equal6~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_Equal6~2_combout\,
	datab => \twimax_wrap|fec1|ALT_INV_Equal6~3_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_Equal6~0_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_Equal6~1_combout\,
	datae => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(30),
	dataf => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[31]~DUPLICATE_q\,
	combout => \twimax_wrap|fec1|Equal8~0_combout\);

-- Location: LABCELL_X7_Y2_N12
\twimax_wrap|fec1|counter_shift_and_output[28]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|counter_shift_and_output[28]~1_combout\ = ( \twimax_wrap|fec1|Equal8~2_combout\ & ( (!\twimax_wrap|fec1|Equal5~1_combout\ & ((!\twimax_wrap|fec1|Equal8~0_combout\) # ((!\twimax_wrap|fec1|counter_shift_and_output\(7)) # 
-- (\twimax_wrap|fec1|counter_shift_and_output[6]~DUPLICATE_q\)))) ) ) # ( !\twimax_wrap|fec1|Equal8~2_combout\ & ( !\twimax_wrap|fec1|Equal5~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011101111000000001110111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_Equal8~0_combout\,
	datab => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(7),
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[6]~DUPLICATE_q\,
	datad => \twimax_wrap|fec1|ALT_INV_Equal5~1_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_Equal8~2_combout\,
	combout => \twimax_wrap|fec1|counter_shift_and_output[28]~1_combout\);

-- Location: LABCELL_X10_Y1_N24
\twimax_wrap|fec1|counter_shift_and_output[28]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\ = ( \twimax_wrap|fec1|counter_shift_and_output[28]~1_combout\ & ( \twimax_wrap|fec1|Selector73~0_combout\ ) ) # ( !\twimax_wrap|fec1|counter_shift_and_output[28]~1_combout\ & ( 
-- \twimax_wrap|fec1|Selector73~0_combout\ ) ) # ( \twimax_wrap|fec1|counter_shift_and_output[28]~1_combout\ & ( !\twimax_wrap|fec1|Selector73~0_combout\ & ( (\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & (((\twimax_wrap|fec1|Selector33~0_combout\) # 
-- (\twimax_wrap|fec1|Selector34~0_combout\)) # (\twimax_wrap|fec1|Equal6~6_combout\))) ) ) ) # ( !\twimax_wrap|fec1|counter_shift_and_output[28]~1_combout\ & ( !\twimax_wrap|fec1|Selector73~0_combout\ & ( \twimax_wrap|fec1|input_state_reg.PingPong_state~q\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_Equal6~6_combout\,
	datab => \twimax_wrap|fec1|ALT_INV_Selector34~0_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_Selector33~0_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datae => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[28]~1_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_Selector73~0_combout\,
	combout => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\);

-- Location: FF_X5_Y2_N1
\twimax_wrap|fec1|counter_shift_and_output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~121_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(0));

-- Location: LABCELL_X7_Y2_N39
\twimax_wrap|fec1|Equal6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Equal6~4_combout\ = ( \twimax_wrap|fec1|counter_shift_and_output\(6) & ( !\twimax_wrap|fec1|counter_shift_and_output\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(0),
	dataf => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(6),
	combout => \twimax_wrap|fec1|Equal6~4_combout\);

-- Location: LABCELL_X7_Y2_N36
\twimax_wrap|fec1|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|LessThan5~0_combout\ = (!\twimax_wrap|fec1|counter_shift_and_output\(3) & (!\twimax_wrap|fec1|counter_shift_and_output\(2) & (!\twimax_wrap|fec1|counter_shift_and_output\(1) & !\twimax_wrap|fec1|counter_shift_and_output\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(3),
	datab => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(2),
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(1),
	datad => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(4),
	combout => \twimax_wrap|fec1|LessThan5~0_combout\);

-- Location: LABCELL_X7_Y2_N42
\twimax_wrap|fec1|Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector34~0_combout\ = ( !\TopWiMax_input_ready~q\ & ( \twimax_wrap|fec1|Equal8~0_combout\ & ( (\twimax_wrap|fec1|Equal6~4_combout\ & (\twimax_wrap|fec1|LessThan5~0_combout\ & (!\twimax_wrap|fec1|counter_shift_and_output\(5) $ 
-- (!\twimax_wrap|fec1|counter_shift_and_output\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(5),
	datab => \twimax_wrap|fec1|ALT_INV_Equal6~4_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_LessThan5~0_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(7),
	datae => \ALT_INV_TopWiMax_input_ready~q\,
	dataf => \twimax_wrap|fec1|ALT_INV_Equal8~0_combout\,
	combout => \twimax_wrap|fec1|Selector34~0_combout\);

-- Location: LABCELL_X7_Y2_N15
\twimax_wrap|fec1|Equal8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Equal8~3_combout\ = ( \twimax_wrap|fec1|Equal8~0_combout\ & ( (\twimax_wrap|fec1|counter_shift_and_output\(7) & (\twimax_wrap|fec1|Equal8~2_combout\ & !\twimax_wrap|fec1|counter_shift_and_output[6]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(7),
	datac => \twimax_wrap|fec1|ALT_INV_Equal8~2_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[6]~DUPLICATE_q\,
	dataf => \twimax_wrap|fec1|ALT_INV_Equal8~0_combout\,
	combout => \twimax_wrap|fec1|Equal8~3_combout\);

-- Location: LABCELL_X7_Y2_N48
\twimax_wrap|fec1|counter_shift_and_output[28]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\ = ( \twimax_wrap|fec1|LessThan4~0_combout\ & ( \twimax_wrap|fec1|Selector33~0_combout\ & ( (\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & (((\twimax_wrap|fec1|Equal8~3_combout\) # 
-- (\twimax_wrap|fec1|Equal5~1_combout\)) # (\twimax_wrap|fec1|Selector34~0_combout\))) ) ) ) # ( !\twimax_wrap|fec1|LessThan4~0_combout\ & ( \twimax_wrap|fec1|Selector33~0_combout\ & ( (\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & 
-- (((\twimax_wrap|fec1|Selector34~0_combout\ & !\twimax_wrap|fec1|Equal5~1_combout\)) # (\twimax_wrap|fec1|Equal8~3_combout\))) ) ) ) # ( \twimax_wrap|fec1|LessThan4~0_combout\ & ( !\twimax_wrap|fec1|Selector33~0_combout\ & ( 
-- \twimax_wrap|fec1|input_state_reg.PingPong_state~q\ ) ) ) # ( !\twimax_wrap|fec1|LessThan4~0_combout\ & ( !\twimax_wrap|fec1|Selector33~0_combout\ & ( (\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & ((!\twimax_wrap|fec1|Equal5~1_combout\) # 
-- (\twimax_wrap|fec1|Equal8~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010101010101010101010100010000010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datab => \twimax_wrap|fec1|ALT_INV_Selector34~0_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_Equal5~1_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_Equal8~3_combout\,
	datae => \twimax_wrap|fec1|ALT_INV_LessThan4~0_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_Selector33~0_combout\,
	combout => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\);

-- Location: FF_X5_Y2_N2
\twimax_wrap|fec1|counter_shift_and_output[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~121_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output[0]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y2_N3
\twimax_wrap|fec1|Add3~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~105_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output[1]~DUPLICATE_q\ ) + ( GND ) + ( \twimax_wrap|fec1|Add3~122\ ))
-- \twimax_wrap|fec1|Add3~106\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output[1]~DUPLICATE_q\ ) + ( GND ) + ( \twimax_wrap|fec1|Add3~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[1]~DUPLICATE_q\,
	cin => \twimax_wrap|fec1|Add3~122\,
	sumout => \twimax_wrap|fec1|Add3~105_sumout\,
	cout => \twimax_wrap|fec1|Add3~106\);

-- Location: FF_X5_Y2_N5
\twimax_wrap|fec1|counter_shift_and_output[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~105_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output[1]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y2_N6
\twimax_wrap|fec1|Add3~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~109_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(2) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~106\ ))
-- \twimax_wrap|fec1|Add3~110\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(2) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(2),
	cin => \twimax_wrap|fec1|Add3~106\,
	sumout => \twimax_wrap|fec1|Add3~109_sumout\,
	cout => \twimax_wrap|fec1|Add3~110\);

-- Location: FF_X5_Y2_N7
\twimax_wrap|fec1|counter_shift_and_output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~109_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(2));

-- Location: LABCELL_X5_Y2_N9
\twimax_wrap|fec1|Add3~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~113_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output[3]~DUPLICATE_q\ ) + ( GND ) + ( \twimax_wrap|fec1|Add3~110\ ))
-- \twimax_wrap|fec1|Add3~114\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output[3]~DUPLICATE_q\ ) + ( GND ) + ( \twimax_wrap|fec1|Add3~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[3]~DUPLICATE_q\,
	cin => \twimax_wrap|fec1|Add3~110\,
	sumout => \twimax_wrap|fec1|Add3~113_sumout\,
	cout => \twimax_wrap|fec1|Add3~114\);

-- Location: FF_X5_Y2_N11
\twimax_wrap|fec1|counter_shift_and_output[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~113_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output[3]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y2_N12
\twimax_wrap|fec1|Add3~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add3~117_sumout\ = SUM(( \twimax_wrap|fec1|counter_shift_and_output\(4) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~114\ ))
-- \twimax_wrap|fec1|Add3~118\ = CARRY(( \twimax_wrap|fec1|counter_shift_and_output\(4) ) + ( GND ) + ( \twimax_wrap|fec1|Add3~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(4),
	cin => \twimax_wrap|fec1|Add3~114\,
	sumout => \twimax_wrap|fec1|Add3~117_sumout\,
	cout => \twimax_wrap|fec1|Add3~118\);

-- Location: FF_X5_Y2_N14
\twimax_wrap|fec1|counter_shift_and_output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~117_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(4));

-- Location: FF_X5_Y2_N17
\twimax_wrap|fec1|counter_shift_and_output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add3~1_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_shift_and_output[28]~0_combout\,
	ena => \twimax_wrap|fec1|counter_shift_and_output[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_shift_and_output\(5));

-- Location: LABCELL_X7_Y2_N0
\twimax_wrap|fec1|Equal6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Equal6~6_combout\ = ( \twimax_wrap|fec1|Equal6~4_combout\ & ( (!\twimax_wrap|fec1|counter_shift_and_output\(5) & (\twimax_wrap|fec1|counter_shift_and_output\(7) & (\twimax_wrap|fec1|LessThan5~0_combout\ & 
-- \twimax_wrap|fec1|Equal8~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(5),
	datab => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(7),
	datac => \twimax_wrap|fec1|ALT_INV_LessThan5~0_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_Equal8~0_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_Equal6~4_combout\,
	combout => \twimax_wrap|fec1|Equal6~6_combout\);

-- Location: LABCELL_X7_Y2_N45
\twimax_wrap|fec1|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|process_0~2_combout\ = ( !\twimax_wrap|fec1|counter_shift_and_output[31]~DUPLICATE_q\ & ( \twimax_wrap|fec1|Equal8~1_combout\ & ( (\twimax_wrap|fec1|Equal6~4_combout\ & (\twimax_wrap|fec1|LessThan5~0_combout\ & 
-- (!\twimax_wrap|fec1|counter_shift_and_output\(5) $ (!\twimax_wrap|fec1|counter_shift_and_output\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(5),
	datab => \twimax_wrap|fec1|ALT_INV_Equal6~4_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(7),
	datad => \twimax_wrap|fec1|ALT_INV_LessThan5~0_combout\,
	datae => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[31]~DUPLICATE_q\,
	dataf => \twimax_wrap|fec1|ALT_INV_Equal8~1_combout\,
	combout => \twimax_wrap|fec1|process_0~2_combout\);

-- Location: LABCELL_X10_Y1_N33
\twimax_wrap|fec1|Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector32~0_combout\ = ( \twimax_wrap|fec1|Selector33~0_combout\ & ( ((!\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & ((\twimax_wrap|fec1|input_state_reg.idle~q\))) # (\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & 
-- (!\twimax_wrap|fec1|process_0~2_combout\))) # (\TopWiMax_input_ready~q\) ) ) # ( !\twimax_wrap|fec1|Selector33~0_combout\ & ( ((\twimax_wrap|fec1|input_state_reg.idle~q\ & ((!\twimax_wrap|fec1|input_state_reg.PingPong_state~q\) # 
-- (!\twimax_wrap|fec1|process_0~2_combout\)))) # (\TopWiMax_input_ready~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111101010101011111110101110101111111010111010111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_TopWiMax_input_ready~q\,
	datab => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datac => \twimax_wrap|fec1|ALT_INV_process_0~2_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_input_state_reg.idle~q\,
	dataf => \twimax_wrap|fec1|ALT_INV_Selector33~0_combout\,
	combout => \twimax_wrap|fec1|Selector32~0_combout\);

-- Location: FF_X10_Y1_N35
\twimax_wrap|fec1|input_state_reg.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Selector32~0_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|input_state_reg.idle~q\);

-- Location: LABCELL_X10_Y1_N48
\twimax_wrap|fec1|Selector33~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector33~1_combout\ = ( \twimax_wrap|fec1|LessThan0~6_combout\ & ( \twimax_wrap|fec1|Equal5~1_combout\ & ( (!\twimax_wrap|fec1|Equal6~6_combout\ & (\twimax_wrap|fec1|input_state_reg.input_buffer~q\ & 
-- (\twimax_wrap|fec1|input_state_reg.idle~q\ & \twimax_wrap|fec1|input_state_reg.PingPong_state~q\))) ) ) ) # ( !\twimax_wrap|fec1|LessThan0~6_combout\ & ( \twimax_wrap|fec1|Equal5~1_combout\ & ( \twimax_wrap|fec1|input_state_reg.input_buffer~q\ ) ) ) # ( 
-- \twimax_wrap|fec1|LessThan0~6_combout\ & ( !\twimax_wrap|fec1|Equal5~1_combout\ & ( (\twimax_wrap|fec1|input_state_reg.input_buffer~q\ & (\twimax_wrap|fec1|input_state_reg.idle~q\ & ((!\twimax_wrap|fec1|Equal6~6_combout\) # 
-- (!\twimax_wrap|fec1|input_state_reg.PingPong_state~q\)))) ) ) ) # ( !\twimax_wrap|fec1|LessThan0~6_combout\ & ( !\twimax_wrap|fec1|Equal5~1_combout\ & ( \twimax_wrap|fec1|input_state_reg.input_buffer~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000110000001000110011001100110000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_Equal6~6_combout\,
	datab => \twimax_wrap|fec1|ALT_INV_input_state_reg.input_buffer~q\,
	datac => \twimax_wrap|fec1|ALT_INV_input_state_reg.idle~q\,
	datad => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datae => \twimax_wrap|fec1|ALT_INV_LessThan0~6_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_Equal5~1_combout\,
	combout => \twimax_wrap|fec1|Selector33~1_combout\);

-- Location: LABCELL_X10_Y1_N12
\twimax_wrap|fec1|Selector33~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector33~2_combout\ = ( \twimax_wrap|fec1|Selector33~0_combout\ & ( \TopWiMax_input_ready~q\ & ( (!\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & ((!\twimax_wrap|fec1|input_state_reg.idle~q\) # 
-- (\twimax_wrap|fec1|Selector33~1_combout\))) ) ) ) # ( !\twimax_wrap|fec1|Selector33~0_combout\ & ( \TopWiMax_input_ready~q\ & ( (!\twimax_wrap|fec1|Selector33~1_combout\ & (!\twimax_wrap|fec1|input_state_reg.idle~q\ & 
-- ((!\twimax_wrap|fec1|Selector34~0_combout\) # (!\twimax_wrap|fec1|input_state_reg.PingPong_state~q\)))) # (\twimax_wrap|fec1|Selector33~1_combout\ & ((!\twimax_wrap|fec1|Selector34~0_combout\) # ((!\twimax_wrap|fec1|input_state_reg.PingPong_state~q\)))) ) 
-- ) ) # ( \twimax_wrap|fec1|Selector33~0_combout\ & ( !\TopWiMax_input_ready~q\ & ( (\twimax_wrap|fec1|Selector33~1_combout\ & !\twimax_wrap|fec1|input_state_reg.PingPong_state~q\) ) ) ) # ( !\twimax_wrap|fec1|Selector33~0_combout\ & ( 
-- !\TopWiMax_input_ready~q\ & ( (\twimax_wrap|fec1|Selector33~1_combout\ & ((!\twimax_wrap|fec1|Selector34~0_combout\) # (!\twimax_wrap|fec1|input_state_reg.PingPong_state~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000100010101010000000011110101110001001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_Selector33~1_combout\,
	datab => \twimax_wrap|fec1|ALT_INV_Selector34~0_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_input_state_reg.idle~q\,
	datad => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datae => \twimax_wrap|fec1|ALT_INV_Selector33~0_combout\,
	dataf => \ALT_INV_TopWiMax_input_ready~q\,
	combout => \twimax_wrap|fec1|Selector33~2_combout\);

-- Location: FF_X10_Y1_N13
\twimax_wrap|fec1|input_state_reg.input_buffer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Selector33~2_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|input_state_reg.input_buffer~q\);

-- Location: LABCELL_X10_Y1_N3
\twimax_wrap|fec1|counter_buffer_input[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\ = ( \twimax_wrap|fec1|Equal5~1_combout\ & ( ((\twimax_wrap|fec1|input_state_reg.input_buffer~q\ & \twimax_wrap|fec1|LessThan0~6_combout\)) # (\twimax_wrap|fec1|input_state_reg.PingPong_state~q\) ) ) # ( 
-- !\twimax_wrap|fec1|Equal5~1_combout\ & ( (\twimax_wrap|fec1|input_state_reg.input_buffer~q\ & \twimax_wrap|fec1|LessThan0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|fec1|ALT_INV_input_state_reg.input_buffer~q\,
	datac => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datad => \twimax_wrap|fec1|ALT_INV_LessThan0~6_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_Equal5~1_combout\,
	combout => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\);

-- Location: FF_X9_Y2_N1
\twimax_wrap|fec1|counter_buffer_input[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~109_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(0));

-- Location: MLABCELL_X9_Y2_N3
\twimax_wrap|fec1|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~105_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(1) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~110\ ))
-- \twimax_wrap|fec1|Add1~106\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(1) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(1),
	cin => \twimax_wrap|fec1|Add1~110\,
	sumout => \twimax_wrap|fec1|Add1~105_sumout\,
	cout => \twimax_wrap|fec1|Add1~106\);

-- Location: FF_X9_Y2_N5
\twimax_wrap|fec1|counter_buffer_input[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~105_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(1));

-- Location: MLABCELL_X9_Y2_N6
\twimax_wrap|fec1|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~101_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(2) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~106\ ))
-- \twimax_wrap|fec1|Add1~102\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(2) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(2),
	cin => \twimax_wrap|fec1|Add1~106\,
	sumout => \twimax_wrap|fec1|Add1~101_sumout\,
	cout => \twimax_wrap|fec1|Add1~102\);

-- Location: FF_X9_Y2_N7
\twimax_wrap|fec1|counter_buffer_input[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~101_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(2));

-- Location: MLABCELL_X9_Y2_N9
\twimax_wrap|fec1|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~121_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(3) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~102\ ))
-- \twimax_wrap|fec1|Add1~122\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(3) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(3),
	cin => \twimax_wrap|fec1|Add1~102\,
	sumout => \twimax_wrap|fec1|Add1~121_sumout\,
	cout => \twimax_wrap|fec1|Add1~122\);

-- Location: FF_X9_Y2_N11
\twimax_wrap|fec1|counter_buffer_input[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~121_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(3));

-- Location: MLABCELL_X9_Y2_N12
\twimax_wrap|fec1|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~125_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(4) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~122\ ))
-- \twimax_wrap|fec1|Add1~126\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(4) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(4),
	cin => \twimax_wrap|fec1|Add1~122\,
	sumout => \twimax_wrap|fec1|Add1~125_sumout\,
	cout => \twimax_wrap|fec1|Add1~126\);

-- Location: FF_X9_Y2_N13
\twimax_wrap|fec1|counter_buffer_input[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~125_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(4));

-- Location: MLABCELL_X9_Y2_N15
\twimax_wrap|fec1|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~113_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(5) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~126\ ))
-- \twimax_wrap|fec1|Add1~114\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(5) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(5),
	cin => \twimax_wrap|fec1|Add1~126\,
	sumout => \twimax_wrap|fec1|Add1~113_sumout\,
	cout => \twimax_wrap|fec1|Add1~114\);

-- Location: FF_X9_Y2_N17
\twimax_wrap|fec1|counter_buffer_input[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~113_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(5));

-- Location: MLABCELL_X9_Y2_N18
\twimax_wrap|fec1|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~117_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(6) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~114\ ))
-- \twimax_wrap|fec1|Add1~118\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(6) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(6),
	cin => \twimax_wrap|fec1|Add1~114\,
	sumout => \twimax_wrap|fec1|Add1~117_sumout\,
	cout => \twimax_wrap|fec1|Add1~118\);

-- Location: FF_X9_Y2_N20
\twimax_wrap|fec1|counter_buffer_input[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~117_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(6));

-- Location: MLABCELL_X9_Y2_N21
\twimax_wrap|fec1|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~53_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(7) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~118\ ))
-- \twimax_wrap|fec1|Add1~54\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(7) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(7),
	cin => \twimax_wrap|fec1|Add1~118\,
	sumout => \twimax_wrap|fec1|Add1~53_sumout\,
	cout => \twimax_wrap|fec1|Add1~54\);

-- Location: FF_X9_Y2_N22
\twimax_wrap|fec1|counter_buffer_input[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~53_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(7));

-- Location: MLABCELL_X9_Y2_N24
\twimax_wrap|fec1|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~57_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(8) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~54\ ))
-- \twimax_wrap|fec1|Add1~58\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(8) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(8),
	cin => \twimax_wrap|fec1|Add1~54\,
	sumout => \twimax_wrap|fec1|Add1~57_sumout\,
	cout => \twimax_wrap|fec1|Add1~58\);

-- Location: FF_X9_Y2_N25
\twimax_wrap|fec1|counter_buffer_input[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~57_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(8));

-- Location: MLABCELL_X9_Y2_N27
\twimax_wrap|fec1|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~61_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input[9]~DUPLICATE_q\ ) + ( GND ) + ( \twimax_wrap|fec1|Add1~58\ ))
-- \twimax_wrap|fec1|Add1~62\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input[9]~DUPLICATE_q\ ) + ( GND ) + ( \twimax_wrap|fec1|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input[9]~DUPLICATE_q\,
	cin => \twimax_wrap|fec1|Add1~58\,
	sumout => \twimax_wrap|fec1|Add1~61_sumout\,
	cout => \twimax_wrap|fec1|Add1~62\);

-- Location: FF_X9_Y2_N29
\twimax_wrap|fec1|counter_buffer_input[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~61_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input[9]~DUPLICATE_q\);

-- Location: MLABCELL_X9_Y2_N30
\twimax_wrap|fec1|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~65_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(10) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~62\ ))
-- \twimax_wrap|fec1|Add1~66\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(10) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(10),
	cin => \twimax_wrap|fec1|Add1~62\,
	sumout => \twimax_wrap|fec1|Add1~65_sumout\,
	cout => \twimax_wrap|fec1|Add1~66\);

-- Location: FF_X9_Y2_N31
\twimax_wrap|fec1|counter_buffer_input[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~65_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(10));

-- Location: MLABCELL_X9_Y2_N33
\twimax_wrap|fec1|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~69_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input[11]~DUPLICATE_q\ ) + ( GND ) + ( \twimax_wrap|fec1|Add1~66\ ))
-- \twimax_wrap|fec1|Add1~70\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input[11]~DUPLICATE_q\ ) + ( GND ) + ( \twimax_wrap|fec1|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input[11]~DUPLICATE_q\,
	cin => \twimax_wrap|fec1|Add1~66\,
	sumout => \twimax_wrap|fec1|Add1~69_sumout\,
	cout => \twimax_wrap|fec1|Add1~70\);

-- Location: FF_X9_Y2_N35
\twimax_wrap|fec1|counter_buffer_input[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~69_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input[11]~DUPLICATE_q\);

-- Location: MLABCELL_X9_Y2_N36
\twimax_wrap|fec1|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~73_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input[12]~DUPLICATE_q\ ) + ( GND ) + ( \twimax_wrap|fec1|Add1~70\ ))
-- \twimax_wrap|fec1|Add1~74\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input[12]~DUPLICATE_q\ ) + ( GND ) + ( \twimax_wrap|fec1|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input[12]~DUPLICATE_q\,
	cin => \twimax_wrap|fec1|Add1~70\,
	sumout => \twimax_wrap|fec1|Add1~73_sumout\,
	cout => \twimax_wrap|fec1|Add1~74\);

-- Location: FF_X9_Y2_N38
\twimax_wrap|fec1|counter_buffer_input[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~73_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input[12]~DUPLICATE_q\);

-- Location: MLABCELL_X9_Y2_N39
\twimax_wrap|fec1|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~77_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(13) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~74\ ))
-- \twimax_wrap|fec1|Add1~78\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(13) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(13),
	cin => \twimax_wrap|fec1|Add1~74\,
	sumout => \twimax_wrap|fec1|Add1~77_sumout\,
	cout => \twimax_wrap|fec1|Add1~78\);

-- Location: FF_X9_Y2_N41
\twimax_wrap|fec1|counter_buffer_input[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~77_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(13));

-- Location: MLABCELL_X9_Y2_N42
\twimax_wrap|fec1|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~81_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(14) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~78\ ))
-- \twimax_wrap|fec1|Add1~82\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(14) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(14),
	cin => \twimax_wrap|fec1|Add1~78\,
	sumout => \twimax_wrap|fec1|Add1~81_sumout\,
	cout => \twimax_wrap|fec1|Add1~82\);

-- Location: FF_X9_Y2_N43
\twimax_wrap|fec1|counter_buffer_input[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~81_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(14));

-- Location: MLABCELL_X9_Y2_N45
\twimax_wrap|fec1|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~85_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(15) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~82\ ))
-- \twimax_wrap|fec1|Add1~86\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(15) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(15),
	cin => \twimax_wrap|fec1|Add1~82\,
	sumout => \twimax_wrap|fec1|Add1~85_sumout\,
	cout => \twimax_wrap|fec1|Add1~86\);

-- Location: FF_X9_Y2_N46
\twimax_wrap|fec1|counter_buffer_input[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~85_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(15));

-- Location: MLABCELL_X9_Y2_N48
\twimax_wrap|fec1|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~89_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(16) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~86\ ))
-- \twimax_wrap|fec1|Add1~90\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(16) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(16),
	cin => \twimax_wrap|fec1|Add1~86\,
	sumout => \twimax_wrap|fec1|Add1~89_sumout\,
	cout => \twimax_wrap|fec1|Add1~90\);

-- Location: FF_X9_Y2_N50
\twimax_wrap|fec1|counter_buffer_input[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~89_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(16));

-- Location: MLABCELL_X9_Y2_N51
\twimax_wrap|fec1|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~93_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(17) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~90\ ))
-- \twimax_wrap|fec1|Add1~94\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(17) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(17),
	cin => \twimax_wrap|fec1|Add1~90\,
	sumout => \twimax_wrap|fec1|Add1~93_sumout\,
	cout => \twimax_wrap|fec1|Add1~94\);

-- Location: FF_X9_Y2_N52
\twimax_wrap|fec1|counter_buffer_input[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~93_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(17));

-- Location: MLABCELL_X9_Y2_N54
\twimax_wrap|fec1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~25_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(18) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~94\ ))
-- \twimax_wrap|fec1|Add1~26\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(18) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(18),
	cin => \twimax_wrap|fec1|Add1~94\,
	sumout => \twimax_wrap|fec1|Add1~25_sumout\,
	cout => \twimax_wrap|fec1|Add1~26\);

-- Location: FF_X9_Y2_N55
\twimax_wrap|fec1|counter_buffer_input[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~25_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(18));

-- Location: MLABCELL_X9_Y2_N57
\twimax_wrap|fec1|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~97_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(19) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~26\ ))
-- \twimax_wrap|fec1|Add1~98\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(19) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(19),
	cin => \twimax_wrap|fec1|Add1~26\,
	sumout => \twimax_wrap|fec1|Add1~97_sumout\,
	cout => \twimax_wrap|fec1|Add1~98\);

-- Location: FF_X9_Y2_N59
\twimax_wrap|fec1|counter_buffer_input[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~97_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(19));

-- Location: MLABCELL_X9_Y1_N0
\twimax_wrap|fec1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~29_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(20) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~98\ ))
-- \twimax_wrap|fec1|Add1~30\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(20) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(20),
	cin => \twimax_wrap|fec1|Add1~98\,
	sumout => \twimax_wrap|fec1|Add1~29_sumout\,
	cout => \twimax_wrap|fec1|Add1~30\);

-- Location: FF_X9_Y1_N2
\twimax_wrap|fec1|counter_buffer_input[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~29_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(20));

-- Location: MLABCELL_X9_Y1_N3
\twimax_wrap|fec1|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Add1~33_sumout\ = SUM(( \twimax_wrap|fec1|counter_buffer_input\(21) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~30\ ))
-- \twimax_wrap|fec1|Add1~34\ = CARRY(( \twimax_wrap|fec1|counter_buffer_input\(21) ) + ( GND ) + ( \twimax_wrap|fec1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(21),
	cin => \twimax_wrap|fec1|Add1~30\,
	sumout => \twimax_wrap|fec1|Add1~33_sumout\,
	cout => \twimax_wrap|fec1|Add1~34\);

-- Location: FF_X9_Y1_N5
\twimax_wrap|fec1|counter_buffer_input[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~33_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(21));

-- Location: FF_X9_Y1_N7
\twimax_wrap|fec1|counter_buffer_input[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~37_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(22));

-- Location: FF_X9_Y1_N28
\twimax_wrap|fec1|counter_buffer_input[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Add1~49_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|fec1|counter_buffer_input[5]~0_combout\,
	ena => \twimax_wrap|fec1|counter_buffer_input[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|counter_buffer_input\(29));

-- Location: MLABCELL_X9_Y1_N36
\twimax_wrap|fec1|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|LessThan0~1_combout\ = ( !\twimax_wrap|fec1|counter_buffer_input\(20) & ( !\twimax_wrap|fec1|counter_buffer_input\(29) & ( (!\twimax_wrap|fec1|counter_buffer_input\(22) & (!\twimax_wrap|fec1|counter_buffer_input\(24) & 
-- (!\twimax_wrap|fec1|counter_buffer_input\(21) & !\twimax_wrap|fec1|counter_buffer_input\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(22),
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(24),
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(21),
	datad => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(23),
	datae => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(20),
	dataf => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(29),
	combout => \twimax_wrap|fec1|LessThan0~1_combout\);

-- Location: MLABCELL_X9_Y1_N51
\twimax_wrap|fec1|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|LessThan0~4_combout\ = ( \twimax_wrap|fec1|LessThan0~3_combout\ & ( (\twimax_wrap|fec1|LessThan0~1_combout\ & (\twimax_wrap|fec1|LessThan0~0_combout\ & \twimax_wrap|fec1|LessThan0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_LessThan0~1_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_LessThan0~0_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_LessThan0~2_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_LessThan0~3_combout\,
	combout => \twimax_wrap|fec1|LessThan0~4_combout\);

-- Location: LABCELL_X10_Y1_N18
\twimax_wrap|fec1|Selector73~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector73~0_combout\ = ( \twimax_wrap|fec1|input_state_reg.input_buffer~q\ & ( (\twimax_wrap|fec1|Equal5~1_combout\ & (!\twimax_wrap|fec1|counter_buffer_input\(31) & ((!\twimax_wrap|fec1|LessThan0~4_combout\) # 
-- (\twimax_wrap|fec1|LessThan0~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001011000000000000101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_LessThan0~4_combout\,
	datab => \twimax_wrap|fec1|ALT_INV_LessThan0~5_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_Equal5~1_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(31),
	dataf => \twimax_wrap|fec1|ALT_INV_input_state_reg.input_buffer~q\,
	combout => \twimax_wrap|fec1|Selector73~0_combout\);

-- Location: LABCELL_X7_Y2_N18
\twimax_wrap|fec1|Selector34~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector34~1_combout\ = ( \twimax_wrap|fec1|Selector34~0_combout\ & ( \twimax_wrap|fec1|Selector73~0_combout\ ) ) # ( !\twimax_wrap|fec1|Selector34~0_combout\ & ( (\twimax_wrap|fec1|Selector73~0_combout\) # 
-- (\twimax_wrap|fec1|input_state_reg.PingPong_state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datab => \twimax_wrap|fec1|ALT_INV_Selector73~0_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_Selector34~0_combout\,
	combout => \twimax_wrap|fec1|Selector34~1_combout\);

-- Location: FF_X10_Y2_N11
\twimax_wrap|fec1|input_state_reg.PingPong_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \twimax_wrap|fec1|Selector34~1_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|input_state_reg.PingPong_state~q\);

-- Location: LABCELL_X10_Y2_N42
\twimax_wrap|fec1|finished_tail_flag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|finished_tail_flag~0_combout\ = ( \twimax_wrap|fec1|Selector73~0_combout\ ) # ( !\twimax_wrap|fec1|Selector73~0_combout\ & ( \twimax_wrap|fec1|finished_tail_flag~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_finished_tail_flag~q\,
	dataf => \twimax_wrap|fec1|ALT_INV_Selector73~0_combout\,
	combout => \twimax_wrap|fec1|finished_tail_flag~0_combout\);

-- Location: FF_X9_Y1_N41
\twimax_wrap|fec1|finished_tail_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \twimax_wrap|fec1|finished_tail_flag~0_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|finished_tail_flag~q\);

-- Location: LABCELL_X7_Y2_N3
\twimax_wrap|fec1|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Equal9~0_combout\ = ( !\twimax_wrap|fec1|counter_shift_and_output\(6) & ( (!\twimax_wrap|fec1|counter_shift_and_output\(5) & (!\twimax_wrap|fec1|counter_shift_and_output\(7) & \twimax_wrap|fec1|counter_shift_and_output\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(5),
	datab => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(7),
	datad => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(0),
	dataf => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(6),
	combout => \twimax_wrap|fec1|Equal9~0_combout\);

-- Location: LABCELL_X10_Y2_N24
\twimax_wrap|fec1|output_state_reg.idle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|output_state_reg.idle~0_combout\ = ( \twimax_wrap|fec1|output_state_reg.idle~q\ & ( \twimax_wrap|fec1|Equal8~1_combout\ ) ) # ( !\twimax_wrap|fec1|output_state_reg.idle~q\ & ( \twimax_wrap|fec1|Equal8~1_combout\ & ( 
-- (\twimax_wrap|fec1|Equal9~0_combout\ & (\twimax_wrap|fec1|finished_tail_flag~q\ & (!\twimax_wrap|fec1|counter_shift_and_output[31]~DUPLICATE_q\ & \twimax_wrap|fec1|LessThan5~0_combout\))) ) ) ) # ( \twimax_wrap|fec1|output_state_reg.idle~q\ & ( 
-- !\twimax_wrap|fec1|Equal8~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_Equal9~0_combout\,
	datab => \twimax_wrap|fec1|ALT_INV_finished_tail_flag~q\,
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[31]~DUPLICATE_q\,
	datad => \twimax_wrap|fec1|ALT_INV_LessThan5~0_combout\,
	datae => \twimax_wrap|fec1|ALT_INV_output_state_reg.idle~q\,
	dataf => \twimax_wrap|fec1|ALT_INV_Equal8~1_combout\,
	combout => \twimax_wrap|fec1|output_state_reg.idle~0_combout\);

-- Location: FF_X10_Y2_N25
\twimax_wrap|fec1|output_state_reg.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|output_state_reg.idle~0_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|output_state_reg.idle~q\);

-- Location: LABCELL_X6_Y2_N48
\twimax_wrap|fec1|shift_reg2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|shift_reg2~0_combout\ = ( !\twimax_wrap|fec1|PingPong_flag~q\ & ( !\twimax_wrap|fec1|counter_shift_and_output\(30) & ( (!\twimax_wrap|fec1|counter_shift_and_output\(31) & (\twimax_wrap|fec1|Equal6~5_combout\ & 
-- (!\twimax_wrap|fec1|LessThan5~1_combout\ & !\twimax_wrap|fec1|LessThan2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(31),
	datab => \twimax_wrap|fec1|ALT_INV_Equal6~5_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_LessThan5~1_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_LessThan2~0_combout\,
	datae => \twimax_wrap|fec1|ALT_INV_PingPong_flag~q\,
	dataf => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(30),
	combout => \twimax_wrap|fec1|shift_reg2~0_combout\);

-- Location: MLABCELL_X9_Y1_N48
\twimax_wrap|fec1|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|process_0~1_combout\ = ( \twimax_wrap|fec1|LessThan0~4_combout\ & ( (\twimax_wrap|fec1|process_0~0_combout\ & ((\twimax_wrap|fec1|counter_buffer_input\(1)) # (\twimax_wrap|fec1|counter_buffer_input\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(2),
	datac => \twimax_wrap|fec1|ALT_INV_process_0~0_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(1),
	dataf => \twimax_wrap|fec1|ALT_INV_LessThan0~4_combout\,
	combout => \twimax_wrap|fec1|process_0~1_combout\);

-- Location: LABCELL_X7_Y1_N51
\twimax_wrap|fec1|shift_reg2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|shift_reg2~5_combout\ = ( \twimax_wrap|fec1|PingPong_flag~q\ & ( (!\twimax_wrap|fec1|counter_buffer_input[1]~DUPLICATE_q\ & (\twimax_wrap|fec1|counter_buffer_input\(0) & (\twimax_wrap|fec1|process_0~1_combout\ & 
-- \twimax_wrap|fec1|counter_buffer_input\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input[1]~DUPLICATE_q\,
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(0),
	datac => \twimax_wrap|fec1|ALT_INV_process_0~1_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(2),
	dataf => \twimax_wrap|fec1|ALT_INV_PingPong_flag~q\,
	combout => \twimax_wrap|fec1|shift_reg2~5_combout\);

-- Location: LABCELL_X7_Y1_N48
\twimax_wrap|fec1|shift_reg2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|shift_reg2~3_combout\ = ( \twimax_wrap|fec1|PingPong_flag~q\ & ( (\twimax_wrap|fec1|counter_buffer_input[1]~DUPLICATE_q\ & (!\twimax_wrap|fec1|counter_buffer_input\(0) & (\twimax_wrap|fec1|process_0~1_combout\ & 
-- \twimax_wrap|fec1|counter_buffer_input\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input[1]~DUPLICATE_q\,
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(0),
	datac => \twimax_wrap|fec1|ALT_INV_process_0~1_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(2),
	dataf => \twimax_wrap|fec1|ALT_INV_PingPong_flag~q\,
	combout => \twimax_wrap|fec1|shift_reg2~3_combout\);

-- Location: LABCELL_X7_Y1_N39
\twimax_wrap|fec1|shift_reg2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|shift_reg2~1_combout\ = ( \twimax_wrap|fec1|PingPong_flag~q\ & ( (\twimax_wrap|fec1|counter_buffer_input[1]~DUPLICATE_q\ & (\twimax_wrap|fec1|counter_buffer_input\(0) & (\twimax_wrap|fec1|process_0~1_combout\ & 
-- \twimax_wrap|fec1|counter_buffer_input\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input[1]~DUPLICATE_q\,
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(0),
	datac => \twimax_wrap|fec1|ALT_INV_process_0~1_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(2),
	dataf => \twimax_wrap|fec1|ALT_INV_PingPong_flag~q\,
	combout => \twimax_wrap|fec1|shift_reg2~1_combout\);

-- Location: LABCELL_X10_Y2_N12
\twimax_wrap|fec1|address_a[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|address_a[5]~0_combout\ = ( \twimax_wrap|fec1|PingPong_flag~q\ & ( !\twimax_wrap|fec1|counter_buffer_input\(5) ) ) # ( !\twimax_wrap|fec1|PingPong_flag~q\ & ( \twimax_wrap|fec1|counter_buffer_input\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(5),
	dataf => \twimax_wrap|fec1|ALT_INV_PingPong_flag~q\,
	combout => \twimax_wrap|fec1|address_a[5]~0_combout\);

-- Location: LABCELL_X10_Y2_N39
\twimax_wrap|fec1|address_a[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|address_a[6]~1_combout\ = ( \twimax_wrap|fec1|PingPong_flag~q\ & ( !\twimax_wrap|fec1|counter_buffer_input\(5) $ (\twimax_wrap|fec1|counter_buffer_input[6]~DUPLICATE_q\) ) ) # ( !\twimax_wrap|fec1|PingPong_flag~q\ & ( 
-- \twimax_wrap|fec1|counter_buffer_input[6]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(5),
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input[6]~DUPLICATE_q\,
	dataf => \twimax_wrap|fec1|ALT_INV_PingPong_flag~q\,
	combout => \twimax_wrap|fec1|address_a[6]~1_combout\);

-- Location: LABCELL_X10_Y2_N36
\twimax_wrap|fec1|address_a[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|address_a[7]~2_combout\ = ( \twimax_wrap|fec1|PingPong_flag~q\ & ( !\twimax_wrap|fec1|counter_buffer_input\(7) $ (((!\twimax_wrap|fec1|counter_buffer_input\(5) & !\twimax_wrap|fec1|counter_buffer_input[6]~DUPLICATE_q\))) ) ) # ( 
-- !\twimax_wrap|fec1|PingPong_flag~q\ & ( \twimax_wrap|fec1|counter_buffer_input\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101111000011110000111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(5),
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input[6]~DUPLICATE_q\,
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(7),
	dataf => \twimax_wrap|fec1|ALT_INV_PingPong_flag~q\,
	combout => \twimax_wrap|fec1|address_a[7]~2_combout\);

-- Location: LABCELL_X6_Y2_N18
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

-- Location: M10K_X11_Y2_N0
\twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "TopWiMax_3:twimax_wrap|FEC:fec1|FEC_RAM_2PORTS:ram1|altsyncram:altsyncram_component|altsyncram_1014:auto_generated|ALTSYNCRAM",
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
	portawe => \TopWiMax_input_ready~q\,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	portadatain => \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X7_Y1_N42
\twimax_wrap|fec1|shift_reg2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|shift_reg2~2_combout\ = ( \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|q_b\(0) & ( ((!\twimax_wrap|fec1|shift_reg2~1_combout\ & ((\twimax_wrap|fec1|shift_reg2\(5)))) # (\twimax_wrap|fec1|shift_reg2~1_combout\ & 
-- (\twimax_wrap|RANDI1|randi_output_data~0_combout\))) # (\twimax_wrap|fec1|shift_reg2~0_combout\) ) ) # ( !\twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|q_b\(0) & ( (!\twimax_wrap|fec1|shift_reg2~0_combout\ & 
-- ((!\twimax_wrap|fec1|shift_reg2~1_combout\ & ((\twimax_wrap|fec1|shift_reg2\(5)))) # (\twimax_wrap|fec1|shift_reg2~1_combout\ & (\twimax_wrap|RANDI1|randi_output_data~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000101010001001010111111101110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_shift_reg2~0_combout\,
	datab => \twimax_wrap|RANDI1|ALT_INV_randi_output_data~0_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_shift_reg2~1_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_shift_reg2\(5),
	dataf => \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	combout => \twimax_wrap|fec1|shift_reg2~2_combout\);

-- Location: FF_X7_Y1_N43
\twimax_wrap|fec1|shift_reg2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|shift_reg2~2_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|fec1|input_state_reg.PingPong_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|shift_reg2\(5));

-- Location: LABCELL_X7_Y1_N45
\twimax_wrap|fec1|shift_reg2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|shift_reg2~4_combout\ = ( \twimax_wrap|fec1|shift_reg2\(5) & ( ((!\twimax_wrap|fec1|shift_reg2~3_combout\ & ((\twimax_wrap|fec1|shift_reg2\(4)))) # (\twimax_wrap|fec1|shift_reg2~3_combout\ & 
-- (\twimax_wrap|RANDI1|randi_output_data~0_combout\))) # (\twimax_wrap|fec1|shift_reg2~0_combout\) ) ) # ( !\twimax_wrap|fec1|shift_reg2\(5) & ( (!\twimax_wrap|fec1|shift_reg2~0_combout\ & ((!\twimax_wrap|fec1|shift_reg2~3_combout\ & 
-- ((\twimax_wrap|fec1|shift_reg2\(4)))) # (\twimax_wrap|fec1|shift_reg2~3_combout\ & (\twimax_wrap|RANDI1|randi_output_data~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000101010001001010111111101110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_shift_reg2~0_combout\,
	datab => \twimax_wrap|RANDI1|ALT_INV_randi_output_data~0_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_shift_reg2~3_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_shift_reg2\(4),
	dataf => \twimax_wrap|fec1|ALT_INV_shift_reg2\(5),
	combout => \twimax_wrap|fec1|shift_reg2~4_combout\);

-- Location: FF_X7_Y1_N47
\twimax_wrap|fec1|shift_reg2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|shift_reg2~4_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|fec1|input_state_reg.PingPong_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|shift_reg2\(4));

-- Location: LABCELL_X7_Y1_N18
\twimax_wrap|fec1|shift_reg2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|shift_reg2~6_combout\ = ( \twimax_wrap|fec1|shift_reg2\(4) & ( ((!\twimax_wrap|fec1|shift_reg2~5_combout\ & ((\twimax_wrap|fec1|shift_reg2\(3)))) # (\twimax_wrap|fec1|shift_reg2~5_combout\ & 
-- (\twimax_wrap|RANDI1|randi_output_data~0_combout\))) # (\twimax_wrap|fec1|shift_reg2~0_combout\) ) ) # ( !\twimax_wrap|fec1|shift_reg2\(4) & ( (!\twimax_wrap|fec1|shift_reg2~0_combout\ & ((!\twimax_wrap|fec1|shift_reg2~5_combout\ & 
-- ((\twimax_wrap|fec1|shift_reg2\(3)))) # (\twimax_wrap|fec1|shift_reg2~5_combout\ & (\twimax_wrap|RANDI1|randi_output_data~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000101010001001010111111101110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_shift_reg2~0_combout\,
	datab => \twimax_wrap|RANDI1|ALT_INV_randi_output_data~0_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_shift_reg2~5_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_shift_reg2\(3),
	dataf => \twimax_wrap|fec1|ALT_INV_shift_reg2\(4),
	combout => \twimax_wrap|fec1|shift_reg2~6_combout\);

-- Location: FF_X7_Y1_N19
\twimax_wrap|fec1|shift_reg2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|shift_reg2~6_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|fec1|input_state_reg.PingPong_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|shift_reg2\(3));

-- Location: LABCELL_X7_Y1_N27
\twimax_wrap|fec1|shift_reg2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|shift_reg2~9_combout\ = ( \twimax_wrap|fec1|PingPong_flag~q\ & ( (\twimax_wrap|fec1|counter_buffer_input[1]~DUPLICATE_q\ & (\twimax_wrap|fec1|counter_buffer_input\(0) & (\twimax_wrap|fec1|process_0~1_combout\ & 
-- !\twimax_wrap|fec1|counter_buffer_input\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input[1]~DUPLICATE_q\,
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(0),
	datac => \twimax_wrap|fec1|ALT_INV_process_0~1_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(2),
	dataf => \twimax_wrap|fec1|ALT_INV_PingPong_flag~q\,
	combout => \twimax_wrap|fec1|shift_reg2~9_combout\);

-- Location: LABCELL_X7_Y1_N6
\twimax_wrap|fec1|shift_reg2~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|shift_reg2~11_combout\ = ( \twimax_wrap|fec1|counter_buffer_input\(2) & ( (\twimax_wrap|fec1|PingPong_flag~q\ & (\twimax_wrap|fec1|process_0~1_combout\ & (!\twimax_wrap|fec1|counter_buffer_input[1]~DUPLICATE_q\ & 
-- !\twimax_wrap|fec1|counter_buffer_input\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_PingPong_flag~q\,
	datab => \twimax_wrap|fec1|ALT_INV_process_0~1_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input[1]~DUPLICATE_q\,
	datad => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(0),
	dataf => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(2),
	combout => \twimax_wrap|fec1|shift_reg2~11_combout\);

-- Location: LABCELL_X7_Y1_N21
\twimax_wrap|fec1|shift_reg2~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|shift_reg2~12_combout\ = ( \twimax_wrap|fec1|shift_reg2\(3) & ( ((!\twimax_wrap|fec1|shift_reg2~11_combout\ & ((\twimax_wrap|fec1|shift_reg2\(2)))) # (\twimax_wrap|fec1|shift_reg2~11_combout\ & 
-- (\twimax_wrap|RANDI1|randi_output_data~0_combout\))) # (\twimax_wrap|fec1|shift_reg2~0_combout\) ) ) # ( !\twimax_wrap|fec1|shift_reg2\(3) & ( (!\twimax_wrap|fec1|shift_reg2~0_combout\ & ((!\twimax_wrap|fec1|shift_reg2~11_combout\ & 
-- ((\twimax_wrap|fec1|shift_reg2\(2)))) # (\twimax_wrap|fec1|shift_reg2~11_combout\ & (\twimax_wrap|RANDI1|randi_output_data~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000101010001001010111111101110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_shift_reg2~0_combout\,
	datab => \twimax_wrap|RANDI1|ALT_INV_randi_output_data~0_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_shift_reg2~11_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_shift_reg2\(2),
	dataf => \twimax_wrap|fec1|ALT_INV_shift_reg2\(3),
	combout => \twimax_wrap|fec1|shift_reg2~12_combout\);

-- Location: FF_X7_Y1_N22
\twimax_wrap|fec1|shift_reg2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|shift_reg2~12_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|fec1|input_state_reg.PingPong_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|shift_reg2\(2));

-- Location: LABCELL_X7_Y1_N54
\twimax_wrap|fec1|shift_reg2~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|shift_reg2~10_combout\ = ( \twimax_wrap|fec1|shift_reg2\(2) & ( ((!\twimax_wrap|fec1|shift_reg2~9_combout\ & ((\twimax_wrap|fec1|shift_reg2\(1)))) # (\twimax_wrap|fec1|shift_reg2~9_combout\ & 
-- (\twimax_wrap|RANDI1|randi_output_data~0_combout\))) # (\twimax_wrap|fec1|shift_reg2~0_combout\) ) ) # ( !\twimax_wrap|fec1|shift_reg2\(2) & ( (!\twimax_wrap|fec1|shift_reg2~0_combout\ & ((!\twimax_wrap|fec1|shift_reg2~9_combout\ & 
-- ((\twimax_wrap|fec1|shift_reg2\(1)))) # (\twimax_wrap|fec1|shift_reg2~9_combout\ & (\twimax_wrap|RANDI1|randi_output_data~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000101010001001010111111101110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_shift_reg2~0_combout\,
	datab => \twimax_wrap|RANDI1|ALT_INV_randi_output_data~0_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_shift_reg2~9_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_shift_reg2\(1),
	dataf => \twimax_wrap|fec1|ALT_INV_shift_reg2\(2),
	combout => \twimax_wrap|fec1|shift_reg2~10_combout\);

-- Location: FF_X7_Y1_N56
\twimax_wrap|fec1|shift_reg2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|shift_reg2~10_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|fec1|input_state_reg.PingPong_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|shift_reg2\(1));

-- Location: LABCELL_X7_Y1_N24
\twimax_wrap|fec1|shift_reg2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|shift_reg2~7_combout\ = ( \twimax_wrap|fec1|PingPong_flag~q\ & ( (\twimax_wrap|fec1|counter_buffer_input[1]~DUPLICATE_q\ & (!\twimax_wrap|fec1|counter_buffer_input\(0) & (\twimax_wrap|fec1|process_0~1_combout\ & 
-- !\twimax_wrap|fec1|counter_buffer_input\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input[1]~DUPLICATE_q\,
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(0),
	datac => \twimax_wrap|fec1|ALT_INV_process_0~1_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(2),
	dataf => \twimax_wrap|fec1|ALT_INV_PingPong_flag~q\,
	combout => \twimax_wrap|fec1|shift_reg2~7_combout\);

-- Location: LABCELL_X7_Y1_N57
\twimax_wrap|fec1|shift_reg2~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|shift_reg2~8_combout\ = ( \twimax_wrap|fec1|shift_reg2\(1) & ( ((!\twimax_wrap|fec1|shift_reg2~7_combout\ & ((\twimax_wrap|fec1|shift_reg2\(0)))) # (\twimax_wrap|fec1|shift_reg2~7_combout\ & 
-- (\twimax_wrap|RANDI1|randi_output_data~0_combout\))) # (\twimax_wrap|fec1|shift_reg2~0_combout\) ) ) # ( !\twimax_wrap|fec1|shift_reg2\(1) & ( (!\twimax_wrap|fec1|shift_reg2~0_combout\ & ((!\twimax_wrap|fec1|shift_reg2~7_combout\ & 
-- ((\twimax_wrap|fec1|shift_reg2\(0)))) # (\twimax_wrap|fec1|shift_reg2~7_combout\ & (\twimax_wrap|RANDI1|randi_output_data~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000101010001001010111111101110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_shift_reg2~0_combout\,
	datab => \twimax_wrap|RANDI1|ALT_INV_randi_output_data~0_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_shift_reg2~7_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_shift_reg2\(0),
	dataf => \twimax_wrap|fec1|ALT_INV_shift_reg2\(1),
	combout => \twimax_wrap|fec1|shift_reg2~8_combout\);

-- Location: FF_X7_Y1_N59
\twimax_wrap|fec1|shift_reg2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|shift_reg2~8_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|fec1|input_state_reg.PingPong_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|shift_reg2\(0));

-- Location: LABCELL_X7_Y1_N0
\twimax_wrap|fec1|FEC_output_data~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|FEC_output_data~8_combout\ = ( \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|q_b\(0) & ( !\twimax_wrap|fec1|shift_reg2\(3) $ (!\twimax_wrap|fec1|shift_reg2\(4) $ (!\twimax_wrap|fec1|shift_reg2\(1) $ 
-- (\twimax_wrap|fec1|shift_reg2\(0)))) ) ) # ( !\twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|q_b\(0) & ( !\twimax_wrap|fec1|shift_reg2\(3) $ (!\twimax_wrap|fec1|shift_reg2\(4) $ (!\twimax_wrap|fec1|shift_reg2\(1) $ 
-- (!\twimax_wrap|fec1|shift_reg2\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_shift_reg2\(3),
	datab => \twimax_wrap|fec1|ALT_INV_shift_reg2\(4),
	datac => \twimax_wrap|fec1|ALT_INV_shift_reg2\(1),
	datad => \twimax_wrap|fec1|ALT_INV_shift_reg2\(0),
	dataf => \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	combout => \twimax_wrap|fec1|FEC_output_data~8_combout\);

-- Location: LABCELL_X10_Y2_N33
\twimax_wrap|fec1|Selector74~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector74~0_combout\ = ( !\twimax_wrap|fec1|LessThan5~1_combout\ & ( !\twimax_wrap|fec1|counter_shift_and_output\(30) & ( (\twimax_wrap|fec1|Equal6~2_combout\ & (\twimax_wrap|fec1|Equal6~3_combout\ & (\twimax_wrap|fec1|Equal6~1_combout\ 
-- & \twimax_wrap|fec1|Equal6~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_Equal6~2_combout\,
	datab => \twimax_wrap|fec1|ALT_INV_Equal6~3_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_Equal6~1_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_Equal6~0_combout\,
	datae => \twimax_wrap|fec1|ALT_INV_LessThan5~1_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(30),
	combout => \twimax_wrap|fec1|Selector74~0_combout\);

-- Location: LABCELL_X10_Y2_N54
\twimax_wrap|fec1|Equal9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Equal9~1_combout\ = ( \twimax_wrap|fec1|LessThan5~0_combout\ & ( ((!\twimax_wrap|fec1|Equal8~1_combout\) # (!\twimax_wrap|fec1|Equal9~0_combout\)) # (\twimax_wrap|fec1|counter_shift_and_output[31]~DUPLICATE_q\) ) ) # ( 
-- !\twimax_wrap|fec1|LessThan5~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[31]~DUPLICATE_q\,
	datab => \twimax_wrap|fec1|ALT_INV_Equal8~1_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_Equal9~0_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_LessThan5~0_combout\,
	combout => \twimax_wrap|fec1|Equal9~1_combout\);

-- Location: LABCELL_X10_Y2_N18
\twimax_wrap|fec1|LessThan5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|LessThan5~2_combout\ = ( \twimax_wrap|fec1|LessThan5~0_combout\ & ( (\twimax_wrap|fec1|LessThan5~1_combout\ & ((\twimax_wrap|fec1|counter_shift_and_output\(0)) # (\twimax_wrap|fec1|counter_shift_and_output\(5)))) ) ) # ( 
-- !\twimax_wrap|fec1|LessThan5~0_combout\ & ( \twimax_wrap|fec1|LessThan5~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(5),
	datab => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(0),
	datac => \twimax_wrap|fec1|ALT_INV_LessThan5~1_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_LessThan5~0_combout\,
	combout => \twimax_wrap|fec1|LessThan5~2_combout\);

-- Location: LABCELL_X10_Y2_N57
\twimax_wrap|fec1|Selector74~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector74~3_combout\ = (!\twimax_wrap|fec1|counter_shift_and_output[31]~DUPLICATE_q\ & ((!\twimax_wrap|fec1|Equal8~1_combout\) # (\twimax_wrap|fec1|LessThan5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010001010100010101000101010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[31]~DUPLICATE_q\,
	datab => \twimax_wrap|fec1|ALT_INV_Equal8~1_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_LessThan5~2_combout\,
	combout => \twimax_wrap|fec1|Selector74~3_combout\);

-- Location: LABCELL_X10_Y2_N0
\twimax_wrap|fec1|Selector75~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector75~0_combout\ = ( !\twimax_wrap|fec1|output_state_reg.y~q\ & ( ((!\twimax_wrap|fec1|output_state_reg.idle~q\ & (\twimax_wrap|fec1|Equal9~1_combout\)) # (\twimax_wrap|fec1|output_state_reg.idle~q\ & 
-- (((\twimax_wrap|fec1|Selector74~3_combout\))))) ) ) # ( \twimax_wrap|fec1|output_state_reg.y~q\ & ( (!\twimax_wrap|fec1|output_state_reg.idle~q\ & (\twimax_wrap|fec1|Equal9~1_combout\)) # (\twimax_wrap|fec1|output_state_reg.idle~q\ & 
-- (((\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & ((\twimax_wrap|fec1|Selector74~0_combout\) # (\twimax_wrap|fec1|counter_shift_and_output[31]~DUPLICATE_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100001111010101010000001101010101000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_Equal9~1_combout\,
	datab => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[31]~DUPLICATE_q\,
	datad => \twimax_wrap|fec1|ALT_INV_output_state_reg.idle~q\,
	datae => \twimax_wrap|fec1|ALT_INV_output_state_reg.y~q\,
	dataf => \twimax_wrap|fec1|ALT_INV_Selector74~0_combout\,
	datag => \twimax_wrap|fec1|ALT_INV_Selector74~3_combout\,
	combout => \twimax_wrap|fec1|Selector75~0_combout\);

-- Location: LABCELL_X6_Y1_N3
\twimax_wrap|fec1|output_state_reg.y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|output_state_reg.y~0_combout\ = !\twimax_wrap|fec1|Selector75~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_Selector75~0_combout\,
	combout => \twimax_wrap|fec1|output_state_reg.y~0_combout\);

-- Location: FF_X6_Y1_N4
\twimax_wrap|fec1|output_state_reg.y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|output_state_reg.y~0_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|fec1|finished_tail_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|output_state_reg.y~q\);

-- Location: LABCELL_X10_Y2_N21
\twimax_wrap|fec1|Selector74~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector74~1_combout\ = ( \twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & ( \twimax_wrap|fec1|output_state_reg.y~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_output_state_reg.y~q\,
	dataf => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	combout => \twimax_wrap|fec1|Selector74~1_combout\);

-- Location: LABCELL_X10_Y2_N48
\twimax_wrap|fec1|Selector74~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector74~2_combout\ = ( \twimax_wrap|fec1|output_state_reg.x~q\ & ( \twimax_wrap|fec1|LessThan5~2_combout\ & ( (!\twimax_wrap|fec1|counter_shift_and_output[31]~DUPLICATE_q\) # (\twimax_wrap|fec1|Selector74~1_combout\) ) ) ) # ( 
-- !\twimax_wrap|fec1|output_state_reg.x~q\ & ( \twimax_wrap|fec1|LessThan5~2_combout\ & ( (\twimax_wrap|fec1|Selector74~1_combout\ & ((\twimax_wrap|fec1|counter_shift_and_output[31]~DUPLICATE_q\) # (\twimax_wrap|fec1|Selector74~0_combout\))) ) ) ) # ( 
-- \twimax_wrap|fec1|output_state_reg.x~q\ & ( !\twimax_wrap|fec1|LessThan5~2_combout\ & ( (!\twimax_wrap|fec1|counter_shift_and_output[31]~DUPLICATE_q\ & ((!\twimax_wrap|fec1|Equal8~1_combout\) # ((\twimax_wrap|fec1|Selector74~0_combout\ & 
-- \twimax_wrap|fec1|Selector74~1_combout\)))) # (\twimax_wrap|fec1|counter_shift_and_output[31]~DUPLICATE_q\ & (((\twimax_wrap|fec1|Selector74~1_combout\)))) ) ) ) # ( !\twimax_wrap|fec1|output_state_reg.x~q\ & ( !\twimax_wrap|fec1|LessThan5~2_combout\ & ( 
-- (\twimax_wrap|fec1|Selector74~1_combout\ & ((\twimax_wrap|fec1|counter_shift_and_output[31]~DUPLICATE_q\) # (\twimax_wrap|fec1|Selector74~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111110000001101111100000000010111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_Selector74~0_combout\,
	datab => \twimax_wrap|fec1|ALT_INV_Equal8~1_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output[31]~DUPLICATE_q\,
	datad => \twimax_wrap|fec1|ALT_INV_Selector74~1_combout\,
	datae => \twimax_wrap|fec1|ALT_INV_output_state_reg.x~q\,
	dataf => \twimax_wrap|fec1|ALT_INV_LessThan5~2_combout\,
	combout => \twimax_wrap|fec1|Selector74~2_combout\);

-- Location: FF_X10_Y2_N49
\twimax_wrap|fec1|output_state_reg.x\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Selector74~2_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|fec1|finished_tail_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|output_state_reg.x~q\);

-- Location: FF_X6_Y1_N5
\twimax_wrap|fec1|output_state_reg.y~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|output_state_reg.y~0_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|fec1|finished_tail_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|output_state_reg.y~DUPLICATE_q\);

-- Location: LABCELL_X6_Y1_N48
\twimax_wrap|fec1|FEC_output_data~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|FEC_output_data~9_combout\ = ( \twimax_wrap|fec1|output_state_reg.y~DUPLICATE_q\ & ( !\twimax_wrap|fec1|PingPong_flag~q\ & ( (\twimax_wrap|fec1|FEC_output_data~8_combout\ & (!\twimax_wrap|fec1|output_state_reg.x~q\ & 
-- ((!\twimax_wrap|fec1|finished_tail_flag~q\) # (\twimax_wrap|fec1|output_state_reg.idle~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_finished_tail_flag~q\,
	datab => \twimax_wrap|fec1|ALT_INV_output_state_reg.idle~q\,
	datac => \twimax_wrap|fec1|ALT_INV_FEC_output_data~8_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_output_state_reg.x~q\,
	datae => \twimax_wrap|fec1|ALT_INV_output_state_reg.y~DUPLICATE_q\,
	dataf => \twimax_wrap|fec1|ALT_INV_PingPong_flag~q\,
	combout => \twimax_wrap|fec1|FEC_output_data~9_combout\);

-- Location: LABCELL_X7_Y1_N3
\twimax_wrap|fec1|FEC_output_data~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|FEC_output_data~6_combout\ = ( \twimax_wrap|fec1|shift_reg2\(5) & ( !\twimax_wrap|fec1|shift_reg2\(3) $ (!\twimax_wrap|fec1|shift_reg2\(4) $ (!\twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|q_b\(0) $ 
-- (\twimax_wrap|fec1|shift_reg2\(0)))) ) ) # ( !\twimax_wrap|fec1|shift_reg2\(5) & ( !\twimax_wrap|fec1|shift_reg2\(3) $ (!\twimax_wrap|fec1|shift_reg2\(4) $ (!\twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|q_b\(0) $ 
-- (!\twimax_wrap|fec1|shift_reg2\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_shift_reg2\(3),
	datab => \twimax_wrap|fec1|ALT_INV_shift_reg2\(4),
	datac => \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	datad => \twimax_wrap|fec1|ALT_INV_shift_reg2\(0),
	dataf => \twimax_wrap|fec1|ALT_INV_shift_reg2\(5),
	combout => \twimax_wrap|fec1|FEC_output_data~6_combout\);

-- Location: LABCELL_X6_Y1_N6
\twimax_wrap|fec1|FEC_output_data~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|FEC_output_data~7_combout\ = ( \twimax_wrap|fec1|FEC_output_data~6_combout\ & ( (!\twimax_wrap|fec1|PingPong_flag~q\ & (((!\twimax_wrap|fec1|output_state_reg.idle~q\ & \twimax_wrap|fec1|finished_tail_flag~q\)) # 
-- (\twimax_wrap|fec1|output_state_reg.x~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000101010100000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_PingPong_flag~q\,
	datab => \twimax_wrap|fec1|ALT_INV_output_state_reg.idle~q\,
	datac => \twimax_wrap|fec1|ALT_INV_finished_tail_flag~q\,
	datad => \twimax_wrap|fec1|ALT_INV_output_state_reg.x~q\,
	dataf => \twimax_wrap|fec1|ALT_INV_FEC_output_data~6_combout\,
	combout => \twimax_wrap|fec1|FEC_output_data~7_combout\);

-- Location: LABCELL_X6_Y2_N39
\twimax_wrap|fec1|Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector35~0_combout\ = ( \twimax_wrap|fec1|counter_shift_and_output\(30) & ( (\twimax_wrap|fec1|counter_shift_and_output\(31) & \twimax_wrap|fec1|PingPong_flag~q\) ) ) # ( !\twimax_wrap|fec1|counter_shift_and_output\(30) & ( 
-- (\twimax_wrap|fec1|PingPong_flag~q\ & (((\twimax_wrap|fec1|LessThan2~0_combout\ & \twimax_wrap|fec1|Equal6~5_combout\)) # (\twimax_wrap|fec1|counter_shift_and_output\(31)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010111000000000101011100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(31),
	datab => \twimax_wrap|fec1|ALT_INV_LessThan2~0_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_Equal6~5_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_PingPong_flag~q\,
	dataf => \twimax_wrap|fec1|ALT_INV_counter_shift_and_output\(30),
	combout => \twimax_wrap|fec1|Selector35~0_combout\);

-- Location: LABCELL_X6_Y2_N45
\twimax_wrap|fec1|Selector35~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector35~1_combout\ = ( \twimax_wrap|fec1|process_0~1_combout\ & ( (\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & ((\twimax_wrap|fec1|PingPong_flag~q\) # (\twimax_wrap|fec1|Selector35~0_combout\))) ) ) # ( 
-- !\twimax_wrap|fec1|process_0~1_combout\ & ( \twimax_wrap|fec1|input_state_reg.PingPong_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100010001010101010001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datab => \twimax_wrap|fec1|ALT_INV_Selector35~0_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_PingPong_flag~q\,
	dataf => \twimax_wrap|fec1|ALT_INV_process_0~1_combout\,
	combout => \twimax_wrap|fec1|Selector35~1_combout\);

-- Location: LABCELL_X6_Y1_N18
\twimax_wrap|fec1|Selector35~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector35~3_combout\ = ( !\twimax_wrap|fec1|Selector35~1_combout\ & ( (!\twimax_wrap|fec1|counter_buffer_input[1]~DUPLICATE_q\ & ((((\twimax_wrap|fec1|shift_reg\(5)))))) # (\twimax_wrap|fec1|counter_buffer_input[1]~DUPLICATE_q\ & 
-- ((!\twimax_wrap|fec1|counter_buffer_input\(2) & (((\twimax_wrap|fec1|shift_reg\(5))))) # (\twimax_wrap|fec1|counter_buffer_input\(2) & ((!\twimax_wrap|fec1|counter_buffer_input\(0) & ((\twimax_wrap|fec1|shift_reg\(5)))) # 
-- (\twimax_wrap|fec1|counter_buffer_input\(0) & (\twimax_wrap|RANDI1|randi_output_data~0_combout\)))))) ) ) # ( \twimax_wrap|fec1|Selector35~1_combout\ & ( (((\twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|q_b\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000001000011110000111111111110111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input[1]~DUPLICATE_q\,
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(2),
	datac => \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	datad => \twimax_wrap|RANDI1|ALT_INV_randi_output_data~0_combout\,
	datae => \twimax_wrap|fec1|ALT_INV_Selector35~1_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_shift_reg\(5),
	datag => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(0),
	combout => \twimax_wrap|fec1|Selector35~3_combout\);

-- Location: LABCELL_X6_Y2_N42
\twimax_wrap|fec1|Selector35~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector35~2_combout\ = ( \twimax_wrap|fec1|process_0~1_combout\ & ( (!\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & (((\twimax_wrap|fec1|input_state_reg.input_buffer~q\)))) # (\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ 
-- & (((!\twimax_wrap|fec1|PingPong_flag~q\)) # (\twimax_wrap|fec1|Selector35~0_combout\))) ) ) # ( !\twimax_wrap|fec1|process_0~1_combout\ & ( (\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & \twimax_wrap|fec1|Selector35~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101011111000110110101111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datab => \twimax_wrap|fec1|ALT_INV_Selector35~0_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_input_state_reg.input_buffer~q\,
	datad => \twimax_wrap|fec1|ALT_INV_PingPong_flag~q\,
	dataf => \twimax_wrap|fec1|ALT_INV_process_0~1_combout\,
	combout => \twimax_wrap|fec1|Selector35~2_combout\);

-- Location: FF_X6_Y1_N20
\twimax_wrap|fec1|shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Selector35~3_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|fec1|Selector35~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|shift_reg\(5));

-- Location: LABCELL_X6_Y1_N12
\twimax_wrap|fec1|Selector36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector36~0_combout\ = ( !\twimax_wrap|fec1|Selector35~1_combout\ & ( (!\twimax_wrap|fec1|counter_buffer_input[1]~DUPLICATE_q\ & ((((\twimax_wrap|fec1|shift_reg\(4)))))) # (\twimax_wrap|fec1|counter_buffer_input[1]~DUPLICATE_q\ & 
-- ((!\twimax_wrap|fec1|counter_buffer_input\(2) & (((\twimax_wrap|fec1|shift_reg\(4))))) # (\twimax_wrap|fec1|counter_buffer_input\(2) & ((!\twimax_wrap|fec1|counter_buffer_input\(0) & (\twimax_wrap|RANDI1|randi_output_data~0_combout\)) # 
-- (\twimax_wrap|fec1|counter_buffer_input\(0) & ((\twimax_wrap|fec1|shift_reg\(4)))))))) ) ) # ( \twimax_wrap|fec1|Selector35~1_combout\ & ( (((\twimax_wrap|fec1|shift_reg\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000010000000011110000111111101111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input[1]~DUPLICATE_q\,
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(2),
	datac => \twimax_wrap|fec1|ALT_INV_shift_reg\(5),
	datad => \twimax_wrap|RANDI1|ALT_INV_randi_output_data~0_combout\,
	datae => \twimax_wrap|fec1|ALT_INV_Selector35~1_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_shift_reg\(4),
	datag => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(0),
	combout => \twimax_wrap|fec1|Selector36~0_combout\);

-- Location: FF_X6_Y1_N14
\twimax_wrap|fec1|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Selector36~0_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|fec1|Selector35~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|shift_reg\(4));

-- Location: FF_X6_Y1_N37
\twimax_wrap|fec1|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Selector37~0_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|fec1|Selector35~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|shift_reg\(3));

-- Location: LABCELL_X6_Y1_N36
\twimax_wrap|fec1|Selector37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector37~0_combout\ = ( !\twimax_wrap|fec1|Selector35~1_combout\ & ( (!\twimax_wrap|fec1|counter_buffer_input[1]~DUPLICATE_q\ & ((!\twimax_wrap|fec1|counter_buffer_input\(2) & (((\twimax_wrap|fec1|shift_reg\(3))))) # 
-- (\twimax_wrap|fec1|counter_buffer_input\(2) & ((!\twimax_wrap|fec1|counter_buffer_input\(0) & ((\twimax_wrap|fec1|shift_reg\(3)))) # (\twimax_wrap|fec1|counter_buffer_input\(0) & (\twimax_wrap|RANDI1|randi_output_data~0_combout\)))))) # 
-- (\twimax_wrap|fec1|counter_buffer_input[1]~DUPLICATE_q\ & ((((\twimax_wrap|fec1|shift_reg\(3)))))) ) ) # ( \twimax_wrap|fec1|Selector35~1_combout\ & ( (((\twimax_wrap|fec1|shift_reg\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000010000011110000111111111101111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input[1]~DUPLICATE_q\,
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(2),
	datac => \twimax_wrap|fec1|ALT_INV_shift_reg\(4),
	datad => \twimax_wrap|RANDI1|ALT_INV_randi_output_data~0_combout\,
	datae => \twimax_wrap|fec1|ALT_INV_Selector35~1_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_shift_reg\(3),
	datag => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(0),
	combout => \twimax_wrap|fec1|Selector37~0_combout\);

-- Location: FF_X6_Y1_N38
\twimax_wrap|fec1|shift_reg[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Selector37~0_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|fec1|Selector35~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|shift_reg[3]~DUPLICATE_q\);

-- Location: FF_X6_Y1_N19
\twimax_wrap|fec1|shift_reg[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Selector35~3_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|fec1|Selector35~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|shift_reg[5]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y1_N12
\twimax_wrap|fec1|shift_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|shift_reg~0_combout\ = ( \twimax_wrap|fec1|shift_reg\(0) & ( (!\twimax_wrap|fec1|counter_buffer_input[1]~DUPLICATE_q\) # (((\twimax_wrap|RANDI1|randi_output_data~0_combout\) # (\twimax_wrap|fec1|counter_buffer_input\(2))) # 
-- (\twimax_wrap|fec1|counter_buffer_input\(0))) ) ) # ( !\twimax_wrap|fec1|shift_reg\(0) & ( (\twimax_wrap|fec1|counter_buffer_input[1]~DUPLICATE_q\ & (!\twimax_wrap|fec1|counter_buffer_input\(0) & (!\twimax_wrap|fec1|counter_buffer_input\(2) & 
-- \twimax_wrap|RANDI1|randi_output_data~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000010111111111111111011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input[1]~DUPLICATE_q\,
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(0),
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(2),
	datad => \twimax_wrap|RANDI1|ALT_INV_randi_output_data~0_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_shift_reg\(0),
	combout => \twimax_wrap|fec1|shift_reg~0_combout\);

-- Location: FF_X7_Y1_N11
\twimax_wrap|fec1|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Selector39~1_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|fec1|Selector35~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|shift_reg\(1));

-- Location: LABCELL_X7_Y1_N15
\twimax_wrap|fec1|Selector39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector39~0_combout\ = ( \twimax_wrap|fec1|shift_reg\(1) & ( (!\twimax_wrap|fec1|counter_buffer_input[1]~DUPLICATE_q\) # ((!\twimax_wrap|fec1|counter_buffer_input\(0)) # ((\twimax_wrap|RANDI1|randi_output_data~0_combout\) # 
-- (\twimax_wrap|fec1|counter_buffer_input\(2)))) ) ) # ( !\twimax_wrap|fec1|shift_reg\(1) & ( (\twimax_wrap|fec1|counter_buffer_input[1]~DUPLICATE_q\ & (\twimax_wrap|fec1|counter_buffer_input\(0) & (!\twimax_wrap|fec1|counter_buffer_input\(2) & 
-- \twimax_wrap|RANDI1|randi_output_data~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000011101111111111111110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input[1]~DUPLICATE_q\,
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(0),
	datac => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(2),
	datad => \twimax_wrap|RANDI1|ALT_INV_randi_output_data~0_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_shift_reg\(1),
	combout => \twimax_wrap|fec1|Selector39~0_combout\);

-- Location: LABCELL_X6_Y1_N30
\twimax_wrap|fec1|Selector38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector38~0_combout\ = ( !\twimax_wrap|fec1|Selector35~1_combout\ & ( (!\twimax_wrap|fec1|counter_buffer_input[1]~DUPLICATE_q\ & ((!\twimax_wrap|fec1|counter_buffer_input\(0) & ((!\twimax_wrap|fec1|counter_buffer_input\(2) & 
-- (\twimax_wrap|fec1|shift_reg\(2))) # (\twimax_wrap|fec1|counter_buffer_input\(2) & ((\twimax_wrap|RANDI1|randi_output_data~0_combout\))))) # (\twimax_wrap|fec1|counter_buffer_input\(0) & (\twimax_wrap|fec1|shift_reg\(2))))) # 
-- (\twimax_wrap|fec1|counter_buffer_input[1]~DUPLICATE_q\ & (((\twimax_wrap|fec1|shift_reg\(2))))) ) ) # ( \twimax_wrap|fec1|Selector35~1_combout\ & ( (((\twimax_wrap|fec1|shift_reg\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000111000011110000111100001111100011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_counter_buffer_input[1]~DUPLICATE_q\,
	datab => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(0),
	datac => \twimax_wrap|fec1|ALT_INV_shift_reg\(3),
	datad => \twimax_wrap|fec1|ALT_INV_counter_buffer_input\(2),
	datae => \twimax_wrap|fec1|ALT_INV_Selector35~1_combout\,
	dataf => \twimax_wrap|RANDI1|ALT_INV_randi_output_data~0_combout\,
	datag => \twimax_wrap|fec1|ALT_INV_shift_reg\(2),
	combout => \twimax_wrap|fec1|Selector38~0_combout\);

-- Location: FF_X6_Y1_N31
\twimax_wrap|fec1|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Selector38~0_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|fec1|Selector35~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|shift_reg\(2));

-- Location: LABCELL_X7_Y1_N9
\twimax_wrap|fec1|Selector39~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector39~1_combout\ = ( \twimax_wrap|fec1|shift_reg\(2) & ( ((\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & ((!\twimax_wrap|fec1|process_0~1_combout\) # (\twimax_wrap|fec1|PingPong_flag~q\)))) # 
-- (\twimax_wrap|fec1|Selector39~0_combout\) ) ) # ( !\twimax_wrap|fec1|shift_reg\(2) & ( (\twimax_wrap|fec1|Selector39~0_combout\ & ((!\twimax_wrap|fec1|input_state_reg.PingPong_state~q\) # ((!\twimax_wrap|fec1|PingPong_flag~q\ & 
-- \twimax_wrap|fec1|process_0~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000010000011110000001000001111110111110000111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_PingPong_flag~q\,
	datab => \twimax_wrap|fec1|ALT_INV_process_0~1_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_Selector39~0_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	dataf => \twimax_wrap|fec1|ALT_INV_shift_reg\(2),
	combout => \twimax_wrap|fec1|Selector39~1_combout\);

-- Location: FF_X7_Y1_N10
\twimax_wrap|fec1|shift_reg[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Selector39~1_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|fec1|Selector35~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|shift_reg[1]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y1_N30
\twimax_wrap|fec1|Selector40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|Selector40~0_combout\ = ( \twimax_wrap|fec1|shift_reg[1]~DUPLICATE_q\ & ( \twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & ( (\twimax_wrap|fec1|Selector35~0_combout\) # (\twimax_wrap|fec1|shift_reg~0_combout\) ) ) ) # ( 
-- !\twimax_wrap|fec1|shift_reg[1]~DUPLICATE_q\ & ( \twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & ( (\twimax_wrap|fec1|process_0~1_combout\ & (\twimax_wrap|fec1|shift_reg~0_combout\ & !\twimax_wrap|fec1|PingPong_flag~q\)) ) ) ) # ( 
-- \twimax_wrap|fec1|shift_reg[1]~DUPLICATE_q\ & ( !\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & ( \twimax_wrap|fec1|shift_reg~0_combout\ ) ) ) # ( !\twimax_wrap|fec1|shift_reg[1]~DUPLICATE_q\ & ( !\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ 
-- & ( \twimax_wrap|fec1|shift_reg~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100010000000100000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_process_0~1_combout\,
	datab => \twimax_wrap|fec1|ALT_INV_shift_reg~0_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_PingPong_flag~q\,
	datad => \twimax_wrap|fec1|ALT_INV_Selector35~0_combout\,
	datae => \twimax_wrap|fec1|ALT_INV_shift_reg[1]~DUPLICATE_q\,
	dataf => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	combout => \twimax_wrap|fec1|Selector40~0_combout\);

-- Location: FF_X7_Y1_N32
\twimax_wrap|fec1|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \twimax_wrap|fec1|Selector40~0_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	ena => \twimax_wrap|fec1|Selector35~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|fec1|shift_reg\(0));

-- Location: LABCELL_X6_Y1_N0
\twimax_wrap|fec1|FEC_output_data~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|FEC_output_data~3_combout\ = ( \twimax_wrap|fec1|shift_reg\(4) & ( !\twimax_wrap|fec1|shift_reg[3]~DUPLICATE_q\ $ (!\twimax_wrap|fec1|shift_reg[5]~DUPLICATE_q\ $ (!\twimax_wrap|fec1|shift_reg\(0) $ 
-- (\twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|q_b\(0)))) ) ) # ( !\twimax_wrap|fec1|shift_reg\(4) & ( !\twimax_wrap|fec1|shift_reg[3]~DUPLICATE_q\ $ (!\twimax_wrap|fec1|shift_reg[5]~DUPLICATE_q\ $ (!\twimax_wrap|fec1|shift_reg\(0) $ 
-- (!\twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|q_b\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_shift_reg[3]~DUPLICATE_q\,
	datab => \twimax_wrap|fec1|ALT_INV_shift_reg[5]~DUPLICATE_q\,
	datac => \twimax_wrap|fec1|ALT_INV_shift_reg\(0),
	datad => \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	dataf => \twimax_wrap|fec1|ALT_INV_shift_reg\(4),
	combout => \twimax_wrap|fec1|FEC_output_data~3_combout\);

-- Location: LABCELL_X6_Y1_N45
\twimax_wrap|fec1|FEC_output_data~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|FEC_output_data~5_combout\ = ( \twimax_wrap|fec1|shift_reg\(0) & ( !\twimax_wrap|fec1|shift_reg[3]~DUPLICATE_q\ $ (!\twimax_wrap|fec1|shift_reg\(4) $ (!\twimax_wrap|fec1|shift_reg[1]~DUPLICATE_q\ $ 
-- (\twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|q_b\(0)))) ) ) # ( !\twimax_wrap|fec1|shift_reg\(0) & ( !\twimax_wrap|fec1|shift_reg[3]~DUPLICATE_q\ $ (!\twimax_wrap|fec1|shift_reg\(4) $ (!\twimax_wrap|fec1|shift_reg[1]~DUPLICATE_q\ $ 
-- (!\twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|q_b\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_shift_reg[3]~DUPLICATE_q\,
	datab => \twimax_wrap|fec1|ALT_INV_shift_reg\(4),
	datac => \twimax_wrap|fec1|ALT_INV_shift_reg[1]~DUPLICATE_q\,
	datad => \twimax_wrap|fec1|ram1|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	dataf => \twimax_wrap|fec1|ALT_INV_shift_reg\(0),
	combout => \twimax_wrap|fec1|FEC_output_data~5_combout\);

-- Location: LABCELL_X6_Y1_N9
\twimax_wrap|fec1|FEC_output_data~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|FEC_output_data~4_combout\ = ( \twimax_wrap|fec1|output_state_reg.x~q\ & ( \twimax_wrap|fec1|PingPong_flag~q\ ) ) # ( !\twimax_wrap|fec1|output_state_reg.x~q\ & ( (\twimax_wrap|fec1|PingPong_flag~q\ & 
-- (!\twimax_wrap|fec1|output_state_reg.idle~q\ & \twimax_wrap|fec1|finished_tail_flag~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_PingPong_flag~q\,
	datac => \twimax_wrap|fec1|ALT_INV_output_state_reg.idle~q\,
	datad => \twimax_wrap|fec1|ALT_INV_finished_tail_flag~q\,
	dataf => \twimax_wrap|fec1|ALT_INV_output_state_reg.x~q\,
	combout => \twimax_wrap|fec1|FEC_output_data~4_combout\);

-- Location: LABCELL_X6_Y1_N24
\twimax_wrap|fec1|FEC_output_data~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|FEC_output_data~12_combout\ = ( !\twimax_wrap|fec1|FEC_output_data~4_combout\ & ( (!\twimax_wrap|fec1|output_state_reg.y~DUPLICATE_q\ & (((\twimax_wrap|fec1|FEC_output_data~7_combout\)) # (\twimax_wrap|fec1|FEC_output_data~9_combout\))) 
-- # (\twimax_wrap|fec1|output_state_reg.y~DUPLICATE_q\ & ((!\twimax_wrap|fec1|PingPong_flag~q\ & (((\twimax_wrap|fec1|FEC_output_data~7_combout\)) # (\twimax_wrap|fec1|FEC_output_data~9_combout\))) # (\twimax_wrap|fec1|PingPong_flag~q\ & 
-- (((\twimax_wrap|fec1|FEC_output_data~5_combout\)))))) ) ) # ( \twimax_wrap|fec1|FEC_output_data~4_combout\ & ( (((\twimax_wrap|fec1|FEC_output_data~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0111011101110111000011110000111101110000011111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_FEC_output_data~9_combout\,
	datab => \twimax_wrap|fec1|ALT_INV_FEC_output_data~7_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_FEC_output_data~3_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_FEC_output_data~5_combout\,
	datae => \twimax_wrap|fec1|ALT_INV_FEC_output_data~4_combout\,
	dataf => \twimax_wrap|fec1|ALT_INV_PingPong_flag~q\,
	datag => \twimax_wrap|fec1|ALT_INV_output_state_reg.y~DUPLICATE_q\,
	combout => \twimax_wrap|fec1|FEC_output_data~12_combout\);

-- Location: LABCELL_X6_Y1_N42
\twimax_wrap|fec1|FEC_output_data~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|FEC_output_data~10_combout\ = ( !\twimax_wrap|fec1|output_state_reg.x~q\ & ( (!\twimax_wrap|fec1|finished_tail_flag~q\) # (\twimax_wrap|fec1|output_state_reg.idle~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|fec1|ALT_INV_finished_tail_flag~q\,
	datad => \twimax_wrap|fec1|ALT_INV_output_state_reg.idle~q\,
	dataf => \twimax_wrap|fec1|ALT_INV_output_state_reg.x~q\,
	combout => \twimax_wrap|fec1|FEC_output_data~10_combout\);

-- Location: LABCELL_X6_Y1_N54
\twimax_wrap|fec1|FEC_output_data~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|fec1|FEC_output_data~11_combout\ = ( \twimax_wrap|fec1|output_state_reg.y~DUPLICATE_q\ & ( \twimax_wrap|fec1|FEC_output_data~6_combout\ & ( (!\twimax_wrap|fec1|PingPong_flag~q\ & ((!\twimax_wrap|fec1|FEC_output_data~10_combout\) # 
-- ((\twimax_wrap|fec1|FEC_output_data~8_combout\)))) # (\twimax_wrap|fec1|PingPong_flag~q\ & (\twimax_wrap|fec1|FEC_output_data~10_combout\ & ((\twimax_wrap|fec1|FEC_output_data~5_combout\)))) ) ) ) # ( !\twimax_wrap|fec1|output_state_reg.y~DUPLICATE_q\ & ( 
-- \twimax_wrap|fec1|FEC_output_data~6_combout\ & ( (!\twimax_wrap|fec1|PingPong_flag~q\ & !\twimax_wrap|fec1|FEC_output_data~10_combout\) ) ) ) # ( \twimax_wrap|fec1|output_state_reg.y~DUPLICATE_q\ & ( !\twimax_wrap|fec1|FEC_output_data~6_combout\ & ( 
-- (\twimax_wrap|fec1|FEC_output_data~10_combout\ & ((!\twimax_wrap|fec1|PingPong_flag~q\ & (\twimax_wrap|fec1|FEC_output_data~8_combout\)) # (\twimax_wrap|fec1|PingPong_flag~q\ & ((\twimax_wrap|fec1|FEC_output_data~5_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100001001110001000100010001000101010011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_PingPong_flag~q\,
	datab => \twimax_wrap|fec1|ALT_INV_FEC_output_data~10_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_FEC_output_data~8_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_FEC_output_data~5_combout\,
	datae => \twimax_wrap|fec1|ALT_INV_output_state_reg.y~DUPLICATE_q\,
	dataf => \twimax_wrap|fec1|ALT_INV_FEC_output_data~6_combout\,
	combout => \twimax_wrap|fec1|FEC_output_data~11_combout\);

-- Location: LABCELL_X12_Y4_N0
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( !FEC_Counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add2~14\ = CARRY(( !FEC_Counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_FEC_Counter(0),
	cin => GND,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: MLABCELL_X13_Y4_N3
\FEC_Counter[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \FEC_Counter[0]~3_combout\ = ( !\Add2~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~13_sumout\,
	combout => \FEC_Counter[0]~3_combout\);

-- Location: FF_X12_Y4_N34
\FEC_Counter[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~125_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FEC_Counter[11]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y4_N54
\Equal2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = ( !FEC_Counter(26) & ( FEC_Counter(1) & ( (FEC_Counter(0) & (!\FEC_Counter[11]~DUPLICATE_q\ & (!FEC_Counter(9) & !FEC_Counter(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_FEC_Counter(0),
	datab => \ALT_INV_FEC_Counter[11]~DUPLICATE_q\,
	datac => ALT_INV_FEC_Counter(9),
	datad => ALT_INV_FEC_Counter(8),
	datae => ALT_INV_FEC_Counter(26),
	dataf => ALT_INV_FEC_Counter(1),
	combout => \Equal2~5_combout\);

-- Location: LABCELL_X12_Y3_N42
\Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( !FEC_Counter(21) & ( !FEC_Counter(19) & ( (!FEC_Counter(20) & (!FEC_Counter(24) & (!FEC_Counter(22) & !FEC_Counter(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_FEC_Counter(20),
	datab => ALT_INV_FEC_Counter(24),
	datac => ALT_INV_FEC_Counter(22),
	datad => ALT_INV_FEC_Counter(23),
	datae => ALT_INV_FEC_Counter(21),
	dataf => ALT_INV_FEC_Counter(19),
	combout => \Equal2~1_combout\);

-- Location: LABCELL_X12_Y3_N48
\Equal2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = ( !FEC_Counter(27) & ( !\FEC_Counter[6]~DUPLICATE_q\ & ( (!FEC_Counter(13) & (!FEC_Counter(28) & (!FEC_Counter(29) & !FEC_Counter(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_FEC_Counter(13),
	datab => ALT_INV_FEC_Counter(28),
	datac => ALT_INV_FEC_Counter(29),
	datad => ALT_INV_FEC_Counter(12),
	datae => ALT_INV_FEC_Counter(27),
	dataf => \ALT_INV_FEC_Counter[6]~DUPLICATE_q\,
	combout => \Equal2~3_combout\);

-- Location: FF_X12_Y4_N46
\FEC_Counter[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~77_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FEC_Counter[15]~DUPLICATE_q\);

-- Location: FF_X12_Y4_N49
\FEC_Counter[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~81_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FEC_Counter[16]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y4_N42
\Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = ( !\FEC_Counter[16]~DUPLICATE_q\ & ( !FEC_Counter(10) & ( (!FEC_Counter(17) & (!FEC_Counter(14) & (!\FEC_Counter[15]~DUPLICATE_q\ & !FEC_Counter(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_FEC_Counter(17),
	datab => ALT_INV_FEC_Counter(14),
	datac => \ALT_INV_FEC_Counter[15]~DUPLICATE_q\,
	datad => ALT_INV_FEC_Counter(18),
	datae => \ALT_INV_FEC_Counter[16]~DUPLICATE_q\,
	dataf => ALT_INV_FEC_Counter(10),
	combout => \Equal2~2_combout\);

-- Location: LABCELL_X12_Y3_N36
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !FEC_Counter(25) & ( !FEC_Counter(30) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_FEC_Counter(30),
	dataf => ALT_INV_FEC_Counter(25),
	combout => \Equal2~0_combout\);

-- Location: MLABCELL_X13_Y4_N18
\Equal2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = ( !FEC_Counter(31) & ( FEC_Counter(4) & ( (FEC_Counter(2) & (FEC_Counter(3) & (FEC_Counter(7) & FEC_Counter(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_FEC_Counter(2),
	datab => ALT_INV_FEC_Counter(3),
	datac => ALT_INV_FEC_Counter(7),
	datad => ALT_INV_FEC_Counter(5),
	datae => ALT_INV_FEC_Counter(31),
	dataf => ALT_INV_FEC_Counter(4),
	combout => \Equal2~4_combout\);

-- Location: LABCELL_X12_Y3_N54
\Equal2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = ( \Equal2~0_combout\ & ( \Equal2~4_combout\ & ( (\Equal2~5_combout\ & (\Equal2~1_combout\ & (\Equal2~3_combout\ & \Equal2~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~5_combout\,
	datab => \ALT_INV_Equal2~1_combout\,
	datac => \ALT_INV_Equal2~3_combout\,
	datad => \ALT_INV_Equal2~2_combout\,
	datae => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Equal2~4_combout\,
	combout => \Equal2~6_combout\);

-- Location: MLABCELL_X13_Y4_N30
\Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( FEC_Counter(5) & ( FEC_Counter(4) & ( (!FEC_Counter(2) & (!FEC_Counter(1) & ((FEC_Counter(0)) # (FEC_Counter(3))))) # (FEC_Counter(2) & (!FEC_Counter(0) & ((!FEC_Counter(1)) # (FEC_Counter(3))))) ) ) ) # ( !FEC_Counter(5) & ( 
-- FEC_Counter(4) & ( (!FEC_Counter(3) & (!FEC_Counter(1) $ (((!FEC_Counter(2) & !FEC_Counter(0)))))) # (FEC_Counter(3) & ((!FEC_Counter(0) & ((!FEC_Counter(1)))) # (FEC_Counter(0) & (FEC_Counter(2) & FEC_Counter(1))))) ) ) ) # ( FEC_Counter(5) & ( 
-- !FEC_Counter(4) & ( (!FEC_Counter(2) & (((FEC_Counter(0) & FEC_Counter(1))))) # (FEC_Counter(2) & ((!FEC_Counter(3) & (FEC_Counter(0))) # (FEC_Counter(3) & ((FEC_Counter(1)))))) ) ) ) # ( !FEC_Counter(5) & ( !FEC_Counter(4) & ( (!FEC_Counter(0) & 
-- (FEC_Counter(2) & ((!FEC_Counter(1)) # (FEC_Counter(3))))) # (FEC_Counter(0) & (!FEC_Counter(2) $ (((FEC_Counter(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000010101000001000001111101111100100000010111101000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_FEC_Counter(2),
	datab => ALT_INV_FEC_Counter(3),
	datac => ALT_INV_FEC_Counter(0),
	datad => ALT_INV_FEC_Counter(1),
	datae => ALT_INV_FEC_Counter(5),
	dataf => ALT_INV_FEC_Counter(4),
	combout => \Mux2~1_combout\);

-- Location: FF_X12_Y4_N19
\FEC_Counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~9_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(6));

-- Location: MLABCELL_X13_Y4_N36
\Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( FEC_Counter(5) & ( FEC_Counter(4) & ( (!FEC_Counter(0) & (!FEC_Counter(1) $ (((!FEC_Counter(3)) # (FEC_Counter(2)))))) # (FEC_Counter(0) & (FEC_Counter(3) & ((!FEC_Counter(2)) # (!FEC_Counter(1))))) ) ) ) # ( !FEC_Counter(5) & ( 
-- FEC_Counter(4) & ( (!FEC_Counter(2) & ((!FEC_Counter(0)) # ((FEC_Counter(3) & FEC_Counter(1))))) # (FEC_Counter(2) & (FEC_Counter(0) & ((FEC_Counter(1)) # (FEC_Counter(3))))) ) ) ) # ( FEC_Counter(5) & ( !FEC_Counter(4) & ( (!FEC_Counter(2) & 
-- (FEC_Counter(3) & (!FEC_Counter(0) & !FEC_Counter(1)))) # (FEC_Counter(2) & ((!FEC_Counter(3) & ((!FEC_Counter(0)) # (FEC_Counter(1)))) # (FEC_Counter(3) & (FEC_Counter(0))))) ) ) ) # ( !FEC_Counter(5) & ( !FEC_Counter(4) & ( (!FEC_Counter(1) & 
-- (!FEC_Counter(3) & (!FEC_Counter(2) $ (!FEC_Counter(0))))) # (FEC_Counter(1) & ((!FEC_Counter(0) & ((FEC_Counter(3)))) # (FEC_Counter(0) & (FEC_Counter(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000110101011000010100010110100001101001110010001111010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_FEC_Counter(2),
	datab => ALT_INV_FEC_Counter(3),
	datac => ALT_INV_FEC_Counter(0),
	datad => ALT_INV_FEC_Counter(1),
	datae => ALT_INV_FEC_Counter(5),
	dataf => ALT_INV_FEC_Counter(4),
	combout => \Mux2~2_combout\);

-- Location: MLABCELL_X13_Y4_N24
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( FEC_Counter(5) & ( FEC_Counter(4) & ( (!FEC_Counter(1) & ((!FEC_Counter(2) & (FEC_Counter(3))) # (FEC_Counter(2) & ((FEC_Counter(0)))))) # (FEC_Counter(1) & ((!FEC_Counter(3) $ (FEC_Counter(0))))) ) ) ) # ( !FEC_Counter(5) & ( 
-- FEC_Counter(4) & ( (!FEC_Counter(3) & ((!FEC_Counter(0) & (!FEC_Counter(2))) # (FEC_Counter(0) & ((!FEC_Counter(1)))))) # (FEC_Counter(3) & ((!FEC_Counter(0) & ((!FEC_Counter(1)))) # (FEC_Counter(0) & (FEC_Counter(2))))) ) ) ) # ( FEC_Counter(5) & ( 
-- !FEC_Counter(4) & ( (!FEC_Counter(2) & (FEC_Counter(1) & ((!FEC_Counter(3)) # (!FEC_Counter(0))))) # (FEC_Counter(2) & (!FEC_Counter(3) & (!FEC_Counter(0) $ (FEC_Counter(1))))) ) ) ) # ( !FEC_Counter(5) & ( !FEC_Counter(4) & ( (!FEC_Counter(3) & 
-- (!FEC_Counter(0) & (!FEC_Counter(2) $ (!FEC_Counter(1))))) # (FEC_Counter(3) & (((FEC_Counter(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010110011010000001010110010111101100000010010011111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_FEC_Counter(2),
	datab => ALT_INV_FEC_Counter(3),
	datac => ALT_INV_FEC_Counter(0),
	datad => ALT_INV_FEC_Counter(1),
	datae => ALT_INV_FEC_Counter(5),
	dataf => ALT_INV_FEC_Counter(4),
	combout => \Mux2~0_combout\);

-- Location: MLABCELL_X13_Y4_N15
\Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = ( \Mux2~0_combout\ & ( (!FEC_Counter(7) & (((!FEC_Counter(6))))) # (FEC_Counter(7) & ((!FEC_Counter(6) & (\Mux2~1_combout\)) # (FEC_Counter(6) & ((!\Mux2~2_combout\))))) ) ) # ( !\Mux2~0_combout\ & ( (FEC_Counter(7) & ((!FEC_Counter(6) 
-- & (\Mux2~1_combout\)) # (FEC_Counter(6) & ((!\Mux2~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010000000101010001000010110101101100001011010110110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_FEC_Counter(7),
	datab => \ALT_INV_Mux2~1_combout\,
	datac => ALT_INV_FEC_Counter(6),
	datad => \ALT_INV_Mux2~2_combout\,
	dataf => \ALT_INV_Mux2~0_combout\,
	combout => \Mux2~3_combout\);

-- Location: LABCELL_X6_Y3_N18
\FEC_Counter[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FEC_Counter[7]~1_combout\ = ( \twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & ( FEC_Counter(31) & ( \Equal2~6_combout\ ) ) ) # ( \twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & ( !FEC_Counter(31) & ( ((!\FEC_Flag~q\ & 
-- (!\twimax_wrap|fec1|FEC_output_data~12_combout\ $ (\Mux2~3_combout\)))) # (\Equal2~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100011110010111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FEC_Flag~q\,
	datab => \twimax_wrap|fec1|ALT_INV_FEC_output_data~12_combout\,
	datac => \ALT_INV_Equal2~6_combout\,
	datad => \ALT_INV_Mux2~3_combout\,
	datae => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	dataf => ALT_INV_FEC_Counter(31),
	combout => \FEC_Counter[7]~1_combout\);

-- Location: FF_X13_Y4_N5
\FEC_Counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \FEC_Counter[0]~3_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(0));

-- Location: LABCELL_X12_Y4_N3
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( !FEC_Counter(1) ) + ( VCC ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( !FEC_Counter(1) ) + ( VCC ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_FEC_Counter(1),
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: MLABCELL_X13_Y4_N6
\FEC_Counter[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \FEC_Counter[1]~4_combout\ = ( !\Add2~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~17_sumout\,
	combout => \FEC_Counter[1]~4_combout\);

-- Location: FF_X13_Y4_N8
\FEC_Counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \FEC_Counter[1]~4_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(1));

-- Location: LABCELL_X12_Y4_N6
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( !FEC_Counter(2) ) + ( VCC ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( !FEC_Counter(2) ) + ( VCC ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_FEC_Counter(2),
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: MLABCELL_X13_Y4_N0
\FEC_Counter[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FEC_Counter[2]~5_combout\ = !\Add2~21_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~21_sumout\,
	combout => \FEC_Counter[2]~5_combout\);

-- Location: FF_X13_Y4_N2
\FEC_Counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \FEC_Counter[2]~5_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(2));

-- Location: LABCELL_X12_Y4_N9
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( !FEC_Counter(3) ) + ( VCC ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( !FEC_Counter(3) ) + ( VCC ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_FEC_Counter(3),
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: MLABCELL_X13_Y4_N12
\FEC_Counter[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \FEC_Counter[3]~6_combout\ = ( !\Add2~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~25_sumout\,
	combout => \FEC_Counter[3]~6_combout\);

-- Location: FF_X13_Y4_N13
\FEC_Counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \FEC_Counter[3]~6_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(3));

-- Location: LABCELL_X12_Y4_N12
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( !FEC_Counter(4) ) + ( VCC ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( !FEC_Counter(4) ) + ( VCC ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_FEC_Counter(4),
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: MLABCELL_X13_Y4_N51
\FEC_Counter[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \FEC_Counter[4]~7_combout\ = !\Add2~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~29_sumout\,
	combout => \FEC_Counter[4]~7_combout\);

-- Location: FF_X13_Y4_N53
\FEC_Counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \FEC_Counter[4]~7_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(4));

-- Location: LABCELL_X12_Y4_N15
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( !FEC_Counter(5) ) + ( VCC ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( !FEC_Counter(5) ) + ( VCC ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_FEC_Counter(5),
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: MLABCELL_X13_Y4_N48
\FEC_Counter[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \FEC_Counter[5]~8_combout\ = ( !\Add2~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~33_sumout\,
	combout => \FEC_Counter[5]~8_combout\);

-- Location: FF_X13_Y4_N49
\FEC_Counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \FEC_Counter[5]~8_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(5));

-- Location: LABCELL_X12_Y4_N18
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( \FEC_Counter[6]~DUPLICATE_q\ ) + ( VCC ) + ( \Add2~34\ ))
-- \Add2~10\ = CARRY(( \FEC_Counter[6]~DUPLICATE_q\ ) + ( VCC ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_FEC_Counter[6]~DUPLICATE_q\,
	cin => \Add2~34\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X12_Y4_N20
\FEC_Counter[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~9_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FEC_Counter[6]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y4_N21
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( !FEC_Counter(7) ) + ( VCC ) + ( \Add2~10\ ))
-- \Add2~6\ = CARRY(( !FEC_Counter(7) ) + ( VCC ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_FEC_Counter(7),
	cin => \Add2~10\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: LABCELL_X12_Y3_N39
\FEC_Counter[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FEC_Counter[7]~2_combout\ = !\Add2~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~5_sumout\,
	combout => \FEC_Counter[7]~2_combout\);

-- Location: FF_X12_Y3_N40
\FEC_Counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \FEC_Counter[7]~2_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(7));

-- Location: LABCELL_X12_Y4_N24
\Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~121_sumout\ = SUM(( FEC_Counter(8) ) + ( VCC ) + ( \Add2~6\ ))
-- \Add2~122\ = CARRY(( FEC_Counter(8) ) + ( VCC ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_FEC_Counter(8),
	cin => \Add2~6\,
	sumout => \Add2~121_sumout\,
	cout => \Add2~122\);

-- Location: FF_X12_Y4_N25
\FEC_Counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~121_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(8));

-- Location: LABCELL_X12_Y4_N27
\Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~117_sumout\ = SUM(( FEC_Counter(9) ) + ( VCC ) + ( \Add2~122\ ))
-- \Add2~118\ = CARRY(( FEC_Counter(9) ) + ( VCC ) + ( \Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_FEC_Counter(9),
	cin => \Add2~122\,
	sumout => \Add2~117_sumout\,
	cout => \Add2~118\);

-- Location: FF_X12_Y4_N28
\FEC_Counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~117_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(9));

-- Location: LABCELL_X12_Y4_N30
\Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( FEC_Counter(10) ) + ( VCC ) + ( \Add2~118\ ))
-- \Add2~70\ = CARRY(( FEC_Counter(10) ) + ( VCC ) + ( \Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_FEC_Counter(10),
	cin => \Add2~118\,
	sumout => \Add2~69_sumout\,
	cout => \Add2~70\);

-- Location: FF_X12_Y4_N31
\FEC_Counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~69_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(10));

-- Location: LABCELL_X12_Y4_N33
\Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~125_sumout\ = SUM(( FEC_Counter(11) ) + ( VCC ) + ( \Add2~70\ ))
-- \Add2~126\ = CARRY(( FEC_Counter(11) ) + ( VCC ) + ( \Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_FEC_Counter(11),
	cin => \Add2~70\,
	sumout => \Add2~125_sumout\,
	cout => \Add2~126\);

-- Location: FF_X12_Y4_N35
\FEC_Counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~125_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(11));

-- Location: LABCELL_X12_Y4_N36
\Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~109_sumout\ = SUM(( FEC_Counter(12) ) + ( VCC ) + ( \Add2~126\ ))
-- \Add2~110\ = CARRY(( FEC_Counter(12) ) + ( VCC ) + ( \Add2~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_FEC_Counter(12),
	cin => \Add2~126\,
	sumout => \Add2~109_sumout\,
	cout => \Add2~110\);

-- Location: FF_X12_Y4_N37
\FEC_Counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~109_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(12));

-- Location: LABCELL_X12_Y4_N39
\Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~93_sumout\ = SUM(( FEC_Counter(13) ) + ( VCC ) + ( \Add2~110\ ))
-- \Add2~94\ = CARRY(( FEC_Counter(13) ) + ( VCC ) + ( \Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_FEC_Counter(13),
	cin => \Add2~110\,
	sumout => \Add2~93_sumout\,
	cout => \Add2~94\);

-- Location: FF_X12_Y4_N41
\FEC_Counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~93_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(13));

-- Location: LABCELL_X12_Y4_N42
\Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~73_sumout\ = SUM(( FEC_Counter(14) ) + ( VCC ) + ( \Add2~94\ ))
-- \Add2~74\ = CARRY(( FEC_Counter(14) ) + ( VCC ) + ( \Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_FEC_Counter(14),
	cin => \Add2~94\,
	sumout => \Add2~73_sumout\,
	cout => \Add2~74\);

-- Location: FF_X12_Y4_N43
\FEC_Counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~73_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(14));

-- Location: LABCELL_X12_Y4_N45
\Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~77_sumout\ = SUM(( FEC_Counter(15) ) + ( VCC ) + ( \Add2~74\ ))
-- \Add2~78\ = CARRY(( FEC_Counter(15) ) + ( VCC ) + ( \Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_FEC_Counter(15),
	cin => \Add2~74\,
	sumout => \Add2~77_sumout\,
	cout => \Add2~78\);

-- Location: FF_X12_Y4_N47
\FEC_Counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~77_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(15));

-- Location: LABCELL_X12_Y4_N48
\Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~81_sumout\ = SUM(( FEC_Counter(16) ) + ( VCC ) + ( \Add2~78\ ))
-- \Add2~82\ = CARRY(( FEC_Counter(16) ) + ( VCC ) + ( \Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_FEC_Counter(16),
	cin => \Add2~78\,
	sumout => \Add2~81_sumout\,
	cout => \Add2~82\);

-- Location: FF_X12_Y4_N50
\FEC_Counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~81_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(16));

-- Location: LABCELL_X12_Y4_N51
\Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~85_sumout\ = SUM(( FEC_Counter(17) ) + ( VCC ) + ( \Add2~82\ ))
-- \Add2~86\ = CARRY(( FEC_Counter(17) ) + ( VCC ) + ( \Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_FEC_Counter(17),
	cin => \Add2~82\,
	sumout => \Add2~85_sumout\,
	cout => \Add2~86\);

-- Location: FF_X12_Y4_N52
\FEC_Counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~85_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(17));

-- Location: LABCELL_X12_Y4_N54
\Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~89_sumout\ = SUM(( FEC_Counter(18) ) + ( VCC ) + ( \Add2~86\ ))
-- \Add2~90\ = CARRY(( FEC_Counter(18) ) + ( VCC ) + ( \Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_FEC_Counter(18),
	cin => \Add2~86\,
	sumout => \Add2~89_sumout\,
	cout => \Add2~90\);

-- Location: FF_X12_Y4_N55
\FEC_Counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~89_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(18));

-- Location: LABCELL_X12_Y4_N57
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( FEC_Counter(19) ) + ( VCC ) + ( \Add2~90\ ))
-- \Add2~46\ = CARRY(( FEC_Counter(19) ) + ( VCC ) + ( \Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_FEC_Counter(19),
	cin => \Add2~90\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: FF_X12_Y4_N58
\FEC_Counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~45_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(19));

-- Location: LABCELL_X12_Y3_N0
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( FEC_Counter(20) ) + ( VCC ) + ( \Add2~46\ ))
-- \Add2~50\ = CARRY(( FEC_Counter(20) ) + ( VCC ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_FEC_Counter(20),
	cin => \Add2~46\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: FF_X12_Y3_N2
\FEC_Counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~49_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(20));

-- Location: LABCELL_X12_Y3_N3
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( FEC_Counter(21) ) + ( VCC ) + ( \Add2~50\ ))
-- \Add2~54\ = CARRY(( FEC_Counter(21) ) + ( VCC ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_FEC_Counter(21),
	cin => \Add2~50\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: FF_X12_Y3_N5
\FEC_Counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~53_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(21));

-- Location: LABCELL_X12_Y3_N6
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( FEC_Counter(22) ) + ( VCC ) + ( \Add2~54\ ))
-- \Add2~58\ = CARRY(( FEC_Counter(22) ) + ( VCC ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_FEC_Counter(22),
	cin => \Add2~54\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: FF_X12_Y3_N7
\FEC_Counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~57_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(22));

-- Location: LABCELL_X12_Y3_N9
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( FEC_Counter(23) ) + ( VCC ) + ( \Add2~58\ ))
-- \Add2~62\ = CARRY(( FEC_Counter(23) ) + ( VCC ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_FEC_Counter(23),
	cin => \Add2~58\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: FF_X12_Y3_N11
\FEC_Counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~61_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(23));

-- Location: LABCELL_X12_Y3_N12
\Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( FEC_Counter(24) ) + ( VCC ) + ( \Add2~62\ ))
-- \Add2~66\ = CARRY(( FEC_Counter(24) ) + ( VCC ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_FEC_Counter(24),
	cin => \Add2~62\,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

-- Location: FF_X12_Y3_N14
\FEC_Counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~65_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(24));

-- Location: LABCELL_X12_Y3_N15
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( FEC_Counter(25) ) + ( VCC ) + ( \Add2~66\ ))
-- \Add2~42\ = CARRY(( FEC_Counter(25) ) + ( VCC ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_FEC_Counter(25),
	cin => \Add2~66\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: FF_X12_Y3_N17
\FEC_Counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~41_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(25));

-- Location: LABCELL_X12_Y3_N18
\Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~113_sumout\ = SUM(( FEC_Counter(26) ) + ( VCC ) + ( \Add2~42\ ))
-- \Add2~114\ = CARRY(( FEC_Counter(26) ) + ( VCC ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_FEC_Counter(26),
	cin => \Add2~42\,
	sumout => \Add2~113_sumout\,
	cout => \Add2~114\);

-- Location: FF_X12_Y3_N19
\FEC_Counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~113_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(26));

-- Location: LABCELL_X12_Y3_N21
\Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~101_sumout\ = SUM(( FEC_Counter(27) ) + ( VCC ) + ( \Add2~114\ ))
-- \Add2~102\ = CARRY(( FEC_Counter(27) ) + ( VCC ) + ( \Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_FEC_Counter(27),
	cin => \Add2~114\,
	sumout => \Add2~101_sumout\,
	cout => \Add2~102\);

-- Location: FF_X12_Y3_N23
\FEC_Counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~101_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(27));

-- Location: LABCELL_X12_Y3_N24
\Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~105_sumout\ = SUM(( FEC_Counter(28) ) + ( VCC ) + ( \Add2~102\ ))
-- \Add2~106\ = CARRY(( FEC_Counter(28) ) + ( VCC ) + ( \Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_FEC_Counter(28),
	cin => \Add2~102\,
	sumout => \Add2~105_sumout\,
	cout => \Add2~106\);

-- Location: FF_X12_Y3_N25
\FEC_Counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~105_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(28));

-- Location: LABCELL_X12_Y3_N27
\Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~97_sumout\ = SUM(( FEC_Counter(29) ) + ( VCC ) + ( \Add2~106\ ))
-- \Add2~98\ = CARRY(( FEC_Counter(29) ) + ( VCC ) + ( \Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_FEC_Counter(29),
	cin => \Add2~106\,
	sumout => \Add2~97_sumout\,
	cout => \Add2~98\);

-- Location: FF_X12_Y3_N29
\FEC_Counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~97_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(29));

-- Location: LABCELL_X12_Y3_N30
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( FEC_Counter(30) ) + ( VCC ) + ( \Add2~98\ ))
-- \Add2~38\ = CARRY(( FEC_Counter(30) ) + ( VCC ) + ( \Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_FEC_Counter(30),
	cin => \Add2~98\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: FF_X12_Y3_N32
\FEC_Counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add2~37_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal2~6_combout\,
	ena => \FEC_Counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(30));

-- Location: LABCELL_X12_Y3_N33
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( FEC_Counter(31) ) + ( VCC ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_FEC_Counter(31),
	cin => \Add2~38\,
	sumout => \Add2~1_sumout\);

-- Location: MLABCELL_X9_Y3_N33
\FEC_Counter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FEC_Counter~0_combout\ = ( FEC_Counter(31) & ( \twimax_wrap|fec1|FEC_output_data~12_combout\ ) ) # ( !FEC_Counter(31) & ( \twimax_wrap|fec1|FEC_output_data~12_combout\ & ( (\Add2~1_sumout\ & (!\FEC_Flag~q\ & (\Mux2~3_combout\ & !\Equal2~6_combout\))) ) ) 
-- ) # ( FEC_Counter(31) & ( !\twimax_wrap|fec1|FEC_output_data~12_combout\ ) ) # ( !FEC_Counter(31) & ( !\twimax_wrap|fec1|FEC_output_data~12_combout\ & ( (\Add2~1_sumout\ & (!\FEC_Flag~q\ & (!\Mux2~3_combout\ & !\Equal2~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000111111111111111100000100000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~1_sumout\,
	datab => \ALT_INV_FEC_Flag~q\,
	datac => \ALT_INV_Mux2~3_combout\,
	datad => \ALT_INV_Equal2~6_combout\,
	datae => ALT_INV_FEC_Counter(31),
	dataf => \twimax_wrap|fec1|ALT_INV_FEC_output_data~12_combout\,
	combout => \FEC_Counter~0_combout\);

-- Location: FF_X9_Y3_N34
\FEC_Counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \FEC_Counter~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \twimax_wrap|fec1|input_state_reg.PingPong_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FEC_Counter(31));

-- Location: LABCELL_X6_Y3_N27
\FEC_Flag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FEC_Flag~0_combout\ = ( \twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & ( !FEC_Counter(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_FEC_Counter(31),
	datae => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	combout => \FEC_Flag~0_combout\);

-- Location: LABCELL_X6_Y3_N6
\FEC_Flag~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FEC_Flag~1_combout\ = ( \FEC_Flag~q\ & ( \Mux2~3_combout\ ) ) # ( !\FEC_Flag~q\ & ( \Mux2~3_combout\ & ( (!\twimax_wrap|fec1|FEC_output_data~11_combout\ & (\FEC_Flag~0_combout\ & ((!\twimax_wrap|fec1|FEC_output_data~3_combout\) # 
-- (!\twimax_wrap|fec1|FEC_output_data~4_combout\)))) ) ) ) # ( \FEC_Flag~q\ & ( !\Mux2~3_combout\ ) ) # ( !\FEC_Flag~q\ & ( !\Mux2~3_combout\ & ( (\FEC_Flag~0_combout\ & (((\twimax_wrap|fec1|FEC_output_data~3_combout\ & 
-- \twimax_wrap|fec1|FEC_output_data~4_combout\)) # (\twimax_wrap|fec1|FEC_output_data~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000111111111111111111100001010000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_FEC_output_data~11_combout\,
	datab => \twimax_wrap|fec1|ALT_INV_FEC_output_data~3_combout\,
	datac => \ALT_INV_FEC_Flag~0_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_FEC_output_data~4_combout\,
	datae => \ALT_INV_FEC_Flag~q\,
	dataf => \ALT_INV_Mux2~3_combout\,
	combout => \FEC_Flag~1_combout\);

-- Location: FF_X6_Y3_N7
FEC_Flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \FEC_Flag~1_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FEC_Flag~q\);

-- Location: LABCELL_X6_Y3_N30
\FEC_output_valid~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FEC_output_valid~0_combout\ = ( \FEC_output_valid~reg0_q\ & ( FEC_Counter(31) ) ) # ( \FEC_output_valid~reg0_q\ & ( !FEC_Counter(31) & ( (!\twimax_wrap|fec1|input_state_reg.PingPong_state~q\) # ((!\FEC_Flag~q\ & 
-- (!\twimax_wrap|fec1|FEC_output_data~12_combout\ $ (\Mux2~3_combout\)))) ) ) ) # ( !\FEC_output_valid~reg0_q\ & ( !FEC_Counter(31) & ( (\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & (!\FEC_Flag~q\ & (!\twimax_wrap|fec1|FEC_output_data~12_combout\ $ 
-- (\Mux2~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010000111010101011101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datab => \twimax_wrap|fec1|ALT_INV_FEC_output_data~12_combout\,
	datac => \ALT_INV_FEC_Flag~q\,
	datad => \ALT_INV_Mux2~3_combout\,
	datae => \ALT_INV_FEC_output_valid~reg0_q\,
	dataf => ALT_INV_FEC_Counter(31),
	combout => \FEC_output_valid~0_combout\);

-- Location: FF_X6_Y3_N32
\FEC_output_valid~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \FEC_output_valid~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FEC_output_valid~reg0_q\);

-- Location: MLABCELL_X4_Y2_N0
\twimax_wrap|inter1|Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add6~21_sumout\ = SUM(( \twimax_wrap|inter1|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \twimax_wrap|inter1|Add6~22\ = CARRY(( \twimax_wrap|inter1|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twimax_wrap|inter1|ALT_INV_counter\(0),
	cin => GND,
	sumout => \twimax_wrap|inter1|Add6~21_sumout\,
	cout => \twimax_wrap|inter1|Add6~22\);

-- Location: LABCELL_X5_Y4_N0
\twimax_wrap|inter1|Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~25_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(0) ) + ( VCC ) + ( !VCC ))
-- \twimax_wrap|inter1|Add7~26\ = CARRY(( \twimax_wrap|inter1|counter_out\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|inter1|ALT_INV_counter_out\(0),
	cin => GND,
	sumout => \twimax_wrap|inter1|Add7~25_sumout\,
	cout => \twimax_wrap|inter1|Add7~26\);

-- Location: MLABCELL_X4_Y4_N0
\twimax_wrap|inter1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|process_0~0_combout\ = ( \twimax_wrap|inter1|counter_out\(1) & ( \twimax_wrap|inter1|counter_out\(5) & ( (\twimax_wrap|inter1|counter_out\(2) & (\twimax_wrap|inter1|counter_out\(4) & (\twimax_wrap|inter1|counter_out\(0) & 
-- \twimax_wrap|inter1|counter_out\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_counter_out\(2),
	datab => \twimax_wrap|inter1|ALT_INV_counter_out\(4),
	datac => \twimax_wrap|inter1|ALT_INV_counter_out\(0),
	datad => \twimax_wrap|inter1|ALT_INV_counter_out\(3),
	datae => \twimax_wrap|inter1|ALT_INV_counter_out\(1),
	dataf => \twimax_wrap|inter1|ALT_INV_counter_out\(5),
	combout => \twimax_wrap|inter1|process_0~0_combout\);

-- Location: LABCELL_X6_Y2_N6
\twimax_wrap|inter1|process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|process_0~7_combout\ = ( \twimax_wrap|inter1|process_0~0_combout\ & ( (\twimax_wrap|inter1|process_0~6_combout\ & !\twimax_wrap|fec1|input_state_reg.PingPong_state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|inter1|ALT_INV_process_0~6_combout\,
	datad => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	dataf => \twimax_wrap|inter1|ALT_INV_process_0~0_combout\,
	combout => \twimax_wrap|inter1|process_0~7_combout\);

-- Location: LABCELL_X6_Y3_N0
\twimax_wrap|inter1|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Selector14~0_combout\ = ( \twimax_wrap|inter1|LessThan0~0_combout\ & ( (\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & !\twimax_wrap|inter1|state_reg.idle~q\) ) ) # ( !\twimax_wrap|inter1|LessThan0~0_combout\ & ( 
-- ((\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & !\twimax_wrap|inter1|state_reg.idle~q\)) # (\twimax_wrap|inter1|state_reg.input_buffer~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111111010100001111111101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datac => \twimax_wrap|inter1|ALT_INV_state_reg.idle~q\,
	datad => \twimax_wrap|inter1|ALT_INV_state_reg.input_buffer~q\,
	dataf => \twimax_wrap|inter1|ALT_INV_LessThan0~0_combout\,
	combout => \twimax_wrap|inter1|Selector14~0_combout\);

-- Location: FF_X6_Y3_N1
\twimax_wrap|inter1|state_reg.input_buffer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Selector14~0_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|state_reg.input_buffer~q\);

-- Location: MLABCELL_X4_Y2_N30
\twimax_wrap|inter1|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Selector15~0_combout\ = ( \twimax_wrap|inter1|state_reg.input_buffer~q\ & ( ((\twimax_wrap|inter1|state_reg.PingPong_state~q\ & ((!\twimax_wrap|inter1|process_0~7_combout\) # (!\twimax_wrap|inter1|process_0~5_combout\)))) # 
-- (\twimax_wrap|inter1|LessThan0~0_combout\) ) ) # ( !\twimax_wrap|inter1|state_reg.input_buffer~q\ & ( (\twimax_wrap|inter1|state_reg.PingPong_state~q\ & ((!\twimax_wrap|inter1|process_0~7_combout\) # (!\twimax_wrap|inter1|process_0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111000001111111011110000111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_process_0~7_combout\,
	datab => \twimax_wrap|inter1|ALT_INV_process_0~5_combout\,
	datac => \twimax_wrap|inter1|ALT_INV_LessThan0~0_combout\,
	datad => \twimax_wrap|inter1|ALT_INV_state_reg.PingPong_state~q\,
	dataf => \twimax_wrap|inter1|ALT_INV_state_reg.input_buffer~q\,
	combout => \twimax_wrap|inter1|Selector15~0_combout\);

-- Location: FF_X4_Y2_N31
\twimax_wrap|inter1|state_reg.PingPong_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Selector15~0_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|state_reg.PingPong_state~q\);

-- Location: MLABCELL_X4_Y2_N33
\twimax_wrap|inter1|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Selector13~0_combout\ = ( \twimax_wrap|inter1|state_reg.PingPong_state~q\ & ( (!\twimax_wrap|inter1|process_0~7_combout\ & (((\twimax_wrap|inter1|state_reg.idle~q\) # (\twimax_wrap|fec1|input_state_reg.PingPong_state~q\)))) # 
-- (\twimax_wrap|inter1|process_0~7_combout\ & (!\twimax_wrap|inter1|process_0~5_combout\ & ((\twimax_wrap|inter1|state_reg.idle~q\) # (\twimax_wrap|fec1|input_state_reg.PingPong_state~q\)))) ) ) # ( !\twimax_wrap|inter1|state_reg.PingPong_state~q\ & ( 
-- (\twimax_wrap|inter1|state_reg.idle~q\) # (\twimax_wrap|fec1|input_state_reg.PingPong_state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001110111011100000111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_process_0~7_combout\,
	datab => \twimax_wrap|inter1|ALT_INV_process_0~5_combout\,
	datac => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datad => \twimax_wrap|inter1|ALT_INV_state_reg.idle~q\,
	dataf => \twimax_wrap|inter1|ALT_INV_state_reg.PingPong_state~q\,
	combout => \twimax_wrap|inter1|Selector13~0_combout\);

-- Location: FF_X4_Y2_N35
\twimax_wrap|inter1|state_reg.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Selector13~0_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|state_reg.idle~q\);

-- Location: MLABCELL_X4_Y2_N6
\twimax_wrap|inter1|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add6~9_sumout\ = SUM(( \twimax_wrap|inter1|counter\(2) ) + ( GND ) + ( \twimax_wrap|inter1|Add6~30\ ))
-- \twimax_wrap|inter1|Add6~10\ = CARRY(( \twimax_wrap|inter1|counter\(2) ) + ( GND ) + ( \twimax_wrap|inter1|Add6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twimax_wrap|inter1|ALT_INV_counter\(2),
	cin => \twimax_wrap|inter1|Add6~30\,
	sumout => \twimax_wrap|inter1|Add6~9_sumout\,
	cout => \twimax_wrap|inter1|Add6~10\);

-- Location: MLABCELL_X4_Y2_N9
\twimax_wrap|inter1|Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add6~25_sumout\ = SUM(( \twimax_wrap|inter1|counter\(3) ) + ( GND ) + ( \twimax_wrap|inter1|Add6~10\ ))
-- \twimax_wrap|inter1|Add6~26\ = CARRY(( \twimax_wrap|inter1|counter\(3) ) + ( GND ) + ( \twimax_wrap|inter1|Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twimax_wrap|inter1|ALT_INV_counter\(3),
	cin => \twimax_wrap|inter1|Add6~10\,
	sumout => \twimax_wrap|inter1|Add6~25_sumout\,
	cout => \twimax_wrap|inter1|Add6~26\);

-- Location: MLABCELL_X4_Y2_N42
\twimax_wrap|inter1|counter_kmod16[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|counter_kmod16[3]~1_combout\ = ( \twimax_wrap|inter1|counter\(6) & ( (!\twimax_wrap|inter1|state_reg.idle~q\ & ((!\twimax_wrap|fec1|input_state_reg.PingPong_state~q\) # (\twimax_wrap|inter1|counter\(7)))) ) ) # ( 
-- !\twimax_wrap|inter1|counter\(6) & ( (!\twimax_wrap|inter1|state_reg.idle~q\ & ((!\twimax_wrap|fec1|input_state_reg.PingPong_state~q\) # ((\twimax_wrap|inter1|counter\(7) & \twimax_wrap|inter1|Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100010101000001010001010100010101000101010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_state_reg.idle~q\,
	datab => \twimax_wrap|inter1|ALT_INV_counter\(7),
	datac => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	datad => \twimax_wrap|inter1|ALT_INV_Equal0~0_combout\,
	dataf => \twimax_wrap|inter1|ALT_INV_counter\(6),
	combout => \twimax_wrap|inter1|counter_kmod16[3]~1_combout\);

-- Location: FF_X5_Y4_N25
\twimax_wrap|inter1|counter_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~1_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(8));

-- Location: LABCELL_X6_Y2_N57
\twimax_wrap|inter1|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|LessThan2~0_combout\ = ( \twimax_wrap|inter1|counter_out\(8) & ( ((\twimax_wrap|inter1|counter_out\(6) & \twimax_wrap|inter1|process_0~0_combout\)) # (\twimax_wrap|inter1|counter_out\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_counter_out\(6),
	datab => \twimax_wrap|inter1|ALT_INV_counter_out\(7),
	datac => \twimax_wrap|inter1|ALT_INV_process_0~0_combout\,
	dataf => \twimax_wrap|inter1|ALT_INV_counter_out\(8),
	combout => \twimax_wrap|inter1|LessThan2~0_combout\);

-- Location: MLABCELL_X4_Y2_N24
\twimax_wrap|inter1|counter_kmod16[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|counter_kmod16[3]~3_combout\ = ( \twimax_wrap|inter1|LessThan2~0_combout\ & ( \twimax_wrap|inter1|process_0~5_combout\ & ( !\twimax_wrap|inter1|counter_kmod16[3]~1_combout\ ) ) ) # ( !\twimax_wrap|inter1|LessThan2~0_combout\ & ( 
-- \twimax_wrap|inter1|process_0~5_combout\ & ( (!\twimax_wrap|inter1|counter_kmod16[3]~1_combout\ & ((!\twimax_wrap|inter1|counter\(6)) # ((!\twimax_wrap|inter1|state_reg.PingPong_state~q\) # (!\twimax_wrap|inter1|counter\(7))))) ) ) ) # ( 
-- \twimax_wrap|inter1|LessThan2~0_combout\ & ( !\twimax_wrap|inter1|process_0~5_combout\ & ( !\twimax_wrap|inter1|counter_kmod16[3]~1_combout\ ) ) ) # ( !\twimax_wrap|inter1|LessThan2~0_combout\ & ( !\twimax_wrap|inter1|process_0~5_combout\ & ( 
-- !\twimax_wrap|inter1|counter_kmod16[3]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110010001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_counter\(6),
	datab => \twimax_wrap|inter1|ALT_INV_counter_kmod16[3]~1_combout\,
	datac => \twimax_wrap|inter1|ALT_INV_state_reg.PingPong_state~q\,
	datad => \twimax_wrap|inter1|ALT_INV_counter\(7),
	datae => \twimax_wrap|inter1|ALT_INV_LessThan2~0_combout\,
	dataf => \twimax_wrap|inter1|ALT_INV_process_0~5_combout\,
	combout => \twimax_wrap|inter1|counter_kmod16[3]~3_combout\);

-- Location: FF_X4_Y2_N11
\twimax_wrap|inter1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add6~25_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_kmod16[3]~0_combout\,
	ena => \twimax_wrap|inter1|counter_kmod16[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter\(3));

-- Location: MLABCELL_X4_Y2_N12
\twimax_wrap|inter1|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add6~13_sumout\ = SUM(( \twimax_wrap|inter1|counter\(4) ) + ( GND ) + ( \twimax_wrap|inter1|Add6~26\ ))
-- \twimax_wrap|inter1|Add6~14\ = CARRY(( \twimax_wrap|inter1|counter\(4) ) + ( GND ) + ( \twimax_wrap|inter1|Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twimax_wrap|inter1|ALT_INV_counter\(4),
	cin => \twimax_wrap|inter1|Add6~26\,
	sumout => \twimax_wrap|inter1|Add6~13_sumout\,
	cout => \twimax_wrap|inter1|Add6~14\);

-- Location: FF_X4_Y2_N14
\twimax_wrap|inter1|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add6~13_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_kmod16[3]~0_combout\,
	ena => \twimax_wrap|inter1|counter_kmod16[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter\(4));

-- Location: MLABCELL_X4_Y2_N15
\twimax_wrap|inter1|Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add6~17_sumout\ = SUM(( \twimax_wrap|inter1|counter\(5) ) + ( GND ) + ( \twimax_wrap|inter1|Add6~14\ ))
-- \twimax_wrap|inter1|Add6~18\ = CARRY(( \twimax_wrap|inter1|counter\(5) ) + ( GND ) + ( \twimax_wrap|inter1|Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twimax_wrap|inter1|ALT_INV_counter\(5),
	cin => \twimax_wrap|inter1|Add6~14\,
	sumout => \twimax_wrap|inter1|Add6~17_sumout\,
	cout => \twimax_wrap|inter1|Add6~18\);

-- Location: FF_X4_Y2_N16
\twimax_wrap|inter1|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add6~17_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_kmod16[3]~0_combout\,
	ena => \twimax_wrap|inter1|counter_kmod16[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter\(5));

-- Location: MLABCELL_X4_Y2_N18
\twimax_wrap|inter1|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add6~5_sumout\ = SUM(( \twimax_wrap|inter1|counter\(6) ) + ( GND ) + ( \twimax_wrap|inter1|Add6~18\ ))
-- \twimax_wrap|inter1|Add6~6\ = CARRY(( \twimax_wrap|inter1|counter\(6) ) + ( GND ) + ( \twimax_wrap|inter1|Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twimax_wrap|inter1|ALT_INV_counter\(6),
	cin => \twimax_wrap|inter1|Add6~18\,
	sumout => \twimax_wrap|inter1|Add6~5_sumout\,
	cout => \twimax_wrap|inter1|Add6~6\);

-- Location: FF_X4_Y2_N20
\twimax_wrap|inter1|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add6~5_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_kmod16[3]~0_combout\,
	ena => \twimax_wrap|inter1|counter_kmod16[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter\(6));

-- Location: MLABCELL_X4_Y2_N21
\twimax_wrap|inter1|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add6~1_sumout\ = SUM(( \twimax_wrap|inter1|counter\(7) ) + ( GND ) + ( \twimax_wrap|inter1|Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twimax_wrap|inter1|ALT_INV_counter\(7),
	cin => \twimax_wrap|inter1|Add6~6\,
	sumout => \twimax_wrap|inter1|Add6~1_sumout\);

-- Location: FF_X4_Y2_N22
\twimax_wrap|inter1|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add6~1_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_kmod16[3]~0_combout\,
	ena => \twimax_wrap|inter1|counter_kmod16[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter\(7));

-- Location: MLABCELL_X4_Y2_N45
\twimax_wrap|inter1|counter_out[28]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|counter_out[28]~1_combout\ = ( \twimax_wrap|inter1|state_reg.input_buffer~q\ & ( (\twimax_wrap|inter1|state_reg.idle~q\ & (\twimax_wrap|inter1|counter\(7) & ((\twimax_wrap|inter1|Equal0~0_combout\) # 
-- (\twimax_wrap|inter1|counter\(6))))) ) ) # ( !\twimax_wrap|inter1|state_reg.input_buffer~q\ & ( \twimax_wrap|inter1|state_reg.idle~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000001000100010000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_state_reg.idle~q\,
	datab => \twimax_wrap|inter1|ALT_INV_counter\(7),
	datac => \twimax_wrap|inter1|ALT_INV_counter\(6),
	datad => \twimax_wrap|inter1|ALT_INV_Equal0~0_combout\,
	dataf => \twimax_wrap|inter1|ALT_INV_state_reg.input_buffer~q\,
	combout => \twimax_wrap|inter1|counter_out[28]~1_combout\);

-- Location: FF_X5_Y4_N22
\twimax_wrap|inter1|counter_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~5_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(7));

-- Location: LABCELL_X6_Y2_N54
\twimax_wrap|inter1|process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|process_0~6_combout\ = ( \twimax_wrap|inter1|counter_out\(8) & ( (\twimax_wrap|inter1|counter_out\(6) & !\twimax_wrap|inter1|counter_out\(7)) ) ) # ( !\twimax_wrap|inter1|counter_out\(8) & ( (!\twimax_wrap|inter1|counter_out\(6) & 
-- \twimax_wrap|inter1|counter_out\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_counter_out\(6),
	datab => \twimax_wrap|inter1|ALT_INV_counter_out\(7),
	dataf => \twimax_wrap|inter1|ALT_INV_counter_out\(8),
	combout => \twimax_wrap|inter1|process_0~6_combout\);

-- Location: LABCELL_X6_Y2_N12
\twimax_wrap|inter1|counter_out[28]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|counter_out[28]~0_combout\ = ( \twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & ( \twimax_wrap|inter1|state_reg.PingPong_state~q\ & ( (!\twimax_wrap|inter1|process_0~5_combout\) # (\twimax_wrap|inter1|LessThan2~0_combout\) ) ) ) # 
-- ( !\twimax_wrap|fec1|input_state_reg.PingPong_state~q\ & ( \twimax_wrap|inter1|state_reg.PingPong_state~q\ & ( (!\twimax_wrap|inter1|process_0~5_combout\) # (((\twimax_wrap|inter1|process_0~0_combout\ & \twimax_wrap|inter1|process_0~6_combout\)) # 
-- (\twimax_wrap|inter1|LessThan2~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101011111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_process_0~5_combout\,
	datab => \twimax_wrap|inter1|ALT_INV_process_0~0_combout\,
	datac => \twimax_wrap|inter1|ALT_INV_process_0~6_combout\,
	datad => \twimax_wrap|inter1|ALT_INV_LessThan2~0_combout\,
	datae => \twimax_wrap|fec1|ALT_INV_input_state_reg.PingPong_state~q\,
	dataf => \twimax_wrap|inter1|ALT_INV_state_reg.PingPong_state~q\,
	combout => \twimax_wrap|inter1|counter_out[28]~0_combout\);

-- Location: FF_X5_Y4_N2
\twimax_wrap|inter1|counter_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~25_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(0));

-- Location: LABCELL_X5_Y4_N3
\twimax_wrap|inter1|Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~29_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(1) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~26\ ))
-- \twimax_wrap|inter1|Add7~30\ = CARRY(( \twimax_wrap|inter1|counter_out\(1) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_counter_out\(1),
	cin => \twimax_wrap|inter1|Add7~26\,
	sumout => \twimax_wrap|inter1|Add7~29_sumout\,
	cout => \twimax_wrap|inter1|Add7~30\);

-- Location: FF_X5_Y4_N5
\twimax_wrap|inter1|counter_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~29_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(1));

-- Location: LABCELL_X5_Y4_N6
\twimax_wrap|inter1|Add7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~33_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(2) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~30\ ))
-- \twimax_wrap|inter1|Add7~34\ = CARRY(( \twimax_wrap|inter1|counter_out\(2) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|inter1|ALT_INV_counter_out\(2),
	cin => \twimax_wrap|inter1|Add7~30\,
	sumout => \twimax_wrap|inter1|Add7~33_sumout\,
	cout => \twimax_wrap|inter1|Add7~34\);

-- Location: FF_X5_Y4_N7
\twimax_wrap|inter1|counter_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~33_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(2));

-- Location: LABCELL_X5_Y4_N9
\twimax_wrap|inter1|Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~13_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(3) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~34\ ))
-- \twimax_wrap|inter1|Add7~14\ = CARRY(( \twimax_wrap|inter1|counter_out\(3) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|inter1|ALT_INV_counter_out\(3),
	cin => \twimax_wrap|inter1|Add7~34\,
	sumout => \twimax_wrap|inter1|Add7~13_sumout\,
	cout => \twimax_wrap|inter1|Add7~14\);

-- Location: FF_X5_Y4_N11
\twimax_wrap|inter1|counter_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~13_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(3));

-- Location: LABCELL_X5_Y4_N12
\twimax_wrap|inter1|Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~17_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(4) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~14\ ))
-- \twimax_wrap|inter1|Add7~18\ = CARRY(( \twimax_wrap|inter1|counter_out\(4) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|inter1|ALT_INV_counter_out\(4),
	cin => \twimax_wrap|inter1|Add7~14\,
	sumout => \twimax_wrap|inter1|Add7~17_sumout\,
	cout => \twimax_wrap|inter1|Add7~18\);

-- Location: FF_X5_Y4_N14
\twimax_wrap|inter1|counter_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~17_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(4));

-- Location: LABCELL_X5_Y4_N15
\twimax_wrap|inter1|Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~21_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(5) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~18\ ))
-- \twimax_wrap|inter1|Add7~22\ = CARRY(( \twimax_wrap|inter1|counter_out\(5) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|inter1|ALT_INV_counter_out\(5),
	cin => \twimax_wrap|inter1|Add7~18\,
	sumout => \twimax_wrap|inter1|Add7~21_sumout\,
	cout => \twimax_wrap|inter1|Add7~22\);

-- Location: FF_X5_Y4_N17
\twimax_wrap|inter1|counter_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~21_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(5));

-- Location: LABCELL_X5_Y4_N18
\twimax_wrap|inter1|Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~9_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(6) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~22\ ))
-- \twimax_wrap|inter1|Add7~10\ = CARRY(( \twimax_wrap|inter1|counter_out\(6) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|inter1|ALT_INV_counter_out\(6),
	cin => \twimax_wrap|inter1|Add7~22\,
	sumout => \twimax_wrap|inter1|Add7~9_sumout\,
	cout => \twimax_wrap|inter1|Add7~10\);

-- Location: FF_X5_Y4_N20
\twimax_wrap|inter1|counter_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~9_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(6));

-- Location: LABCELL_X5_Y4_N21
\twimax_wrap|inter1|Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~5_sumout\ = SUM(( \twimax_wrap|inter1|counter_out[7]~DUPLICATE_q\ ) + ( GND ) + ( \twimax_wrap|inter1|Add7~10\ ))
-- \twimax_wrap|inter1|Add7~6\ = CARRY(( \twimax_wrap|inter1|counter_out[7]~DUPLICATE_q\ ) + ( GND ) + ( \twimax_wrap|inter1|Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_counter_out[7]~DUPLICATE_q\,
	cin => \twimax_wrap|inter1|Add7~10\,
	sumout => \twimax_wrap|inter1|Add7~5_sumout\,
	cout => \twimax_wrap|inter1|Add7~6\);

-- Location: FF_X5_Y4_N23
\twimax_wrap|inter1|counter_out[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~5_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out[7]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y4_N24
\twimax_wrap|inter1|Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~1_sumout\ = SUM(( \twimax_wrap|inter1|counter_out[8]~DUPLICATE_q\ ) + ( GND ) + ( \twimax_wrap|inter1|Add7~6\ ))
-- \twimax_wrap|inter1|Add7~2\ = CARRY(( \twimax_wrap|inter1|counter_out[8]~DUPLICATE_q\ ) + ( GND ) + ( \twimax_wrap|inter1|Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|inter1|ALT_INV_counter_out[8]~DUPLICATE_q\,
	cin => \twimax_wrap|inter1|Add7~6\,
	sumout => \twimax_wrap|inter1|Add7~1_sumout\,
	cout => \twimax_wrap|inter1|Add7~2\);

-- Location: FF_X5_Y4_N26
\twimax_wrap|inter1|counter_out[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~1_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out[8]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y4_N27
\twimax_wrap|inter1|Add7~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~97_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(9) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~2\ ))
-- \twimax_wrap|inter1|Add7~98\ = CARRY(( \twimax_wrap|inter1|counter_out\(9) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_counter_out\(9),
	cin => \twimax_wrap|inter1|Add7~2\,
	sumout => \twimax_wrap|inter1|Add7~97_sumout\,
	cout => \twimax_wrap|inter1|Add7~98\);

-- Location: FF_X5_Y4_N29
\twimax_wrap|inter1|counter_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~97_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(9));

-- Location: LABCELL_X5_Y4_N30
\twimax_wrap|inter1|Add7~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~101_sumout\ = SUM(( \twimax_wrap|inter1|counter_out[10]~DUPLICATE_q\ ) + ( GND ) + ( \twimax_wrap|inter1|Add7~98\ ))
-- \twimax_wrap|inter1|Add7~102\ = CARRY(( \twimax_wrap|inter1|counter_out[10]~DUPLICATE_q\ ) + ( GND ) + ( \twimax_wrap|inter1|Add7~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|inter1|ALT_INV_counter_out[10]~DUPLICATE_q\,
	cin => \twimax_wrap|inter1|Add7~98\,
	sumout => \twimax_wrap|inter1|Add7~101_sumout\,
	cout => \twimax_wrap|inter1|Add7~102\);

-- Location: FF_X5_Y4_N32
\twimax_wrap|inter1|counter_out[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~101_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out[10]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y4_N33
\twimax_wrap|inter1|Add7~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~105_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(11) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~102\ ))
-- \twimax_wrap|inter1|Add7~106\ = CARRY(( \twimax_wrap|inter1|counter_out\(11) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_counter_out\(11),
	cin => \twimax_wrap|inter1|Add7~102\,
	sumout => \twimax_wrap|inter1|Add7~105_sumout\,
	cout => \twimax_wrap|inter1|Add7~106\);

-- Location: FF_X5_Y4_N35
\twimax_wrap|inter1|counter_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~105_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(11));

-- Location: LABCELL_X5_Y4_N36
\twimax_wrap|inter1|Add7~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~109_sumout\ = SUM(( \twimax_wrap|inter1|counter_out[12]~DUPLICATE_q\ ) + ( GND ) + ( \twimax_wrap|inter1|Add7~106\ ))
-- \twimax_wrap|inter1|Add7~110\ = CARRY(( \twimax_wrap|inter1|counter_out[12]~DUPLICATE_q\ ) + ( GND ) + ( \twimax_wrap|inter1|Add7~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|inter1|ALT_INV_counter_out[12]~DUPLICATE_q\,
	cin => \twimax_wrap|inter1|Add7~106\,
	sumout => \twimax_wrap|inter1|Add7~109_sumout\,
	cout => \twimax_wrap|inter1|Add7~110\);

-- Location: FF_X5_Y4_N38
\twimax_wrap|inter1|counter_out[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~109_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out[12]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y4_N39
\twimax_wrap|inter1|Add7~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~77_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(13) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~110\ ))
-- \twimax_wrap|inter1|Add7~78\ = CARRY(( \twimax_wrap|inter1|counter_out\(13) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|inter1|ALT_INV_counter_out\(13),
	cin => \twimax_wrap|inter1|Add7~110\,
	sumout => \twimax_wrap|inter1|Add7~77_sumout\,
	cout => \twimax_wrap|inter1|Add7~78\);

-- Location: FF_X5_Y4_N41
\twimax_wrap|inter1|counter_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~77_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(13));

-- Location: LABCELL_X5_Y4_N42
\twimax_wrap|inter1|Add7~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~113_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(14) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~78\ ))
-- \twimax_wrap|inter1|Add7~114\ = CARRY(( \twimax_wrap|inter1|counter_out\(14) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|inter1|ALT_INV_counter_out\(14),
	cin => \twimax_wrap|inter1|Add7~78\,
	sumout => \twimax_wrap|inter1|Add7~113_sumout\,
	cout => \twimax_wrap|inter1|Add7~114\);

-- Location: FF_X5_Y4_N43
\twimax_wrap|inter1|counter_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~113_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(14));

-- Location: LABCELL_X5_Y4_N45
\twimax_wrap|inter1|Add7~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~117_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(15) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~114\ ))
-- \twimax_wrap|inter1|Add7~118\ = CARRY(( \twimax_wrap|inter1|counter_out\(15) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|inter1|ALT_INV_counter_out\(15),
	cin => \twimax_wrap|inter1|Add7~114\,
	sumout => \twimax_wrap|inter1|Add7~117_sumout\,
	cout => \twimax_wrap|inter1|Add7~118\);

-- Location: FF_X5_Y4_N47
\twimax_wrap|inter1|counter_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~117_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(15));

-- Location: LABCELL_X5_Y4_N48
\twimax_wrap|inter1|Add7~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~121_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(16) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~118\ ))
-- \twimax_wrap|inter1|Add7~122\ = CARRY(( \twimax_wrap|inter1|counter_out\(16) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|inter1|ALT_INV_counter_out\(16),
	cin => \twimax_wrap|inter1|Add7~118\,
	sumout => \twimax_wrap|inter1|Add7~121_sumout\,
	cout => \twimax_wrap|inter1|Add7~122\);

-- Location: FF_X5_Y4_N50
\twimax_wrap|inter1|counter_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~121_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(16));

-- Location: LABCELL_X5_Y4_N51
\twimax_wrap|inter1|Add7~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~93_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(17) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~122\ ))
-- \twimax_wrap|inter1|Add7~94\ = CARRY(( \twimax_wrap|inter1|counter_out\(17) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_counter_out\(17),
	cin => \twimax_wrap|inter1|Add7~122\,
	sumout => \twimax_wrap|inter1|Add7~93_sumout\,
	cout => \twimax_wrap|inter1|Add7~94\);

-- Location: FF_X5_Y4_N53
\twimax_wrap|inter1|counter_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~93_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(17));

-- Location: LABCELL_X5_Y4_N54
\twimax_wrap|inter1|Add7~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~125_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(18) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~94\ ))
-- \twimax_wrap|inter1|Add7~126\ = CARRY(( \twimax_wrap|inter1|counter_out\(18) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|inter1|ALT_INV_counter_out\(18),
	cin => \twimax_wrap|inter1|Add7~94\,
	sumout => \twimax_wrap|inter1|Add7~125_sumout\,
	cout => \twimax_wrap|inter1|Add7~126\);

-- Location: FF_X5_Y4_N56
\twimax_wrap|inter1|counter_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~125_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(18));

-- Location: LABCELL_X5_Y4_N57
\twimax_wrap|inter1|Add7~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~57_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(19) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~126\ ))
-- \twimax_wrap|inter1|Add7~58\ = CARRY(( \twimax_wrap|inter1|counter_out\(19) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_counter_out\(19),
	cin => \twimax_wrap|inter1|Add7~126\,
	sumout => \twimax_wrap|inter1|Add7~57_sumout\,
	cout => \twimax_wrap|inter1|Add7~58\);

-- Location: FF_X5_Y4_N58
\twimax_wrap|inter1|counter_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~57_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(19));

-- Location: LABCELL_X5_Y3_N0
\twimax_wrap|inter1|Add7~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~65_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(20) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~58\ ))
-- \twimax_wrap|inter1|Add7~66\ = CARRY(( \twimax_wrap|inter1|counter_out\(20) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|inter1|ALT_INV_counter_out\(20),
	cin => \twimax_wrap|inter1|Add7~58\,
	sumout => \twimax_wrap|inter1|Add7~65_sumout\,
	cout => \twimax_wrap|inter1|Add7~66\);

-- Location: FF_X5_Y3_N2
\twimax_wrap|inter1|counter_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~65_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(20));

-- Location: LABCELL_X5_Y3_N3
\twimax_wrap|inter1|Add7~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~69_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(21) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~66\ ))
-- \twimax_wrap|inter1|Add7~70\ = CARRY(( \twimax_wrap|inter1|counter_out\(21) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_counter_out\(21),
	cin => \twimax_wrap|inter1|Add7~66\,
	sumout => \twimax_wrap|inter1|Add7~69_sumout\,
	cout => \twimax_wrap|inter1|Add7~70\);

-- Location: FF_X5_Y3_N5
\twimax_wrap|inter1|counter_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~69_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(21));

-- Location: LABCELL_X5_Y3_N6
\twimax_wrap|inter1|Add7~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~73_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(22) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~70\ ))
-- \twimax_wrap|inter1|Add7~74\ = CARRY(( \twimax_wrap|inter1|counter_out\(22) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|inter1|ALT_INV_counter_out\(22),
	cin => \twimax_wrap|inter1|Add7~70\,
	sumout => \twimax_wrap|inter1|Add7~73_sumout\,
	cout => \twimax_wrap|inter1|Add7~74\);

-- Location: FF_X5_Y3_N8
\twimax_wrap|inter1|counter_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~73_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(22));

-- Location: LABCELL_X5_Y3_N9
\twimax_wrap|inter1|Add7~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~37_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(23) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~74\ ))
-- \twimax_wrap|inter1|Add7~38\ = CARRY(( \twimax_wrap|inter1|counter_out\(23) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|inter1|ALT_INV_counter_out\(23),
	cin => \twimax_wrap|inter1|Add7~74\,
	sumout => \twimax_wrap|inter1|Add7~37_sumout\,
	cout => \twimax_wrap|inter1|Add7~38\);

-- Location: FF_X5_Y3_N11
\twimax_wrap|inter1|counter_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~37_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(23));

-- Location: LABCELL_X5_Y3_N12
\twimax_wrap|inter1|Add7~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~41_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(24) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~38\ ))
-- \twimax_wrap|inter1|Add7~42\ = CARRY(( \twimax_wrap|inter1|counter_out\(24) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|inter1|ALT_INV_counter_out\(24),
	cin => \twimax_wrap|inter1|Add7~38\,
	sumout => \twimax_wrap|inter1|Add7~41_sumout\,
	cout => \twimax_wrap|inter1|Add7~42\);

-- Location: FF_X5_Y3_N14
\twimax_wrap|inter1|counter_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~41_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(24));

-- Location: LABCELL_X5_Y3_N15
\twimax_wrap|inter1|Add7~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~45_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(25) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~42\ ))
-- \twimax_wrap|inter1|Add7~46\ = CARRY(( \twimax_wrap|inter1|counter_out\(25) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|inter1|ALT_INV_counter_out\(25),
	cin => \twimax_wrap|inter1|Add7~42\,
	sumout => \twimax_wrap|inter1|Add7~45_sumout\,
	cout => \twimax_wrap|inter1|Add7~46\);

-- Location: FF_X5_Y3_N17
\twimax_wrap|inter1|counter_out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~45_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(25));

-- Location: LABCELL_X5_Y3_N18
\twimax_wrap|inter1|Add7~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~49_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(26) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~46\ ))
-- \twimax_wrap|inter1|Add7~50\ = CARRY(( \twimax_wrap|inter1|counter_out\(26) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|inter1|ALT_INV_counter_out\(26),
	cin => \twimax_wrap|inter1|Add7~46\,
	sumout => \twimax_wrap|inter1|Add7~49_sumout\,
	cout => \twimax_wrap|inter1|Add7~50\);

-- Location: FF_X5_Y3_N20
\twimax_wrap|inter1|counter_out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~49_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(26));

-- Location: LABCELL_X5_Y3_N21
\twimax_wrap|inter1|Add7~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~53_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(27) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~50\ ))
-- \twimax_wrap|inter1|Add7~54\ = CARRY(( \twimax_wrap|inter1|counter_out\(27) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_counter_out\(27),
	cin => \twimax_wrap|inter1|Add7~50\,
	sumout => \twimax_wrap|inter1|Add7~53_sumout\,
	cout => \twimax_wrap|inter1|Add7~54\);

-- Location: FF_X5_Y3_N23
\twimax_wrap|inter1|counter_out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~53_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(27));

-- Location: LABCELL_X5_Y3_N24
\twimax_wrap|inter1|Add7~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~85_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(28) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~54\ ))
-- \twimax_wrap|inter1|Add7~86\ = CARRY(( \twimax_wrap|inter1|counter_out\(28) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|inter1|ALT_INV_counter_out\(28),
	cin => \twimax_wrap|inter1|Add7~54\,
	sumout => \twimax_wrap|inter1|Add7~85_sumout\,
	cout => \twimax_wrap|inter1|Add7~86\);

-- Location: FF_X5_Y3_N26
\twimax_wrap|inter1|counter_out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~85_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(28));

-- Location: MLABCELL_X4_Y3_N0
\twimax_wrap|inter1|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Selector16~0_combout\ = ( !\twimax_wrap|inter1|state_reg.PingPong_state~q\ & ( (\twimax_wrap|inter1|counter\(7) & (\twimax_wrap|inter1|state_reg.input_buffer~q\ & ((\twimax_wrap|inter1|counter\(6)) # 
-- (\twimax_wrap|inter1|Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000000000000011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_Equal0~0_combout\,
	datab => \twimax_wrap|inter1|ALT_INV_counter\(6),
	datac => \twimax_wrap|inter1|ALT_INV_counter\(7),
	datad => \twimax_wrap|inter1|ALT_INV_state_reg.input_buffer~q\,
	dataf => \twimax_wrap|inter1|ALT_INV_state_reg.PingPong_state~q\,
	combout => \twimax_wrap|inter1|Selector16~0_combout\);

-- Location: MLABCELL_X4_Y2_N48
\twimax_wrap|inter1|Selector16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Selector16~1_combout\ = ( \twimax_wrap|inter1|Equal0~0_combout\ & ( \twimax_wrap|inter1|state_reg.input_buffer~q\ & ( (!\twimax_wrap|inter1|counter\(7) & (!\twimax_wrap|inter1|state_reg.PingPong_state~q\ & 
-- \twimax_wrap|inter1|counter_out\(31))) ) ) ) # ( !\twimax_wrap|inter1|Equal0~0_combout\ & ( \twimax_wrap|inter1|state_reg.input_buffer~q\ & ( (!\twimax_wrap|inter1|state_reg.PingPong_state~q\ & (\twimax_wrap|inter1|counter_out\(31) & 
-- ((!\twimax_wrap|inter1|counter\(6)) # (!\twimax_wrap|inter1|counter\(7))))) ) ) ) # ( \twimax_wrap|inter1|Equal0~0_combout\ & ( !\twimax_wrap|inter1|state_reg.input_buffer~q\ & ( (!\twimax_wrap|inter1|state_reg.PingPong_state~q\ & 
-- \twimax_wrap|inter1|counter_out\(31)) ) ) ) # ( !\twimax_wrap|inter1|Equal0~0_combout\ & ( !\twimax_wrap|inter1|state_reg.input_buffer~q\ & ( (!\twimax_wrap|inter1|state_reg.PingPong_state~q\ & \twimax_wrap|inter1|counter_out\(31)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_counter\(6),
	datab => \twimax_wrap|inter1|ALT_INV_counter\(7),
	datac => \twimax_wrap|inter1|ALT_INV_state_reg.PingPong_state~q\,
	datad => \twimax_wrap|inter1|ALT_INV_counter_out\(31),
	datae => \twimax_wrap|inter1|ALT_INV_Equal0~0_combout\,
	dataf => \twimax_wrap|inter1|ALT_INV_state_reg.input_buffer~q\,
	combout => \twimax_wrap|inter1|Selector16~1_combout\);

-- Location: LABCELL_X5_Y3_N27
\twimax_wrap|inter1|Add7~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~61_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(29) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~86\ ))
-- \twimax_wrap|inter1|Add7~62\ = CARRY(( \twimax_wrap|inter1|counter_out\(29) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_counter_out\(29),
	cin => \twimax_wrap|inter1|Add7~86\,
	sumout => \twimax_wrap|inter1|Add7~61_sumout\,
	cout => \twimax_wrap|inter1|Add7~62\);

-- Location: FF_X5_Y3_N29
\twimax_wrap|inter1|counter_out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~61_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(29));

-- Location: LABCELL_X5_Y3_N30
\twimax_wrap|inter1|Add7~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~89_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(30) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~62\ ))
-- \twimax_wrap|inter1|Add7~90\ = CARRY(( \twimax_wrap|inter1|counter_out\(30) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|inter1|ALT_INV_counter_out\(30),
	cin => \twimax_wrap|inter1|Add7~62\,
	sumout => \twimax_wrap|inter1|Add7~89_sumout\,
	cout => \twimax_wrap|inter1|Add7~90\);

-- Location: FF_X5_Y3_N31
\twimax_wrap|inter1|counter_out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~89_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(30));

-- Location: LABCELL_X5_Y3_N33
\twimax_wrap|inter1|Add7~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add7~81_sumout\ = SUM(( \twimax_wrap|inter1|counter_out\(31) ) + ( GND ) + ( \twimax_wrap|inter1|Add7~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|inter1|ALT_INV_counter_out\(31),
	cin => \twimax_wrap|inter1|Add7~90\,
	sumout => \twimax_wrap|inter1|Add7~81_sumout\);

-- Location: FF_X5_Y4_N37
\twimax_wrap|inter1|counter_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~109_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(12));

-- Location: FF_X5_Y4_N46
\twimax_wrap|inter1|counter_out[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~117_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out[15]~DUPLICATE_q\);

-- Location: FF_X5_Y4_N49
\twimax_wrap|inter1|counter_out[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~121_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out[16]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y3_N54
\twimax_wrap|inter1|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|process_0~4_combout\ = ( !\twimax_wrap|inter1|counter_out[16]~DUPLICATE_q\ & ( !\twimax_wrap|inter1|counter_out\(11) & ( (!\twimax_wrap|inter1|counter_out\(14) & (!\twimax_wrap|inter1|counter_out\(12) & 
-- (!\twimax_wrap|inter1|counter_out[15]~DUPLICATE_q\ & !\twimax_wrap|inter1|counter_out\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_counter_out\(14),
	datab => \twimax_wrap|inter1|ALT_INV_counter_out\(12),
	datac => \twimax_wrap|inter1|ALT_INV_counter_out[15]~DUPLICATE_q\,
	datad => \twimax_wrap|inter1|ALT_INV_counter_out\(18),
	datae => \twimax_wrap|inter1|ALT_INV_counter_out[16]~DUPLICATE_q\,
	dataf => \twimax_wrap|inter1|ALT_INV_counter_out\(11),
	combout => \twimax_wrap|inter1|process_0~4_combout\);

-- Location: LABCELL_X5_Y3_N42
\twimax_wrap|inter1|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|process_0~2_combout\ = ( !\twimax_wrap|inter1|counter_out\(21) & ( !\twimax_wrap|inter1|counter_out\(13) & ( (!\twimax_wrap|inter1|counter_out\(29) & (!\twimax_wrap|inter1|counter_out\(22) & (!\twimax_wrap|inter1|counter_out\(20) & 
-- !\twimax_wrap|inter1|counter_out\(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_counter_out\(29),
	datab => \twimax_wrap|inter1|ALT_INV_counter_out\(22),
	datac => \twimax_wrap|inter1|ALT_INV_counter_out\(20),
	datad => \twimax_wrap|inter1|ALT_INV_counter_out\(19),
	datae => \twimax_wrap|inter1|ALT_INV_counter_out\(21),
	dataf => \twimax_wrap|inter1|ALT_INV_counter_out\(13),
	combout => \twimax_wrap|inter1|process_0~2_combout\);

-- Location: LABCELL_X5_Y3_N36
\twimax_wrap|inter1|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|process_0~1_combout\ = ( !\twimax_wrap|inter1|counter_out\(27) & ( !\twimax_wrap|inter1|counter_out\(23) & ( (!\twimax_wrap|inter1|counter_out\(24) & (!\twimax_wrap|inter1|counter_out\(26) & !\twimax_wrap|inter1|counter_out\(25))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|inter1|ALT_INV_counter_out\(24),
	datac => \twimax_wrap|inter1|ALT_INV_counter_out\(26),
	datad => \twimax_wrap|inter1|ALT_INV_counter_out\(25),
	datae => \twimax_wrap|inter1|ALT_INV_counter_out\(27),
	dataf => \twimax_wrap|inter1|ALT_INV_counter_out\(23),
	combout => \twimax_wrap|inter1|process_0~1_combout\);

-- Location: LABCELL_X6_Y3_N54
\twimax_wrap|inter1|counter_kmod16[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|counter_kmod16[3]~2_combout\ = ( \twimax_wrap|inter1|process_0~1_combout\ & ( !\twimax_wrap|inter1|LessThan2~0_combout\ & ( (\twimax_wrap|inter1|process_0~4_combout\ & (\twimax_wrap|inter1|process_0~3_combout\ & 
-- (\twimax_wrap|inter1|state_reg.PingPong_state~q\ & \twimax_wrap|inter1|process_0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_process_0~4_combout\,
	datab => \twimax_wrap|inter1|ALT_INV_process_0~3_combout\,
	datac => \twimax_wrap|inter1|ALT_INV_state_reg.PingPong_state~q\,
	datad => \twimax_wrap|inter1|ALT_INV_process_0~2_combout\,
	datae => \twimax_wrap|inter1|ALT_INV_process_0~1_combout\,
	dataf => \twimax_wrap|inter1|ALT_INV_LessThan2~0_combout\,
	combout => \twimax_wrap|inter1|counter_kmod16[3]~2_combout\);

-- Location: MLABCELL_X4_Y2_N36
\twimax_wrap|inter1|Selector16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Selector16~2_combout\ = ( \twimax_wrap|inter1|process_0~7_combout\ & ( \twimax_wrap|inter1|counter_kmod16[3]~2_combout\ & ( ((\twimax_wrap|inter1|Add7~81_sumout\ & ((!\twimax_wrap|inter1|process_0~5_combout\) # 
-- (\twimax_wrap|inter1|Selector16~0_combout\)))) # (\twimax_wrap|inter1|Selector16~1_combout\) ) ) ) # ( !\twimax_wrap|inter1|process_0~7_combout\ & ( \twimax_wrap|inter1|counter_kmod16[3]~2_combout\ & ( (\twimax_wrap|inter1|Add7~81_sumout\) # 
-- (\twimax_wrap|inter1|Selector16~1_combout\) ) ) ) # ( \twimax_wrap|inter1|process_0~7_combout\ & ( !\twimax_wrap|inter1|counter_kmod16[3]~2_combout\ & ( ((\twimax_wrap|inter1|Selector16~0_combout\ & \twimax_wrap|inter1|Add7~81_sumout\)) # 
-- (\twimax_wrap|inter1|Selector16~1_combout\) ) ) ) # ( !\twimax_wrap|inter1|process_0~7_combout\ & ( !\twimax_wrap|inter1|counter_kmod16[3]~2_combout\ & ( ((\twimax_wrap|inter1|Selector16~0_combout\ & \twimax_wrap|inter1|Add7~81_sumout\)) # 
-- (\twimax_wrap|inter1|Selector16~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100001111111111110000111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_Selector16~0_combout\,
	datab => \twimax_wrap|inter1|ALT_INV_process_0~5_combout\,
	datac => \twimax_wrap|inter1|ALT_INV_Selector16~1_combout\,
	datad => \twimax_wrap|inter1|ALT_INV_Add7~81_sumout\,
	datae => \twimax_wrap|inter1|ALT_INV_process_0~7_combout\,
	dataf => \twimax_wrap|inter1|ALT_INV_counter_kmod16[3]~2_combout\,
	combout => \twimax_wrap|inter1|Selector16~2_combout\);

-- Location: FF_X4_Y2_N37
\twimax_wrap|inter1|counter_out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Selector16~2_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(31));

-- Location: FF_X5_Y4_N31
\twimax_wrap|inter1|counter_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~101_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out\(10));

-- Location: FF_X5_Y4_N28
\twimax_wrap|inter1|counter_out[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add7~97_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_out[28]~0_combout\,
	ena => \twimax_wrap|inter1|counter_out[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_out[9]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y3_N48
\twimax_wrap|inter1|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|process_0~3_combout\ = ( !\twimax_wrap|inter1|counter_out\(17) & ( !\twimax_wrap|inter1|counter_out[9]~DUPLICATE_q\ & ( (!\twimax_wrap|inter1|counter_out\(28) & (!\twimax_wrap|inter1|counter_out\(31) & 
-- (!\twimax_wrap|inter1|counter_out\(30) & !\twimax_wrap|inter1|counter_out\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_counter_out\(28),
	datab => \twimax_wrap|inter1|ALT_INV_counter_out\(31),
	datac => \twimax_wrap|inter1|ALT_INV_counter_out\(30),
	datad => \twimax_wrap|inter1|ALT_INV_counter_out\(10),
	datae => \twimax_wrap|inter1|ALT_INV_counter_out\(17),
	dataf => \twimax_wrap|inter1|ALT_INV_counter_out[9]~DUPLICATE_q\,
	combout => \twimax_wrap|inter1|process_0~3_combout\);

-- Location: LABCELL_X6_Y3_N3
\twimax_wrap|inter1|process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|process_0~5_combout\ = ( \twimax_wrap|inter1|process_0~4_combout\ & ( (\twimax_wrap|inter1|process_0~3_combout\ & (\twimax_wrap|inter1|process_0~1_combout\ & \twimax_wrap|inter1|process_0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|inter1|ALT_INV_process_0~3_combout\,
	datac => \twimax_wrap|inter1|ALT_INV_process_0~1_combout\,
	datad => \twimax_wrap|inter1|ALT_INV_process_0~2_combout\,
	dataf => \twimax_wrap|inter1|ALT_INV_process_0~4_combout\,
	combout => \twimax_wrap|inter1|process_0~5_combout\);

-- Location: LABCELL_X6_Y2_N9
\twimax_wrap|inter1|counter_kmod16[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|counter_kmod16[3]~0_combout\ = ( \twimax_wrap|inter1|state_reg.PingPong_state~q\ & ( (\twimax_wrap|inter1|LessThan0~0_combout\ & (((\twimax_wrap|inter1|process_0~5_combout\ & !\twimax_wrap|inter1|LessThan2~0_combout\)) # 
-- (\twimax_wrap|inter1|state_reg.input_buffer~q\))) ) ) # ( !\twimax_wrap|inter1|state_reg.PingPong_state~q\ & ( (\twimax_wrap|inter1|LessThan0~0_combout\ & \twimax_wrap|inter1|state_reg.input_buffer~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100010011000000110001001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_process_0~5_combout\,
	datab => \twimax_wrap|inter1|ALT_INV_LessThan0~0_combout\,
	datac => \twimax_wrap|inter1|ALT_INV_state_reg.input_buffer~q\,
	datad => \twimax_wrap|inter1|ALT_INV_LessThan2~0_combout\,
	dataf => \twimax_wrap|inter1|ALT_INV_state_reg.PingPong_state~q\,
	combout => \twimax_wrap|inter1|counter_kmod16[3]~0_combout\);

-- Location: FF_X4_Y2_N2
\twimax_wrap|inter1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add6~21_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_kmod16[3]~0_combout\,
	ena => \twimax_wrap|inter1|counter_kmod16[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter\(0));

-- Location: MLABCELL_X4_Y2_N3
\twimax_wrap|inter1|Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add6~29_sumout\ = SUM(( \twimax_wrap|inter1|counter\(1) ) + ( GND ) + ( \twimax_wrap|inter1|Add6~22\ ))
-- \twimax_wrap|inter1|Add6~30\ = CARRY(( \twimax_wrap|inter1|counter\(1) ) + ( GND ) + ( \twimax_wrap|inter1|Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twimax_wrap|inter1|ALT_INV_counter\(1),
	cin => \twimax_wrap|inter1|Add6~22\,
	sumout => \twimax_wrap|inter1|Add6~29_sumout\,
	cout => \twimax_wrap|inter1|Add6~30\);

-- Location: FF_X4_Y2_N5
\twimax_wrap|inter1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add6~29_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_kmod16[3]~0_combout\,
	ena => \twimax_wrap|inter1|counter_kmod16[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter\(1));

-- Location: FF_X4_Y2_N7
\twimax_wrap|inter1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add6~9_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_kmod16[3]~0_combout\,
	ena => \twimax_wrap|inter1|counter_kmod16[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter\(2));

-- Location: FF_X4_Y2_N17
\twimax_wrap|inter1|counter[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add6~17_sumout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_kmod16[3]~0_combout\,
	ena => \twimax_wrap|inter1|counter_kmod16[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter[5]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y2_N54
\twimax_wrap|inter1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Equal0~0_combout\ = ( \twimax_wrap|inter1|counter\(0) & ( \twimax_wrap|inter1|counter[5]~DUPLICATE_q\ & ( (\twimax_wrap|inter1|counter\(2) & (\twimax_wrap|inter1|counter\(3) & (\twimax_wrap|inter1|counter\(1) & 
-- \twimax_wrap|inter1|counter\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_counter\(2),
	datab => \twimax_wrap|inter1|ALT_INV_counter\(3),
	datac => \twimax_wrap|inter1|ALT_INV_counter\(1),
	datad => \twimax_wrap|inter1|ALT_INV_counter\(4),
	datae => \twimax_wrap|inter1|ALT_INV_counter\(0),
	dataf => \twimax_wrap|inter1|ALT_INV_counter[5]~DUPLICATE_q\,
	combout => \twimax_wrap|inter1|Equal0~0_combout\);

-- Location: MLABCELL_X4_Y3_N51
\twimax_wrap|inter1|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|LessThan0~0_combout\ = ( \twimax_wrap|inter1|counter\(7) & ( (\twimax_wrap|inter1|counter\(6)) # (\twimax_wrap|inter1|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_Equal0~0_combout\,
	datac => \twimax_wrap|inter1|ALT_INV_counter\(6),
	dataf => \twimax_wrap|inter1|ALT_INV_counter\(7),
	combout => \twimax_wrap|inter1|LessThan0~0_combout\);

-- Location: LABCELL_X6_Y3_N42
\twimax_wrap|inter1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Selector0~0_combout\ = ( \twimax_wrap|inter1|INTER_Output_valid~q\ & ( \twimax_wrap|inter1|state_reg.input_buffer~q\ ) ) # ( !\twimax_wrap|inter1|INTER_Output_valid~q\ & ( \twimax_wrap|inter1|state_reg.input_buffer~q\ & ( 
-- ((!\twimax_wrap|inter1|LessThan2~0_combout\ & (\twimax_wrap|inter1|state_reg.PingPong_state~q\ & \twimax_wrap|inter1|process_0~5_combout\))) # (\twimax_wrap|inter1|LessThan0~0_combout\) ) ) ) # ( \twimax_wrap|inter1|INTER_Output_valid~q\ & ( 
-- !\twimax_wrap|inter1|state_reg.input_buffer~q\ & ( \twimax_wrap|inter1|state_reg.PingPong_state~q\ ) ) ) # ( !\twimax_wrap|inter1|INTER_Output_valid~q\ & ( !\twimax_wrap|inter1|state_reg.input_buffer~q\ & ( (!\twimax_wrap|inter1|LessThan2~0_combout\ & 
-- (\twimax_wrap|inter1|state_reg.PingPong_state~q\ & \twimax_wrap|inter1|process_0~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000011110000111101010101010111011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_LessThan0~0_combout\,
	datab => \twimax_wrap|inter1|ALT_INV_LessThan2~0_combout\,
	datac => \twimax_wrap|inter1|ALT_INV_state_reg.PingPong_state~q\,
	datad => \twimax_wrap|inter1|ALT_INV_process_0~5_combout\,
	datae => \twimax_wrap|inter1|ALT_INV_INTER_Output_valid~q\,
	dataf => \twimax_wrap|inter1|ALT_INV_state_reg.input_buffer~q\,
	combout => \twimax_wrap|inter1|Selector0~0_combout\);

-- Location: FF_X6_Y3_N43
\twimax_wrap|inter1|INTER_Output_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Selector0~0_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|INTER_Output_valid~q\);

-- Location: FF_X4_Y3_N5
\twimax_wrap|inter1|counter_kmod16[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|counter_kmod16[0]~_wirecell_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_kmod16[3]~0_combout\,
	ena => \twimax_wrap|inter1|counter_kmod16[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_kmod16\(0));

-- Location: MLABCELL_X4_Y3_N3
\twimax_wrap|inter1|counter_kmod16[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|counter_kmod16[0]~_wirecell_combout\ = !\twimax_wrap|inter1|counter_kmod16\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twimax_wrap|inter1|ALT_INV_counter_kmod16\(0),
	combout => \twimax_wrap|inter1|counter_kmod16[0]~_wirecell_combout\);

-- Location: FF_X4_Y3_N4
\twimax_wrap|inter1|counter_kmod16[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|counter_kmod16[0]~_wirecell_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_kmod16[3]~0_combout\,
	ena => \twimax_wrap|inter1|counter_kmod16[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_kmod16[0]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y3_N30
\twimax_wrap|inter1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add1~1_sumout\ = SUM(( \twimax_wrap|inter1|counter\(6) ) + ( \twimax_wrap|inter1|counter_kmod16[0]~DUPLICATE_q\ ) + ( !VCC ))
-- \twimax_wrap|inter1|Add1~2\ = CARRY(( \twimax_wrap|inter1|counter\(6) ) + ( \twimax_wrap|inter1|counter_kmod16[0]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|inter1|ALT_INV_counter\(6),
	dataf => \twimax_wrap|inter1|ALT_INV_counter_kmod16[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \twimax_wrap|inter1|Add1~1_sumout\,
	cout => \twimax_wrap|inter1|Add1~2\);

-- Location: MLABCELL_X4_Y3_N6
\twimax_wrap|inter1|Add0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add0~3_combout\ = ( \twimax_wrap|inter1|counter_kmod16[0]~DUPLICATE_q\ & ( !\twimax_wrap|inter1|counter_kmod16\(1) ) ) # ( !\twimax_wrap|inter1|counter_kmod16[0]~DUPLICATE_q\ & ( \twimax_wrap|inter1|counter_kmod16\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twimax_wrap|inter1|ALT_INV_counter_kmod16\(1),
	dataf => \twimax_wrap|inter1|ALT_INV_counter_kmod16[0]~DUPLICATE_q\,
	combout => \twimax_wrap|inter1|Add0~3_combout\);

-- Location: FF_X4_Y3_N7
\twimax_wrap|inter1|counter_kmod16[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add0~3_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_kmod16[3]~0_combout\,
	ena => \twimax_wrap|inter1|counter_kmod16[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_kmod16\(1));

-- Location: MLABCELL_X4_Y3_N33
\twimax_wrap|inter1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add1~5_sumout\ = SUM(( \twimax_wrap|inter1|counter\(7) ) + ( !\twimax_wrap|inter1|counter_kmod16\(1) $ (!\twimax_wrap|inter1|counter_kmod16[0]~DUPLICATE_q\) ) + ( \twimax_wrap|inter1|Add1~2\ ))
-- \twimax_wrap|inter1|Add1~6\ = CARRY(( \twimax_wrap|inter1|counter\(7) ) + ( !\twimax_wrap|inter1|counter_kmod16\(1) $ (!\twimax_wrap|inter1|counter_kmod16[0]~DUPLICATE_q\) ) + ( \twimax_wrap|inter1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_counter\(7),
	datac => \twimax_wrap|inter1|ALT_INV_counter_kmod16\(1),
	dataf => \twimax_wrap|inter1|ALT_INV_counter_kmod16[0]~DUPLICATE_q\,
	cin => \twimax_wrap|inter1|Add1~2\,
	sumout => \twimax_wrap|inter1|Add1~5_sumout\,
	cout => \twimax_wrap|inter1|Add1~6\);

-- Location: FF_X4_Y3_N11
\twimax_wrap|inter1|counter_kmod16[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add0~4_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_kmod16[3]~0_combout\,
	ena => \twimax_wrap|inter1|counter_kmod16[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_kmod16\(2));

-- Location: MLABCELL_X4_Y3_N9
\twimax_wrap|inter1|Add0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add0~4_combout\ = ( \twimax_wrap|inter1|counter_kmod16\(1) & ( !\twimax_wrap|inter1|counter_kmod16\(0) $ (!\twimax_wrap|inter1|counter_kmod16\(2)) ) ) # ( !\twimax_wrap|inter1|counter_kmod16\(1) & ( 
-- \twimax_wrap|inter1|counter_kmod16\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_counter_kmod16\(0),
	datad => \twimax_wrap|inter1|ALT_INV_counter_kmod16\(2),
	dataf => \twimax_wrap|inter1|ALT_INV_counter_kmod16\(1),
	combout => \twimax_wrap|inter1|Add0~4_combout\);

-- Location: FF_X4_Y3_N10
\twimax_wrap|inter1|counter_kmod16[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add0~4_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_kmod16[3]~0_combout\,
	ena => \twimax_wrap|inter1|counter_kmod16[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_kmod16[2]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y3_N57
\twimax_wrap|inter1|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add0~0_combout\ = ( \twimax_wrap|inter1|counter_kmod16\(1) & ( !\twimax_wrap|inter1|counter_kmod16[2]~DUPLICATE_q\ $ (\twimax_wrap|inter1|counter_kmod16[0]~DUPLICATE_q\) ) ) # ( !\twimax_wrap|inter1|counter_kmod16\(1) & ( 
-- \twimax_wrap|inter1|counter_kmod16[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_counter_kmod16[2]~DUPLICATE_q\,
	datac => \twimax_wrap|inter1|ALT_INV_counter_kmod16[0]~DUPLICATE_q\,
	dataf => \twimax_wrap|inter1|ALT_INV_counter_kmod16\(1),
	combout => \twimax_wrap|inter1|Add0~0_combout\);

-- Location: MLABCELL_X4_Y3_N36
\twimax_wrap|inter1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add1~9_sumout\ = SUM(( \twimax_wrap|inter1|Add0~0_combout\ ) + ( GND ) + ( \twimax_wrap|inter1|Add1~6\ ))
-- \twimax_wrap|inter1|Add1~10\ = CARRY(( \twimax_wrap|inter1|Add0~0_combout\ ) + ( GND ) + ( \twimax_wrap|inter1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|inter1|ALT_INV_Add0~0_combout\,
	cin => \twimax_wrap|inter1|Add1~6\,
	sumout => \twimax_wrap|inter1|Add1~9_sumout\,
	cout => \twimax_wrap|inter1|Add1~10\);

-- Location: MLABCELL_X4_Y3_N12
\twimax_wrap|inter1|Add5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add5~0_combout\ = ( \twimax_wrap|inter1|counter_kmod16\(1) & ( !\twimax_wrap|inter1|counter_kmod16\(3) $ (((!\twimax_wrap|inter1|counter_kmod16\(2)) # (!\twimax_wrap|inter1|counter_kmod16\(0)))) ) ) # ( 
-- !\twimax_wrap|inter1|counter_kmod16\(1) & ( \twimax_wrap|inter1|counter_kmod16\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|inter1|ALT_INV_counter_kmod16\(2),
	datac => \twimax_wrap|inter1|ALT_INV_counter_kmod16\(0),
	datad => \twimax_wrap|inter1|ALT_INV_counter_kmod16\(3),
	dataf => \twimax_wrap|inter1|ALT_INV_counter_kmod16\(1),
	combout => \twimax_wrap|inter1|Add5~0_combout\);

-- Location: FF_X4_Y3_N14
\twimax_wrap|inter1|counter_kmod16[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Add5~0_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sclr => \twimax_wrap|inter1|counter_kmod16[3]~0_combout\,
	ena => \twimax_wrap|inter1|counter_kmod16[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|counter_kmod16\(3));

-- Location: MLABCELL_X4_Y3_N54
\twimax_wrap|inter1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add0~1_combout\ = ( \twimax_wrap|inter1|counter_kmod16\(3) & ( (!\twimax_wrap|inter1|counter_kmod16[2]~DUPLICATE_q\ & ((!\twimax_wrap|inter1|counter_kmod16\(1)) # (!\twimax_wrap|inter1|counter_kmod16\(0)))) # 
-- (\twimax_wrap|inter1|counter_kmod16[2]~DUPLICATE_q\ & (\twimax_wrap|inter1|counter_kmod16\(1))) ) ) # ( !\twimax_wrap|inter1|counter_kmod16\(3) & ( (!\twimax_wrap|inter1|counter_kmod16[2]~DUPLICATE_q\ & (\twimax_wrap|inter1|counter_kmod16\(1) & 
-- \twimax_wrap|inter1|counter_kmod16\(0))) # (\twimax_wrap|inter1|counter_kmod16[2]~DUPLICATE_q\ & (!\twimax_wrap|inter1|counter_kmod16\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011001000110010001100100011010111001101110011011100110111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_counter_kmod16[2]~DUPLICATE_q\,
	datab => \twimax_wrap|inter1|ALT_INV_counter_kmod16\(1),
	datac => \twimax_wrap|inter1|ALT_INV_counter_kmod16\(0),
	dataf => \twimax_wrap|inter1|ALT_INV_counter_kmod16\(3),
	combout => \twimax_wrap|inter1|Add0~1_combout\);

-- Location: MLABCELL_X4_Y3_N39
\twimax_wrap|inter1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add1~13_sumout\ = SUM(( \twimax_wrap|inter1|Add0~1_combout\ ) + ( GND ) + ( \twimax_wrap|inter1|Add1~10\ ))
-- \twimax_wrap|inter1|Add1~14\ = CARRY(( \twimax_wrap|inter1|Add0~1_combout\ ) + ( GND ) + ( \twimax_wrap|inter1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_Add0~1_combout\,
	cin => \twimax_wrap|inter1|Add1~10\,
	sumout => \twimax_wrap|inter1|Add1~13_sumout\,
	cout => \twimax_wrap|inter1|Add1~14\);

-- Location: MLABCELL_X4_Y3_N24
\twimax_wrap|inter1|Selector48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Selector48~0_combout\ = ( \twimax_wrap|inter1|PingPong_flag~q\ & ( \twimax_wrap|inter1|Equal0~0_combout\ & ( ((!\twimax_wrap|inter1|counter\(7)) # (!\twimax_wrap|inter1|state_reg.PingPong_state~q\)) # (\twimax_wrap|inter1|counter\(6)) 
-- ) ) ) # ( !\twimax_wrap|inter1|PingPong_flag~q\ & ( \twimax_wrap|inter1|Equal0~0_combout\ & ( (\twimax_wrap|inter1|counter\(7) & ((!\twimax_wrap|inter1|state_reg.PingPong_state~q\ & (\twimax_wrap|inter1|state_reg.input_buffer~q\)) # 
-- (\twimax_wrap|inter1|state_reg.PingPong_state~q\ & ((!\twimax_wrap|inter1|counter\(6)))))) ) ) ) # ( \twimax_wrap|inter1|PingPong_flag~q\ & ( !\twimax_wrap|inter1|Equal0~0_combout\ ) ) # ( !\twimax_wrap|inter1|PingPong_flag~q\ & ( 
-- !\twimax_wrap|inter1|Equal0~0_combout\ & ( (\twimax_wrap|inter1|state_reg.input_buffer~q\ & (\twimax_wrap|inter1|counter\(6) & (\twimax_wrap|inter1|counter\(7) & !\twimax_wrap|inter1|state_reg.PingPong_state~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000111111111111111100000101000011001111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_state_reg.input_buffer~q\,
	datab => \twimax_wrap|inter1|ALT_INV_counter\(6),
	datac => \twimax_wrap|inter1|ALT_INV_counter\(7),
	datad => \twimax_wrap|inter1|ALT_INV_state_reg.PingPong_state~q\,
	datae => \twimax_wrap|inter1|ALT_INV_PingPong_flag~q\,
	dataf => \twimax_wrap|inter1|ALT_INV_Equal0~0_combout\,
	combout => \twimax_wrap|inter1|Selector48~0_combout\);

-- Location: FF_X4_Y3_N26
\twimax_wrap|inter1|PingPong_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|inter1|Selector48~0_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|inter1|PingPong_flag~q\);

-- Location: MLABCELL_X4_Y3_N15
\twimax_wrap|inter1|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add0~2_combout\ = ( \twimax_wrap|inter1|counter_kmod16\(1) & ( ((\twimax_wrap|inter1|counter_kmod16\(3) & \twimax_wrap|inter1|counter_kmod16\(0))) # (\twimax_wrap|inter1|counter_kmod16[2]~DUPLICATE_q\) ) ) # ( 
-- !\twimax_wrap|inter1|counter_kmod16\(1) & ( (\twimax_wrap|inter1|counter_kmod16[2]~DUPLICATE_q\ & \twimax_wrap|inter1|counter_kmod16\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_counter_kmod16[2]~DUPLICATE_q\,
	datac => \twimax_wrap|inter1|ALT_INV_counter_kmod16\(3),
	datad => \twimax_wrap|inter1|ALT_INV_counter_kmod16\(0),
	dataf => \twimax_wrap|inter1|ALT_INV_counter_kmod16\(1),
	combout => \twimax_wrap|inter1|Add0~2_combout\);

-- Location: MLABCELL_X4_Y3_N42
\twimax_wrap|inter1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add1~17_sumout\ = SUM(( GND ) + ( !\twimax_wrap|inter1|counter_kmod16\(3) $ (!\twimax_wrap|inter1|Add0~2_combout\) ) + ( \twimax_wrap|inter1|Add1~14\ ))
-- \twimax_wrap|inter1|Add1~18\ = CARRY(( GND ) + ( !\twimax_wrap|inter1|counter_kmod16\(3) $ (!\twimax_wrap|inter1|Add0~2_combout\) ) + ( \twimax_wrap|inter1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|inter1|ALT_INV_counter_kmod16\(3),
	dataf => \twimax_wrap|inter1|ALT_INV_Add0~2_combout\,
	cin => \twimax_wrap|inter1|Add1~14\,
	sumout => \twimax_wrap|inter1|Add1~17_sumout\,
	cout => \twimax_wrap|inter1|Add1~18\);

-- Location: MLABCELL_X4_Y3_N48
\twimax_wrap|inter1|address_a[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|address_a[6]~0_combout\ = ( \twimax_wrap|inter1|Add1~17_sumout\ & ( !\twimax_wrap|inter1|PingPong_flag~q\ ) ) # ( !\twimax_wrap|inter1|Add1~17_sumout\ & ( \twimax_wrap|inter1|PingPong_flag~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|inter1|ALT_INV_PingPong_flag~q\,
	dataf => \twimax_wrap|inter1|ALT_INV_Add1~17_sumout\,
	combout => \twimax_wrap|inter1|address_a[6]~0_combout\);

-- Location: MLABCELL_X4_Y3_N45
\twimax_wrap|inter1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|Add1~21_sumout\ = SUM(( (\twimax_wrap|inter1|counter_kmod16\(3) & \twimax_wrap|inter1|Add0~2_combout\) ) + ( GND ) + ( \twimax_wrap|inter1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|inter1|ALT_INV_counter_kmod16\(3),
	datac => \twimax_wrap|inter1|ALT_INV_Add0~2_combout\,
	cin => \twimax_wrap|inter1|Add1~18\,
	sumout => \twimax_wrap|inter1|Add1~21_sumout\);

-- Location: MLABCELL_X4_Y3_N18
\twimax_wrap|inter1|address_a[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|address_a[7]~1_combout\ = ( \twimax_wrap|inter1|Add1~17_sumout\ & ( \twimax_wrap|inter1|Add1~21_sumout\ ) ) # ( !\twimax_wrap|inter1|Add1~17_sumout\ & ( !\twimax_wrap|inter1|PingPong_flag~q\ $ (!\twimax_wrap|inter1|Add1~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_PingPong_flag~q\,
	datab => \twimax_wrap|inter1|ALT_INV_Add1~21_sumout\,
	dataf => \twimax_wrap|inter1|ALT_INV_Add1~17_sumout\,
	combout => \twimax_wrap|inter1|address_a[7]~1_combout\);

-- Location: MLABCELL_X4_Y3_N21
\twimax_wrap|inter1|address_a[8]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|inter1|address_a[8]~2_combout\ = ( \twimax_wrap|inter1|Add1~17_sumout\ & ( \twimax_wrap|inter1|PingPong_flag~q\ ) ) # ( !\twimax_wrap|inter1|Add1~17_sumout\ & ( (\twimax_wrap|inter1|PingPong_flag~q\ & \twimax_wrap|inter1|Add1~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_PingPong_flag~q\,
	datab => \twimax_wrap|inter1|ALT_INV_Add1~21_sumout\,
	dataf => \twimax_wrap|inter1|ALT_INV_Add1~17_sumout\,
	combout => \twimax_wrap|inter1|address_a[8]~2_combout\);

-- Location: M10K_X3_Y3_N0
\twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "TopWiMax_3:twimax_wrap|INTER:inter1|INTER_RAM_2PORT:ram2|altsyncram:altsyncram_component|altsyncram_9014:auto_generated|ALTSYNCRAM",
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
	portawe => \twimax_wrap|fec1|input_state_reg.PingPong_state~q\,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	portadatain => \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X2_Y4_N0
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( !\INTER_Counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add3~14\ = CARRY(( !\INTER_Counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_INTER_Counter[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: LABCELL_X1_Y4_N0
\INTER_Counter[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTER_Counter[0]~4_combout\ = !\Add3~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~13_sumout\,
	combout => \INTER_Counter[0]~4_combout\);

-- Location: FF_X1_Y4_N1
\INTER_Counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \INTER_Counter[0]~4_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTER_Counter[0]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y4_N3
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( !INTER_Counter(1) ) + ( VCC ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( !INTER_Counter(1) ) + ( VCC ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_INTER_Counter(1),
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: LABCELL_X1_Y4_N3
\INTER_Counter[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTER_Counter[1]~5_combout\ = !\Add3~17_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~17_sumout\,
	combout => \INTER_Counter[1]~5_combout\);

-- Location: FF_X1_Y4_N4
\INTER_Counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \INTER_Counter[1]~5_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(1));

-- Location: LABCELL_X2_Y4_N6
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( !INTER_Counter(2) ) + ( VCC ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( !INTER_Counter(2) ) + ( VCC ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_INTER_Counter(2),
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: LABCELL_X1_Y4_N39
\INTER_Counter[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTER_Counter[2]~6_combout\ = ( !\Add3~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add3~21_sumout\,
	combout => \INTER_Counter[2]~6_combout\);

-- Location: FF_X1_Y4_N40
\INTER_Counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \INTER_Counter[2]~6_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(2));

-- Location: LABCELL_X2_Y4_N9
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( !INTER_Counter(3) ) + ( VCC ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( !INTER_Counter(3) ) + ( VCC ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_INTER_Counter(3),
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: LABCELL_X1_Y4_N15
\INTER_Counter[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTER_Counter[3]~7_combout\ = ( !\Add3~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add3~25_sumout\,
	combout => \INTER_Counter[3]~7_combout\);

-- Location: FF_X1_Y4_N16
\INTER_Counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \INTER_Counter[3]~7_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(3));

-- Location: LABCELL_X2_Y4_N12
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( !INTER_Counter(4) ) + ( VCC ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( !INTER_Counter(4) ) + ( VCC ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_INTER_Counter(4),
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: LABCELL_X2_Y4_N15
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( !INTER_Counter(5) ) + ( VCC ) + ( \Add3~30\ ))
-- \Add3~34\ = CARRY(( !INTER_Counter(5) ) + ( VCC ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_INTER_Counter(5),
	cin => \Add3~30\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: LABCELL_X1_Y4_N51
\INTER_Counter[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTER_Counter[5]~9_combout\ = !\Add3~33_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~33_sumout\,
	combout => \INTER_Counter[5]~9_combout\);

-- Location: FF_X1_Y4_N53
\INTER_Counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \INTER_Counter[5]~9_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(5));

-- Location: LABCELL_X2_Y4_N18
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( INTER_Counter(6) ) + ( VCC ) + ( \Add3~34\ ))
-- \Add3~10\ = CARRY(( INTER_Counter(6) ) + ( VCC ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_INTER_Counter(6),
	cin => \Add3~34\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: LABCELL_X2_Y4_N39
\Add3~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~105_sumout\ = SUM(( INTER_Counter(13) ) + ( VCC ) + ( \Add3~102\ ))
-- \Add3~106\ = CARRY(( INTER_Counter(13) ) + ( VCC ) + ( \Add3~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_INTER_Counter(13),
	cin => \Add3~102\,
	sumout => \Add3~105_sumout\,
	cout => \Add3~106\);

-- Location: LABCELL_X2_Y4_N42
\Add3~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~109_sumout\ = SUM(( INTER_Counter(14) ) + ( VCC ) + ( \Add3~106\ ))
-- \Add3~110\ = CARRY(( INTER_Counter(14) ) + ( VCC ) + ( \Add3~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_INTER_Counter(14),
	cin => \Add3~106\,
	sumout => \Add3~109_sumout\,
	cout => \Add3~110\);

-- Location: FF_X2_Y4_N43
\INTER_Counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~109_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(14));

-- Location: LABCELL_X2_Y4_N45
\Add3~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~113_sumout\ = SUM(( INTER_Counter(15) ) + ( VCC ) + ( \Add3~110\ ))
-- \Add3~114\ = CARRY(( INTER_Counter(15) ) + ( VCC ) + ( \Add3~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_INTER_Counter(15),
	cin => \Add3~110\,
	sumout => \Add3~113_sumout\,
	cout => \Add3~114\);

-- Location: FF_X2_Y4_N47
\INTER_Counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~113_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(15));

-- Location: LABCELL_X2_Y4_N48
\Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~69_sumout\ = SUM(( INTER_Counter(16) ) + ( VCC ) + ( \Add3~114\ ))
-- \Add3~70\ = CARRY(( INTER_Counter(16) ) + ( VCC ) + ( \Add3~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_INTER_Counter(16),
	cin => \Add3~114\,
	sumout => \Add3~69_sumout\,
	cout => \Add3~70\);

-- Location: FF_X2_Y4_N50
\INTER_Counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~69_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(16));

-- Location: LABCELL_X2_Y4_N51
\Add3~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~73_sumout\ = SUM(( INTER_Counter(17) ) + ( VCC ) + ( \Add3~70\ ))
-- \Add3~74\ = CARRY(( INTER_Counter(17) ) + ( VCC ) + ( \Add3~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_INTER_Counter(17),
	cin => \Add3~70\,
	sumout => \Add3~73_sumout\,
	cout => \Add3~74\);

-- Location: FF_X2_Y4_N52
\INTER_Counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~73_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(17));

-- Location: LABCELL_X2_Y4_N54
\Add3~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~77_sumout\ = SUM(( INTER_Counter(18) ) + ( VCC ) + ( \Add3~74\ ))
-- \Add3~78\ = CARRY(( INTER_Counter(18) ) + ( VCC ) + ( \Add3~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_INTER_Counter(18),
	cin => \Add3~74\,
	sumout => \Add3~77_sumout\,
	cout => \Add3~78\);

-- Location: FF_X2_Y4_N55
\INTER_Counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~77_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(18));

-- Location: LABCELL_X2_Y4_N57
\Add3~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~81_sumout\ = SUM(( INTER_Counter(19) ) + ( VCC ) + ( \Add3~78\ ))
-- \Add3~82\ = CARRY(( INTER_Counter(19) ) + ( VCC ) + ( \Add3~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_INTER_Counter(19),
	cin => \Add3~78\,
	sumout => \Add3~81_sumout\,
	cout => \Add3~82\);

-- Location: FF_X2_Y4_N59
\INTER_Counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~81_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(19));

-- Location: LABCELL_X2_Y3_N0
\Add3~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~117_sumout\ = SUM(( INTER_Counter(20) ) + ( VCC ) + ( \Add3~82\ ))
-- \Add3~118\ = CARRY(( INTER_Counter(20) ) + ( VCC ) + ( \Add3~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_INTER_Counter(20),
	cin => \Add3~82\,
	sumout => \Add3~117_sumout\,
	cout => \Add3~118\);

-- Location: FF_X2_Y3_N2
\INTER_Counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~117_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(20));

-- Location: LABCELL_X2_Y3_N54
\Equal3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~7_combout\ = ( \INTER_Counter[0]~DUPLICATE_q\ & ( INTER_Counter(1) & ( (!INTER_Counter(20) & (!INTER_Counter(6) & (!INTER_Counter(9) & !INTER_Counter(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_INTER_Counter(20),
	datab => ALT_INV_INTER_Counter(6),
	datac => ALT_INV_INTER_Counter(9),
	datad => ALT_INV_INTER_Counter(8),
	datae => \ALT_INV_INTER_Counter[0]~DUPLICATE_q\,
	dataf => ALT_INV_INTER_Counter(1),
	combout => \Equal3~7_combout\);

-- Location: LABCELL_X2_Y3_N3
\Add3~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~85_sumout\ = SUM(( INTER_Counter(21) ) + ( VCC ) + ( \Add3~118\ ))
-- \Add3~86\ = CARRY(( INTER_Counter(21) ) + ( VCC ) + ( \Add3~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_INTER_Counter(21),
	cin => \Add3~118\,
	sumout => \Add3~85_sumout\,
	cout => \Add3~86\);

-- Location: FF_X2_Y3_N5
\INTER_Counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~85_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(21));

-- Location: LABCELL_X2_Y3_N6
\Add3~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~89_sumout\ = SUM(( INTER_Counter(22) ) + ( VCC ) + ( \Add3~86\ ))
-- \Add3~90\ = CARRY(( INTER_Counter(22) ) + ( VCC ) + ( \Add3~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_INTER_Counter(22),
	cin => \Add3~86\,
	sumout => \Add3~89_sumout\,
	cout => \Add3~90\);

-- Location: FF_X2_Y3_N8
\INTER_Counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~89_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(22));

-- Location: FF_X2_Y4_N49
\INTER_Counter[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~69_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTER_Counter[16]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y3_N48
\Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = ( !INTER_Counter(17) & ( !\INTER_Counter[16]~DUPLICATE_q\ & ( (!INTER_Counter(21) & (!INTER_Counter(22) & (!INTER_Counter(18) & !INTER_Counter(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_INTER_Counter(21),
	datab => ALT_INV_INTER_Counter(22),
	datac => ALT_INV_INTER_Counter(18),
	datad => ALT_INV_INTER_Counter(19),
	datae => ALT_INV_INTER_Counter(17),
	dataf => \ALT_INV_INTER_Counter[16]~DUPLICATE_q\,
	combout => \Equal3~2_combout\);

-- Location: FF_X1_Y4_N17
\INTER_Counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \INTER_Counter[3]~7_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTER_Counter[3]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y4_N54
\Equal3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = ( INTER_Counter(5) & ( INTER_Counter(7) & ( (!INTER_Counter(31) & (INTER_Counter(2) & (\INTER_Counter[4]~DUPLICATE_q\ & \INTER_Counter[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_INTER_Counter(31),
	datab => ALT_INV_INTER_Counter(2),
	datac => \ALT_INV_INTER_Counter[4]~DUPLICATE_q\,
	datad => \ALT_INV_INTER_Counter[3]~DUPLICATE_q\,
	datae => ALT_INV_INTER_Counter(5),
	dataf => ALT_INV_INTER_Counter(7),
	combout => \Equal3~4_combout\);

-- Location: LABCELL_X2_Y3_N9
\Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~45_sumout\ = SUM(( INTER_Counter(23) ) + ( VCC ) + ( \Add3~90\ ))
-- \Add3~46\ = CARRY(( INTER_Counter(23) ) + ( VCC ) + ( \Add3~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_INTER_Counter(23),
	cin => \Add3~90\,
	sumout => \Add3~45_sumout\,
	cout => \Add3~46\);

-- Location: FF_X2_Y3_N11
\INTER_Counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~45_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(23));

-- Location: LABCELL_X2_Y3_N12
\Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~49_sumout\ = SUM(( INTER_Counter(24) ) + ( VCC ) + ( \Add3~46\ ))
-- \Add3~50\ = CARRY(( INTER_Counter(24) ) + ( VCC ) + ( \Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_INTER_Counter(24),
	cin => \Add3~46\,
	sumout => \Add3~49_sumout\,
	cout => \Add3~50\);

-- Location: FF_X2_Y3_N14
\INTER_Counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~49_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(24));

-- Location: LABCELL_X2_Y3_N15
\Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~53_sumout\ = SUM(( INTER_Counter(25) ) + ( VCC ) + ( \Add3~50\ ))
-- \Add3~54\ = CARRY(( INTER_Counter(25) ) + ( VCC ) + ( \Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_INTER_Counter(25),
	cin => \Add3~50\,
	sumout => \Add3~53_sumout\,
	cout => \Add3~54\);

-- Location: FF_X2_Y3_N17
\INTER_Counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~53_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(25));

-- Location: LABCELL_X2_Y3_N18
\Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~57_sumout\ = SUM(( INTER_Counter(26) ) + ( VCC ) + ( \Add3~54\ ))
-- \Add3~58\ = CARRY(( INTER_Counter(26) ) + ( VCC ) + ( \Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_INTER_Counter(26),
	cin => \Add3~54\,
	sumout => \Add3~57_sumout\,
	cout => \Add3~58\);

-- Location: FF_X2_Y3_N20
\INTER_Counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~57_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(26));

-- Location: LABCELL_X2_Y3_N21
\Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~61_sumout\ = SUM(( INTER_Counter(27) ) + ( VCC ) + ( \Add3~58\ ))
-- \Add3~62\ = CARRY(( INTER_Counter(27) ) + ( VCC ) + ( \Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_INTER_Counter(27),
	cin => \Add3~58\,
	sumout => \Add3~61_sumout\,
	cout => \Add3~62\);

-- Location: FF_X2_Y3_N23
\INTER_Counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~61_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(27));

-- Location: LABCELL_X2_Y3_N24
\Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~65_sumout\ = SUM(( INTER_Counter(28) ) + ( VCC ) + ( \Add3~62\ ))
-- \Add3~66\ = CARRY(( INTER_Counter(28) ) + ( VCC ) + ( \Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_INTER_Counter(28),
	cin => \Add3~62\,
	sumout => \Add3~65_sumout\,
	cout => \Add3~66\);

-- Location: FF_X2_Y3_N26
\INTER_Counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~65_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(28));

-- Location: LABCELL_X2_Y3_N42
\Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = ( !INTER_Counter(27) & ( !INTER_Counter(23) & ( (!INTER_Counter(26) & (!INTER_Counter(25) & (!INTER_Counter(28) & !INTER_Counter(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_INTER_Counter(26),
	datab => ALT_INV_INTER_Counter(25),
	datac => ALT_INV_INTER_Counter(28),
	datad => ALT_INV_INTER_Counter(24),
	datae => ALT_INV_INTER_Counter(27),
	dataf => ALT_INV_INTER_Counter(23),
	combout => \Equal3~1_combout\);

-- Location: LABCELL_X2_Y3_N27
\Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( INTER_Counter(29) ) + ( VCC ) + ( \Add3~66\ ))
-- \Add3~42\ = CARRY(( INTER_Counter(29) ) + ( VCC ) + ( \Add3~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_INTER_Counter(29),
	cin => \Add3~66\,
	sumout => \Add3~41_sumout\,
	cout => \Add3~42\);

-- Location: FF_X2_Y3_N29
\INTER_Counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~41_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(29));

-- Location: LABCELL_X2_Y3_N30
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( INTER_Counter(30) ) + ( VCC ) + ( \Add3~42\ ))
-- \Add3~38\ = CARRY(( INTER_Counter(30) ) + ( VCC ) + ( \Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_INTER_Counter(30),
	cin => \Add3~42\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: FF_X2_Y3_N32
\INTER_Counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~37_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(30));

-- Location: LABCELL_X2_Y3_N36
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!INTER_Counter(30) & !INTER_Counter(29))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_INTER_Counter(30),
	datac => ALT_INV_INTER_Counter(29),
	combout => \Equal3~0_combout\);

-- Location: LABCELL_X6_Y3_N48
\Equal3~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~8_combout\ = ( \Equal3~3_combout\ & ( \Equal3~0_combout\ & ( (\Equal3~7_combout\ & (\Equal3~2_combout\ & (\Equal3~4_combout\ & \Equal3~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~7_combout\,
	datab => \ALT_INV_Equal3~2_combout\,
	datac => \ALT_INV_Equal3~4_combout\,
	datad => \ALT_INV_Equal3~1_combout\,
	datae => \ALT_INV_Equal3~3_combout\,
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \Equal3~8_combout\);

-- Location: FF_X2_Y4_N19
\INTER_Counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~9_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(6));

-- Location: LABCELL_X2_Y4_N21
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( !INTER_Counter(7) ) + ( VCC ) + ( \Add3~10\ ))
-- \Add3~6\ = CARRY(( !INTER_Counter(7) ) + ( VCC ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_INTER_Counter(7),
	cin => \Add3~10\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: LABCELL_X2_Y5_N30
\INTER_Counter[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTER_Counter[7]~3_combout\ = ( !\Add3~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add3~5_sumout\,
	combout => \INTER_Counter[7]~3_combout\);

-- Location: FF_X2_Y5_N31
\INTER_Counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \INTER_Counter[7]~3_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(7));

-- Location: LABCELL_X2_Y4_N24
\Add3~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~121_sumout\ = SUM(( INTER_Counter(8) ) + ( VCC ) + ( \Add3~6\ ))
-- \Add3~122\ = CARRY(( INTER_Counter(8) ) + ( VCC ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_INTER_Counter(8),
	cin => \Add3~6\,
	sumout => \Add3~121_sumout\,
	cout => \Add3~122\);

-- Location: FF_X2_Y4_N25
\INTER_Counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~121_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(8));

-- Location: LABCELL_X2_Y4_N27
\Add3~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~125_sumout\ = SUM(( INTER_Counter(9) ) + ( VCC ) + ( \Add3~122\ ))
-- \Add3~126\ = CARRY(( INTER_Counter(9) ) + ( VCC ) + ( \Add3~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_INTER_Counter(9),
	cin => \Add3~122\,
	sumout => \Add3~125_sumout\,
	cout => \Add3~126\);

-- Location: FF_X2_Y4_N28
\INTER_Counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~125_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(9));

-- Location: LABCELL_X2_Y4_N30
\Add3~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~93_sumout\ = SUM(( INTER_Counter(10) ) + ( VCC ) + ( \Add3~126\ ))
-- \Add3~94\ = CARRY(( INTER_Counter(10) ) + ( VCC ) + ( \Add3~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_INTER_Counter(10),
	cin => \Add3~126\,
	sumout => \Add3~93_sumout\,
	cout => \Add3~94\);

-- Location: FF_X2_Y4_N31
\INTER_Counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~93_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(10));

-- Location: LABCELL_X2_Y4_N33
\Add3~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~97_sumout\ = SUM(( INTER_Counter(11) ) + ( VCC ) + ( \Add3~94\ ))
-- \Add3~98\ = CARRY(( INTER_Counter(11) ) + ( VCC ) + ( \Add3~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_INTER_Counter(11),
	cin => \Add3~94\,
	sumout => \Add3~97_sumout\,
	cout => \Add3~98\);

-- Location: FF_X2_Y4_N35
\INTER_Counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~97_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(11));

-- Location: LABCELL_X2_Y4_N36
\Add3~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~101_sumout\ = SUM(( INTER_Counter(12) ) + ( VCC ) + ( \Add3~98\ ))
-- \Add3~102\ = CARRY(( INTER_Counter(12) ) + ( VCC ) + ( \Add3~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_INTER_Counter(12),
	cin => \Add3~98\,
	sumout => \Add3~101_sumout\,
	cout => \Add3~102\);

-- Location: FF_X2_Y4_N38
\INTER_Counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~101_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(12));

-- Location: FF_X2_Y4_N41
\INTER_Counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~105_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(13));

-- Location: FF_X2_Y4_N46
\INTER_Counter[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~113_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTER_Counter[15]~DUPLICATE_q\);

-- Location: FF_X2_Y4_N34
\INTER_Counter[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~97_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTER_Counter[11]~DUPLICATE_q\);

-- Location: FF_X2_Y4_N37
\INTER_Counter[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add3~101_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal3~8_combout\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTER_Counter[12]~DUPLICATE_q\);

-- Location: LABCELL_X6_Y3_N36
\Equal3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = ( !\INTER_Counter[11]~DUPLICATE_q\ & ( !\INTER_Counter[12]~DUPLICATE_q\ & ( (!INTER_Counter(13) & (!INTER_Counter(14) & (!INTER_Counter(10) & !\INTER_Counter[15]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_INTER_Counter(13),
	datab => ALT_INV_INTER_Counter(14),
	datac => ALT_INV_INTER_Counter(10),
	datad => \ALT_INV_INTER_Counter[15]~DUPLICATE_q\,
	datae => \ALT_INV_INTER_Counter[11]~DUPLICATE_q\,
	dataf => \ALT_INV_INTER_Counter[12]~DUPLICATE_q\,
	combout => \Equal3~3_combout\);

-- Location: LABCELL_X2_Y3_N39
\Equal3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = ( INTER_Counter(1) & ( \INTER_Counter[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INTER_Counter[0]~DUPLICATE_q\,
	dataf => ALT_INV_INTER_Counter(1),
	combout => \Equal3~5_combout\);

-- Location: LABCELL_X2_Y3_N57
\Equal3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~6_combout\ = ( \Equal3~4_combout\ & ( \Equal3~5_combout\ & ( (!INTER_Counter(20) & (!INTER_Counter(6) & (!INTER_Counter(8) & !INTER_Counter(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_INTER_Counter(20),
	datab => ALT_INV_INTER_Counter(6),
	datac => ALT_INV_INTER_Counter(8),
	datad => ALT_INV_INTER_Counter(9),
	datae => \ALT_INV_Equal3~4_combout\,
	dataf => \ALT_INV_Equal3~5_combout\,
	combout => \Equal3~6_combout\);

-- Location: LABCELL_X6_Y3_N12
\INTER_Counter[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTER_Counter[31]~0_combout\ = ( \twimax_wrap|inter1|INTER_Output_valid~q\ & ( \Equal3~0_combout\ & ( (!\Equal3~3_combout\) # ((!\Equal3~2_combout\) # ((!\Equal3~6_combout\) # (!\Equal3~1_combout\))) ) ) ) # ( \twimax_wrap|inter1|INTER_Output_valid~q\ & 
-- ( !\Equal3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~3_combout\,
	datab => \ALT_INV_Equal3~2_combout\,
	datac => \ALT_INV_Equal3~6_combout\,
	datad => \ALT_INV_Equal3~1_combout\,
	datae => \twimax_wrap|inter1|ALT_INV_INTER_Output_valid~q\,
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \INTER_Counter[31]~0_combout\);

-- Location: LABCELL_X2_Y3_N33
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( INTER_Counter(31) ) + ( VCC ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_INTER_Counter(31),
	cin => \Add3~38\,
	sumout => \Add3~1_sumout\);

-- Location: LABCELL_X2_Y7_N36
\INTER_Counter[31]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTER_Counter[31]~1_combout\ = ( INTER_Counter(31) & ( \INTER_Flag~q\ ) ) # ( INTER_Counter(31) & ( !\INTER_Flag~q\ ) ) # ( !INTER_Counter(31) & ( !\INTER_Flag~q\ & ( (\INTER_Counter[31]~0_combout\ & (\Add3~1_sumout\ & (!\Mux3~3_combout\ $ 
-- (\twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|q_b\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001001111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux3~3_combout\,
	datab => \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	datac => \ALT_INV_INTER_Counter[31]~0_combout\,
	datad => \ALT_INV_Add3~1_sumout\,
	datae => ALT_INV_INTER_Counter(31),
	dataf => \ALT_INV_INTER_Flag~q\,
	combout => \INTER_Counter[31]~1_combout\);

-- Location: FF_X2_Y7_N38
\INTER_Counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \INTER_Counter[31]~1_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(31));

-- Location: LABCELL_X2_Y7_N48
\INTER_Counter[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTER_Counter[7]~2_combout\ = ( \Equal3~8_combout\ & ( \twimax_wrap|inter1|INTER_Output_valid~q\ ) ) # ( !\Equal3~8_combout\ & ( \twimax_wrap|inter1|INTER_Output_valid~q\ & ( (!\INTER_Flag~q\ & (!INTER_Counter(31) & (!\Mux3~3_combout\ $ 
-- (\twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|q_b\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000010000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux3~3_combout\,
	datab => \ALT_INV_INTER_Flag~q\,
	datac => ALT_INV_INTER_Counter(31),
	datad => \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	datae => \ALT_INV_Equal3~8_combout\,
	dataf => \twimax_wrap|inter1|ALT_INV_INTER_Output_valid~q\,
	combout => \INTER_Counter[7]~2_combout\);

-- Location: FF_X1_Y4_N49
\INTER_Counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \INTER_Counter[4]~8_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(4));

-- Location: LABCELL_X1_Y4_N48
\INTER_Counter[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTER_Counter[4]~8_combout\ = ( !\Add3~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add3~29_sumout\,
	combout => \INTER_Counter[4]~8_combout\);

-- Location: FF_X1_Y4_N50
\INTER_Counter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \INTER_Counter[4]~8_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTER_Counter[4]~DUPLICATE_q\);

-- Location: FF_X1_Y4_N2
\INTER_Counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \INTER_Counter[0]~4_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \INTER_Counter[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INTER_Counter(0));

-- Location: LABCELL_X1_Y4_N30
\Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( INTER_Counter(5) & ( \INTER_Counter[3]~DUPLICATE_q\ & ( (!INTER_Counter(0) & (!INTER_Counter(2) $ (((INTER_Counter(1)) # (\INTER_Counter[4]~DUPLICATE_q\))))) # (INTER_Counter(0) & ((!INTER_Counter(2) & (\INTER_Counter[4]~DUPLICATE_q\ 
-- & INTER_Counter(1))) # (INTER_Counter(2) & ((!INTER_Counter(1)))))) ) ) ) # ( !INTER_Counter(5) & ( \INTER_Counter[3]~DUPLICATE_q\ & ( (!INTER_Counter(0) & ((!INTER_Counter(1) & ((!INTER_Counter(2)))) # (INTER_Counter(1) & 
-- (!\INTER_Counter[4]~DUPLICATE_q\)))) # (INTER_Counter(0) & (\INTER_Counter[4]~DUPLICATE_q\)) ) ) ) # ( INTER_Counter(5) & ( !\INTER_Counter[3]~DUPLICATE_q\ & ( (!INTER_Counter(2) & ((!INTER_Counter(1) & ((!INTER_Counter(0)))) # (INTER_Counter(1) & 
-- (\INTER_Counter[4]~DUPLICATE_q\)))) # (INTER_Counter(2) & (\INTER_Counter[4]~DUPLICATE_q\ & ((!INTER_Counter(1)) # (INTER_Counter(0))))) ) ) ) # ( !INTER_Counter(5) & ( !\INTER_Counter[3]~DUPLICATE_q\ & ( (!\INTER_Counter[4]~DUPLICATE_q\ & 
-- (INTER_Counter(2) & (!INTER_Counter(0) $ (INTER_Counter(1))))) # (\INTER_Counter[4]~DUPLICATE_q\ & (((INTER_Counter(0) & !INTER_Counter(1))) # (INTER_Counter(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100010011110100010100010111000101101001011001001100110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INTER_Counter[4]~DUPLICATE_q\,
	datab => ALT_INV_INTER_Counter(2),
	datac => ALT_INV_INTER_Counter(0),
	datad => ALT_INV_INTER_Counter(1),
	datae => ALT_INV_INTER_Counter(5),
	dataf => \ALT_INV_INTER_Counter[3]~DUPLICATE_q\,
	combout => \Mux3~1_combout\);

-- Location: LABCELL_X1_Y4_N6
\Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = ( INTER_Counter(5) & ( \INTER_Counter[3]~DUPLICATE_q\ & ( (!INTER_Counter(2) & (!\INTER_Counter[4]~DUPLICATE_q\ $ ((!INTER_Counter(0))))) # (INTER_Counter(2) & (INTER_Counter(1) & ((INTER_Counter(0)) # 
-- (\INTER_Counter[4]~DUPLICATE_q\)))) ) ) ) # ( !INTER_Counter(5) & ( \INTER_Counter[3]~DUPLICATE_q\ & ( (!INTER_Counter(2) & (((INTER_Counter(0) & INTER_Counter(1))))) # (INTER_Counter(2) & ((!\INTER_Counter[4]~DUPLICATE_q\ & ((!INTER_Counter(1)))) # 
-- (\INTER_Counter[4]~DUPLICATE_q\ & (!INTER_Counter(0))))) ) ) ) # ( INTER_Counter(5) & ( !\INTER_Counter[3]~DUPLICATE_q\ & ( (!INTER_Counter(0) & ((!INTER_Counter(2) & (\INTER_Counter[4]~DUPLICATE_q\)) # (INTER_Counter(2) & ((!INTER_Counter(1)))))) # 
-- (INTER_Counter(0) & (!INTER_Counter(2) $ (((\INTER_Counter[4]~DUPLICATE_q\ & INTER_Counter(1)))))) ) ) ) # ( !INTER_Counter(5) & ( !\INTER_Counter[3]~DUPLICATE_q\ & ( (!INTER_Counter(2) & (!\INTER_Counter[4]~DUPLICATE_q\)) # (INTER_Counter(2) & 
-- ((!INTER_Counter(0) & ((INTER_Counter(1)))) # (INTER_Counter(0) & (!\INTER_Counter[4]~DUPLICATE_q\ & !INTER_Counter(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010111000011111000100100100110010000111000100100001011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INTER_Counter[4]~DUPLICATE_q\,
	datab => ALT_INV_INTER_Counter(2),
	datac => ALT_INV_INTER_Counter(0),
	datad => ALT_INV_INTER_Counter(1),
	datae => ALT_INV_INTER_Counter(5),
	dataf => \ALT_INV_INTER_Counter[3]~DUPLICATE_q\,
	combout => \Mux3~2_combout\);

-- Location: LABCELL_X1_Y4_N24
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( INTER_Counter(5) & ( \INTER_Counter[3]~DUPLICATE_q\ & ( (!INTER_Counter(0) & ((!INTER_Counter(1) & ((INTER_Counter(2)))) # (INTER_Counter(1) & (\INTER_Counter[4]~DUPLICATE_q\)))) # (INTER_Counter(0) & (!\INTER_Counter[4]~DUPLICATE_q\ 
-- & (INTER_Counter(2)))) ) ) ) # ( !INTER_Counter(5) & ( \INTER_Counter[3]~DUPLICATE_q\ & ( (!\INTER_Counter[4]~DUPLICATE_q\ & ((!INTER_Counter(2)) # ((!INTER_Counter(0)) # (INTER_Counter(1))))) # (\INTER_Counter[4]~DUPLICATE_q\ & (INTER_Counter(2) & 
-- (INTER_Counter(0)))) ) ) ) # ( INTER_Counter(5) & ( !\INTER_Counter[3]~DUPLICATE_q\ & ( (!\INTER_Counter[4]~DUPLICATE_q\ & ((!INTER_Counter(2) & ((!INTER_Counter(0)) # (INTER_Counter(1)))) # (INTER_Counter(2) & ((!INTER_Counter(1)) # 
-- (INTER_Counter(0)))))) # (\INTER_Counter[4]~DUPLICATE_q\ & (!INTER_Counter(2) $ ((!INTER_Counter(0))))) ) ) ) # ( !INTER_Counter(5) & ( !\INTER_Counter[3]~DUPLICATE_q\ & ( (!\INTER_Counter[4]~DUPLICATE_q\ & (!INTER_Counter(2) $ (((INTER_Counter(0) & 
-- !INTER_Counter(1)))))) # (\INTER_Counter[4]~DUPLICATE_q\ & (!INTER_Counter(0) & (!INTER_Counter(2) $ (INTER_Counter(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001010011000101101101001111010101001101010110011001001010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INTER_Counter[4]~DUPLICATE_q\,
	datab => ALT_INV_INTER_Counter(2),
	datac => ALT_INV_INTER_Counter(0),
	datad => ALT_INV_INTER_Counter(1),
	datae => ALT_INV_INTER_Counter(5),
	dataf => \ALT_INV_INTER_Counter[3]~DUPLICATE_q\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X1_Y4_N42
\Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = ( INTER_Counter(7) & ( (!INTER_Counter(6) & (\Mux3~1_combout\)) # (INTER_Counter(6) & ((\Mux3~2_combout\))) ) ) # ( !INTER_Counter(7) & ( (!\Mux3~0_combout\ & !INTER_Counter(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000001010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux3~1_combout\,
	datab => \ALT_INV_Mux3~2_combout\,
	datac => \ALT_INV_Mux3~0_combout\,
	datad => ALT_INV_INTER_Counter(6),
	dataf => ALT_INV_INTER_Counter(7),
	combout => \Mux3~3_combout\);

-- Location: LABCELL_X2_Y7_N42
\INTER_Flag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTER_Flag~0_combout\ = ( \INTER_Flag~q\ & ( INTER_Counter(31) ) ) # ( \INTER_Flag~q\ & ( !INTER_Counter(31) ) ) # ( !\INTER_Flag~q\ & ( !INTER_Counter(31) & ( (\twimax_wrap|inter1|INTER_Output_valid~q\ & 
-- (!\twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|q_b\(0) $ (!\Mux3~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_INTER_Output_valid~q\,
	datab => \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	datac => \ALT_INV_Mux3~3_combout\,
	datae => \ALT_INV_INTER_Flag~q\,
	dataf => ALT_INV_INTER_Counter(31),
	combout => \INTER_Flag~0_combout\);

-- Location: FF_X2_Y7_N43
INTER_Flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \INTER_Flag~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTER_Flag~q\);

-- Location: LABCELL_X2_Y7_N0
\INTER_output_valid~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTER_output_valid~0_combout\ = ( \INTER_output_valid~reg0_q\ & ( INTER_Counter(31) ) ) # ( \INTER_output_valid~reg0_q\ & ( !INTER_Counter(31) & ( (!\twimax_wrap|inter1|INTER_Output_valid~q\) # ((!\INTER_Flag~q\ & (!\Mux3~3_combout\ $ 
-- (\twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|q_b\(0))))) ) ) ) # ( !\INTER_output_valid~reg0_q\ & ( !INTER_Counter(31) & ( (\twimax_wrap|inter1|INTER_Output_valid~q\ & (!\INTER_Flag~q\ & (!\Mux3~3_combout\ $ 
-- (\twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|q_b\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000100111010101010111000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|inter1|ALT_INV_INTER_Output_valid~q\,
	datab => \ALT_INV_INTER_Flag~q\,
	datac => \ALT_INV_Mux3~3_combout\,
	datad => \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	datae => \ALT_INV_INTER_output_valid~reg0_q\,
	dataf => ALT_INV_INTER_Counter(31),
	combout => \INTER_output_valid~0_combout\);

-- Location: FF_X2_Y7_N1
\INTER_output_valid~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \INTER_output_valid~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTER_output_valid~reg0_q\);

-- Location: MLABCELL_X4_Y5_N33
\twimax_wrap|modu1|flag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|modu1|flag~0_combout\ = ( !\twimax_wrap|modu1|flag~q\ & ( \twimax_wrap|inter1|INTER_Output_valid~q\ ) ) # ( \twimax_wrap|modu1|flag~q\ & ( !\twimax_wrap|inter1|INTER_Output_valid~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \twimax_wrap|modu1|ALT_INV_flag~q\,
	dataf => \twimax_wrap|inter1|ALT_INV_INTER_Output_valid~q\,
	combout => \twimax_wrap|modu1|flag~0_combout\);

-- Location: FF_X4_Y5_N34
\twimax_wrap|modu1|flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|modu1|flag~0_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|modu1|flag~q\);

-- Location: LABCELL_X5_Y6_N9
\twimax_wrap|modu1|MODU_output_Q[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|modu1|MODU_output_Q[15]~0_combout\ = ( \twimax_wrap|inter1|INTER_Output_valid~q\ & ( \twimax_wrap|modu1|flag~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|modu1|ALT_INV_flag~q\,
	dataf => \twimax_wrap|inter1|ALT_INV_INTER_Output_valid~q\,
	combout => \twimax_wrap|modu1|MODU_output_Q[15]~0_combout\);

-- Location: FF_X5_Y6_N31
\twimax_wrap|modu1|MODU_output_I[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|q_b\(0),
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	ena => \twimax_wrap|modu1|MODU_output_Q[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|modu1|MODU_output_I\(15));

-- Location: LABCELL_X1_Y4_N18
\twimax_wrap|modu1|Finished_Flag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|modu1|Finished_Flag~0_combout\ = (!\twimax_wrap|inter1|INTER_Output_valid~q\) # (\twimax_wrap|modu1|Finished_Flag~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twimax_wrap|inter1|ALT_INV_INTER_Output_valid~q\,
	datad => \twimax_wrap|modu1|ALT_INV_Finished_Flag~q\,
	combout => \twimax_wrap|modu1|Finished_Flag~0_combout\);

-- Location: FF_X1_Y4_N19
\twimax_wrap|modu1|Finished_Flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|modu1|Finished_Flag~0_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|modu1|Finished_Flag~q\);

-- Location: LABCELL_X1_Y4_N21
\twimax_wrap|modu1|MODU_output_valid~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|modu1|MODU_output_valid~0_combout\ = ( \twimax_wrap|modu1|Finished_Flag~q\ & ( (\twimax_wrap|inter1|INTER_Output_valid~q\ & ((\twimax_wrap|modu1|MODU_output_valid~q\) # (\twimax_wrap|modu1|flag~q\))) ) ) # ( 
-- !\twimax_wrap|modu1|Finished_Flag~q\ & ( ((\twimax_wrap|modu1|flag~q\ & \twimax_wrap|inter1|INTER_Output_valid~q\)) # (\twimax_wrap|modu1|MODU_output_valid~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111000100011111111100010001001100110001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|modu1|ALT_INV_flag~q\,
	datab => \twimax_wrap|inter1|ALT_INV_INTER_Output_valid~q\,
	datad => \twimax_wrap|modu1|ALT_INV_MODU_output_valid~q\,
	dataf => \twimax_wrap|modu1|ALT_INV_Finished_Flag~q\,
	combout => \twimax_wrap|modu1|MODU_output_valid~0_combout\);

-- Location: FF_X1_Y4_N22
\twimax_wrap|modu1|MODU_output_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|modu1|MODU_output_valid~0_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|modu1|MODU_output_valid~q\);

-- Location: FF_X2_Y7_N11
\MODU_Counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter[7]~9_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(7));

-- Location: LABCELL_X5_Y10_N15
\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( MODU_Counter(6) ) + ( VCC ) + ( \Add5~14\ ))
-- \Add5~18\ = CARRY(( MODU_Counter(6) ) + ( VCC ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(6),
	cin => \Add5~14\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: LABCELL_X5_Y10_N18
\Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( !\MODU_Counter[7]~DUPLICATE_q\ ) + ( VCC ) + ( \Add5~18\ ))
-- \Add5~30\ = CARRY(( !\MODU_Counter[7]~DUPLICATE_q\ ) + ( VCC ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MODU_Counter[7]~DUPLICATE_q\,
	cin => \Add5~18\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\);

-- Location: LABCELL_X2_Y7_N9
\MODU_Counter[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter[7]~9_combout\ = ( MODU_Counter(7) & ( \Add5~29_sumout\ & ( (!\MODU_Counter[10]~0_combout\) # ((!\Equal4~6_combout\ & ((!\process_4~1_combout\) # (\Equal4~5_combout\)))) ) ) ) # ( MODU_Counter(7) & ( !\Add5~29_sumout\ & ( 
-- (!\Equal4~6_combout\) # (!\MODU_Counter[10]~0_combout\) ) ) ) # ( !MODU_Counter(7) & ( !\Add5~29_sumout\ & ( (!\Equal4~6_combout\ & (\process_4~1_combout\ & (\MODU_Counter[10]~0_combout\ & !\Equal4~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000111110101111101000000000000000001111100011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	datab => \ALT_INV_process_4~1_combout\,
	datac => \ALT_INV_MODU_Counter[10]~0_combout\,
	datad => \ALT_INV_Equal4~5_combout\,
	datae => ALT_INV_MODU_Counter(7),
	dataf => \ALT_INV_Add5~29_sumout\,
	combout => \MODU_Counter[7]~9_combout\);

-- Location: FF_X2_Y7_N10
\MODU_Counter[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter[7]~9_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODU_Counter[7]~DUPLICATE_q\);

-- Location: FF_X2_Y7_N23
\MODU_Counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter[1]~2_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(1));

-- Location: LABCELL_X5_Y10_N0
\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( !\MODU_Counter[1]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add5~6\ = CARRY(( !\MODU_Counter[1]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MODU_Counter[1]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: LABCELL_X2_Y7_N21
\MODU_Counter[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter[1]~2_combout\ = ( MODU_Counter(1) & ( \Add5~5_sumout\ & ( (!\MODU_Counter[10]~0_combout\) # ((!\Equal4~6_combout\ & ((!\process_4~1_combout\) # (\Equal4~5_combout\)))) ) ) ) # ( MODU_Counter(1) & ( !\Add5~5_sumout\ & ( (!\Equal4~6_combout\) 
-- # (!\MODU_Counter[10]~0_combout\) ) ) ) # ( !MODU_Counter(1) & ( !\Add5~5_sumout\ & ( (!\Equal4~6_combout\ & (\process_4~1_combout\ & (\MODU_Counter[10]~0_combout\ & !\Equal4~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000111110101111101000000000000000001111100011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	datab => \ALT_INV_process_4~1_combout\,
	datac => \ALT_INV_MODU_Counter[10]~0_combout\,
	datad => \ALT_INV_Equal4~5_combout\,
	datae => ALT_INV_MODU_Counter(1),
	dataf => \ALT_INV_Add5~5_sumout\,
	combout => \MODU_Counter[1]~2_combout\);

-- Location: FF_X2_Y7_N22
\MODU_Counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter[1]~2_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODU_Counter[1]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y10_N3
\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( !MODU_Counter(2) ) + ( VCC ) + ( \Add5~6\ ))
-- \Add5~10\ = CARRY(( !MODU_Counter(2) ) + ( VCC ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_MODU_Counter(2),
	cin => \Add5~6\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

-- Location: LABCELL_X5_Y10_N6
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( !MODU_Counter(3) ) + ( VCC ) + ( \Add5~10\ ))
-- \Add5~2\ = CARRY(( !MODU_Counter(3) ) + ( VCC ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_MODU_Counter(3),
	cin => \Add5~10\,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

-- Location: LABCELL_X2_Y7_N18
\MODU_Counter[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter[3]~1_combout\ = ( MODU_Counter(3) & ( \Add5~1_sumout\ & ( (!\MODU_Counter[10]~0_combout\) # ((!\Equal4~6_combout\ & ((!\process_4~1_combout\) # (\Equal4~5_combout\)))) ) ) ) # ( MODU_Counter(3) & ( !\Add5~1_sumout\ & ( (!\Equal4~6_combout\) 
-- # (!\MODU_Counter[10]~0_combout\) ) ) ) # ( !MODU_Counter(3) & ( !\Add5~1_sumout\ & ( (!\Equal4~6_combout\ & (\process_4~1_combout\ & (!\Equal4~5_combout\ & \MODU_Counter[10]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000111111111010101000000000000000001111111110001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	datab => \ALT_INV_process_4~1_combout\,
	datac => \ALT_INV_Equal4~5_combout\,
	datad => \ALT_INV_MODU_Counter[10]~0_combout\,
	datae => ALT_INV_MODU_Counter(3),
	dataf => \ALT_INV_Add5~1_sumout\,
	combout => \MODU_Counter[3]~1_combout\);

-- Location: FF_X2_Y7_N19
\MODU_Counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter[3]~1_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(3));

-- Location: LABCELL_X5_Y10_N9
\Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( !MODU_Counter(4) ) + ( VCC ) + ( \Add5~2\ ))
-- \Add5~22\ = CARRY(( !MODU_Counter(4) ) + ( VCC ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(4),
	cin => \Add5~2\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

-- Location: LABCELL_X2_Y7_N6
\MODU_Counter[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter[4]~7_combout\ = ( MODU_Counter(4) & ( \Add5~21_sumout\ & ( (!\MODU_Counter[10]~0_combout\) # ((!\Equal4~6_combout\ & ((!\process_4~1_combout\) # (\Equal4~5_combout\)))) ) ) ) # ( MODU_Counter(4) & ( !\Add5~21_sumout\ & ( 
-- (!\Equal4~6_combout\) # (!\MODU_Counter[10]~0_combout\) ) ) ) # ( !MODU_Counter(4) & ( !\Add5~21_sumout\ & ( (!\Equal4~6_combout\ & (\process_4~1_combout\ & (!\Equal4~5_combout\ & \MODU_Counter[10]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000111111111010101000000000000000001111111110001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	datab => \ALT_INV_process_4~1_combout\,
	datac => \ALT_INV_Equal4~5_combout\,
	datad => \ALT_INV_MODU_Counter[10]~0_combout\,
	datae => ALT_INV_MODU_Counter(4),
	dataf => \ALT_INV_Add5~21_sumout\,
	combout => \MODU_Counter[4]~7_combout\);

-- Location: FF_X2_Y7_N7
\MODU_Counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter[4]~7_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(4));

-- Location: LABCELL_X5_Y10_N21
\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( MODU_Counter(8) ) + ( VCC ) + ( \Add5~30\ ))
-- \Add5~26\ = CARRY(( MODU_Counter(8) ) + ( VCC ) + ( \Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_MODU_Counter(8),
	cin => \Add5~30\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

-- Location: MLABCELL_X4_Y9_N39
\MODU_Counter~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter~8_combout\ = ( \Add5~25_sumout\ & ( !\Equal4~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	dataf => \ALT_INV_Add5~25_sumout\,
	combout => \MODU_Counter~8_combout\);

-- Location: FF_X4_Y9_N40
\MODU_Counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~8_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(8));

-- Location: FF_X4_Y9_N22
\MODU_Counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => MODU_Counter(0),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(0));

-- Location: MLABCELL_X4_Y9_N42
\Mux5~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~50_combout\ = ( \MODU_Counter[1]~DUPLICATE_q\ & ( MODU_Counter(0) & ( (!MODU_Counter(4) & (MODU_Counter(2) & ((MODU_Counter(8)) # (MODU_Counter(6))))) # (MODU_Counter(4) & ((!MODU_Counter(2) & (!MODU_Counter(6) & !MODU_Counter(8))) # 
-- (MODU_Counter(2) & (MODU_Counter(6) & MODU_Counter(8))))) ) ) ) # ( !\MODU_Counter[1]~DUPLICATE_q\ & ( MODU_Counter(0) & ( (MODU_Counter(4) & (!MODU_Counter(6) & !MODU_Counter(8))) ) ) ) # ( \MODU_Counter[1]~DUPLICATE_q\ & ( !MODU_Counter(0) & ( 
-- ((MODU_Counter(4) & (!MODU_Counter(6) & !MODU_Counter(8)))) # (MODU_Counter(2)) ) ) ) # ( !\MODU_Counter[1]~DUPLICATE_q\ & ( !MODU_Counter(0) & ( (MODU_Counter(4) & (!MODU_Counter(6) & !MODU_Counter(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000011100110011001101010000000000000100001000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(4),
	datab => ALT_INV_MODU_Counter(2),
	datac => ALT_INV_MODU_Counter(6),
	datad => ALT_INV_MODU_Counter(8),
	datae => \ALT_INV_MODU_Counter[1]~DUPLICATE_q\,
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux5~50_combout\);

-- Location: MLABCELL_X4_Y9_N54
\Mux5~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~15_combout\ = ( MODU_Counter(0) & ( !\MODU_Counter[1]~DUPLICATE_q\ $ (((!MODU_Counter(6) & !MODU_Counter(8)))) ) ) # ( !MODU_Counter(0) & ( (!MODU_Counter(6) & !MODU_Counter(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100001111000011110000111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(6),
	datab => ALT_INV_MODU_Counter(8),
	datac => \ALT_INV_MODU_Counter[1]~DUPLICATE_q\,
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux5~15_combout\);

-- Location: MLABCELL_X4_Y9_N36
\Mux5~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~24_combout\ = ( MODU_Counter(0) & ( !\MODU_Counter[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MODU_Counter[1]~DUPLICATE_q\,
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux5~24_combout\);

-- Location: MLABCELL_X4_Y9_N6
\Mux5~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~39_combout\ = !MODU_Counter(2) $ (((!MODU_Counter(4) & ((!\Mux5~24_combout\))) # (MODU_Counter(4) & (!\Mux5~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011010011100001101101001110000110110100111000011011010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(4),
	datab => ALT_INV_MODU_Counter(2),
	datac => \ALT_INV_Mux5~15_combout\,
	datad => \ALT_INV_Mux5~24_combout\,
	combout => \Mux5~39_combout\);

-- Location: MLABCELL_X4_Y9_N57
\Mux5~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~16_combout\ = ( MODU_Counter(0) & ( !\MODU_Counter[1]~DUPLICATE_q\ $ (((MODU_Counter(6) & MODU_Counter(8)))) ) ) # ( !MODU_Counter(0) & ( (MODU_Counter(6) & MODU_Counter(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111101110000100011110111000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(6),
	datab => ALT_INV_MODU_Counter(8),
	datad => \ALT_INV_MODU_Counter[1]~DUPLICATE_q\,
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux5~16_combout\);

-- Location: MLABCELL_X4_Y9_N33
\Mux5~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~40_combout\ = ( \Mux5~16_combout\ & ( !MODU_Counter(2) $ (((!MODU_Counter(4) & (!MODU_Counter(8) $ (!\Mux5~24_combout\))))) ) ) # ( !\Mux5~16_combout\ & ( !MODU_Counter(2) $ (((!MODU_Counter(8) $ (!\Mux5~24_combout\)) # (MODU_Counter(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001001100111001100100110011100111000110011011001100011001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(4),
	datab => ALT_INV_MODU_Counter(2),
	datac => ALT_INV_MODU_Counter(8),
	datad => \ALT_INV_Mux5~24_combout\,
	dataf => \ALT_INV_Mux5~16_combout\,
	combout => \Mux5~40_combout\);

-- Location: MLABCELL_X4_Y9_N18
\Mux5~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~41_combout\ = ( MODU_Counter(4) & ( MODU_Counter(0) & ( (!\MODU_Counter[1]~DUPLICATE_q\ & (((MODU_Counter(6) & MODU_Counter(8))))) # (\MODU_Counter[1]~DUPLICATE_q\ & (((MODU_Counter(6) & MODU_Counter(8))) # (MODU_Counter(2)))) ) ) ) # ( 
-- !MODU_Counter(4) & ( MODU_Counter(0) & ( (!MODU_Counter(8)) # ((\MODU_Counter[1]~DUPLICATE_q\ & (MODU_Counter(2) & !MODU_Counter(6)))) ) ) ) # ( MODU_Counter(4) & ( !MODU_Counter(0) & ( (!\MODU_Counter[1]~DUPLICATE_q\ & (((MODU_Counter(6) & 
-- MODU_Counter(8))))) # (\MODU_Counter[1]~DUPLICATE_q\ & (((MODU_Counter(6) & MODU_Counter(8))) # (MODU_Counter(2)))) ) ) ) # ( !MODU_Counter(4) & ( !MODU_Counter(0) & ( (!MODU_Counter(8)) # ((\MODU_Counter[1]~DUPLICATE_q\ & MODU_Counter(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100010001000100010001111111111111000100000001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MODU_Counter[1]~DUPLICATE_q\,
	datab => ALT_INV_MODU_Counter(2),
	datac => ALT_INV_MODU_Counter(6),
	datad => ALT_INV_MODU_Counter(8),
	datae => ALT_INV_MODU_Counter(4),
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux5~41_combout\);

-- Location: MLABCELL_X4_Y9_N12
\Mux5~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~19_combout\ = ( !MODU_Counter(5) & ( (!\MODU_Counter[7]~DUPLICATE_q\ & (!MODU_Counter(3))) # (\MODU_Counter[7]~DUPLICATE_q\ & ((!MODU_Counter(3) & (((\Mux5~40_combout\)))) # (MODU_Counter(3) & (\Mux5~41_combout\)))) ) ) # ( MODU_Counter(5) & ( 
-- (!\MODU_Counter[7]~DUPLICATE_q\ & (!MODU_Counter(3))) # (\MODU_Counter[7]~DUPLICATE_q\ & ((!MODU_Counter(3) & (((\Mux5~39_combout\)))) # (MODU_Counter(3) & (\Mux5~50_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1000100110001001100010011100110111001101110011011000100111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MODU_Counter[7]~DUPLICATE_q\,
	datab => ALT_INV_MODU_Counter(3),
	datac => \ALT_INV_Mux5~50_combout\,
	datad => \ALT_INV_Mux5~39_combout\,
	datae => ALT_INV_MODU_Counter(5),
	dataf => \ALT_INV_Mux5~40_combout\,
	datag => \ALT_INV_Mux5~41_combout\,
	combout => \Mux5~19_combout\);

-- Location: MLABCELL_X4_Y9_N24
\Mux5~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~54_combout\ = ( MODU_Counter(4) & ( MODU_Counter(0) & ( (!MODU_Counter(8) & ((!\MODU_Counter[1]~DUPLICATE_q\) # ((!MODU_Counter(2))))) # (MODU_Counter(8) & (((!MODU_Counter(6))))) ) ) ) # ( !MODU_Counter(4) & ( MODU_Counter(0) & ( (!MODU_Counter(6) 
-- & (MODU_Counter(8) & ((!\MODU_Counter[1]~DUPLICATE_q\) # (!MODU_Counter(2))))) # (MODU_Counter(6) & ((!\MODU_Counter[1]~DUPLICATE_q\) # ((!MODU_Counter(2)) # (MODU_Counter(8))))) ) ) ) # ( MODU_Counter(4) & ( !MODU_Counter(0) & ( (!MODU_Counter(6)) # 
-- ((!MODU_Counter(8)) # ((\MODU_Counter[1]~DUPLICATE_q\ & MODU_Counter(2)))) ) ) ) # ( !MODU_Counter(4) & ( !MODU_Counter(0) & ( (((\MODU_Counter[1]~DUPLICATE_q\ & MODU_Counter(2))) # (MODU_Counter(8))) # (MODU_Counter(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111111111111111111111000100001110111011111110111011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MODU_Counter[1]~DUPLICATE_q\,
	datab => ALT_INV_MODU_Counter(2),
	datac => ALT_INV_MODU_Counter(6),
	datad => ALT_INV_MODU_Counter(8),
	datae => ALT_INV_MODU_Counter(4),
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux5~54_combout\);

-- Location: MLABCELL_X4_Y9_N9
\Mux5~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~18_combout\ = ( MODU_Counter(0) & ( !MODU_Counter(2) $ (!\MODU_Counter[1]~DUPLICATE_q\) ) ) # ( !MODU_Counter(0) & ( !MODU_Counter(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_MODU_Counter(2),
	datad => \ALT_INV_MODU_Counter[1]~DUPLICATE_q\,
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux5~18_combout\);

-- Location: MLABCELL_X4_Y9_N30
\Mux5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~17_combout\ = ( \Mux5~16_combout\ & ( !MODU_Counter(2) $ (((\Mux5~15_combout\) # (MODU_Counter(4)))) ) ) # ( !\Mux5~16_combout\ & ( !MODU_Counter(2) $ (((!MODU_Counter(4) & \Mux5~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100011011000110110001101100011010010011100100111001001110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(4),
	datab => ALT_INV_MODU_Counter(2),
	datac => \ALT_INV_Mux5~15_combout\,
	dataf => \ALT_INV_Mux5~16_combout\,
	combout => \Mux5~17_combout\);

-- Location: MLABCELL_X4_Y9_N48
\Mux5~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~53_combout\ = ( MODU_Counter(4) & ( MODU_Counter(0) & ( (!\MODU_Counter[1]~DUPLICATE_q\) # ((!MODU_Counter(2)) # ((!MODU_Counter(6) & !MODU_Counter(8)))) ) ) ) # ( !MODU_Counter(4) & ( MODU_Counter(0) & ( (!\MODU_Counter[1]~DUPLICATE_q\) # 
-- (!MODU_Counter(2)) ) ) ) # ( MODU_Counter(4) & ( !MODU_Counter(0) ) ) # ( !MODU_Counter(4) & ( !MODU_Counter(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111101110111011101111111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MODU_Counter[1]~DUPLICATE_q\,
	datab => ALT_INV_MODU_Counter(2),
	datac => ALT_INV_MODU_Counter(6),
	datad => ALT_INV_MODU_Counter(8),
	datae => ALT_INV_MODU_Counter(4),
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux5~53_combout\);

-- Location: MLABCELL_X4_Y9_N0
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( !MODU_Counter(5) & ( (!\MODU_Counter[7]~DUPLICATE_q\ & ((!\Mux5~19_combout\ & (\Mux5~53_combout\)) # (\Mux5~19_combout\ & (((\Mux5~18_combout\)))))) # (\MODU_Counter[7]~DUPLICATE_q\ & (\Mux5~19_combout\)) ) ) # ( MODU_Counter(5) & ( 
-- (!\MODU_Counter[7]~DUPLICATE_q\ & ((!\Mux5~19_combout\ & (\Mux5~54_combout\)) # (\Mux5~19_combout\ & (((\Mux5~17_combout\)))))) # (\MODU_Counter[7]~DUPLICATE_q\ & (\Mux5~19_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100111011000110010001100100011001001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MODU_Counter[7]~DUPLICATE_q\,
	datab => \ALT_INV_Mux5~19_combout\,
	datac => \ALT_INV_Mux5~54_combout\,
	datad => \ALT_INV_Mux5~18_combout\,
	datae => ALT_INV_MODU_Counter(5),
	dataf => \ALT_INV_Mux5~17_combout\,
	datag => \ALT_INV_Mux5~53_combout\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X5_Y10_N24
\Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( MODU_Counter(9) ) + ( VCC ) + ( \Add5~26\ ))
-- \Add5~34\ = CARRY(( MODU_Counter(9) ) + ( VCC ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_MODU_Counter(9),
	cin => \Add5~26\,
	sumout => \Add5~33_sumout\,
	cout => \Add5~34\);

-- Location: LABCELL_X2_Y8_N30
\MODU_Counter~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter~10_combout\ = ( \Add5~33_sumout\ & ( !\Equal4~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal4~6_combout\,
	dataf => \ALT_INV_Add5~33_sumout\,
	combout => \MODU_Counter~10_combout\);

-- Location: FF_X2_Y8_N31
\MODU_Counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~10_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(9));

-- Location: LABCELL_X1_Y7_N9
\Mux5~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~30_combout\ = ( MODU_Counter(0) & ( !MODU_Counter(3) $ (((!MODU_Counter(5) & (!MODU_Counter(8) & MODU_Counter(6))) # (MODU_Counter(5) & (MODU_Counter(8) & !MODU_Counter(6))))) ) ) # ( !MODU_Counter(0) & ( (!MODU_Counter(5) & (!MODU_Counter(8) & 
-- MODU_Counter(6))) # (MODU_Counter(5) & (MODU_Counter(8) & !MODU_Counter(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000000000000111100000010101001011010101010100101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(3),
	datab => ALT_INV_MODU_Counter(5),
	datac => ALT_INV_MODU_Counter(8),
	datad => ALT_INV_MODU_Counter(6),
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux5~30_combout\);

-- Location: MLABCELL_X4_Y7_N54
\Mux5~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~32_combout\ = (!MODU_Counter(6) & (MODU_Counter(5) & MODU_Counter(8))) # (MODU_Counter(6) & (!MODU_Counter(5) & !MODU_Counter(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000100010010001000010001001000100001000100100010000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(6),
	datab => ALT_INV_MODU_Counter(5),
	datad => ALT_INV_MODU_Counter(8),
	combout => \Mux5~32_combout\);

-- Location: MLABCELL_X4_Y7_N36
\Mux5~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~45_combout\ = ( MODU_Counter(6) & ( MODU_Counter(0) & ( (!MODU_Counter(5) & (MODU_Counter(4))) # (MODU_Counter(5) & ((!MODU_Counter(4)) # (!MODU_Counter(8)))) ) ) ) # ( !MODU_Counter(6) & ( MODU_Counter(0) & ( (!MODU_Counter(5) & 
-- ((MODU_Counter(8)))) # (MODU_Counter(5) & ((!MODU_Counter(8)) # (MODU_Counter(4)))) ) ) ) # ( MODU_Counter(6) & ( !MODU_Counter(0) & ( !MODU_Counter(3) $ (((!MODU_Counter(5) & (MODU_Counter(4))) # (MODU_Counter(5) & ((!MODU_Counter(4)) # 
-- (!MODU_Counter(8)))))) ) ) ) # ( !MODU_Counter(6) & ( !MODU_Counter(0) & ( !MODU_Counter(3) $ (((!MODU_Counter(5) & ((MODU_Counter(8)))) # (MODU_Counter(5) & ((!MODU_Counter(8)) # (MODU_Counter(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101100101100101011001011000110011110011110011111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(3),
	datab => ALT_INV_MODU_Counter(5),
	datac => ALT_INV_MODU_Counter(4),
	datad => ALT_INV_MODU_Counter(8),
	datae => ALT_INV_MODU_Counter(6),
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux5~45_combout\);

-- Location: LABCELL_X1_Y7_N6
\Mux5~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~44_combout\ = ( MODU_Counter(0) & ( (!MODU_Counter(5) & (MODU_Counter(6) & !MODU_Counter(8))) # (MODU_Counter(5) & (!MODU_Counter(6) & MODU_Counter(8))) ) ) # ( !MODU_Counter(0) & ( !MODU_Counter(3) $ (((!MODU_Counter(5) & (MODU_Counter(6) & 
-- !MODU_Counter(8))) # (MODU_Counter(5) & (!MODU_Counter(6) & MODU_Counter(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010011010011010101001101001101000001100001100000000110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(3),
	datab => ALT_INV_MODU_Counter(5),
	datac => ALT_INV_MODU_Counter(6),
	datad => ALT_INV_MODU_Counter(8),
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux5~44_combout\);

-- Location: LABCELL_X2_Y8_N54
\Mux5~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~47_combout\ = ( MODU_Counter(6) & ( MODU_Counter(0) & ( (((MODU_Counter(4) & MODU_Counter(3))) # (MODU_Counter(5))) # (MODU_Counter(8)) ) ) ) # ( !MODU_Counter(6) & ( MODU_Counter(0) & ( (!MODU_Counter(8)) # (!MODU_Counter(5) $ (((MODU_Counter(4) & 
-- MODU_Counter(3))))) ) ) ) # ( MODU_Counter(6) & ( !MODU_Counter(0) & ( ((MODU_Counter(3)) # (MODU_Counter(5))) # (MODU_Counter(8)) ) ) ) # ( !MODU_Counter(6) & ( !MODU_Counter(0) & ( (!MODU_Counter(8)) # ((!MODU_Counter(5)) # (MODU_Counter(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111111010111111111111111111010111010110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(8),
	datab => ALT_INV_MODU_Counter(4),
	datac => ALT_INV_MODU_Counter(5),
	datad => ALT_INV_MODU_Counter(3),
	datae => ALT_INV_MODU_Counter(6),
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux5~47_combout\);

-- Location: MLABCELL_X4_Y7_N42
\Mux5~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~46_combout\ = ( MODU_Counter(6) & ( MODU_Counter(3) & ( (!MODU_Counter(0)) # ((MODU_Counter(5) & (!MODU_Counter(4) $ (!MODU_Counter(8))))) ) ) ) # ( !MODU_Counter(6) & ( MODU_Counter(3) & ( (!MODU_Counter(0)) # ((!MODU_Counter(4) & (!MODU_Counter(5) 
-- & !MODU_Counter(8))) # (MODU_Counter(4) & ((MODU_Counter(8))))) ) ) ) # ( MODU_Counter(6) & ( !MODU_Counter(3) & ( (!MODU_Counter(5) & (!MODU_Counter(4))) # (MODU_Counter(5) & (MODU_Counter(4) & MODU_Counter(8))) ) ) ) # ( !MODU_Counter(6) & ( 
-- !MODU_Counter(3) & ( (!MODU_Counter(5) & ((!MODU_Counter(8)))) # (MODU_Counter(5) & (!MODU_Counter(4) & MODU_Counter(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110000110000001100001111101010101011111010101110111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(0),
	datab => ALT_INV_MODU_Counter(5),
	datac => ALT_INV_MODU_Counter(4),
	datad => ALT_INV_MODU_Counter(8),
	datae => ALT_INV_MODU_Counter(6),
	dataf => ALT_INV_MODU_Counter(3),
	combout => \Mux5~46_combout\);

-- Location: MLABCELL_X4_Y7_N6
\Mux5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~33_combout\ = ( !MODU_Counter(7) & ( ((!MODU_Counter(2) & (((!\MODU_Counter[1]~DUPLICATE_q\)))) # (MODU_Counter(2) & ((!\MODU_Counter[1]~DUPLICATE_q\ & (\Mux5~45_combout\)) # (\MODU_Counter[1]~DUPLICATE_q\ & ((\Mux5~46_combout\)))))) ) ) # ( 
-- MODU_Counter(7) & ( ((!MODU_Counter(2) & (((!\MODU_Counter[1]~DUPLICATE_q\)))) # (MODU_Counter(2) & ((!\MODU_Counter[1]~DUPLICATE_q\ & (\Mux5~44_combout\)) # (\MODU_Counter[1]~DUPLICATE_q\ & ((\Mux5~47_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111111101010101111111110011001100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux5~45_combout\,
	datab => \ALT_INV_Mux5~44_combout\,
	datac => \ALT_INV_Mux5~47_combout\,
	datad => ALT_INV_MODU_Counter(2),
	datae => ALT_INV_MODU_Counter(7),
	dataf => \ALT_INV_MODU_Counter[1]~DUPLICATE_q\,
	datag => \ALT_INV_Mux5~46_combout\,
	combout => \Mux5~33_combout\);

-- Location: LABCELL_X6_Y7_N54
\Mux5~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~31_combout\ = ( MODU_Counter(3) & ( MODU_Counter(0) & ( (!MODU_Counter(5) & ((!MODU_Counter(6) & ((MODU_Counter(8)))) # (MODU_Counter(6) & (MODU_Counter(4))))) # (MODU_Counter(5) & ((!MODU_Counter(8)) # (!MODU_Counter(4) $ (!MODU_Counter(6))))) ) ) 
-- ) # ( !MODU_Counter(3) & ( MODU_Counter(0) & ( (!MODU_Counter(5) & ((!MODU_Counter(6) & ((!MODU_Counter(8)))) # (MODU_Counter(6) & (!MODU_Counter(4))))) # (MODU_Counter(5) & (MODU_Counter(8) & (!MODU_Counter(4) $ (MODU_Counter(6))))) ) ) ) # ( 
-- MODU_Counter(3) & ( !MODU_Counter(0) & ( (!MODU_Counter(5) & ((!MODU_Counter(6) & ((MODU_Counter(8)))) # (MODU_Counter(6) & (MODU_Counter(4))))) # (MODU_Counter(5) & ((!MODU_Counter(8)) # (!MODU_Counter(4) $ (!MODU_Counter(6))))) ) ) ) # ( 
-- !MODU_Counter(3) & ( !MODU_Counter(0) & ( (!MODU_Counter(5) & ((!MODU_Counter(6) & ((MODU_Counter(8)))) # (MODU_Counter(6) & (MODU_Counter(4))))) # (MODU_Counter(5) & ((!MODU_Counter(8)) # (!MODU_Counter(4) $ (!MODU_Counter(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111010110001101111101011011001000001010010011011111010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(4),
	datab => ALT_INV_MODU_Counter(5),
	datac => ALT_INV_MODU_Counter(6),
	datad => ALT_INV_MODU_Counter(8),
	datae => ALT_INV_MODU_Counter(3),
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux5~31_combout\);

-- Location: MLABCELL_X4_Y7_N3
\Mux5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~37_combout\ = ( MODU_Counter(8) & ( (!MODU_Counter(4) & (!MODU_Counter(6) $ (MODU_Counter(5)))) # (MODU_Counter(4) & ((!MODU_Counter(6)) # (!MODU_Counter(5)))) ) ) # ( !MODU_Counter(8) & ( ((MODU_Counter(4) & MODU_Counter(6))) # (MODU_Counter(5)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111111110101010110101111010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(4),
	datac => ALT_INV_MODU_Counter(6),
	datad => ALT_INV_MODU_Counter(5),
	dataf => ALT_INV_MODU_Counter(8),
	combout => \Mux5~37_combout\);

-- Location: MLABCELL_X4_Y7_N30
\Mux5~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = ( !MODU_Counter(7) & ( ((!MODU_Counter(2) & ((!\Mux5~33_combout\ & (\Mux5~37_combout\)) # (\Mux5~33_combout\ & ((\Mux5~31_combout\))))) # (MODU_Counter(2) & (((\Mux5~33_combout\))))) ) ) # ( MODU_Counter(7) & ( (!MODU_Counter(2) & 
-- ((!\Mux5~33_combout\ & (((\Mux5~32_combout\)))) # (\Mux5~33_combout\ & (\Mux5~30_combout\)))) # (MODU_Counter(2) & ((((\Mux5~33_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000110011000011000111011100001100111111110000110001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux5~30_combout\,
	datab => ALT_INV_MODU_Counter(2),
	datac => \ALT_INV_Mux5~32_combout\,
	datad => \ALT_INV_Mux5~33_combout\,
	datae => ALT_INV_MODU_Counter(7),
	dataf => \ALT_INV_Mux5~31_combout\,
	datag => \ALT_INV_Mux5~37_combout\,
	combout => \Mux5~8_combout\);

-- Location: LABCELL_X1_Y7_N45
\Mux5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~13_combout\ = ( MODU_Counter(0) & ( (\Mux5~12_combout\ & \Mux4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux5~12_combout\,
	datab => \ALT_INV_Mux4~0_combout\,
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux5~13_combout\);

-- Location: LABCELL_X6_Y7_N0
\Mux5~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~42_combout\ = ( MODU_Counter(4) & ( MODU_Counter(0) & ( (MODU_Counter(8) & ((!MODU_Counter(2)) # ((!\MODU_Counter[1]~DUPLICATE_q\) # (!MODU_Counter(6))))) ) ) ) # ( !MODU_Counter(4) & ( MODU_Counter(0) & ( (!MODU_Counter(2)) # 
-- ((!\MODU_Counter[1]~DUPLICATE_q\) # (!MODU_Counter(8))) ) ) ) # ( MODU_Counter(4) & ( !MODU_Counter(0) & ( ((MODU_Counter(2) & \MODU_Counter[1]~DUPLICATE_q\)) # (MODU_Counter(8)) ) ) ) # ( !MODU_Counter(4) & ( !MODU_Counter(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000100011111111111111111111011100000000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(2),
	datab => \ALT_INV_MODU_Counter[1]~DUPLICATE_q\,
	datac => ALT_INV_MODU_Counter(6),
	datad => ALT_INV_MODU_Counter(8),
	datae => ALT_INV_MODU_Counter(4),
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux5~42_combout\);

-- Location: LABCELL_X6_Y7_N12
\Mux5~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~48_combout\ = ( MODU_Counter(4) & ( MODU_Counter(0) & ( !MODU_Counter(2) $ (!\MODU_Counter[1]~DUPLICATE_q\ $ (((!MODU_Counter(6) & MODU_Counter(8))))) ) ) ) # ( !MODU_Counter(4) & ( MODU_Counter(0) & ( !MODU_Counter(2) $ 
-- (!\MODU_Counter[1]~DUPLICATE_q\ $ (((MODU_Counter(6) & !MODU_Counter(8))))) ) ) ) # ( MODU_Counter(4) & ( !MODU_Counter(0) & ( !MODU_Counter(2) $ (((!MODU_Counter(6) & MODU_Counter(8)))) ) ) ) # ( !MODU_Counter(4) & ( !MODU_Counter(0) & ( !MODU_Counter(2) 
-- $ (((MODU_Counter(6) & !MODU_Counter(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110101010101010100101101001101001011001100110011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(2),
	datab => \ALT_INV_MODU_Counter[1]~DUPLICATE_q\,
	datac => ALT_INV_MODU_Counter(6),
	datad => ALT_INV_MODU_Counter(8),
	datae => ALT_INV_MODU_Counter(4),
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux5~48_combout\);

-- Location: LABCELL_X6_Y7_N18
\Mux5~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~49_combout\ = ( MODU_Counter(4) & ( MODU_Counter(0) & ( (!MODU_Counter(2) & (((!MODU_Counter(8)) # (MODU_Counter(6))))) # (MODU_Counter(2) & (!\MODU_Counter[1]~DUPLICATE_q\ & ((!MODU_Counter(8)) # (MODU_Counter(6))))) ) ) ) # ( !MODU_Counter(4) & ( 
-- MODU_Counter(0) & ( (!MODU_Counter(6) & ((!MODU_Counter(2)) # ((!\MODU_Counter[1]~DUPLICATE_q\) # (MODU_Counter(8))))) # (MODU_Counter(6) & (MODU_Counter(8) & ((!MODU_Counter(2)) # (!\MODU_Counter[1]~DUPLICATE_q\)))) ) ) ) # ( MODU_Counter(4) & ( 
-- !MODU_Counter(0) & ( ((!MODU_Counter(8)) # ((MODU_Counter(2) & \MODU_Counter[1]~DUPLICATE_q\))) # (MODU_Counter(6)) ) ) ) # ( !MODU_Counter(4) & ( !MODU_Counter(0) & ( (!MODU_Counter(6)) # (((MODU_Counter(2) & \MODU_Counter[1]~DUPLICATE_q\)) # 
-- (MODU_Counter(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111111111111111110001111111100000111111101110111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(2),
	datab => \ALT_INV_MODU_Counter[1]~DUPLICATE_q\,
	datac => ALT_INV_MODU_Counter(6),
	datad => ALT_INV_MODU_Counter(8),
	datae => ALT_INV_MODU_Counter(4),
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux5~49_combout\);

-- Location: LABCELL_X6_Y7_N36
\Mux5~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~43_combout\ = ( MODU_Counter(4) & ( MODU_Counter(0) & ( !\MODU_Counter[1]~DUPLICATE_q\ $ (!MODU_Counter(2) $ (!MODU_Counter(8))) ) ) ) # ( !MODU_Counter(4) & ( MODU_Counter(0) & ( !\MODU_Counter[1]~DUPLICATE_q\ $ (!MODU_Counter(2)) ) ) ) # ( 
-- MODU_Counter(4) & ( !MODU_Counter(0) & ( !MODU_Counter(2) $ (!MODU_Counter(8)) ) ) ) # ( !MODU_Counter(4) & ( !MODU_Counter(0) & ( !MODU_Counter(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011111111000000111100001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MODU_Counter[1]~DUPLICATE_q\,
	datac => ALT_INV_MODU_Counter(2),
	datad => ALT_INV_MODU_Counter(8),
	datae => ALT_INV_MODU_Counter(4),
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux5~43_combout\);

-- Location: LABCELL_X6_Y7_N6
\Mux5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~26_combout\ = ( !MODU_Counter(3) & ( (!MODU_Counter(7) & (!MODU_Counter(5))) # (MODU_Counter(7) & ((!MODU_Counter(5) & (((\Mux5~48_combout\)))) # (MODU_Counter(5) & (\Mux5~43_combout\)))) ) ) # ( MODU_Counter(3) & ( (!MODU_Counter(7) & 
-- (!MODU_Counter(5))) # (MODU_Counter(7) & ((!MODU_Counter(5) & (((\Mux5~49_combout\)))) # (MODU_Counter(5) & (\Mux5~42_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1000100111001101100010011000100110001001110011011100110111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(7),
	datab => ALT_INV_MODU_Counter(5),
	datac => \ALT_INV_Mux5~42_combout\,
	datad => \ALT_INV_Mux5~48_combout\,
	datae => ALT_INV_MODU_Counter(3),
	dataf => \ALT_INV_Mux5~49_combout\,
	datag => \ALT_INV_Mux5~43_combout\,
	combout => \Mux5~26_combout\);

-- Location: LABCELL_X6_Y7_N48
\Mux5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~25_combout\ = ( MODU_Counter(4) & ( MODU_Counter(0) & ( (!MODU_Counter(8) & (((MODU_Counter(2) & \MODU_Counter[1]~DUPLICATE_q\)) # (MODU_Counter(6)))) # (MODU_Counter(8) & ((!MODU_Counter(2)) # ((!\MODU_Counter[1]~DUPLICATE_q\)))) ) ) ) # ( 
-- !MODU_Counter(4) & ( MODU_Counter(0) & ( (!MODU_Counter(8) & ((!MODU_Counter(2)) # ((!\MODU_Counter[1]~DUPLICATE_q\) # (!MODU_Counter(6))))) ) ) ) # ( MODU_Counter(4) & ( !MODU_Counter(0) & ( (((MODU_Counter(2) & \MODU_Counter[1]~DUPLICATE_q\)) # 
-- (MODU_Counter(8))) # (MODU_Counter(6)) ) ) ) # ( !MODU_Counter(4) & ( !MODU_Counter(0) & ( (!MODU_Counter(8)) # ((MODU_Counter(2) & \MODU_Counter[1]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100010001000111111111111111111110000000000001111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(2),
	datab => \ALT_INV_MODU_Counter[1]~DUPLICATE_q\,
	datac => ALT_INV_MODU_Counter(6),
	datad => ALT_INV_MODU_Counter(8),
	datae => ALT_INV_MODU_Counter(4),
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux5~25_combout\);

-- Location: LABCELL_X6_Y7_N42
\Mux5~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~23_combout\ = ( MODU_Counter(4) & ( MODU_Counter(0) & ( (MODU_Counter(2) & (\MODU_Counter[1]~DUPLICATE_q\ & MODU_Counter(8))) ) ) ) # ( !MODU_Counter(4) & ( MODU_Counter(0) & ( (!MODU_Counter(2) & (((!MODU_Counter(6) & MODU_Counter(8))))) # 
-- (MODU_Counter(2) & (((!MODU_Counter(6) & MODU_Counter(8))) # (\MODU_Counter[1]~DUPLICATE_q\))) ) ) ) # ( MODU_Counter(4) & ( !MODU_Counter(0) & ( (MODU_Counter(2) & \MODU_Counter[1]~DUPLICATE_q\) ) ) ) # ( !MODU_Counter(4) & ( !MODU_Counter(0) & ( 
-- (!MODU_Counter(2) & (((!MODU_Counter(6) & MODU_Counter(8))))) # (MODU_Counter(2) & (((!MODU_Counter(6) & MODU_Counter(8))) # (\MODU_Counter[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111110001000100010001000100010001111100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(2),
	datab => \ALT_INV_MODU_Counter[1]~DUPLICATE_q\,
	datac => ALT_INV_MODU_Counter(6),
	datad => ALT_INV_MODU_Counter(8),
	datae => ALT_INV_MODU_Counter(4),
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux5~23_combout\);

-- Location: LABCELL_X6_Y7_N24
\Mux5~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~52_combout\ = ( MODU_Counter(4) & ( MODU_Counter(0) & ( !MODU_Counter(2) $ (\MODU_Counter[1]~DUPLICATE_q\) ) ) ) # ( !MODU_Counter(4) & ( MODU_Counter(0) & ( !MODU_Counter(2) $ (!\MODU_Counter[1]~DUPLICATE_q\ $ (((!MODU_Counter(8)) # 
-- (MODU_Counter(6))))) ) ) ) # ( MODU_Counter(4) & ( !MODU_Counter(0) & ( MODU_Counter(2) ) ) ) # ( !MODU_Counter(4) & ( !MODU_Counter(0) & ( !MODU_Counter(2) $ (((!MODU_Counter(8)) # (MODU_Counter(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100101010101010101010110011001011010011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(2),
	datab => \ALT_INV_MODU_Counter[1]~DUPLICATE_q\,
	datac => ALT_INV_MODU_Counter(6),
	datad => ALT_INV_MODU_Counter(8),
	datae => ALT_INV_MODU_Counter(4),
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux5~52_combout\);

-- Location: FF_X2_Y7_N8
\MODU_Counter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter[4]~7_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODU_Counter[4]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y7_N24
\Mux5~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~51_combout\ = ( MODU_Counter(2) & ( MODU_Counter(0) & ( !MODU_Counter(1) $ (((!\MODU_Counter[4]~DUPLICATE_q\ & ((MODU_Counter(8)))) # (\MODU_Counter[4]~DUPLICATE_q\ & (!MODU_Counter(6) & !MODU_Counter(8))))) ) ) ) # ( !MODU_Counter(2) & ( 
-- MODU_Counter(0) & ( !MODU_Counter(1) $ (((!\MODU_Counter[4]~DUPLICATE_q\ & ((!MODU_Counter(8)))) # (\MODU_Counter[4]~DUPLICATE_q\ & ((MODU_Counter(8)) # (MODU_Counter(6)))))) ) ) ) # ( MODU_Counter(2) & ( !MODU_Counter(0) & ( 
-- (!\MODU_Counter[4]~DUPLICATE_q\ & ((MODU_Counter(8)))) # (\MODU_Counter[4]~DUPLICATE_q\ & (!MODU_Counter(6) & !MODU_Counter(8))) ) ) ) # ( !MODU_Counter(2) & ( !MODU_Counter(0) & ( (!\MODU_Counter[4]~DUPLICATE_q\ & ((!MODU_Counter(8)))) # 
-- (\MODU_Counter[4]~DUPLICATE_q\ & ((MODU_Counter(8)) # (MODU_Counter(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100110011001100001100110001100101100110011001101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(1),
	datab => \ALT_INV_MODU_Counter[4]~DUPLICATE_q\,
	datac => ALT_INV_MODU_Counter(6),
	datad => ALT_INV_MODU_Counter(8),
	datae => ALT_INV_MODU_Counter(2),
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux5~51_combout\);

-- Location: LABCELL_X6_Y7_N30
\Mux5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = ( !MODU_Counter(3) & ( (!MODU_Counter(7) & ((!\Mux5~26_combout\ & (\Mux5~51_combout\)) # (\Mux5~26_combout\ & (((\Mux5~52_combout\)))))) # (MODU_Counter(7) & (\Mux5~26_combout\)) ) ) # ( MODU_Counter(3) & ( (!MODU_Counter(7) & 
-- ((!\Mux5~26_combout\ & (\Mux5~25_combout\)) # (\Mux5~26_combout\ & (((\Mux5~23_combout\)))))) # (MODU_Counter(7) & (\Mux5~26_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010011101100111011001110110001100100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(7),
	datab => \ALT_INV_Mux5~26_combout\,
	datac => \ALT_INV_Mux5~25_combout\,
	datad => \ALT_INV_Mux5~23_combout\,
	datae => ALT_INV_MODU_Counter(3),
	dataf => \ALT_INV_Mux5~52_combout\,
	datag => \ALT_INV_Mux5~51_combout\,
	combout => \Mux5~4_combout\);

-- Location: LABCELL_X1_Y7_N18
\Mux5~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~14_combout\ = ( \MODU_Counter[10]~DUPLICATE_q\ & ( \Mux5~4_combout\ & ( (!MODU_Counter(9) & (\Mux5~8_combout\)) # (MODU_Counter(9) & ((\Mux5~13_combout\))) ) ) ) # ( !\MODU_Counter[10]~DUPLICATE_q\ & ( \Mux5~4_combout\ & ( (MODU_Counter(9)) # 
-- (\Mux5~0_combout\) ) ) ) # ( \MODU_Counter[10]~DUPLICATE_q\ & ( !\Mux5~4_combout\ & ( (!MODU_Counter(9) & (\Mux5~8_combout\)) # (MODU_Counter(9) & ((\Mux5~13_combout\))) ) ) ) # ( !\MODU_Counter[10]~DUPLICATE_q\ & ( !\Mux5~4_combout\ & ( (\Mux5~0_combout\ 
-- & !MODU_Counter(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000011000011111101110111011101110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux5~0_combout\,
	datab => ALT_INV_MODU_Counter(9),
	datac => \ALT_INV_Mux5~8_combout\,
	datad => \ALT_INV_Mux5~13_combout\,
	datae => \ALT_INV_MODU_Counter[10]~DUPLICATE_q\,
	dataf => \ALT_INV_Mux5~4_combout\,
	combout => \Mux5~14_combout\);

-- Location: LABCELL_X1_Y7_N57
\MODU_Counter[10]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter[10]~6_combout\ = ( \twimax_wrap|modu1|MODU_output_I\(15) & ( \Mux5~14_combout\ & ( (\MODU_Counter[10]~0_combout\ & (((\process_4~0_combout\ & !\Equal4~5_combout\)) # (\Equal4~6_combout\))) ) ) ) # ( !\twimax_wrap|modu1|MODU_output_I\(15) & ( 
-- \Mux5~14_combout\ & ( (\Equal4~6_combout\ & \MODU_Counter[10]~0_combout\) ) ) ) # ( \twimax_wrap|modu1|MODU_output_I\(15) & ( !\Mux5~14_combout\ & ( (\Equal4~6_combout\ & \MODU_Counter[10]~0_combout\) ) ) ) # ( !\twimax_wrap|modu1|MODU_output_I\(15) & ( 
-- !\Mux5~14_combout\ & ( (\MODU_Counter[10]~0_combout\ & (((\process_4~0_combout\ & !\Equal4~5_combout\)) # (\Equal4~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110011000000000011001100000000001100110000000001110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_4~0_combout\,
	datab => \ALT_INV_Equal4~6_combout\,
	datac => \ALT_INV_Equal4~5_combout\,
	datad => \ALT_INV_MODU_Counter[10]~0_combout\,
	datae => \twimax_wrap|modu1|ALT_INV_MODU_output_I\(15),
	dataf => \ALT_INV_Mux5~14_combout\,
	combout => \MODU_Counter[10]~6_combout\);

-- Location: FF_X4_Y10_N37
\MODU_Counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~21_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(16));

-- Location: LABCELL_X5_Y10_N27
\Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~37_sumout\ = SUM(( \MODU_Counter[10]~DUPLICATE_q\ ) + ( VCC ) + ( \Add5~34\ ))
-- \Add5~38\ = CARRY(( \MODU_Counter[10]~DUPLICATE_q\ ) + ( VCC ) + ( \Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MODU_Counter[10]~DUPLICATE_q\,
	cin => \Add5~34\,
	sumout => \Add5~37_sumout\,
	cout => \Add5~38\);

-- Location: LABCELL_X5_Y10_N30
\Add5~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~45_sumout\ = SUM(( \MODU_Counter[11]~DUPLICATE_q\ ) + ( VCC ) + ( \Add5~38\ ))
-- \Add5~46\ = CARRY(( \MODU_Counter[11]~DUPLICATE_q\ ) + ( VCC ) + ( \Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MODU_Counter[11]~DUPLICATE_q\,
	cin => \Add5~38\,
	sumout => \Add5~45_sumout\,
	cout => \Add5~46\);

-- Location: MLABCELL_X4_Y10_N15
\MODU_Counter~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter~13_combout\ = ( \Add5~45_sumout\ & ( !\Equal4~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	dataf => \ALT_INV_Add5~45_sumout\,
	combout => \MODU_Counter~13_combout\);

-- Location: FF_X4_Y10_N16
\MODU_Counter[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~13_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODU_Counter[11]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y10_N33
\Add5~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~61_sumout\ = SUM(( MODU_Counter(12) ) + ( VCC ) + ( \Add5~46\ ))
-- \Add5~62\ = CARRY(( MODU_Counter(12) ) + ( VCC ) + ( \Add5~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(12),
	cin => \Add5~46\,
	sumout => \Add5~61_sumout\,
	cout => \Add5~62\);

-- Location: MLABCELL_X4_Y10_N12
\MODU_Counter~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter~17_combout\ = ( \Add5~61_sumout\ & ( !\Equal4~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	dataf => \ALT_INV_Add5~61_sumout\,
	combout => \MODU_Counter~17_combout\);

-- Location: FF_X4_Y10_N13
\MODU_Counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~17_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(12));

-- Location: LABCELL_X5_Y10_N36
\Add5~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~57_sumout\ = SUM(( MODU_Counter(13) ) + ( VCC ) + ( \Add5~62\ ))
-- \Add5~58\ = CARRY(( MODU_Counter(13) ) + ( VCC ) + ( \Add5~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_MODU_Counter(13),
	cin => \Add5~62\,
	sumout => \Add5~57_sumout\,
	cout => \Add5~58\);

-- Location: MLABCELL_X4_Y10_N57
\MODU_Counter~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter~16_combout\ = (!\Equal4~6_combout\ & \Add5~57_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	datac => \ALT_INV_Add5~57_sumout\,
	combout => \MODU_Counter~16_combout\);

-- Location: FF_X4_Y10_N58
\MODU_Counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~16_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(13));

-- Location: LABCELL_X5_Y10_N39
\Add5~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~85_sumout\ = SUM(( MODU_Counter(14) ) + ( VCC ) + ( \Add5~58\ ))
-- \Add5~86\ = CARRY(( MODU_Counter(14) ) + ( VCC ) + ( \Add5~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(14),
	cin => \Add5~58\,
	sumout => \Add5~85_sumout\,
	cout => \Add5~86\);

-- Location: MLABCELL_X4_Y10_N30
\MODU_Counter~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter~23_combout\ = ( \Add5~85_sumout\ & ( !\Equal4~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	dataf => \ALT_INV_Add5~85_sumout\,
	combout => \MODU_Counter~23_combout\);

-- Location: FF_X4_Y10_N31
\MODU_Counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~23_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(14));

-- Location: LABCELL_X5_Y10_N42
\Add5~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~81_sumout\ = SUM(( MODU_Counter(15) ) + ( VCC ) + ( \Add5~86\ ))
-- \Add5~82\ = CARRY(( MODU_Counter(15) ) + ( VCC ) + ( \Add5~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_MODU_Counter(15),
	cin => \Add5~86\,
	sumout => \Add5~81_sumout\,
	cout => \Add5~82\);

-- Location: MLABCELL_X4_Y10_N39
\MODU_Counter~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter~22_combout\ = (!\Equal4~6_combout\ & \Add5~81_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	datac => \ALT_INV_Add5~81_sumout\,
	combout => \MODU_Counter~22_combout\);

-- Location: FF_X4_Y10_N40
\MODU_Counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~22_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(15));

-- Location: LABCELL_X5_Y10_N45
\Add5~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~77_sumout\ = SUM(( MODU_Counter(16) ) + ( VCC ) + ( \Add5~82\ ))
-- \Add5~78\ = CARRY(( MODU_Counter(16) ) + ( VCC ) + ( \Add5~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(16),
	cin => \Add5~82\,
	sumout => \Add5~77_sumout\,
	cout => \Add5~78\);

-- Location: MLABCELL_X4_Y10_N36
\MODU_Counter~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter~21_combout\ = ( \Add5~77_sumout\ & ( !\Equal4~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	dataf => \ALT_INV_Add5~77_sumout\,
	combout => \MODU_Counter~21_combout\);

-- Location: FF_X4_Y10_N38
\MODU_Counter[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~21_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODU_Counter[16]~DUPLICATE_q\);

-- Location: FF_X4_Y10_N32
\MODU_Counter[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~23_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODU_Counter[14]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y10_N48
\Add5~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~53_sumout\ = SUM(( MODU_Counter(17) ) + ( VCC ) + ( \Add5~78\ ))
-- \Add5~54\ = CARRY(( MODU_Counter(17) ) + ( VCC ) + ( \Add5~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_MODU_Counter(17),
	cin => \Add5~78\,
	sumout => \Add5~53_sumout\,
	cout => \Add5~54\);

-- Location: MLABCELL_X4_Y10_N54
\MODU_Counter~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter~15_combout\ = (!\Equal4~6_combout\ & \Add5~53_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	datad => \ALT_INV_Add5~53_sumout\,
	combout => \MODU_Counter~15_combout\);

-- Location: FF_X4_Y10_N55
\MODU_Counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~15_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(17));

-- Location: LABCELL_X5_Y10_N51
\Add5~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~73_sumout\ = SUM(( MODU_Counter(18) ) + ( VCC ) + ( \Add5~54\ ))
-- \Add5~74\ = CARRY(( MODU_Counter(18) ) + ( VCC ) + ( \Add5~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_MODU_Counter(18),
	cin => \Add5~54\,
	sumout => \Add5~73_sumout\,
	cout => \Add5~74\);

-- Location: MLABCELL_X4_Y10_N3
\MODU_Counter~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter~20_combout\ = ( \Add5~73_sumout\ & ( !\Equal4~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	dataf => \ALT_INV_Add5~73_sumout\,
	combout => \MODU_Counter~20_combout\);

-- Location: FF_X4_Y10_N4
\MODU_Counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~20_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(18));

-- Location: LABCELL_X5_Y10_N54
\Add5~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~69_sumout\ = SUM(( MODU_Counter(19) ) + ( VCC ) + ( \Add5~74\ ))
-- \Add5~70\ = CARRY(( MODU_Counter(19) ) + ( VCC ) + ( \Add5~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_MODU_Counter(19),
	cin => \Add5~74\,
	sumout => \Add5~69_sumout\,
	cout => \Add5~70\);

-- Location: MLABCELL_X4_Y10_N0
\MODU_Counter~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter~19_combout\ = (!\Equal4~6_combout\ & \Add5~69_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	datad => \ALT_INV_Add5~69_sumout\,
	combout => \MODU_Counter~19_combout\);

-- Location: FF_X4_Y10_N2
\MODU_Counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~19_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(19));

-- Location: FF_X4_Y10_N41
\MODU_Counter[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~22_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODU_Counter[15]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y10_N57
\Add5~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~41_sumout\ = SUM(( MODU_Counter(20) ) + ( VCC ) + ( \Add5~70\ ))
-- \Add5~42\ = CARRY(( MODU_Counter(20) ) + ( VCC ) + ( \Add5~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_MODU_Counter(20),
	cin => \Add5~70\,
	sumout => \Add5~41_sumout\,
	cout => \Add5~42\);

-- Location: MLABCELL_X4_Y10_N9
\MODU_Counter~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter~12_combout\ = ( !\Equal4~6_combout\ & ( \Add5~41_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~41_sumout\,
	dataf => \ALT_INV_Equal4~6_combout\,
	combout => \MODU_Counter~12_combout\);

-- Location: FF_X4_Y10_N10
\MODU_Counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~12_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(20));

-- Location: LABCELL_X5_Y9_N0
\Add5~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~93_sumout\ = SUM(( MODU_Counter(21) ) + ( VCC ) + ( \Add5~42\ ))
-- \Add5~94\ = CARRY(( MODU_Counter(21) ) + ( VCC ) + ( \Add5~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_MODU_Counter(21),
	cin => \Add5~42\,
	sumout => \Add5~93_sumout\,
	cout => \Add5~94\);

-- Location: LABCELL_X5_Y9_N42
\MODU_Counter~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter~25_combout\ = (!\Equal4~6_combout\ & \Add5~93_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	datac => \ALT_INV_Add5~93_sumout\,
	combout => \MODU_Counter~25_combout\);

-- Location: FF_X5_Y9_N43
\MODU_Counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~25_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(21));

-- Location: LABCELL_X5_Y9_N3
\Add5~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~65_sumout\ = SUM(( MODU_Counter(22) ) + ( VCC ) + ( \Add5~94\ ))
-- \Add5~66\ = CARRY(( MODU_Counter(22) ) + ( VCC ) + ( \Add5~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_MODU_Counter(22),
	cin => \Add5~94\,
	sumout => \Add5~65_sumout\,
	cout => \Add5~66\);

-- Location: LABCELL_X5_Y9_N39
\MODU_Counter~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter~18_combout\ = ( !\Equal4~6_combout\ & ( \Add5~65_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~65_sumout\,
	dataf => \ALT_INV_Equal4~6_combout\,
	combout => \MODU_Counter~18_combout\);

-- Location: FF_X5_Y9_N40
\MODU_Counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~18_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(22));

-- Location: MLABCELL_X4_Y10_N18
\Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = ( !MODU_Counter(22) & ( !MODU_Counter(18) & ( (!\MODU_Counter[16]~DUPLICATE_q\ & (!\MODU_Counter[14]~DUPLICATE_q\ & (!MODU_Counter(19) & !\MODU_Counter[15]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MODU_Counter[16]~DUPLICATE_q\,
	datab => \ALT_INV_MODU_Counter[14]~DUPLICATE_q\,
	datac => ALT_INV_MODU_Counter(19),
	datad => \ALT_INV_MODU_Counter[15]~DUPLICATE_q\,
	datae => ALT_INV_MODU_Counter(22),
	dataf => ALT_INV_MODU_Counter(18),
	combout => \Equal4~1_combout\);

-- Location: FF_X4_Y10_N11
\MODU_Counter[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~12_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODU_Counter[20]~DUPLICATE_q\);

-- Location: FF_X4_Y10_N35
\MODU_Counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~11_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(10));

-- Location: LABCELL_X5_Y9_N6
\Add5~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~117_sumout\ = SUM(( MODU_Counter(23) ) + ( VCC ) + ( \Add5~66\ ))
-- \Add5~118\ = CARRY(( MODU_Counter(23) ) + ( VCC ) + ( \Add5~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_MODU_Counter(23),
	cin => \Add5~66\,
	sumout => \Add5~117_sumout\,
	cout => \Add5~118\);

-- Location: LABCELL_X5_Y9_N57
\MODU_Counter~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter~31_combout\ = ( \Add5~117_sumout\ & ( !\Equal4~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	dataf => \ALT_INV_Add5~117_sumout\,
	combout => \MODU_Counter~31_combout\);

-- Location: FF_X5_Y9_N59
\MODU_Counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~31_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(23));

-- Location: LABCELL_X5_Y9_N9
\Add5~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~113_sumout\ = SUM(( MODU_Counter(24) ) + ( VCC ) + ( \Add5~118\ ))
-- \Add5~114\ = CARRY(( MODU_Counter(24) ) + ( VCC ) + ( \Add5~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(24),
	cin => \Add5~118\,
	sumout => \Add5~113_sumout\,
	cout => \Add5~114\);

-- Location: LABCELL_X5_Y9_N54
\MODU_Counter~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter~30_combout\ = ( \Add5~113_sumout\ & ( !\Equal4~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	dataf => \ALT_INV_Add5~113_sumout\,
	combout => \MODU_Counter~30_combout\);

-- Location: FF_X5_Y9_N56
\MODU_Counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~30_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(24));

-- Location: LABCELL_X5_Y9_N12
\Add5~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~109_sumout\ = SUM(( MODU_Counter(25) ) + ( VCC ) + ( \Add5~114\ ))
-- \Add5~110\ = CARRY(( MODU_Counter(25) ) + ( VCC ) + ( \Add5~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_MODU_Counter(25),
	cin => \Add5~114\,
	sumout => \Add5~109_sumout\,
	cout => \Add5~110\);

-- Location: LABCELL_X5_Y9_N51
\MODU_Counter~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter~29_combout\ = ( \Add5~109_sumout\ & ( !\Equal4~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	dataf => \ALT_INV_Add5~109_sumout\,
	combout => \MODU_Counter~29_combout\);

-- Location: FF_X5_Y9_N53
\MODU_Counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~29_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(25));

-- Location: LABCELL_X5_Y9_N15
\Add5~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~105_sumout\ = SUM(( \MODU_Counter[26]~DUPLICATE_q\ ) + ( VCC ) + ( \Add5~110\ ))
-- \Add5~106\ = CARRY(( \MODU_Counter[26]~DUPLICATE_q\ ) + ( VCC ) + ( \Add5~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MODU_Counter[26]~DUPLICATE_q\,
	cin => \Add5~110\,
	sumout => \Add5~105_sumout\,
	cout => \Add5~106\);

-- Location: LABCELL_X5_Y9_N48
\MODU_Counter~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter~28_combout\ = ( \Add5~105_sumout\ & ( !\Equal4~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	dataf => \ALT_INV_Add5~105_sumout\,
	combout => \MODU_Counter~28_combout\);

-- Location: FF_X5_Y9_N49
\MODU_Counter[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~28_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODU_Counter[26]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y9_N18
\Add5~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~101_sumout\ = SUM(( MODU_Counter(27) ) + ( VCC ) + ( \Add5~106\ ))
-- \Add5~102\ = CARRY(( MODU_Counter(27) ) + ( VCC ) + ( \Add5~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_MODU_Counter(27),
	cin => \Add5~106\,
	sumout => \Add5~101_sumout\,
	cout => \Add5~102\);

-- Location: LABCELL_X5_Y9_N45
\MODU_Counter~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter~27_combout\ = ( \Add5~101_sumout\ & ( !\Equal4~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	dataf => \ALT_INV_Add5~101_sumout\,
	combout => \MODU_Counter~27_combout\);

-- Location: FF_X5_Y9_N47
\MODU_Counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~27_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(27));

-- Location: LABCELL_X5_Y9_N21
\Add5~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~49_sumout\ = SUM(( MODU_Counter(28) ) + ( VCC ) + ( \Add5~102\ ))
-- \Add5~50\ = CARRY(( MODU_Counter(28) ) + ( VCC ) + ( \Add5~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_MODU_Counter(28),
	cin => \Add5~102\,
	sumout => \Add5~49_sumout\,
	cout => \Add5~50\);

-- Location: MLABCELL_X4_Y10_N51
\MODU_Counter~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter~14_combout\ = ( !\Equal4~6_combout\ & ( \Add5~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~49_sumout\,
	dataf => \ALT_INV_Equal4~6_combout\,
	combout => \MODU_Counter~14_combout\);

-- Location: FF_X4_Y10_N52
\MODU_Counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~14_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(28));

-- Location: LABCELL_X5_Y9_N24
\Add5~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~97_sumout\ = SUM(( MODU_Counter(29) ) + ( VCC ) + ( \Add5~50\ ))
-- \Add5~98\ = CARRY(( MODU_Counter(29) ) + ( VCC ) + ( \Add5~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_MODU_Counter(29),
	cin => \Add5~50\,
	sumout => \Add5~97_sumout\,
	cout => \Add5~98\);

-- Location: MLABCELL_X4_Y10_N45
\MODU_Counter~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter~26_combout\ = ( \Add5~97_sumout\ & ( !\Equal4~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	dataf => \ALT_INV_Add5~97_sumout\,
	combout => \MODU_Counter~26_combout\);

-- Location: FF_X4_Y10_N47
\MODU_Counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~26_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(29));

-- Location: FF_X4_Y10_N43
\MODU_Counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~24_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(30));

-- Location: LABCELL_X5_Y9_N27
\Add5~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~89_sumout\ = SUM(( MODU_Counter(30) ) + ( VCC ) + ( \Add5~98\ ))
-- \Add5~90\ = CARRY(( MODU_Counter(30) ) + ( VCC ) + ( \Add5~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_MODU_Counter(30),
	cin => \Add5~98\,
	sumout => \Add5~89_sumout\,
	cout => \Add5~90\);

-- Location: MLABCELL_X4_Y10_N42
\MODU_Counter~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter~24_combout\ = ( \Add5~89_sumout\ & ( !\Equal4~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	dataf => \ALT_INV_Add5~89_sumout\,
	combout => \MODU_Counter~24_combout\);

-- Location: FF_X4_Y10_N44
\MODU_Counter[30]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~24_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODU_Counter[30]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y10_N48
\Equal4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = ( !\MODU_Counter[30]~DUPLICATE_q\ & ( (!MODU_Counter(10) & (!MODU_Counter(29) & (!MODU_Counter(9) & !MODU_Counter(21)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(10),
	datab => ALT_INV_MODU_Counter(29),
	datac => ALT_INV_MODU_Counter(9),
	datad => ALT_INV_MODU_Counter(21),
	dataf => \ALT_INV_MODU_Counter[30]~DUPLICATE_q\,
	combout => \Equal4~2_combout\);

-- Location: FF_X4_Y10_N17
\MODU_Counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~13_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(11));

-- Location: FF_X4_Y10_N56
\MODU_Counter[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~15_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODU_Counter[17]~DUPLICATE_q\);

-- Location: FF_X4_Y10_N53
\MODU_Counter[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~14_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODU_Counter[28]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y10_N6
\Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = ( !\MODU_Counter[28]~DUPLICATE_q\ & ( (!\MODU_Counter[17]~DUPLICATE_q\ & (!MODU_Counter(12) & !MODU_Counter(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MODU_Counter[17]~DUPLICATE_q\,
	datab => ALT_INV_MODU_Counter(12),
	datac => ALT_INV_MODU_Counter(13),
	dataf => \ALT_INV_MODU_Counter[28]~DUPLICATE_q\,
	combout => \Equal4~0_combout\);

-- Location: FF_X5_Y9_N50
\MODU_Counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~28_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(26));

-- Location: LABCELL_X5_Y9_N36
\Equal4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = ( !MODU_Counter(26) & ( (!MODU_Counter(24) & (!MODU_Counter(23) & (!MODU_Counter(25) & !MODU_Counter(27)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(24),
	datab => ALT_INV_MODU_Counter(23),
	datac => ALT_INV_MODU_Counter(25),
	datad => ALT_INV_MODU_Counter(27),
	dataf => ALT_INV_MODU_Counter(26),
	combout => \Equal4~3_combout\);

-- Location: MLABCELL_X4_Y10_N24
\Equal4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~4_combout\ = ( \Equal4~0_combout\ & ( \Equal4~3_combout\ & ( (\Equal4~1_combout\ & (!\MODU_Counter[20]~DUPLICATE_q\ & (\Equal4~2_combout\ & !MODU_Counter(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~1_combout\,
	datab => \ALT_INV_MODU_Counter[20]~DUPLICATE_q\,
	datac => \ALT_INV_Equal4~2_combout\,
	datad => ALT_INV_MODU_Counter(11),
	datae => \ALT_INV_Equal4~0_combout\,
	dataf => \ALT_INV_Equal4~3_combout\,
	combout => \Equal4~4_combout\);

-- Location: LABCELL_X1_Y7_N15
\Equal4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~5_combout\ = ( \Mux5~38_combout\ & ( \Equal4~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal4~4_combout\,
	dataf => \ALT_INV_Mux5~38_combout\,
	combout => \Equal4~5_combout\);

-- Location: FF_X2_Y7_N13
\MODU_Counter[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter[31]~32_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODU_Counter[31]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y9_N30
\Add5~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~121_sumout\ = SUM(( \MODU_Counter[31]~DUPLICATE_q\ ) + ( VCC ) + ( \Add5~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MODU_Counter[31]~DUPLICATE_q\,
	cin => \Add5~90\,
	sumout => \Add5~121_sumout\);

-- Location: LABCELL_X2_Y7_N12
\MODU_Counter[31]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter[31]~32_combout\ = ( \Add5~121_sumout\ & ( ((\twimax_wrap|modu1|MODU_output_valid~q\ & (\process_4~1_combout\ & !\Equal4~5_combout\))) # (MODU_Counter(31)) ) ) # ( !\Add5~121_sumout\ & ( MODU_Counter(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100010000111111110001000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twimax_wrap|modu1|ALT_INV_MODU_output_valid~q\,
	datab => \ALT_INV_process_4~1_combout\,
	datac => \ALT_INV_Equal4~5_combout\,
	datad => ALT_INV_MODU_Counter(31),
	dataf => \ALT_INV_Add5~121_sumout\,
	combout => \MODU_Counter[31]~32_combout\);

-- Location: FF_X2_Y7_N14
\MODU_Counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter[31]~32_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(31));

-- Location: LABCELL_X2_Y7_N15
\MODU_Counter[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter[10]~0_combout\ = ( !MODU_Counter(31) & ( \twimax_wrap|modu1|MODU_output_valid~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|modu1|ALT_INV_MODU_output_valid~q\,
	dataf => ALT_INV_MODU_Counter(31),
	combout => \MODU_Counter[10]~0_combout\);

-- Location: LABCELL_X5_Y10_N12
\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( !MODU_Counter(5) ) + ( VCC ) + ( \Add5~22\ ))
-- \Add5~14\ = CARRY(( !MODU_Counter(5) ) + ( VCC ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_MODU_Counter(5),
	cin => \Add5~22\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: LABCELL_X2_Y7_N57
\MODU_Counter[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter[5]~4_combout\ = ( MODU_Counter(5) & ( \Add5~13_sumout\ & ( (!\MODU_Counter[10]~0_combout\) # ((!\Equal4~6_combout\ & ((!\process_4~1_combout\) # (\Equal4~5_combout\)))) ) ) ) # ( MODU_Counter(5) & ( !\Add5~13_sumout\ & ( 
-- (!\Equal4~6_combout\) # (!\MODU_Counter[10]~0_combout\) ) ) ) # ( !MODU_Counter(5) & ( !\Add5~13_sumout\ & ( (!\Equal4~6_combout\ & (\process_4~1_combout\ & (\MODU_Counter[10]~0_combout\ & !\Equal4~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000111110101111101000000000000000001111100011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	datab => \ALT_INV_process_4~1_combout\,
	datac => \ALT_INV_MODU_Counter[10]~0_combout\,
	datad => \ALT_INV_Equal4~5_combout\,
	datae => ALT_INV_MODU_Counter(5),
	dataf => \ALT_INV_Add5~13_sumout\,
	combout => \MODU_Counter[5]~4_combout\);

-- Location: FF_X2_Y7_N58
\MODU_Counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter[5]~4_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(5));

-- Location: LABCELL_X1_Y7_N30
\MODU_Counter~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter~5_combout\ = ( \Add5~17_sumout\ & ( !\Equal4~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal4~6_combout\,
	dataf => \ALT_INV_Add5~17_sumout\,
	combout => \MODU_Counter~5_combout\);

-- Location: FF_X1_Y7_N31
\MODU_Counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~5_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(6));

-- Location: LABCELL_X2_Y7_N30
\Mux5~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~12_combout\ = ( \MODU_Counter[4]~DUPLICATE_q\ & ( (!MODU_Counter(6) & (!MODU_Counter(8) & (MODU_Counter(7) & MODU_Counter(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(6),
	datab => ALT_INV_MODU_Counter(8),
	datac => ALT_INV_MODU_Counter(7),
	datad => ALT_INV_MODU_Counter(5),
	dataf => \ALT_INV_MODU_Counter[4]~DUPLICATE_q\,
	combout => \Mux5~12_combout\);

-- Location: LABCELL_X1_Y7_N24
\MODU_Flag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Flag~0_combout\ = ( \Mux4~0_combout\ & ( \Equal4~4_combout\ & ( (\twimax_wrap|modu1|MODU_output_valid~q\ & (!\MODU_Counter[31]~DUPLICATE_q\ & ((!\Mux5~12_combout\) # (!MODU_Counter(0))))) ) ) ) # ( !\Mux4~0_combout\ & ( \Equal4~4_combout\ & ( 
-- (\twimax_wrap|modu1|MODU_output_valid~q\ & !\MODU_Counter[31]~DUPLICATE_q\) ) ) ) # ( \Mux4~0_combout\ & ( !\Equal4~4_combout\ & ( (\twimax_wrap|modu1|MODU_output_valid~q\ & !\MODU_Counter[31]~DUPLICATE_q\) ) ) ) # ( !\Mux4~0_combout\ & ( 
-- !\Equal4~4_combout\ & ( (\twimax_wrap|modu1|MODU_output_valid~q\ & !\MODU_Counter[31]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000011001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux5~12_combout\,
	datab => \twimax_wrap|modu1|ALT_INV_MODU_output_valid~q\,
	datac => ALT_INV_MODU_Counter(0),
	datad => \ALT_INV_MODU_Counter[31]~DUPLICATE_q\,
	datae => \ALT_INV_Mux4~0_combout\,
	dataf => \ALT_INV_Equal4~4_combout\,
	combout => \MODU_Flag~0_combout\);

-- Location: LABCELL_X1_Y7_N39
\MODU_Flag~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Flag~1_combout\ = ( \Mux5~14_combout\ & ( ((\MODU_Flag~0_combout\ & ((!\process_4~0_combout\) # (!\twimax_wrap|modu1|MODU_output_I\(15))))) # (\MODU_Flag~q\) ) ) # ( !\Mux5~14_combout\ & ( ((\MODU_Flag~0_combout\ & ((!\process_4~0_combout\) # 
-- (\twimax_wrap|modu1|MODU_output_I\(15))))) # (\MODU_Flag~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101111111111000010111111111100001110111111110000111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_4~0_combout\,
	datab => \twimax_wrap|modu1|ALT_INV_MODU_output_I\(15),
	datac => \ALT_INV_MODU_Flag~0_combout\,
	datad => \ALT_INV_MODU_Flag~q\,
	dataf => \ALT_INV_Mux5~14_combout\,
	combout => \MODU_Flag~1_combout\);

-- Location: FF_X1_Y7_N41
MODU_Flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Flag~1_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODU_Flag~q\);

-- Location: MLABCELL_X4_Y7_N57
\Mux4~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = ( MODU_Counter(0) & ( (!MODU_Counter(6) & (MODU_Counter(5) & (MODU_Counter(8) & !MODU_Counter(4)))) # (MODU_Counter(6) & (!MODU_Counter(8) $ (((!MODU_Counter(5)) # (MODU_Counter(4)))))) ) ) # ( !MODU_Counter(0) & ( (!MODU_Counter(6) & 
-- ((!MODU_Counter(5)) # ((!MODU_Counter(8)) # (MODU_Counter(4))))) # (MODU_Counter(6) & (!MODU_Counter(8) $ (((MODU_Counter(5) & !MODU_Counter(4)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100111111010111010011111101000010110000001010001011000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(6),
	datab => ALT_INV_MODU_Counter(5),
	datac => ALT_INV_MODU_Counter(8),
	datad => ALT_INV_MODU_Counter(4),
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux4~8_combout\);

-- Location: MLABCELL_X4_Y7_N15
\Mux4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = ( MODU_Counter(0) & ( (!MODU_Counter(5) & (((!MODU_Counter(8))))) # (MODU_Counter(5) & ((!MODU_Counter(4) & (!MODU_Counter(8) $ (!MODU_Counter(6)))) # (MODU_Counter(4) & ((!MODU_Counter(6)) # (MODU_Counter(8)))))) ) ) # ( 
-- !MODU_Counter(0) & ( (!MODU_Counter(5) & (((MODU_Counter(8))))) # (MODU_Counter(5) & ((!MODU_Counter(4) & (!MODU_Counter(8) $ (MODU_Counter(6)))) # (MODU_Counter(4) & (!MODU_Counter(8) & MODU_Counter(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110000011110001011000001111011010011111000011101001111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(4),
	datab => ALT_INV_MODU_Counter(5),
	datac => ALT_INV_MODU_Counter(8),
	datad => ALT_INV_MODU_Counter(6),
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux4~9_combout\);

-- Location: MLABCELL_X4_Y7_N0
\Mux4~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~10_combout\ = ( \Mux4~9_combout\ & ( !MODU_Counter(2) $ (((\Mux4~8_combout\) # (MODU_Counter(7)))) ) ) # ( !\Mux4~9_combout\ & ( !MODU_Counter(2) $ (((!MODU_Counter(7) & \Mux4~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000111100110011000011110011000011001100111100001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_MODU_Counter(2),
	datac => ALT_INV_MODU_Counter(7),
	datad => \ALT_INV_Mux4~8_combout\,
	dataf => \ALT_INV_Mux4~9_combout\,
	combout => \Mux4~10_combout\);

-- Location: LABCELL_X2_Y8_N0
\Mux4~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~12_combout\ = ( MODU_Counter(6) & ( MODU_Counter(4) & ( !MODU_Counter(8) $ (((MODU_Counter(0)) # (\MODU_Counter[1]~DUPLICATE_q\))) ) ) ) # ( !MODU_Counter(6) & ( MODU_Counter(4) & ( (!\MODU_Counter[1]~DUPLICATE_q\ & !MODU_Counter(0)) ) ) ) # ( 
-- MODU_Counter(6) & ( !MODU_Counter(4) & ( !MODU_Counter(8) $ (!MODU_Counter(5) $ (((!\MODU_Counter[1]~DUPLICATE_q\ & !MODU_Counter(0))))) ) ) ) # ( !MODU_Counter(6) & ( !MODU_Counter(4) & ( (!MODU_Counter(8) & (!\MODU_Counter[1]~DUPLICATE_q\ & 
-- (!MODU_Counter(0)))) # (MODU_Counter(8) & (!MODU_Counter(5) $ (((MODU_Counter(0)) # (\MODU_Counter[1]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010010101100101010110101011000000110000001001010110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(8),
	datab => \ALT_INV_MODU_Counter[1]~DUPLICATE_q\,
	datac => ALT_INV_MODU_Counter(0),
	datad => ALT_INV_MODU_Counter(5),
	datae => ALT_INV_MODU_Counter(6),
	dataf => ALT_INV_MODU_Counter(4),
	combout => \Mux4~12_combout\);

-- Location: LABCELL_X2_Y8_N36
\Mux4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~13_combout\ = ( MODU_Counter(6) & ( MODU_Counter(4) & ( (MODU_Counter(8) & ((!\MODU_Counter[1]~DUPLICATE_q\) # (!MODU_Counter(0)))) ) ) ) # ( MODU_Counter(6) & ( !MODU_Counter(4) & ( (!\MODU_Counter[1]~DUPLICATE_q\ & (!MODU_Counter(8) $ 
-- (((!MODU_Counter(5)))))) # (\MODU_Counter[1]~DUPLICATE_q\ & (!MODU_Counter(0) & (!MODU_Counter(8) $ (!MODU_Counter(5))))) ) ) ) # ( !MODU_Counter(6) & ( !MODU_Counter(4) & ( (MODU_Counter(8) & (MODU_Counter(5) & ((!\MODU_Counter[1]~DUPLICATE_q\) # 
-- (!MODU_Counter(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010100010101001010100000000000000000000101010001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(8),
	datab => \ALT_INV_MODU_Counter[1]~DUPLICATE_q\,
	datac => ALT_INV_MODU_Counter(0),
	datad => ALT_INV_MODU_Counter(5),
	datae => ALT_INV_MODU_Counter(6),
	dataf => ALT_INV_MODU_Counter(4),
	combout => \Mux4~13_combout\);

-- Location: LABCELL_X2_Y8_N12
\Mux4~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~14_combout\ = ( MODU_Counter(6) & ( MODU_Counter(4) & ( !MODU_Counter(8) $ (!MODU_Counter(5) $ (((!\MODU_Counter[1]~DUPLICATE_q\ & !MODU_Counter(0))))) ) ) ) # ( !MODU_Counter(6) & ( MODU_Counter(4) & ( (!MODU_Counter(8) & 
-- (!\MODU_Counter[1]~DUPLICATE_q\ & (!MODU_Counter(0)))) # (MODU_Counter(8) & (!MODU_Counter(5) $ (((!\MODU_Counter[1]~DUPLICATE_q\ & !MODU_Counter(0)))))) ) ) ) # ( MODU_Counter(6) & ( !MODU_Counter(4) & ( !MODU_Counter(8) $ (((MODU_Counter(0)) # 
-- (\MODU_Counter[1]~DUPLICATE_q\))) ) ) ) # ( !MODU_Counter(6) & ( !MODU_Counter(4) & ( !MODU_Counter(8) $ (!MODU_Counter(5) $ (((!\MODU_Counter[1]~DUPLICATE_q\ & !MODU_Counter(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010101101010100101011001010110010101110000001001010101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(8),
	datab => \ALT_INV_MODU_Counter[1]~DUPLICATE_q\,
	datac => ALT_INV_MODU_Counter(0),
	datad => ALT_INV_MODU_Counter(5),
	datae => ALT_INV_MODU_Counter(6),
	dataf => ALT_INV_MODU_Counter(4),
	combout => \Mux4~14_combout\);

-- Location: LABCELL_X2_Y8_N42
\Mux4~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = ( MODU_Counter(6) & ( MODU_Counter(4) & ( (!\MODU_Counter[1]~DUPLICATE_q\ & (!MODU_Counter(8) $ (((MODU_Counter(5)))))) # (\MODU_Counter[1]~DUPLICATE_q\ & (!MODU_Counter(0) & (!MODU_Counter(8) $ (MODU_Counter(5))))) ) ) ) # ( 
-- !MODU_Counter(6) & ( MODU_Counter(4) & ( (!MODU_Counter(8) & ((!\MODU_Counter[1]~DUPLICATE_q\) # ((!MODU_Counter(0))))) # (MODU_Counter(8) & (MODU_Counter(5) & ((!\MODU_Counter[1]~DUPLICATE_q\) # (!MODU_Counter(0))))) ) ) ) # ( MODU_Counter(6) & ( 
-- !MODU_Counter(4) & ( (!MODU_Counter(8) & ((!\MODU_Counter[1]~DUPLICATE_q\) # (!MODU_Counter(0)))) ) ) ) # ( !MODU_Counter(6) & ( !MODU_Counter(4) & ( (!\MODU_Counter[1]~DUPLICATE_q\ & (!MODU_Counter(8) $ (((MODU_Counter(5)))))) # 
-- (\MODU_Counter[1]~DUPLICATE_q\ & (!MODU_Counter(0) & (!MODU_Counter(8) $ (MODU_Counter(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100001010100101010001010100010101000111111001010100001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(8),
	datab => \ALT_INV_MODU_Counter[1]~DUPLICATE_q\,
	datac => ALT_INV_MODU_Counter(0),
	datad => ALT_INV_MODU_Counter(5),
	datae => ALT_INV_MODU_Counter(6),
	dataf => ALT_INV_MODU_Counter(4),
	combout => \Mux4~6_combout\);

-- Location: LABCELL_X2_Y8_N48
\Mux4~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = ( \MODU_Counter[7]~DUPLICATE_q\ & ( \Mux4~6_combout\ & ( (!MODU_Counter(2) & \Mux4~14_combout\) ) ) ) # ( !\MODU_Counter[7]~DUPLICATE_q\ & ( \Mux4~6_combout\ & ( (!MODU_Counter(2) & (!\Mux4~12_combout\)) # (MODU_Counter(2) & 
-- ((!\Mux4~13_combout\))) ) ) ) # ( \MODU_Counter[7]~DUPLICATE_q\ & ( !\Mux4~6_combout\ & ( (\Mux4~14_combout\) # (MODU_Counter(2)) ) ) ) # ( !\MODU_Counter[7]~DUPLICATE_q\ & ( !\Mux4~6_combout\ & ( (!MODU_Counter(2) & (!\Mux4~12_combout\)) # 
-- (MODU_Counter(2) & ((!\Mux4~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011100010111000001100111111111110111000101110000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~12_combout\,
	datab => ALT_INV_MODU_Counter(2),
	datac => \ALT_INV_Mux4~13_combout\,
	datad => \ALT_INV_Mux4~14_combout\,
	datae => \ALT_INV_MODU_Counter[7]~DUPLICATE_q\,
	dataf => \ALT_INV_Mux4~6_combout\,
	combout => \Mux4~7_combout\);

-- Location: LABCELL_X1_Y7_N0
\Mux4~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~11_combout\ = ( MODU_Counter(3) & ( (!\MODU_Counter[10]~DUPLICATE_q\ & (MODU_Counter(9) & \Mux4~7_combout\)) ) ) # ( !MODU_Counter(3) & ( (!\MODU_Counter[10]~DUPLICATE_q\ & (MODU_Counter(9) & \Mux4~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MODU_Counter[10]~DUPLICATE_q\,
	datab => ALT_INV_MODU_Counter(9),
	datac => \ALT_INV_Mux4~10_combout\,
	datad => \ALT_INV_Mux4~7_combout\,
	dataf => ALT_INV_MODU_Counter(3),
	combout => \Mux4~11_combout\);

-- Location: LABCELL_X1_Y4_N45
\twimax_wrap|modu1|MODU_input_data_buffer~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twimax_wrap|modu1|MODU_input_data_buffer~0_combout\ = ( \twimax_wrap|inter1|INTER_Output_valid~q\ & ( \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|q_b\(0) ) ) # ( !\twimax_wrap|inter1|INTER_Output_valid~q\ & ( 
-- \twimax_wrap|modu1|MODU_input_data_buffer~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twimax_wrap|inter1|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	datad => \twimax_wrap|modu1|ALT_INV_MODU_input_data_buffer~q\,
	dataf => \twimax_wrap|inter1|ALT_INV_INTER_Output_valid~q\,
	combout => \twimax_wrap|modu1|MODU_input_data_buffer~0_combout\);

-- Location: FF_X1_Y4_N46
\twimax_wrap|modu1|MODU_input_data_buffer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \twimax_wrap|modu1|MODU_input_data_buffer~0_combout\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|modu1|MODU_input_data_buffer~q\);

-- Location: FF_X5_Y6_N11
\twimax_wrap|modu1|MODU_output_Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \twimax_wrap|modu1|MODU_input_data_buffer~q\,
	clrn => \pll1_wrap|pll_main_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	ena => \twimax_wrap|modu1|MODU_output_Q[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twimax_wrap|modu1|MODU_output_Q\(15));

-- Location: LABCELL_X1_Y7_N48
\process_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_4~1_combout\ = ( \twimax_wrap|modu1|MODU_output_I\(15) & ( \twimax_wrap|modu1|MODU_output_Q\(15) & ( (!\MODU_Flag~q\ & (\Mux5~14_combout\ & ((\Mux4~11_combout\) # (\Mux4~5_combout\)))) ) ) ) # ( !\twimax_wrap|modu1|MODU_output_I\(15) & ( 
-- \twimax_wrap|modu1|MODU_output_Q\(15) & ( (!\MODU_Flag~q\ & (!\Mux5~14_combout\ & ((\Mux4~11_combout\) # (\Mux4~5_combout\)))) ) ) ) # ( \twimax_wrap|modu1|MODU_output_I\(15) & ( !\twimax_wrap|modu1|MODU_output_Q\(15) & ( (!\Mux4~5_combout\ & 
-- (!\MODU_Flag~q\ & (!\Mux4~11_combout\ & \Mux5~14_combout\))) ) ) ) # ( !\twimax_wrap|modu1|MODU_output_I\(15) & ( !\twimax_wrap|modu1|MODU_output_Q\(15) & ( (!\Mux4~5_combout\ & (!\MODU_Flag~q\ & (!\Mux4~11_combout\ & !\Mux5~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000001000000001001100000000000000000001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~5_combout\,
	datab => \ALT_INV_MODU_Flag~q\,
	datac => \ALT_INV_Mux4~11_combout\,
	datad => \ALT_INV_Mux5~14_combout\,
	datae => \twimax_wrap|modu1|ALT_INV_MODU_output_I\(15),
	dataf => \twimax_wrap|modu1|ALT_INV_MODU_output_Q\(15),
	combout => \process_4~1_combout\);

-- Location: LABCELL_X2_Y7_N54
\MODU_Counter[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter[2]~3_combout\ = ( MODU_Counter(2) & ( \Add5~9_sumout\ & ( (!\MODU_Counter[10]~0_combout\) # ((!\Equal4~6_combout\ & ((!\process_4~1_combout\) # (\Equal4~5_combout\)))) ) ) ) # ( MODU_Counter(2) & ( !\Add5~9_sumout\ & ( (!\Equal4~6_combout\) 
-- # (!\MODU_Counter[10]~0_combout\) ) ) ) # ( !MODU_Counter(2) & ( !\Add5~9_sumout\ & ( (!\Equal4~6_combout\ & (\process_4~1_combout\ & (!\Equal4~5_combout\ & \MODU_Counter[10]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000111111111010101000000000000000001111111110001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	datab => \ALT_INV_process_4~1_combout\,
	datac => \ALT_INV_Equal4~5_combout\,
	datad => \ALT_INV_MODU_Counter[10]~0_combout\,
	datae => ALT_INV_MODU_Counter(2),
	dataf => \ALT_INV_Add5~9_sumout\,
	combout => \MODU_Counter[2]~3_combout\);

-- Location: FF_X2_Y7_N56
\MODU_Counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter[2]~3_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODU_Counter(2));

-- Location: LABCELL_X2_Y7_N33
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( MODU_Counter(3) & ( (MODU_Counter(2) & MODU_Counter(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_MODU_Counter(2),
	datad => ALT_INV_MODU_Counter(1),
	dataf => ALT_INV_MODU_Counter(3),
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X1_Y7_N42
\Mux5~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~38_combout\ = ( \Mux5~12_combout\ & ( \Mux4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux4~0_combout\,
	dataf => \ALT_INV_Mux5~12_combout\,
	combout => \Mux5~38_combout\);

-- Location: LABCELL_X1_Y7_N12
\Equal4~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~6_combout\ = ( !MODU_Counter(0) & ( (\Mux5~38_combout\ & (\Equal4~4_combout\ & !\MODU_Counter[31]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux5~38_combout\,
	datab => \ALT_INV_Equal4~4_combout\,
	datac => \ALT_INV_MODU_Counter[31]~DUPLICATE_q\,
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Equal4~6_combout\);

-- Location: MLABCELL_X4_Y10_N33
\MODU_Counter~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_Counter~11_combout\ = ( \Add5~37_sumout\ & ( !\Equal4~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	dataf => \ALT_INV_Add5~37_sumout\,
	combout => \MODU_Counter~11_combout\);

-- Location: FF_X4_Y10_N34
\MODU_Counter[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_Counter~11_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sclr => \Equal4~6_combout\,
	ena => \MODU_Counter[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODU_Counter[10]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y8_N33
\Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( MODU_Counter(8) & ( (!MODU_Counter(5) & (!MODU_Counter(6) & ((!\MODU_Counter[7]~DUPLICATE_q\) # (!MODU_Counter(4))))) # (MODU_Counter(5) & (!MODU_Counter(6) $ (((!MODU_Counter(4)) # (\MODU_Counter[7]~DUPLICATE_q\))))) ) ) # ( 
-- !MODU_Counter(8) & ( (!MODU_Counter(5) & ((!\MODU_Counter[7]~DUPLICATE_q\ & ((!MODU_Counter(4)))) # (\MODU_Counter[7]~DUPLICATE_q\ & (MODU_Counter(6))))) # (MODU_Counter(5) & ((!MODU_Counter(4) & (\MODU_Counter[7]~DUPLICATE_q\)) # (MODU_Counter(4) & 
-- ((!MODU_Counter(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110100110100100111010011010011000011101000011100001110100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MODU_Counter[7]~DUPLICATE_q\,
	datab => ALT_INV_MODU_Counter(5),
	datac => ALT_INV_MODU_Counter(6),
	datad => ALT_INV_MODU_Counter(4),
	dataf => ALT_INV_MODU_Counter(8),
	combout => \Mux4~1_combout\);

-- Location: LABCELL_X2_Y8_N24
\Mux4~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~18_combout\ = ( MODU_Counter(6) & ( MODU_Counter(0) & ( (!\MODU_Counter[7]~DUPLICATE_q\ & ((!MODU_Counter(5) $ (!MODU_Counter(8))) # (MODU_Counter(4)))) # (\MODU_Counter[7]~DUPLICATE_q\ & ((!MODU_Counter(5) & (MODU_Counter(8))) # (MODU_Counter(5) & 
-- (!MODU_Counter(8) & MODU_Counter(4))))) ) ) ) # ( !MODU_Counter(6) & ( MODU_Counter(0) & ( (!MODU_Counter(8) & (!MODU_Counter(5) $ (((!\MODU_Counter[7]~DUPLICATE_q\ & !MODU_Counter(4)))))) # (MODU_Counter(8) & ((!MODU_Counter(4) & ((MODU_Counter(5)))) # 
-- (MODU_Counter(4) & (\MODU_Counter[7]~DUPLICATE_q\)))) ) ) ) # ( MODU_Counter(6) & ( !MODU_Counter(0) & ( (!\MODU_Counter[7]~DUPLICATE_q\ & (!MODU_Counter(4) & (!MODU_Counter(5) $ (MODU_Counter(8))))) # (\MODU_Counter[7]~DUPLICATE_q\ & ((!MODU_Counter(5) & 
-- (!MODU_Counter(8))) # (MODU_Counter(5) & ((!MODU_Counter(4)) # (MODU_Counter(8)))))) ) ) ) # ( !MODU_Counter(6) & ( !MODU_Counter(0) & ( (!MODU_Counter(8) & (!MODU_Counter(5) $ (((MODU_Counter(4)) # (\MODU_Counter[7]~DUPLICATE_q\))))) # (MODU_Counter(8) & 
-- ((!MODU_Counter(4) & ((!MODU_Counter(5)))) # (MODU_Counter(4) & (!\MODU_Counter[7]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110000111010110100110100000101100011110001010010110010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MODU_Counter[7]~DUPLICATE_q\,
	datab => ALT_INV_MODU_Counter(5),
	datac => ALT_INV_MODU_Counter(8),
	datad => ALT_INV_MODU_Counter(4),
	datae => ALT_INV_MODU_Counter(6),
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux4~18_combout\);

-- Location: LABCELL_X2_Y8_N18
\Mux4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~17_combout\ = ( MODU_Counter(6) & ( !MODU_Counter(0) & ( (!\MODU_Counter[7]~DUPLICATE_q\ & (!MODU_Counter(4) & (!MODU_Counter(5) $ (MODU_Counter(8))))) # (\MODU_Counter[7]~DUPLICATE_q\ & ((!MODU_Counter(5) & (!MODU_Counter(8))) # (MODU_Counter(5) & 
-- ((!MODU_Counter(4)) # (MODU_Counter(8)))))) ) ) ) # ( !MODU_Counter(6) & ( !MODU_Counter(0) & ( (!MODU_Counter(8) & (!MODU_Counter(5) $ (((MODU_Counter(4)) # (\MODU_Counter[7]~DUPLICATE_q\))))) # (MODU_Counter(8) & ((!MODU_Counter(4) & 
-- ((!MODU_Counter(5)))) # (MODU_Counter(4) & (!\MODU_Counter[7]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110000111010110100110100000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MODU_Counter[7]~DUPLICATE_q\,
	datab => ALT_INV_MODU_Counter(5),
	datac => ALT_INV_MODU_Counter(8),
	datad => ALT_INV_MODU_Counter(4),
	datae => ALT_INV_MODU_Counter(6),
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux4~17_combout\);

-- Location: LABCELL_X2_Y8_N6
\Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = ( MODU_Counter(3) & ( \Mux4~17_combout\ & ( (!\MODU_Counter[1]~DUPLICATE_q\ & ((!MODU_Counter(2) & ((\Mux4~18_combout\))) # (MODU_Counter(2) & (!\Mux4~1_combout\)))) # (\MODU_Counter[1]~DUPLICATE_q\ & (!\Mux4~1_combout\ & 
-- ((!MODU_Counter(2))))) ) ) ) # ( !MODU_Counter(3) & ( \Mux4~17_combout\ & ( !\Mux4~18_combout\ $ (!MODU_Counter(2)) ) ) ) # ( MODU_Counter(3) & ( !\Mux4~17_combout\ & ( (!\MODU_Counter[1]~DUPLICATE_q\ & ((!MODU_Counter(2) & ((\Mux4~18_combout\))) # 
-- (MODU_Counter(2) & (!\Mux4~1_combout\)))) # (\MODU_Counter[1]~DUPLICATE_q\ & ((!\Mux4~1_combout\) # ((MODU_Counter(2))))) ) ) ) # ( !MODU_Counter(3) & ( !\Mux4~17_combout\ & ( !\Mux4~18_combout\ $ (!MODU_Counter(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000001011101011101100001111111100000010111010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~1_combout\,
	datab => \ALT_INV_MODU_Counter[1]~DUPLICATE_q\,
	datac => \ALT_INV_Mux4~18_combout\,
	datad => ALT_INV_MODU_Counter(2),
	datae => ALT_INV_MODU_Counter(3),
	dataf => \ALT_INV_Mux4~17_combout\,
	combout => \Mux4~2_combout\);

-- Location: MLABCELL_X4_Y7_N24
\Mux4~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~16_combout\ = ( MODU_Counter(6) & ( MODU_Counter(0) & ( (!MODU_Counter(7) & ((!MODU_Counter(5)) # ((!MODU_Counter(4) & !MODU_Counter(8))))) # (MODU_Counter(7) & (!MODU_Counter(5) $ (((!MODU_Counter(8)) # (MODU_Counter(4)))))) ) ) ) # ( 
-- !MODU_Counter(6) & ( MODU_Counter(0) & ( (!MODU_Counter(8) & ((!MODU_Counter(4) & ((MODU_Counter(5)))) # (MODU_Counter(4) & (MODU_Counter(7))))) # (MODU_Counter(8) & (!MODU_Counter(7))) ) ) ) # ( MODU_Counter(6) & ( !MODU_Counter(0) & ( (!MODU_Counter(7) 
-- & (MODU_Counter(5) & ((MODU_Counter(8)) # (MODU_Counter(4))))) # (MODU_Counter(7) & (!MODU_Counter(5) $ (((!MODU_Counter(4) & MODU_Counter(8)))))) ) ) ) # ( !MODU_Counter(6) & ( !MODU_Counter(0) & ( (!MODU_Counter(8) & ((!MODU_Counter(4) & 
-- ((!MODU_Counter(5)))) # (MODU_Counter(4) & (!MODU_Counter(7))))) # (MODU_Counter(8) & (MODU_Counter(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100101001010101010001100011011000110101101010101011100111001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(7),
	datab => ALT_INV_MODU_Counter(5),
	datac => ALT_INV_MODU_Counter(4),
	datad => ALT_INV_MODU_Counter(8),
	datae => ALT_INV_MODU_Counter(6),
	dataf => ALT_INV_MODU_Counter(0),
	combout => \Mux4~16_combout\);

-- Location: MLABCELL_X4_Y7_N12
\Mux4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = ( MODU_Counter(8) & ( (!MODU_Counter(6) & (((MODU_Counter(7))))) # (MODU_Counter(6) & (!MODU_Counter(5) $ (((!MODU_Counter(4)) # (!MODU_Counter(7)))))) ) ) # ( !MODU_Counter(8) & ( (!MODU_Counter(4) & (!MODU_Counter(5) & 
-- ((!MODU_Counter(6)) # (MODU_Counter(7))))) # (MODU_Counter(4) & (!MODU_Counter(7) $ (((!MODU_Counter(5) & MODU_Counter(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100000011100110110000001110000001111001101100000111100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(4),
	datab => ALT_INV_MODU_Counter(5),
	datac => ALT_INV_MODU_Counter(7),
	datad => ALT_INV_MODU_Counter(6),
	dataf => ALT_INV_MODU_Counter(8),
	combout => \Mux4~3_combout\);

-- Location: MLABCELL_X4_Y7_N18
\Mux4~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~15_combout\ = ( MODU_Counter(6) & ( \MODU_Counter[7]~DUPLICATE_q\ & ( (!MODU_Counter(0) & (!MODU_Counter(5) $ (((!MODU_Counter(4) & MODU_Counter(8)))))) ) ) ) # ( !MODU_Counter(6) & ( \MODU_Counter[7]~DUPLICATE_q\ & ( (!MODU_Counter(0) & 
-- (((!MODU_Counter(5) & !MODU_Counter(4))) # (MODU_Counter(8)))) ) ) ) # ( MODU_Counter(6) & ( !\MODU_Counter[7]~DUPLICATE_q\ & ( (!MODU_Counter(0) & (MODU_Counter(5) & ((MODU_Counter(8)) # (MODU_Counter(4))))) ) ) ) # ( !MODU_Counter(6) & ( 
-- !\MODU_Counter[7]~DUPLICATE_q\ & ( (!MODU_Counter(0) & (!MODU_Counter(8) & ((!MODU_Counter(5)) # (MODU_Counter(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000000000000000100010001010000000101010101000100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MODU_Counter(0),
	datab => ALT_INV_MODU_Counter(5),
	datac => ALT_INV_MODU_Counter(4),
	datad => ALT_INV_MODU_Counter(8),
	datae => ALT_INV_MODU_Counter(6),
	dataf => \ALT_INV_MODU_Counter[7]~DUPLICATE_q\,
	combout => \Mux4~15_combout\);

-- Location: MLABCELL_X4_Y7_N48
\Mux4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = ( \MODU_Counter[1]~DUPLICATE_q\ & ( \Mux4~15_combout\ & ( (!MODU_Counter(3) & (!\Mux4~16_combout\ $ ((!MODU_Counter(2))))) # (MODU_Counter(3) & (((!MODU_Counter(2) & !\Mux4~3_combout\)))) ) ) ) # ( !\MODU_Counter[1]~DUPLICATE_q\ & ( 
-- \Mux4~15_combout\ & ( (!MODU_Counter(2) & (\Mux4~16_combout\)) # (MODU_Counter(2) & ((!MODU_Counter(3) & (!\Mux4~16_combout\)) # (MODU_Counter(3) & ((!\Mux4~3_combout\))))) ) ) ) # ( \MODU_Counter[1]~DUPLICATE_q\ & ( !\Mux4~15_combout\ & ( 
-- (!MODU_Counter(3) & (!\Mux4~16_combout\ $ ((!MODU_Counter(2))))) # (MODU_Counter(3) & (((!\Mux4~3_combout\) # (MODU_Counter(2))))) ) ) ) # ( !\MODU_Counter[1]~DUPLICATE_q\ & ( !\Mux4~15_combout\ & ( (!MODU_Counter(2) & (\Mux4~16_combout\)) # 
-- (MODU_Counter(2) & ((!MODU_Counter(3) & (!\Mux4~16_combout\)) # (MODU_Counter(3) & ((!\Mux4~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011101100100011011110110001101100111011001000110110001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~16_combout\,
	datab => ALT_INV_MODU_Counter(2),
	datac => ALT_INV_MODU_Counter(3),
	datad => \ALT_INV_Mux4~3_combout\,
	datae => \ALT_INV_MODU_Counter[1]~DUPLICATE_q\,
	dataf => \ALT_INV_Mux4~15_combout\,
	combout => \Mux4~4_combout\);

-- Location: LABCELL_X1_Y7_N3
\Mux4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (!MODU_Counter(9) & ((!\MODU_Counter[10]~DUPLICATE_q\ & (\Mux4~2_combout\)) # (\MODU_Counter[10]~DUPLICATE_q\ & ((\Mux4~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MODU_Counter[10]~DUPLICATE_q\,
	datab => ALT_INV_MODU_Counter(9),
	datac => \ALT_INV_Mux4~2_combout\,
	datad => \ALT_INV_Mux4~4_combout\,
	combout => \Mux4~5_combout\);

-- Location: LABCELL_X1_Y7_N33
\process_4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_4~0_combout\ = ( \twimax_wrap|modu1|MODU_output_Q\(15) & ( (!\MODU_Flag~q\ & ((\Mux4~11_combout\) # (\Mux4~5_combout\))) ) ) # ( !\twimax_wrap|modu1|MODU_output_Q\(15) & ( (!\Mux4~5_combout\ & (!\MODU_Flag~q\ & !\Mux4~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~5_combout\,
	datac => \ALT_INV_MODU_Flag~q\,
	datad => \ALT_INV_Mux4~11_combout\,
	dataf => \twimax_wrap|modu1|ALT_INV_MODU_output_Q\(15),
	combout => \process_4~0_combout\);

-- Location: LABCELL_X1_Y7_N36
\MODU_output_valid~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MODU_output_valid~0_combout\ = ( \Mux5~14_combout\ & ( (!\MODU_Flag~0_combout\ & (((\MODU_output_valid~reg0_q\)))) # (\MODU_Flag~0_combout\ & (\process_4~0_combout\ & (\twimax_wrap|modu1|MODU_output_I\(15)))) ) ) # ( !\Mux5~14_combout\ & ( 
-- (!\MODU_Flag~0_combout\ & (((\MODU_output_valid~reg0_q\)))) # (\MODU_Flag~0_combout\ & (\process_4~0_combout\ & (!\twimax_wrap|modu1|MODU_output_I\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011110100000001001111010000000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_4~0_combout\,
	datab => \twimax_wrap|modu1|ALT_INV_MODU_output_I\(15),
	datac => \ALT_INV_MODU_Flag~0_combout\,
	datad => \ALT_INV_MODU_output_valid~reg0_q\,
	dataf => \ALT_INV_Mux5~14_combout\,
	combout => \MODU_output_valid~0_combout\);

-- Location: FF_X1_Y7_N37
\MODU_output_valid~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_wrap|pll_main_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \MODU_output_valid~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODU_output_valid~reg0_q\);


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
      number_of_fplls => 1);
-- pragma translate_on
END structure;


