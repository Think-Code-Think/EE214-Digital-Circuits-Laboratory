library ieee;
use ieee.std_logic_1164.all;
package Flipflops is
component dff_set is port(D,clock,set:in std_logic;Q:out std_logic);
end component dff_set;
component dff_reset is port(D,clock,reset:in std_logic;Q:out std_logic);
end component dff_reset;
end package Flipflops;


--D flip flop with set
library ieee;
use ieee.std_logic_1164.all;
entity dff_set is
	port(D,clock,set:in std_logic;Q:out std_logic);
end entity dff_set;
architecture behav of dff_set is
begin
dff_set_proc: process (clock,set)

begin
if(set='1')then -- set implies flip flip output logic high
Q <= '1'; -- write the flip flop output when set
elsif (clock'event and (clock='1')) then
Q <= D; -- write flip flop output when not set
end if ;
end process dff_set_proc;
end behav;


--D flip flop with reset
library ieee;
use ieee.std_logic_1164.all;


entity dff_reset is 
port(D,clock,reset:in std_logic;Q:out std_logic);
end entity dff_reset;

architecture behav of dff_reset is
begin
dff_reset_proc: process (clock,reset)
begin
if(reset='1')then -- reset implies flip flop output logic low
Q <= '0'; -- write the flip flop output when reset
elsif (clock'event and (clock='1')) then
Q <= D; -- write flip flop output when not reset
end if ;
end process dff_reset_proc;
end behav;


library ieee;
use ieee.std_logic_1164.all;
use work.Flipflops.all;
-- write the Flipflops package declaration

entity Sequence_generator_stru_dataflow is
port (reset,clock: in std_logic;
y:out std_logic);
end entity Sequence_generator_stru_dataflow;

architecture struct of Sequence_generator_stru_dataflow is
signal D :std_logic_vector(2 downto 0);	--NS
signal Q :std_logic_vector(2 downto 0);	--PS
begin
-- write the equations in dataflow e.g z=a+bc written as z <= a or (b and c)
-- for DFF inputs which was derived and also for y.
-- Instantiate components dff_reset
-- and dff_set appropriately using port map statements.

--DFF instantiations
dff0:dff_set   port map(D(0),clock,reset,Q(0));
dff1:dff_reset port map(D(1),clock,reset,Q(1));
dff2:dff_reset port map(D(2),clock,reset,Q(2));

--DATA FLOW MODELLING
D(2) <= (Q(2) and (not Q(1)) AND Q(0)) or ((not Q(0)) and  Q(1)AND (NOT Q(2)));
D(1) <= (Q(0) and (not Q(1))) or ((not Q(2)) AND (not Q(1)));
D(0) <= Q(2) or (Q(0) xor Q(1));
y <= Q(0);

end struct;