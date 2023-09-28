library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity BCD_X is
port (
A:  in std_logic_vector(3 downto 0);
Y: out std_logic_vector(3 downto 0));
end entity BCD_X;
architecture Struct of BCD_X is
signal I,J,K,L,M,C1,C2,C3,C4 : std_logic;

begin
  --component instances
   NOT1 : INVERTER PORT MAP(A(0),Y(0));
	
	XOR1 : XOR_2 PORT MAP(A(0),A(1),I);
	NOT2 : INVERTER PORT MAP(I,Y(1));
	
	
	
   OR1 : OR_2 PORT MAP(A(0),A(1),J);
	AND1 : AND_2 PORT MAP(J,A(2),K);
	NOT3 : INVERTER PORT MAP(A(1),L);
	AND2 : AND_2 PORT MAP(L,A(3),M);
	OR2 : OR_2 PORT MAP(M,K,Y(3));
	
	NOT4 : INVERTER PORT MAP(A(0),C1);
	NOT5 : INVERTER PORT MAP(A(2),C2);
	AND3 : AND_3 PORT MAP(A(2),L,C1,C3);
	AND4 : AND_2 PORT MAP(C2,J,C4);
	OR3 : OR_2 PORT MAP(C4,C3,Y(2));
	
  end Struct;