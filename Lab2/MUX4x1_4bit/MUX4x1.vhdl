library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity MUX4x1 is
port (I1,I2,I3,I4,S1,S2: in std_logic; Y: out std_logic);
end entity MUX4x1;

architecture Struct of MUX4x1 is
signal A,B : std_logic;

component MUX2x1 is
port (I0, I1,S: in std_logic; Y: out std_logic);
end component MUX2x1;

begin
  --component instances
  
  MUX1 : MUX2x1 port map(I1,I2,S1,A);
  MUX2 : MUX2x1 port map(I3,I4,S1,B);
  MUX3 : MUX2x1 port map(A,B,S2,Y);
  
  end Struct;