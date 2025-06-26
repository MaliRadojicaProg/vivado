----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/11/2025 03:56:40 PM
-- Design Name: 
-- Module Name: 7seg - Behavioral
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
use work.state_packet.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg is
    Port ( X : in STD_LOGIC_VECTOR (6 downto 0);
           Y : out STD_LOGIC_VECTOR (6 downto 0);
           clk : in STD_LOGIC);
end sevenseg;

architecture Behavioral of sevenseg is
  component bcd is 
 Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
           ce : in STD_LOGIC;
           ld : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           Q : out state);
  end component;
 signal Qout: state;
begin
  count1: bcd 
  port map(D=>X(3 downto 0),ld=>X(4),ce=>X(5),rst=>X(6),clk=>clk,Q=>Qout);
 with Qout select
    Y<= "1000000" when S0,
        "1111001" when S1,
        "0100100" when S2,
        "0110000" when S3,
        "0011001" when S4,
        "0010010" when S5,
        "0000010" when S6,
        "1111000" when S7,
        "0000000" when S8,
        "0011000" when S9;
end Behavioral;
