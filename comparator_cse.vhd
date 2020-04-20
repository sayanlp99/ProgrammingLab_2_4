----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:40:55 04/19/2020 
-- Design Name: 
-- Module Name:    comparator_cse - Behavioral 
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

entity comparator_cse is
	generic(n: natural :=2);
    Port ( A : in  STD_LOGIC_VECTOR(n-1 downto 0);
           B : in  STD_LOGIC_VECTOR(n-1 downto 0);
           less : out  STD_LOGIC;
           equal : out  STD_LOGIC;
           greater : out  STD_LOGIC);
end comparator_cse;

architecture Behavioral of comparator_cse is

begin
process(A,B)
begin
if(A<B) then
	less <= '1';
	equal <= '0';
	greater <= '0';
elsif(A=B) then
	less <= '0';
	equal <= '1';
	greater <= '0';
else
	less <= '0';
	equal <= '0';
	greater <= '1';
end if;
end process;

end Behavioral;

