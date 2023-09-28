library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity XOR_GATE is
port (A, B: in std_logic; Y: out std_logic);
end entity XOR_GATE;

architecture Struct of XOR_GATE is
signal A_BAR, B_BAR,AB,A_BAR_B_BAR : std_logic;
begin
  --component instances
  NOR1 : NOR_2 port map (A => A, B => A, Y => A_BAR);
  NOR2 : NOR_2 port map (A => B, B => B, Y => B_BAR);
  NOR3 : NOR_2 port map (A=>A_BAR, B=>B_BAR,Y=>AB);
  NOR4 : NOR_2 port map (A => A, B => B, Y =>A_BAR_B_BAR );
  NOR5 : NOR_2 port map (A=>AB, B=>A_BAR_B_BAR,Y=>Y);
  end Struct;