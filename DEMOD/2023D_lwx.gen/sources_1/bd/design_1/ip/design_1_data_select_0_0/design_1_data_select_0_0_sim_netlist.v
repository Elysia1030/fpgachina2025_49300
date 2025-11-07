// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri Nov  7 16:10:23 2025
// Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/elysia/Software/Xilinx/Project/11-6V3/2023D_lwx.gen/sources_1/bd/design_1/ip/design_1_data_select_0_0/design_1_data_select_0_0_sim_netlist.v
// Design      : design_1_data_select_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_data_select_0_0,data_select,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "data_select,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_data_select_0_0
   (clk,
    rst_n,
    SELE,
    AM_data,
    FM_data,
    PSK_data,
    DAC_data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [15:0]SELE;
  input [15:0]AM_data;
  input [15:0]FM_data;
  input [15:0]PSK_data;
  output [15:0]DAC_data;

  wire [15:0]AM_data;
  wire [15:0]DAC_data;
  wire [15:0]FM_data;
  wire [15:0]PSK_data;
  wire [15:0]SELE;
  wire clk;
  wire rst_n;

  design_1_data_select_0_0_data_select inst
       (.AM_data(AM_data),
        .DAC_data(DAC_data),
        .FM_data(FM_data),
        .PSK_data(PSK_data),
        .SELE(SELE),
        .clk(clk),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "data_select" *) 
module design_1_data_select_0_0_data_select
   (DAC_data,
    FM_data,
    clk,
    AM_data,
    PSK_data,
    SELE,
    rst_n);
  output [15:0]DAC_data;
  input [15:0]FM_data;
  input clk;
  input [15:0]AM_data;
  input [15:0]PSK_data;
  input [15:0]SELE;
  input rst_n;

  wire [15:0]AM_data;
  wire [15:0]DAC_data;
  wire DAC_data1;
  wire DAC_data10_in;
  wire DAC_data1_carry_i_1_n_0;
  wire DAC_data1_carry_i_2_n_0;
  wire DAC_data1_carry_i_3_n_0;
  wire DAC_data1_carry_i_4_n_0;
  wire DAC_data1_carry_i_5_n_0;
  wire DAC_data1_carry_i_6_n_0;
  wire DAC_data1_carry_n_1;
  wire DAC_data1_carry_n_2;
  wire DAC_data1_carry_n_3;
  wire \DAC_data1_inferred__0/i__carry_n_1 ;
  wire \DAC_data1_inferred__0/i__carry_n_2 ;
  wire \DAC_data1_inferred__0/i__carry_n_3 ;
  wire \DAC_data[0]_i_2_n_0 ;
  wire \DAC_data[10]_i_2_n_0 ;
  wire \DAC_data[11]_i_2_n_0 ;
  wire \DAC_data[12]_i_2_n_0 ;
  wire \DAC_data[13]_i_2_n_0 ;
  wire \DAC_data[14]_i_2_n_0 ;
  wire \DAC_data[15]_i_1_n_0 ;
  wire \DAC_data[15]_i_3_n_0 ;
  wire \DAC_data[15]_i_4_n_0 ;
  wire \DAC_data[15]_i_5_n_0 ;
  wire \DAC_data[15]_i_7_n_0 ;
  wire \DAC_data[15]_i_8_n_0 ;
  wire \DAC_data[1]_i_2_n_0 ;
  wire \DAC_data[2]_i_2_n_0 ;
  wire \DAC_data[3]_i_2_n_0 ;
  wire \DAC_data[4]_i_2_n_0 ;
  wire \DAC_data[5]_i_2_n_0 ;
  wire \DAC_data[6]_i_2_n_0 ;
  wire \DAC_data[7]_i_2_n_0 ;
  wire \DAC_data[8]_i_2_n_0 ;
  wire \DAC_data[9]_i_2_n_0 ;
  wire [15:0]FM_data;
  wire [15:0]PSK_data;
  wire [15:0]SELE;
  wire clk;
  wire fm_multiplied_result_n_100;
  wire fm_multiplied_result_n_101;
  wire fm_multiplied_result_n_102;
  wire fm_multiplied_result_n_103;
  wire fm_multiplied_result_n_104;
  wire fm_multiplied_result_n_105;
  wire fm_multiplied_result_n_84;
  wire fm_multiplied_result_n_85;
  wire fm_multiplied_result_n_86;
  wire fm_multiplied_result_n_87;
  wire fm_multiplied_result_n_88;
  wire fm_multiplied_result_n_89;
  wire fm_multiplied_result_n_90;
  wire fm_multiplied_result_n_91;
  wire fm_multiplied_result_n_92;
  wire fm_multiplied_result_n_93;
  wire fm_multiplied_result_n_94;
  wire fm_multiplied_result_n_95;
  wire fm_multiplied_result_n_96;
  wire fm_multiplied_result_n_97;
  wire fm_multiplied_result_n_98;
  wire fm_multiplied_result_n_99;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire p_0_in;
  wire [15:0]p_1_in;
  wire rst_n;
  wire [3:0]NLW_DAC_data1_carry_O_UNCONNECTED;
  wire [3:0]\NLW_DAC_data1_inferred__0/i__carry_O_UNCONNECTED ;
  wire NLW_fm_multiplied_result_CARRYCASCOUT_UNCONNECTED;
  wire NLW_fm_multiplied_result_MULTSIGNOUT_UNCONNECTED;
  wire NLW_fm_multiplied_result_OVERFLOW_UNCONNECTED;
  wire NLW_fm_multiplied_result_PATTERNBDETECT_UNCONNECTED;
  wire NLW_fm_multiplied_result_PATTERNDETECT_UNCONNECTED;
  wire NLW_fm_multiplied_result_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_fm_multiplied_result_ACOUT_UNCONNECTED;
  wire [17:0]NLW_fm_multiplied_result_BCOUT_UNCONNECTED;
  wire [3:0]NLW_fm_multiplied_result_CARRYOUT_UNCONNECTED;
  wire [47:22]NLW_fm_multiplied_result_P_UNCONNECTED;
  wire [47:0]NLW_fm_multiplied_result_PCOUT_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 DAC_data1_carry
       (.CI(1'b0),
        .CO({DAC_data1,DAC_data1_carry_n_1,DAC_data1_carry_n_2,DAC_data1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,DAC_data1_carry_i_1_n_0,DAC_data1_carry_i_2_n_0,DAC_data1_carry_i_3_n_0}),
        .O(NLW_DAC_data1_carry_O_UNCONNECTED[3:0]),
        .S({fm_multiplied_result_n_85,DAC_data1_carry_i_4_n_0,DAC_data1_carry_i_5_n_0,DAC_data1_carry_i_6_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    DAC_data1_carry_i_1
       (.I0(fm_multiplied_result_n_87),
        .I1(fm_multiplied_result_n_86),
        .O(DAC_data1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    DAC_data1_carry_i_2
       (.I0(fm_multiplied_result_n_89),
        .I1(fm_multiplied_result_n_88),
        .O(DAC_data1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    DAC_data1_carry_i_3
       (.I0(fm_multiplied_result_n_90),
        .O(DAC_data1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    DAC_data1_carry_i_4
       (.I0(fm_multiplied_result_n_87),
        .I1(fm_multiplied_result_n_86),
        .O(DAC_data1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    DAC_data1_carry_i_5
       (.I0(fm_multiplied_result_n_89),
        .I1(fm_multiplied_result_n_88),
        .O(DAC_data1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    DAC_data1_carry_i_6
       (.I0(fm_multiplied_result_n_90),
        .I1(fm_multiplied_result_n_91),
        .O(DAC_data1_carry_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \DAC_data1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({DAC_data10_in,\DAC_data1_inferred__0/i__carry_n_1 ,\DAC_data1_inferred__0/i__carry_n_2 ,\DAC_data1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_1_n_0,i__carry_i_2_n_0,fm_multiplied_result_n_90}),
        .O(\NLW_DAC_data1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0}));
  LUT6 #(
    .INIT(64'hAAAAAAAAB8FFB800)) 
    \DAC_data[0]_i_1 
       (.I0(AM_data[0]),
        .I1(\DAC_data[15]_i_3_n_0 ),
        .I2(PSK_data[0]),
        .I3(\DAC_data[15]_i_4_n_0 ),
        .I4(\DAC_data[0]_i_2_n_0 ),
        .I5(p_0_in),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \DAC_data[0]_i_2 
       (.I0(SELE[4]),
        .I1(fm_multiplied_result_n_105),
        .I2(DAC_data1),
        .I3(DAC_data10_in),
        .O(\DAC_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAB8FFB800)) 
    \DAC_data[10]_i_1 
       (.I0(AM_data[10]),
        .I1(\DAC_data[15]_i_3_n_0 ),
        .I2(PSK_data[10]),
        .I3(\DAC_data[15]_i_4_n_0 ),
        .I4(\DAC_data[10]_i_2_n_0 ),
        .I5(p_0_in),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \DAC_data[10]_i_2 
       (.I0(SELE[4]),
        .I1(fm_multiplied_result_n_95),
        .I2(DAC_data1),
        .I3(DAC_data10_in),
        .O(\DAC_data[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAB8FFB800)) 
    \DAC_data[11]_i_1 
       (.I0(AM_data[11]),
        .I1(\DAC_data[15]_i_3_n_0 ),
        .I2(PSK_data[11]),
        .I3(\DAC_data[15]_i_4_n_0 ),
        .I4(\DAC_data[11]_i_2_n_0 ),
        .I5(p_0_in),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \DAC_data[11]_i_2 
       (.I0(SELE[4]),
        .I1(fm_multiplied_result_n_94),
        .I2(DAC_data1),
        .I3(DAC_data10_in),
        .O(\DAC_data[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAB8FFB800)) 
    \DAC_data[12]_i_1 
       (.I0(AM_data[12]),
        .I1(\DAC_data[15]_i_3_n_0 ),
        .I2(PSK_data[12]),
        .I3(\DAC_data[15]_i_4_n_0 ),
        .I4(\DAC_data[12]_i_2_n_0 ),
        .I5(p_0_in),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \DAC_data[12]_i_2 
       (.I0(SELE[4]),
        .I1(fm_multiplied_result_n_93),
        .I2(DAC_data1),
        .I3(DAC_data10_in),
        .O(\DAC_data[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAB8FFB800)) 
    \DAC_data[13]_i_1 
       (.I0(AM_data[13]),
        .I1(\DAC_data[15]_i_3_n_0 ),
        .I2(PSK_data[13]),
        .I3(\DAC_data[15]_i_4_n_0 ),
        .I4(\DAC_data[13]_i_2_n_0 ),
        .I5(p_0_in),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \DAC_data[13]_i_2 
       (.I0(SELE[4]),
        .I1(fm_multiplied_result_n_92),
        .I2(DAC_data1),
        .I3(DAC_data10_in),
        .O(\DAC_data[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAB8FFB800)) 
    \DAC_data[14]_i_1 
       (.I0(AM_data[14]),
        .I1(\DAC_data[15]_i_3_n_0 ),
        .I2(PSK_data[14]),
        .I3(\DAC_data[15]_i_4_n_0 ),
        .I4(\DAC_data[14]_i_2_n_0 ),
        .I5(p_0_in),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \DAC_data[14]_i_2 
       (.I0(SELE[4]),
        .I1(fm_multiplied_result_n_91),
        .I2(DAC_data1),
        .I3(DAC_data10_in),
        .O(\DAC_data[14]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \DAC_data[15]_i_1 
       (.I0(rst_n),
        .O(\DAC_data[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAB8FFB800)) 
    \DAC_data[15]_i_2 
       (.I0(AM_data[15]),
        .I1(\DAC_data[15]_i_3_n_0 ),
        .I2(PSK_data[15]),
        .I3(\DAC_data[15]_i_4_n_0 ),
        .I4(\DAC_data[15]_i_5_n_0 ),
        .I5(p_0_in),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \DAC_data[15]_i_3 
       (.I0(SELE[4]),
        .I1(SELE[3]),
        .I2(SELE[1]),
        .I3(SELE[2]),
        .O(\DAC_data[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \DAC_data[15]_i_4 
       (.I0(SELE[3]),
        .I1(SELE[2]),
        .I2(SELE[0]),
        .I3(SELE[1]),
        .O(\DAC_data[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2220)) 
    \DAC_data[15]_i_5 
       (.I0(SELE[4]),
        .I1(DAC_data10_in),
        .I2(DAC_data1),
        .I3(fm_multiplied_result_n_90),
        .O(\DAC_data[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \DAC_data[15]_i_6 
       (.I0(SELE[14]),
        .I1(SELE[13]),
        .I2(SELE[15]),
        .I3(\DAC_data[15]_i_7_n_0 ),
        .I4(\DAC_data[15]_i_8_n_0 ),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \DAC_data[15]_i_7 
       (.I0(SELE[7]),
        .I1(SELE[8]),
        .I2(SELE[5]),
        .I3(SELE[6]),
        .O(\DAC_data[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \DAC_data[15]_i_8 
       (.I0(SELE[11]),
        .I1(SELE[12]),
        .I2(SELE[9]),
        .I3(SELE[10]),
        .O(\DAC_data[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAB8FFB800)) 
    \DAC_data[1]_i_1 
       (.I0(AM_data[1]),
        .I1(\DAC_data[15]_i_3_n_0 ),
        .I2(PSK_data[1]),
        .I3(\DAC_data[15]_i_4_n_0 ),
        .I4(\DAC_data[1]_i_2_n_0 ),
        .I5(p_0_in),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \DAC_data[1]_i_2 
       (.I0(SELE[4]),
        .I1(fm_multiplied_result_n_104),
        .I2(DAC_data1),
        .I3(DAC_data10_in),
        .O(\DAC_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAB8FFB800)) 
    \DAC_data[2]_i_1 
       (.I0(AM_data[2]),
        .I1(\DAC_data[15]_i_3_n_0 ),
        .I2(PSK_data[2]),
        .I3(\DAC_data[15]_i_4_n_0 ),
        .I4(\DAC_data[2]_i_2_n_0 ),
        .I5(p_0_in),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \DAC_data[2]_i_2 
       (.I0(SELE[4]),
        .I1(fm_multiplied_result_n_103),
        .I2(DAC_data1),
        .I3(DAC_data10_in),
        .O(\DAC_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAB8FFB800)) 
    \DAC_data[3]_i_1 
       (.I0(AM_data[3]),
        .I1(\DAC_data[15]_i_3_n_0 ),
        .I2(PSK_data[3]),
        .I3(\DAC_data[15]_i_4_n_0 ),
        .I4(\DAC_data[3]_i_2_n_0 ),
        .I5(p_0_in),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \DAC_data[3]_i_2 
       (.I0(SELE[4]),
        .I1(fm_multiplied_result_n_102),
        .I2(DAC_data1),
        .I3(DAC_data10_in),
        .O(\DAC_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAB8FFB800)) 
    \DAC_data[4]_i_1 
       (.I0(AM_data[4]),
        .I1(\DAC_data[15]_i_3_n_0 ),
        .I2(PSK_data[4]),
        .I3(\DAC_data[15]_i_4_n_0 ),
        .I4(\DAC_data[4]_i_2_n_0 ),
        .I5(p_0_in),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \DAC_data[4]_i_2 
       (.I0(SELE[4]),
        .I1(fm_multiplied_result_n_101),
        .I2(DAC_data1),
        .I3(DAC_data10_in),
        .O(\DAC_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAB8FFB800)) 
    \DAC_data[5]_i_1 
       (.I0(AM_data[5]),
        .I1(\DAC_data[15]_i_3_n_0 ),
        .I2(PSK_data[5]),
        .I3(\DAC_data[15]_i_4_n_0 ),
        .I4(\DAC_data[5]_i_2_n_0 ),
        .I5(p_0_in),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \DAC_data[5]_i_2 
       (.I0(SELE[4]),
        .I1(fm_multiplied_result_n_100),
        .I2(DAC_data1),
        .I3(DAC_data10_in),
        .O(\DAC_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAB8FFB800)) 
    \DAC_data[6]_i_1 
       (.I0(AM_data[6]),
        .I1(\DAC_data[15]_i_3_n_0 ),
        .I2(PSK_data[6]),
        .I3(\DAC_data[15]_i_4_n_0 ),
        .I4(\DAC_data[6]_i_2_n_0 ),
        .I5(p_0_in),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \DAC_data[6]_i_2 
       (.I0(SELE[4]),
        .I1(fm_multiplied_result_n_99),
        .I2(DAC_data1),
        .I3(DAC_data10_in),
        .O(\DAC_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAB8FFB800)) 
    \DAC_data[7]_i_1 
       (.I0(AM_data[7]),
        .I1(\DAC_data[15]_i_3_n_0 ),
        .I2(PSK_data[7]),
        .I3(\DAC_data[15]_i_4_n_0 ),
        .I4(\DAC_data[7]_i_2_n_0 ),
        .I5(p_0_in),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \DAC_data[7]_i_2 
       (.I0(SELE[4]),
        .I1(fm_multiplied_result_n_98),
        .I2(DAC_data1),
        .I3(DAC_data10_in),
        .O(\DAC_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAB8FFB800)) 
    \DAC_data[8]_i_1 
       (.I0(AM_data[8]),
        .I1(\DAC_data[15]_i_3_n_0 ),
        .I2(PSK_data[8]),
        .I3(\DAC_data[15]_i_4_n_0 ),
        .I4(\DAC_data[8]_i_2_n_0 ),
        .I5(p_0_in),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \DAC_data[8]_i_2 
       (.I0(SELE[4]),
        .I1(fm_multiplied_result_n_97),
        .I2(DAC_data1),
        .I3(DAC_data10_in),
        .O(\DAC_data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAB8FFB800)) 
    \DAC_data[9]_i_1 
       (.I0(AM_data[9]),
        .I1(\DAC_data[15]_i_3_n_0 ),
        .I2(PSK_data[9]),
        .I3(\DAC_data[15]_i_4_n_0 ),
        .I4(\DAC_data[9]_i_2_n_0 ),
        .I5(p_0_in),
        .O(p_1_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \DAC_data[9]_i_2 
       (.I0(SELE[4]),
        .I1(fm_multiplied_result_n_96),
        .I2(DAC_data1),
        .I3(DAC_data10_in),
        .O(\DAC_data[9]_i_2_n_0 ));
  FDRE \DAC_data_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(DAC_data[0]),
        .R(\DAC_data[15]_i_1_n_0 ));
  FDRE \DAC_data_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(DAC_data[10]),
        .R(\DAC_data[15]_i_1_n_0 ));
  FDRE \DAC_data_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(DAC_data[11]),
        .R(\DAC_data[15]_i_1_n_0 ));
  FDRE \DAC_data_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(DAC_data[12]),
        .R(\DAC_data[15]_i_1_n_0 ));
  FDRE \DAC_data_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(DAC_data[13]),
        .R(\DAC_data[15]_i_1_n_0 ));
  FDRE \DAC_data_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(DAC_data[14]),
        .R(\DAC_data[15]_i_1_n_0 ));
  FDRE \DAC_data_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(DAC_data[15]),
        .R(\DAC_data[15]_i_1_n_0 ));
  FDRE \DAC_data_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(DAC_data[1]),
        .R(\DAC_data[15]_i_1_n_0 ));
  FDRE \DAC_data_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(DAC_data[2]),
        .R(\DAC_data[15]_i_1_n_0 ));
  FDRE \DAC_data_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(DAC_data[3]),
        .R(\DAC_data[15]_i_1_n_0 ));
  FDRE \DAC_data_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(DAC_data[4]),
        .R(\DAC_data[15]_i_1_n_0 ));
  FDRE \DAC_data_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(DAC_data[5]),
        .R(\DAC_data[15]_i_1_n_0 ));
  FDRE \DAC_data_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(DAC_data[6]),
        .R(\DAC_data[15]_i_1_n_0 ));
  FDRE \DAC_data_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(DAC_data[7]),
        .R(\DAC_data[15]_i_1_n_0 ));
  FDRE \DAC_data_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(DAC_data[8]),
        .R(\DAC_data[15]_i_1_n_0 ));
  FDRE \DAC_data_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(DAC_data[9]),
        .R(\DAC_data[15]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    fm_multiplied_result
       (.A({FM_data[15],FM_data[15],FM_data[15],FM_data[15],FM_data[15],FM_data[15],FM_data[15],FM_data[15],FM_data[15],FM_data[15],FM_data[15],FM_data[15],FM_data[15],FM_data[15],FM_data}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_fm_multiplied_result_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_fm_multiplied_result_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_fm_multiplied_result_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_fm_multiplied_result_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_fm_multiplied_result_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_fm_multiplied_result_OVERFLOW_UNCONNECTED),
        .P({NLW_fm_multiplied_result_P_UNCONNECTED[47:22],fm_multiplied_result_n_84,fm_multiplied_result_n_85,fm_multiplied_result_n_86,fm_multiplied_result_n_87,fm_multiplied_result_n_88,fm_multiplied_result_n_89,fm_multiplied_result_n_90,fm_multiplied_result_n_91,fm_multiplied_result_n_92,fm_multiplied_result_n_93,fm_multiplied_result_n_94,fm_multiplied_result_n_95,fm_multiplied_result_n_96,fm_multiplied_result_n_97,fm_multiplied_result_n_98,fm_multiplied_result_n_99,fm_multiplied_result_n_100,fm_multiplied_result_n_101,fm_multiplied_result_n_102,fm_multiplied_result_n_103,fm_multiplied_result_n_104,fm_multiplied_result_n_105}),
        .PATTERNBDETECT(NLW_fm_multiplied_result_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_fm_multiplied_result_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_fm_multiplied_result_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_fm_multiplied_result_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1
       (.I0(fm_multiplied_result_n_87),
        .I1(fm_multiplied_result_n_86),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_2
       (.I0(fm_multiplied_result_n_89),
        .I1(fm_multiplied_result_n_88),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(fm_multiplied_result_n_85),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4
       (.I0(fm_multiplied_result_n_87),
        .I1(fm_multiplied_result_n_86),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_5
       (.I0(fm_multiplied_result_n_89),
        .I1(fm_multiplied_result_n_88),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_6
       (.I0(fm_multiplied_result_n_91),
        .I1(fm_multiplied_result_n_90),
        .O(i__carry_i_6_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
