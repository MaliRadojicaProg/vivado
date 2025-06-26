----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/09/2024 08:37:42 PM
-- Design Name: 
-- Module Name: au - arch
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


entity auJ is
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           s : in STD_LOGIC_VECTOR (1 downto 0);
           y : out STD_LOGIC_VECTOR (7 downto 0));
end auJ;

architecture arch of auJ is
 signal au,yu: signed(7 downto 0);
begin
  au<=signed(a);
  with s select
    yu<=au when "00", 
       au-1 when "01",
       au+1 when "10",
       -au when others;
  y<=STD_LOGIC_VECTOR(yu);

end arch;


