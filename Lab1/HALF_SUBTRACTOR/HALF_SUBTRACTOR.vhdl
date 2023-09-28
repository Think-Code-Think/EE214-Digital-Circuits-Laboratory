library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity HALF_SUBTRACTOR is
port (A, B: in std_logic; D,C: out std_logic);
end entity HALF_SUBTRACTOR;

architecture Struct of HALF_SUBTRACTOR is
signal B_BAR : std_logic;

component XOR_GATE is
port (A, B: in std_logic; Y: out std_logic);
end component XOR_GATE;
begin
  --component instances
  
  XOR1 : XOR_GATE port map (A => A, B => B, Y => D);
  NOR1 : NOR_2 port map (A=>B, B=>B,Y=>B_BAR);
  NOR2 : NOR_2 port map (A => A, B => B_BAR, Y =>C);
  
  
  end Struct;