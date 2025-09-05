library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity im_block is
    Port ( r_data : in  STD_LOGIC_VECTOR (7 downto 0);
           p : in  STD_LOGIC_VECTOR (5 downto 0);
           w_data : out  STD_LOGIC_VECTOR (7 downto 0);
           w_addr : out  STD_LOGIC_VECTOR (5 downto 0);
           r_addr : out  STD_LOGIC_VECTOR (5 downto 0);
           start : in  STD_LOGIC;
           rdy : out  STD_LOGIC;
           we : out  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC);
end im_block;

architecture struct of im_block is

   COMPONENT Data_path
	PORT(
		clk : IN std_logic;
		eni : IN std_logic;
		rsti : IN std_logic;
		enj : IN std_logic;
		ldj : IN std_logic;
		enk : IN std_logic;
		enm : IN std_logic;
		selr : IN std_logic;
		selw : IN std_logic;
		seld : IN std_logic;
		selk : IN std_logic;
		selm : IN std_logic;
		p : IN std_logic_vector(5 downto 0);
		r_data : IN std_logic_vector(7 downto 0);          
		compn : OUT std_logic;
		compa : OUT std_logic;
		r_addr : OUT std_logic_vector(5 downto 0);
		w_addr : OUT std_logic_vector(5 downto 0);
		w_data : OUT std_logic_vector(7 downto 0)
		);
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

	signal eni, rsti, enj, ldj, enk, enm : std_logic; 
	signal selr, selw, seld, selk, selm, compn, compa : std_logic;
begin

	dtpr: Data_path PORT MAP(
		clk => clk,
		eni => eni,
		rsti => rsti,
		enj => enj,
		ldj => ldj,
		enk => enk,
		enm => enm,
		selr => selr,
		selw => selw,
		seld => seld,
		selk => selk,
		selm => selm,
		p => p,
		r_data => r_data,
		compn => compn,
		compa => compa,
		r_addr => r_addr,
		w_addr => w_addr,
		w_data => w_data
	);

	ctrl: control_unit PORT MAP(
		clk => clk,
		rst => rst,
		start => start,
		compn => compn,
		compa => compa,
		rdy => rdy,
		we => we,
		eni => eni,
		rsti => rsti,
		enj => enj,
		ldj => ldj,
		enk => enk,
		enm => enm,
		selr => selr,
		selw => selw,
		seld => seld,
		selk => selk,
		selm => selm
	);

end struct;

