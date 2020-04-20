library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity decoder2to4switch is
port(a : in STD_LOGIC_VECTOR(1 downto 0);
	b : out STD_LOGIC_VECTOR(3 downto 0));
end decoder2to4switch;

architecture Behavioral of decoder2to4switch is
begin

process(a)
begin
case a is
	when "00" => b <= "0001";
	when "01" => b <= "0010";
	when "10" => b <= "0100";
	when "11" => b <= "1000";
	when others => b <= "XXXX";
end case;
end process;

end Behavioral;

