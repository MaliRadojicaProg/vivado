----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/17/2025 08:04:27 PM
-- Design Name: 
-- Module Name: data_path - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity data_path is
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
end data_path;

architecture Behavioral of data_path is
signal reg_i,reg_x,reg_y,add_resx,add_resi: STD_LOGIC_VECTOR(5 downto 0);
signal comp_eqb,comp_eqa: std_logic_vector(7 downto 0); 
signal reg_st : STD_LOGIC :='0';
signal add_res,add_a,add_b : unsigned(5 downto 0);
begin
--registar status
  process(clk)
  begin
    if(rising_edge(clk)) then
      if(en_s='1') then 
        reg_st<=not(reg_st);
      end if;
    end if;
  end process;
  --registar X 
   process(clk)
   begin
     if(rising_edge(clk)) then 
       if(en_x='1') then
       if(sel_idle='0') then 
        reg_x<=(others=>'0');
       else 
        reg_x<=add_resx;
       end if;
      end if;
    end if;
    end process;
  --registar Y 
    process(clk)
    begin 
      if(rising_edge(clk)) then
        if(en_y='1') then  
          if(sel_idle='0') then
            reg_y<=std_logic_vector(unsigned(p)-1);
          else 
            reg_y<=reg_i;
          end if;
        end if;
      end if;
    end process;
  ---registar i 
    process(clk)
    begin 
      if(rising_edge(clk)) then 
        if(en_i='1') then 
          reg_i<='0' & add_resi(5 downto 1);
        end if;
      end if;
    end process;
  --addmux
  with sel_add select 
    add_a <= unsigned(reg_x) when '0',
             "00001" when others;
  with sel_add select
    add_b <= unsigned(reg_y) when '0',
             unsigned(reg_i) when others;

  add_res<=add_a+add_b;

  add_resx<=std_logic_vector(add_res) when sel_add='0' else (others=>'0');
  add_resi<=std_logic_vector(add_res) when sel_add='1' else (others=>'0');
  --less and eq 
  comp_xy<= '1' when reg_x<=reg_y else '0';
  -- less
  comp_rn<= '1' when r_data<din else '0';
  ---comp_equall 
  with sel_eq select
    comp_eqa<=(others=>reg_st) when '0',
              r_data when others;
  with sel_eq select
    comp_eqb<=(others=>'1') when '0',
              din when others;

  comp_eq<='1' when comp_eqa=comp_eqb else '0';

  r_addr<=reg_i;

  

end Behavioral;
