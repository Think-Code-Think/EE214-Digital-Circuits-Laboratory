-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(8 downto 0);
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
component BCD_X_Flag is
port (
A:  in std_logic_vector(3 downto 0);
B:  in std_logic_vector(3 downto 0);
M: IN STD_LOGIC;
S,Z,P : out std_logic;
Y: out std_logic_vector(4 downto 0));
end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: BCD_X_Flag
			port map (
					-- order of inputs B A C
					A => input_vector(8 downto 5),
					B => input_vector(4 downto 1),
					M => input_vector(0),
               -- order of output OUTPUT
					S => output_vector(7),
					Z => output_vector(6),
					P => output_vector(5),
					Y => output_vector(4 downto 0));
end DutWrap;