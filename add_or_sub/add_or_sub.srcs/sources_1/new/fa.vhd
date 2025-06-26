
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fa is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           z : in STD_LOGIC;
           c : out STD_LOGIC;
           s : out STD_LOGIC);
end fa;

architecture Behavioral of fa is
begin
 c <= (x and y) or (z and (x xor y));
 s <= (x xor y) xor z;
end Behavioral;
