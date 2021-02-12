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

-- DATE "01/27/2021 16:19:50"

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

ENTITY 	pwm IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	ena : IN std_logic;
	duty : IN std_logic_vector(7 DOWNTO 0);
	pwm_out : OUT std_logic_vector(0 DOWNTO 0);
	pwm_n_out : OUT std_logic_vector(0 DOWNTO 0)
	);
END pwm;

-- Design Ports Information
-- pwm_out[0]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pwm_n_out[0]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- duty[4]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- duty[6]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- duty[5]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- duty[7]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- duty[1]	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- duty[2]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- duty[3]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- duty[0]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ena	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF pwm IS
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
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_ena : std_logic;
SIGNAL ww_duty : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pwm_out : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_pwm_n_out : std_logic_vector(0 DOWNTO 0);
SIGNAL \reset_n~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \half_duty_new[1]~17_combout\ : std_logic;
SIGNAL \half_duty_new[2]~19_combout\ : std_logic;
SIGNAL \half_duty[0][1]~regout\ : std_logic;
SIGNAL \half_duty[0][2]~regout\ : std_logic;
SIGNAL \count[0][8]~regout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \count~5_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][5]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][8]~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][6]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][10]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][12]~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][11]~combout\ : std_logic;
SIGNAL \half_duty[0][1]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][8]~5_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][7]~7_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][6]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][9]~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][4]~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][7]~4_combout\ : std_logic;
SIGNAL \half_duty_new[0]~9_cout\ : std_logic;
SIGNAL \half_duty_new[0]~11_cout\ : std_logic;
SIGNAL \half_duty_new[0]~13_cout\ : std_logic;
SIGNAL \half_duty_new[0]~15\ : std_logic;
SIGNAL \half_duty_new[1]~18\ : std_logic;
SIGNAL \half_duty_new[2]~20\ : std_logic;
SIGNAL \half_duty_new[3]~21_combout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \ena~combout\ : std_logic;
SIGNAL \half_duty_new[1]~16_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \count[0][0]~regout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \count[0][5]~regout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \count[0][6]~regout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \count~4_combout\ : std_logic;
SIGNAL \count[0][7]~regout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \count[0][4]~regout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \count[0][3]~regout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \count[0][2]~regout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \half_duty[0][0]~0_combout\ : std_logic;
SIGNAL \half_duty[0][3]~regout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][11]~9_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][10]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][9]~8_combout\ : std_logic;
SIGNAL \half_duty_new[3]~22\ : std_logic;
SIGNAL \half_duty_new[4]~24\ : std_logic;
SIGNAL \half_duty_new[5]~26\ : std_logic;
SIGNAL \half_duty_new[6]~27_combout\ : std_logic;
SIGNAL \half_duty[0][6]~regout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][12]~10_combout\ : std_logic;
SIGNAL \half_duty_new[6]~28\ : std_logic;
SIGNAL \half_duty_new[7]~29_combout\ : std_logic;
SIGNAL \half_duty[0][7]~regout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \half_duty_new[5]~25_combout\ : std_logic;
SIGNAL \half_duty[0][5]~regout\ : std_logic;
SIGNAL \half_duty_new[4]~23_combout\ : std_logic;
SIGNAL \half_duty[0][4]~regout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \half_duty_new[0]~14_combout\ : std_logic;
SIGNAL \half_duty[0][0]~feeder_combout\ : std_logic;
SIGNAL \half_duty[0][0]~regout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \count[0][1]~regout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \pwm_out[0]~1_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \pwm_out[0]~0_combout\ : std_logic;
SIGNAL \pwm_out[0]~reg0_regout\ : std_logic;
SIGNAL \pwm_n_out[0]~reg0_regout\ : std_logic;
SIGNAL \duty~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL half_duty_new : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_ena <= ena;
ww_duty <= duty;
pwm_out <= ww_pwm_out;
pwm_n_out <= ww_pwm_n_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset_n~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset_n~combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_reset_n~clkctrl_outclk\ <= NOT \reset_n~clkctrl_outclk\;

-- Location: LCCOMB_X7_Y7_N12
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\half_duty[0][1]~regout\ & (!\half_duty[0][0]~regout\ & VCC)) # (!\half_duty[0][1]~regout\ & (\half_duty[0][0]~regout\ $ (GND)))
-- \Add1~1\ = CARRY((!\half_duty[0][1]~regout\ & !\half_duty[0][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \half_duty[0][1]~regout\,
	datab => \half_duty[0][0]~regout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCFF_X4_Y6_N13
\half_duty_new[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \half_duty_new[1]~17_combout\,
	ena => \half_duty_new[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => half_duty_new(1));

-- Location: LCFF_X4_Y6_N15
\half_duty_new[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \half_duty_new[2]~19_combout\,
	ena => \half_duty_new[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => half_duty_new(2));

-- Location: LCCOMB_X9_Y7_N18
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\count[0][7]~regout\ & (!\Add0~13\)) # (!\count[0][7]~regout\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\count[0][7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][7]~regout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X9_Y7_N20
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = \Add0~15\ $ (!\count[0][8]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \count[0][8]~regout\,
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X4_Y6_N12
\half_duty_new[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \half_duty_new[1]~17_combout\ = ((\Mult0|mult_core|romout[0][10]~combout\ $ (\Mult0|mult_core|romout[1][6]~combout\ $ (!\half_duty_new[0]~15\)))) # (GND)
-- \half_duty_new[1]~18\ = CARRY((\Mult0|mult_core|romout[0][10]~combout\ & ((\Mult0|mult_core|romout[1][6]~combout\) # (!\half_duty_new[0]~15\))) # (!\Mult0|mult_core|romout[0][10]~combout\ & (\Mult0|mult_core|romout[1][6]~combout\ & 
-- !\half_duty_new[0]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][10]~combout\,
	datab => \Mult0|mult_core|romout[1][6]~combout\,
	datad => VCC,
	cin => \half_duty_new[0]~15\,
	combout => \half_duty_new[1]~17_combout\,
	cout => \half_duty_new[1]~18\);

-- Location: LCCOMB_X4_Y6_N14
\half_duty_new[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \half_duty_new[2]~19_combout\ = (\Mult0|mult_core|romout[0][11]~combout\ & ((\Mult0|mult_core|romout[1][7]~7_combout\ & (\half_duty_new[1]~18\ & VCC)) # (!\Mult0|mult_core|romout[1][7]~7_combout\ & (!\half_duty_new[1]~18\)))) # 
-- (!\Mult0|mult_core|romout[0][11]~combout\ & ((\Mult0|mult_core|romout[1][7]~7_combout\ & (!\half_duty_new[1]~18\)) # (!\Mult0|mult_core|romout[1][7]~7_combout\ & ((\half_duty_new[1]~18\) # (GND)))))
-- \half_duty_new[2]~20\ = CARRY((\Mult0|mult_core|romout[0][11]~combout\ & (!\Mult0|mult_core|romout[1][7]~7_combout\ & !\half_duty_new[1]~18\)) # (!\Mult0|mult_core|romout[0][11]~combout\ & ((!\half_duty_new[1]~18\) # 
-- (!\Mult0|mult_core|romout[1][7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][11]~combout\,
	datab => \Mult0|mult_core|romout[1][7]~7_combout\,
	datad => VCC,
	cin => \half_duty_new[1]~18\,
	combout => \half_duty_new[2]~19_combout\,
	cout => \half_duty_new[2]~20\);

-- Location: LCFF_X7_Y7_N11
\half_duty[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \half_duty[0][1]~feeder_combout\,
	ena => \half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \half_duty[0][1]~regout\);

-- Location: LCFF_X7_Y7_N13
\half_duty[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => half_duty_new(2),
	sload => VCC,
	ena => \half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \half_duty[0][2]~regout\);

-- Location: LCFF_X8_Y7_N13
\count[0][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count~5_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[0][8]~regout\);

-- Location: LCCOMB_X7_Y7_N0
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\count[0][1]~regout\ & (\Add1~0_combout\ & (\count[0][0]~regout\ $ (!\half_duty[0][0]~regout\)))) # (!\count[0][1]~regout\ & (!\Add1~0_combout\ & (\count[0][0]~regout\ $ (!\half_duty[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][1]~regout\,
	datab => \count[0][0]~regout\,
	datac => \half_duty[0][0]~regout\,
	datad => \Add1~0_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X8_Y7_N12
\count~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \count~5_combout\ = (\Add0~16_combout\ & (((!\Equal0~0_combout\) # (!\count[0][0]~regout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \count[0][0]~regout\,
	datac => \Equal0~0_combout\,
	datad => \Add0~16_combout\,
	combout => \count~5_combout\);

-- Location: LCCOMB_X5_Y6_N16
\Mult0|mult_core|romout[1][5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][5]~0_combout\ = \duty~combout\(5) $ (\duty~combout\(7) $ (((!\duty~combout\(6) & \duty~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty~combout\(6),
	datab => \duty~combout\(5),
	datac => \duty~combout\(4),
	datad => \duty~combout\(7),
	combout => \Mult0|mult_core|romout[1][5]~0_combout\);

-- Location: LCCOMB_X3_Y6_N14
\Mult0|mult_core|romout[0][8]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][8]~3_combout\ = (\duty~combout\(1)) # ((\duty~combout\(0)) # ((\duty~combout\(2)) # (\duty~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty~combout\(1),
	datab => \duty~combout\(0),
	datac => \duty~combout\(2),
	datad => \duty~combout\(3),
	combout => \Mult0|mult_core|romout[0][8]~3_combout\);

-- Location: LCCOMB_X3_Y6_N30
\Mult0|mult_core|romout[0][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][6]~combout\ = (\duty~combout\(1) & ((\duty~combout\(2) & ((\duty~combout\(3)))) # (!\duty~combout\(2) & ((\duty~combout\(0)) # (!\duty~combout\(3)))))) # (!\duty~combout\(1) & ((\duty~combout\(2)) # ((\duty~combout\(0) & 
-- !\duty~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty~combout\(1),
	datab => \duty~combout\(0),
	datac => \duty~combout\(2),
	datad => \duty~combout\(3),
	combout => \Mult0|mult_core|romout[0][6]~combout\);

-- Location: LCCOMB_X3_Y6_N0
\Mult0|mult_core|romout[0][10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][10]~combout\ = (\duty~combout\(1) & (\duty~combout\(0))) # (!\duty~combout\(1) & (!\duty~combout\(0) & ((\duty~combout\(2)) # (\duty~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty~combout\(1),
	datab => \duty~combout\(0),
	datac => \duty~combout\(2),
	datad => \duty~combout\(3),
	combout => \Mult0|mult_core|romout[0][10]~combout\);

-- Location: LCCOMB_X3_Y6_N10
\Mult0|mult_core|romout[0][12]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][12]~6_combout\ = (\duty~combout\(3) & ((\duty~combout\(1)) # ((\duty~combout\(0)) # (\duty~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty~combout\(1),
	datab => \duty~combout\(0),
	datac => \duty~combout\(2),
	datad => \duty~combout\(3),
	combout => \Mult0|mult_core|romout[0][12]~6_combout\);

-- Location: LCCOMB_X3_Y6_N12
\Mult0|mult_core|romout[0][11]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][11]~combout\ = (\duty~combout\(1) & (((\duty~combout\(2))))) # (!\duty~combout\(1) & ((\duty~combout\(0) & (\duty~combout\(2))) # (!\duty~combout\(0) & (!\duty~combout\(2) & \duty~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty~combout\(1),
	datab => \duty~combout\(0),
	datac => \duty~combout\(2),
	datad => \duty~combout\(3),
	combout => \Mult0|mult_core|romout[0][11]~combout\);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\duty[1]~I\ : cycloneii_io
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
	padio => ww_duty(1),
	combout => \duty~combout\(1));

-- Location: LCCOMB_X7_Y7_N10
\half_duty[0][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \half_duty[0][1]~feeder_combout\ = half_duty_new(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => half_duty_new(1),
	combout => \half_duty[0][1]~feeder_combout\);

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

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\duty[5]~I\ : cycloneii_io
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
	padio => ww_duty(5),
	combout => \duty~combout\(5));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\duty[4]~I\ : cycloneii_io
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
	padio => ww_duty(4),
	combout => \duty~combout\(4));

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\duty[7]~I\ : cycloneii_io
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
	padio => ww_duty(7),
	combout => \duty~combout\(7));

-- Location: LCCOMB_X5_Y6_N12
\Mult0|mult_core|romout[1][8]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][8]~5_combout\ = (\duty~combout\(6)) # ((\duty~combout\(5)) # ((\duty~combout\(4)) # (\duty~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty~combout\(6),
	datab => \duty~combout\(5),
	datac => \duty~combout\(4),
	datad => \duty~combout\(7),
	combout => \Mult0|mult_core|romout[1][8]~5_combout\);

-- Location: LCCOMB_X5_Y6_N18
\Mult0|mult_core|romout[1][7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][7]~7_combout\ = (\duty~combout\(6) & (((!\duty~combout\(7))))) # (!\duty~combout\(6) & ((\duty~combout\(5) & ((!\duty~combout\(7)) # (!\duty~combout\(4)))) # (!\duty~combout\(5) & ((\duty~combout\(4)) # (\duty~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty~combout\(6),
	datab => \duty~combout\(5),
	datac => \duty~combout\(4),
	datad => \duty~combout\(7),
	combout => \Mult0|mult_core|romout[1][7]~7_combout\);

-- Location: LCCOMB_X5_Y6_N10
\Mult0|mult_core|romout[1][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][6]~combout\ = (\duty~combout\(6) & (((\duty~combout\(7))) # (!\duty~combout\(5)))) # (!\duty~combout\(6) & ((\duty~combout\(5) & ((\duty~combout\(4)) # (!\duty~combout\(7)))) # (!\duty~combout\(5) & (\duty~combout\(4) & 
-- !\duty~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty~combout\(6),
	datab => \duty~combout\(5),
	datac => \duty~combout\(4),
	datad => \duty~combout\(7),
	combout => \Mult0|mult_core|romout[1][6]~combout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\duty[0]~I\ : cycloneii_io
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
	padio => ww_duty(0),
	combout => \duty~combout\(0));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\duty[2]~I\ : cycloneii_io
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
	padio => ww_duty(2),
	combout => \duty~combout\(2));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\duty[3]~I\ : cycloneii_io
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
	padio => ww_duty(3),
	combout => \duty~combout\(3));

-- Location: LCCOMB_X3_Y6_N16
\Mult0|mult_core|romout[0][9]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][9]~1_combout\ = (!\duty~combout\(0) & ((\duty~combout\(1)) # ((\duty~combout\(2)) # (\duty~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty~combout\(1),
	datab => \duty~combout\(0),
	datac => \duty~combout\(2),
	datad => \duty~combout\(3),
	combout => \Mult0|mult_core|romout[0][9]~1_combout\);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\duty[6]~I\ : cycloneii_io
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
	padio => ww_duty(6),
	combout => \duty~combout\(6));

-- Location: LCCOMB_X5_Y6_N14
\Mult0|mult_core|romout[1][4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][4]~2_combout\ = \duty~combout\(4) $ (\duty~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \duty~combout\(4),
	datac => \duty~combout\(6),
	combout => \Mult0|mult_core|romout[1][4]~2_combout\);

-- Location: LCCOMB_X3_Y6_N4
\Mult0|mult_core|romout[0][7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][7]~4_combout\ = (\duty~combout\(2) & (((!\duty~combout\(3))))) # (!\duty~combout\(2) & ((\duty~combout\(1) & ((!\duty~combout\(3)) # (!\duty~combout\(0)))) # (!\duty~combout\(1) & ((\duty~combout\(0)) # (\duty~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty~combout\(1),
	datab => \duty~combout\(0),
	datac => \duty~combout\(2),
	datad => \duty~combout\(3),
	combout => \Mult0|mult_core|romout[0][7]~4_combout\);

-- Location: LCCOMB_X4_Y6_N4
\half_duty_new[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \half_duty_new[0]~9_cout\ = CARRY((\Mult0|mult_core|romout[0][6]~combout\ & \duty~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][6]~combout\,
	datab => \duty~combout\(4),
	datad => VCC,
	cout => \half_duty_new[0]~9_cout\);

-- Location: LCCOMB_X4_Y6_N6
\half_duty_new[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \half_duty_new[0]~11_cout\ = CARRY((\duty~combout\(5) & (!\Mult0|mult_core|romout[0][7]~4_combout\ & !\half_duty_new[0]~9_cout\)) # (!\duty~combout\(5) & ((!\half_duty_new[0]~9_cout\) # (!\Mult0|mult_core|romout[0][7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duty~combout\(5),
	datab => \Mult0|mult_core|romout[0][7]~4_combout\,
	datad => VCC,
	cin => \half_duty_new[0]~9_cout\,
	cout => \half_duty_new[0]~11_cout\);

-- Location: LCCOMB_X4_Y6_N8
\half_duty_new[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \half_duty_new[0]~13_cout\ = CARRY((\Mult0|mult_core|romout[0][8]~3_combout\ & ((\Mult0|mult_core|romout[1][4]~2_combout\) # (!\half_duty_new[0]~11_cout\))) # (!\Mult0|mult_core|romout[0][8]~3_combout\ & (\Mult0|mult_core|romout[1][4]~2_combout\ & 
-- !\half_duty_new[0]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][8]~3_combout\,
	datab => \Mult0|mult_core|romout[1][4]~2_combout\,
	datad => VCC,
	cin => \half_duty_new[0]~11_cout\,
	cout => \half_duty_new[0]~13_cout\);

-- Location: LCCOMB_X4_Y6_N10
\half_duty_new[0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \half_duty_new[0]~14_combout\ = (\Mult0|mult_core|romout[1][5]~0_combout\ & ((\Mult0|mult_core|romout[0][9]~1_combout\ & (\half_duty_new[0]~13_cout\ & VCC)) # (!\Mult0|mult_core|romout[0][9]~1_combout\ & (!\half_duty_new[0]~13_cout\)))) # 
-- (!\Mult0|mult_core|romout[1][5]~0_combout\ & ((\Mult0|mult_core|romout[0][9]~1_combout\ & (!\half_duty_new[0]~13_cout\)) # (!\Mult0|mult_core|romout[0][9]~1_combout\ & ((\half_duty_new[0]~13_cout\) # (GND)))))
-- \half_duty_new[0]~15\ = CARRY((\Mult0|mult_core|romout[1][5]~0_combout\ & (!\Mult0|mult_core|romout[0][9]~1_combout\ & !\half_duty_new[0]~13_cout\)) # (!\Mult0|mult_core|romout[1][5]~0_combout\ & ((!\half_duty_new[0]~13_cout\) # 
-- (!\Mult0|mult_core|romout[0][9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][5]~0_combout\,
	datab => \Mult0|mult_core|romout[0][9]~1_combout\,
	datad => VCC,
	cin => \half_duty_new[0]~13_cout\,
	combout => \half_duty_new[0]~14_combout\,
	cout => \half_duty_new[0]~15\);

-- Location: LCCOMB_X4_Y6_N16
\half_duty_new[3]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \half_duty_new[3]~21_combout\ = ((\Mult0|mult_core|romout[0][12]~6_combout\ $ (\Mult0|mult_core|romout[1][8]~5_combout\ $ (!\half_duty_new[2]~20\)))) # (GND)
-- \half_duty_new[3]~22\ = CARRY((\Mult0|mult_core|romout[0][12]~6_combout\ & ((\Mult0|mult_core|romout[1][8]~5_combout\) # (!\half_duty_new[2]~20\))) # (!\Mult0|mult_core|romout[0][12]~6_combout\ & (\Mult0|mult_core|romout[1][8]~5_combout\ & 
-- !\half_duty_new[2]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][12]~6_combout\,
	datab => \Mult0|mult_core|romout[1][8]~5_combout\,
	datad => VCC,
	cin => \half_duty_new[2]~20\,
	combout => \half_duty_new[3]~21_combout\,
	cout => \half_duty_new[3]~22\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_n~I\ : cycloneii_io
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
	padio => ww_reset_n,
	combout => \reset_n~combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ena~I\ : cycloneii_io
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
	padio => ww_ena,
	combout => \ena~combout\);

-- Location: LCCOMB_X5_Y6_N4
\half_duty_new[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \half_duty_new[1]~16_combout\ = (\reset_n~combout\ & \ena~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_n~combout\,
	datad => \ena~combout\,
	combout => \half_duty_new[1]~16_combout\);

-- Location: LCFF_X4_Y6_N17
\half_duty_new[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \half_duty_new[3]~21_combout\,
	ena => \half_duty_new[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => half_duty_new(3));

-- Location: LCCOMB_X9_Y7_N4
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \count[0][0]~regout\ $ (VCC)
-- \Add0~1\ = CARRY(\count[0][0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count[0][0]~regout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: CLKCTRL_G1
\reset_n~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~clkctrl_outclk\);

-- Location: LCFF_X8_Y7_N29
\count[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[0][0]~regout\);

-- Location: LCCOMB_X9_Y7_N6
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\count[0][1]~regout\ & (!\Add0~1\)) # (!\count[0][1]~regout\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\count[0][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][1]~regout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X9_Y7_N8
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\count[0][2]~regout\ & (\Add0~3\ $ (GND))) # (!\count[0][2]~regout\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\count[0][2]~regout\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][2]~regout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X9_Y7_N10
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\count[0][3]~regout\ & (!\Add0~5\)) # (!\count[0][3]~regout\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\count[0][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][3]~regout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X9_Y7_N12
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\count[0][4]~regout\ & (\Add0~7\ $ (GND))) # (!\count[0][4]~regout\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\count[0][4]~regout\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[0][4]~regout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X9_Y7_N14
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\count[0][5]~regout\ & (!\Add0~9\)) # (!\count[0][5]~regout\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\count[0][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[0][5]~regout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X8_Y7_N24
\count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (\Add0~10_combout\ & (((!\Equal0~1_combout\) # (!\Equal0~0_combout\)) # (!\count[0][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][0]~regout\,
	datab => \Add0~10_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \count~2_combout\);

-- Location: LCFF_X8_Y7_N25
\count[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[0][5]~regout\);

-- Location: LCCOMB_X9_Y7_N16
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\count[0][6]~regout\ & (\Add0~11\ $ (GND))) # (!\count[0][6]~regout\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\count[0][6]~regout\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][6]~regout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X8_Y7_N0
\count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \count~3_combout\ = (\Add0~12_combout\ & (((!\Equal0~1_combout\) # (!\count[0][0]~regout\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \count[0][0]~regout\,
	datac => \Add0~12_combout\,
	datad => \Equal0~1_combout\,
	combout => \count~3_combout\);

-- Location: LCFF_X8_Y7_N1
\count[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count~3_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[0][6]~regout\);

-- Location: LCCOMB_X8_Y7_N30
\count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \count~4_combout\ = (\Add0~14_combout\ & (((!\Equal0~0_combout\) # (!\count[0][0]~regout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \count[0][0]~regout\,
	datac => \Equal0~0_combout\,
	datad => \Add0~14_combout\,
	combout => \count~4_combout\);

-- Location: LCFF_X8_Y7_N31
\count[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count~4_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[0][7]~regout\);

-- Location: LCCOMB_X8_Y7_N20
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\count[0][8]~regout\ & (\count[0][6]~regout\ & (\count[0][5]~regout\ & \count[0][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][8]~regout\,
	datab => \count[0][6]~regout\,
	datac => \count[0][5]~regout\,
	datad => \count[0][7]~regout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X8_Y7_N18
\count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (\Add0~8_combout\ & (((!\Equal0~1_combout\) # (!\Equal0~0_combout\)) # (!\count[0][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][0]~regout\,
	datab => \Add0~8_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \count~1_combout\);

-- Location: LCFF_X8_Y7_N19
\count[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[0][4]~regout\);

-- Location: LCFF_X9_Y7_N11
\count[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~6_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[0][3]~regout\);

-- Location: LCCOMB_X8_Y7_N2
\count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (\Add0~4_combout\ & (((!\Equal0~1_combout\) # (!\Equal0~0_combout\)) # (!\count[0][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][0]~regout\,
	datab => \Add0~4_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \count~0_combout\);

-- Location: LCFF_X8_Y7_N3
\count[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[0][2]~regout\);

-- Location: LCCOMB_X8_Y7_N10
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\count[0][1]~regout\ & (\count[0][4]~regout\ & (!\count[0][3]~regout\ & !\count[0][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][1]~regout\,
	datab => \count[0][4]~regout\,
	datac => \count[0][3]~regout\,
	datad => \count[0][2]~regout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X7_Y7_N6
\half_duty[0][0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \half_duty[0][0]~0_combout\ = (\reset_n~combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & \count[0][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \count[0][0]~regout\,
	combout => \half_duty[0][0]~0_combout\);

-- Location: LCFF_X7_Y7_N17
\half_duty[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => half_duty_new(3),
	sload => VCC,
	ena => \half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \half_duty[0][3]~regout\);

-- Location: LCCOMB_X8_Y7_N8
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\half_duty[0][2]~regout\ & (\count[0][2]~regout\ & (\half_duty[0][3]~regout\ $ (!\count[0][3]~regout\)))) # (!\half_duty[0][2]~regout\ & (!\count[0][2]~regout\ & (\half_duty[0][3]~regout\ $ (!\count[0][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \half_duty[0][2]~regout\,
	datab => \half_duty[0][3]~regout\,
	datac => \count[0][3]~regout\,
	datad => \count[0][2]~regout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X5_Y6_N24
\Mult0|mult_core|romout[1][11]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][11]~9_combout\ = (\duty~combout\(6) & ((\duty~combout\(5)) # ((\duty~combout\(4))))) # (!\duty~combout\(6) & (!\duty~combout\(5) & (!\duty~combout\(4) & \duty~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty~combout\(6),
	datab => \duty~combout\(5),
	datac => \duty~combout\(4),
	datad => \duty~combout\(7),
	combout => \Mult0|mult_core|romout[1][11]~9_combout\);

-- Location: LCCOMB_X5_Y6_N8
\Mult0|mult_core|romout[1][10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][10]~combout\ = (\duty~combout\(5) & (((\duty~combout\(4))))) # (!\duty~combout\(5) & (!\duty~combout\(4) & ((\duty~combout\(6)) # (\duty~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty~combout\(6),
	datab => \duty~combout\(5),
	datac => \duty~combout\(4),
	datad => \duty~combout\(7),
	combout => \Mult0|mult_core|romout[1][10]~combout\);

-- Location: LCCOMB_X5_Y6_N22
\Mult0|mult_core|romout[1][9]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][9]~8_combout\ = (!\duty~combout\(4) & ((\duty~combout\(6)) # ((\duty~combout\(5)) # (\duty~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty~combout\(6),
	datab => \duty~combout\(5),
	datac => \duty~combout\(4),
	datad => \duty~combout\(7),
	combout => \Mult0|mult_core|romout[1][9]~8_combout\);

-- Location: LCCOMB_X4_Y6_N18
\half_duty_new[4]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \half_duty_new[4]~23_combout\ = (\Mult0|mult_core|romout[1][9]~8_combout\ & (!\half_duty_new[3]~22\)) # (!\Mult0|mult_core|romout[1][9]~8_combout\ & ((\half_duty_new[3]~22\) # (GND)))
-- \half_duty_new[4]~24\ = CARRY((!\half_duty_new[3]~22\) # (!\Mult0|mult_core|romout[1][9]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[1][9]~8_combout\,
	datad => VCC,
	cin => \half_duty_new[3]~22\,
	combout => \half_duty_new[4]~23_combout\,
	cout => \half_duty_new[4]~24\);

-- Location: LCCOMB_X4_Y6_N20
\half_duty_new[5]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \half_duty_new[5]~25_combout\ = (\Mult0|mult_core|romout[1][10]~combout\ & (\half_duty_new[4]~24\ $ (GND))) # (!\Mult0|mult_core|romout[1][10]~combout\ & (!\half_duty_new[4]~24\ & VCC))
-- \half_duty_new[5]~26\ = CARRY((\Mult0|mult_core|romout[1][10]~combout\ & !\half_duty_new[4]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[1][10]~combout\,
	datad => VCC,
	cin => \half_duty_new[4]~24\,
	combout => \half_duty_new[5]~25_combout\,
	cout => \half_duty_new[5]~26\);

-- Location: LCCOMB_X4_Y6_N22
\half_duty_new[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \half_duty_new[6]~27_combout\ = (\Mult0|mult_core|romout[1][11]~9_combout\ & (!\half_duty_new[5]~26\)) # (!\Mult0|mult_core|romout[1][11]~9_combout\ & ((\half_duty_new[5]~26\) # (GND)))
-- \half_duty_new[6]~28\ = CARRY((!\half_duty_new[5]~26\) # (!\Mult0|mult_core|romout[1][11]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[1][11]~9_combout\,
	datad => VCC,
	cin => \half_duty_new[5]~26\,
	combout => \half_duty_new[6]~27_combout\,
	cout => \half_duty_new[6]~28\);

-- Location: LCFF_X4_Y6_N23
\half_duty_new[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \half_duty_new[6]~27_combout\,
	ena => \half_duty_new[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => half_duty_new(6));

-- Location: LCFF_X7_Y7_N23
\half_duty[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => half_duty_new(6),
	sload => VCC,
	ena => \half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \half_duty[0][6]~regout\);

-- Location: LCCOMB_X5_Y6_N30
\Mult0|mult_core|romout[1][12]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][12]~10_combout\ = (\duty~combout\(7) & ((\duty~combout\(6)) # ((\duty~combout\(5)) # (\duty~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty~combout\(6),
	datab => \duty~combout\(5),
	datac => \duty~combout\(4),
	datad => \duty~combout\(7),
	combout => \Mult0|mult_core|romout[1][12]~10_combout\);

-- Location: LCCOMB_X4_Y6_N24
\half_duty_new[7]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \half_duty_new[7]~29_combout\ = \half_duty_new[6]~28\ $ (!\Mult0|mult_core|romout[1][12]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|mult_core|romout[1][12]~10_combout\,
	cin => \half_duty_new[6]~28\,
	combout => \half_duty_new[7]~29_combout\);

-- Location: LCFF_X4_Y6_N25
\half_duty_new[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \half_duty_new[7]~29_combout\,
	ena => \half_duty_new[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => half_duty_new(7));

-- Location: LCFF_X7_Y7_N25
\half_duty[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => half_duty_new(7),
	sload => VCC,
	ena => \half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \half_duty[0][7]~regout\);

-- Location: LCCOMB_X8_Y7_N4
\Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = \count[0][7]~regout\ $ (\half_duty[0][7]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count[0][7]~regout\,
	datad => \half_duty[0][7]~regout\,
	combout => \Equal1~3_combout\);

-- Location: LCFF_X4_Y6_N21
\half_duty_new[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \half_duty_new[5]~25_combout\,
	ena => \half_duty_new[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => half_duty_new(5));

-- Location: LCFF_X7_Y7_N21
\half_duty[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => half_duty_new(5),
	sload => VCC,
	ena => \half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \half_duty[0][5]~regout\);

-- Location: LCFF_X4_Y6_N19
\half_duty_new[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \half_duty_new[4]~23_combout\,
	ena => \half_duty_new[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => half_duty_new(4));

-- Location: LCFF_X7_Y7_N19
\half_duty[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => half_duty_new(4),
	sload => VCC,
	ena => \half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \half_duty[0][4]~regout\);

-- Location: LCCOMB_X8_Y7_N22
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\count[0][5]~regout\ & (\half_duty[0][5]~regout\ & (\count[0][4]~regout\ $ (!\half_duty[0][4]~regout\)))) # (!\count[0][5]~regout\ & (!\half_duty[0][5]~regout\ & (\count[0][4]~regout\ $ (!\half_duty[0][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][5]~regout\,
	datab => \count[0][4]~regout\,
	datac => \half_duty[0][5]~regout\,
	datad => \half_duty[0][4]~regout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X8_Y7_N14
\Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (!\Equal1~3_combout\ & (\Equal1~2_combout\ & (\count[0][6]~regout\ $ (!\half_duty[0][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][6]~regout\,
	datab => \half_duty[0][6]~regout\,
	datac => \Equal1~3_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCFF_X4_Y6_N11
\half_duty_new[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \half_duty_new[0]~14_combout\,
	ena => \half_duty_new[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => half_duty_new(0));

-- Location: LCCOMB_X7_Y7_N28
\half_duty[0][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \half_duty[0][0]~feeder_combout\ = half_duty_new(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => half_duty_new(0),
	combout => \half_duty[0][0]~feeder_combout\);

-- Location: LCFF_X7_Y7_N29
\half_duty[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \half_duty[0][0]~feeder_combout\,
	ena => \half_duty[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \half_duty[0][0]~regout\);

-- Location: LCFF_X9_Y7_N7
\count[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[0][1]~regout\);

-- Location: LCCOMB_X8_Y7_N28
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\half_duty[0][1]~regout\ & (\count[0][1]~regout\ & (\half_duty[0][0]~regout\ $ (!\count[0][0]~regout\)))) # (!\half_duty[0][1]~regout\ & (!\count[0][1]~regout\ & (\half_duty[0][0]~regout\ $ (!\count[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \half_duty[0][1]~regout\,
	datab => \half_duty[0][0]~regout\,
	datac => \count[0][0]~regout\,
	datad => \count[0][1]~regout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X8_Y7_N26
\Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!\count[0][8]~regout\ & (\Equal1~1_combout\ & (\Equal1~4_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][8]~regout\,
	datab => \Equal1~1_combout\,
	datac => \Equal1~4_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X8_Y7_N16
\pwm_out[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_out[0]~1_combout\ = !\Equal1~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal1~5_combout\,
	combout => \pwm_out[0]~1_combout\);

-- Location: LCCOMB_X7_Y7_N14
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\half_duty[0][2]~regout\ & (!\Add1~1\)) # (!\half_duty[0][2]~regout\ & (\Add1~1\ & VCC))
-- \Add1~3\ = CARRY((\half_duty[0][2]~regout\ & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \half_duty[0][2]~regout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X7_Y7_N16
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\half_duty[0][3]~regout\ & (!\Add1~3\ & VCC)) # (!\half_duty[0][3]~regout\ & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((!\half_duty[0][3]~regout\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \half_duty[0][3]~regout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X7_Y7_N18
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\half_duty[0][4]~regout\ & (!\Add1~5\)) # (!\half_duty[0][4]~regout\ & (\Add1~5\ & VCC))
-- \Add1~7\ = CARRY((\half_duty[0][4]~regout\ & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \half_duty[0][4]~regout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X7_Y7_N20
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\half_duty[0][5]~regout\ & (\Add1~7\ $ (GND))) # (!\half_duty[0][5]~regout\ & ((GND) # (!\Add1~7\)))
-- \Add1~9\ = CARRY((!\Add1~7\) # (!\half_duty[0][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \half_duty[0][5]~regout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X7_Y7_N22
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\half_duty[0][6]~regout\ & (!\Add1~9\)) # (!\half_duty[0][6]~regout\ & (\Add1~9\ & VCC))
-- \Add1~11\ = CARRY((\half_duty[0][6]~regout\ & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \half_duty[0][6]~regout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X7_Y7_N24
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\half_duty[0][7]~regout\ & (\Add1~11\ $ (GND))) # (!\half_duty[0][7]~regout\ & ((GND) # (!\Add1~11\)))
-- \Add1~13\ = CARRY((!\Add1~11\) # (!\half_duty[0][7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \half_duty[0][7]~regout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X7_Y7_N26
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Add1~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X7_Y7_N2
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\count[0][2]~regout\ & (\Add1~2_combout\ & (\count[0][3]~regout\ $ (!\Add1~4_combout\)))) # (!\count[0][2]~regout\ & (!\Add1~2_combout\ & (\count[0][3]~regout\ $ (!\Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][2]~regout\,
	datab => \count[0][3]~regout\,
	datac => \Add1~2_combout\,
	datad => \Add1~4_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X7_Y7_N4
\Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (\count[0][4]~regout\ & (\Add1~6_combout\ & (\count[0][5]~regout\ $ (!\Add1~8_combout\)))) # (!\count[0][4]~regout\ & (!\Add1~6_combout\ & (\count[0][5]~regout\ $ (!\Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][4]~regout\,
	datab => \count[0][5]~regout\,
	datac => \Add1~8_combout\,
	datad => \Add1~6_combout\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X7_Y7_N30
\Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (\count[0][7]~regout\ & (\Add1~12_combout\ & (\count[0][6]~regout\ $ (!\Add1~10_combout\)))) # (!\count[0][7]~regout\ & (!\Add1~12_combout\ & (\count[0][6]~regout\ $ (!\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][7]~regout\,
	datab => \count[0][6]~regout\,
	datac => \Add1~12_combout\,
	datad => \Add1~10_combout\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X7_Y7_N8
\Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~0_combout\ & (\Equal2~1_combout\ & (\Equal2~2_combout\ & \Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal2~1_combout\,
	datac => \Equal2~2_combout\,
	datad => \Equal2~3_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X8_Y7_N6
\pwm_out[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_out[0]~0_combout\ = (\Equal1~5_combout\) # ((\Equal2~4_combout\ & (\count[0][8]~regout\ $ (!\Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][8]~regout\,
	datab => \Equal1~5_combout\,
	datac => \Add1~14_combout\,
	datad => \Equal2~4_combout\,
	combout => \pwm_out[0]~0_combout\);

-- Location: LCFF_X8_Y7_N17
\pwm_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pwm_out[0]~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \pwm_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_out[0]~reg0_regout\);

-- Location: LCFF_X8_Y7_N27
\pwm_n_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Equal1~5_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \pwm_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwm_n_out[0]~reg0_regout\);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pwm_out[0]~I\ : cycloneii_io
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
	datain => \pwm_out[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pwm_out(0));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pwm_n_out[0]~I\ : cycloneii_io
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
	datain => \pwm_n_out[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pwm_n_out(0));
END structure;


