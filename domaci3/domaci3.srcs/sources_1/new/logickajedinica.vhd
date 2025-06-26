----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/03/2024 05:57:21 PM
-- Design Name: 
-- Module Name: logickajedinica - Behavioral
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


entity logickajedinica is
    Port ( c : in STD_LOGIC_VECTOR (1 downto 0);
           a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           y : out STD_LOGIC_VECTOR (7 downto 0));
end logickajedinica;

architecture Behavioral of logickajedinica is
signal cinL,cout,s:std_logic;
signal as,bs,ys,mx:signed(7 downto 0);
signal bm,cxor:STD_LOGIC_VECTOR(7 downto 0);
signal sabout:signed(7 downto 0);
signal saboutp:signed(9 downto 0);
  begin
  as<=signed(a);
  cinL<=c(1) or c(0);
  cxor<=(others=>cinL);
  bm<=b xor cxor;
  bs<=signed(bm);
  saboutp<=('0' & as & '1') + ('0' & bs & cinL);
  sabout<=saboutp(8 downto 1);
  cout<=saboutp(8);

  s<=c(1) xor cout;
  mx<=as WHEN s='1' ELSE
    signed(b);
  ys<=mx WHEN c(0)='1' ELSE
    sabout(7 downto 0);
  y<=STD_LOGIC_VECTOR(ys);

end Behavioral;
