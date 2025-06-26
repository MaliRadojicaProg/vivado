----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/08/2025 09:36:44 PM
-- Design Name: 
-- Module Name: add8tb - Behavioral
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

entity add8tb is
--  Port ( );
end add8tb;

architecture Behavioral of add8tb is
  component add8 is 
Port (X : in STD_LOGIC_VECTOR(7 downto 0);
  Y : in STD_LOGIC_VECTOR(7 downto 0);
  S : out STD_LOGIC_VECTOR(7 downto 0);
  cin: in std_logic;
  cout: out std_logic
);
  end component;

signal X,Y : STD_LOGIC_VECTOR(7 downto 0);
signal cin : std_logic :='0';
signal S: STD_LOGIC_VECTOR(7 downto 0);
signal cout: STD_LOGIC;

begin
  uut: add8 port map (
  X=>X,
  Y=>Y,
  cin=>cin,
  cout=>cout,
  S=>S); 

  cin<='0','1' after 40 ns,'0' after 80 ns;
  X<="00000010";
  Y<="00000111";

end Behavioral;

configuration cfg_add8tb_csa of add8tb is 
  for Behavioral
    for uut: add8 
      use entity work.add8(csa_struct);
    end for;
  end for;
end cfg_add8tb_csa;

configuration cfg_add8tb_rac of add8tb is 
  for Behavioral
    for uut: add8 
      use entity work.add8(RCA);
    end for;
  end for;
end cfg_add8tb_rac;
