library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity FULL_SUBTRACTOR is
port (A, B,Bin: in std_logic; D,Bout: out std_logic);
end entity FULL_SUBTRACTOR;

architecture Struct of FULL_SUBTRACTOR is
signal I,J,K,L : std_logic;

component HALF_SUBTRACTOR is
port (A, B: in std_logic; D,C: out std_logic);
end component HALF_SUBTRACTOR;
begin
  --component instances
  
  HALF_SUBTRACTOR1 : HALF_SUBTRACTOR port map (A => A, B => B, D => I,C=>J);
  HALF_SUBTRACTOR2 : HALF_SUBTRACTOR port map (A=>I, B=>Bin,D=>D,C=>K);
  NOR1 : NOR_2 port map (A => J, B => K, Y =>L);
  NOR2 : NOR_2 port map (A => L, B => L, Y =>Bout);
  
  end Struct;