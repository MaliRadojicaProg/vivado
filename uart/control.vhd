library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity control is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           s_tick : in  STD_LOGIC;
           rx : in  STD_LOGIC;
           c7 : in  STD_LOGIC;
           c15 : in  STD_LOGIC;
           cSB : in  STD_LOGIC;
           cn : in  STD_LOGIC;
           enb : out  STD_LOGIC;
           clrs : out  STD_LOGIC;
           ens : out  STD_LOGIC;
           clrn : out  STD_LOGIC;
           enn : out  STD_LOGIC;
           rx_done : out  STD_LOGIC);
end control;

architecture Behavioral of control is
  type state is (IDLE, START, DATA, STOP);
  signal pr_state, nx_state : state := IDLE;
begin
  
-- registar stanja
	process(clk, rst)
	begin
	  if(rst = '1') then
		 pr_state <= IDLE;
	  elsif(clk'event and clk = '1') then
		 pr_state <= nx_state;
	  end if;
	end process;

-- logika narednog stanja
	process(pr_state, s_tick, c7, c15, cSB, cn, rx)
	begin
	-- Ovde ubaciti kod koji nedostaje --
    rx_done<='0';
    ens<='0';
    enb<='0';
    enn<='0';
    nx_state<=pr_state;
    clrs<='0';
    clrn<='0';
    ---IDLE-----------------
    if(pr_state=IDLE) then
        clrs<='1';
        clrn<='1';
        if(rx='0') then 
          nx_state<=START;
          ens<='1';
        end if;
   end if;
          ---START-----------------
      if(pr_state=START) then
        ens<='1';
        if(c7='1' and s_tick='1') then
          if rx='0' then
              clrs<='1';
             -- clrn<='1';
              enn<='1';
               nx_state<=DATA;
          else 
          nx_state<=IDLE;
            end if;
        end if;
    end if;
      ------DATA--------------
      if(pr_state=DATA) then
        ens<='1';
          if(c15='1' and s_tick='1') then
            clrs<='1';
            enb<='1';
            if(cn='1') then
              nx_state<=STOP;
            else 
              enn<='1';
            end if;
         end if;
        end if;
      --------STOP-----------
      if(pr_state=STOP) then
          ens<='1';
          if(cSB='1' and s_tick='1') then
            if rx='1' then
              rx_done<='1';
            end if;
          nx_state<=IDLE;
        end if;
      end if;
    
  

 end process;

end Behavioral;

