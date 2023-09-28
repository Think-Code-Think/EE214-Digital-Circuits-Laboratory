library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity bit_shifter is
	port(
	a : in std_logic_vector(7 downto 0);
	b : in std_logic_vector(2 downto 0);
	L : in std_logic;
	s : out std_logic_vector(7 downto 0));
end entity bit_shifter;
	  
architecture struct of bit_shifter is 
	signal x1, x2, x3, x4 : std_logic_vector(7 downto 0);
	
	component mux is
		port(
		I : in std_logic_vector(1 downto 0);
		S : in std_logic;
		Y : out std_logic
		);
	end component mux;
	
	begin
	bit_rev_1 : for i in 0 to 7 generate
	rev_1: mux port map(I(0) => a(i), I(1) => a(7-i), S => L, Y => x1(i));
	end generate;
	
	n4_bit : for i in 0 to 7 generate
	lsb: if i < 4 generate
	b2: mux port map(I(0) => x1(i), I(1) => x1(i+4), S => b(2), Y => x2(i));
	end generate lsb;
	msb: if i > 3 generate
	b2: mux port map(I(0) => x1(i), I(1) => '0', S => b(2), Y => x2(i));
	end generate msb;
	end generate ;
	
	n2_bit : for i in 0 to 7 generate
	lsb: if i < 6 generate
	b1: mux port map(I(0) => x2(i), I(1) => x2(i+2), S => b(1), Y => x3(i));
	end generate lsb;
	msb: if i > 5 generate
	b1: mux port map(I(0) => x2(i), I(1) => '0', S => b(1), Y => x3(i));
	end generate msb;
	end generate ;
	
	n1_bit : for i in 0 to 7 generate
	lsb: if i < 7 generate
	b1: mux port map(I(0) => x3(i), I(1) => x3(i+1), S => b(0), Y => x4(i));
	end generate lsb;
	msb: if i > 6 generate
	b1: mux port map(I(0) => x3(i), I(1) => '0', S => b(0), Y => x4(i));
	end generate msb;
	end generate ;
	
	bit_rev_2 : for i in 0 to 7 generate
	rev_2: mux port map(I(0) => x4(i), I(1) => x4(7-i), S => L, Y => s(i));
	end generate ;
end struct;