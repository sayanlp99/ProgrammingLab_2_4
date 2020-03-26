library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity notGateBehavioral is
    Port ( A : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end notGateBehavioral;
architecture Behavioral of notGateBehavioral is
begin
process(A)
begin
if (A = '1') then
	Y <= '0';
else
	Y <= '1';
end if;
end process;
end Behavioral;