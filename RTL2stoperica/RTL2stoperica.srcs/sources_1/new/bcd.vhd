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
use IEEE.NUMERIC_STD.ALL;
entity bcd is
    Port ( cout: out STD_LOGIC;
           cin :in std_logic;
           en : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           Q : out state );
end bcd;
architecture Behavioral of bcd is
   signal nx_state, pr_state: state;
   signal coutS,tick :std_logic :='0';
begin
 process(clk,rst)
    variable delitelj : integer range 0 to 10000000 :=0;
    begin
    if (rst='1') then
      delitelj:=0;
    elsif( rising_edge(clk)) then
      if(delitelj=10000000) then
        delitelj:=0;
        tick<='1';
      else 
        delitelj:=delitelj+1;
        tick<='0';
      end if;
    end if;
  end process;

 
  process (clk,rst)
  begin
    if(rst='1') then
      pr_state<=S0;
      couts<='0';
    elsif rising_edge(clk) then
      if(en='1') then 
      pr_state<=nx_state;
    end if;
      if(pr_state=S9) then
        couts<='1';
       elsif(pr_state=S0) then
       couts<='0';
      end if;
  end if;
   end process;

 process (pr_state)
    begin
    nx_state<=pr_state;
  if(en='1' and tick='1') then
  if(cin='1') then
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
                end if;
           end if;
   end process;
Q<=pr_state;
cout<=coutS;
end Behavioral;
