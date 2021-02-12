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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "01/31/2021 23:14:45"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hello_world IS
    PORT (
	clk : IN std_logic;
	PB : IN std_logic;
	LED0 : OUT std_logic;
	LED1 : OUT std_logic;
	LED2 : OUT std_logic;
	LED3 : OUT std_logic;
	LED4 : OUT std_logic;
	LED5 : OUT std_logic
	);
END hello_world;

-- Design Ports Information
-- LED0	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED1	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED2	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED3	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED4	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED5	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PB	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF hello_world IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_PB : std_logic;
SIGNAL ww_LED0 : std_logic;
SIGNAL ww_LED1 : std_logic;
SIGNAL ww_LED2 : std_logic;
SIGNAL ww_LED3 : std_logic;
SIGNAL ww_LED4 : std_logic;
SIGNAL ww_LED5 : std_logic;
SIGNAL \op~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \op~3_combout\ : std_logic;
SIGNAL \op~5_combout\ : std_logic;
SIGNAL \count[9]~12_combout\ : std_logic;
SIGNAL \count[3]~17_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \count[1]~19_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \count[0]~20_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \count[2]~18_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \count[4]~16_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \count[5]~15_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \count[7]~10_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \count[8]~11_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \count[11]~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \count[12]~21_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \count[13]~6_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \count[10]~13_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \count[6]~14_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \count[14]~7_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \count[15]~5_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \count[16]~2_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \count[17]~8_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \count[22]~3_combout\ : std_logic;
SIGNAL \count[22]~4_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \count[19]~25_combout\ : std_logic;
SIGNAL \count[20]~29_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \count[20]~23_combout\ : std_logic;
SIGNAL \count[20]~24_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \count[21]~28_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \count[18]~9_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \op~8_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \count[22]~26_combout\ : std_logic;
SIGNAL \count[22]~27_combout\ : std_logic;
SIGNAL \op~0_combout\ : std_logic;
SIGNAL \op~1_combout\ : std_logic;
SIGNAL \op~2_combout\ : std_logic;
SIGNAL \op~4_combout\ : std_logic;
SIGNAL \op~6_combout\ : std_logic;
SIGNAL \op~7_combout\ : std_logic;
SIGNAL \op~9_combout\ : std_logic;
SIGNAL \op~10_combout\ : std_logic;
SIGNAL \op~regout\ : std_logic;
SIGNAL \op~clkctrl_outclk\ : std_logic;
SIGNAL \theCount[0]~15_combout\ : std_logic;
SIGNAL \PB~combout\ : std_logic;
SIGNAL \theCount[1]~6\ : std_logic;
SIGNAL \theCount[2]~7_combout\ : std_logic;
SIGNAL \theCount[2]~8\ : std_logic;
SIGNAL \theCount[3]~10\ : std_logic;
SIGNAL \theCount[4]~11_combout\ : std_logic;
SIGNAL \theCount[4]~12\ : std_logic;
SIGNAL \theCount[5]~13_combout\ : std_logic;
SIGNAL \theCount[3]~9_combout\ : std_logic;
SIGNAL \theCount[1]~5_combout\ : std_logic;
SIGNAL theCount : std_logic_vector(5 DOWNTO 0);
SIGNAL count : std_logic_vector(22 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_PB <= PB;
LED0 <= ww_LED0;
LED1 <= ww_LED1;
LED2 <= ww_LED2;
LED3 <= ww_LED3;
LED4 <= ww_LED4;
LED5 <= ww_LED5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\op~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \op~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCCOMB_X15_Y6_N12
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count(1) & (!\Add0~1\)) # (!count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X15_Y6_N16
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(3) & (!\Add0~5\)) # (!count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X15_Y6_N28
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count(9) & (!\Add0~17\)) # (!count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCFF_X14_Y6_N13
\count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[9]~12_combout\,
	ena => \count[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(9));

-- Location: LCCOMB_X14_Y6_N10
\op~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \op~3_combout\ = (!count(5) & (!count(6) & !count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datac => count(6),
	datad => count(9),
	combout => \op~3_combout\);

-- Location: LCFF_X15_Y6_N7
\count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[3]~17_combout\,
	ena => \count[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LCCOMB_X12_Y6_N6
\op~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \op~5_combout\ = (!count(14) & (!count(15) & (!count(12) & !count(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datab => count(15),
	datac => count(12),
	datad => count(16),
	combout => \op~5_combout\);

-- Location: LCCOMB_X14_Y6_N12
\count[9]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[9]~12_combout\ = (\Add0~18_combout\ & (((\LessThan1~7_combout\ & !count(21))) # (!count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => \LessThan1~7_combout\,
	datac => count(21),
	datad => \Add0~18_combout\,
	combout => \count[9]~12_combout\);

-- Location: LCCOMB_X15_Y6_N6
\count[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[3]~17_combout\ = (\Add0~6_combout\ & (((!count(21) & \LessThan1~7_combout\)) # (!count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => count(21),
	datac => \Add0~6_combout\,
	datad => \LessThan1~7_combout\,
	combout => \count[3]~17_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X15_Y6_N2
\count[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[1]~19_combout\ = (\Add0~2_combout\ & (((!count(21) & \LessThan1~7_combout\)) # (!count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => count(21),
	datac => count(22),
	datad => \LessThan1~7_combout\,
	combout => \count[1]~19_combout\);

-- Location: LCFF_X15_Y6_N3
\count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[1]~19_combout\,
	ena => \count[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LCCOMB_X15_Y6_N10
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count(0) $ (VCC)
-- \Add0~1\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X14_Y6_N24
\count[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~20_combout\ = (\Add0~0_combout\ & (((!count(21) & \LessThan1~7_combout\)) # (!count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => \Add0~0_combout\,
	datac => count(22),
	datad => \LessThan1~7_combout\,
	combout => \count[0]~20_combout\);

-- Location: LCFF_X14_Y6_N25
\count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[0]~20_combout\,
	ena => \count[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LCCOMB_X15_Y6_N14
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count(2) & (\Add0~3\ $ (GND))) # (!count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X15_Y6_N8
\count[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[2]~18_combout\ = (\Add0~4_combout\ & (((!count(21) & \LessThan1~7_combout\)) # (!count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => count(21),
	datac => \Add0~4_combout\,
	datad => \LessThan1~7_combout\,
	combout => \count[2]~18_combout\);

-- Location: LCFF_X15_Y6_N9
\count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[2]~18_combout\,
	ena => \count[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LCCOMB_X15_Y6_N18
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count(4) & (\Add0~7\ $ (GND))) # (!count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X15_Y6_N0
\count[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[4]~16_combout\ = (\Add0~8_combout\ & (((\LessThan1~7_combout\ & !count(21))) # (!count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => \Add0~8_combout\,
	datac => \LessThan1~7_combout\,
	datad => count(21),
	combout => \count[4]~16_combout\);

-- Location: LCFF_X15_Y6_N1
\count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[4]~16_combout\,
	ena => \count[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4));

-- Location: LCCOMB_X15_Y6_N20
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count(5) & (!\Add0~9\)) # (!count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X14_Y6_N4
\count[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[5]~15_combout\ = (\Add0~10_combout\ & (((\LessThan1~7_combout\ & !count(21))) # (!count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => \LessThan1~7_combout\,
	datac => count(21),
	datad => \Add0~10_combout\,
	combout => \count[5]~15_combout\);

-- Location: LCFF_X14_Y6_N5
\count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[5]~15_combout\,
	ena => \count[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(5));

-- Location: LCCOMB_X15_Y6_N22
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count(6) & (\Add0~11\ $ (GND))) # (!count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X15_Y6_N24
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count(7) & (!\Add0~13\)) # (!count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X13_Y6_N26
\count[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[7]~10_combout\ = (\Add0~14_combout\ & (((!count(21) & \LessThan1~7_combout\)) # (!count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => count(22),
	datac => \Add0~14_combout\,
	datad => \LessThan1~7_combout\,
	combout => \count[7]~10_combout\);

-- Location: LCFF_X13_Y6_N27
\count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[7]~10_combout\,
	ena => \count[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7));

-- Location: LCCOMB_X15_Y6_N26
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count(8) & (\Add0~15\ $ (GND))) # (!count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X14_Y6_N26
\count[8]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[8]~11_combout\ = (\Add0~16_combout\ & (((!count(21) & \LessThan1~7_combout\)) # (!count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => \LessThan1~7_combout\,
	datac => \Add0~16_combout\,
	datad => count(22),
	combout => \count[8]~11_combout\);

-- Location: LCFF_X14_Y6_N27
\count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[8]~11_combout\,
	ena => \count[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(8));

-- Location: LCCOMB_X15_Y6_N30
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (count(10) & (\Add0~19\ $ (GND))) # (!count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X15_Y5_N0
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (count(11) & (!\Add0~21\)) # (!count(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X13_Y6_N18
\count[11]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[11]~22_combout\ = (\Add0~22_combout\ & (((!count(21) & \LessThan1~7_combout\)) # (!count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => count(22),
	datac => \Add0~22_combout\,
	datad => \LessThan1~7_combout\,
	combout => \count[11]~22_combout\);

-- Location: LCFF_X13_Y6_N19
\count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[11]~22_combout\,
	ena => \count[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(11));

-- Location: LCCOMB_X15_Y5_N2
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (count(12) & (\Add0~23\ $ (GND))) # (!count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X13_Y6_N8
\count[12]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[12]~21_combout\ = (\Add0~24_combout\ & (((!count(21) & \LessThan1~7_combout\)) # (!count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => count(22),
	datac => \Add0~24_combout\,
	datad => \LessThan1~7_combout\,
	combout => \count[12]~21_combout\);

-- Location: LCFF_X13_Y6_N9
\count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[12]~21_combout\,
	ena => \count[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(12));

-- Location: LCCOMB_X15_Y5_N4
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (count(13) & (!\Add0~25\)) # (!count(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X13_Y6_N16
\count[13]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[13]~6_combout\ = (\Add0~26_combout\ & (((!count(21) & \LessThan1~7_combout\)) # (!count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => count(22),
	datac => \Add0~26_combout\,
	datad => \LessThan1~7_combout\,
	combout => \count[13]~6_combout\);

-- Location: LCFF_X13_Y6_N17
\count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[13]~6_combout\,
	ena => \count[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(13));

-- Location: LCCOMB_X14_Y6_N30
\count[10]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[10]~13_combout\ = (\Add0~20_combout\ & (((\LessThan1~7_combout\ & !count(21))) # (!count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => \LessThan1~7_combout\,
	datac => count(21),
	datad => \Add0~20_combout\,
	combout => \count[10]~13_combout\);

-- Location: LCFF_X14_Y6_N31
\count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[10]~13_combout\,
	ena => \count[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(10));

-- Location: LCCOMB_X13_Y6_N4
\LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (!count(12) & (!count(13) & !count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datac => count(13),
	datad => count(10),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X14_Y6_N14
\count[6]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[6]~14_combout\ = (\Add0~12_combout\ & (((\LessThan1~7_combout\ & !count(21))) # (!count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => \LessThan1~7_combout\,
	datac => count(21),
	datad => \Add0~12_combout\,
	combout => \count[6]~14_combout\);

-- Location: LCFF_X14_Y6_N15
\count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[6]~14_combout\,
	ena => \count[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(6));

-- Location: LCCOMB_X14_Y6_N6
\LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (((!count(6) & !count(7))) # (!count(8))) # (!count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datab => count(8),
	datac => count(6),
	datad => count(7),
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X14_Y6_N28
\LessThan2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = ((\LessThan2~1_combout\ & \LessThan2~2_combout\)) # (!\LessThan2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~3_combout\,
	datac => \LessThan2~1_combout\,
	datad => \LessThan2~2_combout\,
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X15_Y5_N6
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (count(14) & (\Add0~27\ $ (GND))) # (!count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X13_Y6_N22
\count[14]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[14]~7_combout\ = (\Add0~28_combout\ & (((!count(21) & \LessThan1~7_combout\)) # (!count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => count(22),
	datac => \Add0~28_combout\,
	datad => \LessThan1~7_combout\,
	combout => \count[14]~7_combout\);

-- Location: LCFF_X13_Y6_N23
\count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[14]~7_combout\,
	ena => \count[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(14));

-- Location: LCCOMB_X15_Y5_N8
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (count(15) & (!\Add0~29\)) # (!count(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X13_Y6_N10
\count[15]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[15]~5_combout\ = (\Add0~30_combout\ & (((!count(21) & \LessThan1~7_combout\)) # (!count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => count(22),
	datac => \Add0~30_combout\,
	datad => \LessThan1~7_combout\,
	combout => \count[15]~5_combout\);

-- Location: LCFF_X13_Y6_N11
\count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[15]~5_combout\,
	ena => \count[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(15));

-- Location: LCCOMB_X15_Y5_N10
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (count(16) & (\Add0~31\ $ (GND))) # (!count(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((count(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X13_Y6_N12
\count[16]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[16]~2_combout\ = (\Add0~32_combout\ & (((!count(21) & \LessThan1~7_combout\)) # (!count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => count(22),
	datac => \Add0~32_combout\,
	datad => \LessThan1~7_combout\,
	combout => \count[16]~2_combout\);

-- Location: LCFF_X13_Y6_N13
\count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[16]~2_combout\,
	ena => \count[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(16));

-- Location: LCCOMB_X15_Y5_N12
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (count(17) & (!\Add0~33\)) # (!count(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X14_Y6_N8
\count[17]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[17]~8_combout\ = (\Add0~34_combout\ & (((!count(21) & \LessThan1~7_combout\)) # (!count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => \LessThan1~7_combout\,
	datac => \Add0~34_combout\,
	datad => count(22),
	combout => \count[17]~8_combout\);

-- Location: LCFF_X14_Y6_N9
\count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[17]~8_combout\,
	ena => \count[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(17));

-- Location: LCCOMB_X13_Y6_N14
\LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!count(15) & (!count(17) & !count(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datac => count(17),
	datad => count(16),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X13_Y6_N30
\LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (count(14) & ((count(13)) # ((count(11)) # (count(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => count(11),
	datac => count(12),
	datad => count(14),
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X15_Y6_N4
\LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (((!count(1)) # (!count(2))) # (!count(4))) # (!count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(4),
	datac => count(2),
	datad => count(1),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X14_Y6_N18
\LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (count(7)) # ((count(0) & (count(5) & !\LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(7),
	datac => count(5),
	datad => \LessThan1~2_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X14_Y6_N20
\LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (count(9) & (count(8) & ((count(6)) # (\LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datab => count(8),
	datac => count(6),
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X13_Y6_N0
\LessThan1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (\LessThan2~0_combout\ & (((\LessThan2~1_combout\ & !\LessThan1~5_combout\)) # (!\LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => \LessThan2~3_combout\,
	datac => \LessThan2~0_combout\,
	datad => \LessThan1~5_combout\,
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X13_Y6_N2
\count[22]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[22]~3_combout\ = (\LessThan1~3_combout\ & (!\LessThan1~6_combout\ & ((!\LessThan2~0_combout\) # (!\LessThan2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => \LessThan2~4_combout\,
	datac => \LessThan2~0_combout\,
	datad => \LessThan1~6_combout\,
	combout => \count[22]~3_combout\);

-- Location: LCCOMB_X13_Y6_N20
\count[22]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[22]~4_combout\ = ((!count(20) & (!count(21) & !\count[22]~3_combout\))) # (!count(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => count(20),
	datac => count(21),
	datad => \count[22]~3_combout\,
	combout => \count[22]~4_combout\);

-- Location: LCCOMB_X15_Y5_N14
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (count(18) & (\Add0~35\ $ (GND))) # (!count(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((count(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X15_Y5_N16
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (count(19) & (!\Add0~37\)) # (!count(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X13_Y6_N28
\count[19]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[19]~25_combout\ = (\Add0~38_combout\ & (((\LessThan1~7_combout\ & !count(21))) # (!count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~7_combout\,
	datab => count(22),
	datac => count(21),
	datad => \Add0~38_combout\,
	combout => \count[19]~25_combout\);

-- Location: LCFF_X13_Y6_N29
\count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[19]~25_combout\,
	ena => \count[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(19));

-- Location: LCCOMB_X12_Y6_N14
\count[20]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[20]~29_combout\ = (count(21)) # ((count(19) & (!\LessThan1~6_combout\ & count(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => count(19),
	datac => \LessThan1~6_combout\,
	datad => count(18),
	combout => \count[20]~29_combout\);

-- Location: LCCOMB_X15_Y5_N18
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (count(20) & (\Add0~39\ $ (GND))) # (!count(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((count(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X12_Y6_N2
\count[20]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[20]~23_combout\ = (\Add0~40_combout\ & ((!\count[20]~29_combout\) # (!count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datac => \count[20]~29_combout\,
	datad => \Add0~40_combout\,
	combout => \count[20]~23_combout\);

-- Location: LCCOMB_X12_Y6_N16
\count[20]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[20]~24_combout\ = (count(22) & ((count(20)) # ((\count[22]~4_combout\ & \count[20]~23_combout\)))) # (!count(22) & (\count[22]~4_combout\ & ((\count[20]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => \count[22]~4_combout\,
	datac => count(20),
	datad => \count[20]~23_combout\,
	combout => \count[20]~24_combout\);

-- Location: LCFF_X12_Y6_N17
\count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[20]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(20));

-- Location: LCCOMB_X13_Y6_N6
\LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (!count(20) & (((\LessThan1~6_combout\) # (!count(18))) # (!count(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datab => count(20),
	datac => count(18),
	datad => \LessThan1~6_combout\,
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X15_Y5_N20
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (count(21) & (!\Add0~41\)) # (!count(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X14_Y6_N16
\count[21]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[21]~28_combout\ = (count(22) & ((count(21)) # ((\LessThan1~7_combout\ & \Add0~42_combout\)))) # (!count(22) & (((\Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => \LessThan1~7_combout\,
	datac => count(21),
	datad => \Add0~42_combout\,
	combout => \count[21]~28_combout\);

-- Location: LCFF_X14_Y6_N17
\count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(21));

-- Location: LCCOMB_X13_Y6_N24
\count[18]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[18]~9_combout\ = (\Add0~36_combout\ & (((\LessThan1~7_combout\ & !count(21))) # (!count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~7_combout\,
	datab => count(22),
	datac => count(21),
	datad => \Add0~36_combout\,
	combout => \count[18]~9_combout\);

-- Location: LCFF_X13_Y6_N25
\count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[18]~9_combout\,
	ena => \count[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(18));

-- Location: LCCOMB_X12_Y6_N30
\LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (count(18) & count(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => count(19),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X12_Y6_N22
\op~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \op~8_combout\ = (!count(20) & (((\LessThan2~0_combout\ & \LessThan2~4_combout\)) # (!\LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datab => \LessThan1~3_combout\,
	datac => \LessThan2~0_combout\,
	datad => \LessThan2~4_combout\,
	combout => \op~8_combout\);

-- Location: LCCOMB_X15_Y5_N22
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = \Add0~43\ $ (!count(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(22),
	cin => \Add0~43\,
	combout => \Add0~44_combout\);

-- Location: LCCOMB_X12_Y6_N10
\count[22]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[22]~26_combout\ = (count(22) & ((count(21)) # ((\LessThan1~7_combout\ & \Add0~44_combout\)))) # (!count(22) & (((\Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => count(22),
	datac => \LessThan1~7_combout\,
	datad => \Add0~44_combout\,
	combout => \count[22]~26_combout\);

-- Location: LCCOMB_X12_Y6_N18
\count[22]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[22]~27_combout\ = (\count[22]~26_combout\) # ((!\LessThan1~7_combout\ & (!\op~8_combout\ & count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~7_combout\,
	datab => \op~8_combout\,
	datac => count(22),
	datad => \count[22]~26_combout\,
	combout => \count[22]~27_combout\);

-- Location: LCFF_X12_Y6_N19
\count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[22]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(22));

-- Location: LCCOMB_X12_Y6_N26
\op~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \op~0_combout\ = (!count(13) & (!count(15) & (!count(14) & !count(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => count(15),
	datac => count(14),
	datad => count(16),
	combout => \op~0_combout\);

-- Location: LCCOMB_X12_Y6_N20
\op~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \op~1_combout\ = ((\op~0_combout\) # (!count(18))) # (!count(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datab => count(18),
	datad => \op~0_combout\,
	combout => \op~1_combout\);

-- Location: LCCOMB_X14_Y6_N0
\op~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \op~2_combout\ = ((!count(9) & ((!count(7)) # (!count(8))))) # (!count(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datab => count(10),
	datac => count(8),
	datad => count(7),
	combout => \op~2_combout\);

-- Location: LCCOMB_X14_Y6_N22
\op~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \op~4_combout\ = (\op~2_combout\) # ((\op~3_combout\ & ((\LessThan1~2_combout\) # (!count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~3_combout\,
	datab => \op~2_combout\,
	datac => count(0),
	datad => \LessThan1~2_combout\,
	combout => \op~4_combout\);

-- Location: LCCOMB_X12_Y6_N8
\op~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \op~6_combout\ = (\op~1_combout\) # ((\op~5_combout\ & (!count(11) & \op~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~5_combout\,
	datab => count(11),
	datac => \op~1_combout\,
	datad => \op~4_combout\,
	combout => \op~6_combout\);

-- Location: LCCOMB_X12_Y6_N24
\op~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \op~7_combout\ = (!count(20) & (!count(22) & (\op~6_combout\ & !count(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datab => count(22),
	datac => \op~6_combout\,
	datad => count(19),
	combout => \op~7_combout\);

-- Location: LCCOMB_X12_Y6_N12
\op~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \op~9_combout\ = (count(21) & (((\op~regout\)))) # (!count(21) & (!\LessThan1~7_combout\ & ((\op~8_combout\) # (\op~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => \op~8_combout\,
	datac => \op~regout\,
	datad => \LessThan1~7_combout\,
	combout => \op~9_combout\);

-- Location: LCCOMB_X12_Y6_N28
\op~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \op~10_combout\ = (\op~7_combout\) # ((count(22) & ((\op~9_combout\))) # (!count(22) & (!count(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => count(22),
	datac => \op~7_combout\,
	datad => \op~9_combout\,
	combout => \op~10_combout\);

-- Location: LCFF_X12_Y6_N29
op : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \op~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \op~regout\);

-- Location: CLKCTRL_G0
\op~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \op~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \op~clkctrl_outclk\);

-- Location: LCCOMB_X6_Y1_N8
\theCount[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \theCount[0]~15_combout\ = !theCount(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => theCount(0),
	combout => \theCount[0]~15_combout\);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PB~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PB,
	combout => \PB~combout\);

-- Location: LCFF_X6_Y1_N9
\theCount[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \op~clkctrl_outclk\,
	datain => \theCount[0]~15_combout\,
	aclr => \PB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => theCount(0));

-- Location: LCCOMB_X6_Y1_N12
\theCount[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \theCount[1]~5_combout\ = (theCount(1) & (theCount(0) $ (VCC))) # (!theCount(1) & (theCount(0) & VCC))
-- \theCount[1]~6\ = CARRY((theCount(1) & theCount(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => theCount(1),
	datab => theCount(0),
	datad => VCC,
	combout => \theCount[1]~5_combout\,
	cout => \theCount[1]~6\);

-- Location: LCCOMB_X6_Y1_N14
\theCount[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \theCount[2]~7_combout\ = (theCount(2) & (!\theCount[1]~6\)) # (!theCount(2) & ((\theCount[1]~6\) # (GND)))
-- \theCount[2]~8\ = CARRY((!\theCount[1]~6\) # (!theCount(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => theCount(2),
	datad => VCC,
	cin => \theCount[1]~6\,
	combout => \theCount[2]~7_combout\,
	cout => \theCount[2]~8\);

-- Location: LCFF_X6_Y1_N15
\theCount[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \op~clkctrl_outclk\,
	datain => \theCount[2]~7_combout\,
	aclr => \PB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => theCount(2));

-- Location: LCCOMB_X6_Y1_N16
\theCount[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \theCount[3]~9_combout\ = (theCount(3) & (\theCount[2]~8\ $ (GND))) # (!theCount(3) & (!\theCount[2]~8\ & VCC))
-- \theCount[3]~10\ = CARRY((theCount(3) & !\theCount[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => theCount(3),
	datad => VCC,
	cin => \theCount[2]~8\,
	combout => \theCount[3]~9_combout\,
	cout => \theCount[3]~10\);

-- Location: LCCOMB_X6_Y1_N18
\theCount[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \theCount[4]~11_combout\ = (theCount(4) & (!\theCount[3]~10\)) # (!theCount(4) & ((\theCount[3]~10\) # (GND)))
-- \theCount[4]~12\ = CARRY((!\theCount[3]~10\) # (!theCount(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => theCount(4),
	datad => VCC,
	cin => \theCount[3]~10\,
	combout => \theCount[4]~11_combout\,
	cout => \theCount[4]~12\);

-- Location: LCFF_X6_Y1_N19
\theCount[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \op~clkctrl_outclk\,
	datain => \theCount[4]~11_combout\,
	aclr => \PB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => theCount(4));

-- Location: LCCOMB_X6_Y1_N20
\theCount[5]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \theCount[5]~13_combout\ = theCount(5) $ (!\theCount[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => theCount(5),
	cin => \theCount[4]~12\,
	combout => \theCount[5]~13_combout\);

-- Location: LCFF_X6_Y1_N21
\theCount[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \op~clkctrl_outclk\,
	datain => \theCount[5]~13_combout\,
	aclr => \PB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => theCount(5));

-- Location: LCFF_X6_Y1_N17
\theCount[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \op~clkctrl_outclk\,
	datain => \theCount[3]~9_combout\,
	aclr => \PB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => theCount(3));

-- Location: LCFF_X6_Y1_N13
\theCount[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \op~clkctrl_outclk\,
	datain => \theCount[1]~5_combout\,
	aclr => \PB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => theCount(1));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => theCount(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED0);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => theCount(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED1);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => theCount(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED2);

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => theCount(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED3);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => theCount(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED4);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED5~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => theCount(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED5);
END structure;


