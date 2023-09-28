library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity FourbitAdderSubtractor is
port (A3,A2,A1,A0,B3,B2,B1,B0,M: in std_logic; Cout,S3,S2,S1,S0: out std_logic);
end entity FourbitAdderSubtractor;

architecture Struct of FourbitAdderSubtractor is
signal I,J,K,L,C1,C2,C3 : std_logic;

component Full_adder is
port (A, B, C: in std_logic; Sum, Cout: out std_logic);
end component Full_adder;

begin
  --component instances
   xor1: XOR_2 port map(M,B0,I);
	fulladder1: Full_adder port map (A0,I,M,S0,C1);
	xor2: XOR_2 port map(M,B1,J);
	fulladder2: Full_adder port map (A1,J,C1,S1,C2);
	xor3: XOR_2 port map(M,B2,K);
	fulladder3: Full_adder port map (A2,K,C2,S2,C3);
	xor4: XOR_2 port map(M,B3,L);
	fulladder4: Full_adder port map (A3,L,C3,S3,Cout);
  
  end Struct;