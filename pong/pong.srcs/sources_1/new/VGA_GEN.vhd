----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/22/2025 06:39:25 PM
-- Design Name: 
-- Module Name: VGA_GEN - Behavioral
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


entity VGA_GEN is
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
          FrameSync: out STD_LOGIC;
           VGA_HSYNC : out STD_LOGIC;
           VGA_VSYNC : out STD_LOGIC;
           VGA_RED : out STD_LOGIC;
           VGA_GREEN : out STD_LOGIC;
           VGA_BLUE : out STD_LOGIC);
end VGA_GEN;


architecture Behavioral of VGA_GEN is
constant H_PIXELS : integer := 3200;
constant H_FP : integer := 64;
constant H_BP : integer :=192; 
constant H_PW :integer :=384; --DUZINA HSYNC A 
constant H_DISPLAY_TIME : integer := 2560; --640*4 

constant V_PIXELS : integer := 525;
constant V_FP : integer := 10;
constant V_BP : integer :=33; 
constant V_PW :integer :=2; 
constant V_DISPLAY_TIME : integer :=480;
signal hsync: integer range 0 to H_PIXELS-1:=0;
signal vsync : integer range 0 to V_PIXELS-1:=0;
signal pxCounter: unsigned(1 downto 0):=(others=>'0');
signal pxFlag,pxVisible: std_logic :='0';
begin
  process(clk,rst)
  begin 
    if(rising_edge(clk)) then 
      if(rst='1') then 
        hsync<=0;
      else 
        if(hsync=H_PIXELS-1) then 
        hsync<=0;
      else
        hsync <= hsync + 1;
      end if;
      end if;
    end if;
  end process;
  VGA_HSYNC<= '0' when (hsync>=H_DISPLAY_TIME+H_FP and hsync <= H_PIXELS-H_BP-1) else '1';
  
  VGA_VSYNC<='0' when (vsync>=V_DISPLAY_TIME+V_FP and vsync<=V_PIXELS-V_BP-1) else '1';
  process(clk,rst)
  begin 
    if(rising_edge(clk)) then 
      if(rst='1') then 
        vsync<=0;
      elsif(hsync=H_PIXELS-1) then
        if(vsync=V_PIXELS-1) then
          vsync<=0;
        else
        vsync <=vsync+1;
        end if;
      end if;
    end if;
  end process;

  process(clk,rst)
begin 
  if(rising_edge(clk)) then 
    if(rst='1') then 
      pxCounter<=(others=>'0');
      pxFlag<='0';
    else
      if(pxCounter=3) then 
        pxCounter<=(others=>'0');
        pxFlag<='1';
      else 
        pxFlag<='0';
        pxCounter<=pxCounter+1;
      end if;
    end if;
  end if;
end process;
  

  
  

  pxVisible<='1' when (vsync >= 0 and vsync<=V_DISPLAY_TIME-1) and (hsync>=0 and hsync<=H_DISPLAY_TIME-1) else '0';
  PxRow<=std_logic_vector(to_unsigned(vsync,10)) when pxVisible='1' else (others=>'0');
  PxCol<=std_logic_vector(to_unsigned(hsync/4,10)) when pxVisible='1' else (others=>'0');
  PxDisp<=pxVisible;
  PxClk<=pxFlag when (vsync<=V_DISPLAY_TIME-1 and hsync<=H_DISPLAY_TIME-1) else '0';
  LnClk<='1' when (hsync=H_PIXELS-1-H_BP and vsync<=V_DISPLAY_TIME-1) else '0';
  FrameSync<='1' when (hsync=0 and vsync=0) else '0';
  -------BOJE -------------------------------------------- 
  --VGA_RED<=Rin when (hsync>=0 and hsync <= H_DISPLAY_TIME-1) and (vsync >= 0 and vsync<=V_DISPLAY_TIME-1) else '0';
 -- VGA_GREEN<=Gin when (hsync>=0 and hsync <= H_DISPLAY_TIME-1) and (vsync >= 0 and vsync<=V_DISPLAY_TIME-1) else '0';
  --VGA_BLUE<=Bin when (hsync>=0 and hsync <= H_DISPLAY_TIME-1) and (vsync >= 0 and vsync<=V_DISPLAY_TIME-1) else '0';
  VGA_RED<=Rin when pxVisible='1' else '0';
  VGA_GREEN<=Gin when pxVisible='1' else '0';  
  VGA_BLUE<=Bin when pxVisible='1' else '0';
end Behavioral;
