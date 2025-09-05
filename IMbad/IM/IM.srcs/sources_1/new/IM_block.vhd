----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/17/2025 08:04:27 PM
-- Design Name: 
-- Module Name: IM_block - Behavioral
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
entity IM_block is
  Generic(N:integer :=4;
           A: integer :=4);
  Port ( p : in STD_LOGIC_VECTOR (A-1 downto 0);
            r_addr : out STD_LOGIC_VECTOR (A-1 downto 0);
            r_data : in STD_LOGIC_VECTOR (N-1 downto 0);
            din : in STD_LOGIC_VECTOR(N-1 downto 0);
            clk : in STD_LOGIC;
            rst : in STD_LOGIC;
            clr : in STD_LOGIC;
            rdy : out STD_LOGIC;
            status : out STD_LOGIC;
            start : in std_logic);
 end IM_block;


architecture struct of IM_block is

component data_path is
 Generic(N:integer :=4;
           A: integer :=4);
    Port ( clk : in STD_LOGIC;
           en_s : in STD_LOGIC;
           en_x : in STD_LOGIC;
           en_y : in STD_LOGIC;
           en_i : in STD_LOGIC;
           sel_eq : in STD_LOGIC;
           sel_idle : in STD_LOGIC;
           sel_add : in STD_LOGIC;
           comp_eq : out STD_LOGIC;
           comp_xy : out STD_LOGIC;
           comp_rn : out STD_LOGIC;
           status : out STD_LOGIC;
           p : in std_logic_vector (A-1 downto 0);
           r_data : in STD_LOGIC_VECTOR (N-1 downto 0);
           din : in STD_LOGIC_VECTOR (N-1 downto 0);
           r_addr : out STD_LOGIC_VECTOR (A-1 downto 0));
	END COMPONENT;


component control_unit is
    Port ( en_s : out STD_LOGIC;
           en_x : out STD_LOGIC;
           en_y : out STD_LOGIC;
           en_i : out STD_LOGIC;
           sel_eq : out STD_LOGIC;
           sel_idle : out STD_LOGIC;
           sel_add : out STD_LOGIC;
           rdy :out std_logic; 
           comp_eq : in STD_LOGIC; 
           comp_xy : in STD_LOGIC;
           comp_rn : in STD_LOGIC;
           rst,start,clk : in std_logic);
end component;
  signal en_s, en_i, en_x,en_y,sel_eq,sel_idle,sel_add : std_logic;
  signal comp_xy,comp_eq,comp_rn: std_logic;

begin
  
dtpth: data_path  
generic map(
  N=>4,
  A=>4)
port map(
en_i=>en_i,
clk=>clk,
din=>din,
en_s=>en_s,
en_x=>en_x,
en_y=>en_y,
sel_add=>sel_add,
sel_idle=>sel_idle,
sel_eq=>sel_eq,
p=>p,
status=>status,
r_data=>r_data,
r_addr=>r_addr,
comp_rn=>comp_rn,
comp_xy=>comp_xy,
comp_eq=>comp_eq
);
cntrlU : control_unit port map(
start=>start,
clk=>clk,
rst=>rst,
en_s=>en_s, 
en_x=>en_x,
en_y=>en_y,
en_i=>en_i,
sel_eq=>sel_eq,
sel_add=>sel_add,
sel_idle=>sel_idle,
comp_eq=>comp_eq,
rdy=>rdy,
comp_xy=>comp_xy,
comp_rn=>comp_rn);
end struct;
