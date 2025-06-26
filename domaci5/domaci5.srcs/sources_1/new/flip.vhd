----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/20/2024 01:23:16 AM
-- Design Name: 
-- Module Name: flip - Behavioral
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

entity flip is
    Port ( x : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           z0 : out STD_LOGIC;
           z1 : out STD_LOGIC);
end flip;

architecture rtl of flip is
  signal z0in,z1in:std_logic;
begin 
  process(clk)
  begin 
    if  clk'event and clk='1' then
      if(rst='1') then 
        z0in<='0';
        z1in<='0';
      else 
        z0in<=z1in nand (z0in nand x);
        z1in<= not(x);
      end if;
    end if;
  z0<=z0in;
  z1<=z1in;
  end process;
end rtl;
