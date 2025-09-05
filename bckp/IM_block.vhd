----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/17/2025 08:04:27 PM
-- Design Name: 
-- Module Name: IM_block - Behavioral
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

entity IM_block is
    Port ( p : in STD_LOGIC_VECTOR (5 downto 0);
           r_addr : out STD_LOGIC_VECTOR (5 downto 0);
           r_data : in STD_LOGIC_VECTOR (7 downto 0);
           w_addr : out STD_LOGIC_VECTOR (5 downto 0);
           w_data : out STD_LOGIC_VECTOR (7 downto 0);
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           clr : in STD_LOGIC;
           rdy : out STD_LOGIC;
           we : out STD_LOGIC);
end IM_block;

architecture Behavioral of IM_block is

begin


end Behavioral;
