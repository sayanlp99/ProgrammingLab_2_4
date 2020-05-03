----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:25:05 05/03/2020 
-- Design Name: 
-- Module Name:    ALU8bit - Behavioral 
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

entity ALU8bit is
	Port(
		a : in STD_LOGIC_VECTOR(7 downto 0);
		b : in STD_LOGIC_VECTOR(7 downto 0);
		sel : in STD_LOGIC_VECTOR(3 downto 0);
		alu_out : out STD_LOGIC_VECTOR(7 downto 0)
	);
end ALU8bit;

architecture Behavioral of ALU8bit is
begin
process(sel,a,b)
begin
	case sel is
		when "0000" =>
			alu_out <= a + b;
		when "0001" =>
			alu_out <= a and b;
		when "0010" =>
			alu_out <= not b;
		when "0110" =>
			alu_out <= not a;
		when "0111" =>
			alu_out <= a xor b;
		when "1001" =>
			alu_out <= a xnor b;
		when "1011" =>
			alu_out <= (not a) + 1;
		when "1100" =>
			alu_out <= (not b) + 1;
		when "1110" =>
			alu_out <= a or b;
		when "1111" =>
			alu_out <= a nand b;
		when others =>
			alu_out <= "XXXXXXXX";
	end case;
end process;
end Behavioral;

