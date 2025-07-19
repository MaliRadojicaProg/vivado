----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/16/2025 09:42:49 PM
-- Design Name: 
-- Module Name: bcd - Behavioral
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
use work.state_packet.ALL;

entity bcd is
    Port ( cout: out STD_LOGIC;
           en : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           Q : out state );
end bcd;
architecture Behavioral of bcd is
   signal nx_state, pr_state: state;
   signal coutS :std_logic :='0';
begin
  process (clk,rst)
  begin
    if(rst='1') then
      pr_state<=S0;
      coutS<='0';
    elsif rising_edge(clk) then
      if(en='1') then 
      pr_state<=nx_state;
      if(pr_state=S9) then
        couts<='1';
      end if;
    end if;
  end if;
   end process;

 process (pr_state)
    begin
    nx_state<=pr_state;
  --  if(rising_edge(clk)) then
    case(pr_state) is 
                  when S0=> 
                    nx_state<=S1;
                   when S1=>
                    nx_state<=S2;
                  when S2=>
                    nx_state<=S3;
                  when S3=>
                    nx_state<=S4;
                  when S4=>
                  nx_state<=S5;
                  when S5=>
                  nx_state<=S6;
                  when S6=>
                  nx_state<=S7;
                  when S7=>
                  nx_state<=S8;    
                  when S8=>
                  nx_state<=S9;
                  when S9=>
                  nx_state<=S0;
                  --cout<='1';
                end case;
           -- end if;
   end process;
Q<=pr_state;
--cout<=coutS;
end Behavioral;
