library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity control_unit is
  PORT (clk, rst, start: IN STD_LOGIC;
	     compn, compa : IN STD_LOGIC;
	     rdy : OUT STD_LOGIC;
	     we : OUT STD_LOGIC;
	     eni, rsti, enj, ldj, enk, enm : OUT STD_LOGIC; 
		  selr, selw, seld, selk, selm : OUT STD_LOGIC);	
end control_unit;

architecture Behavioral of control_unit is
	type state is (idle, s1, s2, s3);
	signal pr_state, nx_state : state;
begin
	--registar
	process (clk, rst)
	begin
		if (rst = '1') then
			pr_state <= idle;
		elsif (clk'event and clk='1') then
			pr_state <= nx_state;
		end if;
	end process;

	-- logika sledeceg stanja i izlaza
	process (pr_state, start, compn, compa)
	begin
		rdy<='0'; eni<='0'; rsti<='0'; enj<='0'; ldj<='0'; enk<='0'; 
		enm<='0'; selr<='0'; selw<='0'; seld<='0'; selk<='0'; selm<='0'; we <= '0';
		nx_state <= pr_state;
		
		case pr_state is
			when idle =>
					rdy <= '1';
					if (start = '1') then
						rsti <= '1';
						nx_state <= s1;
					end if;
			when s1 =>
					if (compn = '1') then
						selr <='1'; enm <= '1';
						selk <= '1'; enk <= '1';
						ldj <= '1';
						nx_state <= s2;
					else
						nx_state <= idle;
					end if;
			when s2 => 
					selm <= '1';
					if (compn = '1') then
						if (compa = '1') then 
							enm <= '1';
							enk <='1';
						end if;
						enj <= '1';
						nx_state <= s2;
					else
						selr <= '1'; selw <= '1'; we <= '1';
						nx_state <= s3;
					end if;
			when s3 => 
					seld <= '1'; we <= '1';
					eni <='1';
					nx_state <= s1;
			end case;
	end process;
end Behavioral;
