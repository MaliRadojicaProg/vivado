library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity inv is
    Port ( a : in STD_LOGIC;
           y : out STD_LOGIC);
end inv;

architecture Behavioral of inv is
begin
    y <= not a;
end Behavioral;
