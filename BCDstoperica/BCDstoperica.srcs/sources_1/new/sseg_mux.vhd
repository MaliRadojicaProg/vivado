----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/15/2025 07:23:50 PM
-- Design Name: 
-- Module Name: sseg_mux - Behavioral
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



entity sseg_mux is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en  : in STD_LOGIC;  
    ------------------------------------------------
           sseg : out STD_LOGIC_VECTOR (6 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0));
end sseg_mux;

architecture Behavioral of sseg_mux is
  component stop_watch is
    Port ( en : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           d0 :out state;
           d1 :out state; 
           d2 :out state);
  end component;
  signal in0,in1,in2: state;
  signal muxL,muxH:std_logic;
  signal q_reg,d: std_logic_vector(24 downto 0);
  signal q_regS: signed(24 downto 0);
 -- variable q_regV: signed (17 downto 0);
  signal mux:std_logic_vector(1 downto 0);
  signal serialSeven:state;
begin
  st1: stop_watch
  port map(d0=>in0,d1=>in1,d2=>in2,clk=>clk,rst=>rst,en=>en);
  ----BROJAC-------
process(clk)
begin
    if rising_edge(clk) then
        d <= std_logic_vector(q_regS);
    end if;
end process;
process(rst,clk)
begin
  if rst='1' then
        q_regS <=(others=>'0');
      elsif rising_edge(clk) then
        q_regS<=q_regS + 1;
  end if;
 end process;
  q_reg <= std_logic_vector(q_regS);
  muxH<=q_reg(24);
  muxL<=q_reg(23);
  mux<=muxH & muxL;


with mux select
serialSeven<=in0 when "00",
             in1 when "01",
             in2 when "10",
             in0 when others;
  ---7_DECODER-------
with serialSeven select
  sseg<="1000000" when S0,
        "1111001" when S1,
        "0100100" when S2,
        "0110000" when S3,
        "0011001" when S4,
        "0010010" when S5,
        "0000010" when S6,
        "1111000" when S7,
        "0000000" when S8,
        "0011000" when S9;
------2to4-Decoder--------
with mux select 
  an<="1110" when "00",
      "1100" when "01",
      "1000" when "10",
      "1111" when others;
end Behavioral;
