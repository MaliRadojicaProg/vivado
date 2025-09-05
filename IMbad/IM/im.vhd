library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity im is
    Port ( w_data : in  STD_LOGIC_VECTOR (7 downto 0);
           w_addr : in  STD_LOGIC_VECTOR (5 downto 0);
           r_data : out  STD_LOGIC_VECTOR (7 downto 0);
           r_addr : in  STD_LOGIC_VECTOR (5 downto 0);
           we : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           start : in  STD_LOGIC;
           rdy : out  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC);
end im;

architecture arch of im is
 	COMPONENT im_block
	PORT(
		r_data : IN std_logic_vector(7 downto 0);
		p : IN std_logic_vector(5 downto 0);
		start : IN std_logic;
		clk : IN std_logic;
		rst : IN std_logic;          
		w_data : OUT std_logic_vector(7 downto 0);
		w_addr : OUT std_logic_vector(5 downto 0);
		r_addr : OUT std_logic_vector(5 downto 0);
		rdy : OUT std_logic;
		we : OUT std_logic);
	END COMPONENT;
	
	COMPONENT reg_file
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		we : IN std_logic;
		w_addr : IN std_logic_vector(5 downto 0);
		r_addr : IN std_logic_vector(5 downto 0);
		w_data : IN std_logic_vector(7 downto 0);          
		r_data : OUT std_logic_vector(7 downto 0));
	END COMPONENT;

   signal w_data_im, w_data_rf, r_data_rf : std_logic_vector(7 downto 0); 
	signal w_addr_im, w_addr_rf, r_addr_im, r_addr_rf : std_logic_vector(5 downto 0);

   signal rf_count : unsigned(5 downto 0);
	signal rdy_im, we_im, we_rf : std_logic;
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
	
	
	imblk: im_block PORT MAP(
		r_data => r_data_rf,
		p => std_logic_vector(rf_count),
		w_data => w_data_im,
		w_addr => w_addr_im,
		r_addr => r_addr_im,
		start => start,
		rdy => rdy_im,
		we => we_im,
		clk => clk,
		rst => rst
	);
	
	rf: reg_file PORT MAP(
		clk => clk,
		rst => rst,
		we => we_rf,
		w_addr => w_addr_rf,
		r_addr => r_addr_rf,
		w_data => w_data_rf,
		r_data => r_data_rf
	);

-- mux
  w_data_rf <= w_data when rdy_im = '1' else
					w_data_im;

  w_addr_rf <= w_addr when rdy_im = '1' else
					w_addr_im;

  r_addr_rf <= r_addr when rdy_im = '1' else
					r_addr_im;
					
  we_rf <= we when rdy_im = '1' else
           we_im;

-- izlazni portovi
  r_data <= r_data_rf; 
  rdy <= rdy_im;

end arch;

