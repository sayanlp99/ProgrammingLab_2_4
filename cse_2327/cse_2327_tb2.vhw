--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.1i
--  \   \         Application : ISE
--  /   /         Filename : cse_2327_tb2.vhw
-- /___/   /\     Timestamp : Thu Feb 06 17:26:44 2020
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: cse_2327_tb2
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY cse_2327_tb2 IS
END cse_2327_tb2;

ARCHITECTURE testbench_arch OF cse_2327_tb2 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT xor_1
        PORT (
            com1 : In std_logic;
            com2 : In std_logic;
            com3 : Out std_logic
        );
    END COMPONENT;

    SIGNAL com1 : std_logic := '0';
    SIGNAL com2 : std_logic := '0';
    SIGNAL com3 : std_logic := '0';

    BEGIN
        UUT : xor_1
        PORT MAP (
            com1 => com1,
            com2 => com2,
            com3 => com3
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                com1 <= '1';
                com2 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                com1 <= '0';
                com2 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                com1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                com2 <= '1';
                WAIT FOR 600 ns;

            END PROCESS;

    END testbench_arch;

