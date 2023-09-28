library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity BCD_Adder is
port (A3,A2,A1,A0,B3,B2,B1,B0,M: in std_logic; Y4,Y3,Y2,Y1,Y0: out std_logic);
end entity BCD_Adder;

architecture Struct of BCD_Adder is
signal I,J,K,L,C1,C2,C3,C4,Y,Z,X : std_logic;

component Full_adder is
port (A, B, C: in std_logic; Sum, Cout: out std_logic);
end component Full_adder;


component FourbitAdderSubtractor is
port (A3,A2,A1,A0,B3,B2,B1,B0,M: in std_logic; Cout,S3,S2,S1,S0: out std_logic);
end component FourbitAdderSubtractor;

begin
  --component instances
   FourbitAdder1: FourbitAdderSubtractor port map(A3,A2,A1,A0,B3,B2,B1,B0,M,C1,I,J,K,L);
	AND1 : AND_2 port map(I,J,C3);
	AND2 : AND_2 port map(I,K,C4);
	OR1  : OR_3 port map(C1,C3,C4,Y);
   FourbitAdder2: FourbitAdderSubtractor port map('0',Y,Y,'0',I,J,K,L,M,Z,Y3,Y2,Y1,Y0);
	not1 : INVERTER port map(Y,X);
	not2 : INVERTER port map(X,Y4);
  end Struct;