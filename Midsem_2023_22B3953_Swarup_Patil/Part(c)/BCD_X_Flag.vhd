library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity BCD_X_Flag is
port (
A:  in std_logic_vector(3 downto 0);
B:  in std_logic_vector(3 downto 0);
M: IN STD_LOGIC;
S,Z,P : out std_logic;
Y: out std_logic_vector(4 downto 0));
end entity BCD_X_Flag;

architecture Struct of BCD_X_Flag is

signal H,C1 : std_logic;
signal AX: std_logic_vector(3 downto 0);
signal BX: std_logic_vector(3 downto 0);
signal F : std_logic_vector(4 downto 0);
signal E : std_logic_vector(4 downto 0);

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

component BCD_X_Add_Sub is
port (
A:  in std_logic_vector(3 downto 0);
B:  in std_logic_vector(3 downto 0);
M: IN STD_LOGIC;
Y: out std_logic_vector(4 downto 0));
end component BCD_X_Add_Sub;

begin

  --component instances
  BCD_X1: BCD_X port map(A,AX);
  BCD_X2: BCD_X port map(B,BX);
  FourbitAdderSubtractor1 : FourbitAdderSubtractor port map(AX(3),AX(2),AX(1),AX(0),BX(3),BX(2),BX(1),BX(0),M,F(4),F(3),F(2),F(1),F(0));
  BCD_X_Add_Sub1 : BCD_X_Add_Sub port map (A,B,M,E);
  BCD_X_Add_Sub2 : BCD_X_Add_Sub port map (A,B,M,Y);
  NOR1 : NOR_5 port map(E(4),E(3),E(2),E(1),E(0),Z);
  XOR1 : XOR_5 PORT MAP(E(4),E(3),E(2),E(1),E(0),H);
  NOT1 : INVERTER PORT MAP (H,P);
  NOT2 : INVERTER port map (F(4),C1);
  AND1 : AND_2 port map(C1,M,S); 
	
  end Struct;