----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/22/2025 06:49:46 PM
-- Design Name: 
-- Module Name: add_or_sub - Behavioral
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
use work.comp.ALL;
entity add_or_sub is
  generic(N: natural :=4;
         MODE :natural :=2);
    Port ( cin : in STD_LOGIC;
           cout : out STD_LOGIC;
           a : in STD_LOGIC_VECTOR (N-1 downto 0);
           b : in STD_LOGIC_VECTOR (N-1 downto 0);
           y : out STD_LOGIC_VECTOR (N-1 downto 0));
end add_or_sub;

architecture Behavioral of add_or_sub is

  COMPONENT fa IS
     PORT (x,y,z: IN STD_LOGIC;
          c,s: OUT STD_LOGIC);
    END COMPONENT;
    
    COMPONENT inv IS
     PORT (a: IN STD_LOGIC;
           y: OUT STD_LOGIC);
    END COMPONENT;
    
    COMPONENT exor IS
    PORT (a, b : IN STD_LOGIC;
          w: OUT STD_LOGIC);
    END COMPONENT;
  signal carryIN : std_logic_vector(N downto 0);
  signal subby,d : std_logic_vector(N-1 downto 0);
begin
  carryIN(0)<= cin;
  --SABIRANJE-------------------------
  adder1: if(MODE=0) generate
     G1: for i in N-1 downto 0 generate 
        faI: fa
        port map(x=>carryIN(i) ,y=>a(i) ,z=>b(i) ,c=>carryIN(i+1) ,s=>y(i)); 
      end generate;
    end generate;
--ODUZIMANJE--------------------------
  sub1: if(MODE=1) generate
      G2: for i in N-1 downto 0 generate 
        faII: fa
        port map(x=>carryIN(i) ,y=>a(i) ,z=>subby(i) ,c=>carryIN(i+1) ,s=>y(i));
        invI: inv
        port map (a=>b(i),y=>subby(i));
      end generate;
  end generate;
--SABIRANJE I ODUZIMANJE-------------------
  subadd: if(MODE=2) generate 
      G3: for i in N-1 downto 0 generate 
        faIII: fa
        port map(x=>carryIN(i),y=>a(i) ,z=>d(i),c=>carryIN(i+1) ,s=>y(i));
        exorI: exor
        port map (a=>cin,b=>b(i),w=>d(i));
      end generate;
  end generate;
  cout<=carryIN(N);
end Behavioral;
