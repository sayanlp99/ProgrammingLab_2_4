----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:45:24 04/26/2020 
-- Design Name: 
-- Module Name:    sr_flipflop - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sr_flipflop is
    Port ( s : in  STD_LOGIC;
           r : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           set : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qb : out  STD_LOGIC);
end sr_flipflop;

architecture Behavioral of sr_flipflop is

begin
process(s,r,clk,rst,set)
variable tmp: std_logic;
begin
	if(rst = '1' and set = '1') then
		tmp:='X';
		--q <= 'X';
		--qb <= 'X';
	elsif(rst = '1' and set = '0') then
		tmp:='0';
		--q <= '0';
		--qb <= '1';
	elsif(rst = '0' and set = '1') then
		tmp:='1';
		--q <= '1';
		--qb <= '0';
	else
		if(rising_edge(clk)) then
			if(s /= r) then
				tmp:=s;
				--q <= s;
				--qb <= r;
			elsif(s='0' and r='0') then
				tmp:= tmp;
				--q <= q;
				--qb <= not q;
			elsif(s='1' and r='1') then
				tmp:='X';
				--q <= 'X';
				--qb <= 'X';
			end if;
		end if;
	end if;
	q <= tmp;
	qb <= not tmp;
end process;
end Behavioral;

