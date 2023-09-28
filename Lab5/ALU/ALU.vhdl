library ieee;
use ieee.std_logic_1164.all;

entity alu_beh is
port (
A:  in std_logic_vector(3 downto 0);
B:  in std_logic_vector(3 downto 0);
op:out std_logic_vector(5 downto 0)
);
end alu_beh;

architecture a1 of alu_beh is

function maxing(A: in std_logic_vector(3 downto 0); B: in std_logic_vector(3 downto 0))
return std_logic_vector is
-- declaring and initializing variables using aggregates
variable maxer : std_logic_vector(3 downto 0):=(others =>'0');

begin
   if A > B then
		maxer := A;
	elsif B > A then
	   maxer := B;
	else 
		maxer := "0000";
	end if;
-- Use aggregates to assign values to multiple bits
return maxer;
end maxing;

function anding(A: in std_logic_vector(3 downto 0); B: in std_logic_vector(3 downto 0))
return std_logic_vector is
-- declaring and initializing variables using aggregates
variable ander : std_logic_vector(3 downto 0):=(others =>'0');

begin
   ander := A and B;
-- Use aggregates to assign values to multiple bits
return ander;
end anding;

function noting(A: in std_logic_vector(3 downto 0); B: in std_logic_vector(3 downto 0))
return std_logic_vector is
-- declaring and initializing variables using aggregates
variable noter : std_logic_vector(3 downto 0):=(others =>'0');

begin
   noter := not A;
-- Use aggregates to assign values to multiple bits
return noter;
end noting;

function eqing(A: in std_logic_vector(3 downto 0); B: in std_logic_vector(3 downto 0))
return std_logic_vector is
-- declaring and initializing variables using aggregates
variable eqer : std_logic_vector(3 downto 0):=(others =>'0');

begin
   if A = B then
		eqer := A;
	else
		eqer := "0000";
	end if;
-- Use aggregates to assign values to multiple bits
return eqer;
end eqing;


	begin
	alu : process(A, B)
	begin
		if B(3)='0' and A(3)='0' then
				op <= "00" & maxing(A,B);
			elsif B(3)='0' and A(3)='1' then
				op <= "00" & anding(A,B);
			elsif B(3)='1' and A(3)='0' then
				op <= "00" & noting(A,B);
			elsif B(3)='1' and A(3)='1' then
				op <= "00" & eqing(A,B);
		end if;
	end process ; --alu
end a1 ; -- a1

