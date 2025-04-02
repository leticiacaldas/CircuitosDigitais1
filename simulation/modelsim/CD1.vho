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

-- DATE "03/28/2025 13:41:09"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA_4bits IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	F : IN std_logic_vector(2 DOWNTO 0);
	S : OUT std_logic_vector(13 DOWNTO 0);
	Z : OUT std_logic;
	N : OUT std_logic;
	V : OUT std_logic
	);
END ULA_4bits;

-- Design Ports Information
-- S[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ULA_4bits IS
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
SIGNAL ww_F : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_Z : std_logic;
SIGNAL ww_N : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[8]~output_o\ : std_logic;
SIGNAL \S[9]~output_o\ : std_logic;
SIGNAL \S[10]~output_o\ : std_logic;
SIGNAL \S[11]~output_o\ : std_logic;
SIGNAL \S[12]~output_o\ : std_logic;
SIGNAL \S[13]~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \N~output_o\ : std_logic;
SIGNAL \V~output_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \somador_r|M1|ci1~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \somador_r|M3|si~0_combout\ : std_logic;
SIGNAL \F[2]~input_o\ : std_logic;
SIGNAL \F[0]~input_o\ : std_logic;
SIGNAL \F[1]~input_o\ : std_logic;
SIGNAL \V~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux0~13_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \Mux0~11_combout\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \somador_r|M2|ci1~0_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \seg7_resultado|Mux9~0_combout\ : std_logic;
SIGNAL \seg7_resultado|Mux8~0_combout\ : std_logic;
SIGNAL \seg7_resultado|Mux7~0_combout\ : std_logic;
SIGNAL \seg7_resultado|Mux5~0_combout\ : std_logic;
SIGNAL \seg7_resultado|Mux4~0_combout\ : std_logic;
SIGNAL \seg7_resultado|Mux2~0_combout\ : std_logic;
SIGNAL \seg7_resultado|Mux1~0_combout\ : std_logic;
SIGNAL \seg7_resultado|Mux0~0_combout\ : std_logic;
SIGNAL \somador_r|M2|ci1~1_combout\ : std_logic;
SIGNAL \V~1_combout\ : std_logic;
SIGNAL \seg7_resultado|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \seg7_resultado|ALT_INV_Mux4~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_F <= F;
S <= ww_S;
Z <= ww_Z;
N <= ww_N;
V <= ww_V;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\seg7_resultado|ALT_INV_Mux0~0_combout\ <= NOT \seg7_resultado|Mux0~0_combout\;
\seg7_resultado|ALT_INV_Mux4~0_combout\ <= NOT \seg7_resultado|Mux4~0_combout\;

-- Location: IOOBUF_X22_Y31_N2
\S[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_resultado|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\S[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_resultado|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\S[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_resultado|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\S[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_resultado|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\S[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_resultado|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\S[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\S[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\S[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_resultado|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\S[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\S[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\S[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_resultado|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\S[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_resultado|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\S[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_resultado|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\S[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_resultado|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\Z~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7_resultado|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\N~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~12_combout\,
	devoe => ww_devoe,
	o => \N~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\V~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V~1_combout\,
	devoe => ww_devoe,
	o => \V~output_o\);

-- Location: IOIBUF_X22_Y0_N8
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X18_Y5_N20
\somador_r|M1|ci1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \somador_r|M1|ci1~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[0]~input_o\ & (\B[1]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \somador_r|M1|ci1~0_combout\);

-- Location: IOIBUF_X33_Y16_N15
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X19_Y8_N10
\somador_r|M3|si~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \somador_r|M3|si~0_combout\ = \A[3]~input_o\ $ (((\A[2]~input_o\ & ((\somador_r|M1|ci1~0_combout\) # (\B[2]~input_o\))) # (!\A[2]~input_o\ & (\somador_r|M1|ci1~0_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \somador_r|M1|ci1~0_combout\,
	datac => \A[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \somador_r|M3|si~0_combout\);

-- Location: IOIBUF_X20_Y0_N1
\F[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(2),
	o => \F[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\F[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(0),
	o => \F[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\F[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(1),
	o => \F[1]~input_o\);

-- Location: LCCOMB_X19_Y8_N16
\V~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V~0_combout\ = (!\F[2]~input_o\ & (!\F[0]~input_o\ & !\F[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F[2]~input_o\,
	datac => \F[0]~input_o\,
	datad => \F[1]~input_o\,
	combout => \V~0_combout\);

-- Location: IOIBUF_X33_Y16_N22
\B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X19_Y8_N22
\Mux0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = (\F[0]~input_o\ & ((\F[1]~input_o\ & (\A[2]~input_o\)) # (!\F[1]~input_o\ & ((!\B[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \F[0]~input_o\,
	datad => \F[1]~input_o\,
	combout => \Mux0~10_combout\);

-- Location: LCCOMB_X18_Y5_N14
\Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (!\F[2]~input_o\ & \F[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F[2]~input_o\,
	datac => \F[1]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X19_Y8_N2
\Mux0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~13_combout\ = (!\F[2]~input_o\ & \F[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F[2]~input_o\,
	datac => \F[0]~input_o\,
	combout => \Mux0~13_combout\);

-- Location: LCCOMB_X19_Y8_N18
\Mux0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (\A[3]~input_o\ & (\Mux1~1_combout\ $ (((\Mux0~13_combout\ & \B[3]~input_o\))))) # (!\A[3]~input_o\ & (\Mux1~1_combout\ & ((\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux0~13_combout\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux0~8_combout\);

-- Location: LCCOMB_X19_Y8_N12
\Mux0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (!\A[3]~input_o\ & (((!\F[0]~input_o\ & !\B[3]~input_o\)) # (!\F[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[1]~input_o\,
	datab => \A[3]~input_o\,
	datac => \F[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux0~9_combout\);

-- Location: LCCOMB_X19_Y8_N8
\Mux0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~11_combout\ = (\Mux0~8_combout\) # ((\F[2]~input_o\ & ((\Mux0~10_combout\) # (\Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~10_combout\,
	datab => \Mux0~8_combout\,
	datac => \F[2]~input_o\,
	datad => \Mux0~9_combout\,
	combout => \Mux0~11_combout\);

-- Location: LCCOMB_X19_Y8_N28
\Mux0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~12_combout\ = (\Mux0~11_combout\) # ((\V~0_combout\ & (\somador_r|M3|si~0_combout\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador_r|M3|si~0_combout\,
	datab => \V~0_combout\,
	datac => \Mux0~11_combout\,
	datad => \B[3]~input_o\,
	combout => \Mux0~12_combout\);

-- Location: LCCOMB_X18_Y5_N10
\Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\A[0]~input_o\ & (\F[2]~input_o\ $ (((\F[1]~input_o\) # (!\F[0]~input_o\))))) # (!\A[0]~input_o\ & (\F[2]~input_o\ & ((!\F[1]~input_o\) # (!\F[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \F[0]~input_o\,
	datac => \F[1]~input_o\,
	datad => \F[2]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X18_Y5_N16
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\F[0]~input_o\ & ((\F[1]~input_o\ & ((\F[2]~input_o\))) # (!\F[1]~input_o\ & (!\A[0]~input_o\)))) # (!\F[0]~input_o\ & ((\F[1]~input_o\ & (\A[0]~input_o\)) # (!\F[1]~input_o\ & ((\F[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \F[0]~input_o\,
	datac => \F[1]~input_o\,
	datad => \F[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X18_Y5_N12
\Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = \Mux3~1_combout\ $ (((!\Mux3~0_combout\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux3~0_combout\,
	datac => \B[0]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X19_Y8_N26
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\V~0_combout\ & (\A[2]~input_o\ $ (\somador_r|M1|ci1~0_combout\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \somador_r|M1|ci1~0_combout\,
	datac => \B[2]~input_o\,
	datad => \V~0_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X19_Y8_N20
\Mux1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (!\F[2]~input_o\ & (\F[0]~input_o\ & !\F[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F[2]~input_o\,
	datac => \F[0]~input_o\,
	datad => \F[1]~input_o\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X18_Y5_N8
\Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux1~1_combout\ & ((\B[2]~input_o\ & ((!\A[2]~input_o\) # (!\F[0]~input_o\))) # (!\B[2]~input_o\ & ((\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \F[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X18_Y5_N18
\Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (!\A[2]~input_o\ & (((!\F[0]~input_o\ & !\B[2]~input_o\)) # (!\F[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \F[1]~input_o\,
	datac => \F[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X18_Y5_N4
\Mux1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\F[0]~input_o\ & ((\F[1]~input_o\ & (\A[1]~input_o\)) # (!\F[1]~input_o\ & ((!\B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \F[1]~input_o\,
	datac => \F[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X18_Y5_N22
\Mux1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\Mux1~2_combout\) # ((\F[2]~input_o\ & ((\Mux1~3_combout\) # (\Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \Mux1~3_combout\,
	datac => \Mux1~4_combout\,
	datad => \F[2]~input_o\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X19_Y8_N6
\somador_r|M2|ci1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \somador_r|M2|ci1~0_combout\ = (\B[2]~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \somador_r|M2|ci1~0_combout\);

-- Location: LCCOMB_X19_Y8_N0
\Mux1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\Mux1~0_combout\) # ((\Mux1~5_combout\) # ((\Mux1~6_combout\ & \somador_r|M2|ci1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \Mux1~6_combout\,
	datac => \Mux1~5_combout\,
	datad => \somador_r|M2|ci1~0_combout\,
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X18_Y5_N30
\Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\A[0]~input_o\ & ((\B[0]~input_o\) # (\F[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \F[0]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X18_Y5_N28
\Mux2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\B[1]~input_o\ & ((\F[2]~input_o\) # ((\F[0]~input_o\ & \F[1]~input_o\)))) # (!\B[1]~input_o\ & (\F[2]~input_o\ $ (((\F[0]~input_o\ & !\F[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \F[0]~input_o\,
	datac => \F[1]~input_o\,
	datad => \F[2]~input_o\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X18_Y5_N26
\Mux2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\F[0]~input_o\ & (\F[2]~input_o\ & ((\F[1]~input_o\) # (!\B[1]~input_o\)))) # (!\F[0]~input_o\ & (\B[1]~input_o\ & ((!\F[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \F[0]~input_o\,
	datac => \F[1]~input_o\,
	datad => \F[2]~input_o\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X18_Y5_N24
\Mux2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\F[1]~input_o\ & ((\B[1]~input_o\ & (!\F[0]~input_o\)) # (!\B[1]~input_o\ & ((!\F[2]~input_o\))))) # (!\F[1]~input_o\ & (\F[0]~input_o\ & ((!\F[2]~input_o\) # (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \F[0]~input_o\,
	datac => \F[1]~input_o\,
	datad => \F[2]~input_o\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X18_Y5_N0
\Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\A[1]~input_o\ & ((\Mux2~6_combout\ & ((\Mux2~5_combout\))) # (!\Mux2~6_combout\ & (!\Mux2~7_combout\)))) # (!\A[1]~input_o\ & ((\Mux2~7_combout\ & (!\Mux2~6_combout\ & !\Mux2~5_combout\)) # (!\Mux2~7_combout\ & (\Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \Mux2~7_combout\,
	datac => \Mux2~6_combout\,
	datad => \Mux2~5_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X18_Y5_N6
\Mux2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\F[0]~input_o\ & ((!\F[2]~input_o\) # (!\F[1]~input_o\))) # (!\F[0]~input_o\ & ((\F[1]~input_o\) # (\F[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F[0]~input_o\,
	datac => \F[1]~input_o\,
	datad => \F[2]~input_o\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X18_Y5_N2
\Mux2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = \Mux2~3_combout\ $ (((\Mux2~2_combout\ & !\Mux2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux2~3_combout\,
	datad => \Mux2~8_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X19_Y30_N0
\seg7_resultado|Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg7_resultado|Mux9~0_combout\ = (\Mux2~4_combout\ & (\Mux0~12_combout\ $ ((\Mux3~2_combout\)))) # (!\Mux2~4_combout\ & ((\Mux1~7_combout\) # ((!\Mux0~12_combout\ & \Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~12_combout\,
	datab => \Mux3~2_combout\,
	datac => \Mux1~7_combout\,
	datad => \Mux2~4_combout\,
	combout => \seg7_resultado|Mux9~0_combout\);

-- Location: LCCOMB_X19_Y30_N2
\seg7_resultado|Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg7_resultado|Mux8~0_combout\ = (!\Mux0~12_combout\ & (\Mux3~2_combout\ $ (\Mux1~7_combout\ $ (\Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~12_combout\,
	datab => \Mux3~2_combout\,
	datac => \Mux1~7_combout\,
	datad => \Mux2~4_combout\,
	combout => \seg7_resultado|Mux8~0_combout\);

-- Location: LCCOMB_X19_Y30_N28
\seg7_resultado|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg7_resultado|Mux7~0_combout\ = (!\Mux0~12_combout\ & (\Mux3~2_combout\ & (!\Mux1~7_combout\ & !\Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~12_combout\,
	datab => \Mux3~2_combout\,
	datac => \Mux1~7_combout\,
	datad => \Mux2~4_combout\,
	combout => \seg7_resultado|Mux7~0_combout\);

-- Location: LCCOMB_X19_Y30_N30
\seg7_resultado|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg7_resultado|Mux5~0_combout\ = (\Mux0~12_combout\ & (\Mux3~2_combout\ & (\Mux1~7_combout\))) # (!\Mux0~12_combout\ & ((\Mux3~2_combout\ & ((!\Mux2~4_combout\))) # (!\Mux3~2_combout\ & (\Mux1~7_combout\ & \Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~12_combout\,
	datab => \Mux3~2_combout\,
	datac => \Mux1~7_combout\,
	datad => \Mux2~4_combout\,
	combout => \seg7_resultado|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y30_N24
\seg7_resultado|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg7_resultado|Mux4~0_combout\ = (!\Mux0~12_combout\ & (!\Mux3~2_combout\ & (!\Mux1~7_combout\ & !\Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~12_combout\,
	datab => \Mux3~2_combout\,
	datac => \Mux1~7_combout\,
	datad => \Mux2~4_combout\,
	combout => \seg7_resultado|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y30_N26
\seg7_resultado|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg7_resultado|Mux2~0_combout\ = (\Mux3~2_combout\ & (\Mux0~12_combout\ $ (((\Mux1~7_combout\) # (!\Mux2~4_combout\))))) # (!\Mux3~2_combout\ & (\Mux1~7_combout\ & ((!\Mux2~4_combout\) # (!\Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~12_combout\,
	datab => \Mux3~2_combout\,
	datac => \Mux1~7_combout\,
	datad => \Mux2~4_combout\,
	combout => \seg7_resultado|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y30_N12
\seg7_resultado|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg7_resultado|Mux1~0_combout\ = (\Mux1~7_combout\ & (!\Mux0~12_combout\ & (\Mux3~2_combout\ $ (!\Mux2~4_combout\)))) # (!\Mux1~7_combout\ & (((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~12_combout\,
	datab => \Mux3~2_combout\,
	datac => \Mux1~7_combout\,
	datad => \Mux2~4_combout\,
	combout => \seg7_resultado|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y30_N22
\seg7_resultado|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg7_resultado|Mux0~0_combout\ = (\Mux0~12_combout\ & ((\Mux1~7_combout\) # (\Mux3~2_combout\ $ (!\Mux2~4_combout\)))) # (!\Mux0~12_combout\ & (!\Mux3~2_combout\ & (\Mux1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~12_combout\,
	datab => \Mux3~2_combout\,
	datac => \Mux1~7_combout\,
	datad => \Mux2~4_combout\,
	combout => \seg7_resultado|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y8_N30
\somador_r|M2|ci1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \somador_r|M2|ci1~1_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # (\somador_r|M1|ci1~0_combout\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & \somador_r|M1|ci1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => \somador_r|M1|ci1~0_combout\,
	combout => \somador_r|M2|ci1~1_combout\);

-- Location: LCCOMB_X19_Y8_N24
\V~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \V~1_combout\ = (\V~0_combout\ & ((\somador_r|M2|ci1~1_combout\ & ((\A[3]~input_o\) # (\B[3]~input_o\))) # (!\somador_r|M2|ci1~1_combout\ & (\A[3]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador_r|M2|ci1~1_combout\,
	datab => \V~0_combout\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \V~1_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(8) <= \S[8]~output_o\;

ww_S(9) <= \S[9]~output_o\;

ww_S(10) <= \S[10]~output_o\;

ww_S(11) <= \S[11]~output_o\;

ww_S(12) <= \S[12]~output_o\;

ww_S(13) <= \S[13]~output_o\;

ww_Z <= \Z~output_o\;

ww_N <= \N~output_o\;

ww_V <= \V~output_o\;
END structure;


