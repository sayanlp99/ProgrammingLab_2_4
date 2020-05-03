----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:36:17 05/03/2020 
-- Design Name: 
-- Module Name:    4bitALU - Behavioral 
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

entity ALU4bit is
	Port(
		a : in STD_LOGIC_VECTOR(3 downto 0);
		b : in STD_LOGIC_VECTOR(3 downto 0);
		sel : in STD_LOGIC_VECTOR(2 downto 0);
		out_alu : out STD_LOGIC_VECTOR(3 downto 0));
end ALU4bit;

architecture Behavioral of ALU4bit is
begin
process(a,b,sel)
	begin
	case sel is
	when "000" =>
		out_alu <= a + b;
	when "001" =>
		out_alu <= a - b;
	when "010" =>
		out_alu <= a - 1;
	when "011" =>
		out_alu <= a + 1;
	when "100" =>
		out_alu <= a and b;
	when "101" =>
		out_alu <= a or b;
	when "110" =>
		out_alu <= not a;
	when "111" =>
		out_alu <= a xor b;
	when others =>
		NULL;
	end case;
end process;


end Behavioral;

