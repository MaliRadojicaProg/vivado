----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/07/2024 11:13:05 AM
-- Design Name: 
-- Module Name: automat1_tb - Behavioral
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

entity automat1_tb is
--  Port ( );entity automat1 is
    
end automat1_tb;

architecture Behavioral of automat1_tb is
  component automat1 is
Port ( clk : in STD_LOGIC;
           X : in STD_LOGIC;
           rst: in STD_LOGIC;
           Y : out STD_LOGIC);
end component;
signal X,clk,rst: std_logic:='0';
signal Y:std_logic; 
constant clk_period : time := 10  ns;

begin
  uut:automat1 port map(
  clk=>clk,
  X=>X,
  Y=>Y,
  rst=>rst );
process
    begin
    clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
   process 
   begin 
     wait until clk'event and clk='1';
     wait until clk'event and clk='0';
     X<='1';
     wait until clk'event and clk='1';
     wait until clk'event and clk='0';
     wait until clk'event and clk='1';
     wait until clk'event and clk='0';
     X<='0';
  end process;

end Behavioral;
