----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/23/2024 10:11:21 PM
-- Design Name: 
-- Module Name: kombmrz - kombmrz
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

entity kombmrz is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           f : out STD_LOGIC);
end kombmrz;

architecture kombmrz of kombmrz is
signal y,x,z:STD_LOGIC;
begin
  x<=transport a xor b after 3 ns;
  y<=transport a nand b after 1 ns;
  z<= transport c nor y after 1 ns;
  f<= transport z and x after 2 ns;

end kombmrz;
