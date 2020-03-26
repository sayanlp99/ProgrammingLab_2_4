library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity notGateDataFlow is
    Port ( A : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end notGateDataFlow;
architecture dataflow of notGateDataFlow is
begin
Y <= not A;
end dataflow;