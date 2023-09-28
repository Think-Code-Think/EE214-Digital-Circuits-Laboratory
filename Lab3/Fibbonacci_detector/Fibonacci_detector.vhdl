library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Fibonacci_detector is
port (x4,x3,x2,x1,x0 : in std_logic; Y: out std_logic);
end entity Fibonacci_detector;

architecture Struct of Fibonacci_detector is
signal x_4,x_3,x_2,x_1,x_0,h,i,j,k  : std_logic;
begin
  --component instances
  NOT1 : INVERTER port map(x4,x_4);
  NOT2 : INVERTER port map(x3,x_3);
  NOT3 : INVERTER port map(x2,x_2);
  NOT4 : INVERTER port map(x1,x_1);
  NOT5 : INVERTER port map(x0,x_0);
  AND1 : AND_3 port map (x_4,x_3,x_2,h);
  AND2 : AND_4 port map (x_4,x_2,x_1,x_0,i);
  AND3 : AND_4 port map (x_4,x2,x_1,x0,j);
  AND4 : AND_4 port map (x_3,x2,x_1,x0,k);
  OR1  : OR_4 port map (h,i,j,k,Y);
  end Struct;