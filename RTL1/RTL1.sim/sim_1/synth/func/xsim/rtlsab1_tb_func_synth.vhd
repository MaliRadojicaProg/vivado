-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Thu Jun 26 12:15:43 2025
-- Host        : arch running 64-bit Arch Linux
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/marko/vivadoProjekti/RTL1/RTL1.sim/sim_1/synth/func/xsim/rtlsab1_tb_func_synth.vhd
-- Design      : rtlsab1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rtlsab1 is
  port (
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rout1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Rout2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Rout3 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    S1 : in STD_LOGIC;
    S2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Skr1 : in STD_LOGIC;
    Skr2 : in STD_LOGIC;
    Sa : in STD_LOGIC;
    Sb : in STD_LOGIC;
    En1 : in STD_LOGIC;
    En2 : in STD_LOGIC;
    En3 : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of rtlsab1 : entity is true;
  attribute N : integer;
  attribute N of rtlsab1 : entity is 8;
end rtlsab1;

architecture STRUCTURE of rtlsab1 is
  signal A_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal B_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal En1_IBUF : STD_LOGIC;
  signal En2_IBUF : STD_LOGIC;
  signal En3_IBUF : STD_LOGIC;
  signal \R2[0]_i_2_n_0\ : STD_LOGIC;
  signal \R2[3]_i_10_n_0\ : STD_LOGIC;
  signal \R2[3]_i_11_n_0\ : STD_LOGIC;
  signal \R2[3]_i_12_n_0\ : STD_LOGIC;
  signal \R2[3]_i_3_n_0\ : STD_LOGIC;
  signal \R2[3]_i_4_n_0\ : STD_LOGIC;
  signal \R2[3]_i_5_n_0\ : STD_LOGIC;
  signal \R2[3]_i_6_n_0\ : STD_LOGIC;
  signal \R2[3]_i_7_n_0\ : STD_LOGIC;
  signal \R2[3]_i_8_n_0\ : STD_LOGIC;
  signal \R2[3]_i_9_n_0\ : STD_LOGIC;
  signal \R2[7]_i_10_n_0\ : STD_LOGIC;
  signal \R2[7]_i_11_n_0\ : STD_LOGIC;
  signal \R2[7]_i_12_n_0\ : STD_LOGIC;
  signal \R2[7]_i_13_n_0\ : STD_LOGIC;
  signal \R2[7]_i_14_n_0\ : STD_LOGIC;
  signal \R2[7]_i_15_n_0\ : STD_LOGIC;
  signal \R2[7]_i_3_n_0\ : STD_LOGIC;
  signal \R2[7]_i_4_n_0\ : STD_LOGIC;
  signal \R2[7]_i_5_n_0\ : STD_LOGIC;
  signal \R2[7]_i_6_n_0\ : STD_LOGIC;
  signal \R2[7]_i_7_n_0\ : STD_LOGIC;
  signal \R2[7]_i_8_n_0\ : STD_LOGIC;
  signal \R2[7]_i_9_n_0\ : STD_LOGIC;
  signal \R2_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \R2_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \R2_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \R2_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \R2_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \R2_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \R2_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \R3[6]_i_2_n_0\ : STD_LOGIC;
  signal \R3[6]_i_3_n_0\ : STD_LOGIC;
  signal \R3[6]_i_4_n_0\ : STD_LOGIC;
  signal \R3[6]_i_5_n_0\ : STD_LOGIC;
  signal \R3[6]_i_6_n_0\ : STD_LOGIC;
  signal \R3[7]_i_2_n_0\ : STD_LOGIC;
  signal \R3[7]_i_3_n_0\ : STD_LOGIC;
  signal Rout1_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Rout2_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Rout3_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S1_IBUF : STD_LOGIC;
  signal S2_IBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Sa_IBUF : STD_LOGIC;
  signal Sabout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Sb_IBUF : STD_LOGIC;
  signal Skr1_IBUF : STD_LOGIC;
  signal Skr2_IBUF : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal x1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_R2_reg[7]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \R1[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \R1[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \R1[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \R1[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \R1[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \R1[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \R1[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \R1[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \R2[0]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \R2[3]_i_10\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \R2[3]_i_11\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \R2[3]_i_12\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \R2[7]_i_12\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \R2[7]_i_14\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \R2[7]_i_15\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \R3[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \R3[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \R3[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \R3[6]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \R3[6]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \R3[6]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \R3[6]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \R3[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \R3[7]_i_3\ : label is "soft_lutpair0";
begin
\A_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(0),
      O => A_IBUF(0)
    );
\A_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(1),
      O => A_IBUF(1)
    );
\A_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(2),
      O => A_IBUF(2)
    );
\A_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(3),
      O => A_IBUF(3)
    );
\A_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(4),
      O => A_IBUF(4)
    );
\A_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(5),
      O => A_IBUF(5)
    );
\A_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(6),
      O => A_IBUF(6)
    );
\A_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(7),
      O => A_IBUF(7)
    );
\B_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(0),
      O => B_IBUF(0)
    );
\B_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(1),
      O => B_IBUF(1)
    );
\B_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(2),
      O => B_IBUF(2)
    );
\B_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(3),
      O => B_IBUF(3)
    );
\B_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(4),
      O => B_IBUF(4)
    );
\B_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(5),
      O => B_IBUF(5)
    );
\B_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(6),
      O => B_IBUF(6)
    );
\B_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(7),
      O => B_IBUF(7)
    );
En1_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => En1,
      O => En1_IBUF
    );
En2_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => En2,
      O => En2_IBUF
    );
En3_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => En3,
      O => En3_IBUF
    );
\R1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Sabout(0),
      I1 => S1_IBUF,
      I2 => A_IBUF(0),
      O => x1(0)
    );
\R1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Sabout(1),
      I1 => S1_IBUF,
      I2 => A_IBUF(1),
      O => x1(1)
    );
\R1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Sabout(2),
      I1 => S1_IBUF,
      I2 => A_IBUF(2),
      O => x1(2)
    );
\R1[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Sabout(3),
      I1 => S1_IBUF,
      I2 => A_IBUF(3),
      O => x1(3)
    );
\R1[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Sabout(4),
      I1 => S1_IBUF,
      I2 => A_IBUF(4),
      O => x1(4)
    );
\R1[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Sabout(5),
      I1 => S1_IBUF,
      I2 => A_IBUF(5),
      O => x1(5)
    );
\R1[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Sabout(6),
      I1 => S1_IBUF,
      I2 => A_IBUF(6),
      O => x1(6)
    );
\R1[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Sabout(7),
      I1 => S1_IBUF,
      I2 => A_IBUF(7),
      O => x1(7)
    );
\R1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => En1_IBUF,
      D => x1(0),
      Q => Rout1_OBUF(0),
      R => '0'
    );
\R1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => En1_IBUF,
      D => x1(1),
      Q => Rout1_OBUF(1),
      R => '0'
    );
\R1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => En1_IBUF,
      D => x1(2),
      Q => Rout1_OBUF(2),
      R => '0'
    );
\R1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => En1_IBUF,
      D => x1(3),
      Q => Rout1_OBUF(3),
      R => '0'
    );
\R1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => En1_IBUF,
      D => x1(4),
      Q => Rout1_OBUF(4),
      R => '0'
    );
\R1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => En1_IBUF,
      D => x1(5),
      Q => Rout1_OBUF(5),
      R => '0'
    );
\R1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => En1_IBUF,
      D => x1(6),
      Q => Rout1_OBUF(6),
      R => '0'
    );
\R1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => En1_IBUF,
      D => x1(7),
      Q => Rout1_OBUF(7),
      R => '0'
    );
\R2[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => Sabout(0),
      I1 => S2_IBUF(1),
      I2 => \R2[0]_i_2_n_0\,
      I3 => S2_IBUF(0),
      I4 => B_IBUF(0),
      O => p_0_in(0)
    );
\R2[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => Rout3_OBUF(0),
      I1 => Sb_IBUF,
      I2 => Skr1_IBUF,
      I3 => Rout1_OBUF(0),
      O => \R2[0]_i_2_n_0\
    );
\R2[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Sabout(1),
      I1 => S2_IBUF(1),
      I2 => plusOp(1),
      I3 => S2_IBUF(0),
      I4 => B_IBUF(1),
      O => p_0_in(1)
    );
\R2[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Sabout(2),
      I1 => S2_IBUF(1),
      I2 => plusOp(2),
      I3 => S2_IBUF(0),
      I4 => B_IBUF(2),
      O => p_0_in(2)
    );
\R2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Sabout(3),
      I1 => S2_IBUF(1),
      I2 => plusOp(3),
      I3 => S2_IBUF(0),
      I4 => B_IBUF(3),
      O => p_0_in(3)
    );
\R2[3]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => Rout1_OBUF(3),
      I1 => Skr1_IBUF,
      I2 => Sa_IBUF,
      O => \R2[3]_i_10_n_0\
    );
\R2[3]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => Rout1_OBUF(2),
      I1 => Skr1_IBUF,
      I2 => Sa_IBUF,
      O => \R2[3]_i_11_n_0\
    );
\R2[3]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => Rout1_OBUF(1),
      I1 => Skr1_IBUF,
      I2 => Sa_IBUF,
      O => \R2[3]_i_12_n_0\
    );
\R2[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F600F60000"
    )
        port map (
      I0 => Skr2_IBUF,
      I1 => Rout2_OBUF(2),
      I2 => Sb_IBUF,
      I3 => Sa_IBUF,
      I4 => Skr1_IBUF,
      I5 => Rout1_OBUF(2),
      O => \R2[3]_i_3_n_0\
    );
\R2[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F600F60000"
    )
        port map (
      I0 => Skr2_IBUF,
      I1 => Rout2_OBUF(1),
      I2 => Sb_IBUF,
      I3 => Sa_IBUF,
      I4 => Skr1_IBUF,
      I5 => Rout1_OBUF(1),
      O => \R2[3]_i_4_n_0\
    );
\R2[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF14FFFF14"
    )
        port map (
      I0 => Sa_IBUF,
      I1 => Skr1_IBUF,
      I2 => Rout1_OBUF(0),
      I3 => Skr2_IBUF,
      I4 => Rout2_OBUF(0),
      I5 => Sb_IBUF,
      O => \R2[3]_i_5_n_0\
    );
\R2[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999996"
    )
        port map (
      I0 => \R2[3]_i_3_n_0\,
      I1 => \R2[3]_i_10_n_0\,
      I2 => Sb_IBUF,
      I3 => Rout2_OBUF(3),
      I4 => Skr2_IBUF,
      O => \R2[3]_i_6_n_0\
    );
\R2[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999996"
    )
        port map (
      I0 => \R2[3]_i_4_n_0\,
      I1 => \R2[3]_i_11_n_0\,
      I2 => Sb_IBUF,
      I3 => Rout2_OBUF(2),
      I4 => Skr2_IBUF,
      O => \R2[3]_i_7_n_0\
    );
\R2[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999996"
    )
        port map (
      I0 => \R2[3]_i_5_n_0\,
      I1 => \R2[3]_i_12_n_0\,
      I2 => Sb_IBUF,
      I3 => Rout2_OBUF(1),
      I4 => Skr2_IBUF,
      O => \R2[3]_i_8_n_0\
    );
\R2[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"090909F609F60909"
    )
        port map (
      I0 => Skr2_IBUF,
      I1 => Rout2_OBUF(0),
      I2 => Sb_IBUF,
      I3 => Sa_IBUF,
      I4 => Skr1_IBUF,
      I5 => Rout1_OBUF(0),
      O => \R2[3]_i_9_n_0\
    );
\R2[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Sabout(4),
      I1 => S2_IBUF(1),
      I2 => plusOp(4),
      I3 => S2_IBUF(0),
      I4 => B_IBUF(4),
      O => p_0_in(4)
    );
\R2[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Sabout(5),
      I1 => S2_IBUF(1),
      I2 => plusOp(5),
      I3 => S2_IBUF(0),
      I4 => B_IBUF(5),
      O => p_0_in(5)
    );
\R2[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Sabout(6),
      I1 => S2_IBUF(1),
      I2 => plusOp(6),
      I3 => S2_IBUF(0),
      I4 => B_IBUF(6),
      O => p_0_in(6)
    );
\R2[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8BBBB8BB88888"
    )
        port map (
      I0 => Sabout(7),
      I1 => S2_IBUF(1),
      I2 => \R2[7]_i_3_n_0\,
      I3 => \R2[7]_i_4_n_0\,
      I4 => S2_IBUF(0),
      I5 => B_IBUF(7),
      O => p_0_in(7)
    );
\R2[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999996"
    )
        port map (
      I0 => \R2[7]_i_6_n_0\,
      I1 => \R2[7]_i_14_n_0\,
      I2 => Sb_IBUF,
      I3 => Rout2_OBUF(5),
      I4 => Skr2_IBUF,
      O => \R2[7]_i_10_n_0\
    );
\R2[7]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999996"
    )
        port map (
      I0 => \R2[7]_i_7_n_0\,
      I1 => \R2[7]_i_15_n_0\,
      I2 => Sb_IBUF,
      I3 => Rout2_OBUF(4),
      I4 => Skr2_IBUF,
      O => \R2[7]_i_11_n_0\
    );
\R2[7]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => Rout1_OBUF(6),
      I1 => Skr1_IBUF,
      I2 => Sa_IBUF,
      O => \R2[7]_i_12_n_0\
    );
\R2[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9F9F9F906F9F906"
    )
        port map (
      I0 => Rout1_OBUF(7),
      I1 => Skr1_IBUF,
      I2 => Sa_IBUF,
      I3 => Rout2_OBUF(7),
      I4 => Skr2_IBUF,
      I5 => Sb_IBUF,
      O => \R2[7]_i_13_n_0\
    );
\R2[7]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => Rout1_OBUF(5),
      I1 => Skr1_IBUF,
      I2 => Sa_IBUF,
      O => \R2[7]_i_14_n_0\
    );
\R2[7]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => Rout1_OBUF(4),
      I1 => Skr1_IBUF,
      I2 => Sa_IBUF,
      O => \R2[7]_i_15_n_0\
    );
\R2[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \R3[6]_i_2_n_0\,
      I1 => \R3[6]_i_3_n_0\,
      I2 => \R3[6]_i_4_n_0\,
      I3 => \R3[6]_i_5_n_0\,
      I4 => \R3[6]_i_6_n_0\,
      I5 => \R3[7]_i_2_n_0\,
      O => \R2[7]_i_3_n_0\
    );
\R2[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => Rout3_OBUF(7),
      I1 => Sb_IBUF,
      I2 => Rout1_OBUF(7),
      I3 => Skr1_IBUF,
      O => \R2[7]_i_4_n_0\
    );
\R2[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F600F60000"
    )
        port map (
      I0 => Skr2_IBUF,
      I1 => Rout2_OBUF(5),
      I2 => Sb_IBUF,
      I3 => Sa_IBUF,
      I4 => Skr1_IBUF,
      I5 => Rout1_OBUF(5),
      O => \R2[7]_i_5_n_0\
    );
\R2[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F600F60000"
    )
        port map (
      I0 => Skr2_IBUF,
      I1 => Rout2_OBUF(4),
      I2 => Sb_IBUF,
      I3 => Sa_IBUF,
      I4 => Skr1_IBUF,
      I5 => Rout1_OBUF(4),
      O => \R2[7]_i_6_n_0\
    );
\R2[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F600F60000"
    )
        port map (
      I0 => Skr2_IBUF,
      I1 => Rout2_OBUF(3),
      I2 => Sb_IBUF,
      I3 => Sa_IBUF,
      I4 => Skr1_IBUF,
      I5 => Rout1_OBUF(3),
      O => \R2[7]_i_7_n_0\
    );
\R2[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75578AA8"
    )
        port map (
      I0 => \R2[7]_i_12_n_0\,
      I1 => Sb_IBUF,
      I2 => Rout2_OBUF(6),
      I3 => Skr2_IBUF,
      I4 => \R2[7]_i_13_n_0\,
      O => \R2[7]_i_8_n_0\
    );
\R2[7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999996"
    )
        port map (
      I0 => \R2[7]_i_5_n_0\,
      I1 => \R2[7]_i_12_n_0\,
      I2 => Sb_IBUF,
      I3 => Rout2_OBUF(6),
      I4 => Skr2_IBUF,
      O => \R2[7]_i_9_n_0\
    );
\R2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => En2_IBUF,
      D => p_0_in(0),
      Q => Rout2_OBUF(0),
      R => '0'
    );
\R2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => En2_IBUF,
      D => p_0_in(1),
      Q => Rout2_OBUF(1),
      R => '0'
    );
\R2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => En2_IBUF,
      D => p_0_in(2),
      Q => Rout2_OBUF(2),
      R => '0'
    );
\R2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => En2_IBUF,
      D => p_0_in(3),
      Q => Rout2_OBUF(3),
      R => '0'
    );
\R2_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \R2_reg[3]_i_2_n_0\,
      CO(2) => \R2_reg[3]_i_2_n_1\,
      CO(1) => \R2_reg[3]_i_2_n_2\,
      CO(0) => \R2_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \R2[3]_i_3_n_0\,
      DI(2) => \R2[3]_i_4_n_0\,
      DI(1) => \R2[3]_i_5_n_0\,
      DI(0) => '0',
      O(3 downto 0) => Sabout(3 downto 0),
      S(3) => \R2[3]_i_6_n_0\,
      S(2) => \R2[3]_i_7_n_0\,
      S(1) => \R2[3]_i_8_n_0\,
      S(0) => \R2[3]_i_9_n_0\
    );
\R2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => En2_IBUF,
      D => p_0_in(4),
      Q => Rout2_OBUF(4),
      R => '0'
    );
\R2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => En2_IBUF,
      D => p_0_in(5),
      Q => Rout2_OBUF(5),
      R => '0'
    );
\R2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => En2_IBUF,
      D => p_0_in(6),
      Q => Rout2_OBUF(6),
      R => '0'
    );
\R2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => En2_IBUF,
      D => p_0_in(7),
      Q => Rout2_OBUF(7),
      R => '0'
    );
\R2_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \R2_reg[3]_i_2_n_0\,
      CO(3) => \NLW_R2_reg[7]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \R2_reg[7]_i_2_n_1\,
      CO(1) => \R2_reg[7]_i_2_n_2\,
      CO(0) => \R2_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \R2[7]_i_5_n_0\,
      DI(1) => \R2[7]_i_6_n_0\,
      DI(0) => \R2[7]_i_7_n_0\,
      O(3 downto 0) => Sabout(7 downto 4),
      S(3) => \R2[7]_i_8_n_0\,
      S(2) => \R2[7]_i_9_n_0\,
      S(1) => \R2[7]_i_10_n_0\,
      S(0) => \R2[7]_i_11_n_0\
    );
\R3[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"09F9"
    )
        port map (
      I0 => Rout1_OBUF(0),
      I1 => Skr1_IBUF,
      I2 => Sb_IBUF,
      I3 => Rout3_OBUF(0),
      O => plusOp(0)
    );
\R3[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335ACC5A"
    )
        port map (
      I0 => Rout1_OBUF(0),
      I1 => Rout3_OBUF(0),
      I2 => Rout1_OBUF(1),
      I3 => Sb_IBUF,
      I4 => Rout3_OBUF(1),
      O => plusOp(1)
    );
\R3[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5596AA96"
    )
        port map (
      I0 => \R3[6]_i_4_n_0\,
      I1 => Rout1_OBUF(2),
      I2 => Skr1_IBUF,
      I3 => Sb_IBUF,
      I4 => Rout3_OBUF(2),
      O => plusOp(2)
    );
\R3[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7447FFFF8BB80000"
    )
        port map (
      I0 => Rout3_OBUF(2),
      I1 => Sb_IBUF,
      I2 => Skr1_IBUF,
      I3 => Rout1_OBUF(2),
      I4 => \R3[6]_i_4_n_0\,
      I5 => \R3[6]_i_3_n_0\,
      O => plusOp(3)
    );
\R3[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \R3[6]_i_3_n_0\,
      I1 => \R3[6]_i_4_n_0\,
      I2 => \R3[6]_i_5_n_0\,
      I3 => \R3[6]_i_6_n_0\,
      O => plusOp(4)
    );
\R3[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \R3[6]_i_6_n_0\,
      I1 => \R3[6]_i_5_n_0\,
      I2 => \R3[6]_i_4_n_0\,
      I3 => \R3[6]_i_3_n_0\,
      I4 => \R3[6]_i_2_n_0\,
      O => plusOp(5)
    );
\R3[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \R3[6]_i_2_n_0\,
      I1 => \R3[6]_i_3_n_0\,
      I2 => \R3[6]_i_4_n_0\,
      I3 => \R3[6]_i_5_n_0\,
      I4 => \R3[6]_i_6_n_0\,
      I5 => \R3[7]_i_2_n_0\,
      O => plusOp(6)
    );
\R3[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => Rout3_OBUF(5),
      I1 => Sb_IBUF,
      I2 => Skr1_IBUF,
      I3 => Rout1_OBUF(5),
      O => \R3[6]_i_2_n_0\
    );
\R3[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => Rout3_OBUF(3),
      I1 => Sb_IBUF,
      I2 => Skr1_IBUF,
      I3 => Rout1_OBUF(3),
      O => \R3[6]_i_3_n_0\
    );
\R3[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC05A0000005A0"
    )
        port map (
      I0 => Rout1_OBUF(0),
      I1 => Rout3_OBUF(0),
      I2 => Rout1_OBUF(1),
      I3 => Skr1_IBUF,
      I4 => Sb_IBUF,
      I5 => Rout3_OBUF(1),
      O => \R3[6]_i_4_n_0\
    );
\R3[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => Rout3_OBUF(2),
      I1 => Sb_IBUF,
      I2 => Skr1_IBUF,
      I3 => Rout1_OBUF(2),
      O => \R3[6]_i_5_n_0\
    );
\R3[6]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => Rout3_OBUF(4),
      I1 => Sb_IBUF,
      I2 => Skr1_IBUF,
      I3 => Rout1_OBUF(4),
      O => \R3[6]_i_6_n_0\
    );
\R3[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777877888888778"
    )
        port map (
      I0 => \R3[7]_i_2_n_0\,
      I1 => \R3[7]_i_3_n_0\,
      I2 => Skr1_IBUF,
      I3 => Rout1_OBUF(7),
      I4 => Sb_IBUF,
      I5 => Rout3_OBUF(7),
      O => plusOp(7)
    );
\R3[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => Rout3_OBUF(6),
      I1 => Sb_IBUF,
      I2 => Skr1_IBUF,
      I3 => Rout1_OBUF(6),
      O => \R3[7]_i_2_n_0\
    );
\R3[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \R3[6]_i_6_n_0\,
      I1 => \R3[6]_i_5_n_0\,
      I2 => \R3[6]_i_4_n_0\,
      I3 => \R3[6]_i_3_n_0\,
      I4 => \R3[6]_i_2_n_0\,
      O => \R3[7]_i_3_n_0\
    );
\R3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => En3_IBUF,
      D => plusOp(0),
      Q => Rout3_OBUF(0),
      R => '0'
    );
\R3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => En3_IBUF,
      D => plusOp(1),
      Q => Rout3_OBUF(1),
      R => '0'
    );
\R3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => En3_IBUF,
      D => plusOp(2),
      Q => Rout3_OBUF(2),
      R => '0'
    );
\R3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => En3_IBUF,
      D => plusOp(3),
      Q => Rout3_OBUF(3),
      R => '0'
    );
\R3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => En3_IBUF,
      D => plusOp(4),
      Q => Rout3_OBUF(4),
      R => '0'
    );
\R3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => En3_IBUF,
      D => plusOp(5),
      Q => Rout3_OBUF(5),
      R => '0'
    );
\R3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => En3_IBUF,
      D => plusOp(6),
      Q => Rout3_OBUF(6),
      R => '0'
    );
\R3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => En3_IBUF,
      D => plusOp(7),
      Q => Rout3_OBUF(7),
      R => '0'
    );
\Rout1_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rout1_OBUF(0),
      O => Rout1(0)
    );
\Rout1_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rout1_OBUF(1),
      O => Rout1(1)
    );
\Rout1_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rout1_OBUF(2),
      O => Rout1(2)
    );
\Rout1_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rout1_OBUF(3),
      O => Rout1(3)
    );
\Rout1_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rout1_OBUF(4),
      O => Rout1(4)
    );
\Rout1_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rout1_OBUF(5),
      O => Rout1(5)
    );
\Rout1_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rout1_OBUF(6),
      O => Rout1(6)
    );
\Rout1_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rout1_OBUF(7),
      O => Rout1(7)
    );
\Rout2_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rout2_OBUF(0),
      O => Rout2(0)
    );
\Rout2_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rout2_OBUF(1),
      O => Rout2(1)
    );
\Rout2_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rout2_OBUF(2),
      O => Rout2(2)
    );
\Rout2_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rout2_OBUF(3),
      O => Rout2(3)
    );
\Rout2_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rout2_OBUF(4),
      O => Rout2(4)
    );
\Rout2_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rout2_OBUF(5),
      O => Rout2(5)
    );
\Rout2_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rout2_OBUF(6),
      O => Rout2(6)
    );
\Rout2_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rout2_OBUF(7),
      O => Rout2(7)
    );
\Rout3_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rout3_OBUF(0),
      O => Rout3(0)
    );
\Rout3_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rout3_OBUF(1),
      O => Rout3(1)
    );
\Rout3_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rout3_OBUF(2),
      O => Rout3(2)
    );
\Rout3_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rout3_OBUF(3),
      O => Rout3(3)
    );
\Rout3_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rout3_OBUF(4),
      O => Rout3(4)
    );
\Rout3_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rout3_OBUF(5),
      O => Rout3(5)
    );
\Rout3_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rout3_OBUF(6),
      O => Rout3(6)
    );
\Rout3_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Rout3_OBUF(7),
      O => Rout3(7)
    );
S1_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => S1,
      O => S1_IBUF
    );
\S2_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => S2(0),
      O => S2_IBUF(0)
    );
\S2_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => S2(1),
      O => S2_IBUF(1)
    );
Sa_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Sa,
      O => Sa_IBUF
    );
Sb_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Sb,
      O => Sb_IBUF
    );
Skr1_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Skr1,
      O => Skr1_IBUF
    );
Skr2_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Skr2,
      O => Skr2_IBUF
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
end STRUCTURE;
