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
	-- Instantiate your own top Module component in place of ALU_1
	Component Full_Adder is
	 port(A,B,C: in std_logic;Sum,Cout:out std_logic);
	 end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Full_Adder
	port map (
	--order of inputs Cin B A
	C => input_vector(0),
	B => input_vector(1),
	A => input_vector(2),
	                      --order of outputs S Cout
	Sum => output_vector(1),
	Cout => output_vector(0));

end DutWrap;

