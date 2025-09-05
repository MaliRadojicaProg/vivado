----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/17/2025 08:04:27 PM
-- Design Name: 
-- Module Name: control_unit - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity control_unit is
    Port ( en_s : out STD_LOGIC;
           en_x : out STD_LOGIC;
           en_y : out STD_LOGIC;
           en_i : out STD_LOGIC;
           sel_i : out STD_LOGIC;
           sel_eq : out STD_LOGIC;
           sel_idle : out STD_LOGIC;
           sel_add : out STD_LOGIC;
           comp_eq : in STD_LOGIC;
           comp_xy : in STD_LOGIC;
           comp_rn : in STD_LOGIC);
end control_unit;

architecture Behavioral of control_unit is

begin


end Behavioral;
