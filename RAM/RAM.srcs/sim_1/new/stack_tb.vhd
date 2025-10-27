----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/21/2025 08:52:26 PM
-- Design Name: 
-- Module Name: stack_tb - Behavioral
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


entity stack_tb is
--  Port ( );
end stack_tb;

architecture Behavioral of stack_tb is
  component STACK is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           full, empty: out std_logic; 
           stack_test : out std_logic_vector(5 downto 0);
           din : in STD_LOGIC_VECTOR (7 downto 0);
           dout : out STD_LOGIC_VECTOR (7 downto 0);
           push_pop : in STD_LOGIC);
  end component;
  signal din,dout:std_logic_vector (7 downto 0);
  signal stack_test : std_logic_vector(5 downto 0);
  signal full,empty,en,clk,rst,push_pop:std_logic;
  constant clk_period: time := 10 ns;
begin

clk_proc: process
begin
    clk<='1';
    wait for clk_period/2;
    clk <= '0';
    wait for clk_period/2; 
end process;
stim_proc: process
begin 
 rst<='1';
 wait for clk_period;
 rst <='0';
 wait for clk_period/2;
 push_pop<='1';
 en<='1';
 wait for clk_period/2;
 din<="00001001";
 wait for clk_period;
 din<="00001011";
 wait for clk_period;
 din<="00001111";
 wait for clk_period; 
 din<="11111111";
 en<='0';
 push_pop<='0';
 wait for clk_period*2;
 en<='1';
wait for clk_period*5;
 en<='0';

 wait;
end process;



uut: STACK port map (clk=>clk,rst=>rst,en=>en,full=>full,empty=>empty,push_pop=>push_pop,din=>din,dout=>dout,stack_test=>stack_test);


end Behavioral;
