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
use IEEE.NUMERIC_STD.ALL;


entity control_unit is
    Port ( en_s : out STD_LOGIC;
           en_x : out STD_LOGIC;
           en_y : out STD_LOGIC;
           en_i : out STD_LOGIC;
           sel_eq : out STD_LOGIC;
           sel_idle : out STD_LOGIC;
           sel_add : out STD_LOGIC;
           rdy :out std_logic; 
           comp_eq : in STD_LOGIC;
           comp_xy : in STD_LOGIC;
           comp_rn : in STD_LOGIC;
           rst,start,clk : in std_logic);
end control_unit;

architecture Behavioral of control_unit is
  type state is (idle, wh, init ,s1);
  signal pr_state,nx_state:state;
  signal rdy_s: std_logic :='0';
begin
-----------REGISTAR-STANJA------------
  process(clk,rst)
  begin
    if(rst='1') then 
      pr_state<=idle;
    elsif(rising_edge(clk)) then 
      pr_state<=nx_state;
    end if;
  end process;
-------------------FSM------------------
  process(pr_state) 
  begin 
      case pr_state is 
        --IDLE--------------------------
        when idle => 
          rdy_s<='1';  --IM IDLE  
          --en_s<='0'; -- turns off status  
          sel_idle<='0'; --resets i and x to 0, and y=p-1
          en_x<='1'; --enables x input
          en_y<='1'; --enables y input
          en_i<='1';
          sel_eq<='0'; --!status
          if(start='1') then 
            nx_state<=wh;
           else
            nx_state<=idle;
          end if;
        ---INIT--------------------------
       when init =>
       rdy_s<='0';
         sel_idle<='0'; --turns on reset for x,y,i
          en_x<='1'; --enables x and y inputs
          en_y<='1'; --||--
          en_i<='1';
          sel_eq<='0'; --!status
          nx_state<=wh;
        ----WHILE-------------------------
        when wh =>
          if(comp_xy='1' and comp_eq='0') then 
            sel_idle<='1'; --turns off reset for x,y,i
            rdy_s<='0'; --IM BUSY
            en_x<='0';  --disable input for x
            en_y<='0';  --disable input for y
            
            sel_add<='0'; --x+y
            en_i<='1';  --i=(x+y)/2
            nx_state<=s1;
          else
          nx_state<=idle;
          end if;
      --IFOVII---------S1------------------
        when s1 =>
          en_i<='0';
           sel_eq<='1'; --din == r_data            
          if(comp_eq='1') then --A[i]==din
            en_s<='1'; --status=1
          elsif(comp_rn='1') then 
            sel_add<='1'; --i+1
            en_x<='1';
          else 
            en_y<='1'; --i-1
          end if;
          --sel_eq<='0';
          nx_state<=wh;
      end case;
    end process;
    rdy<=rdy_s;
    
end Behavioral;
