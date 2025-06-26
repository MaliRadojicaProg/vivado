----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/23/2024 10:11:57 PM
-- Design Name: 
-- Module Name: kombmrz_tb - kombmrz_tb
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.NUMERIC_STD.ALL;
entity kombmrz_tb is
end kombmrz_tb;

architecture kombmrz_tb of kombmrz_tb is
  component kombmrz is
    port(a,b,c:in STD_LOGIC;
          f:out STD_LOGIC
        );
  end component;
  signal a,b,c,f :STD_LOGIC;
begin

dut: kombmrz  port map(
    a => a,
    b => b,
    c => c,
    f => f
);
a<= '0','1' after 5 ns;
b<='1';
c<='0';
end kombmrz_tb;
