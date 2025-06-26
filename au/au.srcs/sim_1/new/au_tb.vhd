----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/09/2024 08:44:15 PM
-- Design Name: 
-- Module Name: au_tb - Behavioral
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
entity au_tb is
end au_tb;
architecture Behavioral of au_tb is
  component au is
  port(a:IN STD_LOGIC_VECTOR(7 downto 0);
       s:IN STD_LOGIC_VECTOR(1 downto 0);
      y:OUT STD_LOGIC_VECTOR(7 downto 0)
);

end component;
signal a,y:STD_LOGIC_VECTOR(7 downto 0);
signal s:STD_LOGIC_VECTOR(1 downto 0);
begin
  uut: entity work.auoptJ(archopt)
  port map(a=>a,y=>y,s=>s);
 s<= "00", "01" after 40 ns,"10" after 80 ns,"11" after 120 ns;
 a<="00000000","00001000" after 10 ns;

end Behavioral;
