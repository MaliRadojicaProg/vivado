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
  type state is (idle, wh,s1);
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
  process(pr_state,start,comp_eq,comp_xy,comp_rn) 
  begin 
  nx_state<=pr_state;
      case pr_state is 
        --IDLE--------------------------
        when idle => 
          rdy_s<='1';    
          en_s<='0';    
          sel_idle<='0';
          en_x<='1';
          en_y<='1';
          sel_eq<='0';
          if(start='1') then 
            nx_state<=wh;
          end if;
        ---INIT--------------------------
  --     when init =>
        ----WHILE-------------------------
        when wh =>
          if(comp_eq='0' and comp_xy='1') then 
            rdy_s<='0';
            en_x<='0';
            en_y<='0';
            sel_add<='0'; --x+y
            en_i<='1';
            nx_state<=s1;
          else
          nx_state<=idle;
          end if;
      --IFOVII---------S1------------------
        when s1 =>
          en_i<='0';
          sel_eq<='1';
          sel_idle<='1';
          
          if(comp_eq='1') then 
            en_s<='1';
          elsif(comp_rn='1') then --r_data<din A[i]<DIN    
            sel_add<='1';
            en_x<='1';           
          else 
            en_y<='1';
            --en_s<='1';
          end if;
          nx_state<=wh;
      end case;
    end process;
    rdy<=rdy_s;
    
end Behavioral;
