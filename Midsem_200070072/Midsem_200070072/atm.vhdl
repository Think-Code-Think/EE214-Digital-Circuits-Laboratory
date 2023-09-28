--///////////////////////////////////////////////////////////////////////////

-- @ Soumyajit Langal (WEL IITB)
-- The skeleton code for Mid-Semester EE214. 

--///////////////////////////////////////////////////////////////////////////

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity atm is
-- port declaration 
 port(I : in std_logic_vector(7 downto 0);
		P: out std_logic_vector(1 downto 0);
		A: out std_logic_vector(1 downto 0);
		B: out std_logic;
		C: out std_logic_vector(5 downto 0));
end entity atm;

architecture struct of atm is

component div is
generic(
			N : integer:=8; -- operand width
			NN : integer:=16 -- result width
        );
port (
			Nu: in std_logic_vector(N-1 downto 0);-- Nu (read numerator) is dividend
			D: in std_logic_vector(N-1 downto 0);-- D (read Denominator) is divisor
			RQ: out std_logic_vector(NN-1 downto 0)--upper N bits of RQ will have remainder and lower N bits will have quotient
) ;
end component;

-- write code here
signal ty: std_logic_vector(7 downto 0);
signal tp: std_logic_vector(1 downto 0);
signal tc: std_logic_vector(5 downto 0);
signal r1: std_logic_vector(5 downto 0);
signal r2: std_logic_vector(1 downto 0);
signal r3: std_logic_vector(6 downto 0);


signal tq,t1,t2,t3,t4,t5,t6,t7,d: std_logic;
begin

-- Write code here(don't worry about generic, just ignore it and do normal port mapping for div)
div_1: div
		port map(Nu(7 downto 0)=>I(7 downto 0), D=>"01100100",RQ(1 downto 0)=>tp, 
					RQ(15 downto 8)=>ty, RQ(7 downto 2)=>r1);
		
div_2: div
		port map(Nu=>ty, D=>"00110010", RQ(0)=>tq, RQ(13 downto 8)=>tc,RQ(15 downto 14)=>r2, RQ(7 downto 1)=>r3);
-- and used to give the output A,B,C
and1: AND_2
			port map(A=>tp(1), B=>'1', Y=>A(1));
and2: AND_2
			port map(A=>tp(0), B=>'1', Y=>A(0));
and3: AND_2
			port map(A=>tq, B=>'1', Y=>B);
and4: AND_2
			port map(A=>tc(0), B=>'1', Y=>C(0));
and5: AND_2
			port map(A=>tc(1), B=>'1', Y=>C(1));
and6: AND_2
			port map(A=>tc(2), B=>'1', Y=>C(2));
and7: AND_2
			port map(A=>tc(3), B=>'1', Y=>C(3));
and8: AND_2
			port map(A=>tc(4), B=>'1', Y=>C(4));	
and9: AND_2
			port map(A=>tc(5), B=>'1', Y=>C(5));
-- end of the outputs A,B,C		
or1: OR_2
		port map(A=>tp(1), B=>tp(0), Y=>t1);
or2: OR_2
		port map(A=>t1, B=>tq, Y=>P(1)); -- output p1 done
		
-- using or to determine whether there is any one rupee coin or not. If d is 1 there is one rupee coin		
or4: OR_2
		port map(A=>tc(0), B=>tc(1), Y=>t3);
or5: OR_2
		port map(A=>tc(2), B=>tc(3), Y=>t4);
or6: OR_2
		port map(A=>tc(4), B=>tc(5), Y=>t5);
or7: OR_2
		port map(A=>t3, B=>t4, Y=>t6);
or8: OR_2
		port map(A=>t5, B=>t6, Y=>d);		
		
		
inv1: INVERTER
		port map(A=>tq, Y=>t2);  -- not of B
		
and10: AND_2
		port map(A=>t2, B=>d, Y=>t7);
		

		
or3: OR_2
		port map(A=>t1, B=>t7, Y=>P(0));		
		
		

end struct;
