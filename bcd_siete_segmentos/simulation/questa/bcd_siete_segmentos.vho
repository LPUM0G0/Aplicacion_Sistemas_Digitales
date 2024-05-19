-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "05/19/2024 05:51:36"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	bcd_siete_segmentos IS
    PORT (
	E : IN std_logic_vector(3 DOWNTO 0);
	B : BUFFER std_logic;
	C : BUFFER std_logic;
	D : BUFFER std_logic;
	N : BUFFER std_logic;
	H : BUFFER std_logic;
	I : BUFFER std_logic;
	J : BUFFER std_logic;
	L : BUFFER std_logic
	);
END bcd_siete_segmentos;

-- Design Ports Information


ARCHITECTURE structure OF bcd_siete_segmentos IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_E : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_N : std_logic;
SIGNAL ww_H : std_logic;
SIGNAL ww_I : std_logic;
SIGNAL ww_J : std_logic;
SIGNAL ww_L : std_logic;
SIGNAL \B~0_combout\ : std_logic;
SIGNAL \C~0_combout\ : std_logic;
SIGNAL \D~0_combout\ : std_logic;
SIGNAL \N~0_combout\ : std_logic;
SIGNAL \I~0_combout\ : std_logic;
SIGNAL \N~1_combout\ : std_logic;
SIGNAL \L~0_combout\ : std_logic;
SIGNAL \E~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_E <= E;
B <= ww_B;
C <= ww_C;
D <= ww_D;
N <= ww_N;
H <= ww_H;
I <= ww_I;
J <= ww_J;
L <= ww_L;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E(1),
	combout => \E~combout\(1));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E(0),
	combout => \E~combout\(0));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E(2),
	combout => \E~combout\(2));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E(3),
	combout => \E~combout\(3));

-- Location: LC_X4_Y1_N5
\B~0\ : maxii_lcell
-- Equation(s):
-- \B~0_combout\ = (\E~combout\(1)) # ((\E~combout\(3)) # (\E~combout\(0) $ (!\E~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffeb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\(1),
	datab => \E~combout\(0),
	datac => \E~combout\(2),
	datad => \E~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B~0_combout\);

-- Location: LC_X4_Y1_N6
\C~0\ : maxii_lcell
-- Equation(s):
-- \C~0_combout\ = (\E~combout\(1) $ ((!\E~combout\(0)))) # (!\E~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9f9f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\(1),
	datab => \E~combout\(0),
	datac => \E~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~0_combout\);

-- Location: LC_X4_Y1_N4
\D~0\ : maxii_lcell
-- Equation(s):
-- \D~0_combout\ = ((\E~combout\(0)) # ((\E~combout\(2)))) # (!\E~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdfd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\(1),
	datab => \E~combout\(0),
	datac => \E~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \D~0_combout\);

-- Location: LC_X4_Y1_N2
\N~0\ : maxii_lcell
-- Equation(s):
-- \N~0_combout\ = (\E~combout\(1) & (((!\E~combout\(2))) # (!\E~combout\(0)))) # (!\E~combout\(1) & (\E~combout\(0) $ ((!\E~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6b6b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\(1),
	datab => \E~combout\(0),
	datac => \E~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \N~0_combout\);

-- Location: LC_X4_Y1_N9
\I~0\ : maxii_lcell
-- Equation(s):
-- \I~0_combout\ = (\E~combout\(3)) # ((\E~combout\(1) & (!\E~combout\(0) & \E~combout\(2))) # (!\E~combout\(1) & ((\E~combout\(2)) # (!\E~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff71",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\(1),
	datab => \E~combout\(0),
	datac => \E~combout\(2),
	datad => \E~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I~0_combout\);

-- Location: LC_X4_Y1_N7
\N~1\ : maxii_lcell
-- Equation(s):
-- \N~1_combout\ = (!\E~combout\(0) & ((\E~combout\(1)) # ((!\E~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2323",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\(1),
	datab => \E~combout\(0),
	datac => \E~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \N~1_combout\);

-- Location: LC_X4_Y1_N8
\L~0\ : maxii_lcell
-- Equation(s):
-- \L~0_combout\ = (\E~combout\(3)) # ((\E~combout\(1) & ((!\E~combout\(2)) # (!\E~combout\(0)))) # (!\E~combout\(1) & ((\E~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff7a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\(1),
	datab => \E~combout\(0),
	datac => \E~combout\(2),
	datad => \E~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L~0_combout\);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\B~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \B~0_combout\,
	oe => VCC,
	padio => ww_B);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \C~0_combout\,
	oe => VCC,
	padio => ww_C);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \D~0_combout\,
	oe => VCC,
	padio => ww_D);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \N~0_combout\,
	oe => VCC,
	padio => ww_N);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\H~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_H);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\I~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I~0_combout\,
	oe => VCC,
	padio => ww_I);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\J~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \N~1_combout\,
	oe => VCC,
	padio => ww_J);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \L~0_combout\,
	oe => VCC,
	padio => ww_L);
END structure;


