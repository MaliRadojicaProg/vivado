----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/08/2025 02:14:15 AM
-- Design Name: 
-- Module Name: add4 - Behavioral
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


entity add4 is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           ci : in STD_LOGIC;
           co : out STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0));
end add4;

architecture Behavioral of add4 is
signal zbirV :signed(5 downto 0);
signal zbir,ain,bin : signed(3 downto 0);
begin
  ain<=signed(a);
  bin<=signed(b);
  zbirV<=('0' & ain & '1') + ('0' & bin & ci);
  zbir <= zbirV(4 downto 1);
  co<=zbirV(5);
  s<=STD_LOGIC_VECTOR(zbir);
end Behavioral;
