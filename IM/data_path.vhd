library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity Data_path is
PORT (clk : IN STD_LOGIC;
	   eni, rsti, enj, ldj, enk, enm, selr, selw, seld, selk, selm : IN STD_LOGIC;
	   p: IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      r_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	   compn, compa : OUT STD_LOGIC;
	   r_addr, w_addr : OUT STD_LOGIC_VECTOR (5 DOWNTO 0);
	   w_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
end Data_path;

architecture arch of Data_path is
	signal regi, regj, regk: UNSIGNED(5 DOWNTO 0);
	signal co1, co2 : UNSIGNED(5 DOWNTO 0);
	signal regmin : UNSIGNED(7 DOWNTO 0);
begin

	--register i
	process (clk)
	begin
		if (clk'event and clk='1') then
			if (rsti = '1') then
				regi <= (OTHERS => '0');
			elsif (eni = '1') then
				regi <= regi + 1;
			end if;
		end if;
	end process;
	
	-- register j
	process (clk)
	begin
		if (clk'event and clk='1') then
			if (ldj = '1') then
				regj <= regi;
			elsif (enj = '1') then
				regj <= regj + 1;
			end if;
		end if;
	end process;
	
	-- register k
	process (clk)
	begin
		if (clk'event and clk='1') then
			if (enk = '1') then
				if (selk = '0') then
					regk <= regj;
				else
					regk <= regi;
				end if;
			end if;
		end if;
	end process;
	
	-- register min
	process (clk)
	begin
		if (clk'event and clk='1') then
			if (enm = '1') then
				regmin <= unsigned(r_data);
			end if;
		end if;
	end process;
	

	co1 <= regi when selm='0' else 
	       regj;
	
	co2 <= unsigned(p) - 1 when selm = '0' else 
	       unsigned(p);
			
	compn <= '1' when co1 < co2 else 
	         '0';
	
	r_addr <= std_logic_vector(regj) when (selr = '0') else 
	          std_logic_vector(regi);
				 
	w_addr <= std_logic_vector(regi) when (selw = '0') else 
	          std_logic_vector(regk);
				 
	compa <= '1' when unsigned(r_data) < regmin else 
	         '0';
				
	w_data <= r_data when (seld = '0') else 
	          std_logic_vector(regmin);
end arch;
