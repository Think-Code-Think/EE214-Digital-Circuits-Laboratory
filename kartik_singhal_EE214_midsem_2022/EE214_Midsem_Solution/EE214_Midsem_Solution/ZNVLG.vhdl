library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity ZNVLG  is
  port (X, Y: in std_logic_vector(3 downto 0); Z,N,V,L,G: out std_logic);
end entity ZNVLG;

architecture Struct of ZNVLG is

    component AddSub4 is
     port(A,B : in std_logic_vector(3 downto 0); M : in std_logic; S : out std_logic_vector(3 downto 0); C4,C3 : out std_logic );
   end component;

--intermediate signals   
signal S : std_logic_vector(3 downto 0) := (others => '0');
signal C4,C3 : std_logic := '0'; 
signal tS3xnS2, tS1xnS0, tNxV : std_logic := '0';
signal sZ,sN,sV : std_logic := '0';

begin
---------------------------------------------------Subtarctor---------------------------------------------------------------------
  -- component instances
  SUB: AddSub4 port map (A => X, B => Y, M => '1', S => S, C4 => C4 , C3 => C3); --Subtract always hence M = 1
----------------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------Zero_Flag-------------------------------------------------------------------- 
 --When all the bits in the result is zero then only the zero flag will be 1
 --Therefor NOR of all bits of the resultant will give zero flag	 

  OR1 : OR_2 port map (A => S(3), B => S(2), Y => tS3xnS2);
  OR2 : OR_2 port map (A => S(1), B => S(0), Y => tS1xnS0);
  Zero_flag : NOR_2 port map (A => tS3xnS2, B => tS1xnS0, Y => sZ); -- Zero if all resultant bits are zero
  Z <= sZ;
  
---------------------------------------------------------------------------------------------------------------------------------- 

---------------------------------------------------Negative_Flag------------------------------------------------------------------ 
  
  sN <= S(3); --MSB S4 bit gives the sign bit representing negative or positive
  N  <= sN;
    
----------------------------------------------------------------------------------------------------------------------------------- 

--------------------------------------------------Overflow_Flag--------------------------------------------------------------------

  -- Overflow occurs in subtraction only if X and Y are of opposite signs
  -- If X and Y are same sign subtraction will always produce a result within the range
  -- If X is positive Y is negative and result is negative overflow has occured.
  -- Similarily, if X is negative Y is positive and result is positive overflow has occured.
  -- V <= S3barXYbar + S3XbarY
  
  -- For minimum gate implementation
  -- X and 1's complement of Y (after inverting all Y bits ) having same MSB bit but output having opposite MSB bit indicates overflow has occured
  -- If C3 = 0 , MSB of X = 1 , MSB of 1's complement of Y = 1 then C4 = 1 and S3 = 0 indicates overflow
  -- If C3 = 1 , MSB of X = 1 , MSB of 1's complement of Y = 1 then C4 = 1 and S3 = 1 indicates no overflow
  -- If C3 = 0 , MSB of X = 0 , MSB of 1's complement of Y = 0 then C4 = 0 and S3 = 0 indicates no overflow
  -- If C3 = 1 , MSB of X = 0 , MSB of 1's complement of Y = 0 then C4 = 0 and S3 = 1 indicates overflow
  
  -- One such corner case X=0000 and Y=1000 result is overflow as 1000 will be interpreted as -8 not 8
  -- In this case while addition of X(0000) and 1's complement of Y(0111) with C0 = 1
  -- C3 = 1, S3 = 1 but C4 = 0 
  
  -- V <= C4 xor C3
  
  XOR1 : XOR_2 port map (A => C3, B => C4, Y => sV); --Above explanation C4 xor C3 gives overflow flag
  V <= sV;
    
-----------------------------------------------------------------------------------------------------------------------------------  

-------------------------------------------------------Less_than_Equal_to_Flag-----------------------------------------------------

  --Following cases arise for (X < Y)
  --If (X < Y) & X and Y both are positive then V=0 and N=1. Similarily if (X < Y) & X and Y both are negative then also V=0 and N=1.
  --If X is negative and Y is positive then the difference result will be negative (N=1) if there is no overflow (V=0).
  --If X is negative and Y is positive then the difference result will be positive (N=0) if there is overflow (V=1).
  --For (X less than Y) <= N xor V
  --The case X=Y is detected by Z=1
  --For (X less than or equal to Y) <= Z or (N xor V)

  --L = Z or (N xor V)
  
  Leq1 : XOR_2 port map (A => sN, B => sV, Y => tNxV);
  Leq2 : OR_2 port map(A => sZ , B => tNxV ,  Y => L);
  
-----------------------------------------------------------------------------------------------------------------------------------  
  
--------------------------------------------------Greater_than_Equal_to_Flag-------------------------------------------------------
  --Simple inverse of the case X<Y is X>=Y case 
  --So, (X less than Y) <= N xor V . Then its inverse (X greater than or equal to Y) <= N xnor V
  
  -- G = N xnor V (Minimum gate implementation)
  -- Students may tend to write G = Z or (N xnor V) which will also give correct answers as Z will be a subset of N xnor V, 
  -- i.e. when Z=1, N will be 0 and V will be 0
  
  Geq : XNOR_2 port map(A => sN, B => sV, Y => G); 
  
-----------------------------------------------------------------------------------------------------------------------------------    

end Struct;
