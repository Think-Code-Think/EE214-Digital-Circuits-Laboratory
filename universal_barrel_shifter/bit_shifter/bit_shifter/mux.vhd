library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity mux is
	port(
	I : in std_logic_vector(1 downto 0);
	S : in std_logic;
	Y : out std_logic
	);
end entity mux;

architecture struct of mux is 
	signal S_bar, o1, o2 : std_logic;
	begin
	NOT1 : INVERTER port map(A => S, Y => S_bar);

	AND1 : AND_2 port map (A => S_bar, B => I(0), Y => o1);
	AND2 : AND_2 port map (A => S, B => I(1), Y => o2);
	
	OR1 : OR_2 port map (A => o1, B => o2, Y => Y);
end struct;