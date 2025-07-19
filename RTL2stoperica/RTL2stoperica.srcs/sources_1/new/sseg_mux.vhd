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
            dp :out std_logic;
           sseg : out STD_LOGIC_VECTOR (6 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0));
           
end sseg_mux;

architecture Behavioral of sseg_mux is
  --------------------
   component bcd is
    Port ( cin: std_logic;
    en : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           cout :out std_logic;
           Q : out state );
  end component;
  -------------------
  signal in0,in1,in2: state;
  signal q_reg,d: std_logic_vector(17 downto 0);
  signal q_regUNS: unsigned(17 downto 0);
  signal mux:std_logic_vector(1 downto 0);  
  signal cout0,cout1,cout2,cout3:std_logic;
  signal serialSeven:state;
  ------------------
begin
 count0: bcd
    port map (en=>en,rst=>rst,clk=>clk,Q=>in0,cout=>cout0,cin=>'1');
 count1: bcd
    port map (en=>en,rst=>rst,clk=>clk,Q=>in1,cout=>cout1,cin=>cout0);
 count2: bcd
    port map (en=>en,rst=>rst,clk=>clk,Q=>in2,cout=>cout2,cin=>cout3);

--sabirac--------
cout3<=cout0 and cout1;
process(clk,rst)
  begin
  if rising_edge(clk) then
    if(rst='1') then
      d<=(others=>'0');
    else
      d<=std_logic_vector(q_regUNS+1);
    end if;
 end if;
  end process;
  
process(clk) begin
    if falling_edge(clk) then
      q_regUNS<=unsigned(d);
      mux<=d(17 downto 16);
    end if;
  end process;
  
  process(mux)
  begin
    case mux is 
      when "00"=>
        serialSeven<=in0;
         dp<='1';
        an<="1110";
      when "01"=>
        serialSeven<=in1;
        dp<='0';
        an<="1101";
      when "10" =>
        serialSeven<=in2;
         dp<='1';
        an<="1011";
      when others=>
       dp<='1';
        an<="1111";
      end case;
  end process;
  ---7_DECODER-------
process(serialSeven)
begin
  case serialSeven is
    when S0 => sseg<="1000000";
    when S1 => sseg<="1111001"; 
    when S2 => sseg<="0100100"; 
    when S3 => sseg<="0110000"; 
    when S4 => sseg<="0011001"; 
    when S5 => sseg<="0010010"; 
    when S6 => sseg<="0000010"; 
    when S7 => sseg<="1111000"; 
    when S8 => sseg<="0000000"; 
    when S9 => sseg<="0011000" ;
    when others => sseg<="1111111";
  end case;
  end process;
end Behavioral;
