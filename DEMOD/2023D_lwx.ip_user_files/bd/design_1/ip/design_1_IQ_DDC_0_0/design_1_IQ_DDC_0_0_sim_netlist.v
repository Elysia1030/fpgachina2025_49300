// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Thu Nov  6 16:33:59 2025
// Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/elysia/Software/Xilinx/Project/11-6/2023D_lwx.gen/sources_1/bd/design_1/ip/design_1_IQ_DDC_0_0/design_1_IQ_DDC_0_0_sim_netlist.v
// Design      : design_1_IQ_DDC_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_IQ_DDC_0_0,IQ_DDC,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "IQ_DDC,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_IQ_DDC_0_0
   (clk,
    rst_n,
    iq_data_in,
    iq_tvalid,
    i_band,
    q_band);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [15:0]iq_data_in;
  output iq_tvalid;
  output [15:0]i_band;
  output [15:0]q_band;

  wire clk;
  wire [15:0]i_band;
  wire [15:0]iq_data_in;
  wire iq_tvalid;
  wire [15:0]q_band;
  wire rst_n;

  (* PHASE_INC = "171798692" *) 
  design_1_IQ_DDC_0_0_IQ_DDC inst
       (.clk(clk),
        .i_band(i_band),
        .iq_data_in(iq_data_in),
        .iq_tvalid(iq_tvalid),
        .q_band(q_band),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "IQ_DDC" *) (* PHASE_INC = "171798692" *) 
module design_1_IQ_DDC_0_0_IQ_DDC
   (clk,
    rst_n,
    iq_data_in,
    iq_tvalid,
    i_band,
    q_band);
  input clk;
  input rst_n;
  input [15:0]iq_data_in;
  output iq_tvalid;
  output [15:0]i_band;
  output [15:0]q_band;

  wire [31:16]cic_out_i;
  wire [31:16]cic_out_q;
  wire cic_valid_q;
  wire clk;
  wire [15:0]i_band;
  wire [31:0]i_mixer__0;
  wire i_mixer_i_17_n_0;
  wire i_mixer_i_18_n_0;
  wire i_mixer_i_19_n_0;
  wire i_mixer_i_20_n_0;
  wire i_mixer_i_21_n_0;
  wire i_mixer_i_22_n_0;
  wire i_mixer_i_23_n_0;
  wire i_mixer_i_24_n_0;
  wire i_mixer_i_25_n_0;
  wire i_mixer_i_26_n_0;
  wire i_mixer_i_27_n_0;
  wire i_mixer_i_28_n_0;
  wire i_mixer_i_29_n_0;
  wire i_mixer_i_30_n_0;
  wire i_mixer_i_31_n_0;
  wire i_mixer_i_32_n_0;
  wire i_mixer_i_33_n_0;
  wire i_mixer_i_34_n_0;
  wire i_mixer_i_35_n_0;
  wire i_mixer_i_36_n_0;
  wire i_mixer_i_37_n_0;
  wire i_mixer_i_38_n_0;
  wire i_mixer_i_39_n_0;
  wire i_mixer_i_40_n_0;
  wire i_mixer_i_41_n_0;
  wire i_mixer_i_42_n_0;
  wire i_mixer_i_43_n_0;
  wire i_mixer_i_44_n_0;
  wire i_mixer_i_45_n_0;
  wire i_mixer_i_46_n_0;
  wire i_mixer_i_47_n_0;
  wire i_mixer_i_48_n_0;
  wire i_mixer_i_49_n_0;
  wire i_mixer_i_50_n_0;
  wire i_mixer_i_51_n_0;
  wire i_mixer_i_52_n_0;
  wire i_mixer_i_53_n_0;
  wire i_mixer_i_54_n_0;
  wire i_mixer_i_55_n_0;
  wire i_mixer_i_56_n_0;
  wire i_mixer_i_57_n_0;
  wire i_mixer_i_58_n_0;
  wire i_mixer_i_59_n_0;
  wire i_mixer_i_60_n_0;
  wire i_mixer_i_61_n_0;
  wire i_mixer_i_62_n_0;
  wire i_mixer_i_63_n_0;
  wire i_mixer_i_64_n_0;
  wire i_mixer_i_65_n_0;
  wire i_mixer_i_66_n_0;
  wire i_mixer_i_67_n_0;
  wire i_mixer_i_68_n_0;
  wire i_mixer_i_69_n_0;
  wire i_mixer_i_70_n_0;
  wire i_mixer_i_71_n_0;
  wire i_mixer_i_72_n_0;
  wire i_mixer_i_73_n_0;
  wire [15:0]iq_data_in;
  wire iq_tvalid;
  wire [15:0]p_0_out;
  wire \phase_accumulator[10]_i_2_n_0 ;
  wire \phase_accumulator[10]_i_3_n_0 ;
  wire \phase_accumulator[14]_i_2_n_0 ;
  wire \phase_accumulator[14]_i_3_n_0 ;
  wire \phase_accumulator[18]_i_2_n_0 ;
  wire \phase_accumulator[18]_i_3_n_0 ;
  wire \phase_accumulator[18]_i_4_n_0 ;
  wire \phase_accumulator[18]_i_5_n_0 ;
  wire \phase_accumulator[22]_i_2_n_0 ;
  wire \phase_accumulator[26]_i_2_n_0 ;
  wire \phase_accumulator[2]_i_2_n_0 ;
  wire \phase_accumulator[2]_i_3_n_0 ;
  wire \phase_accumulator[6]_i_2_n_0 ;
  wire \phase_accumulator_reg[10]_i_1_n_0 ;
  wire \phase_accumulator_reg[10]_i_1_n_1 ;
  wire \phase_accumulator_reg[10]_i_1_n_2 ;
  wire \phase_accumulator_reg[10]_i_1_n_3 ;
  wire \phase_accumulator_reg[10]_i_1_n_4 ;
  wire \phase_accumulator_reg[10]_i_1_n_5 ;
  wire \phase_accumulator_reg[10]_i_1_n_6 ;
  wire \phase_accumulator_reg[10]_i_1_n_7 ;
  wire \phase_accumulator_reg[14]_i_1_n_0 ;
  wire \phase_accumulator_reg[14]_i_1_n_1 ;
  wire \phase_accumulator_reg[14]_i_1_n_2 ;
  wire \phase_accumulator_reg[14]_i_1_n_3 ;
  wire \phase_accumulator_reg[14]_i_1_n_4 ;
  wire \phase_accumulator_reg[14]_i_1_n_5 ;
  wire \phase_accumulator_reg[14]_i_1_n_6 ;
  wire \phase_accumulator_reg[14]_i_1_n_7 ;
  wire \phase_accumulator_reg[18]_i_1_n_0 ;
  wire \phase_accumulator_reg[18]_i_1_n_1 ;
  wire \phase_accumulator_reg[18]_i_1_n_2 ;
  wire \phase_accumulator_reg[18]_i_1_n_3 ;
  wire \phase_accumulator_reg[18]_i_1_n_4 ;
  wire \phase_accumulator_reg[18]_i_1_n_5 ;
  wire \phase_accumulator_reg[18]_i_1_n_6 ;
  wire \phase_accumulator_reg[18]_i_1_n_7 ;
  wire \phase_accumulator_reg[22]_i_1_n_0 ;
  wire \phase_accumulator_reg[22]_i_1_n_1 ;
  wire \phase_accumulator_reg[22]_i_1_n_2 ;
  wire \phase_accumulator_reg[22]_i_1_n_3 ;
  wire \phase_accumulator_reg[22]_i_1_n_4 ;
  wire \phase_accumulator_reg[22]_i_1_n_5 ;
  wire \phase_accumulator_reg[22]_i_1_n_6 ;
  wire \phase_accumulator_reg[22]_i_1_n_7 ;
  wire \phase_accumulator_reg[26]_i_1_n_0 ;
  wire \phase_accumulator_reg[26]_i_1_n_1 ;
  wire \phase_accumulator_reg[26]_i_1_n_2 ;
  wire \phase_accumulator_reg[26]_i_1_n_3 ;
  wire \phase_accumulator_reg[26]_i_1_n_4 ;
  wire \phase_accumulator_reg[26]_i_1_n_5 ;
  wire \phase_accumulator_reg[26]_i_1_n_6 ;
  wire \phase_accumulator_reg[26]_i_1_n_7 ;
  wire \phase_accumulator_reg[2]_i_1_n_0 ;
  wire \phase_accumulator_reg[2]_i_1_n_1 ;
  wire \phase_accumulator_reg[2]_i_1_n_2 ;
  wire \phase_accumulator_reg[2]_i_1_n_3 ;
  wire \phase_accumulator_reg[2]_i_1_n_4 ;
  wire \phase_accumulator_reg[2]_i_1_n_5 ;
  wire \phase_accumulator_reg[2]_i_1_n_6 ;
  wire \phase_accumulator_reg[2]_i_1_n_7 ;
  wire \phase_accumulator_reg[30]_i_1_n_3 ;
  wire \phase_accumulator_reg[30]_i_1_n_6 ;
  wire \phase_accumulator_reg[30]_i_1_n_7 ;
  wire \phase_accumulator_reg[6]_i_1_n_0 ;
  wire \phase_accumulator_reg[6]_i_1_n_1 ;
  wire \phase_accumulator_reg[6]_i_1_n_2 ;
  wire \phase_accumulator_reg[6]_i_1_n_3 ;
  wire \phase_accumulator_reg[6]_i_1_n_4 ;
  wire \phase_accumulator_reg[6]_i_1_n_5 ;
  wire \phase_accumulator_reg[6]_i_1_n_6 ;
  wire \phase_accumulator_reg[6]_i_1_n_7 ;
  wire \phase_accumulator_reg_n_0_[10] ;
  wire \phase_accumulator_reg_n_0_[11] ;
  wire \phase_accumulator_reg_n_0_[12] ;
  wire \phase_accumulator_reg_n_0_[13] ;
  wire \phase_accumulator_reg_n_0_[14] ;
  wire \phase_accumulator_reg_n_0_[15] ;
  wire \phase_accumulator_reg_n_0_[16] ;
  wire \phase_accumulator_reg_n_0_[17] ;
  wire \phase_accumulator_reg_n_0_[18] ;
  wire \phase_accumulator_reg_n_0_[19] ;
  wire \phase_accumulator_reg_n_0_[20] ;
  wire \phase_accumulator_reg_n_0_[21] ;
  wire \phase_accumulator_reg_n_0_[22] ;
  wire \phase_accumulator_reg_n_0_[23] ;
  wire \phase_accumulator_reg_n_0_[2] ;
  wire \phase_accumulator_reg_n_0_[3] ;
  wire \phase_accumulator_reg_n_0_[4] ;
  wire \phase_accumulator_reg_n_0_[5] ;
  wire \phase_accumulator_reg_n_0_[6] ;
  wire \phase_accumulator_reg_n_0_[7] ;
  wire \phase_accumulator_reg_n_0_[8] ;
  wire \phase_accumulator_reg_n_0_[9] ;
  wire [15:0]q_band;
  wire [31:0]q_mixer__0;
  wire q_mixer_i_10_n_0;
  wire q_mixer_i_11_n_0;
  wire q_mixer_i_12_n_0;
  wire q_mixer_i_13_n_0;
  wire q_mixer_i_14_n_0;
  wire q_mixer_i_15_n_0;
  wire q_mixer_i_16_n_0;
  wire q_mixer_i_17_n_0;
  wire q_mixer_i_18_n_0;
  wire q_mixer_i_19_n_0;
  wire q_mixer_i_1_n_0;
  wire q_mixer_i_20_n_0;
  wire q_mixer_i_21_n_0;
  wire q_mixer_i_22_n_0;
  wire q_mixer_i_23_n_0;
  wire q_mixer_i_24_n_0;
  wire q_mixer_i_25_n_0;
  wire q_mixer_i_26_n_0;
  wire q_mixer_i_27_n_0;
  wire q_mixer_i_28_n_0;
  wire q_mixer_i_29_n_0;
  wire q_mixer_i_2_n_0;
  wire q_mixer_i_30_n_0;
  wire q_mixer_i_31_n_0;
  wire q_mixer_i_32_n_0;
  wire q_mixer_i_33_n_0;
  wire q_mixer_i_34_n_0;
  wire q_mixer_i_35_n_0;
  wire q_mixer_i_36_n_0;
  wire q_mixer_i_37_n_0;
  wire q_mixer_i_38_n_0;
  wire q_mixer_i_39_n_0;
  wire q_mixer_i_3_n_0;
  wire q_mixer_i_40_n_0;
  wire q_mixer_i_41_n_0;
  wire q_mixer_i_42_n_0;
  wire q_mixer_i_43_n_0;
  wire q_mixer_i_44_n_0;
  wire q_mixer_i_45_n_0;
  wire q_mixer_i_4_n_0;
  wire q_mixer_i_5_n_0;
  wire q_mixer_i_6_n_0;
  wire q_mixer_i_7_n_0;
  wire q_mixer_i_8_n_0;
  wire q_mixer_i_9_n_0;
  wire \r_out_i[15]_i_1_n_0 ;
  wire rst_n;
  wire [7:0]sel;
  wire NLW_cic_inst_i_s_axis_data_tready_UNCONNECTED;
  wire [15:0]NLW_cic_inst_i_m_axis_data_tdata_UNCONNECTED;
  wire NLW_cic_inst_q_s_axis_data_tready_UNCONNECTED;
  wire [15:0]NLW_cic_inst_q_m_axis_data_tdata_UNCONNECTED;
  wire NLW_i_mixer_CARRYCASCOUT_UNCONNECTED;
  wire NLW_i_mixer_MULTSIGNOUT_UNCONNECTED;
  wire NLW_i_mixer_OVERFLOW_UNCONNECTED;
  wire NLW_i_mixer_PATTERNBDETECT_UNCONNECTED;
  wire NLW_i_mixer_PATTERNDETECT_UNCONNECTED;
  wire NLW_i_mixer_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_i_mixer_ACOUT_UNCONNECTED;
  wire [17:0]NLW_i_mixer_BCOUT_UNCONNECTED;
  wire [3:0]NLW_i_mixer_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_i_mixer_P_UNCONNECTED;
  wire [47:0]NLW_i_mixer_PCOUT_UNCONNECTED;
  wire [3:1]\NLW_phase_accumulator_reg[30]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_phase_accumulator_reg[30]_i_1_O_UNCONNECTED ;
  wire NLW_q_mixer_CARRYCASCOUT_UNCONNECTED;
  wire NLW_q_mixer_MULTSIGNOUT_UNCONNECTED;
  wire NLW_q_mixer_OVERFLOW_UNCONNECTED;
  wire NLW_q_mixer_PATTERNBDETECT_UNCONNECTED;
  wire NLW_q_mixer_PATTERNDETECT_UNCONNECTED;
  wire NLW_q_mixer_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_q_mixer_ACOUT_UNCONNECTED;
  wire [17:0]NLW_q_mixer_BCOUT_UNCONNECTED;
  wire [3:0]NLW_q_mixer_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_q_mixer_P_UNCONNECTED;
  wire [47:0]NLW_q_mixer_PCOUT_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "cic_compiler_iq,cic_compiler_v4_0_20,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cic_compiler_v4_0_20,Vivado 2024.2" *) 
  design_1_IQ_DDC_0_0_cic_compiler_iq cic_inst_i
       (.aclk(clk),
        .aresetn(rst_n),
        .m_axis_data_tdata({cic_out_i,NLW_cic_inst_i_m_axis_data_tdata_UNCONNECTED[15:0]}),
        .m_axis_data_tvalid(iq_tvalid),
        .s_axis_data_tdata(i_mixer__0),
        .s_axis_data_tready(NLW_cic_inst_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(1'b1));
  (* CHECK_LICENSE_TYPE = "cic_compiler_iq,cic_compiler_v4_0_20,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cic_compiler_v4_0_20,Vivado 2024.2" *) 
  design_1_IQ_DDC_0_0_cic_compiler_iq_HD1 cic_inst_q
       (.aclk(clk),
        .aresetn(rst_n),
        .m_axis_data_tdata({cic_out_q,NLW_cic_inst_q_m_axis_data_tdata_UNCONNECTED[15:0]}),
        .m_axis_data_tvalid(cic_valid_q),
        .s_axis_data_tdata(q_mixer__0),
        .s_axis_data_tready(NLW_cic_inst_q_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(1'b1));
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
    i_mixer
       (.A({iq_data_in[15],iq_data_in[15],iq_data_in[15],iq_data_in[15],iq_data_in[15],iq_data_in[15],iq_data_in[15],iq_data_in[15],iq_data_in[15],iq_data_in[15],iq_data_in[15],iq_data_in[15],iq_data_in[15],iq_data_in[15],iq_data_in}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_i_mixer_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p_0_out[15],p_0_out[15],p_0_out}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_i_mixer_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_i_mixer_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_i_mixer_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_i_mixer_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_i_mixer_OVERFLOW_UNCONNECTED),
        .P({NLW_i_mixer_P_UNCONNECTED[47:32],i_mixer__0}),
        .PATTERNBDETECT(NLW_i_mixer_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_i_mixer_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_i_mixer_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_i_mixer_UNDERFLOW_UNCONNECTED));
  LUT6 #(
    .INIT(64'h0100FFFFFFFE0000)) 
    i_mixer_i_1
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(i_mixer_i_17_n_0),
        .I4(sel[6]),
        .I5(sel[7]),
        .O(p_0_out[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i_mixer_i_10
       (.I0(i_mixer_i_48_n_0),
        .I1(i_mixer_i_49_n_0),
        .I2(sel[5]),
        .I3(i_mixer_i_50_n_0),
        .I4(sel[6]),
        .I5(i_mixer_i_51_n_0),
        .O(p_0_out[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i_mixer_i_11
       (.I0(i_mixer_i_52_n_0),
        .I1(i_mixer_i_53_n_0),
        .I2(sel[5]),
        .I3(i_mixer_i_54_n_0),
        .I4(sel[6]),
        .I5(i_mixer_i_55_n_0),
        .O(p_0_out[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i_mixer_i_12
       (.I0(i_mixer_i_56_n_0),
        .I1(i_mixer_i_57_n_0),
        .I2(sel[5]),
        .I3(i_mixer_i_58_n_0),
        .I4(sel[6]),
        .I5(i_mixer_i_59_n_0),
        .O(p_0_out[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i_mixer_i_13
       (.I0(i_mixer_i_60_n_0),
        .I1(i_mixer_i_61_n_0),
        .I2(sel[5]),
        .I3(i_mixer_i_62_n_0),
        .I4(sel[6]),
        .I5(i_mixer_i_63_n_0),
        .O(p_0_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i_mixer_i_14
       (.I0(i_mixer_i_64_n_0),
        .I1(i_mixer_i_65_n_0),
        .I2(sel[5]),
        .I3(i_mixer_i_66_n_0),
        .I4(sel[6]),
        .I5(i_mixer_i_67_n_0),
        .O(p_0_out[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i_mixer_i_15
       (.I0(i_mixer_i_68_n_0),
        .I1(i_mixer_i_69_n_0),
        .I2(sel[5]),
        .I3(i_mixer_i_70_n_0),
        .I4(sel[6]),
        .I5(i_mixer_i_71_n_0),
        .O(p_0_out[1]));
  MUXF7 i_mixer_i_16
       (.I0(i_mixer_i_72_n_0),
        .I1(i_mixer_i_73_n_0),
        .O(p_0_out[0]),
        .S(sel[5]));
  LUT4 #(
    .INIT(16'h00FE)) 
    i_mixer_i_17
       (.I0(sel[0]),
        .I1(sel[2]),
        .I2(sel[1]),
        .I3(sel[7]),
        .O(i_mixer_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF80007FF)) 
    i_mixer_i_18
       (.I0(sel[1]),
        .I1(sel[0]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[7]),
        .O(i_mixer_i_18_n_0));
  LUT6 #(
    .INIT(64'hAA88888855777776)) 
    i_mixer_i_19
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(i_mixer_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFF0E0E00F004F4F)) 
    i_mixer_i_2
       (.I0(sel[4]),
        .I1(i_mixer_i_18_n_0),
        .I2(sel[5]),
        .I3(i_mixer_i_19_n_0),
        .I4(sel[6]),
        .I5(sel[7]),
        .O(p_0_out[14]));
  LUT6 #(
    .INIT(64'hFFFFFEEE00000111)) 
    i_mixer_i_20
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[1]),
        .I3(sel[0]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(i_mixer_i_20_n_0));
  LUT6 #(
    .INIT(64'hAABFDD55554022AA)) 
    i_mixer_i_21
       (.I0(sel[4]),
        .I1(sel[1]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[3]),
        .I5(sel[7]),
        .O(i_mixer_i_21_n_0));
  LUT6 #(
    .INIT(64'h44626622BB9D99DC)) 
    i_mixer_i_22
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(i_mixer_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80007FFF)) 
    i_mixer_i_23
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .I4(sel[7]),
        .O(i_mixer_i_23_n_0));
  LUT6 #(
    .INIT(64'hEEEEABBB11115444)) 
    i_mixer_i_24
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[1]),
        .I3(sel[0]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(i_mixer_i_24_n_0));
  LUT6 #(
    .INIT(64'h99BAA6646645599B)) 
    i_mixer_i_25
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(i_mixer_i_25_n_0));
  LUT6 #(
    .INIT(64'h9926AA6666D95598)) 
    i_mixer_i_26
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(i_mixer_i_26_n_0));
  LUT6 #(
    .INIT(64'h5EAA0000A155FFFF)) 
    i_mixer_i_27
       (.I0(sel[3]),
        .I1(sel[0]),
        .I2(sel[1]),
        .I3(sel[2]),
        .I4(sel[4]),
        .I5(sel[7]),
        .O(i_mixer_i_27_n_0));
  LUT6 #(
    .INIT(64'hBAAAEDFD45551202)) 
    i_mixer_i_28
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[1]),
        .I3(sel[0]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(i_mixer_i_28_n_0));
  LUT6 #(
    .INIT(64'hCC1D33E223C6DC39)) 
    i_mixer_i_29
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(i_mixer_i_29_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i_mixer_i_3
       (.I0(i_mixer_i_20_n_0),
        .I1(i_mixer_i_21_n_0),
        .I2(sel[5]),
        .I3(i_mixer_i_22_n_0),
        .I4(sel[6]),
        .I5(i_mixer_i_23_n_0),
        .O(p_0_out[13]));
  LUT6 #(
    .INIT(64'hC4BC73C43B438C3A)) 
    i_mixer_i_30
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(i_mixer_i_30_n_0));
  LUT6 #(
    .INIT(64'h68280A2A97D7F5D5)) 
    i_mixer_i_31
       (.I0(sel[4]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[0]),
        .I4(sel[3]),
        .I5(sel[7]),
        .O(i_mixer_i_31_n_0));
  LUT6 #(
    .INIT(64'hF8BD0742B7A2485D)) 
    i_mixer_i_32
       (.I0(sel[4]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(i_mixer_i_32_n_0));
  LUT6 #(
    .INIT(64'hD30E2CF1E11B1EE4)) 
    i_mixer_i_33
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[2]),
        .I3(sel[0]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(i_mixer_i_33_n_0));
  LUT6 #(
    .INIT(64'h788F37488770C8B6)) 
    i_mixer_i_34
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(i_mixer_i_34_n_0));
  LUT6 #(
    .INIT(64'h37620288C89DFD77)) 
    i_mixer_i_35
       (.I0(sel[4]),
        .I1(sel[1]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[3]),
        .I5(sel[7]),
        .O(i_mixer_i_35_n_0));
  LUT6 #(
    .INIT(64'hBE0AE95F41F516A0)) 
    i_mixer_i_36
       (.I0(sel[4]),
        .I1(sel[2]),
        .I2(sel[1]),
        .I3(sel[3]),
        .I4(sel[0]),
        .I5(sel[7]),
        .O(i_mixer_i_36_n_0));
  LUT6 #(
    .INIT(64'h3125CEDACFDA3025)) 
    i_mixer_i_37
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(i_mixer_i_37_n_0));
  LUT6 #(
    .INIT(64'h45C7B038BA384FC6)) 
    i_mixer_i_38
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(i_mixer_i_38_n_0));
  LUT6 #(
    .INIT(64'h9C9DA20863625DF7)) 
    i_mixer_i_39
       (.I0(sel[4]),
        .I1(sel[0]),
        .I2(sel[1]),
        .I3(sel[2]),
        .I4(sel[3]),
        .I5(sel[7]),
        .O(i_mixer_i_39_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i_mixer_i_4
       (.I0(i_mixer_i_24_n_0),
        .I1(i_mixer_i_25_n_0),
        .I2(sel[5]),
        .I3(i_mixer_i_26_n_0),
        .I4(sel[6]),
        .I5(i_mixer_i_27_n_0),
        .O(p_0_out[12]));
  LUT6 #(
    .INIT(64'hEFB040C0104FBF3F)) 
    i_mixer_i_40
       (.I0(sel[2]),
        .I1(sel[0]),
        .I2(sel[4]),
        .I3(sel[1]),
        .I4(sel[3]),
        .I5(sel[7]),
        .O(i_mixer_i_40_n_0));
  LUT6 #(
    .INIT(64'h2D28D2D73C7BC384)) 
    i_mixer_i_41
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(i_mixer_i_41_n_0));
  LUT6 #(
    .INIT(64'h1E34BCB8E1CB4346)) 
    i_mixer_i_42
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(i_mixer_i_42_n_0));
  LUT6 #(
    .INIT(64'hBDB2B8E2424D471D)) 
    i_mixer_i_43
       (.I0(sel[4]),
        .I1(sel[0]),
        .I2(sel[3]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(i_mixer_i_43_n_0));
  LUT6 #(
    .INIT(64'hB392DF554C6D20AA)) 
    i_mixer_i_44
       (.I0(sel[4]),
        .I1(sel[0]),
        .I2(sel[2]),
        .I3(sel[1]),
        .I4(sel[3]),
        .I5(sel[7]),
        .O(i_mixer_i_44_n_0));
  LUT6 #(
    .INIT(64'hAAB76724554898DB)) 
    i_mixer_i_45
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[1]),
        .I3(sel[0]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(i_mixer_i_45_n_0));
  LUT6 #(
    .INIT(64'h1BA291A6E45D6E58)) 
    i_mixer_i_46
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(i_mixer_i_46_n_0));
  LUT6 #(
    .INIT(64'h7035642A8FCA9BD5)) 
    i_mixer_i_47
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(i_mixer_i_47_n_0));
  LUT6 #(
    .INIT(64'hA95556AA7F2680D9)) 
    i_mixer_i_48
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(i_mixer_i_48_n_0));
  LUT6 #(
    .INIT(64'hB7F2480D7B2584DA)) 
    i_mixer_i_49
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(i_mixer_i_49_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i_mixer_i_5
       (.I0(i_mixer_i_28_n_0),
        .I1(i_mixer_i_29_n_0),
        .I2(sel[5]),
        .I3(i_mixer_i_30_n_0),
        .I4(sel[6]),
        .I5(i_mixer_i_31_n_0),
        .O(p_0_out[11]));
  LUT6 #(
    .INIT(64'hBB11022644EEFDD8)) 
    i_mixer_i_50
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(i_mixer_i_50_n_0));
  LUT6 #(
    .INIT(64'hB55016A44AAFE95B)) 
    i_mixer_i_51
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(i_mixer_i_51_n_0));
  LUT6 #(
    .INIT(64'hB69F10744960EF8B)) 
    i_mixer_i_52
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(i_mixer_i_52_n_0));
  LUT6 #(
    .INIT(64'h6A5E95A14C35B3CA)) 
    i_mixer_i_53
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(i_mixer_i_53_n_0));
  LUT6 #(
    .INIT(64'h38DA5C96C725A368)) 
    i_mixer_i_54
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(i_mixer_i_54_n_0));
  LUT6 #(
    .INIT(64'h16F9E90672068DF9)) 
    i_mixer_i_55
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[2]),
        .I3(sel[0]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(i_mixer_i_55_n_0));
  LUT6 #(
    .INIT(64'h8C4973B663909C6F)) 
    i_mixer_i_56
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(i_mixer_i_56_n_0));
  LUT6 #(
    .INIT(64'hA8B85747EA85157A)) 
    i_mixer_i_57
       (.I0(sel[4]),
        .I1(sel[0]),
        .I2(sel[3]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(i_mixer_i_57_n_0));
  LUT6 #(
    .INIT(64'h6C8EAAAE93715550)) 
    i_mixer_i_58
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(i_mixer_i_58_n_0));
  LUT6 #(
    .INIT(64'h66D39CEE992C6311)) 
    i_mixer_i_59
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(i_mixer_i_59_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i_mixer_i_6
       (.I0(i_mixer_i_32_n_0),
        .I1(i_mixer_i_33_n_0),
        .I2(sel[5]),
        .I3(i_mixer_i_34_n_0),
        .I4(sel[6]),
        .I5(i_mixer_i_35_n_0),
        .O(p_0_out[10]));
  LUT6 #(
    .INIT(64'h0B32FCACFCDD0353)) 
    i_mixer_i_60
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(i_mixer_i_60_n_0));
  LUT6 #(
    .INIT(64'h982769B16FDA9E4E)) 
    i_mixer_i_61
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(i_mixer_i_61_n_0));
  LUT6 #(
    .INIT(64'h27D9BF41956E6E90)) 
    i_mixer_i_62
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[7]),
        .I4(sel[2]),
        .I5(sel[1]),
        .O(i_mixer_i_62_n_0));
  LUT6 #(
    .INIT(64'hACB30BF253CDF40D)) 
    i_mixer_i_63
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(i_mixer_i_63_n_0));
  LUT6 #(
    .INIT(64'hD45B6B2EE82467FB)) 
    i_mixer_i_64
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[2]),
        .I3(sel[0]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(i_mixer_i_64_n_0));
  LUT6 #(
    .INIT(64'hB960D617EF9F50C4)) 
    i_mixer_i_65
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[2]),
        .I3(sel[0]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(i_mixer_i_65_n_0));
  LUT6 #(
    .INIT(64'h0FE0A7866939BD8E)) 
    i_mixer_i_66
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[7]),
        .I3(sel[0]),
        .I4(sel[2]),
        .I5(sel[1]),
        .O(i_mixer_i_66_n_0));
  LUT6 #(
    .INIT(64'hE764DF661D7A24B9)) 
    i_mixer_i_67
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(i_mixer_i_67_n_0));
  LUT6 #(
    .INIT(64'h315196E484718D8F)) 
    i_mixer_i_68
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(i_mixer_i_68_n_0));
  LUT6 #(
    .INIT(64'h062567F684F9B5D3)) 
    i_mixer_i_69
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(i_mixer_i_69_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i_mixer_i_7
       (.I0(i_mixer_i_36_n_0),
        .I1(i_mixer_i_37_n_0),
        .I2(sel[5]),
        .I3(i_mixer_i_38_n_0),
        .I4(sel[6]),
        .I5(i_mixer_i_39_n_0),
        .O(p_0_out[9]));
  LUT6 #(
    .INIT(64'hBFD6F4106AE2A264)) 
    i_mixer_i_70
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[1]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[0]),
        .O(i_mixer_i_70_n_0));
  LUT6 #(
    .INIT(64'h1216E8187B9EA2C1)) 
    i_mixer_i_71
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(i_mixer_i_71_n_0));
  LUT6 #(
    .INIT(64'h75A0E4D4DB39C17D)) 
    i_mixer_i_72
       (.I0(sel[6]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[2]),
        .I4(sel[0]),
        .I5(sel[1]),
        .O(i_mixer_i_72_n_0));
  LUT6 #(
    .INIT(64'h9C2B0583DB27AEEC)) 
    i_mixer_i_73
       (.I0(sel[6]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(i_mixer_i_73_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i_mixer_i_8
       (.I0(i_mixer_i_40_n_0),
        .I1(i_mixer_i_41_n_0),
        .I2(sel[5]),
        .I3(i_mixer_i_42_n_0),
        .I4(sel[6]),
        .I5(i_mixer_i_43_n_0),
        .O(p_0_out[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i_mixer_i_9
       (.I0(i_mixer_i_44_n_0),
        .I1(i_mixer_i_45_n_0),
        .I2(sel[5]),
        .I3(i_mixer_i_46_n_0),
        .I4(sel[6]),
        .I5(i_mixer_i_47_n_0),
        .O(p_0_out[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_accumulator[10]_i_2 
       (.I0(\phase_accumulator_reg_n_0_[13] ),
        .O(\phase_accumulator[10]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_accumulator[10]_i_3 
       (.I0(\phase_accumulator_reg_n_0_[12] ),
        .O(\phase_accumulator[10]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_accumulator[14]_i_2 
       (.I0(\phase_accumulator_reg_n_0_[16] ),
        .O(\phase_accumulator[14]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_accumulator[14]_i_3 
       (.I0(\phase_accumulator_reg_n_0_[14] ),
        .O(\phase_accumulator[14]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_accumulator[18]_i_2 
       (.I0(\phase_accumulator_reg_n_0_[21] ),
        .O(\phase_accumulator[18]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_accumulator[18]_i_3 
       (.I0(\phase_accumulator_reg_n_0_[20] ),
        .O(\phase_accumulator[18]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_accumulator[18]_i_4 
       (.I0(\phase_accumulator_reg_n_0_[19] ),
        .O(\phase_accumulator[18]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_accumulator[18]_i_5 
       (.I0(\phase_accumulator_reg_n_0_[18] ),
        .O(\phase_accumulator[18]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_accumulator[22]_i_2 
       (.I0(sel[1]),
        .O(\phase_accumulator[22]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_accumulator[26]_i_2 
       (.I0(sel[3]),
        .O(\phase_accumulator[26]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_accumulator[2]_i_2 
       (.I0(\phase_accumulator_reg_n_0_[5] ),
        .O(\phase_accumulator[2]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_accumulator[2]_i_3 
       (.I0(\phase_accumulator_reg_n_0_[2] ),
        .O(\phase_accumulator[2]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_accumulator[6]_i_2 
       (.I0(\phase_accumulator_reg_n_0_[7] ),
        .O(\phase_accumulator[6]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[10]_i_1_n_7 ),
        .Q(\phase_accumulator_reg_n_0_[10] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \phase_accumulator_reg[10]_i_1 
       (.CI(\phase_accumulator_reg[6]_i_1_n_0 ),
        .CO({\phase_accumulator_reg[10]_i_1_n_0 ,\phase_accumulator_reg[10]_i_1_n_1 ,\phase_accumulator_reg[10]_i_1_n_2 ,\phase_accumulator_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b0,1'b0}),
        .O({\phase_accumulator_reg[10]_i_1_n_4 ,\phase_accumulator_reg[10]_i_1_n_5 ,\phase_accumulator_reg[10]_i_1_n_6 ,\phase_accumulator_reg[10]_i_1_n_7 }),
        .S({\phase_accumulator[10]_i_2_n_0 ,\phase_accumulator[10]_i_3_n_0 ,\phase_accumulator_reg_n_0_[11] ,\phase_accumulator_reg_n_0_[10] }));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[10]_i_1_n_6 ),
        .Q(\phase_accumulator_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[10]_i_1_n_5 ),
        .Q(\phase_accumulator_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[10]_i_1_n_4 ),
        .Q(\phase_accumulator_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[14]_i_1_n_7 ),
        .Q(\phase_accumulator_reg_n_0_[14] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \phase_accumulator_reg[14]_i_1 
       (.CI(\phase_accumulator_reg[10]_i_1_n_0 ),
        .CO({\phase_accumulator_reg[14]_i_1_n_0 ,\phase_accumulator_reg[14]_i_1_n_1 ,\phase_accumulator_reg[14]_i_1_n_2 ,\phase_accumulator_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b0,1'b1}),
        .O({\phase_accumulator_reg[14]_i_1_n_4 ,\phase_accumulator_reg[14]_i_1_n_5 ,\phase_accumulator_reg[14]_i_1_n_6 ,\phase_accumulator_reg[14]_i_1_n_7 }),
        .S({\phase_accumulator_reg_n_0_[17] ,\phase_accumulator[14]_i_2_n_0 ,\phase_accumulator_reg_n_0_[15] ,\phase_accumulator[14]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[14]_i_1_n_6 ),
        .Q(\phase_accumulator_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[14]_i_1_n_5 ),
        .Q(\phase_accumulator_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[14]_i_1_n_4 ),
        .Q(\phase_accumulator_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[18]_i_1_n_7 ),
        .Q(\phase_accumulator_reg_n_0_[18] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \phase_accumulator_reg[18]_i_1 
       (.CI(\phase_accumulator_reg[14]_i_1_n_0 ),
        .CO({\phase_accumulator_reg[18]_i_1_n_0 ,\phase_accumulator_reg[18]_i_1_n_1 ,\phase_accumulator_reg[18]_i_1_n_2 ,\phase_accumulator_reg[18]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\phase_accumulator_reg[18]_i_1_n_4 ,\phase_accumulator_reg[18]_i_1_n_5 ,\phase_accumulator_reg[18]_i_1_n_6 ,\phase_accumulator_reg[18]_i_1_n_7 }),
        .S({\phase_accumulator[18]_i_2_n_0 ,\phase_accumulator[18]_i_3_n_0 ,\phase_accumulator[18]_i_4_n_0 ,\phase_accumulator[18]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[18]_i_1_n_6 ),
        .Q(\phase_accumulator_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[18]_i_1_n_5 ),
        .Q(\phase_accumulator_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[18]_i_1_n_4 ),
        .Q(\phase_accumulator_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[22]_i_1_n_7 ),
        .Q(\phase_accumulator_reg_n_0_[22] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \phase_accumulator_reg[22]_i_1 
       (.CI(\phase_accumulator_reg[18]_i_1_n_0 ),
        .CO({\phase_accumulator_reg[22]_i_1_n_0 ,\phase_accumulator_reg[22]_i_1_n_1 ,\phase_accumulator_reg[22]_i_1_n_2 ,\phase_accumulator_reg[22]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b0,1'b0,1'b0}),
        .O({\phase_accumulator_reg[22]_i_1_n_4 ,\phase_accumulator_reg[22]_i_1_n_5 ,\phase_accumulator_reg[22]_i_1_n_6 ,\phase_accumulator_reg[22]_i_1_n_7 }),
        .S({\phase_accumulator[22]_i_2_n_0 ,sel[0],\phase_accumulator_reg_n_0_[23] ,\phase_accumulator_reg_n_0_[22] }));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[22]_i_1_n_6 ),
        .Q(\phase_accumulator_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[22]_i_1_n_5 ),
        .Q(sel[0]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[22]_i_1_n_4 ),
        .Q(sel[1]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[26]_i_1_n_7 ),
        .Q(sel[2]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \phase_accumulator_reg[26]_i_1 
       (.CI(\phase_accumulator_reg[22]_i_1_n_0 ),
        .CO({\phase_accumulator_reg[26]_i_1_n_0 ,\phase_accumulator_reg[26]_i_1_n_1 ,\phase_accumulator_reg[26]_i_1_n_2 ,\phase_accumulator_reg[26]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b0}),
        .O({\phase_accumulator_reg[26]_i_1_n_4 ,\phase_accumulator_reg[26]_i_1_n_5 ,\phase_accumulator_reg[26]_i_1_n_6 ,\phase_accumulator_reg[26]_i_1_n_7 }),
        .S({sel[5:4],\phase_accumulator[26]_i_2_n_0 ,sel[2]}));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[26]_i_1_n_6 ),
        .Q(sel[3]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[26]_i_1_n_5 ),
        .Q(sel[4]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[26]_i_1_n_4 ),
        .Q(sel[5]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[2]_i_1_n_7 ),
        .Q(\phase_accumulator_reg_n_0_[2] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \phase_accumulator_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\phase_accumulator_reg[2]_i_1_n_0 ,\phase_accumulator_reg[2]_i_1_n_1 ,\phase_accumulator_reg[2]_i_1_n_2 ,\phase_accumulator_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b0,1'b0,1'b1}),
        .O({\phase_accumulator_reg[2]_i_1_n_4 ,\phase_accumulator_reg[2]_i_1_n_5 ,\phase_accumulator_reg[2]_i_1_n_6 ,\phase_accumulator_reg[2]_i_1_n_7 }),
        .S({\phase_accumulator[2]_i_2_n_0 ,\phase_accumulator_reg_n_0_[4] ,\phase_accumulator_reg_n_0_[3] ,\phase_accumulator[2]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[30]_i_1_n_7 ),
        .Q(sel[6]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \phase_accumulator_reg[30]_i_1 
       (.CI(\phase_accumulator_reg[26]_i_1_n_0 ),
        .CO({\NLW_phase_accumulator_reg[30]_i_1_CO_UNCONNECTED [3:1],\phase_accumulator_reg[30]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_phase_accumulator_reg[30]_i_1_O_UNCONNECTED [3:2],\phase_accumulator_reg[30]_i_1_n_6 ,\phase_accumulator_reg[30]_i_1_n_7 }),
        .S({1'b0,1'b0,sel[7:6]}));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[30]_i_1_n_6 ),
        .Q(sel[7]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[2]_i_1_n_6 ),
        .Q(\phase_accumulator_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[2]_i_1_n_5 ),
        .Q(\phase_accumulator_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[2]_i_1_n_4 ),
        .Q(\phase_accumulator_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[6]_i_1_n_7 ),
        .Q(\phase_accumulator_reg_n_0_[6] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \phase_accumulator_reg[6]_i_1 
       (.CI(\phase_accumulator_reg[2]_i_1_n_0 ),
        .CO({\phase_accumulator_reg[6]_i_1_n_0 ,\phase_accumulator_reg[6]_i_1_n_1 ,\phase_accumulator_reg[6]_i_1_n_2 ,\phase_accumulator_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b0}),
        .O({\phase_accumulator_reg[6]_i_1_n_4 ,\phase_accumulator_reg[6]_i_1_n_5 ,\phase_accumulator_reg[6]_i_1_n_6 ,\phase_accumulator_reg[6]_i_1_n_7 }),
        .S({\phase_accumulator_reg_n_0_[9] ,\phase_accumulator_reg_n_0_[8] ,\phase_accumulator[6]_i_2_n_0 ,\phase_accumulator_reg_n_0_[6] }));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[6]_i_1_n_6 ),
        .Q(\phase_accumulator_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[6]_i_1_n_5 ),
        .Q(\phase_accumulator_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(\phase_accumulator_reg[6]_i_1_n_4 ),
        .Q(\phase_accumulator_reg_n_0_[9] ));
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
    q_mixer
       (.A({iq_data_in[15],iq_data_in[15],iq_data_in[15],iq_data_in[15],iq_data_in[15],iq_data_in[15],iq_data_in[15],iq_data_in[15],iq_data_in[15],iq_data_in[15],iq_data_in[15],iq_data_in[15],iq_data_in[15],iq_data_in[15],iq_data_in}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_q_mixer_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({q_mixer_i_1_n_0,q_mixer_i_1_n_0,q_mixer_i_1_n_0,q_mixer_i_2_n_0,q_mixer_i_3_n_0,q_mixer_i_4_n_0,q_mixer_i_5_n_0,q_mixer_i_6_n_0,q_mixer_i_7_n_0,q_mixer_i_8_n_0,q_mixer_i_9_n_0,q_mixer_i_10_n_0,q_mixer_i_11_n_0,q_mixer_i_12_n_0,q_mixer_i_13_n_0,q_mixer_i_14_n_0,q_mixer_i_15_n_0,q_mixer_i_16_n_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_q_mixer_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_q_mixer_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_q_mixer_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_q_mixer_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_q_mixer_OVERFLOW_UNCONNECTED),
        .P({NLW_q_mixer_P_UNCONNECTED[47:32],q_mixer__0}),
        .PATTERNBDETECT(NLW_q_mixer_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_q_mixer_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_q_mixer_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_q_mixer_UNDERFLOW_UNCONNECTED));
  LUT6 #(
    .INIT(64'h00FF01FF00FF00FE)) 
    q_mixer_i_1
       (.I0(sel[6]),
        .I1(sel[5]),
        .I2(sel[4]),
        .I3(sel[7]),
        .I4(sel[3]),
        .I5(i_mixer_i_17_n_0),
        .O(q_mixer_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    q_mixer_i_10
       (.I0(q_mixer_i_32_n_0),
        .I1(q_mixer_i_33_n_0),
        .I2(sel[6]),
        .I3(i_mixer_i_48_n_0),
        .I4(sel[5]),
        .I5(i_mixer_i_50_n_0),
        .O(q_mixer_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    q_mixer_i_11
       (.I0(q_mixer_i_34_n_0),
        .I1(q_mixer_i_35_n_0),
        .I2(sel[6]),
        .I3(i_mixer_i_52_n_0),
        .I4(sel[5]),
        .I5(i_mixer_i_54_n_0),
        .O(q_mixer_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    q_mixer_i_12
       (.I0(q_mixer_i_36_n_0),
        .I1(q_mixer_i_37_n_0),
        .I2(sel[6]),
        .I3(i_mixer_i_56_n_0),
        .I4(sel[5]),
        .I5(i_mixer_i_58_n_0),
        .O(q_mixer_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    q_mixer_i_13
       (.I0(q_mixer_i_38_n_0),
        .I1(q_mixer_i_39_n_0),
        .I2(sel[6]),
        .I3(i_mixer_i_60_n_0),
        .I4(sel[5]),
        .I5(i_mixer_i_62_n_0),
        .O(q_mixer_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    q_mixer_i_14
       (.I0(q_mixer_i_40_n_0),
        .I1(q_mixer_i_41_n_0),
        .I2(sel[6]),
        .I3(i_mixer_i_64_n_0),
        .I4(sel[5]),
        .I5(i_mixer_i_66_n_0),
        .O(q_mixer_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    q_mixer_i_15
       (.I0(q_mixer_i_42_n_0),
        .I1(q_mixer_i_43_n_0),
        .I2(sel[6]),
        .I3(i_mixer_i_68_n_0),
        .I4(sel[5]),
        .I5(i_mixer_i_70_n_0),
        .O(q_mixer_i_15_n_0));
  MUXF7 q_mixer_i_16
       (.I0(q_mixer_i_44_n_0),
        .I1(q_mixer_i_45_n_0),
        .O(q_mixer_i_16_n_0),
        .S(sel[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h07FFF800)) 
    q_mixer_i_17
       (.I0(sel[1]),
        .I1(sel[0]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[7]),
        .O(q_mixer_i_17_n_0));
  LUT6 #(
    .INIT(64'h554022AAAABFDD55)) 
    q_mixer_i_18
       (.I0(sel[4]),
        .I1(sel[1]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[3]),
        .I5(sel[7]),
        .O(q_mixer_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    q_mixer_i_19
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .I4(sel[7]),
        .O(q_mixer_i_19_n_0));
  LUT6 #(
    .INIT(64'h4FE0FF0F4FE0F000)) 
    q_mixer_i_2
       (.I0(sel[4]),
        .I1(q_mixer_i_17_n_0),
        .I2(sel[6]),
        .I3(sel[7]),
        .I4(sel[5]),
        .I5(i_mixer_i_19_n_0),
        .O(q_mixer_i_2_n_0));
  LUT6 #(
    .INIT(64'h6645599B99BAA664)) 
    q_mixer_i_20
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(q_mixer_i_20_n_0));
  LUT6 #(
    .INIT(64'hA155FFFF5EAA0000)) 
    q_mixer_i_21
       (.I0(sel[3]),
        .I1(sel[0]),
        .I2(sel[1]),
        .I3(sel[2]),
        .I4(sel[4]),
        .I5(sel[7]),
        .O(q_mixer_i_21_n_0));
  LUT6 #(
    .INIT(64'h33E2CC1DDC3923C6)) 
    q_mixer_i_22
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(q_mixer_i_22_n_0));
  LUT6 #(
    .INIT(64'h97D7F5D568280A2A)) 
    q_mixer_i_23
       (.I0(sel[4]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[0]),
        .I4(sel[3]),
        .I5(sel[7]),
        .O(q_mixer_i_23_n_0));
  LUT6 #(
    .INIT(64'h2CF1D30E1EE4E11B)) 
    q_mixer_i_24
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[2]),
        .I3(sel[0]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(q_mixer_i_24_n_0));
  LUT6 #(
    .INIT(64'hC89DFD7737620288)) 
    q_mixer_i_25
       (.I0(sel[4]),
        .I1(sel[1]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[3]),
        .I5(sel[7]),
        .O(q_mixer_i_25_n_0));
  LUT6 #(
    .INIT(64'hCEDA31253025CFDA)) 
    q_mixer_i_26
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(q_mixer_i_26_n_0));
  LUT6 #(
    .INIT(64'h63625DF79C9DA208)) 
    q_mixer_i_27
       (.I0(sel[4]),
        .I1(sel[0]),
        .I2(sel[1]),
        .I3(sel[2]),
        .I4(sel[3]),
        .I5(sel[7]),
        .O(q_mixer_i_27_n_0));
  LUT6 #(
    .INIT(64'hD2D72D28C3843C7B)) 
    q_mixer_i_28
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(q_mixer_i_28_n_0));
  LUT6 #(
    .INIT(64'h424D471DBDB2B8E2)) 
    q_mixer_i_29
       (.I0(sel[4]),
        .I1(sel[0]),
        .I2(sel[3]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(q_mixer_i_29_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    q_mixer_i_3
       (.I0(q_mixer_i_18_n_0),
        .I1(q_mixer_i_19_n_0),
        .I2(sel[6]),
        .I3(i_mixer_i_20_n_0),
        .I4(sel[5]),
        .I5(i_mixer_i_22_n_0),
        .O(q_mixer_i_3_n_0));
  LUT6 #(
    .INIT(64'h554898DBAAB76724)) 
    q_mixer_i_30
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[1]),
        .I3(sel[0]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(q_mixer_i_30_n_0));
  LUT6 #(
    .INIT(64'h8FCA9BD57035642A)) 
    q_mixer_i_31
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(q_mixer_i_31_n_0));
  LUT6 #(
    .INIT(64'h480DB7F284DA7B25)) 
    q_mixer_i_32
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(q_mixer_i_32_n_0));
  LUT6 #(
    .INIT(64'h4AAFE95BB55016A4)) 
    q_mixer_i_33
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(q_mixer_i_33_n_0));
  LUT6 #(
    .INIT(64'h95A16A5EB3CA4C35)) 
    q_mixer_i_34
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(q_mixer_i_34_n_0));
  LUT6 #(
    .INIT(64'hE90616F98DF97206)) 
    q_mixer_i_35
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[2]),
        .I3(sel[0]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(q_mixer_i_35_n_0));
  LUT6 #(
    .INIT(64'h5747A8B8157AEA85)) 
    q_mixer_i_36
       (.I0(sel[4]),
        .I1(sel[0]),
        .I2(sel[3]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(q_mixer_i_36_n_0));
  LUT6 #(
    .INIT(64'h992C631166D39CEE)) 
    q_mixer_i_37
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(q_mixer_i_37_n_0));
  LUT6 #(
    .INIT(64'h6FDA9E4E982769B1)) 
    q_mixer_i_38
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(q_mixer_i_38_n_0));
  LUT6 #(
    .INIT(64'h53CDF40DACB30BF2)) 
    q_mixer_i_39
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(q_mixer_i_39_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    q_mixer_i_4
       (.I0(q_mixer_i_20_n_0),
        .I1(q_mixer_i_21_n_0),
        .I2(sel[6]),
        .I3(i_mixer_i_24_n_0),
        .I4(sel[5]),
        .I5(i_mixer_i_26_n_0),
        .O(q_mixer_i_4_n_0));
  LUT6 #(
    .INIT(64'hD617B96050C4EF9F)) 
    q_mixer_i_40
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[2]),
        .I3(sel[0]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(q_mixer_i_40_n_0));
  LUT6 #(
    .INIT(64'h1D7A24B9E764DF66)) 
    q_mixer_i_41
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(q_mixer_i_41_n_0));
  LUT6 #(
    .INIT(64'h67F60625B5D384F9)) 
    q_mixer_i_42
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(q_mixer_i_42_n_0));
  LUT6 #(
    .INIT(64'hE8181216A2C17B9E)) 
    q_mixer_i_43
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(q_mixer_i_43_n_0));
  LUT6 #(
    .INIT(64'h9845DABE7AC262BC)) 
    q_mixer_i_44
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[0]),
        .O(q_mixer_i_44_n_0));
  LUT6 #(
    .INIT(64'h7DA2465E5B1943DD)) 
    q_mixer_i_45
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[2]),
        .I4(sel[0]),
        .I5(sel[1]),
        .O(q_mixer_i_45_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    q_mixer_i_5
       (.I0(q_mixer_i_22_n_0),
        .I1(q_mixer_i_23_n_0),
        .I2(sel[6]),
        .I3(i_mixer_i_28_n_0),
        .I4(sel[5]),
        .I5(i_mixer_i_30_n_0),
        .O(q_mixer_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    q_mixer_i_6
       (.I0(q_mixer_i_24_n_0),
        .I1(q_mixer_i_25_n_0),
        .I2(sel[6]),
        .I3(i_mixer_i_32_n_0),
        .I4(sel[5]),
        .I5(i_mixer_i_34_n_0),
        .O(q_mixer_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    q_mixer_i_7
       (.I0(q_mixer_i_26_n_0),
        .I1(q_mixer_i_27_n_0),
        .I2(sel[6]),
        .I3(i_mixer_i_36_n_0),
        .I4(sel[5]),
        .I5(i_mixer_i_38_n_0),
        .O(q_mixer_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    q_mixer_i_8
       (.I0(q_mixer_i_28_n_0),
        .I1(q_mixer_i_29_n_0),
        .I2(sel[6]),
        .I3(i_mixer_i_40_n_0),
        .I4(sel[5]),
        .I5(i_mixer_i_42_n_0),
        .O(q_mixer_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    q_mixer_i_9
       (.I0(q_mixer_i_30_n_0),
        .I1(q_mixer_i_31_n_0),
        .I2(sel[6]),
        .I3(i_mixer_i_44_n_0),
        .I4(sel[5]),
        .I5(i_mixer_i_46_n_0),
        .O(q_mixer_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \r_out_i[15]_i_1 
       (.I0(rst_n),
        .O(\r_out_i[15]_i_1_n_0 ));
  FDCE \r_out_i_reg[0] 
       (.C(clk),
        .CE(iq_tvalid),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_i[16]),
        .Q(i_band[0]));
  FDCE \r_out_i_reg[10] 
       (.C(clk),
        .CE(iq_tvalid),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_i[26]),
        .Q(i_band[10]));
  FDCE \r_out_i_reg[11] 
       (.C(clk),
        .CE(iq_tvalid),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_i[27]),
        .Q(i_band[11]));
  FDCE \r_out_i_reg[12] 
       (.C(clk),
        .CE(iq_tvalid),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_i[28]),
        .Q(i_band[12]));
  FDCE \r_out_i_reg[13] 
       (.C(clk),
        .CE(iq_tvalid),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_i[29]),
        .Q(i_band[13]));
  FDCE \r_out_i_reg[14] 
       (.C(clk),
        .CE(iq_tvalid),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_i[30]),
        .Q(i_band[14]));
  FDCE \r_out_i_reg[15] 
       (.C(clk),
        .CE(iq_tvalid),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_i[31]),
        .Q(i_band[15]));
  FDCE \r_out_i_reg[1] 
       (.C(clk),
        .CE(iq_tvalid),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_i[17]),
        .Q(i_band[1]));
  FDCE \r_out_i_reg[2] 
       (.C(clk),
        .CE(iq_tvalid),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_i[18]),
        .Q(i_band[2]));
  FDCE \r_out_i_reg[3] 
       (.C(clk),
        .CE(iq_tvalid),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_i[19]),
        .Q(i_band[3]));
  FDCE \r_out_i_reg[4] 
       (.C(clk),
        .CE(iq_tvalid),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_i[20]),
        .Q(i_band[4]));
  FDCE \r_out_i_reg[5] 
       (.C(clk),
        .CE(iq_tvalid),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_i[21]),
        .Q(i_band[5]));
  FDCE \r_out_i_reg[6] 
       (.C(clk),
        .CE(iq_tvalid),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_i[22]),
        .Q(i_band[6]));
  FDCE \r_out_i_reg[7] 
       (.C(clk),
        .CE(iq_tvalid),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_i[23]),
        .Q(i_band[7]));
  FDCE \r_out_i_reg[8] 
       (.C(clk),
        .CE(iq_tvalid),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_i[24]),
        .Q(i_band[8]));
  FDCE \r_out_i_reg[9] 
       (.C(clk),
        .CE(iq_tvalid),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_i[25]),
        .Q(i_band[9]));
  FDCE \r_out_q_reg[0] 
       (.C(clk),
        .CE(cic_valid_q),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_q[16]),
        .Q(q_band[0]));
  FDCE \r_out_q_reg[10] 
       (.C(clk),
        .CE(cic_valid_q),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_q[26]),
        .Q(q_band[10]));
  FDCE \r_out_q_reg[11] 
       (.C(clk),
        .CE(cic_valid_q),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_q[27]),
        .Q(q_band[11]));
  FDCE \r_out_q_reg[12] 
       (.C(clk),
        .CE(cic_valid_q),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_q[28]),
        .Q(q_band[12]));
  FDCE \r_out_q_reg[13] 
       (.C(clk),
        .CE(cic_valid_q),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_q[29]),
        .Q(q_band[13]));
  FDCE \r_out_q_reg[14] 
       (.C(clk),
        .CE(cic_valid_q),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_q[30]),
        .Q(q_band[14]));
  FDCE \r_out_q_reg[15] 
       (.C(clk),
        .CE(cic_valid_q),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_q[31]),
        .Q(q_band[15]));
  FDCE \r_out_q_reg[1] 
       (.C(clk),
        .CE(cic_valid_q),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_q[17]),
        .Q(q_band[1]));
  FDCE \r_out_q_reg[2] 
       (.C(clk),
        .CE(cic_valid_q),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_q[18]),
        .Q(q_band[2]));
  FDCE \r_out_q_reg[3] 
       (.C(clk),
        .CE(cic_valid_q),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_q[19]),
        .Q(q_band[3]));
  FDCE \r_out_q_reg[4] 
       (.C(clk),
        .CE(cic_valid_q),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_q[20]),
        .Q(q_band[4]));
  FDCE \r_out_q_reg[5] 
       (.C(clk),
        .CE(cic_valid_q),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_q[21]),
        .Q(q_band[5]));
  FDCE \r_out_q_reg[6] 
       (.C(clk),
        .CE(cic_valid_q),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_q[22]),
        .Q(q_band[6]));
  FDCE \r_out_q_reg[7] 
       (.C(clk),
        .CE(cic_valid_q),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_q[23]),
        .Q(q_band[7]));
  FDCE \r_out_q_reg[8] 
       (.C(clk),
        .CE(cic_valid_q),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_q[24]),
        .Q(q_band[8]));
  FDCE \r_out_q_reg[9] 
       (.C(clk),
        .CE(cic_valid_q),
        .CLR(\r_out_i[15]_i_1_n_0 ),
        .D(cic_out_q[25]),
        .Q(q_band[9]));
endmodule

(* CHECK_LICENSE_TYPE = "cic_compiler_iq,cic_compiler_v4_0_20,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "cic_compiler_iq" *) 
(* X_CORE_INFO = "cic_compiler_v4_0_20,Vivado 2024.2" *) 
module design_1_IQ_DDC_0_0_cic_compiler_iq
   (aclk,
    aresetn,
    s_axis_data_tdata,
    s_axis_data_tvalid,
    s_axis_data_tready,
    m_axis_data_tdata,
    m_axis_data_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_DATA, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave aresetn_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) output m_axis_data_tvalid;


endmodule

(* CHECK_LICENSE_TYPE = "cic_compiler_iq,cic_compiler_v4_0_20,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "cic_compiler_iq" *) 
(* X_CORE_INFO = "cic_compiler_v4_0_20,Vivado 2024.2" *) 
module design_1_IQ_DDC_0_0_cic_compiler_iq_HD1
   (aclk,
    aresetn,
    m_axis_data_tvalid,
    s_axis_data_tready,
    s_axis_data_tvalid,
    m_axis_data_tdata,
    s_axis_data_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_DATA, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave aresetn_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_data_tdata;


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
