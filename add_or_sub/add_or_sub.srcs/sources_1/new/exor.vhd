library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity exor is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           w : out STD_LOGIC);
end exor;

architecture Behavioral of exor is

begin
    w <= a xor b;
end Behavioral;
