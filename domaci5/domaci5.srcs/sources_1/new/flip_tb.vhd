----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/20/2024 01:37:32 AM
-- Design Name: 
-- Module Name: flip_tb - Behavioral
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

entity flip_tb is
end flip_tb;

architecture Behavioral of flip_tb is
  component flip
    Port ( x : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           z0 : out STD_LOGIC;
           z1 : out STD_LOGIC);
  end component;  
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';
   signal x:std_logic :='0';    
  -- izlazi iz kola koje se testira
   signal z0:std_logic;
   signal z1:std_logic;
   --konstanta taktnog perioda
   constant clk_period : time := 10  ns;

begin
uut: flip  PORT MAP (
 x=>x,
 clk=>clk,
 rst=>rst,
 z0=>z0,
 z1=>z1);
 clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
    -- rst <= '0', '1' after 10 ns, '0' after 40 ns;  
   process
   begin
     rst<='1';
     x<='0';
     wait until clk'event and clk='1';
     wait until clk'event and clk='0';
     rst<='0';
     x<='1';
     wait until clk'event and clk='0';
     wait until clk'event and clk='0';
     x<='0';
     wait until clk'event and clk='0';
     wait until clk'event and clk='0';
     wait until clk'event and clk='0';
     x<='1';
     wait until clk'event and clk='0';
     x<='0';
     wait;
   end process;
end Behavioral;
