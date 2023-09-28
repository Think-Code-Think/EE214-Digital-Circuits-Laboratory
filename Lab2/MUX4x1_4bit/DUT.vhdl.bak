-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(5 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
component MUX4x1 is
port (I1,I2,I3,I4,S1,S2: in std_logic; Y: out std_logic);
end component MUX4x1;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: MUX4x1 port map (I1 => input_vector(2),
                                 I2 => input_vector(3),
										   I3 => input_vector(4),
                                 I4 => input_vector(5),	
											S1 => input_vector(0),
											S2 => input_vector(1),
											Y => output_vector(0));
	
end DutWrap;
