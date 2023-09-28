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

-- DATE "09/07/2023 23:20:16"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(9 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END DUT;

-- Design Ports Information
-- output_vector[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[1]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[2]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[4]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[5]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[6]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[7]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[0]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[4]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[8]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[9]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[1]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[5]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[6]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[3]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \output_vector[0]~output_o\ : std_logic;
SIGNAL \output_vector[1]~output_o\ : std_logic;
SIGNAL \output_vector[2]~output_o\ : std_logic;
SIGNAL \output_vector[3]~output_o\ : std_logic;
SIGNAL \output_vector[4]~output_o\ : std_logic;
SIGNAL \output_vector[5]~output_o\ : std_logic;
SIGNAL \output_vector[6]~output_o\ : std_logic;
SIGNAL \output_vector[7]~output_o\ : std_logic;
SIGNAL \input_vector[4]~input_o\ : std_logic;
SIGNAL \input_vector[8]~input_o\ : std_logic;
SIGNAL \input_vector[0]~input_o\ : std_logic;
SIGNAL \input_vector[9]~input_o\ : std_logic;
SIGNAL \alu_instance|Mux7~0_combout\ : std_logic;
SIGNAL \input_vector[1]~input_o\ : std_logic;
SIGNAL \input_vector[5]~input_o\ : std_logic;
SIGNAL \alu_instance|T~0_combout\ : std_logic;
SIGNAL \alu_instance|Mux6~0_combout\ : std_logic;
SIGNAL \alu_instance|Mux6~1_combout\ : std_logic;
SIGNAL \input_vector[6]~input_o\ : std_logic;
SIGNAL \input_vector[2]~input_o\ : std_logic;
SIGNAL \alu_instance|Mux5~1_combout\ : std_logic;
SIGNAL \alu_instance|c~0_combout\ : std_logic;
SIGNAL \alu_instance|Mux5~0_combout\ : std_logic;
SIGNAL \alu_instance|Mux5~2_combout\ : std_logic;
SIGNAL \input_vector[3]~input_o\ : std_logic;
SIGNAL \alu_instance|c~1_combout\ : std_logic;
SIGNAL \input_vector[7]~input_o\ : std_logic;
SIGNAL \alu_instance|T~1_combout\ : std_logic;
SIGNAL \alu_instance|Mux4~0_combout\ : std_logic;
SIGNAL \alu_instance|Mux4~1_combout\ : std_logic;
SIGNAL \alu_instance|Mux3~0_combout\ : std_logic;
SIGNAL \alu_instance|Mux3~1_combout\ : std_logic;
SIGNAL \alu_instance|Mux3~2_combout\ : std_logic;
SIGNAL \alu_instance|Mux3~3_combout\ : std_logic;
SIGNAL \alu_instance|Mux2~0_combout\ : std_logic;
SIGNAL \alu_instance|Mux1~0_combout\ : std_logic;
SIGNAL \alu_instance|Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y22_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X6_Y10_N9
\output_vector[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_instance|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \output_vector[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\output_vector[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_instance|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \output_vector[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\output_vector[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_instance|Mux5~2_combout\,
	devoe => ww_devoe,
	o => \output_vector[2]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\output_vector[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_instance|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \output_vector[3]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\output_vector[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_instance|Mux3~3_combout\,
	devoe => ww_devoe,
	o => \output_vector[4]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\output_vector[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_instance|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \output_vector[5]~output_o\);

-- Location: IOOBUF_X6_Y10_N23
\output_vector[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_instance|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \output_vector[6]~output_o\);

-- Location: IOOBUF_X6_Y10_N16
\output_vector[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_instance|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \output_vector[7]~output_o\);

-- Location: IOIBUF_X9_Y0_N8
\input_vector[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(4),
	o => \input_vector[4]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\input_vector[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(8),
	o => \input_vector[8]~input_o\);

-- Location: IOIBUF_X3_Y10_N1
\input_vector[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(0),
	o => \input_vector[0]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\input_vector[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(9),
	o => \input_vector[9]~input_o\);

-- Location: LCCOMB_X9_Y6_N24
\alu_instance|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|Mux7~0_combout\ = (\input_vector[8]~input_o\ & (!\input_vector[9]~input_o\ & (\input_vector[4]~input_o\ $ (\input_vector[0]~input_o\)))) # (!\input_vector[8]~input_o\ & (\input_vector[0]~input_o\ $ (((\input_vector[4]~input_o\ & 
-- \input_vector[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[4]~input_o\,
	datab => \input_vector[8]~input_o\,
	datac => \input_vector[0]~input_o\,
	datad => \input_vector[9]~input_o\,
	combout => \alu_instance|Mux7~0_combout\);

-- Location: IOIBUF_X9_Y0_N1
\input_vector[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(1),
	o => \input_vector[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\input_vector[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(5),
	o => \input_vector[5]~input_o\);

-- Location: LCCOMB_X9_Y6_N18
\alu_instance|T~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|T~0_combout\ = \input_vector[1]~input_o\ $ (\input_vector[5]~input_o\ $ (((\input_vector[4]~input_o\) # (!\input_vector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[0]~input_o\,
	datab => \input_vector[1]~input_o\,
	datac => \input_vector[5]~input_o\,
	datad => \input_vector[4]~input_o\,
	combout => \alu_instance|T~0_combout\);

-- Location: LCCOMB_X9_Y6_N28
\alu_instance|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|Mux6~0_combout\ = (\input_vector[8]~input_o\ & (((\input_vector[9]~input_o\)))) # (!\input_vector[8]~input_o\ & (\input_vector[1]~input_o\ $ (((\input_vector[5]~input_o\ & \input_vector[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[8]~input_o\,
	datab => \input_vector[5]~input_o\,
	datac => \input_vector[1]~input_o\,
	datad => \input_vector[9]~input_o\,
	combout => \alu_instance|Mux6~0_combout\);

-- Location: LCCOMB_X9_Y6_N6
\alu_instance|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|Mux6~1_combout\ = (\input_vector[8]~input_o\ & ((\alu_instance|Mux6~0_combout\ & (\input_vector[4]~input_o\)) # (!\alu_instance|Mux6~0_combout\ & ((!\alu_instance|T~0_combout\))))) # (!\input_vector[8]~input_o\ & 
-- (((\alu_instance|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[4]~input_o\,
	datab => \alu_instance|T~0_combout\,
	datac => \input_vector[8]~input_o\,
	datad => \alu_instance|Mux6~0_combout\,
	combout => \alu_instance|Mux6~1_combout\);

-- Location: IOIBUF_X0_Y6_N1
\input_vector[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(6),
	o => \input_vector[6]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\input_vector[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(2),
	o => \input_vector[2]~input_o\);

-- Location: LCCOMB_X9_Y6_N20
\alu_instance|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|Mux5~1_combout\ = (\input_vector[8]~input_o\ & ((\input_vector[9]~input_o\) # (\input_vector[6]~input_o\ $ (\input_vector[2]~input_o\)))) # (!\input_vector[8]~input_o\ & (\input_vector[2]~input_o\ $ (((\input_vector[6]~input_o\ & 
-- \input_vector[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[6]~input_o\,
	datab => \input_vector[2]~input_o\,
	datac => \input_vector[8]~input_o\,
	datad => \input_vector[9]~input_o\,
	combout => \alu_instance|Mux5~1_combout\);

-- Location: LCCOMB_X9_Y6_N16
\alu_instance|c~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|c~0_combout\ = (\input_vector[1]~input_o\ & (\input_vector[5]~input_o\ & ((\input_vector[4]~input_o\) # (!\input_vector[0]~input_o\)))) # (!\input_vector[1]~input_o\ & (((\input_vector[5]~input_o\) # (\input_vector[4]~input_o\)) # 
-- (!\input_vector[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[0]~input_o\,
	datab => \input_vector[1]~input_o\,
	datac => \input_vector[5]~input_o\,
	datad => \input_vector[4]~input_o\,
	combout => \alu_instance|c~0_combout\);

-- Location: LCCOMB_X9_Y6_N26
\alu_instance|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|Mux5~0_combout\ = (\input_vector[9]~input_o\ & (\input_vector[5]~input_o\)) # (!\input_vector[9]~input_o\ & ((\alu_instance|c~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_vector[9]~input_o\,
	datac => \input_vector[5]~input_o\,
	datad => \alu_instance|c~0_combout\,
	combout => \alu_instance|Mux5~0_combout\);

-- Location: LCCOMB_X3_Y6_N8
\alu_instance|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|Mux5~2_combout\ = \alu_instance|Mux5~1_combout\ $ (((\input_vector[8]~input_o\ & !\alu_instance|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|Mux5~1_combout\,
	datac => \input_vector[8]~input_o\,
	datad => \alu_instance|Mux5~0_combout\,
	combout => \alu_instance|Mux5~2_combout\);

-- Location: IOIBUF_X6_Y10_N1
\input_vector[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(3),
	o => \input_vector[3]~input_o\);

-- Location: LCCOMB_X9_Y6_N30
\alu_instance|c~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|c~1_combout\ = (\input_vector[6]~input_o\ & ((\alu_instance|c~0_combout\) # (!\input_vector[2]~input_o\))) # (!\input_vector[6]~input_o\ & (!\input_vector[2]~input_o\ & \alu_instance|c~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[6]~input_o\,
	datab => \input_vector[2]~input_o\,
	datad => \alu_instance|c~0_combout\,
	combout => \alu_instance|c~1_combout\);

-- Location: IOIBUF_X1_Y10_N29
\input_vector[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(7),
	o => \input_vector[7]~input_o\);

-- Location: LCCOMB_X9_Y6_N8
\alu_instance|T~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|T~1_combout\ = \input_vector[3]~input_o\ $ (\alu_instance|c~1_combout\ $ (\input_vector[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[3]~input_o\,
	datac => \alu_instance|c~1_combout\,
	datad => \input_vector[7]~input_o\,
	combout => \alu_instance|T~1_combout\);

-- Location: LCCOMB_X9_Y6_N10
\alu_instance|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|Mux4~0_combout\ = (\input_vector[8]~input_o\ & (((\input_vector[9]~input_o\)))) # (!\input_vector[8]~input_o\ & (\input_vector[3]~input_o\ $ (((\input_vector[7]~input_o\ & \input_vector[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[7]~input_o\,
	datab => \input_vector[8]~input_o\,
	datac => \input_vector[3]~input_o\,
	datad => \input_vector[9]~input_o\,
	combout => \alu_instance|Mux4~0_combout\);

-- Location: LCCOMB_X9_Y6_N4
\alu_instance|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|Mux4~1_combout\ = (\input_vector[8]~input_o\ & ((\alu_instance|Mux4~0_combout\ & (\input_vector[6]~input_o\)) # (!\alu_instance|Mux4~0_combout\ & ((!\alu_instance|T~1_combout\))))) # (!\input_vector[8]~input_o\ & 
-- (((\alu_instance|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[6]~input_o\,
	datab => \input_vector[8]~input_o\,
	datac => \alu_instance|T~1_combout\,
	datad => \alu_instance|Mux4~0_combout\,
	combout => \alu_instance|Mux4~1_combout\);

-- Location: LCCOMB_X9_Y6_N14
\alu_instance|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|Mux3~0_combout\ = (\input_vector[8]~input_o\ & (!\input_vector[9]~input_o\ & ((\input_vector[3]~input_o\) # (!\input_vector[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[7]~input_o\,
	datab => \input_vector[8]~input_o\,
	datac => \input_vector[3]~input_o\,
	datad => \input_vector[9]~input_o\,
	combout => \alu_instance|Mux3~0_combout\);

-- Location: LCCOMB_X9_Y6_N0
\alu_instance|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|Mux3~1_combout\ = (\alu_instance|Mux3~0_combout\ & ((\input_vector[3]~input_o\ $ (\input_vector[7]~input_o\)) # (!\alu_instance|c~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[3]~input_o\,
	datab => \alu_instance|Mux3~0_combout\,
	datac => \alu_instance|c~1_combout\,
	datad => \input_vector[7]~input_o\,
	combout => \alu_instance|Mux3~1_combout\);

-- Location: LCCOMB_X9_Y6_N2
\alu_instance|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|Mux3~2_combout\ = (\input_vector[8]~input_o\ & (((\input_vector[7]~input_o\ & \input_vector[9]~input_o\)))) # (!\input_vector[8]~input_o\ & (\input_vector[4]~input_o\ & ((!\input_vector[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[4]~input_o\,
	datab => \input_vector[8]~input_o\,
	datac => \input_vector[7]~input_o\,
	datad => \input_vector[9]~input_o\,
	combout => \alu_instance|Mux3~2_combout\);

-- Location: LCCOMB_X7_Y5_N0
\alu_instance|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|Mux3~3_combout\ = (\alu_instance|Mux3~1_combout\) # (\alu_instance|Mux3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|Mux3~1_combout\,
	datac => \alu_instance|Mux3~2_combout\,
	combout => \alu_instance|Mux3~3_combout\);

-- Location: LCCOMB_X7_Y5_N2
\alu_instance|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|Mux2~0_combout\ = (\alu_instance|Mux3~1_combout\) # ((!\input_vector[8]~input_o\ & (!\input_vector[9]~input_o\ & \input_vector[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[8]~input_o\,
	datab => \input_vector[9]~input_o\,
	datac => \alu_instance|Mux3~1_combout\,
	datad => \input_vector[5]~input_o\,
	combout => \alu_instance|Mux2~0_combout\);

-- Location: LCCOMB_X9_Y6_N12
\alu_instance|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|Mux1~0_combout\ = (\alu_instance|Mux3~1_combout\) # ((\input_vector[6]~input_o\ & (!\input_vector[9]~input_o\ & !\input_vector[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[6]~input_o\,
	datab => \input_vector[9]~input_o\,
	datac => \input_vector[8]~input_o\,
	datad => \alu_instance|Mux3~1_combout\,
	combout => \alu_instance|Mux1~0_combout\);

-- Location: LCCOMB_X9_Y6_N22
\alu_instance|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|Mux0~0_combout\ = (\alu_instance|Mux3~1_combout\) # ((!\input_vector[8]~input_o\ & (\input_vector[7]~input_o\ & !\input_vector[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|Mux3~1_combout\,
	datab => \input_vector[8]~input_o\,
	datac => \input_vector[7]~input_o\,
	datad => \input_vector[9]~input_o\,
	combout => \alu_instance|Mux0~0_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_output_vector(0) <= \output_vector[0]~output_o\;

ww_output_vector(1) <= \output_vector[1]~output_o\;

ww_output_vector(2) <= \output_vector[2]~output_o\;

ww_output_vector(3) <= \output_vector[3]~output_o\;

ww_output_vector(4) <= \output_vector[4]~output_o\;

ww_output_vector(5) <= \output_vector[5]~output_o\;

ww_output_vector(6) <= \output_vector[6]~output_o\;

ww_output_vector(7) <= \output_vector[7]~output_o\;
END structure;


