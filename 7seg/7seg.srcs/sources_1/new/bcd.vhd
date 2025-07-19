----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/13/2025 03:24:22 PM
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
    Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
           ce : in STD_LOGIC;
           ld : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           Q : out state );
end bcd;
architecture Behavioral of bcd is
  signal nx_state, pr_state: state;
begin
  process (clk,rst)
  begin
    if(clk'event and clk='1') then
        if (rst='1') then 
          pr_state<=S0;
        else 
          pr_state<=nx_state;
        end if;
    end if;
  end process;
 process (pr_state,clk)
    begin
    nx_state<=pr_state;
    if(ce='1') then
               case(pr_state) is 
                  when S0=> 
                  if(clk'event and clk='0'  ) then
                    nx_state<=S1;
                  end if;
                  when S1=>
                    if(clk'event and clk='0' ) then 
                    nx_state<=S2;
                    end if;    
                   when S2=>
                   if(clk'event and clk='0' ) then
                    nx_state<=S3;
                         end if;
                   when S3=>
                   if(clk'event and clk='0' ) then
                      nx_state<=S4;
                        end if;
                    when S4=>
                    if(clk'event and clk='0') then
                      nx_state<=S5;
                    end if;
                    when S5=>
                    if(clk'event and clk='0' ) then 
                      nx_state<=S6;
                    end if;
                    when S6=>
                    if(clk'event and clk='0') then
                      nx_state<=S7;
                    end if;
                    when S7=>
                    if(clk'event and clk='0') then
                      nx_state<=S8;    
                       end if;
                    when S8=>
                    if(clk'event and clk='0' ) then
                      nx_state<=S9;
                    end if;
                    when S9=>
                    if(clk'event and clk='0') then
                      nx_state<=S0;
                     end if;
                    end case;
--                   end if;
           elsif (ld='1') then
           case (D) is
           when "0000" =>
           nx_state<=S0;
           when "0001"=>
           nx_state<=S1;
           when "0010" =>
           nx_state<=S2;
           when "0011"=>
           nx_state<=S3;
           when "0100" =>
           nx_state<=S4;
           when "0101"=>
           nx_state<=S5;
              when "0110" =>
           nx_state<=S6;
           when "0111"=>
           nx_state<=S7;
           when "1000" =>
           nx_state<=S8;
           when "1001"=>
           nx_state<=S9;
           when others =>
           nx_state<=S0;
           end case;
           end if;
end process;
Q<=pr_state;
end Behavioral;
