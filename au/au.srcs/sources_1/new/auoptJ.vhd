----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/09/2024 10:07:51 PM
-- Design Name: 
-- Module Name: auoptJ - Behavioral
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

entity auoptJ is
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           s : in STD_LOGIC_VECTOR (1 downto 0);
           y : out STD_LOGIC_VECTOR (7 downto 0));
end auoptJ;

architecture archopt of auoptJ is
  signal au,bu,sab:unsigned(7 downto 0);
  --signal cu:std(0 downto 0);
begin
  --                     |s1s0
-- a=>a       +cu(0)     |0 0
-- a-1=>a+b(1111) +cu(0) |0 1
-- a+1=>a+b(0000) +cu(1) |1 0
-- -a=> not(a) +cu(1)    |1 1
  au<=unsigned(not(a)) when s="11" else unsigned(a);
  with s select
    bu<=(others => '1') when "01",
        (others => '0') when others;

   sab<=au+bu+("" & s(1));
   y<=std_logic_vector(sab);

end architecture archopt;
