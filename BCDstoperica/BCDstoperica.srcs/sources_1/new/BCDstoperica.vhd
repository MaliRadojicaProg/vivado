----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/15/2025 07:22:04 PM
-- Design Name: 
-- Module Name: stop_watch - Behavioral
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
use work.state_packet.ALL;

entity stop_watch is
    Port ( en : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           d0 :out state;
           d1 :out state; 
           d2 :out state);
end stop_watch;

architecture Behavioral of stop_watch is
  component bcd is
    Port ( en : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           cout :out std_logic;
           Q : out state );
  end component;
  --signal enInt,clkInt,rstInt :STD_LOGIC;
--  signal en1,en2,en0:std_logic;
  signal cout0,cout1,cout2:std_logic;
 -- signal sd0,sd1,sd2: state;
begin
  count0: bcd
    port map (en=>en,rst=>rst,clk=>clk,Q=>d0,cout=>cout0);
 count1: bcd
    port map (en=>cout0,rst=>rst,clk=>clk,Q=>d1,cout=>cout1);
 count2: bcd
    port map (en=>cout1,rst=>rst,clk=>clk,Q=>d2,cout=>cout2);
-------Kaskadna logika-------------------------

end Behavioral;
