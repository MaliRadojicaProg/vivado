----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/06/2024 11:25:08 PM
-- Design Name: 
-- Module Name: automat1 - Behavioral
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

entity automat1 is
    Port ( clk : in STD_LOGIC;
           X : in STD_LOGIC;
           rst: in STD_LOGIC;
           Y : out STD_LOGIC);
end automat1;

architecture Behavioral of automat1 is
  type state IS (S0,SE,S1);
  signal nx_state,pr_state:state;
begin
  process(clk)
begin
    if(clk'event and clk='1') then
      if(rst='1') then
        pr_state<=S0;
      else
        pr_state<=nx_state;
      end if;
    end if;
  end process;
  process(X, pr_state)
  begin
    Y<='0';
    nx_state<=pr_state;
    case (pr_state)is 
      when S0 =>
        if(X='1') then
          nx_state<=SE;
        else
          nx_state<=S0;
        end if;
      when SE=>
      Y<='1';
        if(X='1') then
          nx_state<=S1;
        else 
          nx_state<=S0;
        end if;
      when S1=>
        if(X='0') then
          nx_state<=SE;
        else
          nx_state<=S1;
        end if;
      end case;
    end process;
end Behavioral;
