----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/02/2024 07:30:21 PM
-- Design Name: 
-- Module Name: shift_reg2tb - Behavioral
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

entity shift_reg2tb is
--  Port ( );
end shift_reg2tb;

architecture Behavioral of shift_reg2tb is
  component shift_reg2 is
    Port ( clk : in STD_LOGIC;
           si : in STD_LOGIC;
           P : in STD_LOGIC_VECTOR (3 downto 0);
           Q : out STD_LOGIC_VECTOR (3 downto 0);
           en : in STD_LOGIC;
           clr:in STD_LOGIC;
           ld : in STD_LOGIC;
           rs : in STD_LOGIC;
           dir : in STD_LOGIC);
  end component;
  signal clk: std_logic :='0';
  signal si,en,clr,ld,rs,dir: std_logic :='0';
  signal Q,P:std_logic_vector(3 downto 0);
  constant clk_period : time := 10  ns;

begin
uut: shift_reg2 PORT MAP(
si=>si, 
clk=>clk,
en=>en,
clr=>clr,
ld=>ld,
rs=>rs,
dir=>dir,
P=>P,
Q=>Q
);
 clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
process 
begin
 clr<='1'; 
  wait until clk'event and clk='1';
  wait until clk'event and clk='0';
  clr<='0';
  en<='1';
  ld<='1';
  P<="1001";
  wait until clk'event and clk='1';
  wait until clk'event and clk='0';
  ld<='0';
  wait until clk'event and clk='1';
  wait until clk'event and clk='0';
  dir<='1';
  wait until clk'event and clk='1';
  wait until clk'event and clk='0';
  dir<='0';
  rs<='1';
  wait until clk'event and clk='1';
  wait until clk'event and clk='0';
  dir<='1';
  wait;
end process;
end Behavioral;
