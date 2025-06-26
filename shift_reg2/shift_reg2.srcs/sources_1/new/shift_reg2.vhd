----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/02/2024 07:20:13 PM
-- Design Name: 
-- Module Name: shift_reg2 - Behavioral
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

entity shift_reg2 is
    Port ( clk : in STD_LOGIC;
           en : in STD_LOGIC;
           ld : in STD_LOGIC;
           dir : in STD_LOGIC;
           rs : in STD_LOGIC;
           clr : in STD_LOGIC;
           P : in STD_LOGIC_VECTOR (3 downto 0);
           Q : out STD_LOGIC_VECTOR (3 downto 0);
           si : in STD_LOGIC);
end shift_reg2;

architecture Behavioral of shift_reg2 is
signal Qt: std_logic_vector(3 downto 0);
begin
  process(clk)
  begin
    if(clk'event and clk='1') then
      if(clr='1') then
      Qt<=(others=>'0');
      else
        if(en='1') then
          if(ld='1') then
          Qt<=P;
          else
            if(rs='0' and dir='0') then
            Qt<=si & Qt(3 downto 1);
            elsif(rs='0' and dir ='1') then
            Qt<=Qt(2 downto 0) & si;
            elsif(rs='1' and dir='0') then
            Qt<=Qt(0) & Qt(3 downto 1);
            else 
            Qt<=Qt(2 downto 0) & Qt(3);
            end if;
          end if;
        end if;
      end if;
    end if;
  Q<=Qt;
  end process;

end Behavioral;
