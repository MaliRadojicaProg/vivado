LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY im_tb IS
END im_tb;
 
ARCHITECTURE behavior OF im_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT im
    PORT(
         w_data : IN  std_logic_vector(7 downto 0);
         w_addr : IN  std_logic_vector(5 downto 0);
         r_data : OUT  std_logic_vector(7 downto 0);
         r_addr : IN  std_logic_vector(5 downto 0);
         we : IN  std_logic;
         clr : IN  std_logic;
         start : IN  std_logic;
         rdy : OUT  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal w_data : std_logic_vector(7 downto 0) := (others => '0');
   signal w_addr : std_logic_vector(5 downto 0) := (others => '0');
   signal r_addr : std_logic_vector(5 downto 0) := (others => '0');
   signal we : std_logic := '0';
   signal clr : std_logic := '0';
   signal start : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal r_data : std_logic_vector(7 downto 0);
   signal rdy : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: im PORT MAP (
          w_data => w_data,
          w_addr => w_addr,
          r_data => r_data,
          r_addr => r_addr,
          we => we,
          clr => clr,
          start => start,
          rdy => rdy,
          clk => clk,
          rst => rst
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
	
	  -- procedura za upis inicijalnog sadrzaja u RF
	  procedure write_rf is

		-- A - niz koji treba upisati u RF
		type int_array is array(0 to 13) of integer;
		variable A : int_array := (22,71,19,2,115,48,201,22,50,111,72,9,98,82);

	  begin
	     we <= '1';
	     for i in 0 to A'Length-1 loop
		    w_addr <= std_logic_vector(to_unsigned(i,6));
	       w_data <= std_logic_vector(to_unsigned(A(i),8));	
		    wait for clk_period;		  
		  end loop;
		  we <= '0';
	  end ;
	  
	   -- procedura za upis inicijalnog sadrzaja u RF
	  procedure read_rf is
	  begin
	     we <= '0';
	     for i in 0 to 15 loop
		    r_addr <= std_logic_vector(to_unsigned(i,6));
		    wait for clk_period;		  
		  end loop;
	  end ;
   begin		

	  -- pocetne vrednosti upravljackih signala
	  we <= '0';
	  start <= '0';
	  
	  -- reset (uz cekanje na prvu opadajucu ivicu takta
	  -- Posto je aktivna rastuca ivica, sve promene ulaznim portovima
	  -- treba sinhronizovati sa opadajucom ivicom!)
	  wait until clk'event and clk = '0';
	  clr <= '1';
	  rst <= '1';
	  wait for clk_period;
	  rst <= '0';
	  clr <= '0';
	  
     -- upis u RF
	  write_rf;
	  
	  -- startovanje IM modula
	  start <= '1';
	  wait for clk_period;
	  start <= '0';
	  
	  -- cekanje da IM modul zavisi rad 
	  wait until rdy = '1';
	  wait until clk'event and clk = '0';
	  
	  -- citanje sadrzaja registarskog fajla
	  read_rf;
	  
	  -- kraj simulacije
	  wait;
   end process;

END;
