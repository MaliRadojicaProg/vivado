----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/15/2024 12:45:00 PM
-- Design Name: 
-- Module Name: count16 - Behavioral
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
-- NUMERIC sluzi za aritmetiku od usnigned i signed
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity count16 is
    Port ( en : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           cout : out STD_LOGIC;
           q : out STD_LOGIC_VECTOR (3 downto 0));
end count16;

architecture Behavioral of count16 is
signal q_reg:UNSIGNED (3 downto 0);
begin
    process(clk,rst)
        begin 
            if(rst='1') then
            q_reg<="0000";
            elsif(clk'event and clk ='1') then
            if(en='1') then
            q_reg<=q_reg+1;
            end if;
       end if;
  end process;
cout<='1' when q_reg="1111" else '0';
q <= STD_LOGIC_VECTOR  (q_reg);
end Behavioral;
