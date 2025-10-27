----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/22/2025 06:39:25 PM
-- Design Name: 
-- Module Name: VGA_GEN_TEST - Behavioral
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


entity VGA_GEN_TEST is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           HV : in STD_LOGIC;
           VGA_HSYNC : out STD_LOGIC;
           VGA_VSYNC : out STD_LOGIC;
           VGA_GREEN : out STD_LOGIC;
           VGA_RED : out STD_LOGIC;
           VGA_BLUE : out STD_LOGIC);
end VGA_GEN_TEST;

architecture Behavioral of VGA_GEN_TEST is

  component VGA_GEN is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           Rin : in STD_LOGIC;
           Gin : in STD_LOGIC;
           Bin : in STD_LOGIC;
           PxRow : out STD_LOGIC_VECTOR (9 downto 0);
           PxCol : out STD_LOGIC_VECTOR (9 downto 0);
           PxDisp : out STD_LOGIC;
           PxClk : out STD_LOGIC;
           LnClk : out STD_LOGIC;
           VGA_HSYNC : out STD_LOGIC;
           VGA_VSYNC : out STD_LOGIC;
           VGA_RED : out STD_LOGIC;
           VGA_GREEN : out STD_LOGIC;
           VGA_BLUE : out STD_LOGIC);
  end component;

  signal cnt8 :unsigned (2 downto 0);
  signal cnt8060 : unsigned(6 downto 0);
  signal mode, en8060,en8 ,cout,PxClk,LnClk : std_logic;
begin
process(clk)
begin 
  if(rising_edge(clk)) then --CNT8
    if(rst='1') then   
      cnt8<=(others => '0');
    elsif (en8='1') then 
      cnt8<=cnt8+1;
    end if; 
  end if;
end process;

process(clk) --8060
begin 
  cout<='0';
  if(rising_edge(clk)) then 
    if(rst='1') then   
      cnt8060<=(others => '0');
      cout<='0';
    elsif (en8060='1') then 
    cnt8060<=cnt8060+1;
      if(mode='1' and cnt8060=59) then 
        cnt8060<=(others=>'0');
        cout<='1';
      elsif(mode='0' and cnt8060=79) then 
        cnt8060<=(others=>'0');
        cout<='1';
      end if;
    end if; 
  end if;
end process;
--HV_MUX-----------------
with HV select 
  en8060<= PxClk when '0',
           LnClk when others; ---1
  en8<=cout;
  mode<=HV;

vga_generator: VGA_GEN port map (Rin=>cnt8(2),Gin=>cnt8(1),Bin=>cnt8(0),VGA_HSYNC=>VGA_HSYNC,VGA_VSYNC=>VGA_VSYNC,
                           rst=>rst,clk=>clk,PxRow=>open,PxCol=>open,PxDisp=>open,
                           VGA_RED=>VGA_RED,VGA_GREEN=>VGA_GREEN,VGA_BLUE=>VGA_BLUE,PxClk=>PxClk,LnClk=>LnClk);



end Behavioral;
