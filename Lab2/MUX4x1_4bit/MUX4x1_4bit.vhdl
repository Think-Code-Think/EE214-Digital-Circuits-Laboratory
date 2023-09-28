library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity MUX4x1_4bit is
port (D3,D2,D1,D0,C3,C2,C1,C0,B3,B2,B1,B0,A3,A2,A1,A0,S1,S0: in std_logic; Y3,Y2,Y1,Y0: out std_logic);
end entity MUX4x1_4bit;

architecture Struct of MUX4x1_4bit is
signal A,B : std_logic;

component MUX4x1 is
port (I1,I2,I3,I4,S1,S2: in std_logic; Y: out std_logic);
end component MUX4x1;

begin
  --component instances
  
  MUX1 : MUX4x1 port map(A3,B3,C3,D3,S0,S1,Y3);
  MUX2 : MUX4x1 port map(A2,B2,C2,D2,S0,S1,Y2);
  MUX3 : MUX4x1 port map(A1,B1,C1,D1,S0,S1,Y1);
  MUX4 : MUX4x1 port map(A0,B0,C0,D0,S0,S1,Y0);
  end Struct;