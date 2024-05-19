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

-- DATE "04/24/2024 12:38:03"

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

ENTITY 	practica_dos IS
    PORT (
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	S1 : BUFFER std_logic;
	S2 : BUFFER std_logic;
	S3 : BUFFER std_logic;
	S4 : BUFFER std_logic
	);
END practica_dos;

-- Design Ports Information


ARCHITECTURE structure OF practica_dos IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_A4 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_S4 : std_logic;
SIGNAL \A0~combout\ : std_logic;
SIGNAL \A1~combout\ : std_logic;
SIGNAL \A4~combout\ : std_logic;
SIGNAL \A2~combout\ : std_logic;
SIGNAL \A3~combout\ : std_logic;
SIGNAL \S1~0_combout\ : std_logic;
SIGNAL \S1~1_combout\ : std_logic;
SIGNAL \S2~0_combout\ : std_logic;
SIGNAL \S3~0_combout\ : std_logic;
SIGNAL \S4~0_combout\ : std_logic;

BEGIN

ww_A0 <= A0;
ww_A1 <= A1;
ww_A2 <= A2;
ww_A3 <= A3;
ww_A4 <= A4;
S1 <= ww_S1;
S2 <= ww_S2;
S3 <= ww_S3;
S4 <= ww_S4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A0~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A0,
	combout => \A0~combout\);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A1,
	combout => \A1~combout\);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A4~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A4,
	combout => \A4~combout\);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A2,
	combout => \A2~combout\);

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A3~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A3,
	combout => \A3~combout\);

-- Location: LC_X4_Y2_N2
\S1~0\ : maxii_lcell
-- Equation(s):
-- \S1~0_combout\ = (\A4~combout\ & ((\A2~combout\ & ((\A3~combout\))) # (!\A2~combout\ & (!\A1~combout\ & !\A3~combout\)))) # (!\A4~combout\ & (\A1~combout\ $ ((\A2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d216",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1~combout\,
	datab => \A4~combout\,
	datac => \A2~combout\,
	datad => \A3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S1~0_combout\);

-- Location: LC_X4_Y2_N8
\S1~1\ : maxii_lcell
-- Equation(s):
-- \S1~1_combout\ = (\A0~combout\ & ((\S1~0_combout\) # ((\A1~combout\ & !\A3~combout\)))) # (!\A0~combout\ & (\S1~0_combout\ & (\A1~combout\ & !\A3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A0~combout\,
	datab => \S1~0_combout\,
	datac => \A1~combout\,
	datad => \A3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S1~1_combout\);

-- Location: LC_X4_Y2_N0
\S2~0\ : maxii_lcell
-- Equation(s):
-- \S2~0_combout\ = (\A2~combout\ & ((\A1~combout\) # ((\A4~combout\) # (\A3~combout\)))) # (!\A2~combout\ & (\A3~combout\ & ((\A1~combout\) # (\A4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fee0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1~combout\,
	datab => \A4~combout\,
	datac => \A2~combout\,
	datad => \A3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S2~0_combout\);

-- Location: LC_X4_Y2_N5
\S3~0\ : maxii_lcell
-- Equation(s):
-- \S3~0_combout\ = \A1~combout\ $ (\A4~combout\ $ (\A2~combout\ $ (\A3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1~combout\,
	datab => \A4~combout\,
	datac => \A2~combout\,
	datad => \A3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S3~0_combout\);

-- Location: LC_X4_Y2_N6
\S4~0\ : maxii_lcell
-- Equation(s):
-- \S4~0_combout\ = (\A1~combout\ & ((\A4~combout\ & (\A2~combout\ & \A3~combout\)) # (!\A4~combout\ & (!\A2~combout\ & !\A3~combout\)))) # (!\A1~combout\ & ((\A4~combout\ & (!\A2~combout\ & !\A3~combout\)) # (!\A4~combout\ & (\A2~combout\ $ 
-- (\A3~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8116",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1~combout\,
	datab => \A4~combout\,
	datac => \A2~combout\,
	datad => \A3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S4~0_combout\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \S1~1_combout\,
	oe => VCC,
	padio => ww_S1);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \S2~0_combout\,
	oe => VCC,
	padio => ww_S2);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S3~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \S3~0_combout\,
	oe => VCC,
	padio => ww_S3);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S4~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \S4~0_combout\,
	oe => VCC,
	padio => ww_S4);
END structure;


