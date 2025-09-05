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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IM_block is
     Port ( p : in STD_LOGIC_VECTOR (5 downto 0);
            r_addr : out STD_LOGIC_VECTOR (5 downto 0);
            r_data : in STD_LOGIC_VECTOR (7 downto 0);
                din : in STD_LOGIC_VECTOR(7 downto 0);
           w_addr : out STD_LOGIC_VECTOR (5 downto 0);
           w_data : out STD_LOGIC_VECTOR (7 downto 0);
            clk : in STD_LOGIC;
            rst : in STD_LOGIC;
           clr : in STD_LOGIC;
           we : out STD_LOGIC);
 end IM_block;


architecture struct of IM_block is

component data_path is
    Port ( clk : in STD_LOGIC;
           en_s : in STD_LOGIC;
           en_x : in STD_LOGIC;
           en_y : in STD_LOGIC;
           en_i : in STD_LOGIC;
           --sel_i : in STD_LOGIC;
           sel_eq : in STD_LOGIC;
           sel_idle : in STD_LOGIC;
           sel_add : in STD_LOGIC;
           comp_eq : out STD_LOGIC;
           comp_xy : out STD_LOGIC;
           comp_rn : out STD_LOGIC;
           p : in std_logic_vector (5 downto 0);
           r_data : in STD_LOGIC_VECTOR (7 downto 0);
           din : in STD_LOGIC_VECTOR (7 downto 0);
           r_addr : out STD_LOGIC_VECTOR (5 downto 0));
	END COMPONENT;

	COMPONENT control_unit
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		start : IN std_logic;
		compn : IN std_logic;
		compa : IN std_logic;
		rdy : OUT std_logic;
		we : OUT std_logic;
		eni : OUT std_logic;
		rsti : OUT std_logic;
		enj : OUT std_logic;
		ldj : OUT std_logic;
		enk : OUT std_logic;
		enm : OUT std_logic;
		selr : OUT std_logic;
		selw : OUT std_logic;
		seld : OUT std_logic;
		selk : OUT std_logic;
		selm : OUT std_logic
		);
	END COMPONENT;
  
  signal en_s, en_i, en_x,en_y,sel_eq,sel_idle,sel_add : std_logic;
  signal comp_xy,comp_eq,comp_rn: std_logic;

begin
  
dtpth: data_path port map(
en_i=>en_i,
clk=>clk,
rst=>rst,
din=>din,
en_s=>en_s,
en_x=>en_x,
en_y=>en_y
sel_add=>sel_add,
sel_idle=>sel_add,
sel_eq=>sel_eq,
p=>p,
r_data=>r_data,
r_addr=>r_addr,
comp_rn=>comp_rn,
comp_xy=>compn_xy,
comp_eq=>comp_eq
);
cntrlU : control_unit port map(
clk=>clk,
rst=>rst,
en_s=>en_s, 
en_x=>en_x,
en_y=>en_y,
en_i=>en_i,
sel_eq=>sel_eq,
sel_add=>sel_add,
sel_idle=>sel_idle,
sel_i=>sel_i,
comp_eq=>comp_eq,
comp_xy=>comp_xy,
comp_rn=>comp_rn);
end struct;
