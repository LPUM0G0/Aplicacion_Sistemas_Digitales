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

-- DATE "04/24/2024 06:22:10"

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

ENTITY 	sumador_cuatro_bits IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	C : BUFFER std_logic_vector(2 DOWNTO 0);
	Cs : BUFFER std_logic;
	S : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END sumador_cuatro_bits;

-- Design Ports Information


ARCHITECTURE structure OF sumador_cuatro_bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Cs : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL \C~0_combout\ : std_logic;
SIGNAL \C~1_combout\ : std_logic;
SIGNAL \Cs~0_combout\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \C~8_combout\ : std_logic;
SIGNAL \B~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
C <= ww_C;
Cs <= ww_Cs;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LC_X4_Y1_N9
\C~0\ : maxii_lcell
-- Equation(s):
-- \C~0_combout\ = (\B~combout\(1) & ((\A~combout\(1)) # ((\A~combout\(0) & \B~combout\(0))))) # (!\B~combout\(1) & (\A~combout\(0) & (\A~combout\(1) & \B~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(0),
	datac => \A~combout\(1),
	datad => \B~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~0_combout\);

-- Location: LC_X4_Y1_N3
\C~1\ : maxii_lcell
-- Equation(s):
-- \C~1_combout\ = ((\B~combout\(2) & ((\A~combout\(2)) # (\C~0_combout\))) # (!\B~combout\(2) & (\A~combout\(2) & \C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(2),
	datac => \A~combout\(2),
	datad => \C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1_combout\);

-- Location: LC_X4_Y1_N7
\Cs~0\ : maxii_lcell
-- Equation(s):
-- \Cs~0_combout\ = ((\A~combout\(3) & ((\B~combout\(3)) # (\C~1_combout\))) # (!\A~combout\(3) & (\B~combout\(3) & \C~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datac => \B~combout\(3),
	datad => \C~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Cs~0_combout\);

-- Location: LC_X4_Y1_N8
\S~0\ : maxii_lcell
-- Equation(s):
-- \S~0_combout\ = (\A~combout\(0) $ (((\B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(0),
	datad => \B~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S~0_combout\);

-- Location: LC_X4_Y1_N6
\S~1\ : maxii_lcell
-- Equation(s):
-- \S~1_combout\ = \B~combout\(1) $ (\A~combout\(1) $ (((\A~combout\(0) & \B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "965a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(0),
	datac => \A~combout\(1),
	datad => \B~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S~1_combout\);

-- Location: LC_X4_Y1_N5
\S~2\ : maxii_lcell
-- Equation(s):
-- \S~2_combout\ = (\B~combout\(2) $ (\A~combout\(2) $ (\C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(2),
	datac => \A~combout\(2),
	datad => \C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S~2_combout\);

-- Location: LC_X4_Y1_N2
\S~3\ : maxii_lcell
-- Equation(s):
-- \S~3_combout\ = (\A~combout\(3) $ (\B~combout\(3) $ (\C~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datac => \B~combout\(3),
	datad => \C~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S~3_combout\);

-- Location: LC_X4_Y1_N4
\C~8\ : maxii_lcell
-- Equation(s):
-- \C~8_combout\ = ((\A~combout\(0) & ((\B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(0),
	datad => \B~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~8_combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Cs~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Cs~0_combout\,
	oe => VCC,
	padio => ww_Cs);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \S~0_combout\,
	oe => VCC,
	padio => ww_S(0));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \S~1_combout\,
	oe => VCC,
	padio => ww_S(1));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \S~2_combout\,
	oe => VCC,
	padio => ww_S(2));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \S~3_combout\,
	oe => VCC,
	padio => ww_S(3));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \C~8_combout\,
	oe => VCC,
	padio => ww_C(0));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \C~0_combout\,
	oe => VCC,
	padio => ww_C(1));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \C~1_combout\,
	oe => VCC,
	padio => ww_C(2));
END structure;


