----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/21/2025 07:10:48 PM
-- Design Name: 
-- Module Name: STACK - Behavioral
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

entity STACK is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           full, empty: out std_logic;
          stack_test : out std_logic_vector(5 downto 0);
           din : in STD_LOGIC_VECTOR (7 downto 0);
           dout : out STD_LOGIC_VECTOR (7 downto 0);
           push_pop : in STD_LOGIC);
end STACK;

architecture Behavioral of STACK is
  component blk_mem_gen_0 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
end component;
signal F,E: std_logic;
signal we:std_logic_vector(0  downto 0);
signal stackpointer :unsigned(5 downto 0);
signal local_address :std_logic_vector(5 downto 0);
begin
  process(clk,rst)
  begin

    if(rst='1') then 
      stackpointer<=(others=>'0');
    elsif(rising_edge(clk)) then
      if(en='1') then 
        if(push_pop='1' and F='0') then
          stackpointer<=stackpointer+1; --PUSH
        elsif(push_pop='0' and E='0') then
          stackpointer<=stackpointer-1; --POP
        end if; 
      end if; 
    end if;
  end process;
  
  we<="1" when push_pop='1' and en='1' else "0";
  local_address<=std_logic_vector(stackpointer) when push_pop='1' else
                 std_logic_vector(stackpointer-1) when push_pop='0' else (others=>'0');
  --local_address<=std_logic_vector(stackpointer);
  F<='1' when stackpointer="111111" else '0';
  E<='1' when stackpointer="000000" else '0';
  full<=F;
  empty<=E;
  stack_test<=std_logic_vector(stackpointer); --debug

 memy: blk_mem_gen_0 port map (clka=>clk,ena=>en,wea=>we,addra=>local_address,dina=>din,douta=>dout);


end Behavioral;
