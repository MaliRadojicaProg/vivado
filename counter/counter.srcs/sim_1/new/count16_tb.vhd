----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/15/2024 01:13:43 PM
-- Design Name: 
-- Module Name: count16_tb - Behavioral
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

entity count16_tb is
--  Port ( );
end count16_tb;

architecture Behavioral of count16_tb is
component count16 is
    Port ( en : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           cout : out STD_LOGIC;
           q : out STD_LOGIC_VECTOR(3 downto 0));
end component;
    signal en : std_logic :='0';
    signal rst:std_logic :='0';
    signal clk:std_logic :='0';
    signal cout:std_logic;
    signal q:std_logic_vector (3 downto 0);
    constant clk_period : time :=10ns;


begin
  uut: count16 PORT MAP(
  en=>en,
  rst=>rst,
  clk=>clk,
  cout=>cout,
  q=>q
);
  clk_process:process
begin
  clk<='0';
  wait for clk_period/2;
  clk <= '1';
	wait for clk_period/2;
end process;
rst<='0' , '1' after 50ns, '0' after 60ns;
en<='1', '0' after 170ns, '1' after 220ns;


end Behavioral;
