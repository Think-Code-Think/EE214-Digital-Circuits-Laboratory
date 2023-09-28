-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(7 downto 0);
       	output_vector: out std_logic_vector(4 downto 0));
end entity;

architecture DutWrap of DUT is
   component ZNVLG is
     port (X, Y: in std_logic_vector(3 downto 0); Z,N,V,L,G: out std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   flag_instance: ZNVLG 
			port map (
					-- order of inputs A B
					X => input_vector(7 downto 4),
					Y => input_vector(3 downto 0),
               -- order of output OUTPUT
					Z => output_vector(4),
					N => output_vector(3),
					V => output_vector(2),
					L => output_vector(1),
					G => output_vector(0));
end DutWrap;
