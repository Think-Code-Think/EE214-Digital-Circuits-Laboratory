library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity AddSub4 is
	port(A,B : in std_logic_vector(3 downto 0); M : in std_logic; S : out std_logic_vector(3 downto 0); C4,C3 : out std_logic );
end entity AddSub4;	

architecture struct_addsub of AddSub4 is
   
signal C : std_logic_vector(4 downto 0) := (others=>'0');
signal tBx : std_logic_vector(3 downto 0) := (others=>'0');
begin
C(0) <= M;
gen: for i in 0 to 3 generate
X1: XOR_2 port map(A => M, B => B(i), Y => tBx(i));
FA : FULL_ADDER port map (A => A(i), B => tBx(i), Ci => C(i), S => S(i), Co => C(i+1));
end generate gen;
C4 <= C(4);
C3 <= C(3);
end architecture struct_addsub;
