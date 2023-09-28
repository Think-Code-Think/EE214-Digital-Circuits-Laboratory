library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity OR_GATE is
port (A, B: in std_logic; Y: out std_logic);
end entity OR_GATE;

architecture Struct of OR_GATE is
signal C : std_logic;
begin
  --component instances
  NOR1 : NOR_2 port map (A => A, B => B, Y => C);
  NOR2 : NOR_2 port map (A => C, B => C, Y => Y);
  
  end Struct;