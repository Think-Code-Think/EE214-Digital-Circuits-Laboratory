library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Full_adder is
port (A, B, C: in std_logic; Sum, Cout: out std_logic);
end entity Full_adder;

architecture Struct of Full_adder is
signal S0, S1, S2 : std_logic;

begin
  --component instances
 
  Half_adder1:HALF_ADDER port map (A => A, B => B, S => S0, C => S1);
  Half_adder2:HALF_ADDER port map (A => S0, B => C, S => Sum, C => S2);
  OR1: OR_2 port map (A => S2, B => S1, Y => Cout);
  
  end Struct;