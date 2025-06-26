// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Thu Jun 26 12:14:59 2025
// Host        : arch running 64-bit Arch Linux
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/marko/vivadoProjekti/RTL1/RTL1.sim/sim_1/impl/timing/xsim/rtlsab1_tb_time_impl.v
// Design      : rtlsab1
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "518d30b7" *) (* N = "8" *) 
(* NotValidForBitStream *)
module rtlsab1
   (A,
    B,
    Rout1,
    Rout2,
    Rout3,
    clk,
    S1,
    S2,
    Skr1,
    Skr2,
    Sa,
    Sb,
    En1,
    En2,
    En3);
  input [7:0]A;
  input [7:0]B;
  output [7:0]Rout1;
  output [7:0]Rout2;
  output [7:0]Rout3;
  input clk;
  input S1;
  input [1:0]S2;
  input Skr1;
  input Skr2;
  input Sa;
  input Sb;
  input En1;
  input En2;
  input En3;

  wire [7:0]A;
  wire [7:0]A_IBUF;
  wire [7:0]B;
  wire [7:0]B_IBUF;
  wire En1;
  wire En1_IBUF;
  wire En2;
  wire En2_IBUF;
  wire En3;
  wire En3_IBUF;
  wire \R1_reg[3]_lopt_replica_1 ;
  wire \R1_reg[6]_lopt_replica_1 ;
  wire \R1_reg[7]_lopt_replica_1 ;
  wire \R2[0]_i_2_n_0 ;
  wire \R2[3]_i_10_n_0 ;
  wire \R2[3]_i_11_n_0 ;
  wire \R2[3]_i_12_n_0 ;
  wire \R2[3]_i_3_n_0 ;
  wire \R2[3]_i_4_n_0 ;
  wire \R2[3]_i_5_n_0 ;
  wire \R2[3]_i_6_n_0 ;
  wire \R2[3]_i_7_n_0 ;
  wire \R2[3]_i_8_n_0 ;
  wire \R2[3]_i_9_n_0 ;
  wire \R2[7]_i_10_n_0 ;
  wire \R2[7]_i_11_n_0 ;
  wire \R2[7]_i_12_n_0 ;
  wire \R2[7]_i_13_n_0 ;
  wire \R2[7]_i_14_n_0 ;
  wire \R2[7]_i_15_n_0 ;
  wire \R2[7]_i_3_n_0 ;
  wire \R2[7]_i_4_n_0 ;
  wire \R2[7]_i_5_n_0 ;
  wire \R2[7]_i_6_n_0 ;
  wire \R2[7]_i_7_n_0 ;
  wire \R2[7]_i_8_n_0 ;
  wire \R2[7]_i_9_n_0 ;
  wire \R2_reg[3]_i_2_n_0 ;
  wire \R2_reg[7]_lopt_replica_1 ;
  wire \R3[6]_i_2_n_0 ;
  wire \R3[6]_i_3_n_0 ;
  wire \R3[6]_i_4_n_0 ;
  wire \R3[6]_i_5_n_0 ;
  wire \R3[6]_i_6_n_0 ;
  wire \R3[7]_i_2_n_0 ;
  wire \R3[7]_i_3_n_0 ;
  wire [7:0]Rout1;
  wire [7:0]Rout1_OBUF;
  wire [7:0]Rout2;
  wire [7:0]Rout2_OBUF;
  wire [7:0]Rout3;
  wire [7:0]Rout3_OBUF;
  wire S1;
  wire S1_IBUF;
  wire [1:0]S2;
  wire [1:0]S2_IBUF;
  wire Sa;
  wire Sa_IBUF;
  wire [7:0]Sabout;
  wire Sb;
  wire Sb_IBUF;
  wire Skr1;
  wire Skr1_IBUF;
  wire Skr2;
  wire Skr2_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]p_0_in;
  wire [7:0]plusOp;
  wire [7:0]x1;
  wire [2:0]\NLW_R2_reg[3]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_R2_reg[7]_i_2_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("rtlsab1_tb_time_impl.sdf",,,,"tool_control");
end
  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
  IBUF \A_IBUF[4]_inst 
       (.I(A[4]),
        .O(A_IBUF[4]));
  IBUF \A_IBUF[5]_inst 
       (.I(A[5]),
        .O(A_IBUF[5]));
  IBUF \A_IBUF[6]_inst 
       (.I(A[6]),
        .O(A_IBUF[6]));
  IBUF \A_IBUF[7]_inst 
       (.I(A[7]),
        .O(A_IBUF[7]));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  IBUF \B_IBUF[4]_inst 
       (.I(B[4]),
        .O(B_IBUF[4]));
  IBUF \B_IBUF[5]_inst 
       (.I(B[5]),
        .O(B_IBUF[5]));
  IBUF \B_IBUF[6]_inst 
       (.I(B[6]),
        .O(B_IBUF[6]));
  IBUF \B_IBUF[7]_inst 
       (.I(B[7]),
        .O(B_IBUF[7]));
  IBUF En1_IBUF_inst
       (.I(En1),
        .O(En1_IBUF));
  IBUF En2_IBUF_inst
       (.I(En2),
        .O(En2_IBUF));
  IBUF En3_IBUF_inst
       (.I(En3),
        .O(En3_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R1[0]_i_1 
       (.I0(Sabout[0]),
        .I1(S1_IBUF),
        .I2(A_IBUF[0]),
        .O(x1[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R1[1]_i_1 
       (.I0(Sabout[1]),
        .I1(S1_IBUF),
        .I2(A_IBUF[1]),
        .O(x1[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R1[2]_i_1 
       (.I0(Sabout[2]),
        .I1(S1_IBUF),
        .I2(A_IBUF[2]),
        .O(x1[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R1[3]_i_1 
       (.I0(Sabout[3]),
        .I1(S1_IBUF),
        .I2(A_IBUF[3]),
        .O(x1[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R1[4]_i_1 
       (.I0(Sabout[4]),
        .I1(S1_IBUF),
        .I2(A_IBUF[4]),
        .O(x1[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R1[5]_i_1 
       (.I0(Sabout[5]),
        .I1(S1_IBUF),
        .I2(A_IBUF[5]),
        .O(x1[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R1[6]_i_1 
       (.I0(Sabout[6]),
        .I1(S1_IBUF),
        .I2(A_IBUF[6]),
        .O(x1[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R1[7]_i_1 
       (.I0(Sabout[7]),
        .I1(S1_IBUF),
        .I2(A_IBUF[7]),
        .O(x1[7]));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(En1_IBUF),
        .D(x1[0]),
        .Q(Rout1_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(En1_IBUF),
        .D(x1[1]),
        .Q(Rout1_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(En1_IBUF),
        .D(x1[2]),
        .Q(Rout1_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(En1_IBUF),
        .D(x1[3]),
        .Q(Rout1_OBUF[3]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[3]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(En1_IBUF),
        .D(x1[3]),
        .Q(\R1_reg[3]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(En1_IBUF),
        .D(x1[4]),
        .Q(Rout1_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(En1_IBUF),
        .D(x1[5]),
        .Q(Rout1_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(En1_IBUF),
        .D(x1[6]),
        .Q(Rout1_OBUF[6]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[6]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(En1_IBUF),
        .D(x1[6]),
        .Q(\R1_reg[6]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(En1_IBUF),
        .D(x1[7]),
        .Q(Rout1_OBUF[7]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[7]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(En1_IBUF),
        .D(x1[7]),
        .Q(\R1_reg[7]_lopt_replica_1 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \R2[0]_i_1 
       (.I0(Sabout[0]),
        .I1(S2_IBUF[1]),
        .I2(\R2[0]_i_2_n_0 ),
        .I3(S2_IBUF[0]),
        .I4(B_IBUF[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \R2[0]_i_2 
       (.I0(Rout3_OBUF[0]),
        .I1(Sb_IBUF),
        .I2(Skr1_IBUF),
        .I3(Rout1_OBUF[0]),
        .O(\R2[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R2[1]_i_1 
       (.I0(Sabout[1]),
        .I1(S2_IBUF[1]),
        .I2(plusOp[1]),
        .I3(S2_IBUF[0]),
        .I4(B_IBUF[1]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R2[2]_i_1 
       (.I0(Sabout[2]),
        .I1(S2_IBUF[1]),
        .I2(plusOp[2]),
        .I3(S2_IBUF[0]),
        .I4(B_IBUF[2]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R2[3]_i_1 
       (.I0(Sabout[3]),
        .I1(S2_IBUF[1]),
        .I2(plusOp[3]),
        .I3(S2_IBUF[0]),
        .I4(B_IBUF[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \R2[3]_i_10 
       (.I0(Rout1_OBUF[3]),
        .I1(Skr1_IBUF),
        .I2(Sa_IBUF),
        .O(\R2[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \R2[3]_i_11 
       (.I0(Rout1_OBUF[2]),
        .I1(Skr1_IBUF),
        .I2(Sa_IBUF),
        .O(\R2[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \R2[3]_i_12 
       (.I0(Rout1_OBUF[1]),
        .I1(Skr1_IBUF),
        .I2(Sa_IBUF),
        .O(\R2[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000000F600F60000)) 
    \R2[3]_i_3 
       (.I0(Skr2_IBUF),
        .I1(Rout2_OBUF[2]),
        .I2(Sb_IBUF),
        .I3(Sa_IBUF),
        .I4(Skr1_IBUF),
        .I5(Rout1_OBUF[2]),
        .O(\R2[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000F600F60000)) 
    \R2[3]_i_4 
       (.I0(Skr2_IBUF),
        .I1(Rout2_OBUF[1]),
        .I2(Sb_IBUF),
        .I3(Sa_IBUF),
        .I4(Skr1_IBUF),
        .I5(Rout1_OBUF[1]),
        .O(\R2[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF14FFFF14)) 
    \R2[3]_i_5 
       (.I0(Sa_IBUF),
        .I1(Skr1_IBUF),
        .I2(Rout1_OBUF[0]),
        .I3(Skr2_IBUF),
        .I4(Rout2_OBUF[0]),
        .I5(Sb_IBUF),
        .O(\R2[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h96999996)) 
    \R2[3]_i_6 
       (.I0(\R2[3]_i_3_n_0 ),
        .I1(\R2[3]_i_10_n_0 ),
        .I2(Sb_IBUF),
        .I3(Rout2_OBUF[3]),
        .I4(Skr2_IBUF),
        .O(\R2[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h96999996)) 
    \R2[3]_i_7 
       (.I0(\R2[3]_i_4_n_0 ),
        .I1(\R2[3]_i_11_n_0 ),
        .I2(Sb_IBUF),
        .I3(Rout2_OBUF[2]),
        .I4(Skr2_IBUF),
        .O(\R2[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h96999996)) 
    \R2[3]_i_8 
       (.I0(\R2[3]_i_5_n_0 ),
        .I1(\R2[3]_i_12_n_0 ),
        .I2(Sb_IBUF),
        .I3(Rout2_OBUF[1]),
        .I4(Skr2_IBUF),
        .O(\R2[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h090909F609F60909)) 
    \R2[3]_i_9 
       (.I0(Skr2_IBUF),
        .I1(Rout2_OBUF[0]),
        .I2(Sb_IBUF),
        .I3(Sa_IBUF),
        .I4(Skr1_IBUF),
        .I5(Rout1_OBUF[0]),
        .O(\R2[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R2[4]_i_1 
       (.I0(Sabout[4]),
        .I1(S2_IBUF[1]),
        .I2(plusOp[4]),
        .I3(S2_IBUF[0]),
        .I4(B_IBUF[4]),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R2[5]_i_1 
       (.I0(Sabout[5]),
        .I1(S2_IBUF[1]),
        .I2(plusOp[5]),
        .I3(S2_IBUF[0]),
        .I4(B_IBUF[5]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R2[6]_i_1 
       (.I0(Sabout[6]),
        .I1(S2_IBUF[1]),
        .I2(plusOp[6]),
        .I3(S2_IBUF[0]),
        .I4(B_IBUF[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \R2[7]_i_1 
       (.I0(Sabout[7]),
        .I1(S2_IBUF[1]),
        .I2(\R2[7]_i_3_n_0 ),
        .I3(\R2[7]_i_4_n_0 ),
        .I4(S2_IBUF[0]),
        .I5(B_IBUF[7]),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'h96999996)) 
    \R2[7]_i_10 
       (.I0(\R2[7]_i_6_n_0 ),
        .I1(\R2[7]_i_14_n_0 ),
        .I2(Sb_IBUF),
        .I3(Rout2_OBUF[5]),
        .I4(Skr2_IBUF),
        .O(\R2[7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h96999996)) 
    \R2[7]_i_11 
       (.I0(\R2[7]_i_7_n_0 ),
        .I1(\R2[7]_i_15_n_0 ),
        .I2(Sb_IBUF),
        .I3(Rout2_OBUF[4]),
        .I4(Skr2_IBUF),
        .O(\R2[7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \R2[7]_i_12 
       (.I0(Rout1_OBUF[6]),
        .I1(Skr1_IBUF),
        .I2(Sa_IBUF),
        .O(\R2[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF9F9F9F906F9F906)) 
    \R2[7]_i_13 
       (.I0(Rout1_OBUF[7]),
        .I1(Skr1_IBUF),
        .I2(Sa_IBUF),
        .I3(Rout2_OBUF[7]),
        .I4(Skr2_IBUF),
        .I5(Sb_IBUF),
        .O(\R2[7]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \R2[7]_i_14 
       (.I0(Rout1_OBUF[5]),
        .I1(Skr1_IBUF),
        .I2(Sa_IBUF),
        .O(\R2[7]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \R2[7]_i_15 
       (.I0(Rout1_OBUF[4]),
        .I1(Skr1_IBUF),
        .I2(Sa_IBUF),
        .O(\R2[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \R2[7]_i_3 
       (.I0(\R3[6]_i_2_n_0 ),
        .I1(\R3[6]_i_3_n_0 ),
        .I2(\R3[6]_i_4_n_0 ),
        .I3(\R3[6]_i_5_n_0 ),
        .I4(\R3[6]_i_6_n_0 ),
        .I5(\R3[7]_i_2_n_0 ),
        .O(\R2[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \R2[7]_i_4 
       (.I0(Rout3_OBUF[7]),
        .I1(Sb_IBUF),
        .I2(Rout1_OBUF[7]),
        .I3(Skr1_IBUF),
        .O(\R2[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000F600F60000)) 
    \R2[7]_i_5 
       (.I0(Skr2_IBUF),
        .I1(Rout2_OBUF[5]),
        .I2(Sb_IBUF),
        .I3(Sa_IBUF),
        .I4(Skr1_IBUF),
        .I5(Rout1_OBUF[5]),
        .O(\R2[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000F600F60000)) 
    \R2[7]_i_6 
       (.I0(Skr2_IBUF),
        .I1(Rout2_OBUF[4]),
        .I2(Sb_IBUF),
        .I3(Sa_IBUF),
        .I4(Skr1_IBUF),
        .I5(Rout1_OBUF[4]),
        .O(\R2[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000F600F60000)) 
    \R2[7]_i_7 
       (.I0(Skr2_IBUF),
        .I1(Rout2_OBUF[3]),
        .I2(Sb_IBUF),
        .I3(Sa_IBUF),
        .I4(Skr1_IBUF),
        .I5(Rout1_OBUF[3]),
        .O(\R2[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h75578AA8)) 
    \R2[7]_i_8 
       (.I0(\R2[7]_i_12_n_0 ),
        .I1(Sb_IBUF),
        .I2(Rout2_OBUF[6]),
        .I3(Skr2_IBUF),
        .I4(\R2[7]_i_13_n_0 ),
        .O(\R2[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h96999996)) 
    \R2[7]_i_9 
       (.I0(\R2[7]_i_5_n_0 ),
        .I1(\R2[7]_i_12_n_0 ),
        .I2(Sb_IBUF),
        .I3(Rout2_OBUF[6]),
        .I4(Skr2_IBUF),
        .O(\R2[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(En2_IBUF),
        .D(p_0_in[0]),
        .Q(Rout2_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(En2_IBUF),
        .D(p_0_in[1]),
        .Q(Rout2_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(En2_IBUF),
        .D(p_0_in[2]),
        .Q(Rout2_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(En2_IBUF),
        .D(p_0_in[3]),
        .Q(Rout2_OBUF[3]),
        .R(1'b0));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \R2_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\R2_reg[3]_i_2_n_0 ,\NLW_R2_reg[3]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\R2[3]_i_3_n_0 ,\R2[3]_i_4_n_0 ,\R2[3]_i_5_n_0 ,1'b0}),
        .O(Sabout[3:0]),
        .S({\R2[3]_i_6_n_0 ,\R2[3]_i_7_n_0 ,\R2[3]_i_8_n_0 ,\R2[3]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(En2_IBUF),
        .D(p_0_in[4]),
        .Q(Rout2_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(En2_IBUF),
        .D(p_0_in[5]),
        .Q(Rout2_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(En2_IBUF),
        .D(p_0_in[6]),
        .Q(Rout2_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(En2_IBUF),
        .D(p_0_in[7]),
        .Q(Rout2_OBUF[7]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \R2_reg[7]_i_2 
       (.CI(\R2_reg[3]_i_2_n_0 ),
        .CO(\NLW_R2_reg[7]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\R2[7]_i_5_n_0 ,\R2[7]_i_6_n_0 ,\R2[7]_i_7_n_0 }),
        .O(Sabout[7:4]),
        .S({\R2[7]_i_8_n_0 ,\R2[7]_i_9_n_0 ,\R2[7]_i_10_n_0 ,\R2[7]_i_11_n_0 }));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[7]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(En2_IBUF),
        .D(p_0_in[7]),
        .Q(\R2_reg[7]_lopt_replica_1 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h09F9)) 
    \R3[0]_i_1 
       (.I0(Rout1_OBUF[0]),
        .I1(Skr1_IBUF),
        .I2(Sb_IBUF),
        .I3(Rout3_OBUF[0]),
        .O(plusOp[0]));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \R3[1]_i_1 
       (.I0(Rout1_OBUF[0]),
        .I1(Rout3_OBUF[0]),
        .I2(Rout1_OBUF[1]),
        .I3(Sb_IBUF),
        .I4(Rout3_OBUF[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h5596AA96)) 
    \R3[2]_i_1 
       (.I0(\R3[6]_i_4_n_0 ),
        .I1(Rout1_OBUF[2]),
        .I2(Skr1_IBUF),
        .I3(Sb_IBUF),
        .I4(Rout3_OBUF[2]),
        .O(plusOp[2]));
  LUT6 #(
    .INIT(64'h7447FFFF8BB80000)) 
    \R3[3]_i_1 
       (.I0(Rout3_OBUF[2]),
        .I1(Sb_IBUF),
        .I2(Skr1_IBUF),
        .I3(Rout1_OBUF[2]),
        .I4(\R3[6]_i_4_n_0 ),
        .I5(\R3[6]_i_3_n_0 ),
        .O(plusOp[3]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \R3[4]_i_1 
       (.I0(\R3[6]_i_3_n_0 ),
        .I1(\R3[6]_i_4_n_0 ),
        .I2(\R3[6]_i_5_n_0 ),
        .I3(\R3[6]_i_6_n_0 ),
        .O(plusOp[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \R3[5]_i_1 
       (.I0(\R3[6]_i_6_n_0 ),
        .I1(\R3[6]_i_5_n_0 ),
        .I2(\R3[6]_i_4_n_0 ),
        .I3(\R3[6]_i_3_n_0 ),
        .I4(\R3[6]_i_2_n_0 ),
        .O(plusOp[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \R3[6]_i_1 
       (.I0(\R3[6]_i_2_n_0 ),
        .I1(\R3[6]_i_3_n_0 ),
        .I2(\R3[6]_i_4_n_0 ),
        .I3(\R3[6]_i_5_n_0 ),
        .I4(\R3[6]_i_6_n_0 ),
        .I5(\R3[7]_i_2_n_0 ),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \R3[6]_i_2 
       (.I0(Rout3_OBUF[5]),
        .I1(Sb_IBUF),
        .I2(Skr1_IBUF),
        .I3(Rout1_OBUF[5]),
        .O(\R3[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \R3[6]_i_3 
       (.I0(Rout3_OBUF[3]),
        .I1(Sb_IBUF),
        .I2(Skr1_IBUF),
        .I3(Rout1_OBUF[3]),
        .O(\R3[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC05A0000005A0)) 
    \R3[6]_i_4 
       (.I0(Rout1_OBUF[0]),
        .I1(Rout3_OBUF[0]),
        .I2(Rout1_OBUF[1]),
        .I3(Skr1_IBUF),
        .I4(Sb_IBUF),
        .I5(Rout3_OBUF[1]),
        .O(\R3[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \R3[6]_i_5 
       (.I0(Rout3_OBUF[2]),
        .I1(Sb_IBUF),
        .I2(Skr1_IBUF),
        .I3(Rout1_OBUF[2]),
        .O(\R3[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \R3[6]_i_6 
       (.I0(Rout3_OBUF[4]),
        .I1(Sb_IBUF),
        .I2(Skr1_IBUF),
        .I3(Rout1_OBUF[4]),
        .O(\R3[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7777877888888778)) 
    \R3[7]_i_1 
       (.I0(\R3[7]_i_2_n_0 ),
        .I1(\R3[7]_i_3_n_0 ),
        .I2(Skr1_IBUF),
        .I3(Rout1_OBUF[7]),
        .I4(Sb_IBUF),
        .I5(Rout3_OBUF[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \R3[7]_i_2 
       (.I0(Rout3_OBUF[6]),
        .I1(Sb_IBUF),
        .I2(Skr1_IBUF),
        .I3(Rout1_OBUF[6]),
        .O(\R3[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \R3[7]_i_3 
       (.I0(\R3[6]_i_6_n_0 ),
        .I1(\R3[6]_i_5_n_0 ),
        .I2(\R3[6]_i_4_n_0 ),
        .I3(\R3[6]_i_3_n_0 ),
        .I4(\R3[6]_i_2_n_0 ),
        .O(\R3[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(En3_IBUF),
        .D(plusOp[0]),
        .Q(Rout3_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(En3_IBUF),
        .D(plusOp[1]),
        .Q(Rout3_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(En3_IBUF),
        .D(plusOp[2]),
        .Q(Rout3_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(En3_IBUF),
        .D(plusOp[3]),
        .Q(Rout3_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(En3_IBUF),
        .D(plusOp[4]),
        .Q(Rout3_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(En3_IBUF),
        .D(plusOp[5]),
        .Q(Rout3_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(En3_IBUF),
        .D(plusOp[6]),
        .Q(Rout3_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(En3_IBUF),
        .D(plusOp[7]),
        .Q(Rout3_OBUF[7]),
        .R(1'b0));
  OBUF \Rout1_OBUF[0]_inst 
       (.I(Rout1_OBUF[0]),
        .O(Rout1[0]));
  OBUF \Rout1_OBUF[1]_inst 
       (.I(Rout1_OBUF[1]),
        .O(Rout1[1]));
  OBUF \Rout1_OBUF[2]_inst 
       (.I(Rout1_OBUF[2]),
        .O(Rout1[2]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \Rout1_OBUF[3]_inst 
       (.I(\R1_reg[3]_lopt_replica_1 ),
        .O(Rout1[3]));
  OBUF \Rout1_OBUF[4]_inst 
       (.I(Rout1_OBUF[4]),
        .O(Rout1[4]));
  OBUF \Rout1_OBUF[5]_inst 
       (.I(Rout1_OBUF[5]),
        .O(Rout1[5]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \Rout1_OBUF[6]_inst 
       (.I(\R1_reg[6]_lopt_replica_1 ),
        .O(Rout1[6]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \Rout1_OBUF[7]_inst 
       (.I(\R1_reg[7]_lopt_replica_1 ),
        .O(Rout1[7]));
  OBUF \Rout2_OBUF[0]_inst 
       (.I(Rout2_OBUF[0]),
        .O(Rout2[0]));
  OBUF \Rout2_OBUF[1]_inst 
       (.I(Rout2_OBUF[1]),
        .O(Rout2[1]));
  OBUF \Rout2_OBUF[2]_inst 
       (.I(Rout2_OBUF[2]),
        .O(Rout2[2]));
  OBUF \Rout2_OBUF[3]_inst 
       (.I(Rout2_OBUF[3]),
        .O(Rout2[3]));
  OBUF \Rout2_OBUF[4]_inst 
       (.I(Rout2_OBUF[4]),
        .O(Rout2[4]));
  OBUF \Rout2_OBUF[5]_inst 
       (.I(Rout2_OBUF[5]),
        .O(Rout2[5]));
  OBUF \Rout2_OBUF[6]_inst 
       (.I(Rout2_OBUF[6]),
        .O(Rout2[6]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \Rout2_OBUF[7]_inst 
       (.I(\R2_reg[7]_lopt_replica_1 ),
        .O(Rout2[7]));
  OBUF \Rout3_OBUF[0]_inst 
       (.I(Rout3_OBUF[0]),
        .O(Rout3[0]));
  OBUF \Rout3_OBUF[1]_inst 
       (.I(Rout3_OBUF[1]),
        .O(Rout3[1]));
  OBUF \Rout3_OBUF[2]_inst 
       (.I(Rout3_OBUF[2]),
        .O(Rout3[2]));
  OBUF \Rout3_OBUF[3]_inst 
       (.I(Rout3_OBUF[3]),
        .O(Rout3[3]));
  OBUF \Rout3_OBUF[4]_inst 
       (.I(Rout3_OBUF[4]),
        .O(Rout3[4]));
  OBUF \Rout3_OBUF[5]_inst 
       (.I(Rout3_OBUF[5]),
        .O(Rout3[5]));
  OBUF \Rout3_OBUF[6]_inst 
       (.I(Rout3_OBUF[6]),
        .O(Rout3[6]));
  OBUF \Rout3_OBUF[7]_inst 
       (.I(Rout3_OBUF[7]),
        .O(Rout3[7]));
  IBUF S1_IBUF_inst
       (.I(S1),
        .O(S1_IBUF));
  IBUF \S2_IBUF[0]_inst 
       (.I(S2[0]),
        .O(S2_IBUF[0]));
  IBUF \S2_IBUF[1]_inst 
       (.I(S2[1]),
        .O(S2_IBUF[1]));
  IBUF Sa_IBUF_inst
       (.I(Sa),
        .O(Sa_IBUF));
  IBUF Sb_IBUF_inst
       (.I(Sb),
        .O(Sb_IBUF));
  IBUF Skr1_IBUF_inst
       (.I(Skr1),
        .O(Skr1_IBUF));
  IBUF Skr2_IBUF_inst
       (.I(Skr2),
        .O(Skr2_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
