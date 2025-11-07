// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri Nov  7 12:12:31 2025
// Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/elysia/Software/Xilinx/Project/11-6V3/2023D_lwx.gen/sources_1/bd/design_1/ip/design_1_PSK_DM_0_0/design_1_PSK_DM_0_0_sim_netlist.v
// Design      : design_1_PSK_DM_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_PSK_DM_0_0,PSK_DM,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "PSK_DM,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_PSK_DM_0_0
   (clk,
    rst_n,
    pm_data_in,
    pm_data_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [15:0]pm_data_in;
  output [15:0]pm_data_out;

  wire \<const0> ;
  wire clk;
  wire [15:0]pm_data_in;
  wire [11:3]\^pm_data_out ;
  wire rst_n;
  wire [15:0]NLW_inst_pm_data_out_UNCONNECTED;

  assign pm_data_out[15] = \<const0> ;
  assign pm_data_out[14] = \<const0> ;
  assign pm_data_out[13] = \<const0> ;
  assign pm_data_out[12] = \<const0> ;
  assign pm_data_out[11] = \^pm_data_out [11];
  assign pm_data_out[10] = \<const0> ;
  assign pm_data_out[9:7] = \^pm_data_out [9:7];
  assign pm_data_out[6] = \<const0> ;
  assign pm_data_out[5:3] = \^pm_data_out [5:3];
  assign pm_data_out[2] = \<const0> ;
  assign pm_data_out[1] = \<const0> ;
  assign pm_data_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_PSK_DM_0_0_PSK_DM inst
       (.clk(clk),
        .pm_data_in(pm_data_in),
        .pm_data_out({NLW_inst_pm_data_out_UNCONNECTED[15:12],\^pm_data_out ,NLW_inst_pm_data_out_UNCONNECTED[2:0]}),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "PSK_DM" *) 
module design_1_PSK_DM_0_0_PSK_DM
   (clk,
    rst_n,
    pm_data_in,
    pm_data_out);
  input clk;
  input rst_n;
  input [15:0]pm_data_in;
  output [15:0]pm_data_out;

  wire \<const0> ;
  wire [15:0]carrier_out_signed;
  wire clk;
  wire costas_loop_inst_n_0;
  wire fir_lpf_psk_psk2_i_17_n_0;
  wire [33:0]fir_tdata_i;
  wire [31:16]mixed_PSK_data_signed;
  wire mixed_valid_r;
  wire [15:0]pm_data_in;
  wire [9:9]\^pm_data_out ;
  wire rst_n;
  wire square_wave1;
  wire \square_wave[11]_i_10_n_0 ;
  wire \square_wave[11]_i_11_n_0 ;
  wire \square_wave[11]_i_12_n_0 ;
  wire \square_wave[11]_i_13_n_0 ;
  wire \square_wave[11]_i_14_n_0 ;
  wire \square_wave[11]_i_16_n_0 ;
  wire \square_wave[11]_i_17_n_0 ;
  wire \square_wave[11]_i_18_n_0 ;
  wire \square_wave[11]_i_19_n_0 ;
  wire \square_wave[11]_i_20_n_0 ;
  wire \square_wave[11]_i_21_n_0 ;
  wire \square_wave[11]_i_22_n_0 ;
  wire \square_wave[11]_i_23_n_0 ;
  wire \square_wave[11]_i_25_n_0 ;
  wire \square_wave[11]_i_26_n_0 ;
  wire \square_wave[11]_i_27_n_0 ;
  wire \square_wave[11]_i_28_n_0 ;
  wire \square_wave[11]_i_29_n_0 ;
  wire \square_wave[11]_i_30_n_0 ;
  wire \square_wave[11]_i_31_n_0 ;
  wire \square_wave[11]_i_32_n_0 ;
  wire \square_wave[11]_i_33_n_0 ;
  wire \square_wave[11]_i_34_n_0 ;
  wire \square_wave[11]_i_35_n_0 ;
  wire \square_wave[11]_i_36_n_0 ;
  wire \square_wave[11]_i_37_n_0 ;
  wire \square_wave[11]_i_38_n_0 ;
  wire \square_wave[11]_i_39_n_0 ;
  wire \square_wave[11]_i_40_n_0 ;
  wire \square_wave[11]_i_4_n_0 ;
  wire \square_wave[11]_i_5_n_0 ;
  wire \square_wave[11]_i_7_n_0 ;
  wire \square_wave[11]_i_8_n_0 ;
  wire \square_wave[11]_i_9_n_0 ;
  wire \square_wave_reg[11]_i_15_n_0 ;
  wire \square_wave_reg[11]_i_15_n_1 ;
  wire \square_wave_reg[11]_i_15_n_2 ;
  wire \square_wave_reg[11]_i_15_n_3 ;
  wire \square_wave_reg[11]_i_24_n_0 ;
  wire \square_wave_reg[11]_i_24_n_1 ;
  wire \square_wave_reg[11]_i_24_n_2 ;
  wire \square_wave_reg[11]_i_24_n_3 ;
  wire \square_wave_reg[11]_i_3_n_0 ;
  wire \square_wave_reg[11]_i_3_n_1 ;
  wire \square_wave_reg[11]_i_3_n_2 ;
  wire \square_wave_reg[11]_i_3_n_3 ;
  wire \square_wave_reg[11]_i_6_n_0 ;
  wire \square_wave_reg[11]_i_6_n_1 ;
  wire \square_wave_reg[11]_i_6_n_2 ;
  wire \square_wave_reg[11]_i_6_n_3 ;
  wire NLW_fir_lpf_psk_psk1_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_lpf_psk_psk1_s_axis_data_tready_UNCONNECTED;
  wire [39:34]NLW_fir_lpf_psk_psk1_m_axis_data_tdata_UNCONNECTED;
  wire [15:0]NLW_mult_gen_psk_P_UNCONNECTED;
  wire [3:1]\NLW_square_wave_reg[11]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_square_wave_reg[11]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_square_wave_reg[11]_i_15_O_UNCONNECTED ;
  wire [3:0]\NLW_square_wave_reg[11]_i_24_O_UNCONNECTED ;
  wire [3:0]\NLW_square_wave_reg[11]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_square_wave_reg[11]_i_6_O_UNCONNECTED ;

  assign pm_data_out[15] = \<const0> ;
  assign pm_data_out[14] = \<const0> ;
  assign pm_data_out[13] = \<const0> ;
  assign pm_data_out[12] = \<const0> ;
  assign pm_data_out[11] = \^pm_data_out [9];
  assign pm_data_out[10] = \<const0> ;
  assign pm_data_out[9] = \^pm_data_out [9];
  assign pm_data_out[8] = \^pm_data_out [9];
  assign pm_data_out[7] = \^pm_data_out [9];
  assign pm_data_out[6] = \<const0> ;
  assign pm_data_out[5] = \^pm_data_out [9];
  assign pm_data_out[4] = \^pm_data_out [9];
  assign pm_data_out[3] = \^pm_data_out [9];
  assign pm_data_out[2] = \<const0> ;
  assign pm_data_out[1] = \<const0> ;
  assign pm_data_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_PSK_DM_0_0_costas_loop costas_loop_inst
       (.Q(carrier_out_signed),
        .clk(clk),
        .\phase_adjust_reg[0]_0 (fir_lpf_psk_psk2_i_17_n_0),
        .pm_data_in(pm_data_in),
        .rst_n(rst_n),
        .rst_n_0(costas_loop_inst_n_0));
  (* CHECK_LICENSE_TYPE = "fir_lpf_psk,fir_compiler_v7_2_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_23,Vivado 2024.2" *) 
  design_1_PSK_DM_0_0_fir_lpf_psk fir_lpf_psk_psk1
       (.aclk(clk),
        .m_axis_data_tdata({NLW_fir_lpf_psk_psk1_m_axis_data_tdata_UNCONNECTED[39:34],fir_tdata_i}),
        .m_axis_data_tvalid(NLW_fir_lpf_psk_psk1_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(mixed_PSK_data_signed),
        .s_axis_data_tready(NLW_fir_lpf_psk_psk1_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(mixed_valid_r));
  FDCE fir_lpf_psk_psk2_i_17
       (.C(clk),
        .CE(1'b1),
        .CLR(costas_loop_inst_n_0),
        .D(1'b1),
        .Q(fir_lpf_psk_psk2_i_17_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mixed_valid_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(rst_n),
        .Q(mixed_valid_r),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "mult_gen_psk,mult_gen_v12_0_22,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_22,Vivado 2024.2" *) 
  design_1_PSK_DM_0_0_mult_gen_psk mult_gen_psk
       (.A(pm_data_in),
        .B(carrier_out_signed),
        .CLK(clk),
        .P({mixed_PSK_data_signed,NLW_mult_gen_psk_P_UNCONNECTED[15:0]}));
  LUT2 #(
    .INIT(4'hE)) 
    \square_wave[11]_i_10 
       (.I0(fir_tdata_i[24]),
        .I1(fir_tdata_i[25]),
        .O(\square_wave[11]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \square_wave[11]_i_11 
       (.I0(fir_tdata_i[30]),
        .I1(fir_tdata_i[31]),
        .O(\square_wave[11]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \square_wave[11]_i_12 
       (.I0(fir_tdata_i[28]),
        .I1(fir_tdata_i[29]),
        .O(\square_wave[11]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \square_wave[11]_i_13 
       (.I0(fir_tdata_i[26]),
        .I1(fir_tdata_i[27]),
        .O(\square_wave[11]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \square_wave[11]_i_14 
       (.I0(fir_tdata_i[24]),
        .I1(fir_tdata_i[25]),
        .O(\square_wave[11]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \square_wave[11]_i_16 
       (.I0(fir_tdata_i[22]),
        .I1(fir_tdata_i[23]),
        .O(\square_wave[11]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \square_wave[11]_i_17 
       (.I0(fir_tdata_i[20]),
        .I1(fir_tdata_i[21]),
        .O(\square_wave[11]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \square_wave[11]_i_18 
       (.I0(fir_tdata_i[18]),
        .I1(fir_tdata_i[19]),
        .O(\square_wave[11]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \square_wave[11]_i_19 
       (.I0(fir_tdata_i[16]),
        .I1(fir_tdata_i[17]),
        .O(\square_wave[11]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \square_wave[11]_i_20 
       (.I0(fir_tdata_i[22]),
        .I1(fir_tdata_i[23]),
        .O(\square_wave[11]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \square_wave[11]_i_21 
       (.I0(fir_tdata_i[20]),
        .I1(fir_tdata_i[21]),
        .O(\square_wave[11]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \square_wave[11]_i_22 
       (.I0(fir_tdata_i[18]),
        .I1(fir_tdata_i[19]),
        .O(\square_wave[11]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \square_wave[11]_i_23 
       (.I0(fir_tdata_i[16]),
        .I1(fir_tdata_i[17]),
        .O(\square_wave[11]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \square_wave[11]_i_25 
       (.I0(fir_tdata_i[14]),
        .I1(fir_tdata_i[15]),
        .O(\square_wave[11]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \square_wave[11]_i_26 
       (.I0(fir_tdata_i[12]),
        .I1(fir_tdata_i[13]),
        .O(\square_wave[11]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \square_wave[11]_i_27 
       (.I0(fir_tdata_i[10]),
        .I1(fir_tdata_i[11]),
        .O(\square_wave[11]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \square_wave[11]_i_28 
       (.I0(fir_tdata_i[8]),
        .I1(fir_tdata_i[9]),
        .O(\square_wave[11]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \square_wave[11]_i_29 
       (.I0(fir_tdata_i[14]),
        .I1(fir_tdata_i[15]),
        .O(\square_wave[11]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \square_wave[11]_i_30 
       (.I0(fir_tdata_i[12]),
        .I1(fir_tdata_i[13]),
        .O(\square_wave[11]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \square_wave[11]_i_31 
       (.I0(fir_tdata_i[10]),
        .I1(fir_tdata_i[11]),
        .O(\square_wave[11]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \square_wave[11]_i_32 
       (.I0(fir_tdata_i[8]),
        .I1(fir_tdata_i[9]),
        .O(\square_wave[11]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \square_wave[11]_i_33 
       (.I0(fir_tdata_i[6]),
        .I1(fir_tdata_i[7]),
        .O(\square_wave[11]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \square_wave[11]_i_34 
       (.I0(fir_tdata_i[4]),
        .I1(fir_tdata_i[5]),
        .O(\square_wave[11]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \square_wave[11]_i_35 
       (.I0(fir_tdata_i[2]),
        .I1(fir_tdata_i[3]),
        .O(\square_wave[11]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \square_wave[11]_i_36 
       (.I0(fir_tdata_i[0]),
        .I1(fir_tdata_i[1]),
        .O(\square_wave[11]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \square_wave[11]_i_37 
       (.I0(fir_tdata_i[6]),
        .I1(fir_tdata_i[7]),
        .O(\square_wave[11]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \square_wave[11]_i_38 
       (.I0(fir_tdata_i[4]),
        .I1(fir_tdata_i[5]),
        .O(\square_wave[11]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \square_wave[11]_i_39 
       (.I0(fir_tdata_i[2]),
        .I1(fir_tdata_i[3]),
        .O(\square_wave[11]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \square_wave[11]_i_4 
       (.I0(fir_tdata_i[32]),
        .I1(fir_tdata_i[33]),
        .O(\square_wave[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \square_wave[11]_i_40 
       (.I0(fir_tdata_i[0]),
        .I1(fir_tdata_i[1]),
        .O(\square_wave[11]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \square_wave[11]_i_5 
       (.I0(fir_tdata_i[32]),
        .I1(fir_tdata_i[33]),
        .O(\square_wave[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \square_wave[11]_i_7 
       (.I0(fir_tdata_i[30]),
        .I1(fir_tdata_i[31]),
        .O(\square_wave[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \square_wave[11]_i_8 
       (.I0(fir_tdata_i[28]),
        .I1(fir_tdata_i[29]),
        .O(\square_wave[11]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \square_wave[11]_i_9 
       (.I0(fir_tdata_i[26]),
        .I1(fir_tdata_i[27]),
        .O(\square_wave[11]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \square_wave_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(costas_loop_inst_n_0),
        .D(square_wave1),
        .Q(\^pm_data_out ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \square_wave_reg[11]_i_1 
       (.CI(\square_wave_reg[11]_i_3_n_0 ),
        .CO({\NLW_square_wave_reg[11]_i_1_CO_UNCONNECTED [3:1],square_wave1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\square_wave[11]_i_4_n_0 }),
        .O(\NLW_square_wave_reg[11]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\square_wave[11]_i_5_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \square_wave_reg[11]_i_15 
       (.CI(\square_wave_reg[11]_i_24_n_0 ),
        .CO({\square_wave_reg[11]_i_15_n_0 ,\square_wave_reg[11]_i_15_n_1 ,\square_wave_reg[11]_i_15_n_2 ,\square_wave_reg[11]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\square_wave[11]_i_25_n_0 ,\square_wave[11]_i_26_n_0 ,\square_wave[11]_i_27_n_0 ,\square_wave[11]_i_28_n_0 }),
        .O(\NLW_square_wave_reg[11]_i_15_O_UNCONNECTED [3:0]),
        .S({\square_wave[11]_i_29_n_0 ,\square_wave[11]_i_30_n_0 ,\square_wave[11]_i_31_n_0 ,\square_wave[11]_i_32_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \square_wave_reg[11]_i_24 
       (.CI(1'b0),
        .CO({\square_wave_reg[11]_i_24_n_0 ,\square_wave_reg[11]_i_24_n_1 ,\square_wave_reg[11]_i_24_n_2 ,\square_wave_reg[11]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\square_wave[11]_i_33_n_0 ,\square_wave[11]_i_34_n_0 ,\square_wave[11]_i_35_n_0 ,\square_wave[11]_i_36_n_0 }),
        .O(\NLW_square_wave_reg[11]_i_24_O_UNCONNECTED [3:0]),
        .S({\square_wave[11]_i_37_n_0 ,\square_wave[11]_i_38_n_0 ,\square_wave[11]_i_39_n_0 ,\square_wave[11]_i_40_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \square_wave_reg[11]_i_3 
       (.CI(\square_wave_reg[11]_i_6_n_0 ),
        .CO({\square_wave_reg[11]_i_3_n_0 ,\square_wave_reg[11]_i_3_n_1 ,\square_wave_reg[11]_i_3_n_2 ,\square_wave_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\square_wave[11]_i_7_n_0 ,\square_wave[11]_i_8_n_0 ,\square_wave[11]_i_9_n_0 ,\square_wave[11]_i_10_n_0 }),
        .O(\NLW_square_wave_reg[11]_i_3_O_UNCONNECTED [3:0]),
        .S({\square_wave[11]_i_11_n_0 ,\square_wave[11]_i_12_n_0 ,\square_wave[11]_i_13_n_0 ,\square_wave[11]_i_14_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \square_wave_reg[11]_i_6 
       (.CI(\square_wave_reg[11]_i_15_n_0 ),
        .CO({\square_wave_reg[11]_i_6_n_0 ,\square_wave_reg[11]_i_6_n_1 ,\square_wave_reg[11]_i_6_n_2 ,\square_wave_reg[11]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\square_wave[11]_i_16_n_0 ,\square_wave[11]_i_17_n_0 ,\square_wave[11]_i_18_n_0 ,\square_wave[11]_i_19_n_0 }),
        .O(\NLW_square_wave_reg[11]_i_6_O_UNCONNECTED [3:0]),
        .S({\square_wave[11]_i_20_n_0 ,\square_wave[11]_i_21_n_0 ,\square_wave[11]_i_22_n_0 ,\square_wave[11]_i_23_n_0 }));
endmodule

(* ORIG_REF_NAME = "costas_loop" *) 
module design_1_PSK_DM_0_0_costas_loop
   (rst_n_0,
    Q,
    clk,
    pm_data_in,
    rst_n,
    \phase_adjust_reg[0]_0 );
  output rst_n_0;
  output [15:0]Q;
  input clk;
  input [15:0]pm_data_in;
  input rst_n;
  input \phase_adjust_reg[0]_0 ;

  wire [15:0]Q;
  wire clk;
  wire [15:0]cosine_wave;
  wire \cosine_wave[0]_i_2_n_0 ;
  wire \cosine_wave[0]_i_3_n_0 ;
  wire \cosine_wave[10]_i_1_n_0 ;
  wire \cosine_wave[10]_i_2_n_0 ;
  wire \cosine_wave[10]_i_3_n_0 ;
  wire \cosine_wave[11]_i_1_n_0 ;
  wire \cosine_wave[11]_i_2_n_0 ;
  wire \cosine_wave[11]_i_3_n_0 ;
  wire \cosine_wave[12]_i_1_n_0 ;
  wire \cosine_wave[12]_i_2_n_0 ;
  wire \cosine_wave[12]_i_3_n_0 ;
  wire \cosine_wave[13]_i_2_n_0 ;
  wire \cosine_wave[13]_i_3_n_0 ;
  wire \cosine_wave[13]_i_4_n_0 ;
  wire \cosine_wave[13]_i_5_n_0 ;
  wire \cosine_wave[13]_i_6_n_0 ;
  wire \cosine_wave[14]_i_1_n_0 ;
  wire \cosine_wave[14]_i_2_n_0 ;
  wire \cosine_wave[15]_i_1_n_0 ;
  wire \cosine_wave[15]_i_2_n_0 ;
  wire \cosine_wave[1]_i_1_n_0 ;
  wire \cosine_wave[1]_i_2_n_0 ;
  wire \cosine_wave[1]_i_3_n_0 ;
  wire \cosine_wave[2]_i_1_n_0 ;
  wire \cosine_wave[2]_i_2_n_0 ;
  wire \cosine_wave[2]_i_3_n_0 ;
  wire \cosine_wave[3]_i_1_n_0 ;
  wire \cosine_wave[3]_i_2_n_0 ;
  wire \cosine_wave[3]_i_3_n_0 ;
  wire \cosine_wave[4]_i_1_n_0 ;
  wire \cosine_wave[4]_i_2_n_0 ;
  wire \cosine_wave[4]_i_3_n_0 ;
  wire \cosine_wave[5]_i_1_n_0 ;
  wire \cosine_wave[5]_i_2_n_0 ;
  wire \cosine_wave[5]_i_3_n_0 ;
  wire \cosine_wave[6]_i_1_n_0 ;
  wire \cosine_wave[6]_i_2_n_0 ;
  wire \cosine_wave[6]_i_3_n_0 ;
  wire \cosine_wave[7]_i_1_n_0 ;
  wire \cosine_wave[7]_i_2_n_0 ;
  wire \cosine_wave[7]_i_3_n_0 ;
  wire \cosine_wave[8]_i_1_n_0 ;
  wire \cosine_wave[8]_i_2_n_0 ;
  wire \cosine_wave[8]_i_3_n_0 ;
  wire \cosine_wave[9]_i_1_n_0 ;
  wire \cosine_wave[9]_i_2_n_0 ;
  wire \cosine_wave[9]_i_3_n_0 ;
  wire \cosine_wave_reg[0]_i_1_n_0 ;
  wire \cosine_wave_reg[13]_i_1_n_0 ;
  wire [33:18]fir_tdata_i_i_mixer;
  wire [33:18]fir_tdata_i_q_mixer;
  wire [31:16]i_mixer;
  wire i_mixer0_n_100;
  wire i_mixer0_n_101;
  wire i_mixer0_n_102;
  wire i_mixer0_n_103;
  wire i_mixer0_n_104;
  wire i_mixer0_n_105;
  wire i_mixer0_n_74;
  wire i_mixer0_n_75;
  wire i_mixer0_n_76;
  wire i_mixer0_n_77;
  wire i_mixer0_n_78;
  wire i_mixer0_n_79;
  wire i_mixer0_n_80;
  wire i_mixer0_n_81;
  wire i_mixer0_n_82;
  wire i_mixer0_n_83;
  wire i_mixer0_n_84;
  wire i_mixer0_n_85;
  wire i_mixer0_n_86;
  wire i_mixer0_n_87;
  wire i_mixer0_n_88;
  wire i_mixer0_n_89;
  wire i_mixer0_n_90;
  wire i_mixer0_n_91;
  wire i_mixer0_n_92;
  wire i_mixer0_n_93;
  wire i_mixer0_n_94;
  wire i_mixer0_n_95;
  wire i_mixer0_n_96;
  wire i_mixer0_n_97;
  wire i_mixer0_n_98;
  wire i_mixer0_n_99;
  wire mixed_valid_r;
  wire mixed_valid_r_i_1_n_0;
  wire p_0_in0;
  wire [15:0]p_0_out;
  wire \phase_accumulator[11]_i_2_n_0 ;
  wire \phase_accumulator[11]_i_3_n_0 ;
  wire \phase_accumulator[11]_i_4_n_0 ;
  wire \phase_accumulator[11]_i_5_n_0 ;
  wire \phase_accumulator[11]_i_6_n_0 ;
  wire \phase_accumulator[11]_i_7_n_0 ;
  wire \phase_accumulator[11]_i_8_n_0 ;
  wire \phase_accumulator[11]_i_9_n_0 ;
  wire \phase_accumulator[15]_i_2_n_0 ;
  wire \phase_accumulator[15]_i_3_n_0 ;
  wire \phase_accumulator[15]_i_4_n_0 ;
  wire \phase_accumulator[15]_i_5_n_0 ;
  wire \phase_accumulator[15]_i_6_n_0 ;
  wire \phase_accumulator[15]_i_7_n_0 ;
  wire \phase_accumulator[15]_i_8_n_0 ;
  wire \phase_accumulator[15]_i_9_n_0 ;
  wire \phase_accumulator[19]_i_2_n_0 ;
  wire \phase_accumulator[19]_i_3_n_0 ;
  wire \phase_accumulator[19]_i_4_n_0 ;
  wire \phase_accumulator[19]_i_5_n_0 ;
  wire \phase_accumulator[19]_i_6_n_0 ;
  wire \phase_accumulator[19]_i_7_n_0 ;
  wire \phase_accumulator[19]_i_8_n_0 ;
  wire \phase_accumulator[19]_i_9_n_0 ;
  wire \phase_accumulator[23]_i_2_n_0 ;
  wire \phase_accumulator[23]_i_3_n_0 ;
  wire \phase_accumulator[23]_i_4_n_0 ;
  wire \phase_accumulator[23]_i_5_n_0 ;
  wire \phase_accumulator[23]_i_6_n_0 ;
  wire \phase_accumulator[23]_i_7_n_0 ;
  wire \phase_accumulator[23]_i_8_n_0 ;
  wire \phase_accumulator[23]_i_9_n_0 ;
  wire \phase_accumulator[27]_i_2_n_0 ;
  wire \phase_accumulator[27]_i_3_n_0 ;
  wire \phase_accumulator[27]_i_4_n_0 ;
  wire \phase_accumulator[27]_i_5_n_0 ;
  wire \phase_accumulator[27]_i_6_n_0 ;
  wire \phase_accumulator[27]_i_7_n_0 ;
  wire \phase_accumulator[27]_i_8_n_0 ;
  wire \phase_accumulator[27]_i_9_n_0 ;
  wire \phase_accumulator[31]_i_2_n_0 ;
  wire \phase_accumulator[31]_i_3_n_0 ;
  wire \phase_accumulator[31]_i_4_n_0 ;
  wire \phase_accumulator[31]_i_5_n_0 ;
  wire \phase_accumulator[31]_i_6_n_0 ;
  wire \phase_accumulator[31]_i_7_n_0 ;
  wire \phase_accumulator[31]_i_8_n_0 ;
  wire \phase_accumulator[3]_i_2_n_0 ;
  wire \phase_accumulator[3]_i_3_n_0 ;
  wire \phase_accumulator[3]_i_4_n_0 ;
  wire \phase_accumulator[3]_i_5_n_0 ;
  wire \phase_accumulator[7]_i_2_n_0 ;
  wire \phase_accumulator[7]_i_3_n_0 ;
  wire \phase_accumulator[7]_i_4_n_0 ;
  wire \phase_accumulator[7]_i_5_n_0 ;
  wire \phase_accumulator[7]_i_6_n_0 ;
  wire \phase_accumulator[7]_i_7_n_0 ;
  wire \phase_accumulator[7]_i_8_n_0 ;
  wire \phase_accumulator[7]_i_9_n_0 ;
  wire \phase_accumulator_reg[11]_i_1_n_0 ;
  wire \phase_accumulator_reg[11]_i_1_n_1 ;
  wire \phase_accumulator_reg[11]_i_1_n_2 ;
  wire \phase_accumulator_reg[11]_i_1_n_3 ;
  wire \phase_accumulator_reg[11]_i_1_n_4 ;
  wire \phase_accumulator_reg[11]_i_1_n_5 ;
  wire \phase_accumulator_reg[11]_i_1_n_6 ;
  wire \phase_accumulator_reg[11]_i_1_n_7 ;
  wire \phase_accumulator_reg[15]_i_1_n_0 ;
  wire \phase_accumulator_reg[15]_i_1_n_1 ;
  wire \phase_accumulator_reg[15]_i_1_n_2 ;
  wire \phase_accumulator_reg[15]_i_1_n_3 ;
  wire \phase_accumulator_reg[15]_i_1_n_4 ;
  wire \phase_accumulator_reg[15]_i_1_n_5 ;
  wire \phase_accumulator_reg[15]_i_1_n_6 ;
  wire \phase_accumulator_reg[15]_i_1_n_7 ;
  wire \phase_accumulator_reg[19]_i_1_n_0 ;
  wire \phase_accumulator_reg[19]_i_1_n_1 ;
  wire \phase_accumulator_reg[19]_i_1_n_2 ;
  wire \phase_accumulator_reg[19]_i_1_n_3 ;
  wire \phase_accumulator_reg[19]_i_1_n_4 ;
  wire \phase_accumulator_reg[19]_i_1_n_5 ;
  wire \phase_accumulator_reg[19]_i_1_n_6 ;
  wire \phase_accumulator_reg[19]_i_1_n_7 ;
  wire \phase_accumulator_reg[23]_i_1_n_0 ;
  wire \phase_accumulator_reg[23]_i_1_n_1 ;
  wire \phase_accumulator_reg[23]_i_1_n_2 ;
  wire \phase_accumulator_reg[23]_i_1_n_3 ;
  wire \phase_accumulator_reg[23]_i_1_n_4 ;
  wire \phase_accumulator_reg[23]_i_1_n_5 ;
  wire \phase_accumulator_reg[23]_i_1_n_6 ;
  wire \phase_accumulator_reg[23]_i_1_n_7 ;
  wire \phase_accumulator_reg[27]_i_1_n_0 ;
  wire \phase_accumulator_reg[27]_i_1_n_1 ;
  wire \phase_accumulator_reg[27]_i_1_n_2 ;
  wire \phase_accumulator_reg[27]_i_1_n_3 ;
  wire \phase_accumulator_reg[27]_i_1_n_4 ;
  wire \phase_accumulator_reg[27]_i_1_n_5 ;
  wire \phase_accumulator_reg[27]_i_1_n_6 ;
  wire \phase_accumulator_reg[27]_i_1_n_7 ;
  wire \phase_accumulator_reg[31]_i_1_n_1 ;
  wire \phase_accumulator_reg[31]_i_1_n_2 ;
  wire \phase_accumulator_reg[31]_i_1_n_3 ;
  wire \phase_accumulator_reg[31]_i_1_n_4 ;
  wire \phase_accumulator_reg[31]_i_1_n_5 ;
  wire \phase_accumulator_reg[31]_i_1_n_6 ;
  wire \phase_accumulator_reg[31]_i_1_n_7 ;
  wire \phase_accumulator_reg[3]_i_1_n_0 ;
  wire \phase_accumulator_reg[3]_i_1_n_1 ;
  wire \phase_accumulator_reg[3]_i_1_n_2 ;
  wire \phase_accumulator_reg[3]_i_1_n_3 ;
  wire \phase_accumulator_reg[3]_i_1_n_4 ;
  wire \phase_accumulator_reg[3]_i_1_n_5 ;
  wire \phase_accumulator_reg[3]_i_1_n_6 ;
  wire \phase_accumulator_reg[3]_i_1_n_7 ;
  wire \phase_accumulator_reg[7]_i_1_n_0 ;
  wire \phase_accumulator_reg[7]_i_1_n_1 ;
  wire \phase_accumulator_reg[7]_i_1_n_2 ;
  wire \phase_accumulator_reg[7]_i_1_n_3 ;
  wire \phase_accumulator_reg[7]_i_1_n_4 ;
  wire \phase_accumulator_reg[7]_i_1_n_5 ;
  wire \phase_accumulator_reg[7]_i_1_n_6 ;
  wire \phase_accumulator_reg[7]_i_1_n_7 ;
  wire \phase_accumulator_reg_n_0_[0] ;
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
  wire \phase_accumulator_reg_n_0_[1] ;
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
  wire [31:0]phase_adjust;
  wire \phase_adjust[0]_i_1_n_0 ;
  wire \phase_adjust[10]_i_1_n_0 ;
  wire \phase_adjust[11]_i_1_n_0 ;
  wire \phase_adjust[12]_i_1_n_0 ;
  wire \phase_adjust[13]_i_1_n_0 ;
  wire \phase_adjust[14]_i_1_n_0 ;
  wire \phase_adjust[15]_i_1_n_0 ;
  wire \phase_adjust[16]_i_1_n_0 ;
  wire \phase_adjust[17]_i_1_n_0 ;
  wire \phase_adjust[18]_i_1_n_0 ;
  wire \phase_adjust[19]_i_1_n_0 ;
  wire \phase_adjust[1]_i_1_n_0 ;
  wire \phase_adjust[20]_i_1_n_0 ;
  wire \phase_adjust[21]_i_1_n_0 ;
  wire \phase_adjust[22]_i_1_n_0 ;
  wire \phase_adjust[23]_i_1_n_0 ;
  wire \phase_adjust[24]_i_1_n_0 ;
  wire \phase_adjust[25]_i_1_n_0 ;
  wire \phase_adjust[26]_i_1_n_0 ;
  wire \phase_adjust[2]_i_1_n_0 ;
  wire \phase_adjust[3]_i_1_n_0 ;
  wire \phase_adjust[4]_i_1_n_0 ;
  wire \phase_adjust[5]_i_1_n_0 ;
  wire \phase_adjust[6]_i_1_n_0 ;
  wire \phase_adjust[7]_i_1_n_0 ;
  wire \phase_adjust[8]_i_1_n_0 ;
  wire \phase_adjust[9]_i_1_n_0 ;
  wire \phase_adjust_reg[0]_0 ;
  wire phase_error0_n_100;
  wire phase_error0_n_101;
  wire phase_error0_n_102;
  wire phase_error0_n_103;
  wire phase_error0_n_104;
  wire phase_error0_n_105;
  wire phase_error0_n_74;
  wire phase_error0_n_75;
  wire phase_error0_n_76;
  wire phase_error0_n_77;
  wire phase_error0_n_78;
  wire phase_error0_n_79;
  wire phase_error0_n_80;
  wire phase_error0_n_81;
  wire phase_error0_n_82;
  wire phase_error0_n_83;
  wire phase_error0_n_84;
  wire phase_error0_n_85;
  wire phase_error0_n_86;
  wire phase_error0_n_87;
  wire phase_error0_n_88;
  wire phase_error0_n_89;
  wire phase_error0_n_90;
  wire phase_error0_n_91;
  wire phase_error0_n_92;
  wire phase_error0_n_93;
  wire phase_error0_n_94;
  wire phase_error0_n_95;
  wire phase_error0_n_96;
  wire phase_error0_n_97;
  wire phase_error0_n_98;
  wire phase_error0_n_99;
  wire [15:0]pm_data_in;
  wire [31:16]q_mixer;
  wire q_mixer0_n_100;
  wire q_mixer0_n_101;
  wire q_mixer0_n_102;
  wire q_mixer0_n_103;
  wire q_mixer0_n_104;
  wire q_mixer0_n_105;
  wire q_mixer0_n_74;
  wire q_mixer0_n_75;
  wire q_mixer0_n_76;
  wire q_mixer0_n_77;
  wire q_mixer0_n_78;
  wire q_mixer0_n_79;
  wire q_mixer0_n_80;
  wire q_mixer0_n_81;
  wire q_mixer0_n_82;
  wire q_mixer0_n_83;
  wire q_mixer0_n_84;
  wire q_mixer0_n_85;
  wire q_mixer0_n_86;
  wire q_mixer0_n_87;
  wire q_mixer0_n_88;
  wire q_mixer0_n_89;
  wire q_mixer0_n_90;
  wire q_mixer0_n_91;
  wire q_mixer0_n_92;
  wire q_mixer0_n_93;
  wire q_mixer0_n_94;
  wire q_mixer0_n_95;
  wire q_mixer0_n_96;
  wire q_mixer0_n_97;
  wire q_mixer0_n_98;
  wire q_mixer0_n_99;
  wire rst_n;
  wire rst_n_0;
  wire [7:0]sel;
  wire [15:0]sine_wave;
  wire \sine_wave[0]_i_2_n_0 ;
  wire \sine_wave[0]_i_3_n_0 ;
  wire \sine_wave[10]_i_2_n_0 ;
  wire \sine_wave[10]_i_3_n_0 ;
  wire \sine_wave[10]_i_4_n_0 ;
  wire \sine_wave[10]_i_5_n_0 ;
  wire \sine_wave[11]_i_2_n_0 ;
  wire \sine_wave[11]_i_3_n_0 ;
  wire \sine_wave[11]_i_4_n_0 ;
  wire \sine_wave[11]_i_5_n_0 ;
  wire \sine_wave[12]_i_2_n_0 ;
  wire \sine_wave[12]_i_3_n_0 ;
  wire \sine_wave[12]_i_4_n_0 ;
  wire \sine_wave[12]_i_5_n_0 ;
  wire \sine_wave[13]_i_2_n_0 ;
  wire \sine_wave[13]_i_3_n_0 ;
  wire \sine_wave[13]_i_4_n_0 ;
  wire \sine_wave[13]_i_5_n_0 ;
  wire \sine_wave[14]_i_2_n_0 ;
  wire \sine_wave[14]_i_3_n_0 ;
  wire \sine_wave[15]_i_2_n_0 ;
  wire \sine_wave[1]_i_2_n_0 ;
  wire \sine_wave[1]_i_3_n_0 ;
  wire \sine_wave[1]_i_4_n_0 ;
  wire \sine_wave[1]_i_5_n_0 ;
  wire \sine_wave[2]_i_2_n_0 ;
  wire \sine_wave[2]_i_3_n_0 ;
  wire \sine_wave[2]_i_4_n_0 ;
  wire \sine_wave[2]_i_5_n_0 ;
  wire \sine_wave[3]_i_2_n_0 ;
  wire \sine_wave[3]_i_3_n_0 ;
  wire \sine_wave[3]_i_4_n_0 ;
  wire \sine_wave[3]_i_5_n_0 ;
  wire \sine_wave[4]_i_2_n_0 ;
  wire \sine_wave[4]_i_3_n_0 ;
  wire \sine_wave[4]_i_4_n_0 ;
  wire \sine_wave[4]_i_5_n_0 ;
  wire \sine_wave[5]_i_2_n_0 ;
  wire \sine_wave[5]_i_3_n_0 ;
  wire \sine_wave[5]_i_4_n_0 ;
  wire \sine_wave[5]_i_5_n_0 ;
  wire \sine_wave[6]_i_2_n_0 ;
  wire \sine_wave[6]_i_3_n_0 ;
  wire \sine_wave[6]_i_4_n_0 ;
  wire \sine_wave[6]_i_5_n_0 ;
  wire \sine_wave[7]_i_2_n_0 ;
  wire \sine_wave[7]_i_3_n_0 ;
  wire \sine_wave[7]_i_4_n_0 ;
  wire \sine_wave[7]_i_5_n_0 ;
  wire \sine_wave[8]_i_2_n_0 ;
  wire \sine_wave[8]_i_3_n_0 ;
  wire \sine_wave[8]_i_4_n_0 ;
  wire \sine_wave[8]_i_5_n_0 ;
  wire \sine_wave[9]_i_2_n_0 ;
  wire \sine_wave[9]_i_3_n_0 ;
  wire \sine_wave[9]_i_4_n_0 ;
  wire \sine_wave[9]_i_5_n_0 ;
  wire NLW_fir_lpf_psk_psk2_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_lpf_psk_psk2_s_axis_data_tready_UNCONNECTED;
  wire [39:0]NLW_fir_lpf_psk_psk2_m_axis_data_tdata_UNCONNECTED;
  wire NLW_fir_lpf_psk_psk3_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_lpf_psk_psk3_s_axis_data_tready_UNCONNECTED;
  wire [39:0]NLW_fir_lpf_psk_psk3_m_axis_data_tdata_UNCONNECTED;
  wire NLW_i_mixer0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_i_mixer0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_i_mixer0_OVERFLOW_UNCONNECTED;
  wire NLW_i_mixer0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_i_mixer0_PATTERNDETECT_UNCONNECTED;
  wire NLW_i_mixer0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_i_mixer0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_i_mixer0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_i_mixer0_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_i_mixer0_P_UNCONNECTED;
  wire [47:0]NLW_i_mixer0_PCOUT_UNCONNECTED;
  wire [3:3]\NLW_phase_accumulator_reg[31]_i_1_CO_UNCONNECTED ;
  wire NLW_phase_error0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_phase_error0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_phase_error0_OVERFLOW_UNCONNECTED;
  wire NLW_phase_error0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_phase_error0_PATTERNDETECT_UNCONNECTED;
  wire NLW_phase_error0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_phase_error0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_phase_error0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_phase_error0_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_phase_error0_P_UNCONNECTED;
  wire [47:0]NLW_phase_error0_PCOUT_UNCONNECTED;
  wire NLW_q_mixer0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_q_mixer0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_q_mixer0_OVERFLOW_UNCONNECTED;
  wire NLW_q_mixer0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_q_mixer0_PATTERNDETECT_UNCONNECTED;
  wire NLW_q_mixer0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_q_mixer0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_q_mixer0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_q_mixer0_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_q_mixer0_P_UNCONNECTED;
  wire [47:0]NLW_q_mixer0_PCOUT_UNCONNECTED;

  FDRE \carrier_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(sine_wave[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \carrier_out_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(sine_wave[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \carrier_out_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(sine_wave[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \carrier_out_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(sine_wave[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \carrier_out_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(sine_wave[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \carrier_out_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(sine_wave[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \carrier_out_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(sine_wave[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \carrier_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(sine_wave[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \carrier_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(sine_wave[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \carrier_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(sine_wave[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \carrier_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(sine_wave[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \carrier_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(sine_wave[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \carrier_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(sine_wave[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \carrier_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(sine_wave[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \carrier_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(sine_wave[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \carrier_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(sine_wave[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h75A0E4D4DB39C17D)) 
    \cosine_wave[0]_i_2 
       (.I0(sel[6]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[2]),
        .I4(sel[0]),
        .I5(sel[1]),
        .O(\cosine_wave[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9C2B0583DB27AEEC)) 
    \cosine_wave[0]_i_3 
       (.I0(sel[6]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(sel[2]),
        .O(\cosine_wave[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cosine_wave[10]_i_1 
       (.I0(\cosine_wave[10]_i_2_n_0 ),
        .I1(\sine_wave[10]_i_2_n_0 ),
        .I2(sel[5]),
        .I3(\cosine_wave[10]_i_3_n_0 ),
        .I4(sel[6]),
        .I5(\sine_wave[10]_i_3_n_0 ),
        .O(\cosine_wave[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8BD0742B7A2485D)) 
    \cosine_wave[10]_i_2 
       (.I0(sel[4]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(\cosine_wave[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h788F37488770C8B6)) 
    \cosine_wave[10]_i_3 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(\cosine_wave[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cosine_wave[11]_i_1 
       (.I0(\cosine_wave[11]_i_2_n_0 ),
        .I1(\sine_wave[11]_i_2_n_0 ),
        .I2(sel[5]),
        .I3(\cosine_wave[11]_i_3_n_0 ),
        .I4(sel[6]),
        .I5(\sine_wave[11]_i_3_n_0 ),
        .O(\cosine_wave[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAAEDFD45551202)) 
    \cosine_wave[11]_i_2 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[1]),
        .I3(sel[0]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(\cosine_wave[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC4BC73C43B438C3A)) 
    \cosine_wave[11]_i_3 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(\cosine_wave[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cosine_wave[12]_i_1 
       (.I0(\cosine_wave[12]_i_2_n_0 ),
        .I1(\sine_wave[12]_i_2_n_0 ),
        .I2(sel[5]),
        .I3(\cosine_wave[12]_i_3_n_0 ),
        .I4(sel[6]),
        .I5(\sine_wave[12]_i_3_n_0 ),
        .O(\cosine_wave[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEABBB11115444)) 
    \cosine_wave[12]_i_2 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[1]),
        .I3(sel[0]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(\cosine_wave[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9926AA6666D95598)) 
    \cosine_wave[12]_i_3 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(\cosine_wave[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8888888B8BBBBBB)) 
    \cosine_wave[13]_i_2 
       (.I0(\cosine_wave[13]_i_4_n_0 ),
        .I1(sel[6]),
        .I2(\cosine_wave[13]_i_5_n_0 ),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[7]),
        .O(\cosine_wave[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \cosine_wave[13]_i_3 
       (.I0(sel[4]),
        .I1(sel[7]),
        .I2(sel[3]),
        .I3(\cosine_wave[13]_i_6_n_0 ),
        .I4(sel[6]),
        .I5(\sine_wave[13]_i_2_n_0 ),
        .O(\cosine_wave[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44626622BB9D99DC)) 
    \cosine_wave[13]_i_4 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(\cosine_wave[13]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \cosine_wave[13]_i_5 
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[7]),
        .O(\cosine_wave[13]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF807)) 
    \cosine_wave[13]_i_6 
       (.I0(sel[1]),
        .I1(sel[0]),
        .I2(sel[2]),
        .I3(sel[7]),
        .O(\cosine_wave[13]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFC8830BB)) 
    \cosine_wave[14]_i_1 
       (.I0(\sine_wave[14]_i_2_n_0 ),
        .I1(sel[5]),
        .I2(\cosine_wave[14]_i_2_n_0 ),
        .I3(sel[6]),
        .I4(sel[7]),
        .O(\cosine_wave[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA88888855777776)) 
    \cosine_wave[14]_i_2 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(\cosine_wave[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100FFFFFFFE0000)) 
    \cosine_wave[15]_i_1 
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(\cosine_wave[15]_i_2_n_0 ),
        .I4(sel[6]),
        .I5(sel[7]),
        .O(\cosine_wave[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00FE)) 
    \cosine_wave[15]_i_2 
       (.I0(sel[0]),
        .I1(sel[2]),
        .I2(sel[1]),
        .I3(sel[7]),
        .O(\cosine_wave[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cosine_wave[1]_i_1 
       (.I0(\cosine_wave[1]_i_2_n_0 ),
        .I1(\sine_wave[1]_i_2_n_0 ),
        .I2(sel[5]),
        .I3(\cosine_wave[1]_i_3_n_0 ),
        .I4(sel[6]),
        .I5(\sine_wave[1]_i_3_n_0 ),
        .O(\cosine_wave[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h315196E484718D8F)) 
    \cosine_wave[1]_i_2 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(\cosine_wave[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFD6F4106AE2A264)) 
    \cosine_wave[1]_i_3 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[1]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[0]),
        .O(\cosine_wave[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cosine_wave[2]_i_1 
       (.I0(\cosine_wave[2]_i_2_n_0 ),
        .I1(\sine_wave[2]_i_2_n_0 ),
        .I2(sel[5]),
        .I3(\cosine_wave[2]_i_3_n_0 ),
        .I4(sel[6]),
        .I5(\sine_wave[2]_i_3_n_0 ),
        .O(\cosine_wave[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD45B6B2EE82467FB)) 
    \cosine_wave[2]_i_2 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[2]),
        .I3(sel[0]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(\cosine_wave[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0FE0A7866939BD8E)) 
    \cosine_wave[2]_i_3 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[7]),
        .I3(sel[0]),
        .I4(sel[2]),
        .I5(sel[1]),
        .O(\cosine_wave[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cosine_wave[3]_i_1 
       (.I0(\cosine_wave[3]_i_2_n_0 ),
        .I1(\sine_wave[3]_i_2_n_0 ),
        .I2(sel[5]),
        .I3(\cosine_wave[3]_i_3_n_0 ),
        .I4(sel[6]),
        .I5(\sine_wave[3]_i_3_n_0 ),
        .O(\cosine_wave[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0B32FCACFCDD0353)) 
    \cosine_wave[3]_i_2 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(\cosine_wave[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h27D9BF41956E6E90)) 
    \cosine_wave[3]_i_3 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[7]),
        .I4(sel[2]),
        .I5(sel[1]),
        .O(\cosine_wave[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cosine_wave[4]_i_1 
       (.I0(\cosine_wave[4]_i_2_n_0 ),
        .I1(\sine_wave[4]_i_2_n_0 ),
        .I2(sel[5]),
        .I3(\cosine_wave[4]_i_3_n_0 ),
        .I4(sel[6]),
        .I5(\sine_wave[4]_i_3_n_0 ),
        .O(\cosine_wave[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8C4973B663909C6F)) 
    \cosine_wave[4]_i_2 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(\cosine_wave[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6C8EAAAE93715550)) 
    \cosine_wave[4]_i_3 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(\cosine_wave[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cosine_wave[5]_i_1 
       (.I0(\cosine_wave[5]_i_2_n_0 ),
        .I1(\sine_wave[5]_i_2_n_0 ),
        .I2(sel[5]),
        .I3(\cosine_wave[5]_i_3_n_0 ),
        .I4(sel[6]),
        .I5(\sine_wave[5]_i_3_n_0 ),
        .O(\cosine_wave[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB69F10744960EF8B)) 
    \cosine_wave[5]_i_2 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(\cosine_wave[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h38DA5C96C725A368)) 
    \cosine_wave[5]_i_3 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(\cosine_wave[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cosine_wave[6]_i_1 
       (.I0(\cosine_wave[6]_i_2_n_0 ),
        .I1(\sine_wave[6]_i_2_n_0 ),
        .I2(sel[5]),
        .I3(\cosine_wave[6]_i_3_n_0 ),
        .I4(sel[6]),
        .I5(\sine_wave[6]_i_3_n_0 ),
        .O(\cosine_wave[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA95556AA7F2680D9)) 
    \cosine_wave[6]_i_2 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(\cosine_wave[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBB11022644EEFDD8)) 
    \cosine_wave[6]_i_3 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(\cosine_wave[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cosine_wave[7]_i_1 
       (.I0(\cosine_wave[7]_i_2_n_0 ),
        .I1(\sine_wave[7]_i_2_n_0 ),
        .I2(sel[5]),
        .I3(\cosine_wave[7]_i_3_n_0 ),
        .I4(sel[6]),
        .I5(\sine_wave[7]_i_3_n_0 ),
        .O(\cosine_wave[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB392DF554C6D20AA)) 
    \cosine_wave[7]_i_2 
       (.I0(sel[4]),
        .I1(sel[0]),
        .I2(sel[2]),
        .I3(sel[1]),
        .I4(sel[3]),
        .I5(sel[7]),
        .O(\cosine_wave[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1BA291A6E45D6E58)) 
    \cosine_wave[7]_i_3 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(\cosine_wave[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cosine_wave[8]_i_1 
       (.I0(\cosine_wave[8]_i_2_n_0 ),
        .I1(\sine_wave[8]_i_2_n_0 ),
        .I2(sel[5]),
        .I3(\cosine_wave[8]_i_3_n_0 ),
        .I4(sel[6]),
        .I5(\sine_wave[8]_i_3_n_0 ),
        .O(\cosine_wave[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFB040C0104FBF3F)) 
    \cosine_wave[8]_i_2 
       (.I0(sel[2]),
        .I1(sel[0]),
        .I2(sel[4]),
        .I3(sel[1]),
        .I4(sel[3]),
        .I5(sel[7]),
        .O(\cosine_wave[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1E34BCB8E1CB4346)) 
    \cosine_wave[8]_i_3 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(\cosine_wave[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cosine_wave[9]_i_1 
       (.I0(\cosine_wave[9]_i_2_n_0 ),
        .I1(\sine_wave[9]_i_2_n_0 ),
        .I2(sel[5]),
        .I3(\cosine_wave[9]_i_3_n_0 ),
        .I4(sel[6]),
        .I5(\sine_wave[9]_i_3_n_0 ),
        .O(\cosine_wave[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBE0AE95F41F516A0)) 
    \cosine_wave[9]_i_2 
       (.I0(sel[4]),
        .I1(sel[2]),
        .I2(sel[1]),
        .I3(sel[3]),
        .I4(sel[0]),
        .I5(sel[7]),
        .O(\cosine_wave[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45C7B038BA384FC6)) 
    \cosine_wave[9]_i_3 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(\cosine_wave[9]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cosine_wave_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cosine_wave_reg[0]_i_1_n_0 ),
        .Q(cosine_wave[0]));
  MUXF7 \cosine_wave_reg[0]_i_1 
       (.I0(\cosine_wave[0]_i_2_n_0 ),
        .I1(\cosine_wave[0]_i_3_n_0 ),
        .O(\cosine_wave_reg[0]_i_1_n_0 ),
        .S(sel[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cosine_wave_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cosine_wave[10]_i_1_n_0 ),
        .Q(cosine_wave[10]));
  FDCE #(
    .INIT(1'b0)) 
    \cosine_wave_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cosine_wave[11]_i_1_n_0 ),
        .Q(cosine_wave[11]));
  FDCE #(
    .INIT(1'b0)) 
    \cosine_wave_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cosine_wave[12]_i_1_n_0 ),
        .Q(cosine_wave[12]));
  FDCE #(
    .INIT(1'b0)) 
    \cosine_wave_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cosine_wave_reg[13]_i_1_n_0 ),
        .Q(cosine_wave[13]));
  MUXF7 \cosine_wave_reg[13]_i_1 
       (.I0(\cosine_wave[13]_i_2_n_0 ),
        .I1(\cosine_wave[13]_i_3_n_0 ),
        .O(\cosine_wave_reg[13]_i_1_n_0 ),
        .S(sel[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cosine_wave_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cosine_wave[14]_i_1_n_0 ),
        .Q(cosine_wave[14]));
  FDCE #(
    .INIT(1'b0)) 
    \cosine_wave_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cosine_wave[15]_i_1_n_0 ),
        .Q(cosine_wave[15]));
  FDCE #(
    .INIT(1'b0)) 
    \cosine_wave_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cosine_wave[1]_i_1_n_0 ),
        .Q(cosine_wave[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cosine_wave_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cosine_wave[2]_i_1_n_0 ),
        .Q(cosine_wave[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cosine_wave_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cosine_wave[3]_i_1_n_0 ),
        .Q(cosine_wave[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cosine_wave_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cosine_wave[4]_i_1_n_0 ),
        .Q(cosine_wave[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cosine_wave_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cosine_wave[5]_i_1_n_0 ),
        .Q(cosine_wave[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cosine_wave_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cosine_wave[6]_i_1_n_0 ),
        .Q(cosine_wave[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cosine_wave_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cosine_wave[7]_i_1_n_0 ),
        .Q(cosine_wave[7]));
  FDCE #(
    .INIT(1'b0)) 
    \cosine_wave_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cosine_wave[8]_i_1_n_0 ),
        .Q(cosine_wave[8]));
  FDCE #(
    .INIT(1'b0)) 
    \cosine_wave_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cosine_wave[9]_i_1_n_0 ),
        .Q(cosine_wave[9]));
  (* CHECK_LICENSE_TYPE = "fir_lpf_psk,fir_compiler_v7_2_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_23,Vivado 2024.2" *) 
  design_1_PSK_DM_0_0_fir_lpf_psk fir_lpf_psk_psk2
       (.aclk(clk),
        .m_axis_data_tdata({NLW_fir_lpf_psk_psk2_m_axis_data_tdata_UNCONNECTED[39:34],fir_tdata_i_i_mixer,NLW_fir_lpf_psk_psk2_m_axis_data_tdata_UNCONNECTED[17:0]}),
        .m_axis_data_tvalid(NLW_fir_lpf_psk_psk2_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(i_mixer),
        .s_axis_data_tready(NLW_fir_lpf_psk_psk2_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(mixed_valid_r));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk2_i_1
       (.I0(i_mixer0_n_74),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(i_mixer[31]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk2_i_10
       (.I0(i_mixer0_n_83),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(i_mixer[22]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk2_i_11
       (.I0(i_mixer0_n_84),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(i_mixer[21]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk2_i_12
       (.I0(i_mixer0_n_85),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(i_mixer[20]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk2_i_13
       (.I0(i_mixer0_n_86),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(i_mixer[19]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk2_i_14
       (.I0(i_mixer0_n_87),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(i_mixer[18]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk2_i_15
       (.I0(i_mixer0_n_88),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(i_mixer[17]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk2_i_16
       (.I0(i_mixer0_n_89),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(i_mixer[16]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk2_i_2
       (.I0(i_mixer0_n_75),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(i_mixer[30]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk2_i_3
       (.I0(i_mixer0_n_76),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(i_mixer[29]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk2_i_4
       (.I0(i_mixer0_n_77),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(i_mixer[28]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk2_i_5
       (.I0(i_mixer0_n_78),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(i_mixer[27]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk2_i_6
       (.I0(i_mixer0_n_79),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(i_mixer[26]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk2_i_7
       (.I0(i_mixer0_n_80),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(i_mixer[25]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk2_i_8
       (.I0(i_mixer0_n_81),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(i_mixer[24]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk2_i_9
       (.I0(i_mixer0_n_82),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(i_mixer[23]));
  (* CHECK_LICENSE_TYPE = "fir_lpf_psk,fir_compiler_v7_2_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_23,Vivado 2024.2" *) 
  design_1_PSK_DM_0_0_fir_lpf_psk_HD1 fir_lpf_psk_psk3
       (.aclk(clk),
        .m_axis_data_tdata({NLW_fir_lpf_psk_psk3_m_axis_data_tdata_UNCONNECTED[39:34],fir_tdata_i_q_mixer,NLW_fir_lpf_psk_psk3_m_axis_data_tdata_UNCONNECTED[17:0]}),
        .m_axis_data_tvalid(NLW_fir_lpf_psk_psk3_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(q_mixer),
        .s_axis_data_tready(NLW_fir_lpf_psk_psk3_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(mixed_valid_r));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk3_i_1
       (.I0(q_mixer0_n_74),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(q_mixer[31]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk3_i_10
       (.I0(q_mixer0_n_83),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(q_mixer[22]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk3_i_11
       (.I0(q_mixer0_n_84),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(q_mixer[21]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk3_i_12
       (.I0(q_mixer0_n_85),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(q_mixer[20]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk3_i_13
       (.I0(q_mixer0_n_86),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(q_mixer[19]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk3_i_14
       (.I0(q_mixer0_n_87),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(q_mixer[18]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk3_i_15
       (.I0(q_mixer0_n_88),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(q_mixer[17]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk3_i_16
       (.I0(q_mixer0_n_89),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(q_mixer[16]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk3_i_2
       (.I0(q_mixer0_n_75),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(q_mixer[30]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk3_i_3
       (.I0(q_mixer0_n_76),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(q_mixer[29]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk3_i_4
       (.I0(q_mixer0_n_77),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(q_mixer[28]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk3_i_5
       (.I0(q_mixer0_n_78),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(q_mixer[27]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk3_i_6
       (.I0(q_mixer0_n_79),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(q_mixer[26]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk3_i_7
       (.I0(q_mixer0_n_80),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(q_mixer[25]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk3_i_8
       (.I0(q_mixer0_n_81),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(q_mixer[24]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fir_lpf_psk_psk3_i_9
       (.I0(q_mixer0_n_82),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(q_mixer[23]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
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
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    i_mixer0
       (.A({pm_data_in[15],pm_data_in[15],pm_data_in[15],pm_data_in[15],pm_data_in[15],pm_data_in[15],pm_data_in[15],pm_data_in[15],pm_data_in[15],pm_data_in[15],pm_data_in[15],pm_data_in[15],pm_data_in[15],pm_data_in[15],pm_data_in}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_i_mixer0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({sine_wave[15],sine_wave[15],sine_wave}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_i_mixer0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_i_mixer0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_i_mixer0_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_i_mixer0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_i_mixer0_OVERFLOW_UNCONNECTED),
        .P({NLW_i_mixer0_P_UNCONNECTED[47:32],i_mixer0_n_74,i_mixer0_n_75,i_mixer0_n_76,i_mixer0_n_77,i_mixer0_n_78,i_mixer0_n_79,i_mixer0_n_80,i_mixer0_n_81,i_mixer0_n_82,i_mixer0_n_83,i_mixer0_n_84,i_mixer0_n_85,i_mixer0_n_86,i_mixer0_n_87,i_mixer0_n_88,i_mixer0_n_89,i_mixer0_n_90,i_mixer0_n_91,i_mixer0_n_92,i_mixer0_n_93,i_mixer0_n_94,i_mixer0_n_95,i_mixer0_n_96,i_mixer0_n_97,i_mixer0_n_98,i_mixer0_n_99,i_mixer0_n_100,i_mixer0_n_101,i_mixer0_n_102,i_mixer0_n_103,i_mixer0_n_104,i_mixer0_n_105}),
        .PATTERNBDETECT(NLW_i_mixer0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_i_mixer0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_i_mixer0_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_i_mixer0_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h2)) 
    mixed_valid_r_i_1
       (.I0(rst_n),
        .I1(mixed_valid_r),
        .O(mixed_valid_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mixed_valid_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(mixed_valid_r_i_1_n_0),
        .Q(mixed_valid_r),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \phase_accumulator[11]_i_2 
       (.I0(\phase_accumulator_reg_n_0_[10] ),
        .I1(phase_adjust[10]),
        .O(\phase_accumulator[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \phase_accumulator[11]_i_3 
       (.I0(\phase_accumulator_reg_n_0_[9] ),
        .I1(phase_adjust[9]),
        .O(\phase_accumulator[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \phase_accumulator[11]_i_4 
       (.I0(\phase_accumulator_reg_n_0_[8] ),
        .I1(phase_adjust[8]),
        .O(\phase_accumulator[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \phase_accumulator[11]_i_5 
       (.I0(phase_adjust[7]),
        .I1(\phase_accumulator_reg_n_0_[7] ),
        .O(\phase_accumulator[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \phase_accumulator[11]_i_6 
       (.I0(phase_adjust[10]),
        .I1(\phase_accumulator_reg_n_0_[10] ),
        .I2(\phase_accumulator_reg_n_0_[11] ),
        .I3(phase_adjust[11]),
        .O(\phase_accumulator[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \phase_accumulator[11]_i_7 
       (.I0(phase_adjust[9]),
        .I1(\phase_accumulator_reg_n_0_[9] ),
        .I2(\phase_accumulator_reg_n_0_[10] ),
        .I3(phase_adjust[10]),
        .O(\phase_accumulator[11]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \phase_accumulator[11]_i_8 
       (.I0(phase_adjust[8]),
        .I1(\phase_accumulator_reg_n_0_[8] ),
        .I2(\phase_accumulator_reg_n_0_[9] ),
        .I3(phase_adjust[9]),
        .O(\phase_accumulator[11]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hE11E)) 
    \phase_accumulator[11]_i_9 
       (.I0(\phase_accumulator_reg_n_0_[7] ),
        .I1(phase_adjust[7]),
        .I2(\phase_accumulator_reg_n_0_[8] ),
        .I3(phase_adjust[8]),
        .O(\phase_accumulator[11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \phase_accumulator[15]_i_2 
       (.I0(phase_adjust[14]),
        .I1(\phase_accumulator_reg_n_0_[14] ),
        .O(\phase_accumulator[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \phase_accumulator[15]_i_3 
       (.I0(phase_adjust[13]),
        .I1(\phase_accumulator_reg_n_0_[13] ),
        .O(\phase_accumulator[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \phase_accumulator[15]_i_4 
       (.I0(phase_adjust[12]),
        .I1(\phase_accumulator_reg_n_0_[12] ),
        .O(\phase_accumulator[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase_accumulator[15]_i_5 
       (.I0(\phase_accumulator_reg_n_0_[12] ),
        .I1(phase_adjust[12]),
        .O(\phase_accumulator[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE11E)) 
    \phase_accumulator[15]_i_6 
       (.I0(\phase_accumulator_reg_n_0_[14] ),
        .I1(phase_adjust[14]),
        .I2(\phase_accumulator_reg_n_0_[15] ),
        .I3(phase_adjust[15]),
        .O(\phase_accumulator[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \phase_accumulator[15]_i_7 
       (.I0(\phase_accumulator_reg_n_0_[13] ),
        .I1(phase_adjust[13]),
        .I2(\phase_accumulator_reg_n_0_[14] ),
        .I3(phase_adjust[14]),
        .O(\phase_accumulator[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \phase_accumulator[15]_i_8 
       (.I0(\phase_accumulator_reg_n_0_[12] ),
        .I1(phase_adjust[12]),
        .I2(\phase_accumulator_reg_n_0_[13] ),
        .I3(phase_adjust[13]),
        .O(\phase_accumulator[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \phase_accumulator[15]_i_9 
       (.I0(\phase_accumulator_reg_n_0_[12] ),
        .I1(phase_adjust[12]),
        .I2(phase_adjust[11]),
        .I3(\phase_accumulator_reg_n_0_[11] ),
        .O(\phase_accumulator[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \phase_accumulator[19]_i_2 
       (.I0(phase_adjust[18]),
        .I1(\phase_accumulator_reg_n_0_[18] ),
        .O(\phase_accumulator[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase_accumulator[19]_i_3 
       (.I0(\phase_accumulator_reg_n_0_[18] ),
        .I1(phase_adjust[18]),
        .O(\phase_accumulator[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \phase_accumulator[19]_i_4 
       (.I0(phase_adjust[16]),
        .I1(\phase_accumulator_reg_n_0_[16] ),
        .O(\phase_accumulator[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase_accumulator[19]_i_5 
       (.I0(\phase_accumulator_reg_n_0_[16] ),
        .I1(phase_adjust[16]),
        .O(\phase_accumulator[19]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \phase_accumulator[19]_i_6 
       (.I0(\phase_accumulator_reg_n_0_[18] ),
        .I1(phase_adjust[18]),
        .I2(\phase_accumulator_reg_n_0_[19] ),
        .I3(phase_adjust[19]),
        .O(\phase_accumulator[19]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \phase_accumulator[19]_i_7 
       (.I0(\phase_accumulator_reg_n_0_[18] ),
        .I1(phase_adjust[18]),
        .I2(phase_adjust[17]),
        .I3(\phase_accumulator_reg_n_0_[17] ),
        .O(\phase_accumulator[19]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hE11E)) 
    \phase_accumulator[19]_i_8 
       (.I0(\phase_accumulator_reg_n_0_[16] ),
        .I1(phase_adjust[16]),
        .I2(\phase_accumulator_reg_n_0_[17] ),
        .I3(phase_adjust[17]),
        .O(\phase_accumulator[19]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \phase_accumulator[19]_i_9 
       (.I0(\phase_accumulator_reg_n_0_[16] ),
        .I1(phase_adjust[16]),
        .I2(phase_adjust[15]),
        .I3(\phase_accumulator_reg_n_0_[15] ),
        .O(\phase_accumulator[19]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \phase_accumulator[23]_i_2 
       (.I0(\phase_accumulator_reg_n_0_[22] ),
        .I1(phase_adjust[22]),
        .O(\phase_accumulator[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \phase_accumulator[23]_i_3 
       (.I0(phase_adjust[21]),
        .I1(\phase_accumulator_reg_n_0_[21] ),
        .O(\phase_accumulator[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \phase_accumulator[23]_i_4 
       (.I0(phase_adjust[20]),
        .I1(\phase_accumulator_reg_n_0_[20] ),
        .O(\phase_accumulator[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \phase_accumulator[23]_i_5 
       (.I0(phase_adjust[19]),
        .I1(\phase_accumulator_reg_n_0_[19] ),
        .O(\phase_accumulator[23]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \phase_accumulator[23]_i_6 
       (.I0(phase_adjust[22]),
        .I1(\phase_accumulator_reg_n_0_[22] ),
        .I2(\phase_accumulator_reg_n_0_[23] ),
        .I3(phase_adjust[23]),
        .O(\phase_accumulator[23]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE11E)) 
    \phase_accumulator[23]_i_7 
       (.I0(\phase_accumulator_reg_n_0_[21] ),
        .I1(phase_adjust[21]),
        .I2(\phase_accumulator_reg_n_0_[22] ),
        .I3(phase_adjust[22]),
        .O(\phase_accumulator[23]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \phase_accumulator[23]_i_8 
       (.I0(\phase_accumulator_reg_n_0_[20] ),
        .I1(phase_adjust[20]),
        .I2(\phase_accumulator_reg_n_0_[21] ),
        .I3(phase_adjust[21]),
        .O(\phase_accumulator[23]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \phase_accumulator[23]_i_9 
       (.I0(\phase_accumulator_reg_n_0_[19] ),
        .I1(phase_adjust[19]),
        .I2(\phase_accumulator_reg_n_0_[20] ),
        .I3(phase_adjust[20]),
        .O(\phase_accumulator[23]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase_accumulator[27]_i_2 
       (.I0(sel[3]),
        .I1(phase_adjust[31]),
        .O(\phase_accumulator[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \phase_accumulator[27]_i_3 
       (.I0(phase_adjust[25]),
        .I1(sel[1]),
        .O(\phase_accumulator[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase_accumulator[27]_i_4 
       (.I0(sel[1]),
        .I1(phase_adjust[25]),
        .O(\phase_accumulator[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \phase_accumulator[27]_i_5 
       (.I0(\phase_accumulator_reg_n_0_[23] ),
        .I1(phase_adjust[23]),
        .O(\phase_accumulator[27]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \phase_accumulator[27]_i_6 
       (.I0(sel[3]),
        .I1(phase_adjust[31]),
        .I2(phase_adjust[26]),
        .I3(sel[2]),
        .O(\phase_accumulator[27]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE11E)) 
    \phase_accumulator[27]_i_7 
       (.I0(sel[1]),
        .I1(phase_adjust[25]),
        .I2(sel[2]),
        .I3(phase_adjust[26]),
        .O(\phase_accumulator[27]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \phase_accumulator[27]_i_8 
       (.I0(sel[1]),
        .I1(phase_adjust[25]),
        .I2(phase_adjust[24]),
        .I3(sel[0]),
        .O(\phase_accumulator[27]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \phase_accumulator[27]_i_9 
       (.I0(phase_adjust[23]),
        .I1(\phase_accumulator_reg_n_0_[23] ),
        .I2(sel[0]),
        .I3(phase_adjust[24]),
        .O(\phase_accumulator[27]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \phase_accumulator[31]_i_2 
       (.I0(sel[5]),
        .I1(phase_adjust[31]),
        .O(\phase_accumulator[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \phase_accumulator[31]_i_3 
       (.I0(sel[4]),
        .I1(phase_adjust[31]),
        .O(\phase_accumulator[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \phase_accumulator[31]_i_4 
       (.I0(phase_adjust[31]),
        .I1(sel[3]),
        .O(\phase_accumulator[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9C)) 
    \phase_accumulator[31]_i_5 
       (.I0(sel[6]),
        .I1(sel[7]),
        .I2(phase_adjust[31]),
        .O(\phase_accumulator[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9C)) 
    \phase_accumulator[31]_i_6 
       (.I0(sel[5]),
        .I1(sel[6]),
        .I2(phase_adjust[31]),
        .O(\phase_accumulator[31]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h9C)) 
    \phase_accumulator[31]_i_7 
       (.I0(sel[4]),
        .I1(sel[5]),
        .I2(phase_adjust[31]),
        .O(\phase_accumulator[31]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC6)) 
    \phase_accumulator[31]_i_8 
       (.I0(sel[3]),
        .I1(sel[4]),
        .I2(phase_adjust[31]),
        .O(\phase_accumulator[31]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \phase_accumulator[3]_i_2 
       (.I0(\phase_accumulator_reg_n_0_[2] ),
        .I1(\phase_accumulator_reg_n_0_[3] ),
        .I2(phase_adjust[3]),
        .O(\phase_accumulator[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase_accumulator[3]_i_3 
       (.I0(\phase_accumulator_reg_n_0_[2] ),
        .I1(phase_adjust[2]),
        .O(\phase_accumulator[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[3]_i_4 
       (.I0(phase_adjust[1]),
        .I1(\phase_accumulator_reg_n_0_[1] ),
        .O(\phase_accumulator[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[3]_i_5 
       (.I0(phase_adjust[0]),
        .I1(\phase_accumulator_reg_n_0_[0] ),
        .O(\phase_accumulator[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase_accumulator[7]_i_2 
       (.I0(\phase_accumulator_reg_n_0_[7] ),
        .I1(phase_adjust[7]),
        .O(\phase_accumulator[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \phase_accumulator[7]_i_3 
       (.I0(phase_adjust[5]),
        .I1(\phase_accumulator_reg_n_0_[5] ),
        .O(\phase_accumulator[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase_accumulator[7]_i_4 
       (.I0(\phase_accumulator_reg_n_0_[5] ),
        .I1(phase_adjust[5]),
        .O(\phase_accumulator[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \phase_accumulator[7]_i_5 
       (.I0(\phase_accumulator_reg_n_0_[3] ),
        .I1(phase_adjust[3]),
        .O(\phase_accumulator[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \phase_accumulator[7]_i_6 
       (.I0(\phase_accumulator_reg_n_0_[7] ),
        .I1(phase_adjust[7]),
        .I2(phase_adjust[6]),
        .I3(\phase_accumulator_reg_n_0_[6] ),
        .O(\phase_accumulator[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE11E)) 
    \phase_accumulator[7]_i_7 
       (.I0(\phase_accumulator_reg_n_0_[5] ),
        .I1(phase_adjust[5]),
        .I2(\phase_accumulator_reg_n_0_[6] ),
        .I3(phase_adjust[6]),
        .O(\phase_accumulator[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \phase_accumulator[7]_i_8 
       (.I0(\phase_accumulator_reg_n_0_[5] ),
        .I1(phase_adjust[5]),
        .I2(phase_adjust[4]),
        .I3(\phase_accumulator_reg_n_0_[4] ),
        .O(\phase_accumulator[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \phase_accumulator[7]_i_9 
       (.I0(phase_adjust[3]),
        .I1(\phase_accumulator_reg_n_0_[3] ),
        .I2(\phase_accumulator_reg_n_0_[4] ),
        .I3(phase_adjust[4]),
        .O(\phase_accumulator[7]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[3]_i_1_n_7 ),
        .Q(\phase_accumulator_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[11]_i_1_n_5 ),
        .Q(\phase_accumulator_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[11]_i_1_n_4 ),
        .Q(\phase_accumulator_reg_n_0_[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \phase_accumulator_reg[11]_i_1 
       (.CI(\phase_accumulator_reg[7]_i_1_n_0 ),
        .CO({\phase_accumulator_reg[11]_i_1_n_0 ,\phase_accumulator_reg[11]_i_1_n_1 ,\phase_accumulator_reg[11]_i_1_n_2 ,\phase_accumulator_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\phase_accumulator[11]_i_2_n_0 ,\phase_accumulator[11]_i_3_n_0 ,\phase_accumulator[11]_i_4_n_0 ,\phase_accumulator[11]_i_5_n_0 }),
        .O({\phase_accumulator_reg[11]_i_1_n_4 ,\phase_accumulator_reg[11]_i_1_n_5 ,\phase_accumulator_reg[11]_i_1_n_6 ,\phase_accumulator_reg[11]_i_1_n_7 }),
        .S({\phase_accumulator[11]_i_6_n_0 ,\phase_accumulator[11]_i_7_n_0 ,\phase_accumulator[11]_i_8_n_0 ,\phase_accumulator[11]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[15]_i_1_n_7 ),
        .Q(\phase_accumulator_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[15]_i_1_n_6 ),
        .Q(\phase_accumulator_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[15]_i_1_n_5 ),
        .Q(\phase_accumulator_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[15]_i_1_n_4 ),
        .Q(\phase_accumulator_reg_n_0_[15] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \phase_accumulator_reg[15]_i_1 
       (.CI(\phase_accumulator_reg[11]_i_1_n_0 ),
        .CO({\phase_accumulator_reg[15]_i_1_n_0 ,\phase_accumulator_reg[15]_i_1_n_1 ,\phase_accumulator_reg[15]_i_1_n_2 ,\phase_accumulator_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\phase_accumulator[15]_i_2_n_0 ,\phase_accumulator[15]_i_3_n_0 ,\phase_accumulator[15]_i_4_n_0 ,\phase_accumulator[15]_i_5_n_0 }),
        .O({\phase_accumulator_reg[15]_i_1_n_4 ,\phase_accumulator_reg[15]_i_1_n_5 ,\phase_accumulator_reg[15]_i_1_n_6 ,\phase_accumulator_reg[15]_i_1_n_7 }),
        .S({\phase_accumulator[15]_i_6_n_0 ,\phase_accumulator[15]_i_7_n_0 ,\phase_accumulator[15]_i_8_n_0 ,\phase_accumulator[15]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[19]_i_1_n_7 ),
        .Q(\phase_accumulator_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[19]_i_1_n_6 ),
        .Q(\phase_accumulator_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[19]_i_1_n_5 ),
        .Q(\phase_accumulator_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[19]_i_1_n_4 ),
        .Q(\phase_accumulator_reg_n_0_[19] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \phase_accumulator_reg[19]_i_1 
       (.CI(\phase_accumulator_reg[15]_i_1_n_0 ),
        .CO({\phase_accumulator_reg[19]_i_1_n_0 ,\phase_accumulator_reg[19]_i_1_n_1 ,\phase_accumulator_reg[19]_i_1_n_2 ,\phase_accumulator_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\phase_accumulator[19]_i_2_n_0 ,\phase_accumulator[19]_i_3_n_0 ,\phase_accumulator[19]_i_4_n_0 ,\phase_accumulator[19]_i_5_n_0 }),
        .O({\phase_accumulator_reg[19]_i_1_n_4 ,\phase_accumulator_reg[19]_i_1_n_5 ,\phase_accumulator_reg[19]_i_1_n_6 ,\phase_accumulator_reg[19]_i_1_n_7 }),
        .S({\phase_accumulator[19]_i_6_n_0 ,\phase_accumulator[19]_i_7_n_0 ,\phase_accumulator[19]_i_8_n_0 ,\phase_accumulator[19]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[3]_i_1_n_6 ),
        .Q(\phase_accumulator_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[23]_i_1_n_7 ),
        .Q(\phase_accumulator_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[23]_i_1_n_6 ),
        .Q(\phase_accumulator_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[23]_i_1_n_5 ),
        .Q(\phase_accumulator_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[23]_i_1_n_4 ),
        .Q(\phase_accumulator_reg_n_0_[23] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \phase_accumulator_reg[23]_i_1 
       (.CI(\phase_accumulator_reg[19]_i_1_n_0 ),
        .CO({\phase_accumulator_reg[23]_i_1_n_0 ,\phase_accumulator_reg[23]_i_1_n_1 ,\phase_accumulator_reg[23]_i_1_n_2 ,\phase_accumulator_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\phase_accumulator[23]_i_2_n_0 ,\phase_accumulator[23]_i_3_n_0 ,\phase_accumulator[23]_i_4_n_0 ,\phase_accumulator[23]_i_5_n_0 }),
        .O({\phase_accumulator_reg[23]_i_1_n_4 ,\phase_accumulator_reg[23]_i_1_n_5 ,\phase_accumulator_reg[23]_i_1_n_6 ,\phase_accumulator_reg[23]_i_1_n_7 }),
        .S({\phase_accumulator[23]_i_6_n_0 ,\phase_accumulator[23]_i_7_n_0 ,\phase_accumulator[23]_i_8_n_0 ,\phase_accumulator[23]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[27]_i_1_n_7 ),
        .Q(sel[0]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[27]_i_1_n_6 ),
        .Q(sel[1]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[27]_i_1_n_5 ),
        .Q(sel[2]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[27]_i_1_n_4 ),
        .Q(sel[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \phase_accumulator_reg[27]_i_1 
       (.CI(\phase_accumulator_reg[23]_i_1_n_0 ),
        .CO({\phase_accumulator_reg[27]_i_1_n_0 ,\phase_accumulator_reg[27]_i_1_n_1 ,\phase_accumulator_reg[27]_i_1_n_2 ,\phase_accumulator_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\phase_accumulator[27]_i_2_n_0 ,\phase_accumulator[27]_i_3_n_0 ,\phase_accumulator[27]_i_4_n_0 ,\phase_accumulator[27]_i_5_n_0 }),
        .O({\phase_accumulator_reg[27]_i_1_n_4 ,\phase_accumulator_reg[27]_i_1_n_5 ,\phase_accumulator_reg[27]_i_1_n_6 ,\phase_accumulator_reg[27]_i_1_n_7 }),
        .S({\phase_accumulator[27]_i_6_n_0 ,\phase_accumulator[27]_i_7_n_0 ,\phase_accumulator[27]_i_8_n_0 ,\phase_accumulator[27]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[31]_i_1_n_7 ),
        .Q(sel[4]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[31]_i_1_n_6 ),
        .Q(sel[5]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[3]_i_1_n_5 ),
        .Q(\phase_accumulator_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[31]_i_1_n_5 ),
        .Q(sel[6]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[31]_i_1_n_4 ),
        .Q(sel[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \phase_accumulator_reg[31]_i_1 
       (.CI(\phase_accumulator_reg[27]_i_1_n_0 ),
        .CO({\NLW_phase_accumulator_reg[31]_i_1_CO_UNCONNECTED [3],\phase_accumulator_reg[31]_i_1_n_1 ,\phase_accumulator_reg[31]_i_1_n_2 ,\phase_accumulator_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\phase_accumulator[31]_i_2_n_0 ,\phase_accumulator[31]_i_3_n_0 ,\phase_accumulator[31]_i_4_n_0 }),
        .O({\phase_accumulator_reg[31]_i_1_n_4 ,\phase_accumulator_reg[31]_i_1_n_5 ,\phase_accumulator_reg[31]_i_1_n_6 ,\phase_accumulator_reg[31]_i_1_n_7 }),
        .S({\phase_accumulator[31]_i_5_n_0 ,\phase_accumulator[31]_i_6_n_0 ,\phase_accumulator[31]_i_7_n_0 ,\phase_accumulator[31]_i_8_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[3]_i_1_n_4 ),
        .Q(\phase_accumulator_reg_n_0_[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \phase_accumulator_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\phase_accumulator_reg[3]_i_1_n_0 ,\phase_accumulator_reg[3]_i_1_n_1 ,\phase_accumulator_reg[3]_i_1_n_2 ,\phase_accumulator_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\phase_accumulator_reg_n_0_[2] ,phase_adjust[2:0]}),
        .O({\phase_accumulator_reg[3]_i_1_n_4 ,\phase_accumulator_reg[3]_i_1_n_5 ,\phase_accumulator_reg[3]_i_1_n_6 ,\phase_accumulator_reg[3]_i_1_n_7 }),
        .S({\phase_accumulator[3]_i_2_n_0 ,\phase_accumulator[3]_i_3_n_0 ,\phase_accumulator[3]_i_4_n_0 ,\phase_accumulator[3]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[7]_i_1_n_7 ),
        .Q(\phase_accumulator_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[7]_i_1_n_6 ),
        .Q(\phase_accumulator_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[7]_i_1_n_5 ),
        .Q(\phase_accumulator_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[7]_i_1_n_4 ),
        .Q(\phase_accumulator_reg_n_0_[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \phase_accumulator_reg[7]_i_1 
       (.CI(\phase_accumulator_reg[3]_i_1_n_0 ),
        .CO({\phase_accumulator_reg[7]_i_1_n_0 ,\phase_accumulator_reg[7]_i_1_n_1 ,\phase_accumulator_reg[7]_i_1_n_2 ,\phase_accumulator_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\phase_accumulator[7]_i_2_n_0 ,\phase_accumulator[7]_i_3_n_0 ,\phase_accumulator[7]_i_4_n_0 ,\phase_accumulator[7]_i_5_n_0 }),
        .O({\phase_accumulator_reg[7]_i_1_n_4 ,\phase_accumulator_reg[7]_i_1_n_5 ,\phase_accumulator_reg[7]_i_1_n_6 ,\phase_accumulator_reg[7]_i_1_n_7 }),
        .S({\phase_accumulator[7]_i_6_n_0 ,\phase_accumulator[7]_i_7_n_0 ,\phase_accumulator[7]_i_8_n_0 ,\phase_accumulator[7]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[11]_i_1_n_7 ),
        .Q(\phase_accumulator_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_accumulator_reg[11]_i_1_n_6 ),
        .Q(\phase_accumulator_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[0]_i_1 
       (.I0(phase_error0_n_101),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[10]_i_1 
       (.I0(phase_error0_n_91),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[11]_i_1 
       (.I0(phase_error0_n_90),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[12]_i_1 
       (.I0(phase_error0_n_89),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[13]_i_1 
       (.I0(phase_error0_n_88),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[14]_i_1 
       (.I0(phase_error0_n_87),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[15]_i_1 
       (.I0(phase_error0_n_86),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[16]_i_1 
       (.I0(phase_error0_n_85),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[17]_i_1 
       (.I0(phase_error0_n_84),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[18]_i_1 
       (.I0(phase_error0_n_83),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[19]_i_1 
       (.I0(phase_error0_n_82),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[1]_i_1 
       (.I0(phase_error0_n_100),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[20]_i_1 
       (.I0(phase_error0_n_81),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[21]_i_1 
       (.I0(phase_error0_n_80),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[22]_i_1 
       (.I0(phase_error0_n_79),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[23]_i_1 
       (.I0(phase_error0_n_78),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[24]_i_1 
       (.I0(phase_error0_n_77),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[25]_i_1 
       (.I0(phase_error0_n_76),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[26]_i_1 
       (.I0(phase_error0_n_75),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[2]_i_1 
       (.I0(phase_error0_n_99),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[31]_i_1 
       (.I0(phase_error0_n_74),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(p_0_in0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[3]_i_1 
       (.I0(phase_error0_n_98),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[4]_i_1 
       (.I0(phase_error0_n_97),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[5]_i_1 
       (.I0(phase_error0_n_96),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[6]_i_1 
       (.I0(phase_error0_n_95),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[7]_i_1 
       (.I0(phase_error0_n_94),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[8]_i_1 
       (.I0(phase_error0_n_93),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phase_adjust[9]_i_1 
       (.I0(phase_error0_n_92),
        .I1(\phase_adjust_reg[0]_0 ),
        .O(\phase_adjust[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[0]_i_1_n_0 ),
        .Q(phase_adjust[0]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[10]_i_1_n_0 ),
        .Q(phase_adjust[10]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[11]_i_1_n_0 ),
        .Q(phase_adjust[11]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[12]_i_1_n_0 ),
        .Q(phase_adjust[12]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[13]_i_1_n_0 ),
        .Q(phase_adjust[13]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[14]_i_1_n_0 ),
        .Q(phase_adjust[14]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[15]_i_1_n_0 ),
        .Q(phase_adjust[15]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[16]_i_1_n_0 ),
        .Q(phase_adjust[16]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[17]_i_1_n_0 ),
        .Q(phase_adjust[17]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[18]_i_1_n_0 ),
        .Q(phase_adjust[18]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[19]_i_1_n_0 ),
        .Q(phase_adjust[19]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[1]_i_1_n_0 ),
        .Q(phase_adjust[1]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[20]_i_1_n_0 ),
        .Q(phase_adjust[20]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[21]_i_1_n_0 ),
        .Q(phase_adjust[21]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[22]_i_1_n_0 ),
        .Q(phase_adjust[22]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[23]_i_1_n_0 ),
        .Q(phase_adjust[23]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[24]_i_1_n_0 ),
        .Q(phase_adjust[24]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[25]_i_1_n_0 ),
        .Q(phase_adjust[25]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[26]_i_1_n_0 ),
        .Q(phase_adjust[26]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[2]_i_1_n_0 ),
        .Q(phase_adjust[2]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_in0),
        .Q(phase_adjust[31]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[3]_i_1_n_0 ),
        .Q(phase_adjust[3]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[4]_i_1_n_0 ),
        .Q(phase_adjust[4]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[5]_i_1_n_0 ),
        .Q(phase_adjust[5]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[6]_i_1_n_0 ),
        .Q(phase_adjust[6]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[7]_i_1_n_0 ),
        .Q(phase_adjust[7]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[8]_i_1_n_0 ),
        .Q(phase_adjust[8]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_adjust_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\phase_adjust[9]_i_1_n_0 ),
        .Q(phase_adjust[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
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
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    phase_error0
       (.A({fir_tdata_i_i_mixer[33],fir_tdata_i_i_mixer[33],fir_tdata_i_i_mixer[33],fir_tdata_i_i_mixer[33],fir_tdata_i_i_mixer[33],fir_tdata_i_i_mixer[33],fir_tdata_i_i_mixer[33],fir_tdata_i_i_mixer[33],fir_tdata_i_i_mixer[33],fir_tdata_i_i_mixer[33],fir_tdata_i_i_mixer[33],fir_tdata_i_i_mixer[33],fir_tdata_i_i_mixer[33],fir_tdata_i_i_mixer[33],fir_tdata_i_i_mixer}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_phase_error0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({fir_tdata_i_q_mixer[33],fir_tdata_i_q_mixer[33],fir_tdata_i_q_mixer}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_phase_error0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_phase_error0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_phase_error0_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_phase_error0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_phase_error0_OVERFLOW_UNCONNECTED),
        .P({NLW_phase_error0_P_UNCONNECTED[47:32],phase_error0_n_74,phase_error0_n_75,phase_error0_n_76,phase_error0_n_77,phase_error0_n_78,phase_error0_n_79,phase_error0_n_80,phase_error0_n_81,phase_error0_n_82,phase_error0_n_83,phase_error0_n_84,phase_error0_n_85,phase_error0_n_86,phase_error0_n_87,phase_error0_n_88,phase_error0_n_89,phase_error0_n_90,phase_error0_n_91,phase_error0_n_92,phase_error0_n_93,phase_error0_n_94,phase_error0_n_95,phase_error0_n_96,phase_error0_n_97,phase_error0_n_98,phase_error0_n_99,phase_error0_n_100,phase_error0_n_101,phase_error0_n_102,phase_error0_n_103,phase_error0_n_104,phase_error0_n_105}),
        .PATTERNBDETECT(NLW_phase_error0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_phase_error0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_phase_error0_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_phase_error0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
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
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    q_mixer0
       (.A({pm_data_in[15],pm_data_in[15],pm_data_in[15],pm_data_in[15],pm_data_in[15],pm_data_in[15],pm_data_in[15],pm_data_in[15],pm_data_in[15],pm_data_in[15],pm_data_in[15],pm_data_in[15],pm_data_in[15],pm_data_in[15],pm_data_in}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_q_mixer0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({cosine_wave[15],cosine_wave[15],cosine_wave}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_q_mixer0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_q_mixer0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_q_mixer0_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_q_mixer0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_q_mixer0_OVERFLOW_UNCONNECTED),
        .P({NLW_q_mixer0_P_UNCONNECTED[47:32],q_mixer0_n_74,q_mixer0_n_75,q_mixer0_n_76,q_mixer0_n_77,q_mixer0_n_78,q_mixer0_n_79,q_mixer0_n_80,q_mixer0_n_81,q_mixer0_n_82,q_mixer0_n_83,q_mixer0_n_84,q_mixer0_n_85,q_mixer0_n_86,q_mixer0_n_87,q_mixer0_n_88,q_mixer0_n_89,q_mixer0_n_90,q_mixer0_n_91,q_mixer0_n_92,q_mixer0_n_93,q_mixer0_n_94,q_mixer0_n_95,q_mixer0_n_96,q_mixer0_n_97,q_mixer0_n_98,q_mixer0_n_99,q_mixer0_n_100,q_mixer0_n_101,q_mixer0_n_102,q_mixer0_n_103,q_mixer0_n_104,q_mixer0_n_105}),
        .PATTERNBDETECT(NLW_q_mixer0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_q_mixer0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_q_mixer0_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_q_mixer0_UNDERFLOW_UNCONNECTED));
  LUT6 #(
    .INIT(64'h9845DABE7AC262BC)) 
    \sine_wave[0]_i_2 
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[0]),
        .O(\sine_wave[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7DA2465E5B1943DD)) 
    \sine_wave[0]_i_3 
       (.I0(sel[5]),
        .I1(sel[4]),
        .I2(sel[3]),
        .I3(sel[2]),
        .I4(sel[0]),
        .I5(sel[1]),
        .O(\sine_wave[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_wave[10]_i_1 
       (.I0(\sine_wave[10]_i_2_n_0 ),
        .I1(\sine_wave[10]_i_3_n_0 ),
        .I2(sel[6]),
        .I3(\sine_wave[10]_i_4_n_0 ),
        .I4(sel[5]),
        .I5(\sine_wave[10]_i_5_n_0 ),
        .O(p_0_out[10]));
  LUT6 #(
    .INIT(64'hD30E2CF1E11B1EE4)) 
    \sine_wave[10]_i_2 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[2]),
        .I3(sel[0]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(\sine_wave[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h37620288C89DFD77)) 
    \sine_wave[10]_i_3 
       (.I0(sel[4]),
        .I1(sel[1]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[3]),
        .I5(sel[7]),
        .O(\sine_wave[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0742F8BD485DB7A2)) 
    \sine_wave[10]_i_4 
       (.I0(sel[4]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[0]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(\sine_wave[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8770C8B6788F3748)) 
    \sine_wave[10]_i_5 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(\sine_wave[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_wave[11]_i_1 
       (.I0(\sine_wave[11]_i_2_n_0 ),
        .I1(\sine_wave[11]_i_3_n_0 ),
        .I2(sel[6]),
        .I3(\sine_wave[11]_i_4_n_0 ),
        .I4(sel[5]),
        .I5(\sine_wave[11]_i_5_n_0 ),
        .O(p_0_out[11]));
  LUT6 #(
    .INIT(64'hCC1D33E223C6DC39)) 
    \sine_wave[11]_i_2 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(\sine_wave[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h68280A2A97D7F5D5)) 
    \sine_wave[11]_i_3 
       (.I0(sel[4]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[0]),
        .I4(sel[3]),
        .I5(sel[7]),
        .O(\sine_wave[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h45551202BAAAEDFD)) 
    \sine_wave[11]_i_4 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[1]),
        .I3(sel[0]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(\sine_wave[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3B438C3AC4BC73C4)) 
    \sine_wave[11]_i_5 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(\sine_wave[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_wave[12]_i_1 
       (.I0(\sine_wave[12]_i_2_n_0 ),
        .I1(\sine_wave[12]_i_3_n_0 ),
        .I2(sel[6]),
        .I3(\sine_wave[12]_i_4_n_0 ),
        .I4(sel[5]),
        .I5(\sine_wave[12]_i_5_n_0 ),
        .O(p_0_out[12]));
  LUT6 #(
    .INIT(64'h99BAA6646645599B)) 
    \sine_wave[12]_i_2 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(\sine_wave[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5EAA0000A155FFFF)) 
    \sine_wave[12]_i_3 
       (.I0(sel[3]),
        .I1(sel[0]),
        .I2(sel[1]),
        .I3(sel[2]),
        .I4(sel[4]),
        .I5(sel[7]),
        .O(\sine_wave[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h11115444EEEEABBB)) 
    \sine_wave[12]_i_4 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[1]),
        .I3(sel[0]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(\sine_wave[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h66D955989926AA66)) 
    \sine_wave[12]_i_5 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(\sine_wave[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_wave[13]_i_1 
       (.I0(\sine_wave[13]_i_2_n_0 ),
        .I1(\sine_wave[13]_i_3_n_0 ),
        .I2(sel[6]),
        .I3(\sine_wave[13]_i_4_n_0 ),
        .I4(sel[5]),
        .I5(\sine_wave[13]_i_5_n_0 ),
        .O(p_0_out[13]));
  LUT6 #(
    .INIT(64'hAABFDD55554022AA)) 
    \sine_wave[13]_i_2 
       (.I0(sel[4]),
        .I1(sel[1]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[3]),
        .I5(sel[7]),
        .O(\sine_wave[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80007FFF)) 
    \sine_wave[13]_i_3 
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .I4(sel[7]),
        .O(\sine_wave[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000111FFFFFEEE)) 
    \sine_wave[13]_i_4 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[1]),
        .I3(sel[0]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(\sine_wave[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBB9D99DC44626622)) 
    \sine_wave[13]_i_5 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(\sine_wave[13]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8B3F8B0C)) 
    \sine_wave[14]_i_1 
       (.I0(\sine_wave[14]_i_2_n_0 ),
        .I1(sel[6]),
        .I2(sel[7]),
        .I3(sel[5]),
        .I4(\sine_wave[14]_i_3_n_0 ),
        .O(p_0_out[14]));
  LUT6 #(
    .INIT(64'hFFEAAAAA00155555)) 
    \sine_wave[14]_i_2 
       (.I0(sel[4]),
        .I1(sel[1]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[3]),
        .I5(sel[7]),
        .O(\sine_wave[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55777776AA888888)) 
    \sine_wave[14]_i_3 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(\sine_wave[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \sine_wave[15]_i_1 
       (.I0(sel[6]),
        .I1(sel[5]),
        .I2(sel[4]),
        .I3(sel[7]),
        .I4(sel[3]),
        .I5(\sine_wave[15]_i_2_n_0 ),
        .O(p_0_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \sine_wave[15]_i_2 
       (.I0(sel[0]),
        .I1(sel[2]),
        .I2(sel[1]),
        .I3(sel[7]),
        .O(\sine_wave[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_wave[1]_i_1 
       (.I0(\sine_wave[1]_i_2_n_0 ),
        .I1(\sine_wave[1]_i_3_n_0 ),
        .I2(sel[6]),
        .I3(\sine_wave[1]_i_4_n_0 ),
        .I4(sel[5]),
        .I5(\sine_wave[1]_i_5_n_0 ),
        .O(p_0_out[1]));
  LUT6 #(
    .INIT(64'h062567F684F9B5D3)) 
    \sine_wave[1]_i_2 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(\sine_wave[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1216E8187B9EA2C1)) 
    \sine_wave[1]_i_3 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(\sine_wave[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h96E431518D8F8471)) 
    \sine_wave[1]_i_4 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(\sine_wave[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF410BFD6A2646AE2)) 
    \sine_wave[1]_i_5 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[1]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[0]),
        .O(\sine_wave[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_wave[2]_i_1 
       (.I0(\sine_wave[2]_i_2_n_0 ),
        .I1(\sine_wave[2]_i_3_n_0 ),
        .I2(sel[6]),
        .I3(\sine_wave[2]_i_4_n_0 ),
        .I4(sel[5]),
        .I5(\sine_wave[2]_i_5_n_0 ),
        .O(p_0_out[2]));
  LUT6 #(
    .INIT(64'hB960D617EF9F50C4)) 
    \sine_wave[2]_i_2 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[2]),
        .I3(sel[0]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(\sine_wave[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE764DF661D7A24B9)) 
    \sine_wave[2]_i_3 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(\sine_wave[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6B2ED45B67FBE824)) 
    \sine_wave[2]_i_4 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[2]),
        .I3(sel[0]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(\sine_wave[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF00E7A689693DBE8)) 
    \sine_wave[2]_i_5 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[7]),
        .I3(sel[0]),
        .I4(sel[2]),
        .I5(sel[1]),
        .O(\sine_wave[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_wave[3]_i_1 
       (.I0(\sine_wave[3]_i_2_n_0 ),
        .I1(\sine_wave[3]_i_3_n_0 ),
        .I2(sel[6]),
        .I3(\sine_wave[3]_i_4_n_0 ),
        .I4(sel[5]),
        .I5(\sine_wave[3]_i_5_n_0 ),
        .O(p_0_out[3]));
  LUT6 #(
    .INIT(64'h982769B16FDA9E4E)) 
    \sine_wave[3]_i_2 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(\sine_wave[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hACB30BF253CDF40D)) 
    \sine_wave[3]_i_3 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(\sine_wave[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCDD03530B32FCAC)) 
    \sine_wave[3]_i_4 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(\sine_wave[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD92741BF6E95906E)) 
    \sine_wave[3]_i_5 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[7]),
        .I4(sel[2]),
        .I5(sel[1]),
        .O(\sine_wave[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_wave[4]_i_1 
       (.I0(\sine_wave[4]_i_2_n_0 ),
        .I1(\sine_wave[4]_i_3_n_0 ),
        .I2(sel[6]),
        .I3(\sine_wave[4]_i_4_n_0 ),
        .I4(sel[5]),
        .I5(\sine_wave[4]_i_5_n_0 ),
        .O(p_0_out[4]));
  LUT6 #(
    .INIT(64'hA8B85747EA85157A)) 
    \sine_wave[4]_i_2 
       (.I0(sel[4]),
        .I1(sel[0]),
        .I2(sel[3]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(\sine_wave[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h66D39CEE992C6311)) 
    \sine_wave[4]_i_3 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(\sine_wave[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h73B68C499C6F6390)) 
    \sine_wave[4]_i_4 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(\sine_wave[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h937155506C8EAAAE)) 
    \sine_wave[4]_i_5 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(\sine_wave[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_wave[5]_i_1 
       (.I0(\sine_wave[5]_i_2_n_0 ),
        .I1(\sine_wave[5]_i_3_n_0 ),
        .I2(sel[6]),
        .I3(\sine_wave[5]_i_4_n_0 ),
        .I4(sel[5]),
        .I5(\sine_wave[5]_i_5_n_0 ),
        .O(p_0_out[5]));
  LUT6 #(
    .INIT(64'h6A5E95A14C35B3CA)) 
    \sine_wave[5]_i_2 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(\sine_wave[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h16F9E90672068DF9)) 
    \sine_wave[5]_i_3 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[2]),
        .I3(sel[0]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(\sine_wave[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4960EF8BB69F1074)) 
    \sine_wave[5]_i_4 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(\sine_wave[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC725A36838DA5C96)) 
    \sine_wave[5]_i_5 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(\sine_wave[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_wave[6]_i_1 
       (.I0(\sine_wave[6]_i_2_n_0 ),
        .I1(\sine_wave[6]_i_3_n_0 ),
        .I2(sel[6]),
        .I3(\sine_wave[6]_i_4_n_0 ),
        .I4(sel[5]),
        .I5(\sine_wave[6]_i_5_n_0 ),
        .O(p_0_out[6]));
  LUT6 #(
    .INIT(64'hB7F2480D7B2584DA)) 
    \sine_wave[6]_i_2 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(\sine_wave[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB55016A44AAFE95B)) 
    \sine_wave[6]_i_3 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(\sine_wave[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h56AAA95580D97F26)) 
    \sine_wave[6]_i_4 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(\sine_wave[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44EEFDD8BB110226)) 
    \sine_wave[6]_i_5 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(\sine_wave[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_wave[7]_i_1 
       (.I0(\sine_wave[7]_i_2_n_0 ),
        .I1(\sine_wave[7]_i_3_n_0 ),
        .I2(sel[6]),
        .I3(\sine_wave[7]_i_4_n_0 ),
        .I4(sel[5]),
        .I5(\sine_wave[7]_i_5_n_0 ),
        .O(p_0_out[7]));
  LUT6 #(
    .INIT(64'hAAB76724554898DB)) 
    \sine_wave[7]_i_2 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[1]),
        .I3(sel[0]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(\sine_wave[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7035642A8FCA9BD5)) 
    \sine_wave[7]_i_3 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(\sine_wave[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4C6D20AAB392DF55)) 
    \sine_wave[7]_i_4 
       (.I0(sel[4]),
        .I1(sel[0]),
        .I2(sel[2]),
        .I3(sel[1]),
        .I4(sel[3]),
        .I5(sel[7]),
        .O(\sine_wave[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE45D6E581BA291A6)) 
    \sine_wave[7]_i_5 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(\sine_wave[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_wave[8]_i_1 
       (.I0(\sine_wave[8]_i_2_n_0 ),
        .I1(\sine_wave[8]_i_3_n_0 ),
        .I2(sel[6]),
        .I3(\sine_wave[8]_i_4_n_0 ),
        .I4(sel[5]),
        .I5(\sine_wave[8]_i_5_n_0 ),
        .O(p_0_out[8]));
  LUT6 #(
    .INIT(64'h2D28D2D73C7BC384)) 
    \sine_wave[8]_i_2 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(\sine_wave[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBDB2B8E2424D471D)) 
    \sine_wave[8]_i_3 
       (.I0(sel[4]),
        .I1(sel[0]),
        .I2(sel[3]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[7]),
        .O(\sine_wave[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h104FBF3FEFB040C0)) 
    \sine_wave[8]_i_4 
       (.I0(sel[2]),
        .I1(sel[0]),
        .I2(sel[4]),
        .I3(sel[1]),
        .I4(sel[3]),
        .I5(sel[7]),
        .O(\sine_wave[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE1CB43461E34BCB8)) 
    \sine_wave[8]_i_5 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(\sine_wave[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_wave[9]_i_1 
       (.I0(\sine_wave[9]_i_2_n_0 ),
        .I1(\sine_wave[9]_i_3_n_0 ),
        .I2(sel[6]),
        .I3(\sine_wave[9]_i_4_n_0 ),
        .I4(sel[5]),
        .I5(\sine_wave[9]_i_5_n_0 ),
        .O(p_0_out[9]));
  LUT6 #(
    .INIT(64'h3125CEDACFDA3025)) 
    \sine_wave[9]_i_2 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[7]),
        .I5(sel[1]),
        .O(\sine_wave[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9C9DA20863625DF7)) 
    \sine_wave[9]_i_3 
       (.I0(sel[4]),
        .I1(sel[0]),
        .I2(sel[1]),
        .I3(sel[2]),
        .I4(sel[3]),
        .I5(sel[7]),
        .O(\sine_wave[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h41F516A0BE0AE95F)) 
    \sine_wave[9]_i_4 
       (.I0(sel[4]),
        .I1(sel[2]),
        .I2(sel[1]),
        .I3(sel[3]),
        .I4(sel[0]),
        .I5(sel[7]),
        .O(\sine_wave[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBA384FC645C7B038)) 
    \sine_wave[9]_i_5 
       (.I0(sel[4]),
        .I1(sel[3]),
        .I2(sel[0]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[7]),
        .O(\sine_wave[9]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \sine_wave_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_out[0]),
        .Q(sine_wave[0]));
  MUXF7 \sine_wave_reg[0]_i_1 
       (.I0(\sine_wave[0]_i_2_n_0 ),
        .I1(\sine_wave[0]_i_3_n_0 ),
        .O(p_0_out[0]),
        .S(sel[6]));
  FDCE #(
    .INIT(1'b0)) 
    \sine_wave_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_out[10]),
        .Q(sine_wave[10]));
  FDCE #(
    .INIT(1'b0)) 
    \sine_wave_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_out[11]),
        .Q(sine_wave[11]));
  FDCE #(
    .INIT(1'b0)) 
    \sine_wave_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_out[12]),
        .Q(sine_wave[12]));
  FDCE #(
    .INIT(1'b0)) 
    \sine_wave_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_out[13]),
        .Q(sine_wave[13]));
  FDCE #(
    .INIT(1'b0)) 
    \sine_wave_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_out[14]),
        .Q(sine_wave[14]));
  FDCE #(
    .INIT(1'b0)) 
    \sine_wave_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_out[15]),
        .Q(sine_wave[15]));
  FDCE #(
    .INIT(1'b0)) 
    \sine_wave_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_out[1]),
        .Q(sine_wave[1]));
  FDCE #(
    .INIT(1'b0)) 
    \sine_wave_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_out[2]),
        .Q(sine_wave[2]));
  FDCE #(
    .INIT(1'b0)) 
    \sine_wave_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_out[3]),
        .Q(sine_wave[3]));
  FDCE #(
    .INIT(1'b0)) 
    \sine_wave_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_out[4]),
        .Q(sine_wave[4]));
  FDCE #(
    .INIT(1'b0)) 
    \sine_wave_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_out[5]),
        .Q(sine_wave[5]));
  FDCE #(
    .INIT(1'b0)) 
    \sine_wave_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_out[6]),
        .Q(sine_wave[6]));
  FDCE #(
    .INIT(1'b0)) 
    \sine_wave_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_out[7]),
        .Q(sine_wave[7]));
  FDCE #(
    .INIT(1'b0)) 
    \sine_wave_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_out[8]),
        .Q(sine_wave[8]));
  FDCE #(
    .INIT(1'b0)) 
    \sine_wave_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_out[9]),
        .Q(sine_wave[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \square_wave[11]_i_2 
       (.I0(rst_n),
        .O(rst_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "fir_lpf_psk,fir_compiler_v7_2_23,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_lpf_psk" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_23,Vivado 2024.2" *) 
module design_1_PSK_DM_0_0_fir_lpf_psk
   (aclk,
    s_axis_data_tvalid,
    s_axis_data_tready,
    s_axis_data_tdata,
    m_axis_data_tvalid,
    m_axis_data_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_DATA:S_AXIS_RELOAD, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [15:0]s_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [39:0]m_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "fir_lpf_psk,fir_compiler_v7_2_23,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_lpf_psk" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_23,Vivado 2024.2" *) 
module design_1_PSK_DM_0_0_fir_lpf_psk_HD1
   (aclk,
    m_axis_data_tvalid,
    s_axis_data_tready,
    s_axis_data_tvalid,
    m_axis_data_tdata,
    s_axis_data_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_DATA:S_AXIS_RELOAD, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [39:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [15:0]s_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "mult_gen_psk,mult_gen_v12_0_22,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "mult_gen_psk" *) 
(* X_CORE_INFO = "mult_gen_v12_0_22,Vivado 2024.2" *) 
module design_1_PSK_DM_0_0_mult_gen_psk
   (CLK,
    A,
    B,
    P);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* X_INTERFACE_MODE = "slave clk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* X_INTERFACE_MODE = "slave a_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* X_INTERFACE_MODE = "slave b_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* X_INTERFACE_MODE = "master p_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;


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
