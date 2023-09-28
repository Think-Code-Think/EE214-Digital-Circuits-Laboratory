library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity FourbitAdderSubtractor is
port (A3,A2,A1,A0,B3,B2,B1,B0: in std_logic; Cout,S3,S2,S1,S0: out std_logic);
end entity FourbitAdderSubtractor;

architecture Struct of FourbitAdderSubtractor is
signal I,J,K,L,C1,C2,C3 : std_logic;

component Full_adder is
port (A, B, C: in std_logic; Sum, Cout: out std_logic);
end component Full_adder;


begin
  --component instances
   
	halfadder1: HALF_ADDER port map (A0,B0,S0,C1);
	
	fulladder1: Full_adder port map (A1,B1,C1,S1,C2);
	
	fulladder2: Full_adder port map (A2,B2,C2,S2,C3);
	
	fulladder3: Full_adder port map (A3,B3,C3,S3,Cout);
  
  end Struct;