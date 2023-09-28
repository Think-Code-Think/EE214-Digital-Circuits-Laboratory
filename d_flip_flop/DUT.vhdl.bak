library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(7 downto 0);
       	output_vector: out std_logic_vector(5 downto 0));
end entity;

architecture DutWrap of DUT is
component alu_beh is 
	port (A: in std_logic_vector(3 downto 0);
	B: in std_logic_vector(3 downto 0);
	op: out std_logic_vector(5 downto 0)
	);
end component alu_beh;	
begin  

alu_instance: alu_beh
			port map (
					A => input_vector(7 downto 4),
					B => input_vector(3 downto 0),
					op => output_vector(5 downto 0)
					);
end DutWrap;