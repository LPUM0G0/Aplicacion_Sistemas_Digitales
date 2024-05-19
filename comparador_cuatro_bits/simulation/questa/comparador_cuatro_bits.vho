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

-- DATE "04/27/2024 12:35:57"

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

ENTITY 	comparador_cuatro_bits IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	Pr : BUFFER std_logic_vector(2 DOWNTO 0);
	D : BUFFER std_logic_vector(3 DOWNTO 0);
	Mayor : BUFFER std_logic;
	Prs : BUFFER std_logic;
	Menor : BUFFER std_logic;
	Igual : BUFFER std_logic
	);
END comparador_cuatro_bits;

-- Design Ports Information


ARCHITECTURE structure OF comparador_cuatro_bits IS
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
SIGNAL ww_Pr : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Mayor : std_logic;
SIGNAL ww_Prs : std_logic;
SIGNAL ww_Menor : std_logic;
SIGNAL ww_Igual : std_logic;
SIGNAL \Pr~0_combout\ : std_logic;
SIGNAL \Pr~1_combout\ : std_logic;
SIGNAL \D~2_combout\ : std_logic;
SIGNAL \D~3_combout\ : std_logic;
SIGNAL \D~0_combout\ : std_logic;
SIGNAL \D~1_combout\ : std_logic;
SIGNAL \Igual~2_combout\ : std_logic;
SIGNAL \Mayor~2_combout\ : std_logic;
SIGNAL \Pr~8_combout\ : std_logic;
SIGNAL \Prs~0_combout\ : std_logic;
SIGNAL \Igual~5_combout\ : std_logic;
SIGNAL \A~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mayor~2_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
Pr <= ww_Pr;
D <= ww_D;
Mayor <= ww_Mayor;
Prs <= ww_Prs;
Menor <= ww_Menor;
Igual <= ww_Igual;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mayor~2_combout\ <= NOT \Mayor~2_combout\;

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

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LC_X2_Y3_N5
\Pr~0\ : maxii_lcell
-- Equation(s):
-- \Pr~0_combout\ = (\A~combout\(1) & (\B~combout\(1) & (!\A~combout\(0) & \B~combout\(0)))) # (!\A~combout\(1) & ((\B~combout\(1)) # ((!\A~combout\(0) & \B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4d44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(1),
	datac => \A~combout\(0),
	datad => \B~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Pr~0_combout\);

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

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: LC_X2_Y3_N7
\Pr~1\ : maxii_lcell
-- Equation(s):
-- \Pr~1_combout\ = (\Pr~0_combout\ & (((\B~combout\(2))) # (!\A~combout\(2)))) # (!\Pr~0_combout\ & (!\A~combout\(2) & (\B~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2b2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Pr~0_combout\,
	datab => \A~combout\(2),
	datac => \B~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Pr~1_combout\);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

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

-- Location: LC_X2_Y3_N3
\D~2\ : maxii_lcell
-- Equation(s):
-- \D~2_combout\ = ((\A~combout\(0) $ (\B~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(0),
	datad => \B~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \D~2_combout\);

-- Location: LC_X2_Y3_N4
\D~3\ : maxii_lcell
-- Equation(s):
-- \D~3_combout\ = \A~combout\(1) $ (\B~combout\(1) $ (((!\A~combout\(0) & \B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6966",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(1),
	datac => \A~combout\(0),
	datad => \B~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \D~3_combout\);

-- Location: LC_X2_Y3_N0
\D~0\ : maxii_lcell
-- Equation(s):
-- \D~0_combout\ = \Pr~1_combout\ $ (\B~combout\(3) $ ((\A~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Pr~1_combout\,
	datab => \B~combout\(3),
	datac => \A~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \D~0_combout\);

-- Location: LC_X2_Y3_N1
\D~1\ : maxii_lcell
-- Equation(s):
-- \D~1_combout\ = \Pr~0_combout\ $ (\A~combout\(2) $ ((\B~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Pr~0_combout\,
	datab => \A~combout\(2),
	datac => \B~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \D~1_combout\);

-- Location: LC_X2_Y3_N8
\Igual~2\ : maxii_lcell
-- Equation(s):
-- \Igual~2_combout\ = (\D~2_combout\) # ((\D~3_combout\) # ((\D~0_combout\) # (\D~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D~2_combout\,
	datab => \D~3_combout\,
	datac => \D~0_combout\,
	datad => \D~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Igual~2_combout\);

-- Location: LC_X2_Y3_N6
\Mayor~2\ : maxii_lcell
-- Equation(s):
-- \Mayor~2_combout\ = ((\Pr~1_combout\ & ((\B~combout\(3)) # (!\A~combout\(3)))) # (!\Pr~1_combout\ & (\B~combout\(3) & !\A~combout\(3)))) # (!\Igual~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8eff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Pr~1_combout\,
	datab => \B~combout\(3),
	datac => \A~combout\(3),
	datad => \Igual~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mayor~2_combout\);

-- Location: LC_X3_Y3_N2
\Pr~8\ : maxii_lcell
-- Equation(s):
-- \Pr~8_combout\ = ((!\A~combout\(0) & (\B~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(0),
	datac => \B~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Pr~8_combout\);

-- Location: LC_X2_Y3_N2
\Prs~0\ : maxii_lcell
-- Equation(s):
-- \Prs~0_combout\ = (\Pr~1_combout\ & ((\B~combout\(3)) # ((!\A~combout\(3))))) # (!\Pr~1_combout\ & (\B~combout\(3) & (!\A~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8e8e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Pr~1_combout\,
	datab => \B~combout\(3),
	datac => \A~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Prs~0_combout\);

-- Location: LC_X2_Y3_N9
\Igual~5\ : maxii_lcell
-- Equation(s):
-- \Igual~5_combout\ = (!\Igual~2_combout\ & ((\Pr~1_combout\ & (!\B~combout\(3) & \A~combout\(3))) # (!\Pr~1_combout\ & ((\A~combout\(3)) # (!\B~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0071",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Pr~1_combout\,
	datab => \B~combout\(3),
	datac => \A~combout\(3),
	datad => \Igual~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Igual~5_combout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mayor~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mayor~2_combout\,
	oe => VCC,
	padio => ww_Mayor);

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Pr[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Pr~8_combout\,
	oe => VCC,
	padio => ww_Pr(0));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Pr[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Pr~0_combout\,
	oe => VCC,
	padio => ww_Pr(1));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Pr[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Pr~1_combout\,
	oe => VCC,
	padio => ww_Pr(2));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \D~2_combout\,
	oe => VCC,
	padio => ww_D(0));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \D~3_combout\,
	oe => VCC,
	padio => ww_D(1));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \D~1_combout\,
	oe => VCC,
	padio => ww_D(2));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \D~0_combout\,
	oe => VCC,
	padio => ww_D(3));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Prs~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Prs~0_combout\,
	oe => VCC,
	padio => ww_Prs);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Menor~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Prs~0_combout\,
	oe => VCC,
	padio => ww_Menor);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Igual~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Igual~5_combout\,
	oe => VCC,
	padio => ww_Igual);
END structure;


