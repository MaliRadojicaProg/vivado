----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/08/2025 02:14:15 AM
-- Design Name: 
-- Module Name: add8 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity add8 is
    Port ( X,Y : in STD_LOGIC_VECTOR (7 downto 0);
           S : out STD_LOGIC_VECTOR (7 downto 0);
           cin : in STD_LOGIC;
           cout : out STD_LOGIC);
end add8;

architecture RCA of add8 is
component add4 is 
  port(a,b :IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      ci : in STD_LOGIC;
      S :OUT STD_LOGIC_VECTOR(3 downto 0);
      co: out STD_LOGIC);
end component;
 signal cinm1,cinm2 : std_logic;
begin
  A1 : add4 
    port map (a=>X(3 downto 0), b=>Y(3 downto 0), ci=>cin, co=>cinm1, S=>S(3 downto 0)); 
  A2 : add4 
    port map (a=>X(7 downto 4), b=>Y(7 downto 4), ci=>cinm2,co=>cout, S=>S(7 downto 4)); 
cinm2<=cinm1;
end RCA;


architecture csa_struct of add8 is 
component add4 is 
  port(a,b :IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      ci : in STD_LOGIC;
      S :OUT STD_LOGIC_VECTOR(3 downto 0);
      co: out STD_LOGIC);
end component;
  signal one,zero,mx1,cx1,cx2: std_logic;
  signal Smx,Smx2:STD_LOGIC_VECTOR(3 downto 0);
begin
  zero<='0';
  one <= '1';
  AC1 : add4 
  port map (a=>X(3 downto 0), b=>Y(3 downto 0), ci=>cin,co=>mx1, S=>S(3 downto 0));

  AC2 : add4 
  port map (a=>X(7 downto 4), b=>Y(7 downto 4), ci=>zero,co=>cx1, S=>Smx(3 downto 0));

  AC3 : add4 
  port map (a=>X(7 downto 4), b=>Y(7 downto 4), ci=>one,co=>cx2, S=>Smx2(3 downto 0));
  S(7 downto 4)<= Smx(3 downto 0) when mx1='0' else
                 Smx2(3 downto 0) ;

    cout<= cx2 when mx1='1' else  
         cx1 ;
end csa_struct;
