----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/17/2025 05:37:57 PM
-- Design Name: 
-- Module Name: tb_stop_watch - Behavioral
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
use work.state_packet.ALL;

entity tb_stop_watch is
end tb_stop_watch;

architecture sim of tb_stop_watch is

  -- DUT ports
  signal en   : std_logic := '0';
  signal clk  : std_logic := '0';
  signal rst  : std_logic := '0';
  signal d0, d1, d2 : state;

  component stop_watch
    Port ( en : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           d0 : out state;
           d1 : out state;
           d2 : out state);
  end component;

begin

  uut: stop_watch
    port map (
      en => en,
      clk => clk,
      rst => rst,
      d0 => d0,
      d1 => d1,
      d2 => d2
    );

  -- Clock generation
  clk_process : process
  begin
    clk <= '0';
    wait for 10 ns;
    clk <= '1';
    wait for 10 ns;
  end process;

  -- Stimulus process
  stim_proc: process
  begin
    -- Reset
    rst <= '1';
    wait for 50 ns;
    rst <= '0';
    
    -- Enable counting
    en <= '1';
    wait for 500 ns;
    
    -- Disable counting
    en <= '0';
    wait for 200 ns;

    -- Re-enable
    en <= '1';
    wait for 500 ns;

    wait;
  end process;

end sim;
