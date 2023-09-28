-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(); -- # fill input bits to your design.
       	output_vector: out std_logic_vector());-- # fill output bits from your design.
end entity;

architecture DutWrap of DUT is
   component ZNVLG is
     port (X, Y: in std_logic_vector(3 downto 0); Z,N,V,L,G: out std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the tracefile!
   flag_instance: ZNVLG 
			port map (
					-- order of inputs X Y
					 -- fill code for port map
                                      -- order of output Z, N, V, L, G
					-- fill code for port map
					);
end DutWrap;
