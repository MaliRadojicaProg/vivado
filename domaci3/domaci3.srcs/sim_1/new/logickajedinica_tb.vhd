----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/03/2024 08:17:02 PM
-- Design Name: 
-- Module Name: logickajedinica_tb - Behavioral
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

entity logickajedinica_tb is
end logickajedinica_tb;

architecture Behavioral of logickajedinica_tb is
  COMPONENT logickajedinica IS 
    PORT(a,b:IN STD_LOGIC_VECTOR(7 downto 0);
        c:IN std_logic_vector(1 downto 0);
        y:OUT std_logic_vector(7 downto 0));
  END COMPONENT;
  signal c:STD_LOGIC_VECTOR(1 downto 0);
  signal a,b,y:std_logic_vector(7 downto 0);
begin
 uut:logickajedinica
 port map(a=>a,b=>b,c=>c,y=>y);
 c<= "00", "01" after 40 ns,"10" after 80 ns,"11" after 120 ns;
 a<="00000000","10001000" after 10 ns;
 b<="00000000","01010100" after 10 ns; 
 end Behavioral;
