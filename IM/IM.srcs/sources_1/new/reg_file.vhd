----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/17/2025 08:04:27 PM
-- Design Name: 
-- Module Name: reg_file - Behavioral
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

entity reg_file is
Generic(N:integer :=4;
           A: integer :=4);
    Port ( rst,clk : in STD_LOGIC;
           we : in STD_LOGIC;
           w_data : in STD_LOGIC_VECTOR (N-1 downto 0);
           w_addr : in STD_LOGIC_VECTOR (A-1 downto 0);
           r_data : out STD_LOGIC_VECTOR (N-1 downto 0);
           r_addr : in STD_LOGIC_VECTOR (A-1 downto 0));
end reg_file;

 ARCHITECTURE arch OF reg_file IS
   TYPE reg_file_type IS ARRAY(0 TO 15) OF STD_LOGIC_VECTOR(N-1 DOWNTO 0);
   SIGNAL array_reg : reg_file_type;
 BEGIN
   -- upis
   PROCESS(clk, rst)
   BEGIN
     IF(rst = '1') THEN
       array_reg <= (OTHERS => (OTHERS => '0'));
     ELSIF(clk'event AND clk = '1') THEN
       IF(we = '1') THEN
         array_reg(TO_INTEGER(UNSIGNED(w_addr))) <= w_data;
       END IF;
     END IF;
   END PROCESS;
   -- port za citanje
   r_data <= array_reg(TO_INTEGER(UNSIGNED(r_addr)));
 END arch;
