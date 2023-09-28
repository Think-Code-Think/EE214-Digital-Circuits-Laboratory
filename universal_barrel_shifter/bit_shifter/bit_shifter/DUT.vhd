-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(11 downto 0);
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	component bit_shifter is
		port(
		a : in std_logic_vector(7 downto 0);
		b : in std_logic_vector(2 downto 0);
		L : in std_logic;
		s : out std_logic_vector(7 downto 0)
		);
	end component bit_shifter;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: bit_shifter port map (
	a => input_vector(7 downto 0),
	b => input_vector(10 downto 8),
	L => input_vector(11),
	s => output_vector(7 downto 0)
	);

end DutWrap;