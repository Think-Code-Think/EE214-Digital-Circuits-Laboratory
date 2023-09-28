-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
   COMPONENT BCD_X is
port (
A:  in std_logic_vector(3 downto 0);
Y: out std_logic_vector(3 downto 0));
end COMPONENT;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: BCD_X
			port map (
					-- order of inputs B A C
					A(3) => input_vector(3),
					A(2) => input_vector(2),
					A(1) => input_vector(1),
					A(0) => input_vector(0),
               -- order of output OUTPUT
					Y(3) => output_vector(3),
					Y(2) => output_vector(2),
					Y(1) => output_vector(1),
					Y(0) => output_vector(0));
end DutWrap;