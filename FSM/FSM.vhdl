library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity students is
port( 
inp        :in std_logic_vector(4 downto 0);
reset,clock:in std_logic;
outp       : out std_logic);
end students;

architecture bhv of students is
---------------Define state type here-----------------------------
type state is (rst,s1,s2,s3,s4,s5,s6,s7,s8); -- Fill other states here
---------------Define signals of state type-----------------------
signal y_present,y_next: state:=rst;

begin
clock_proc:process(clock,reset)
begin
	if(clock='1' and clock' event) then
		if(reset='1') then
			y_present<= rst;-- Fill the code here
		else
         y_present <= y_next;-- Fill the code here
		end if;
	end if;
end process;
state_transition_proc:process(inp,y_present)
begin
	case y_present is
		when rst=>
			if(unsigned(inp)=19) then --s has been detected
				y_next<= s1; -- Fill the code here
			else
			   y_next<= rst;
			end if;
	   when s1 =>
         if (unsigned(inp) = 20) then -- 't' has been detected
            y_next <= s2;
         else
            y_next <= s1;
         end if;
	   when s2 =>
         if (unsigned(inp) = 21) then -- 'u' has been detected
            y_next <= s3;
         else
            y_next <= s2;
         end if;
	   when s3 =>
         if (unsigned(inp) = 4) then -- 'd' has been detected
            y_next <= s4;
         else
            y_next <= s3;
         end if;
	   when s4 =>
         if (unsigned(inp) = 5) then -- 'e' has been detected
            y_next <= s5;
         else
            y_next <= s4;
         end if;
	   when s5 =>
         if (unsigned(inp) = 14) then -- 'n' has been detected
            y_next <= s6;
         else
            y_next <= s5;
         end if;
	   when s6 =>
         if (unsigned(inp) = 20) then -- 't' has been detected
            y_next <= s7;
         else
            y_next <= s6;
         end if;
	   when s7 =>
         if (unsigned(inp) = 19) then -- 's' has been detected
            y_next <= s1;
         else
            y_next <= s7;
         end if;
      when others =>
            y_next <= rst;
	end case;
end process;
output_proc: process(inp, y_present)
    begin
        case y_present is
            when s7 =>
         if (unsigned(inp)=19) then
				outp<='1';-- Output '1' when the entire word "students" is detected
			else
				outp<='0';
			end if;
			when others=>
				outp<='0';
			end case;				
    end process;

end bhv;


-------------------------
---------Fill rest of the code here---------
-------Similarly define output process after this which will give
-------the output based on the present state and input (Mealy machine)