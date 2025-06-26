----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/25/2025 04:35:33 PM
-- Design Name: 
-- Module Name: rtlsab1_tb - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity rtlsab1_tb is
end rtlsab1_tb;

architecture Behavioral of rtlsab1_tb is
  component rtlsab1 is
  generic (N:integer :=16);
    Port ( A : in STD_LOGIC_VECTOR (N-1 downto 0);
           B : in STD_LOGIC_VECTOR (N-1 downto 0);
           Rout1 : out STD_LOGIC_VECTOR (N-1 downto 0);
           Rout2 : out STD_LOGIC_VECTOR (N-1 downto 0);
           Rout3 : out STD_LOGIC_VECTOR (N-1 downto 0);
           clk : in STD_LOGIC;
           S1 : in STD_LOGIC;
           S2 : in STD_LOGIC_VECTOR (1 downto 0);
           Skr1 : in STD_LOGIC;
           Skr2 : in STD_LOGIC;
           Sa : in STD_LOGIC;
           Sb : in STD_LOGIC;
           En1 : in STD_LOGIC;
           En2 : in STD_LOGIC;
           --inkA: out std_logic_vector(1 downto 0 );
           En3 : in STD_LOGIC);
  end component;
  constant  bitovi:integer:=16;
signal clk:std_logic :='0';
signal En1,En2,En3,S1,Skr1,Skr2,Sa,Sb: std_logic;
signal S2: STD_LOGIC_VECTOR(1 downto 0);
signal A,B,Rout1,Rout2,Rout3: STD_LOGIC_VECTOR(bitovi-1 downto 0);
constant clk_period : time := 1  ns;

begin
  dut: rtlsab1
  generic map (N=>bitovi)
   port map (clk=>clk,Rout1=>Rout1,Rout2=>Rout2,Rout3=>Rout3,S1=>S1,S2=>S2,Sa=>Sa,Sb=>Sb,En1=>En1,En2=>En2,En3=>En3,A=>A,B=>B,Skr1=>Skr1,Skr2=>Skr2);

clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;

process 
begin
  A<=(others=>'1');
  B<=(others=>'0');
  wait until clk'event and clk='1';
  --wait until clk'event and clk='0';
  En1<='1';
  En2<='1';
  En3<='0';
  S1<='0';
  S2<="00";
  wait until clk'event and clk='1';
 -- wait until clk'event and clk='0';
  En1<='1';
  En2<='1';
  En3<='0';
  S1<='1';
  S2<="01";
  Skr1<='0';
  Skr2<='1';
  Sa<='0';
  Sb<='0';
  wait until clk'event and clk='1';
  --wait until clk'event and clk='0';
  S2<="10";
  En1<='0';
  En2<='1';
  En3<='1';
 Skr1<='1';
  Skr2<='1';
  Sa<='1';
  Sb<='0';
  wait until clk'event and clk='1';
 -- wait until clk'event and clk='0';
 S1<='1';
  En1<='1';
  En2<='0';
  En3<='1';
 Skr1<='0';
  Skr2<='0';
  Sa<='0';
  Sb<='1';
end process;
end Behavioral;
