--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.1i
--  \   \         Application : ISE
--  /   /         Filename : cse_2327_tb5.vhw
-- /___/   /\     Timestamp : Thu Feb 06 17:31:37 2020
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: cse_2327_tb5
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY cse_2327_tb5 IS
END cse_2327_tb5;

ARCHITECTURE testbench_arch OF cse_2327_tb5 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT xor_1
        PORT (
            com1 : In std_logic;
            com3 : Out std_logic
        );
    END COMPONENT;

    SIGNAL com1 : std_logic := '0';
    SIGNAL com3 : std_logic := '0';

    BEGIN
        UUT : xor_1
        PORT MAP (
            com1 => com1,
            com3 => com3
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                com1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 300 ns;
                com1 <= '0';
                WAIT FOR 600 ns;

            END PROCESS;

    END testbench_arch;

