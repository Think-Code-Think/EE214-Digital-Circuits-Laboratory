-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is
component FULL_SUBTRACTOR is
   port (A, B,Bin: in std_logic; D,Bout: out std_logic);
  end component FULL_SUBTRACTOR;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: FULL_SUBTRACTOR port map (A => input_vector(2), B => input_vector(1),Bin =>input_vector(0),
											D => output_vector(1),Bout=>output_vector(0));
	
end DutWrap;
