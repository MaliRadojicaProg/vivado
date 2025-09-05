LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY im_tb IS
     Generic(N:integer :=4;
           A: integer :=4);
END im_tb;
 
ARCHITECTURE behavior OF im_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IM
     Generic(N:integer :=4;
           A: integer :=4);
    PORT(
         w_data : IN  std_logic_vector(N-1 downto 0);
         w_addr : IN  std_logic_vector(A-1 downto 0);
         r_data : OUT  std_logic_vector(N-1 downto 0);
         r_addr : out  std_logic_vector(A-1 downto 0);
         din : in STD_LOGIC_VECTOR(N-1 downto 0);
         we : IN  std_logic;
         clr : IN  std_logic;
         start : IN  std_logic;
         status : out std_logic;
         rdy : OUT  std_logic;
         clk : IN  std_logic;
         rf_test : out std_logic_vector(A-1 downto 0);
         rst : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal w_data : std_logic_vector(N-1 downto 0) := (others => '0');
   signal w_addr : std_logic_vector(A-1 downto 0) := (others => '0');
   signal r_addr_s : std_logic_vector(A-1 downto 0) := (others => '0');
   signal we : std_logic := '0';
   signal clr : std_logic := '0';
   signal start : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal din : std_logic_vector(N-1 downto 0) :=std_logic_vector(to_unsigned(3, N));

 	--Outputs
   signal r_data : std_logic_vector(N-1 downto 0);
   signal rdy,status : std_logic;
    signal rf_test : std_logic_vector(A-1 downto 0);
   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IM 
    generic map(
  N=>4,
  A=>4)
   PORT MAP (
          w_data => w_data,
          w_addr => w_addr,
          r_data => r_data,
          r_addr => r_addr_s,
          we => we,
          clr => clr,
          start => start,
          rdy => rdy,
          clk => clk,
          din => din,
          status=>status,
          rf_test=>rf_test,
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
		type int_array is array(0 to 3) of integer;
		variable A : int_array := (1,2,3,4);

	  begin
	     we <= '1';
	     for i in 0 to A'Length-1 loop
		    w_addr <= std_logic_vector(to_unsigned(i,4));
	       w_data <= std_logic_vector(to_unsigned(A(i),4));	
		    wait for clk_period;		  
		  end loop;
		  we <= '0';
	  end ;
	  
	   -- procedura za upis inicijalnog sadrzaja u RF
--	  procedure read_rf is
--	  begin
--	     we <= '0';
--	     for i in 0 to 3 loop
--		    r_addr_s <= std_logic_vector(to_unsigned(i,4));
----            r_addr<=(1=>'1', others=>'0');
--		     wait until clk'event and clk = '1';		  
--		  end loop;
--	  end ;
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
	  
	  -- cekanje da IM modul zavrsi rad 
	 wait until rdy = '1';
	  wait until clk'event and clk = '0';
	  
	  -- citanje sadrzaja registarskog fajla
        --read_rf;
	  
	  -- kraj simulacije
	  wait;
   end process;

END;
