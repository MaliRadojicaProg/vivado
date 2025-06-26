----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/25/2025 02:58:01 PM
-- Design Name: 
-- Module Name: rtlsab1 - Behavioral
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
entity rtlsab1 is
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
            --inkA:out std_logic_vector(1 downto 0);
           En3 : in STD_LOGIC);
end rtlsab1;

architecture Behavioral of rtlsab1 is
signal cin:std_logic;
signal x1,x2,x3 : STD_LOGIC_VECTOR(N-1 downto 0);
signal R1,R2,R3 : STD_LOGIC_VECTOR(N-1 downto 0);
signal xS,asS,bsS : signed(N-1 downto 0);
signal KR1,KR2,as,bs,Inkout,Sabout,x : STD_LOGIC_VECTOR(N-1 downto 0);
signal Sab7: STD_LOGIC_VECTOR(N downto 0);
begin
--REGISTAR 1-----------------------------
  process(clk) is
  begin 
    if(clk'event and clk='1') then
      if(En1='1') then 
        R1<=x1;
      end if;
    end if;
  end process;
--REGISTAR 2 ----------------------------
  process(clk) is
  begin 
    if(clk'event and clk='1') then
      if(En2='1') then 
        R2<=x2;
      end if;
    end if;
  end process;
  --REGISTAR 3 ------------------------
  process(clk) is
  begin 
    if(clk'event and clk='1') then
      if(En3='1') then 
        R3<=x3;
      end if;
    end if;
  end process;
--logika multipleksera------
  x1<= A when (S1='0') else
       Sabout;
  x2<=B when (S2="00") else
      Inkout when (S2="01") else
      Sabout;
  x3<=Inkout;
--inkrementer----
  x<=KR1 when (Sb='0') else
     R3;
     xS<=signed(x)+1;
  Inkout<=std_logic_vector(xS);
--inverteri----
  KR1<=R1 when Skr1 ='0' else
       not(R1);
   KR2<=R2 when Skr2 ='0' else
       not(R2);
--sabirac--------
   Sab7<=std_logic_vector((asS & '1')+(bsS & cin));
   Sabout<=Sab7(N downto 1);
   as<=KR1 when (Sa ='0') else
       (others=>'0');
   bs<=KR2 when (Sb ='0') else
       (others=>'1');
   asS<=signed(as);
   bsS<=signed(bs);
  cin<='1';
 Rout1<=R1;
 Rout2<=R2;
 Rout3<=R3;
end Behavioral;
