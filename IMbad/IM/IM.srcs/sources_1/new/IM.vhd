----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/17/2025 07:51:20 PM
-- Design Name: 
-- Module Name: IM - arch
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

entity IM is
    Generic(N:integer :=4;
           A: integer :=4);
    Port (r_data : out STD_LOGIC_VECTOR (N-1 downto 0);
           r_addr : out STD_LOGIC_VECTOR (A-1 downto 0);
           w_data : in STD_LOGIC_VECTOR (N-1 downto 0);
           w_addr : in STD_LOGIC_VECTOR (A-1 downto 0);
           din : in STD_LOGIC_VECTOR(N-1 downto 0);
           clr : in STD_LOGIC;
           we : in STD_LOGIC;
           start : in STD_LOGIC;
           rdy : out STD_LOGIC;
           clk : in STD_LOGIC;
           status : out std_logic;
           rf_test : out std_logic_vector(A-1 downto 0);
           rst : in STD_LOGIC);
end IM;

architecture arch of IM is
component IM_block is
Generic(N:integer :=4;
           A: integer :=4);
     Port ( p : in STD_LOGIC_VECTOR (A-1 downto 0);
            r_addr : out STD_LOGIC_VECTOR (A-1 downto 0);
            r_data : in STD_LOGIC_VECTOR (N-1 downto 0);
            din : in STD_LOGIC_VECTOR(N-1 downto 0);
            clk : in STD_LOGIC;
            rst : in STD_LOGIC;
            clr : in STD_LOGIC;
            start : in std_logic;
            rdy : out STD_LOGIC;
            status : out STD_LOGIC);
 end component;
COMPONENT reg_file
Generic(N:integer :=4;
        A: integer :=4);
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		we : IN std_logic;
		w_addr : IN std_logic_vector(A-1 downto 0);
		r_addr : IN std_logic_vector(A-1 downto 0);
		w_data : IN std_logic_vector(N-1 downto 0);
		r_data : OUT std_logic_vector(N-1 downto 0));
	END COMPONENT;
	 signal rf_count : unsigned(A-1 downto 0);
	 signal r_data_im,r_data_rf : std_logic_vector(N-1 downto 0);
	 signal r_addr_im,r_addr_rf : std_logic_vector(A-1 downto 0);
	 signal rdy_im : std_logic;
begin

-- RF Counter
	process(clk, rst)
	begin
	  if(rst = '1') then
	    rf_count <= (others => '0');
	  elsif(clk'event and clk = '1') then
	    if(clr = '1') then
		   rf_count <= (others => '0');
		 elsif(we = '1') then
	      rf_count <= rf_count + 1;
		 end if;
	  end if;
	end process;

	--komponente
	imblk : IM_block 
  generic map(
  N=>4,
  A=>4)
  port map(
        r_data => r_data_rf,
		p => std_logic_vector(rf_count),
		r_addr => r_addr_im,
		start => start,
		status=>status,
		rdy => rdy_im,
		clk => clk,
		rst => rst,
		clr=>clr,
		din=>din
    );
	regf : reg_file
 generic map(
  N=>4,
  A=>4)
  port map(
		clk => clk,
		rst => rst,
		we => we,
		w_addr => w_addr,
		r_addr => r_addr_rf,
		w_data => w_data,
		r_data => r_data_rf
	);


  --muxuy
   -- r_addr_rf <= r_addr_im;  
   r_addr_rf<=r_addr_im;
   --when rdy_im='0' else r_addr;         
-- izlazni portovi
  r_data <= r_data_rf;
  r_addr<=r_addr_im;
  rf_test<=std_logic_vector(rf_count);
  rdy<=rdy_im;
end arch;
