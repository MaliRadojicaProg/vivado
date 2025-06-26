library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package comp is

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

end comp;


