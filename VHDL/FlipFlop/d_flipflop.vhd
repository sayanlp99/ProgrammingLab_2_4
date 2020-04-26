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

entity d_flipflop is
    Port ( d : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           set : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qb : out  STD_LOGIC);
end d_flipflop;

architecture Behavioral of d_flipflop is

begin
process(d,clk,rst,set)
variable tmp: std_logic;
begin
	if(rst = '1' and set = '1') then
		tmp:='X';
	elsif(rst = '1' and set = '0') then
		tmp:='0';
	elsif(rst = '0' and set = '1') then
		tmp:='1';
	else
		if(rising_edge(clk)) then
			tmp:=d;
		else
			tmp:=tmp;
		end if;
	end if;
	q <= tmp;
	qb <= not tmp;
end process;
end Behavioral;

