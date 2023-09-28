library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity MUX2x1 is
port (I0, I1,S: in std_logic; Y: out std_logic);
end entity MUX2x1;

architecture Struct of MUX2x1 is
signal A,B,C : std_logic;

begin
  --component instances
  
  NOT1 : INVERTER port map(S,A);
  AND1 : AND_2 port map (I0,A,B);
  AND2 : AND_2 port map (I1,S,C);
  OR1  : OR_2 port map (B,C,Y);
  
  end Struct;