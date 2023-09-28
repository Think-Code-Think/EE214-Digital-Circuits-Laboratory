library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity BCD_X_Add_Sub is
port (
A:  in std_logic_vector(3 downto 0);
B:  in std_logic_vector(3 downto 0);
M: IN STD_LOGIC;
Y: out std_logic_vector(4 downto 0));
end entity BCD_X_Add_Sub;

architecture Struct of BCD_X_Add_Sub is

signal H,I,J,K,L,C1,C2,C3,C4,Cout : std_logic;
SIGNAL AX : STD_LOGIC_VECTOR(3 downto 0);
SIGNAL BX : STD_LOGIC_VECTOR(3 downto 0);
SIGNAL Z : STD_LOGIC_VECTOR(4 downto 0);
component Full_adder is
port (A, B, C: in std_logic; Sum, Cout: out std_logic);
end component Full_adder;

component FourbitAdderSubtractor is
port (A3,A2,A1,A0,B3,B2,B1,B0,M: in std_logic; Cout,S3,S2,S1,S0: out std_logic);
end component FourbitAdderSubtractor;


COMPONENT BCD_X is
port (
A:  in std_logic_vector(3 downto 0);
Y: out std_logic_vector(3 downto 0));
end COMPONENT BCD_X;

begin

  --component instances
   bcd_x1: BCD_X port map(A,AX);
	bcd_x2: BCD_X port map(B,BX);
	NOT1: INVERTER PORT MAP(M,I);
	FourbitAdderSubtractor1 : FourbitAdderSubtractor port map (AX(3),AX(2),AX(1),AX(0),BX(3),BX(2),BX(1),BX(0),M,Z(4),Z(3),Z(2),Z(1),Z(0));
	NOR1: NOR_2 PORT MAP(Z(4),M,C1);
	NOT2: INVERTER PORT MAP(Z(4),C2);
	AND1: AND_2 PORT MAP(C2,M,H);
   FourbitAdderSubtractor2 : FourbitAdderSubtractor port map (C1,'0',C1,'0',Z(3),Z(2),Z(1),Z(0),H,L,Y(3),Y(2),Y(1),Y(0));
	AND2: AND_2 PORT MAP(Z(4),I,Y(4));
   
	
  end Struct;