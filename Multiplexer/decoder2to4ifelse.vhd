library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity decoder2to4ifelse is
port(a : in STD_LOGIC_VECTOR(1 downto 0);
	b : out STD_LOGIC_VECTOR(3 downto 0));
end decoder2to4;

architecture Behavioural of decoder2to4ifelse is
begin

process(a)
begin
 if (a="00") then
 b <= "0001";
 elsif (a="01") then
 b <= "0010";
 elsif (a="10") then
 b <= "0100";
 else
 b <= "1000";
 end if;
end process;


end Behavioural;

