library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Multiplier is
port (A3,A2,A1,A0,B2,B1,B0: in std_logic; M6,M5,M4,M3,M2,M1,M0: out std_logic);
end entity Multiplier ;

architecture Struct of Multiplier is
signal A0B0,A1B0,A2B0,A3B0,A0B1,A1B1,A2B1,A3B1,A0B2,A1B2,A2B2,A3B2,C0,C1,C2,C3,C4,C5,c6,X0,X1 : std_logic;

component Full_adder is
port (A, B, C: in std_logic; Sum, Cout: out std_logic);
end component Full_adder;

component  FourbitAdderSubtractor is
port (A3,A2,A1,A0,B3,B2,B1,B0,M: in std_logic; Cout,S3,S2,S1,S0: out std_logic);
end component FourbitAdderSubtractor;


begin
  --component instances
  
	AND1  : AND_2 port map(A0,B0,M0);
	AND2  : AND_2 port map(A1,B0,A1B0);
	AND3  : AND_2 port map(A2,B0,A2B0);
	AND4  : AND_2 port map(A3,B0,A3B0);
	AND5  : AND_2 port map(A0,B1,A0B1);
	AND6  : AND_2 port map(A1,B1,A1B1);
	AND7  : AND_2 port map(A2,B1,A2B1);
	AND8  : AND_2 port map(A3,B1,A3B1);
	AND9  : AND_2 port map(A0,B2,A0B2);
	AND10 : AND_2 port map(A1,B2,A1B2);
	AND11 : AND_2 port map(A2,B2,A2B2);
	AND12 : AND_2 port map(A3,B2,A3B2);
	
	FourbitAdderSubtractor1: FourbitAdderSubtractor port map('0',A3B0,A2B0,A1B0,A3B1,A2B1,A1B1,A0B1,'0',C4,C3,C2,C1,M1);
	FourbitAdderSubtractor2: FourbitAdderSubtractor port map(C4,C3,C2,C1,A3B2,A2B2,A1B2,A0B2,'0',M6,M5,M4,M3,M2);
	
  end Struct;