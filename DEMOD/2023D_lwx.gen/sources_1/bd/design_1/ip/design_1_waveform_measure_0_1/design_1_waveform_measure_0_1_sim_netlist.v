// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri Nov  7 10:08:04 2025
// Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/elysia/Software/Xilinx/Project/11-6V3/2023D_lwx.gen/sources_1/bd/design_1/ip/design_1_waveform_measure_0_1/design_1_waveform_measure_0_1_sim_netlist.v
// Design      : design_1_waveform_measure_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_waveform_measure_0_1,waveform_measure,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "waveform_measure,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_waveform_measure_0_1
   (sys_clk,
    rst_n,
    data_in,
    v_max,
    v_min,
    mean_square,
    period_sample_cnt,
    o_signal_dc_removed,
    measure_done);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input sys_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [15:0]data_in;
  output [15:0]v_max;
  output [15:0]v_min;
  output [31:0]mean_square;
  output [15:0]period_sample_cnt;
  output [15:0]o_signal_dc_removed;
  output measure_done;

  wire [15:0]data_in;
  wire [31:0]mean_square;
  wire measure_done;
  wire [15:0]o_signal_dc_removed;
  wire [15:0]period_sample_cnt;
  wire rst_n;
  wire sys_clk;
  wire [15:0]v_max;
  wire [15:0]v_min;

  design_1_waveform_measure_0_1_waveform_measure inst
       (.Q(o_signal_dc_removed),
        .data_in(data_in),
        .mean_square(mean_square),
        .measure_done(measure_done),
        .period_sample_cnt(period_sample_cnt),
        .rst_n(rst_n),
        .sys_clk(sys_clk),
        .v_max(v_max),
        .v_min(v_min));
endmodule

(* ORIG_REF_NAME = "clk_divider" *) 
module design_1_waveform_measure_0_1_clk_divider
   (\FSM_onehot_state_reg[1] ,
    sample_clk,
    sample_clk_d1_reg,
    sample_clk_d1_reg_0,
    E,
    \FSM_onehot_state_reg[1]_0 ,
    \FSM_onehot_state_reg[1]_1 ,
    \FSM_onehot_state_reg[1]_2 ,
    \FSM_onehot_state_reg[2] ,
    sample_clk_d1_reg_1,
    \FSM_onehot_state_reg[1]_3 ,
    rst_n_0,
    \FSM_onehot_state_reg[2]_0 ,
    sample_clk_d1,
    \FSM_onehot_state_reg[2]_1 ,
    \FSM_onehot_state_reg[2]_2 ,
    \FSM_onehot_state_reg[2]_3 ,
    CO,
    \v_min_temp_reg[0] ,
    signal_rectified,
    signal_rectified_d1,
    measurement_started_reg,
    rst_n,
    sys_clk);
  output \FSM_onehot_state_reg[1] ;
  output sample_clk;
  output sample_clk_d1_reg;
  output sample_clk_d1_reg_0;
  output [0:0]E;
  output [0:0]\FSM_onehot_state_reg[1]_0 ;
  output [0:0]\FSM_onehot_state_reg[1]_1 ;
  output [0:0]\FSM_onehot_state_reg[1]_2 ;
  output [0:0]\FSM_onehot_state_reg[2] ;
  output [0:0]sample_clk_d1_reg_1;
  output \FSM_onehot_state_reg[1]_3 ;
  output rst_n_0;
  input \FSM_onehot_state_reg[2]_0 ;
  input sample_clk_d1;
  input \FSM_onehot_state_reg[2]_1 ;
  input \FSM_onehot_state_reg[2]_2 ;
  input \FSM_onehot_state_reg[2]_3 ;
  input [0:0]CO;
  input [0:0]\v_min_temp_reg[0] ;
  input signal_rectified;
  input signal_rectified_d1;
  input measurement_started_reg;
  input rst_n;
  input sys_clk;

  wire [0:0]CO;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire [0:0]\FSM_onehot_state_reg[1]_0 ;
  wire [0:0]\FSM_onehot_state_reg[1]_1 ;
  wire [0:0]\FSM_onehot_state_reg[1]_2 ;
  wire \FSM_onehot_state_reg[1]_3 ;
  wire [0:0]\FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire \FSM_onehot_state_reg[2]_1 ;
  wire \FSM_onehot_state_reg[2]_2 ;
  wire \FSM_onehot_state_reg[2]_3 ;
  wire [5:0]clk_div;
  wire [5:0]clk_div_0;
  wire measurement_started_i_2_n_0;
  wire measurement_started_reg;
  wire rst_n;
  wire rst_n_0;
  wire sample_clk;
  wire sample_clk_d1;
  wire sample_clk_d1_reg;
  wire sample_clk_d1_reg_0;
  wire [0:0]sample_clk_d1_reg_1;
  wire signal_rectified;
  wire signal_rectified_d1;
  wire sys_clk;
  wire [0:0]\v_min_temp_reg[0] ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF00FFB0)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(sample_clk_d1),
        .I1(sample_clk),
        .I2(\FSM_onehot_state_reg[2]_1 ),
        .I3(\FSM_onehot_state_reg[2]_2 ),
        .I4(\FSM_onehot_state_reg[2]_3 ),
        .O(sample_clk_d1_reg_0));
  LUT6 #(
    .INIT(64'hF0F0F0FFF0F0F040)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(sample_clk_d1),
        .I1(sample_clk),
        .I2(\FSM_onehot_state_reg[2]_1 ),
        .I3(\FSM_onehot_state_reg[2]_2 ),
        .I4(\FSM_onehot_state_reg[2]_3 ),
        .I5(\FSM_onehot_state_reg[2]_0 ),
        .O(sample_clk_d1_reg));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA2000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_0 ),
        .I1(sample_clk_d1),
        .I2(sample_clk),
        .I3(\FSM_onehot_state_reg[2]_1 ),
        .I4(\FSM_onehot_state_reg[2]_2 ),
        .I5(\FSM_onehot_state_reg[2]_3 ),
        .O(\FSM_onehot_state_reg[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_div[0]_i_1 
       (.I0(clk_div[0]),
        .O(clk_div_0[0]));
  LUT6 #(
    .INIT(64'h0000FFFFFDFF0000)) 
    \clk_div[1]_i_1 
       (.I0(clk_div[5]),
        .I1(clk_div[2]),
        .I2(clk_div[3]),
        .I3(clk_div[4]),
        .I4(clk_div[0]),
        .I5(clk_div[1]),
        .O(clk_div_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clk_div[2]_i_1 
       (.I0(clk_div[1]),
        .I1(clk_div[0]),
        .I2(clk_div[2]),
        .O(clk_div_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_div[3]_i_1 
       (.I0(clk_div[2]),
        .I1(clk_div[0]),
        .I2(clk_div[1]),
        .I3(clk_div[3]),
        .O(clk_div_0[3]));
  LUT6 #(
    .INIT(64'h66CCCC8CCCCCCCCC)) 
    \clk_div[4]_i_1 
       (.I0(clk_div[1]),
        .I1(clk_div[4]),
        .I2(clk_div[5]),
        .I3(clk_div[2]),
        .I4(clk_div[3]),
        .I5(clk_div[0]),
        .O(clk_div_0[4]));
  LUT6 #(
    .INIT(64'h7F80FF00FF00F700)) 
    \clk_div[5]_i_1 
       (.I0(clk_div[0]),
        .I1(clk_div[4]),
        .I2(clk_div[1]),
        .I3(clk_div[5]),
        .I4(clk_div[3]),
        .I5(clk_div[2]),
        .O(clk_div_0[5]));
  FDCE \clk_div_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(clk_div_0[0]),
        .Q(clk_div[0]));
  FDCE \clk_div_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(clk_div_0[1]),
        .Q(clk_div[1]));
  FDCE \clk_div_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(clk_div_0[2]),
        .Q(clk_div[2]));
  FDCE \clk_div_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(clk_div_0[3]),
        .Q(clk_div[3]));
  FDCE \clk_div_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(clk_div_0[4]),
        .Q(clk_div[4]));
  FDCE \clk_div_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(clk_div_0[5]),
        .Q(clk_div[5]));
  LUT5 #(
    .INIT(32'h00F70808)) 
    measurement_started_i_1
       (.I0(\FSM_onehot_state_reg[2]_0 ),
        .I1(signal_rectified),
        .I2(signal_rectified_d1),
        .I3(measurement_started_i_2_n_0),
        .I4(measurement_started_reg),
        .O(\FSM_onehot_state_reg[1]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    measurement_started_i_2
       (.I0(sample_clk_d1),
        .I1(sample_clk),
        .I2(\FSM_onehot_state_reg[2]_1 ),
        .O(measurement_started_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFAAEAAAAAAAEA)) 
    \period_cnt_temp[15]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_2 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(signal_rectified),
        .I3(signal_rectified_d1),
        .I4(measurement_started_reg),
        .I5(sample_clk_d1_reg_1),
        .O(\FSM_onehot_state_reg[2] ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    sample_clk_d1_i_1
       (.I0(clk_div[1]),
        .I1(clk_div[0]),
        .I2(clk_div[4]),
        .I3(clk_div[5]),
        .I4(clk_div[2]),
        .I5(clk_div[3]),
        .O(sample_clk));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFF4440)) 
    \sample_cnt[12]_i_1 
       (.I0(sample_clk_d1),
        .I1(sample_clk),
        .I2(\FSM_onehot_state_reg[2]_0 ),
        .I3(\FSM_onehot_state_reg[2]_1 ),
        .I4(\FSM_onehot_state_reg[2]_2 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \signal_dc_removed[15]_i_1 
       (.I0(sample_clk_d1),
        .I1(sample_clk),
        .I2(\FSM_onehot_state_reg[2]_0 ),
        .O(sample_clk_d1_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    \sum[28]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_0 ),
        .I1(\FSM_onehot_state_reg[2]_1 ),
        .I2(sample_clk),
        .I3(sample_clk_d1),
        .O(\FSM_onehot_state_reg[1]_2 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v_max[15]_i_1 
       (.I0(rst_n),
        .O(rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000F800)) 
    \v_max_temp[15]_i_1 
       (.I0(CO),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(\FSM_onehot_state_reg[2]_1 ),
        .I3(sample_clk),
        .I4(sample_clk_d1),
        .O(\FSM_onehot_state_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h0000F800)) 
    \v_min_temp[15]_i_1 
       (.I0(\v_min_temp_reg[0] ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(\FSM_onehot_state_reg[2]_1 ),
        .I3(sample_clk),
        .I4(sample_clk_d1),
        .O(\FSM_onehot_state_reg[1]_1 ));
endmodule

(* ORIG_REF_NAME = "waveform_measure" *) 
module design_1_waveform_measure_0_1_waveform_measure
   (Q,
    v_max,
    v_min,
    mean_square,
    period_sample_cnt,
    measure_done,
    sys_clk,
    data_in,
    rst_n);
  output [15:0]Q;
  output [15:0]v_max;
  output [15:0]v_min;
  output [31:0]mean_square;
  output [15:0]period_sample_cnt;
  output measure_done;
  input sys_clk;
  input [15:0]data_in;
  input rst_n;

  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state[2]_i_4_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [15:0]Q;
  wire clk_divider_inst_n_0;
  wire clk_divider_inst_n_10;
  wire clk_divider_inst_n_11;
  wire clk_divider_inst_n_2;
  wire clk_divider_inst_n_3;
  wire clk_divider_inst_n_5;
  wire clk_divider_inst_n_6;
  wire clk_divider_inst_n_7;
  wire clk_divider_inst_n_8;
  wire [15:0]data_in;
  wire [15:0]data_in_synced;
  wire [31:0]data_squared__0;
  wire [15:0]dc_offset;
  wire [15:0]final_period_cnt;
  wire final_period_cnt0_carry__0_i_1_n_0;
  wire final_period_cnt0_carry__0_i_2_n_0;
  wire final_period_cnt0_carry__0_i_3_n_0;
  wire final_period_cnt0_carry__0_i_4_n_0;
  wire final_period_cnt0_carry__0_n_0;
  wire final_period_cnt0_carry__0_n_1;
  wire final_period_cnt0_carry__0_n_2;
  wire final_period_cnt0_carry__0_n_3;
  wire final_period_cnt0_carry__1_i_1_n_0;
  wire final_period_cnt0_carry__1_i_2_n_0;
  wire final_period_cnt0_carry__1_i_3_n_0;
  wire final_period_cnt0_carry__1_i_4_n_0;
  wire final_period_cnt0_carry__1_n_0;
  wire final_period_cnt0_carry__1_n_1;
  wire final_period_cnt0_carry__1_n_2;
  wire final_period_cnt0_carry__1_n_3;
  wire final_period_cnt0_carry__2_i_1_n_0;
  wire final_period_cnt0_carry__2_i_2_n_0;
  wire final_period_cnt0_carry__2_i_3_n_0;
  wire final_period_cnt0_carry__2_n_2;
  wire final_period_cnt0_carry__2_n_3;
  wire final_period_cnt0_carry_i_1_n_0;
  wire final_period_cnt0_carry_i_2_n_0;
  wire final_period_cnt0_carry_i_3_n_0;
  wire final_period_cnt0_carry_i_4_n_0;
  wire final_period_cnt0_carry_n_0;
  wire final_period_cnt0_carry_n_1;
  wire final_period_cnt0_carry_n_2;
  wire final_period_cnt0_carry_n_3;
  wire \final_period_cnt[0]_i_1_n_0 ;
  wire \final_period_cnt[10]_i_1_n_0 ;
  wire \final_period_cnt[11]_i_1_n_0 ;
  wire \final_period_cnt[12]_i_1_n_0 ;
  wire \final_period_cnt[13]_i_1_n_0 ;
  wire \final_period_cnt[14]_i_1_n_0 ;
  wire \final_period_cnt[15]_i_1_n_0 ;
  wire \final_period_cnt[15]_i_2_n_0 ;
  wire \final_period_cnt[1]_i_1_n_0 ;
  wire \final_period_cnt[2]_i_1_n_0 ;
  wire \final_period_cnt[3]_i_1_n_0 ;
  wire \final_period_cnt[4]_i_1_n_0 ;
  wire \final_period_cnt[5]_i_1_n_0 ;
  wire \final_period_cnt[6]_i_1_n_0 ;
  wire \final_period_cnt[7]_i_1_n_0 ;
  wire \final_period_cnt[8]_i_1_n_0 ;
  wire \final_period_cnt[9]_i_1_n_0 ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [15:1]in10;
  wire [12:1]in17;
  wire [28:0]in8;
  wire [31:0]mean_square;
  wire measure_done;
  wire measurement_started_reg_n_0;
  wire [15:0]p_0_in;
  wire [15:0]period_cnt_temp;
  wire [15:1]period_cnt_temp0;
  wire [15:0]period_cnt_temp_1;
  wire \period_cnt_temp_reg[12]_i_2_n_0 ;
  wire \period_cnt_temp_reg[12]_i_2_n_1 ;
  wire \period_cnt_temp_reg[12]_i_2_n_2 ;
  wire \period_cnt_temp_reg[12]_i_2_n_3 ;
  wire \period_cnt_temp_reg[15]_i_3_n_2 ;
  wire \period_cnt_temp_reg[15]_i_3_n_3 ;
  wire \period_cnt_temp_reg[4]_i_2_n_0 ;
  wire \period_cnt_temp_reg[4]_i_2_n_1 ;
  wire \period_cnt_temp_reg[4]_i_2_n_2 ;
  wire \period_cnt_temp_reg[4]_i_2_n_3 ;
  wire \period_cnt_temp_reg[8]_i_2_n_0 ;
  wire \period_cnt_temp_reg[8]_i_2_n_1 ;
  wire \period_cnt_temp_reg[8]_i_2_n_2 ;
  wire \period_cnt_temp_reg[8]_i_2_n_3 ;
  wire [15:0]period_sample_cnt;
  wire rst_n;
  wire sample_clk;
  wire sample_clk_d1;
  wire [12:0]sample_cnt;
  wire sample_cnt0_carry__0_n_0;
  wire sample_cnt0_carry__0_n_1;
  wire sample_cnt0_carry__0_n_2;
  wire sample_cnt0_carry__0_n_3;
  wire sample_cnt0_carry__1_n_1;
  wire sample_cnt0_carry__1_n_2;
  wire sample_cnt0_carry__1_n_3;
  wire sample_cnt0_carry_n_0;
  wire sample_cnt0_carry_n_1;
  wire sample_cnt0_carry_n_2;
  wire sample_cnt0_carry_n_3;
  wire \sample_cnt[0]_i_1_n_0 ;
  wire \sample_cnt[10]_i_1_n_0 ;
  wire \sample_cnt[11]_i_1_n_0 ;
  wire \sample_cnt[12]_i_2_n_0 ;
  wire \sample_cnt[1]_i_1_n_0 ;
  wire \sample_cnt[2]_i_1_n_0 ;
  wire \sample_cnt[3]_i_1_n_0 ;
  wire \sample_cnt[4]_i_1_n_0 ;
  wire \sample_cnt[5]_i_1_n_0 ;
  wire \sample_cnt[6]_i_1_n_0 ;
  wire \sample_cnt[7]_i_1_n_0 ;
  wire \sample_cnt[8]_i_1_n_0 ;
  wire \sample_cnt[9]_i_1_n_0 ;
  wire sample_cnt_0;
  wire signal_dc_removed0;
  wire [15:0]signal_dc_removed00_in;
  wire \signal_dc_removed0_inferred__0/i__carry__0_n_0 ;
  wire \signal_dc_removed0_inferred__0/i__carry__0_n_1 ;
  wire \signal_dc_removed0_inferred__0/i__carry__0_n_2 ;
  wire \signal_dc_removed0_inferred__0/i__carry__0_n_3 ;
  wire \signal_dc_removed0_inferred__0/i__carry__1_n_0 ;
  wire \signal_dc_removed0_inferred__0/i__carry__1_n_1 ;
  wire \signal_dc_removed0_inferred__0/i__carry__1_n_2 ;
  wire \signal_dc_removed0_inferred__0/i__carry__1_n_3 ;
  wire \signal_dc_removed0_inferred__0/i__carry__2_n_1 ;
  wire \signal_dc_removed0_inferred__0/i__carry__2_n_2 ;
  wire \signal_dc_removed0_inferred__0/i__carry__2_n_3 ;
  wire \signal_dc_removed0_inferred__0/i__carry_n_0 ;
  wire \signal_dc_removed0_inferred__0/i__carry_n_1 ;
  wire \signal_dc_removed0_inferred__0/i__carry_n_2 ;
  wire \signal_dc_removed0_inferred__0/i__carry_n_3 ;
  wire signal_rectified;
  wire signal_rectified_d1;
  wire signal_rectified_i_10_n_0;
  wire signal_rectified_i_11_n_0;
  wire signal_rectified_i_12_n_0;
  wire signal_rectified_i_13_n_0;
  wire signal_rectified_i_14_n_0;
  wire signal_rectified_i_15_n_0;
  wire signal_rectified_i_16_n_0;
  wire signal_rectified_i_17_n_0;
  wire signal_rectified_i_18_n_0;
  wire signal_rectified_i_3_n_0;
  wire signal_rectified_i_4_n_0;
  wire signal_rectified_i_5_n_0;
  wire signal_rectified_i_6_n_0;
  wire signal_rectified_i_7_n_0;
  wire signal_rectified_i_8_n_0;
  wire signal_rectified_i_9_n_0;
  wire signal_rectified_reg_i_1_n_0;
  wire signal_rectified_reg_i_1_n_1;
  wire signal_rectified_reg_i_1_n_2;
  wire signal_rectified_reg_i_1_n_3;
  wire signal_rectified_reg_i_2_n_0;
  wire signal_rectified_reg_i_2_n_1;
  wire signal_rectified_reg_i_2_n_2;
  wire signal_rectified_reg_i_2_n_3;
  wire [28:0]sum;
  wire sum0_carry__0_i_1_n_0;
  wire sum0_carry__0_i_2_n_0;
  wire sum0_carry__0_i_3_n_0;
  wire sum0_carry__0_i_4_n_0;
  wire sum0_carry__0_n_0;
  wire sum0_carry__0_n_1;
  wire sum0_carry__0_n_2;
  wire sum0_carry__0_n_3;
  wire sum0_carry__1_i_1_n_0;
  wire sum0_carry__1_i_2_n_0;
  wire sum0_carry__1_i_3_n_0;
  wire sum0_carry__1_i_4_n_0;
  wire sum0_carry__1_n_0;
  wire sum0_carry__1_n_1;
  wire sum0_carry__1_n_2;
  wire sum0_carry__1_n_3;
  wire sum0_carry__2_i_1_n_0;
  wire sum0_carry__2_i_2_n_0;
  wire sum0_carry__2_i_3_n_0;
  wire sum0_carry__2_i_4_n_0;
  wire sum0_carry__2_n_0;
  wire sum0_carry__2_n_1;
  wire sum0_carry__2_n_2;
  wire sum0_carry__2_n_3;
  wire sum0_carry__3_i_1_n_0;
  wire sum0_carry__3_i_2_n_0;
  wire sum0_carry__3_i_3_n_0;
  wire sum0_carry__3_i_4_n_0;
  wire sum0_carry__3_i_5_n_0;
  wire sum0_carry__3_n_0;
  wire sum0_carry__3_n_1;
  wire sum0_carry__3_n_2;
  wire sum0_carry__3_n_3;
  wire sum0_carry__4_i_1_n_0;
  wire sum0_carry__4_i_2_n_0;
  wire sum0_carry__4_i_3_n_0;
  wire sum0_carry__4_i_4_n_0;
  wire sum0_carry__4_n_0;
  wire sum0_carry__4_n_1;
  wire sum0_carry__4_n_2;
  wire sum0_carry__4_n_3;
  wire sum0_carry__5_i_1_n_0;
  wire sum0_carry__5_i_2_n_0;
  wire sum0_carry__5_i_3_n_0;
  wire sum0_carry__5_i_4_n_0;
  wire sum0_carry__5_n_0;
  wire sum0_carry__5_n_1;
  wire sum0_carry__5_n_2;
  wire sum0_carry__5_n_3;
  wire sum0_carry__6_i_1_n_0;
  wire sum0_carry_i_1_n_0;
  wire sum0_carry_i_2_n_0;
  wire sum0_carry_i_3_n_0;
  wire sum0_carry_i_4_n_0;
  wire sum0_carry_n_0;
  wire sum0_carry_n_1;
  wire sum0_carry_n_2;
  wire sum0_carry_n_3;
  wire [44:0]sum_of_squares;
  wire \sum_of_squares[11]_i_2_n_0 ;
  wire \sum_of_squares[11]_i_3_n_0 ;
  wire \sum_of_squares[11]_i_4_n_0 ;
  wire \sum_of_squares[11]_i_5_n_0 ;
  wire \sum_of_squares[15]_i_2_n_0 ;
  wire \sum_of_squares[15]_i_3_n_0 ;
  wire \sum_of_squares[15]_i_4_n_0 ;
  wire \sum_of_squares[15]_i_5_n_0 ;
  wire \sum_of_squares[19]_i_2_n_0 ;
  wire \sum_of_squares[19]_i_3_n_0 ;
  wire \sum_of_squares[19]_i_4_n_0 ;
  wire \sum_of_squares[19]_i_5_n_0 ;
  wire \sum_of_squares[23]_i_2_n_0 ;
  wire \sum_of_squares[23]_i_3_n_0 ;
  wire \sum_of_squares[23]_i_4_n_0 ;
  wire \sum_of_squares[23]_i_5_n_0 ;
  wire \sum_of_squares[27]_i_2_n_0 ;
  wire \sum_of_squares[27]_i_3_n_0 ;
  wire \sum_of_squares[27]_i_4_n_0 ;
  wire \sum_of_squares[27]_i_5_n_0 ;
  wire \sum_of_squares[31]_i_2_n_0 ;
  wire \sum_of_squares[31]_i_3_n_0 ;
  wire \sum_of_squares[31]_i_4_n_0 ;
  wire \sum_of_squares[31]_i_5_n_0 ;
  wire \sum_of_squares[35]_i_2_n_0 ;
  wire \sum_of_squares[35]_i_3_n_0 ;
  wire \sum_of_squares[35]_i_4_n_0 ;
  wire \sum_of_squares[35]_i_5_n_0 ;
  wire \sum_of_squares[39]_i_2_n_0 ;
  wire \sum_of_squares[39]_i_3_n_0 ;
  wire \sum_of_squares[39]_i_4_n_0 ;
  wire \sum_of_squares[39]_i_5_n_0 ;
  wire \sum_of_squares[3]_i_2_n_0 ;
  wire \sum_of_squares[3]_i_3_n_0 ;
  wire \sum_of_squares[3]_i_4_n_0 ;
  wire \sum_of_squares[3]_i_5_n_0 ;
  wire \sum_of_squares[43]_i_2_n_0 ;
  wire \sum_of_squares[43]_i_3_n_0 ;
  wire \sum_of_squares[43]_i_4_n_0 ;
  wire \sum_of_squares[43]_i_5_n_0 ;
  wire \sum_of_squares[44]_i_2_n_0 ;
  wire \sum_of_squares[7]_i_2_n_0 ;
  wire \sum_of_squares[7]_i_3_n_0 ;
  wire \sum_of_squares[7]_i_4_n_0 ;
  wire \sum_of_squares[7]_i_5_n_0 ;
  wire \sum_of_squares_reg[11]_i_1_n_0 ;
  wire \sum_of_squares_reg[11]_i_1_n_1 ;
  wire \sum_of_squares_reg[11]_i_1_n_2 ;
  wire \sum_of_squares_reg[11]_i_1_n_3 ;
  wire \sum_of_squares_reg[15]_i_1_n_0 ;
  wire \sum_of_squares_reg[15]_i_1_n_1 ;
  wire \sum_of_squares_reg[15]_i_1_n_2 ;
  wire \sum_of_squares_reg[15]_i_1_n_3 ;
  wire \sum_of_squares_reg[19]_i_1_n_0 ;
  wire \sum_of_squares_reg[19]_i_1_n_1 ;
  wire \sum_of_squares_reg[19]_i_1_n_2 ;
  wire \sum_of_squares_reg[19]_i_1_n_3 ;
  wire \sum_of_squares_reg[23]_i_1_n_0 ;
  wire \sum_of_squares_reg[23]_i_1_n_1 ;
  wire \sum_of_squares_reg[23]_i_1_n_2 ;
  wire \sum_of_squares_reg[23]_i_1_n_3 ;
  wire \sum_of_squares_reg[27]_i_1_n_0 ;
  wire \sum_of_squares_reg[27]_i_1_n_1 ;
  wire \sum_of_squares_reg[27]_i_1_n_2 ;
  wire \sum_of_squares_reg[27]_i_1_n_3 ;
  wire \sum_of_squares_reg[31]_i_1_n_0 ;
  wire \sum_of_squares_reg[31]_i_1_n_1 ;
  wire \sum_of_squares_reg[31]_i_1_n_2 ;
  wire \sum_of_squares_reg[31]_i_1_n_3 ;
  wire \sum_of_squares_reg[35]_i_1_n_0 ;
  wire \sum_of_squares_reg[35]_i_1_n_1 ;
  wire \sum_of_squares_reg[35]_i_1_n_2 ;
  wire \sum_of_squares_reg[35]_i_1_n_3 ;
  wire \sum_of_squares_reg[39]_i_1_n_0 ;
  wire \sum_of_squares_reg[39]_i_1_n_1 ;
  wire \sum_of_squares_reg[39]_i_1_n_2 ;
  wire \sum_of_squares_reg[39]_i_1_n_3 ;
  wire \sum_of_squares_reg[3]_i_1_n_0 ;
  wire \sum_of_squares_reg[3]_i_1_n_1 ;
  wire \sum_of_squares_reg[3]_i_1_n_2 ;
  wire \sum_of_squares_reg[3]_i_1_n_3 ;
  wire \sum_of_squares_reg[43]_i_1_n_0 ;
  wire \sum_of_squares_reg[43]_i_1_n_1 ;
  wire \sum_of_squares_reg[43]_i_1_n_2 ;
  wire \sum_of_squares_reg[43]_i_1_n_3 ;
  wire \sum_of_squares_reg[7]_i_1_n_0 ;
  wire \sum_of_squares_reg[7]_i_1_n_1 ;
  wire \sum_of_squares_reg[7]_i_1_n_2 ;
  wire \sum_of_squares_reg[7]_i_1_n_3 ;
  wire \sum_of_squares_reg_n_0_[0] ;
  wire \sum_of_squares_reg_n_0_[10] ;
  wire \sum_of_squares_reg_n_0_[11] ;
  wire \sum_of_squares_reg_n_0_[12] ;
  wire \sum_of_squares_reg_n_0_[13] ;
  wire \sum_of_squares_reg_n_0_[14] ;
  wire \sum_of_squares_reg_n_0_[15] ;
  wire \sum_of_squares_reg_n_0_[16] ;
  wire \sum_of_squares_reg_n_0_[17] ;
  wire \sum_of_squares_reg_n_0_[18] ;
  wire \sum_of_squares_reg_n_0_[19] ;
  wire \sum_of_squares_reg_n_0_[1] ;
  wire \sum_of_squares_reg_n_0_[20] ;
  wire \sum_of_squares_reg_n_0_[21] ;
  wire \sum_of_squares_reg_n_0_[22] ;
  wire \sum_of_squares_reg_n_0_[23] ;
  wire \sum_of_squares_reg_n_0_[24] ;
  wire \sum_of_squares_reg_n_0_[25] ;
  wire \sum_of_squares_reg_n_0_[26] ;
  wire \sum_of_squares_reg_n_0_[27] ;
  wire \sum_of_squares_reg_n_0_[28] ;
  wire \sum_of_squares_reg_n_0_[29] ;
  wire \sum_of_squares_reg_n_0_[2] ;
  wire \sum_of_squares_reg_n_0_[30] ;
  wire \sum_of_squares_reg_n_0_[31] ;
  wire \sum_of_squares_reg_n_0_[32] ;
  wire \sum_of_squares_reg_n_0_[33] ;
  wire \sum_of_squares_reg_n_0_[34] ;
  wire \sum_of_squares_reg_n_0_[35] ;
  wire \sum_of_squares_reg_n_0_[36] ;
  wire \sum_of_squares_reg_n_0_[37] ;
  wire \sum_of_squares_reg_n_0_[38] ;
  wire \sum_of_squares_reg_n_0_[39] ;
  wire \sum_of_squares_reg_n_0_[3] ;
  wire \sum_of_squares_reg_n_0_[40] ;
  wire \sum_of_squares_reg_n_0_[41] ;
  wire \sum_of_squares_reg_n_0_[42] ;
  wire \sum_of_squares_reg_n_0_[43] ;
  wire \sum_of_squares_reg_n_0_[44] ;
  wire \sum_of_squares_reg_n_0_[4] ;
  wire \sum_of_squares_reg_n_0_[5] ;
  wire \sum_of_squares_reg_n_0_[6] ;
  wire \sum_of_squares_reg_n_0_[7] ;
  wire \sum_of_squares_reg_n_0_[8] ;
  wire \sum_of_squares_reg_n_0_[9] ;
  wire \sum_reg_n_0_[0] ;
  wire \sum_reg_n_0_[10] ;
  wire \sum_reg_n_0_[11] ;
  wire \sum_reg_n_0_[12] ;
  wire \sum_reg_n_0_[1] ;
  wire \sum_reg_n_0_[2] ;
  wire \sum_reg_n_0_[3] ;
  wire \sum_reg_n_0_[4] ;
  wire \sum_reg_n_0_[5] ;
  wire \sum_reg_n_0_[6] ;
  wire \sum_reg_n_0_[7] ;
  wire \sum_reg_n_0_[8] ;
  wire \sum_reg_n_0_[9] ;
  wire sys_clk;
  wire [15:0]v_max;
  wire [15:0]v_max_temp;
  wire v_max_temp0_carry__0_i_1_n_0;
  wire v_max_temp0_carry__0_i_2_n_0;
  wire v_max_temp0_carry__0_i_3_n_0;
  wire v_max_temp0_carry__0_i_4_n_0;
  wire v_max_temp0_carry__0_i_5_n_0;
  wire v_max_temp0_carry__0_i_6_n_0;
  wire v_max_temp0_carry__0_i_7_n_0;
  wire v_max_temp0_carry__0_i_8_n_0;
  wire v_max_temp0_carry__0_n_0;
  wire v_max_temp0_carry__0_n_1;
  wire v_max_temp0_carry__0_n_2;
  wire v_max_temp0_carry__0_n_3;
  wire v_max_temp0_carry_i_1_n_0;
  wire v_max_temp0_carry_i_2_n_0;
  wire v_max_temp0_carry_i_3_n_0;
  wire v_max_temp0_carry_i_4_n_0;
  wire v_max_temp0_carry_i_5_n_0;
  wire v_max_temp0_carry_i_6_n_0;
  wire v_max_temp0_carry_i_7_n_0;
  wire v_max_temp0_carry_i_8_n_0;
  wire v_max_temp0_carry_n_0;
  wire v_max_temp0_carry_n_1;
  wire v_max_temp0_carry_n_2;
  wire v_max_temp0_carry_n_3;
  wire [15:0]v_min;
  wire [15:0]v_min_temp;
  wire v_min_temp0_carry__0_i_1_n_0;
  wire v_min_temp0_carry__0_i_2_n_0;
  wire v_min_temp0_carry__0_i_3_n_0;
  wire v_min_temp0_carry__0_i_4_n_0;
  wire v_min_temp0_carry__0_i_5_n_0;
  wire v_min_temp0_carry__0_i_6_n_0;
  wire v_min_temp0_carry__0_i_7_n_0;
  wire v_min_temp0_carry__0_i_8_n_0;
  wire v_min_temp0_carry__0_n_0;
  wire v_min_temp0_carry__0_n_1;
  wire v_min_temp0_carry__0_n_2;
  wire v_min_temp0_carry__0_n_3;
  wire v_min_temp0_carry_i_1_n_0;
  wire v_min_temp0_carry_i_2_n_0;
  wire v_min_temp0_carry_i_3_n_0;
  wire v_min_temp0_carry_i_4_n_0;
  wire v_min_temp0_carry_i_5_n_0;
  wire v_min_temp0_carry_i_6_n_0;
  wire v_min_temp0_carry_i_7_n_0;
  wire v_min_temp0_carry_i_8_n_0;
  wire v_min_temp0_carry_n_0;
  wire v_min_temp0_carry_n_1;
  wire v_min_temp0_carry_n_2;
  wire v_min_temp0_carry_n_3;
  wire NLW_data_squared_CARRYCASCOUT_UNCONNECTED;
  wire NLW_data_squared_MULTSIGNOUT_UNCONNECTED;
  wire NLW_data_squared_OVERFLOW_UNCONNECTED;
  wire NLW_data_squared_PATTERNBDETECT_UNCONNECTED;
  wire NLW_data_squared_PATTERNDETECT_UNCONNECTED;
  wire NLW_data_squared_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_data_squared_ACOUT_UNCONNECTED;
  wire [17:0]NLW_data_squared_BCOUT_UNCONNECTED;
  wire [3:0]NLW_data_squared_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_data_squared_P_UNCONNECTED;
  wire [47:0]NLW_data_squared_PCOUT_UNCONNECTED;
  wire [3:2]NLW_final_period_cnt0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_final_period_cnt0_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_period_cnt_temp_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_period_cnt_temp_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:3]NLW_sample_cnt0_carry__1_CO_UNCONNECTED;
  wire [3:3]\NLW_signal_dc_removed0_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]NLW_signal_rectified_reg_i_1_O_UNCONNECTED;
  wire [3:0]NLW_signal_rectified_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_sum0_carry__6_CO_UNCONNECTED;
  wire [3:1]NLW_sum0_carry__6_O_UNCONNECTED;
  wire [3:0]\NLW_sum_of_squares_reg[44]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_sum_of_squares_reg[44]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_v_max_temp0_carry_O_UNCONNECTED;
  wire [3:0]NLW_v_max_temp0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_v_min_temp0_carry_O_UNCONNECTED;
  wire [3:0]NLW_v_min_temp0_carry__0_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state[2]_i_3_n_0 ),
        .I1(sample_cnt[0]),
        .I2(sample_cnt[1]),
        .I3(\FSM_onehot_state[2]_i_4_n_0 ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(sample_cnt[10]),
        .I1(sample_cnt[11]),
        .I2(sample_cnt[8]),
        .I3(sample_cnt[9]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(sample_cnt[12]),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_onehot_state[2]_i_4 
       (.I0(sample_cnt[4]),
        .I1(sample_cnt[5]),
        .I2(sample_cnt[2]),
        .I3(sample_cnt[3]),
        .I4(sample_cnt[7]),
        .I5(sample_cnt[6]),
        .O(\FSM_onehot_state[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:001,SAMPLE:010,CALC_AND_LATCH:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(clk_divider_inst_n_3),
        .PRE(clk_divider_inst_n_11),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "IDLE:001,SAMPLE:010,CALC_AND_LATCH:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(clk_divider_inst_n_11),
        .D(clk_divider_inst_n_2),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "IDLE:001,SAMPLE:010,CALC_AND_LATCH:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(clk_divider_inst_n_11),
        .D(clk_divider_inst_n_0),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  design_1_waveform_measure_0_1_clk_divider clk_divider_inst
       (.CO(v_max_temp0_carry__0_n_0),
        .E(sample_cnt_0),
        .\FSM_onehot_state_reg[1] (clk_divider_inst_n_0),
        .\FSM_onehot_state_reg[1]_0 (clk_divider_inst_n_5),
        .\FSM_onehot_state_reg[1]_1 (clk_divider_inst_n_6),
        .\FSM_onehot_state_reg[1]_2 (clk_divider_inst_n_7),
        .\FSM_onehot_state_reg[1]_3 (clk_divider_inst_n_10),
        .\FSM_onehot_state_reg[2] (clk_divider_inst_n_8),
        .\FSM_onehot_state_reg[2]_0 (\FSM_onehot_state_reg_n_0_[1] ),
        .\FSM_onehot_state_reg[2]_1 (\FSM_onehot_state_reg_n_0_[0] ),
        .\FSM_onehot_state_reg[2]_2 (\FSM_onehot_state_reg_n_0_[2] ),
        .\FSM_onehot_state_reg[2]_3 (\FSM_onehot_state[2]_i_2_n_0 ),
        .measurement_started_reg(measurement_started_reg_n_0),
        .rst_n(rst_n),
        .rst_n_0(clk_divider_inst_n_11),
        .sample_clk(sample_clk),
        .sample_clk_d1(sample_clk_d1),
        .sample_clk_d1_reg(clk_divider_inst_n_2),
        .sample_clk_d1_reg_0(clk_divider_inst_n_3),
        .sample_clk_d1_reg_1(signal_dc_removed0),
        .signal_rectified(signal_rectified),
        .signal_rectified_d1(signal_rectified_d1),
        .sys_clk(sys_clk),
        .\v_min_temp_reg[0] (v_min_temp0_carry__0_n_0));
  FDCE \data_in_synced_reg[0] 
       (.C(sys_clk),
        .CE(sample_clk),
        .CLR(clk_divider_inst_n_11),
        .D(data_in[0]),
        .Q(data_in_synced[0]));
  FDCE \data_in_synced_reg[10] 
       (.C(sys_clk),
        .CE(sample_clk),
        .CLR(clk_divider_inst_n_11),
        .D(data_in[10]),
        .Q(data_in_synced[10]));
  FDCE \data_in_synced_reg[11] 
       (.C(sys_clk),
        .CE(sample_clk),
        .CLR(clk_divider_inst_n_11),
        .D(data_in[11]),
        .Q(data_in_synced[11]));
  FDCE \data_in_synced_reg[12] 
       (.C(sys_clk),
        .CE(sample_clk),
        .CLR(clk_divider_inst_n_11),
        .D(data_in[12]),
        .Q(data_in_synced[12]));
  FDCE \data_in_synced_reg[13] 
       (.C(sys_clk),
        .CE(sample_clk),
        .CLR(clk_divider_inst_n_11),
        .D(data_in[13]),
        .Q(data_in_synced[13]));
  FDCE \data_in_synced_reg[14] 
       (.C(sys_clk),
        .CE(sample_clk),
        .CLR(clk_divider_inst_n_11),
        .D(data_in[14]),
        .Q(data_in_synced[14]));
  FDCE \data_in_synced_reg[15] 
       (.C(sys_clk),
        .CE(sample_clk),
        .CLR(clk_divider_inst_n_11),
        .D(data_in[15]),
        .Q(data_in_synced[15]));
  FDCE \data_in_synced_reg[1] 
       (.C(sys_clk),
        .CE(sample_clk),
        .CLR(clk_divider_inst_n_11),
        .D(data_in[1]),
        .Q(data_in_synced[1]));
  FDCE \data_in_synced_reg[2] 
       (.C(sys_clk),
        .CE(sample_clk),
        .CLR(clk_divider_inst_n_11),
        .D(data_in[2]),
        .Q(data_in_synced[2]));
  FDCE \data_in_synced_reg[3] 
       (.C(sys_clk),
        .CE(sample_clk),
        .CLR(clk_divider_inst_n_11),
        .D(data_in[3]),
        .Q(data_in_synced[3]));
  FDCE \data_in_synced_reg[4] 
       (.C(sys_clk),
        .CE(sample_clk),
        .CLR(clk_divider_inst_n_11),
        .D(data_in[4]),
        .Q(data_in_synced[4]));
  FDCE \data_in_synced_reg[5] 
       (.C(sys_clk),
        .CE(sample_clk),
        .CLR(clk_divider_inst_n_11),
        .D(data_in[5]),
        .Q(data_in_synced[5]));
  FDCE \data_in_synced_reg[6] 
       (.C(sys_clk),
        .CE(sample_clk),
        .CLR(clk_divider_inst_n_11),
        .D(data_in[6]),
        .Q(data_in_synced[6]));
  FDCE \data_in_synced_reg[7] 
       (.C(sys_clk),
        .CE(sample_clk),
        .CLR(clk_divider_inst_n_11),
        .D(data_in[7]),
        .Q(data_in_synced[7]));
  FDCE \data_in_synced_reg[8] 
       (.C(sys_clk),
        .CE(sample_clk),
        .CLR(clk_divider_inst_n_11),
        .D(data_in[8]),
        .Q(data_in_synced[8]));
  FDCE \data_in_synced_reg[9] 
       (.C(sys_clk),
        .CE(sample_clk),
        .CLR(clk_divider_inst_n_11),
        .D(data_in[9]),
        .Q(data_in_synced[9]));
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
    data_squared
       (.A({Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_data_squared_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({Q[15],Q[15],Q}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_data_squared_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_data_squared_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_data_squared_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_data_squared_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_data_squared_OVERFLOW_UNCONNECTED),
        .P({NLW_data_squared_P_UNCONNECTED[47:32],data_squared__0}),
        .PATTERNBDETECT(NLW_data_squared_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_data_squared_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_data_squared_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_data_squared_UNDERFLOW_UNCONNECTED));
  FDCE \dc_offset_reg[0] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(p_0_in[0]),
        .Q(dc_offset[0]));
  FDCE \dc_offset_reg[10] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(p_0_in[10]),
        .Q(dc_offset[10]));
  FDCE \dc_offset_reg[11] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(p_0_in[11]),
        .Q(dc_offset[11]));
  FDCE \dc_offset_reg[12] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(p_0_in[12]),
        .Q(dc_offset[12]));
  FDCE \dc_offset_reg[13] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(p_0_in[13]),
        .Q(dc_offset[13]));
  FDCE \dc_offset_reg[14] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(p_0_in[14]),
        .Q(dc_offset[14]));
  FDCE \dc_offset_reg[15] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(p_0_in[15]),
        .Q(dc_offset[15]));
  FDCE \dc_offset_reg[1] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(p_0_in[1]),
        .Q(dc_offset[1]));
  FDCE \dc_offset_reg[2] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(p_0_in[2]),
        .Q(dc_offset[2]));
  FDCE \dc_offset_reg[3] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(p_0_in[3]),
        .Q(dc_offset[3]));
  FDCE \dc_offset_reg[4] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(p_0_in[4]),
        .Q(dc_offset[4]));
  FDCE \dc_offset_reg[5] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(p_0_in[5]),
        .Q(dc_offset[5]));
  FDCE \dc_offset_reg[6] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(p_0_in[6]),
        .Q(dc_offset[6]));
  FDCE \dc_offset_reg[7] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(p_0_in[7]),
        .Q(dc_offset[7]));
  FDCE \dc_offset_reg[8] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(p_0_in[8]),
        .Q(dc_offset[8]));
  FDCE \dc_offset_reg[9] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(p_0_in[9]),
        .Q(dc_offset[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 final_period_cnt0_carry
       (.CI(1'b0),
        .CO({final_period_cnt0_carry_n_0,final_period_cnt0_carry_n_1,final_period_cnt0_carry_n_2,final_period_cnt0_carry_n_3}),
        .CYINIT(period_cnt_temp[0]),
        .DI(period_cnt_temp[4:1]),
        .O(in10[4:1]),
        .S({final_period_cnt0_carry_i_1_n_0,final_period_cnt0_carry_i_2_n_0,final_period_cnt0_carry_i_3_n_0,final_period_cnt0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 final_period_cnt0_carry__0
       (.CI(final_period_cnt0_carry_n_0),
        .CO({final_period_cnt0_carry__0_n_0,final_period_cnt0_carry__0_n_1,final_period_cnt0_carry__0_n_2,final_period_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(period_cnt_temp[8:5]),
        .O(in10[8:5]),
        .S({final_period_cnt0_carry__0_i_1_n_0,final_period_cnt0_carry__0_i_2_n_0,final_period_cnt0_carry__0_i_3_n_0,final_period_cnt0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    final_period_cnt0_carry__0_i_1
       (.I0(period_cnt_temp[8]),
        .O(final_period_cnt0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    final_period_cnt0_carry__0_i_2
       (.I0(period_cnt_temp[7]),
        .O(final_period_cnt0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    final_period_cnt0_carry__0_i_3
       (.I0(period_cnt_temp[6]),
        .O(final_period_cnt0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    final_period_cnt0_carry__0_i_4
       (.I0(period_cnt_temp[5]),
        .O(final_period_cnt0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 final_period_cnt0_carry__1
       (.CI(final_period_cnt0_carry__0_n_0),
        .CO({final_period_cnt0_carry__1_n_0,final_period_cnt0_carry__1_n_1,final_period_cnt0_carry__1_n_2,final_period_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(period_cnt_temp[12:9]),
        .O(in10[12:9]),
        .S({final_period_cnt0_carry__1_i_1_n_0,final_period_cnt0_carry__1_i_2_n_0,final_period_cnt0_carry__1_i_3_n_0,final_period_cnt0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    final_period_cnt0_carry__1_i_1
       (.I0(period_cnt_temp[12]),
        .O(final_period_cnt0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    final_period_cnt0_carry__1_i_2
       (.I0(period_cnt_temp[11]),
        .O(final_period_cnt0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    final_period_cnt0_carry__1_i_3
       (.I0(period_cnt_temp[10]),
        .O(final_period_cnt0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    final_period_cnt0_carry__1_i_4
       (.I0(period_cnt_temp[9]),
        .O(final_period_cnt0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 final_period_cnt0_carry__2
       (.CI(final_period_cnt0_carry__1_n_0),
        .CO({NLW_final_period_cnt0_carry__2_CO_UNCONNECTED[3:2],final_period_cnt0_carry__2_n_2,final_period_cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,period_cnt_temp[14:13]}),
        .O({NLW_final_period_cnt0_carry__2_O_UNCONNECTED[3],in10[15:13]}),
        .S({1'b0,final_period_cnt0_carry__2_i_1_n_0,final_period_cnt0_carry__2_i_2_n_0,final_period_cnt0_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    final_period_cnt0_carry__2_i_1
       (.I0(period_cnt_temp[15]),
        .O(final_period_cnt0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    final_period_cnt0_carry__2_i_2
       (.I0(period_cnt_temp[14]),
        .O(final_period_cnt0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    final_period_cnt0_carry__2_i_3
       (.I0(period_cnt_temp[13]),
        .O(final_period_cnt0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    final_period_cnt0_carry_i_1
       (.I0(period_cnt_temp[4]),
        .O(final_period_cnt0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    final_period_cnt0_carry_i_2
       (.I0(period_cnt_temp[3]),
        .O(final_period_cnt0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    final_period_cnt0_carry_i_3
       (.I0(period_cnt_temp[2]),
        .O(final_period_cnt0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    final_period_cnt0_carry_i_4
       (.I0(period_cnt_temp[1]),
        .O(final_period_cnt0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \final_period_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(period_cnt_temp[0]),
        .O(\final_period_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \final_period_cnt[10]_i_1 
       (.I0(in10[10]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\final_period_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \final_period_cnt[11]_i_1 
       (.I0(in10[11]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\final_period_cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \final_period_cnt[12]_i_1 
       (.I0(in10[12]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\final_period_cnt[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \final_period_cnt[13]_i_1 
       (.I0(in10[13]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\final_period_cnt[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \final_period_cnt[14]_i_1 
       (.I0(in10[14]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\final_period_cnt[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \final_period_cnt[15]_i_1 
       (.I0(measurement_started_reg_n_0),
        .I1(signal_rectified_d1),
        .I2(signal_rectified),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\final_period_cnt[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \final_period_cnt[15]_i_2 
       (.I0(in10[15]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\final_period_cnt[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \final_period_cnt[1]_i_1 
       (.I0(in10[1]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\final_period_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \final_period_cnt[2]_i_1 
       (.I0(in10[2]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\final_period_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \final_period_cnt[3]_i_1 
       (.I0(in10[3]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\final_period_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \final_period_cnt[4]_i_1 
       (.I0(in10[4]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\final_period_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \final_period_cnt[5]_i_1 
       (.I0(in10[5]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\final_period_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \final_period_cnt[6]_i_1 
       (.I0(in10[6]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\final_period_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \final_period_cnt[7]_i_1 
       (.I0(in10[7]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\final_period_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \final_period_cnt[8]_i_1 
       (.I0(in10[8]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\final_period_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \final_period_cnt[9]_i_1 
       (.I0(in10[9]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\final_period_cnt[9]_i_1_n_0 ));
  FDCE \final_period_cnt_reg[0] 
       (.C(sys_clk),
        .CE(\final_period_cnt[15]_i_1_n_0 ),
        .CLR(clk_divider_inst_n_11),
        .D(\final_period_cnt[0]_i_1_n_0 ),
        .Q(final_period_cnt[0]));
  FDCE \final_period_cnt_reg[10] 
       (.C(sys_clk),
        .CE(\final_period_cnt[15]_i_1_n_0 ),
        .CLR(clk_divider_inst_n_11),
        .D(\final_period_cnt[10]_i_1_n_0 ),
        .Q(final_period_cnt[10]));
  FDCE \final_period_cnt_reg[11] 
       (.C(sys_clk),
        .CE(\final_period_cnt[15]_i_1_n_0 ),
        .CLR(clk_divider_inst_n_11),
        .D(\final_period_cnt[11]_i_1_n_0 ),
        .Q(final_period_cnt[11]));
  FDCE \final_period_cnt_reg[12] 
       (.C(sys_clk),
        .CE(\final_period_cnt[15]_i_1_n_0 ),
        .CLR(clk_divider_inst_n_11),
        .D(\final_period_cnt[12]_i_1_n_0 ),
        .Q(final_period_cnt[12]));
  FDCE \final_period_cnt_reg[13] 
       (.C(sys_clk),
        .CE(\final_period_cnt[15]_i_1_n_0 ),
        .CLR(clk_divider_inst_n_11),
        .D(\final_period_cnt[13]_i_1_n_0 ),
        .Q(final_period_cnt[13]));
  FDCE \final_period_cnt_reg[14] 
       (.C(sys_clk),
        .CE(\final_period_cnt[15]_i_1_n_0 ),
        .CLR(clk_divider_inst_n_11),
        .D(\final_period_cnt[14]_i_1_n_0 ),
        .Q(final_period_cnt[14]));
  FDCE \final_period_cnt_reg[15] 
       (.C(sys_clk),
        .CE(\final_period_cnt[15]_i_1_n_0 ),
        .CLR(clk_divider_inst_n_11),
        .D(\final_period_cnt[15]_i_2_n_0 ),
        .Q(final_period_cnt[15]));
  FDCE \final_period_cnt_reg[1] 
       (.C(sys_clk),
        .CE(\final_period_cnt[15]_i_1_n_0 ),
        .CLR(clk_divider_inst_n_11),
        .D(\final_period_cnt[1]_i_1_n_0 ),
        .Q(final_period_cnt[1]));
  FDCE \final_period_cnt_reg[2] 
       (.C(sys_clk),
        .CE(\final_period_cnt[15]_i_1_n_0 ),
        .CLR(clk_divider_inst_n_11),
        .D(\final_period_cnt[2]_i_1_n_0 ),
        .Q(final_period_cnt[2]));
  FDCE \final_period_cnt_reg[3] 
       (.C(sys_clk),
        .CE(\final_period_cnt[15]_i_1_n_0 ),
        .CLR(clk_divider_inst_n_11),
        .D(\final_period_cnt[3]_i_1_n_0 ),
        .Q(final_period_cnt[3]));
  FDCE \final_period_cnt_reg[4] 
       (.C(sys_clk),
        .CE(\final_period_cnt[15]_i_1_n_0 ),
        .CLR(clk_divider_inst_n_11),
        .D(\final_period_cnt[4]_i_1_n_0 ),
        .Q(final_period_cnt[4]));
  FDCE \final_period_cnt_reg[5] 
       (.C(sys_clk),
        .CE(\final_period_cnt[15]_i_1_n_0 ),
        .CLR(clk_divider_inst_n_11),
        .D(\final_period_cnt[5]_i_1_n_0 ),
        .Q(final_period_cnt[5]));
  FDCE \final_period_cnt_reg[6] 
       (.C(sys_clk),
        .CE(\final_period_cnt[15]_i_1_n_0 ),
        .CLR(clk_divider_inst_n_11),
        .D(\final_period_cnt[6]_i_1_n_0 ),
        .Q(final_period_cnt[6]));
  FDCE \final_period_cnt_reg[7] 
       (.C(sys_clk),
        .CE(\final_period_cnt[15]_i_1_n_0 ),
        .CLR(clk_divider_inst_n_11),
        .D(\final_period_cnt[7]_i_1_n_0 ),
        .Q(final_period_cnt[7]));
  FDCE \final_period_cnt_reg[8] 
       (.C(sys_clk),
        .CE(\final_period_cnt[15]_i_1_n_0 ),
        .CLR(clk_divider_inst_n_11),
        .D(\final_period_cnt[8]_i_1_n_0 ),
        .Q(final_period_cnt[8]));
  FDCE \final_period_cnt_reg[9] 
       (.C(sys_clk),
        .CE(\final_period_cnt[15]_i_1_n_0 ),
        .CLR(clk_divider_inst_n_11),
        .D(\final_period_cnt[9]_i_1_n_0 ),
        .Q(final_period_cnt[9]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(data_in_synced[7]),
        .I1(dc_offset[7]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2
       (.I0(data_in_synced[6]),
        .I1(dc_offset[6]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3
       (.I0(data_in_synced[5]),
        .I1(dc_offset[5]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4
       (.I0(data_in_synced[4]),
        .I1(dc_offset[4]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1
       (.I0(data_in_synced[11]),
        .I1(dc_offset[11]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2
       (.I0(data_in_synced[10]),
        .I1(dc_offset[10]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3
       (.I0(data_in_synced[9]),
        .I1(dc_offset[9]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4
       (.I0(data_in_synced[8]),
        .I1(dc_offset[8]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1
       (.I0(data_in_synced[15]),
        .I1(dc_offset[15]),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2
       (.I0(data_in_synced[14]),
        .I1(dc_offset[14]),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_3
       (.I0(data_in_synced[13]),
        .I1(dc_offset[13]),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_4
       (.I0(data_in_synced[12]),
        .I1(dc_offset[12]),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1
       (.I0(data_in_synced[3]),
        .I1(dc_offset[3]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2
       (.I0(data_in_synced[2]),
        .I1(dc_offset[2]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3
       (.I0(data_in_synced[1]),
        .I1(dc_offset[1]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4
       (.I0(data_in_synced[0]),
        .I1(dc_offset[0]),
        .O(i__carry_i_4_n_0));
  FDCE \mean_square_reg[0] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[13] ),
        .Q(mean_square[0]));
  FDCE \mean_square_reg[10] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[23] ),
        .Q(mean_square[10]));
  FDCE \mean_square_reg[11] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[24] ),
        .Q(mean_square[11]));
  FDCE \mean_square_reg[12] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[25] ),
        .Q(mean_square[12]));
  FDCE \mean_square_reg[13] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[26] ),
        .Q(mean_square[13]));
  FDCE \mean_square_reg[14] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[27] ),
        .Q(mean_square[14]));
  FDCE \mean_square_reg[15] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[28] ),
        .Q(mean_square[15]));
  FDCE \mean_square_reg[16] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[29] ),
        .Q(mean_square[16]));
  FDCE \mean_square_reg[17] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[30] ),
        .Q(mean_square[17]));
  FDCE \mean_square_reg[18] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[31] ),
        .Q(mean_square[18]));
  FDCE \mean_square_reg[19] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[32] ),
        .Q(mean_square[19]));
  FDCE \mean_square_reg[1] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[14] ),
        .Q(mean_square[1]));
  FDCE \mean_square_reg[20] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[33] ),
        .Q(mean_square[20]));
  FDCE \mean_square_reg[21] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[34] ),
        .Q(mean_square[21]));
  FDCE \mean_square_reg[22] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[35] ),
        .Q(mean_square[22]));
  FDCE \mean_square_reg[23] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[36] ),
        .Q(mean_square[23]));
  FDCE \mean_square_reg[24] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[37] ),
        .Q(mean_square[24]));
  FDCE \mean_square_reg[25] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[38] ),
        .Q(mean_square[25]));
  FDCE \mean_square_reg[26] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[39] ),
        .Q(mean_square[26]));
  FDCE \mean_square_reg[27] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[40] ),
        .Q(mean_square[27]));
  FDCE \mean_square_reg[28] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[41] ),
        .Q(mean_square[28]));
  FDCE \mean_square_reg[29] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[42] ),
        .Q(mean_square[29]));
  FDCE \mean_square_reg[2] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[15] ),
        .Q(mean_square[2]));
  FDCE \mean_square_reg[30] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[43] ),
        .Q(mean_square[30]));
  FDCE \mean_square_reg[31] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[44] ),
        .Q(mean_square[31]));
  FDCE \mean_square_reg[3] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[16] ),
        .Q(mean_square[3]));
  FDCE \mean_square_reg[4] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[17] ),
        .Q(mean_square[4]));
  FDCE \mean_square_reg[5] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[18] ),
        .Q(mean_square[5]));
  FDCE \mean_square_reg[6] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[19] ),
        .Q(mean_square[6]));
  FDCE \mean_square_reg[7] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[20] ),
        .Q(mean_square[7]));
  FDCE \mean_square_reg[8] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[21] ),
        .Q(mean_square[8]));
  FDCE \mean_square_reg[9] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(\sum_of_squares_reg_n_0_[22] ),
        .Q(mean_square[9]));
  FDCE measure_done_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(clk_divider_inst_n_11),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(measure_done));
  FDCE measurement_started_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(clk_divider_inst_n_11),
        .D(clk_divider_inst_n_10),
        .Q(measurement_started_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h13)) 
    \period_cnt_temp[0]_i_1 
       (.I0(period_cnt_temp[0]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(measurement_started_reg_n_0),
        .O(period_cnt_temp_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \period_cnt_temp[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(measurement_started_reg_n_0),
        .I2(period_cnt_temp0[10]),
        .O(period_cnt_temp_1[10]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \period_cnt_temp[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(measurement_started_reg_n_0),
        .I2(period_cnt_temp0[11]),
        .O(period_cnt_temp_1[11]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \period_cnt_temp[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(measurement_started_reg_n_0),
        .I2(period_cnt_temp0[12]),
        .O(period_cnt_temp_1[12]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \period_cnt_temp[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(measurement_started_reg_n_0),
        .I2(period_cnt_temp0[13]),
        .O(period_cnt_temp_1[13]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \period_cnt_temp[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(measurement_started_reg_n_0),
        .I2(period_cnt_temp0[14]),
        .O(period_cnt_temp_1[14]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \period_cnt_temp[15]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(measurement_started_reg_n_0),
        .I2(period_cnt_temp0[15]),
        .O(period_cnt_temp_1[15]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \period_cnt_temp[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(measurement_started_reg_n_0),
        .I2(period_cnt_temp0[1]),
        .O(period_cnt_temp_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \period_cnt_temp[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(measurement_started_reg_n_0),
        .I2(period_cnt_temp0[2]),
        .O(period_cnt_temp_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \period_cnt_temp[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(measurement_started_reg_n_0),
        .I2(period_cnt_temp0[3]),
        .O(period_cnt_temp_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \period_cnt_temp[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(measurement_started_reg_n_0),
        .I2(period_cnt_temp0[4]),
        .O(period_cnt_temp_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \period_cnt_temp[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(measurement_started_reg_n_0),
        .I2(period_cnt_temp0[5]),
        .O(period_cnt_temp_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \period_cnt_temp[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(measurement_started_reg_n_0),
        .I2(period_cnt_temp0[6]),
        .O(period_cnt_temp_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \period_cnt_temp[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(measurement_started_reg_n_0),
        .I2(period_cnt_temp0[7]),
        .O(period_cnt_temp_1[7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \period_cnt_temp[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(measurement_started_reg_n_0),
        .I2(period_cnt_temp0[8]),
        .O(period_cnt_temp_1[8]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \period_cnt_temp[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(measurement_started_reg_n_0),
        .I2(period_cnt_temp0[9]),
        .O(period_cnt_temp_1[9]));
  FDCE \period_cnt_temp_reg[0] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_8),
        .CLR(clk_divider_inst_n_11),
        .D(period_cnt_temp_1[0]),
        .Q(period_cnt_temp[0]));
  FDCE \period_cnt_temp_reg[10] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_8),
        .CLR(clk_divider_inst_n_11),
        .D(period_cnt_temp_1[10]),
        .Q(period_cnt_temp[10]));
  FDCE \period_cnt_temp_reg[11] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_8),
        .CLR(clk_divider_inst_n_11),
        .D(period_cnt_temp_1[11]),
        .Q(period_cnt_temp[11]));
  FDCE \period_cnt_temp_reg[12] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_8),
        .CLR(clk_divider_inst_n_11),
        .D(period_cnt_temp_1[12]),
        .Q(period_cnt_temp[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \period_cnt_temp_reg[12]_i_2 
       (.CI(\period_cnt_temp_reg[8]_i_2_n_0 ),
        .CO({\period_cnt_temp_reg[12]_i_2_n_0 ,\period_cnt_temp_reg[12]_i_2_n_1 ,\period_cnt_temp_reg[12]_i_2_n_2 ,\period_cnt_temp_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(period_cnt_temp0[12:9]),
        .S(period_cnt_temp[12:9]));
  FDCE \period_cnt_temp_reg[13] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_8),
        .CLR(clk_divider_inst_n_11),
        .D(period_cnt_temp_1[13]),
        .Q(period_cnt_temp[13]));
  FDCE \period_cnt_temp_reg[14] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_8),
        .CLR(clk_divider_inst_n_11),
        .D(period_cnt_temp_1[14]),
        .Q(period_cnt_temp[14]));
  FDCE \period_cnt_temp_reg[15] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_8),
        .CLR(clk_divider_inst_n_11),
        .D(period_cnt_temp_1[15]),
        .Q(period_cnt_temp[15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \period_cnt_temp_reg[15]_i_3 
       (.CI(\period_cnt_temp_reg[12]_i_2_n_0 ),
        .CO({\NLW_period_cnt_temp_reg[15]_i_3_CO_UNCONNECTED [3:2],\period_cnt_temp_reg[15]_i_3_n_2 ,\period_cnt_temp_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_period_cnt_temp_reg[15]_i_3_O_UNCONNECTED [3],period_cnt_temp0[15:13]}),
        .S({1'b0,period_cnt_temp[15:13]}));
  FDCE \period_cnt_temp_reg[1] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_8),
        .CLR(clk_divider_inst_n_11),
        .D(period_cnt_temp_1[1]),
        .Q(period_cnt_temp[1]));
  FDCE \period_cnt_temp_reg[2] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_8),
        .CLR(clk_divider_inst_n_11),
        .D(period_cnt_temp_1[2]),
        .Q(period_cnt_temp[2]));
  FDCE \period_cnt_temp_reg[3] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_8),
        .CLR(clk_divider_inst_n_11),
        .D(period_cnt_temp_1[3]),
        .Q(period_cnt_temp[3]));
  FDCE \period_cnt_temp_reg[4] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_8),
        .CLR(clk_divider_inst_n_11),
        .D(period_cnt_temp_1[4]),
        .Q(period_cnt_temp[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \period_cnt_temp_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\period_cnt_temp_reg[4]_i_2_n_0 ,\period_cnt_temp_reg[4]_i_2_n_1 ,\period_cnt_temp_reg[4]_i_2_n_2 ,\period_cnt_temp_reg[4]_i_2_n_3 }),
        .CYINIT(period_cnt_temp[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(period_cnt_temp0[4:1]),
        .S(period_cnt_temp[4:1]));
  FDCE \period_cnt_temp_reg[5] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_8),
        .CLR(clk_divider_inst_n_11),
        .D(period_cnt_temp_1[5]),
        .Q(period_cnt_temp[5]));
  FDCE \period_cnt_temp_reg[6] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_8),
        .CLR(clk_divider_inst_n_11),
        .D(period_cnt_temp_1[6]),
        .Q(period_cnt_temp[6]));
  FDCE \period_cnt_temp_reg[7] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_8),
        .CLR(clk_divider_inst_n_11),
        .D(period_cnt_temp_1[7]),
        .Q(period_cnt_temp[7]));
  FDCE \period_cnt_temp_reg[8] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_8),
        .CLR(clk_divider_inst_n_11),
        .D(period_cnt_temp_1[8]),
        .Q(period_cnt_temp[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \period_cnt_temp_reg[8]_i_2 
       (.CI(\period_cnt_temp_reg[4]_i_2_n_0 ),
        .CO({\period_cnt_temp_reg[8]_i_2_n_0 ,\period_cnt_temp_reg[8]_i_2_n_1 ,\period_cnt_temp_reg[8]_i_2_n_2 ,\period_cnt_temp_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(period_cnt_temp0[8:5]),
        .S(period_cnt_temp[8:5]));
  FDCE \period_cnt_temp_reg[9] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_8),
        .CLR(clk_divider_inst_n_11),
        .D(period_cnt_temp_1[9]),
        .Q(period_cnt_temp[9]));
  FDCE \period_sample_cnt_reg[0] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(final_period_cnt[0]),
        .Q(period_sample_cnt[0]));
  FDCE \period_sample_cnt_reg[10] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(final_period_cnt[10]),
        .Q(period_sample_cnt[10]));
  FDCE \period_sample_cnt_reg[11] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(final_period_cnt[11]),
        .Q(period_sample_cnt[11]));
  FDCE \period_sample_cnt_reg[12] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(final_period_cnt[12]),
        .Q(period_sample_cnt[12]));
  FDCE \period_sample_cnt_reg[13] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(final_period_cnt[13]),
        .Q(period_sample_cnt[13]));
  FDCE \period_sample_cnt_reg[14] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(final_period_cnt[14]),
        .Q(period_sample_cnt[14]));
  FDCE \period_sample_cnt_reg[15] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(final_period_cnt[15]),
        .Q(period_sample_cnt[15]));
  FDCE \period_sample_cnt_reg[1] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(final_period_cnt[1]),
        .Q(period_sample_cnt[1]));
  FDCE \period_sample_cnt_reg[2] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(final_period_cnt[2]),
        .Q(period_sample_cnt[2]));
  FDCE \period_sample_cnt_reg[3] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(final_period_cnt[3]),
        .Q(period_sample_cnt[3]));
  FDCE \period_sample_cnt_reg[4] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(final_period_cnt[4]),
        .Q(period_sample_cnt[4]));
  FDCE \period_sample_cnt_reg[5] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(final_period_cnt[5]),
        .Q(period_sample_cnt[5]));
  FDCE \period_sample_cnt_reg[6] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(final_period_cnt[6]),
        .Q(period_sample_cnt[6]));
  FDCE \period_sample_cnt_reg[7] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(final_period_cnt[7]),
        .Q(period_sample_cnt[7]));
  FDCE \period_sample_cnt_reg[8] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(final_period_cnt[8]),
        .Q(period_sample_cnt[8]));
  FDCE \period_sample_cnt_reg[9] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(final_period_cnt[9]),
        .Q(period_sample_cnt[9]));
  FDCE sample_clk_d1_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(clk_divider_inst_n_11),
        .D(sample_clk),
        .Q(sample_clk_d1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sample_cnt0_carry
       (.CI(1'b0),
        .CO({sample_cnt0_carry_n_0,sample_cnt0_carry_n_1,sample_cnt0_carry_n_2,sample_cnt0_carry_n_3}),
        .CYINIT(sample_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in17[4:1]),
        .S(sample_cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sample_cnt0_carry__0
       (.CI(sample_cnt0_carry_n_0),
        .CO({sample_cnt0_carry__0_n_0,sample_cnt0_carry__0_n_1,sample_cnt0_carry__0_n_2,sample_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in17[8:5]),
        .S(sample_cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sample_cnt0_carry__1
       (.CI(sample_cnt0_carry__0_n_0),
        .CO({NLW_sample_cnt0_carry__1_CO_UNCONNECTED[3],sample_cnt0_carry__1_n_1,sample_cnt0_carry__1_n_2,sample_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in17[12:9]),
        .S(sample_cnt[12:9]));
  LUT3 #(
    .INIT(8'hF1)) 
    \sample_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(sample_cnt[0]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\sample_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_cnt[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in17[10]),
        .O(\sample_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_cnt[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in17[11]),
        .O(\sample_cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_cnt[12]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in17[12]),
        .O(\sample_cnt[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_cnt[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in17[1]),
        .O(\sample_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_cnt[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in17[2]),
        .O(\sample_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_cnt[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in17[3]),
        .O(\sample_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_cnt[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in17[4]),
        .O(\sample_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_cnt[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in17[5]),
        .O(\sample_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_cnt[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in17[6]),
        .O(\sample_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_cnt[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in17[7]),
        .O(\sample_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_cnt[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in17[8]),
        .O(\sample_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sample_cnt[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in17[9]),
        .O(\sample_cnt[9]_i_1_n_0 ));
  FDCE \sample_cnt_reg[0] 
       (.C(sys_clk),
        .CE(sample_cnt_0),
        .CLR(clk_divider_inst_n_11),
        .D(\sample_cnt[0]_i_1_n_0 ),
        .Q(sample_cnt[0]));
  FDCE \sample_cnt_reg[10] 
       (.C(sys_clk),
        .CE(sample_cnt_0),
        .CLR(clk_divider_inst_n_11),
        .D(\sample_cnt[10]_i_1_n_0 ),
        .Q(sample_cnt[10]));
  FDCE \sample_cnt_reg[11] 
       (.C(sys_clk),
        .CE(sample_cnt_0),
        .CLR(clk_divider_inst_n_11),
        .D(\sample_cnt[11]_i_1_n_0 ),
        .Q(sample_cnt[11]));
  FDCE \sample_cnt_reg[12] 
       (.C(sys_clk),
        .CE(sample_cnt_0),
        .CLR(clk_divider_inst_n_11),
        .D(\sample_cnt[12]_i_2_n_0 ),
        .Q(sample_cnt[12]));
  FDCE \sample_cnt_reg[1] 
       (.C(sys_clk),
        .CE(sample_cnt_0),
        .CLR(clk_divider_inst_n_11),
        .D(\sample_cnt[1]_i_1_n_0 ),
        .Q(sample_cnt[1]));
  FDCE \sample_cnt_reg[2] 
       (.C(sys_clk),
        .CE(sample_cnt_0),
        .CLR(clk_divider_inst_n_11),
        .D(\sample_cnt[2]_i_1_n_0 ),
        .Q(sample_cnt[2]));
  FDCE \sample_cnt_reg[3] 
       (.C(sys_clk),
        .CE(sample_cnt_0),
        .CLR(clk_divider_inst_n_11),
        .D(\sample_cnt[3]_i_1_n_0 ),
        .Q(sample_cnt[3]));
  FDCE \sample_cnt_reg[4] 
       (.C(sys_clk),
        .CE(sample_cnt_0),
        .CLR(clk_divider_inst_n_11),
        .D(\sample_cnt[4]_i_1_n_0 ),
        .Q(sample_cnt[4]));
  FDCE \sample_cnt_reg[5] 
       (.C(sys_clk),
        .CE(sample_cnt_0),
        .CLR(clk_divider_inst_n_11),
        .D(\sample_cnt[5]_i_1_n_0 ),
        .Q(sample_cnt[5]));
  FDCE \sample_cnt_reg[6] 
       (.C(sys_clk),
        .CE(sample_cnt_0),
        .CLR(clk_divider_inst_n_11),
        .D(\sample_cnt[6]_i_1_n_0 ),
        .Q(sample_cnt[6]));
  FDCE \sample_cnt_reg[7] 
       (.C(sys_clk),
        .CE(sample_cnt_0),
        .CLR(clk_divider_inst_n_11),
        .D(\sample_cnt[7]_i_1_n_0 ),
        .Q(sample_cnt[7]));
  FDCE \sample_cnt_reg[8] 
       (.C(sys_clk),
        .CE(sample_cnt_0),
        .CLR(clk_divider_inst_n_11),
        .D(\sample_cnt[8]_i_1_n_0 ),
        .Q(sample_cnt[8]));
  FDCE \sample_cnt_reg[9] 
       (.C(sys_clk),
        .CE(sample_cnt_0),
        .CLR(clk_divider_inst_n_11),
        .D(\sample_cnt[9]_i_1_n_0 ),
        .Q(sample_cnt[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \signal_dc_removed0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\signal_dc_removed0_inferred__0/i__carry_n_0 ,\signal_dc_removed0_inferred__0/i__carry_n_1 ,\signal_dc_removed0_inferred__0/i__carry_n_2 ,\signal_dc_removed0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(data_in_synced[3:0]),
        .O(signal_dc_removed00_in[3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \signal_dc_removed0_inferred__0/i__carry__0 
       (.CI(\signal_dc_removed0_inferred__0/i__carry_n_0 ),
        .CO({\signal_dc_removed0_inferred__0/i__carry__0_n_0 ,\signal_dc_removed0_inferred__0/i__carry__0_n_1 ,\signal_dc_removed0_inferred__0/i__carry__0_n_2 ,\signal_dc_removed0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(data_in_synced[7:4]),
        .O(signal_dc_removed00_in[7:4]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \signal_dc_removed0_inferred__0/i__carry__1 
       (.CI(\signal_dc_removed0_inferred__0/i__carry__0_n_0 ),
        .CO({\signal_dc_removed0_inferred__0/i__carry__1_n_0 ,\signal_dc_removed0_inferred__0/i__carry__1_n_1 ,\signal_dc_removed0_inferred__0/i__carry__1_n_2 ,\signal_dc_removed0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_in_synced[11:8]),
        .O(signal_dc_removed00_in[11:8]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \signal_dc_removed0_inferred__0/i__carry__2 
       (.CI(\signal_dc_removed0_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_signal_dc_removed0_inferred__0/i__carry__2_CO_UNCONNECTED [3],\signal_dc_removed0_inferred__0/i__carry__2_n_1 ,\signal_dc_removed0_inferred__0/i__carry__2_n_2 ,\signal_dc_removed0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,data_in_synced[14:12]}),
        .O(signal_dc_removed00_in[15:12]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  FDCE \signal_dc_removed_reg[0] 
       (.C(sys_clk),
        .CE(signal_dc_removed0),
        .CLR(clk_divider_inst_n_11),
        .D(signal_dc_removed00_in[0]),
        .Q(Q[0]));
  FDCE \signal_dc_removed_reg[10] 
       (.C(sys_clk),
        .CE(signal_dc_removed0),
        .CLR(clk_divider_inst_n_11),
        .D(signal_dc_removed00_in[10]),
        .Q(Q[10]));
  FDCE \signal_dc_removed_reg[11] 
       (.C(sys_clk),
        .CE(signal_dc_removed0),
        .CLR(clk_divider_inst_n_11),
        .D(signal_dc_removed00_in[11]),
        .Q(Q[11]));
  FDCE \signal_dc_removed_reg[12] 
       (.C(sys_clk),
        .CE(signal_dc_removed0),
        .CLR(clk_divider_inst_n_11),
        .D(signal_dc_removed00_in[12]),
        .Q(Q[12]));
  FDCE \signal_dc_removed_reg[13] 
       (.C(sys_clk),
        .CE(signal_dc_removed0),
        .CLR(clk_divider_inst_n_11),
        .D(signal_dc_removed00_in[13]),
        .Q(Q[13]));
  FDCE \signal_dc_removed_reg[14] 
       (.C(sys_clk),
        .CE(signal_dc_removed0),
        .CLR(clk_divider_inst_n_11),
        .D(signal_dc_removed00_in[14]),
        .Q(Q[14]));
  FDCE \signal_dc_removed_reg[15] 
       (.C(sys_clk),
        .CE(signal_dc_removed0),
        .CLR(clk_divider_inst_n_11),
        .D(signal_dc_removed00_in[15]),
        .Q(Q[15]));
  FDCE \signal_dc_removed_reg[1] 
       (.C(sys_clk),
        .CE(signal_dc_removed0),
        .CLR(clk_divider_inst_n_11),
        .D(signal_dc_removed00_in[1]),
        .Q(Q[1]));
  FDCE \signal_dc_removed_reg[2] 
       (.C(sys_clk),
        .CE(signal_dc_removed0),
        .CLR(clk_divider_inst_n_11),
        .D(signal_dc_removed00_in[2]),
        .Q(Q[2]));
  FDCE \signal_dc_removed_reg[3] 
       (.C(sys_clk),
        .CE(signal_dc_removed0),
        .CLR(clk_divider_inst_n_11),
        .D(signal_dc_removed00_in[3]),
        .Q(Q[3]));
  FDCE \signal_dc_removed_reg[4] 
       (.C(sys_clk),
        .CE(signal_dc_removed0),
        .CLR(clk_divider_inst_n_11),
        .D(signal_dc_removed00_in[4]),
        .Q(Q[4]));
  FDCE \signal_dc_removed_reg[5] 
       (.C(sys_clk),
        .CE(signal_dc_removed0),
        .CLR(clk_divider_inst_n_11),
        .D(signal_dc_removed00_in[5]),
        .Q(Q[5]));
  FDCE \signal_dc_removed_reg[6] 
       (.C(sys_clk),
        .CE(signal_dc_removed0),
        .CLR(clk_divider_inst_n_11),
        .D(signal_dc_removed00_in[6]),
        .Q(Q[6]));
  FDCE \signal_dc_removed_reg[7] 
       (.C(sys_clk),
        .CE(signal_dc_removed0),
        .CLR(clk_divider_inst_n_11),
        .D(signal_dc_removed00_in[7]),
        .Q(Q[7]));
  FDCE \signal_dc_removed_reg[8] 
       (.C(sys_clk),
        .CE(signal_dc_removed0),
        .CLR(clk_divider_inst_n_11),
        .D(signal_dc_removed00_in[8]),
        .Q(Q[8]));
  FDCE \signal_dc_removed_reg[9] 
       (.C(sys_clk),
        .CE(signal_dc_removed0),
        .CLR(clk_divider_inst_n_11),
        .D(signal_dc_removed00_in[9]),
        .Q(Q[9]));
  FDCE signal_rectified_d1_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(clk_divider_inst_n_11),
        .D(signal_rectified),
        .Q(signal_rectified_d1));
  LUT2 #(
    .INIT(4'h1)) 
    signal_rectified_i_10
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(signal_rectified_i_10_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    signal_rectified_i_11
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(signal_rectified_i_11_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    signal_rectified_i_12
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(signal_rectified_i_12_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    signal_rectified_i_13
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(signal_rectified_i_13_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    signal_rectified_i_14
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(signal_rectified_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    signal_rectified_i_15
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(signal_rectified_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    signal_rectified_i_16
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(signal_rectified_i_16_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    signal_rectified_i_17
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(signal_rectified_i_17_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    signal_rectified_i_18
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(signal_rectified_i_18_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    signal_rectified_i_3
       (.I0(Q[14]),
        .I1(Q[15]),
        .O(signal_rectified_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    signal_rectified_i_4
       (.I0(Q[12]),
        .I1(Q[13]),
        .O(signal_rectified_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    signal_rectified_i_5
       (.I0(Q[10]),
        .I1(Q[11]),
        .O(signal_rectified_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    signal_rectified_i_6
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(signal_rectified_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    signal_rectified_i_7
       (.I0(Q[14]),
        .I1(Q[15]),
        .O(signal_rectified_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    signal_rectified_i_8
       (.I0(Q[12]),
        .I1(Q[13]),
        .O(signal_rectified_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    signal_rectified_i_9
       (.I0(Q[10]),
        .I1(Q[11]),
        .O(signal_rectified_i_9_n_0));
  FDCE signal_rectified_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(clk_divider_inst_n_11),
        .D(signal_rectified_reg_i_1_n_0),
        .Q(signal_rectified));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 signal_rectified_reg_i_1
       (.CI(signal_rectified_reg_i_2_n_0),
        .CO({signal_rectified_reg_i_1_n_0,signal_rectified_reg_i_1_n_1,signal_rectified_reg_i_1_n_2,signal_rectified_reg_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({signal_rectified_i_3_n_0,signal_rectified_i_4_n_0,signal_rectified_i_5_n_0,signal_rectified_i_6_n_0}),
        .O(NLW_signal_rectified_reg_i_1_O_UNCONNECTED[3:0]),
        .S({signal_rectified_i_7_n_0,signal_rectified_i_8_n_0,signal_rectified_i_9_n_0,signal_rectified_i_10_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 signal_rectified_reg_i_2
       (.CI(1'b0),
        .CO({signal_rectified_reg_i_2_n_0,signal_rectified_reg_i_2_n_1,signal_rectified_reg_i_2_n_2,signal_rectified_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({signal_rectified_i_11_n_0,signal_rectified_i_12_n_0,signal_rectified_i_13_n_0,signal_rectified_i_14_n_0}),
        .O(NLW_signal_rectified_reg_i_2_O_UNCONNECTED[3:0]),
        .S({signal_rectified_i_15_n_0,signal_rectified_i_16_n_0,signal_rectified_i_17_n_0,signal_rectified_i_18_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry
       (.CI(1'b0),
        .CO({sum0_carry_n_0,sum0_carry_n_1,sum0_carry_n_2,sum0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\sum_reg_n_0_[3] ,\sum_reg_n_0_[2] ,\sum_reg_n_0_[1] ,\sum_reg_n_0_[0] }),
        .O(in8[3:0]),
        .S({sum0_carry_i_1_n_0,sum0_carry_i_2_n_0,sum0_carry_i_3_n_0,sum0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__0
       (.CI(sum0_carry_n_0),
        .CO({sum0_carry__0_n_0,sum0_carry__0_n_1,sum0_carry__0_n_2,sum0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\sum_reg_n_0_[7] ,\sum_reg_n_0_[6] ,\sum_reg_n_0_[5] ,\sum_reg_n_0_[4] }),
        .O(in8[7:4]),
        .S({sum0_carry__0_i_1_n_0,sum0_carry__0_i_2_n_0,sum0_carry__0_i_3_n_0,sum0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__0_i_1
       (.I0(\sum_reg_n_0_[7] ),
        .I1(data_in_synced[7]),
        .O(sum0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__0_i_2
       (.I0(\sum_reg_n_0_[6] ),
        .I1(data_in_synced[6]),
        .O(sum0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__0_i_3
       (.I0(\sum_reg_n_0_[5] ),
        .I1(data_in_synced[5]),
        .O(sum0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__0_i_4
       (.I0(\sum_reg_n_0_[4] ),
        .I1(data_in_synced[4]),
        .O(sum0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__1
       (.CI(sum0_carry__0_n_0),
        .CO({sum0_carry__1_n_0,sum0_carry__1_n_1,sum0_carry__1_n_2,sum0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\sum_reg_n_0_[11] ,\sum_reg_n_0_[10] ,\sum_reg_n_0_[9] ,\sum_reg_n_0_[8] }),
        .O(in8[11:8]),
        .S({sum0_carry__1_i_1_n_0,sum0_carry__1_i_2_n_0,sum0_carry__1_i_3_n_0,sum0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__1_i_1
       (.I0(\sum_reg_n_0_[11] ),
        .I1(data_in_synced[11]),
        .O(sum0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__1_i_2
       (.I0(\sum_reg_n_0_[10] ),
        .I1(data_in_synced[10]),
        .O(sum0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__1_i_3
       (.I0(\sum_reg_n_0_[9] ),
        .I1(data_in_synced[9]),
        .O(sum0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__1_i_4
       (.I0(\sum_reg_n_0_[8] ),
        .I1(data_in_synced[8]),
        .O(sum0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__2
       (.CI(sum0_carry__1_n_0),
        .CO({sum0_carry__2_n_0,sum0_carry__2_n_1,sum0_carry__2_n_2,sum0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({data_in_synced[15],p_0_in[1:0],\sum_reg_n_0_[12] }),
        .O(in8[15:12]),
        .S({sum0_carry__2_i_1_n_0,sum0_carry__2_i_2_n_0,sum0_carry__2_i_3_n_0,sum0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__2_i_1
       (.I0(data_in_synced[15]),
        .I1(p_0_in[2]),
        .O(sum0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__2_i_2
       (.I0(p_0_in[1]),
        .I1(data_in_synced[14]),
        .O(sum0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__2_i_3
       (.I0(p_0_in[0]),
        .I1(data_in_synced[13]),
        .O(sum0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__2_i_4
       (.I0(\sum_reg_n_0_[12] ),
        .I1(data_in_synced[12]),
        .O(sum0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__3
       (.CI(sum0_carry__2_n_0),
        .CO({sum0_carry__3_n_0,sum0_carry__3_n_1,sum0_carry__3_n_2,sum0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({p_0_in[5:3],sum0_carry__3_i_1_n_0}),
        .O(in8[19:16]),
        .S({sum0_carry__3_i_2_n_0,sum0_carry__3_i_3_n_0,sum0_carry__3_i_4_n_0,sum0_carry__3_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__3_i_1
       (.I0(data_in_synced[15]),
        .O(sum0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum0_carry__3_i_2
       (.I0(p_0_in[5]),
        .I1(p_0_in[6]),
        .O(sum0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum0_carry__3_i_3
       (.I0(p_0_in[4]),
        .I1(p_0_in[5]),
        .O(sum0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum0_carry__3_i_4
       (.I0(p_0_in[3]),
        .I1(p_0_in[4]),
        .O(sum0_carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__3_i_5
       (.I0(data_in_synced[15]),
        .I1(p_0_in[3]),
        .O(sum0_carry__3_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__4
       (.CI(sum0_carry__3_n_0),
        .CO({sum0_carry__4_n_0,sum0_carry__4_n_1,sum0_carry__4_n_2,sum0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(p_0_in[9:6]),
        .O(in8[23:20]),
        .S({sum0_carry__4_i_1_n_0,sum0_carry__4_i_2_n_0,sum0_carry__4_i_3_n_0,sum0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sum0_carry__4_i_1
       (.I0(p_0_in[9]),
        .I1(p_0_in[10]),
        .O(sum0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum0_carry__4_i_2
       (.I0(p_0_in[8]),
        .I1(p_0_in[9]),
        .O(sum0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum0_carry__4_i_3
       (.I0(p_0_in[7]),
        .I1(p_0_in[8]),
        .O(sum0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum0_carry__4_i_4
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .O(sum0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__5
       (.CI(sum0_carry__4_n_0),
        .CO({sum0_carry__5_n_0,sum0_carry__5_n_1,sum0_carry__5_n_2,sum0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(p_0_in[13:10]),
        .O(in8[27:24]),
        .S({sum0_carry__5_i_1_n_0,sum0_carry__5_i_2_n_0,sum0_carry__5_i_3_n_0,sum0_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sum0_carry__5_i_1
       (.I0(p_0_in[13]),
        .I1(p_0_in[14]),
        .O(sum0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum0_carry__5_i_2
       (.I0(p_0_in[12]),
        .I1(p_0_in[13]),
        .O(sum0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum0_carry__5_i_3
       (.I0(p_0_in[11]),
        .I1(p_0_in[12]),
        .O(sum0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum0_carry__5_i_4
       (.I0(p_0_in[10]),
        .I1(p_0_in[11]),
        .O(sum0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__6
       (.CI(sum0_carry__5_n_0),
        .CO(NLW_sum0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sum0_carry__6_O_UNCONNECTED[3:1],in8[28]}),
        .S({1'b0,1'b0,1'b0,sum0_carry__6_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sum0_carry__6_i_1
       (.I0(p_0_in[14]),
        .I1(p_0_in[15]),
        .O(sum0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry_i_1
       (.I0(\sum_reg_n_0_[3] ),
        .I1(data_in_synced[3]),
        .O(sum0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry_i_2
       (.I0(\sum_reg_n_0_[2] ),
        .I1(data_in_synced[2]),
        .O(sum0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry_i_3
       (.I0(\sum_reg_n_0_[1] ),
        .I1(data_in_synced[1]),
        .O(sum0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry_i_4
       (.I0(\sum_reg_n_0_[0] ),
        .I1(data_in_synced[0]),
        .O(sum0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \sum[0]_i_1 
       (.I0(data_in_synced[0]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in8[0]),
        .O(sum[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sum[10]_i_1 
       (.I0(data_in_synced[10]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in8[10]),
        .O(sum[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sum[11]_i_1 
       (.I0(data_in_synced[11]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in8[11]),
        .O(sum[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sum[12]_i_1 
       (.I0(data_in_synced[12]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in8[12]),
        .O(sum[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sum[13]_i_1 
       (.I0(data_in_synced[13]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in8[13]),
        .O(sum[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sum[14]_i_1 
       (.I0(data_in_synced[14]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in8[14]),
        .O(sum[14]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \sum[15]_i_1 
       (.I0(in8[15]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(data_in_synced[15]),
        .O(sum[15]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \sum[16]_i_1 
       (.I0(in8[16]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(data_in_synced[15]),
        .O(sum[16]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \sum[17]_i_1 
       (.I0(in8[17]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(data_in_synced[15]),
        .O(sum[17]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \sum[18]_i_1 
       (.I0(in8[18]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(data_in_synced[15]),
        .O(sum[18]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \sum[19]_i_1 
       (.I0(in8[19]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(data_in_synced[15]),
        .O(sum[19]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sum[1]_i_1 
       (.I0(data_in_synced[1]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in8[1]),
        .O(sum[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \sum[20]_i_1 
       (.I0(in8[20]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(data_in_synced[15]),
        .O(sum[20]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \sum[21]_i_1 
       (.I0(in8[21]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(data_in_synced[15]),
        .O(sum[21]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \sum[22]_i_1 
       (.I0(in8[22]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(data_in_synced[15]),
        .O(sum[22]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \sum[23]_i_1 
       (.I0(in8[23]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(data_in_synced[15]),
        .O(sum[23]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \sum[24]_i_1 
       (.I0(in8[24]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(data_in_synced[15]),
        .O(sum[24]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \sum[25]_i_1 
       (.I0(in8[25]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(data_in_synced[15]),
        .O(sum[25]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \sum[26]_i_1 
       (.I0(in8[26]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(data_in_synced[15]),
        .O(sum[26]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \sum[27]_i_1 
       (.I0(in8[27]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(data_in_synced[15]),
        .O(sum[27]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \sum[28]_i_2 
       (.I0(in8[28]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(data_in_synced[15]),
        .O(sum[28]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sum[2]_i_1 
       (.I0(data_in_synced[2]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in8[2]),
        .O(sum[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sum[3]_i_1 
       (.I0(data_in_synced[3]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in8[3]),
        .O(sum[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sum[4]_i_1 
       (.I0(data_in_synced[4]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in8[4]),
        .O(sum[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sum[5]_i_1 
       (.I0(data_in_synced[5]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in8[5]),
        .O(sum[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sum[6]_i_1 
       (.I0(data_in_synced[6]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in8[6]),
        .O(sum[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sum[7]_i_1 
       (.I0(data_in_synced[7]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in8[7]),
        .O(sum[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sum[8]_i_1 
       (.I0(data_in_synced[8]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in8[8]),
        .O(sum[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sum[9]_i_1 
       (.I0(data_in_synced[9]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(in8[9]),
        .O(sum[9]));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[11]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[11] ),
        .I2(data_squared__0[11]),
        .O(\sum_of_squares[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[11]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[10] ),
        .I2(data_squared__0[10]),
        .O(\sum_of_squares[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[11]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[9] ),
        .I2(data_squared__0[9]),
        .O(\sum_of_squares[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[11]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[8] ),
        .I2(data_squared__0[8]),
        .O(\sum_of_squares[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[15]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[15] ),
        .I2(data_squared__0[15]),
        .O(\sum_of_squares[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[15]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[14] ),
        .I2(data_squared__0[14]),
        .O(\sum_of_squares[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[15]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[13] ),
        .I2(data_squared__0[13]),
        .O(\sum_of_squares[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[15]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[12] ),
        .I2(data_squared__0[12]),
        .O(\sum_of_squares[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[19]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[19] ),
        .I2(data_squared__0[19]),
        .O(\sum_of_squares[19]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[19]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[18] ),
        .I2(data_squared__0[18]),
        .O(\sum_of_squares[19]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[19]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[17] ),
        .I2(data_squared__0[17]),
        .O(\sum_of_squares[19]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[19]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[16] ),
        .I2(data_squared__0[16]),
        .O(\sum_of_squares[19]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[23]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[23] ),
        .I2(data_squared__0[23]),
        .O(\sum_of_squares[23]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[23]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[22] ),
        .I2(data_squared__0[22]),
        .O(\sum_of_squares[23]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[23]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[21] ),
        .I2(data_squared__0[21]),
        .O(\sum_of_squares[23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[23]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[20] ),
        .I2(data_squared__0[20]),
        .O(\sum_of_squares[23]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[27]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[27] ),
        .I2(data_squared__0[27]),
        .O(\sum_of_squares[27]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[27]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[26] ),
        .I2(data_squared__0[26]),
        .O(\sum_of_squares[27]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[27]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[25] ),
        .I2(data_squared__0[25]),
        .O(\sum_of_squares[27]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[27]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[24] ),
        .I2(data_squared__0[24]),
        .O(\sum_of_squares[27]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[31]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[31] ),
        .I2(data_squared__0[31]),
        .O(\sum_of_squares[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[31]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[30] ),
        .I2(data_squared__0[30]),
        .O(\sum_of_squares[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[31]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[29] ),
        .I2(data_squared__0[29]),
        .O(\sum_of_squares[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[31]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[28] ),
        .I2(data_squared__0[28]),
        .O(\sum_of_squares[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum_of_squares[35]_i_2 
       (.I0(\sum_of_squares_reg_n_0_[35] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\sum_of_squares[35]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum_of_squares[35]_i_3 
       (.I0(\sum_of_squares_reg_n_0_[34] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\sum_of_squares[35]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum_of_squares[35]_i_4 
       (.I0(\sum_of_squares_reg_n_0_[33] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\sum_of_squares[35]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum_of_squares[35]_i_5 
       (.I0(\sum_of_squares_reg_n_0_[32] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\sum_of_squares[35]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum_of_squares[39]_i_2 
       (.I0(\sum_of_squares_reg_n_0_[39] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\sum_of_squares[39]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum_of_squares[39]_i_3 
       (.I0(\sum_of_squares_reg_n_0_[38] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\sum_of_squares[39]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum_of_squares[39]_i_4 
       (.I0(\sum_of_squares_reg_n_0_[37] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\sum_of_squares[39]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum_of_squares[39]_i_5 
       (.I0(\sum_of_squares_reg_n_0_[36] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\sum_of_squares[39]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[3] ),
        .I2(data_squared__0[3]),
        .O(\sum_of_squares[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[3]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[2] ),
        .I2(data_squared__0[2]),
        .O(\sum_of_squares[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[3]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[1] ),
        .I2(data_squared__0[1]),
        .O(\sum_of_squares[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[3]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[0] ),
        .I2(data_squared__0[0]),
        .O(\sum_of_squares[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum_of_squares[43]_i_2 
       (.I0(\sum_of_squares_reg_n_0_[43] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\sum_of_squares[43]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum_of_squares[43]_i_3 
       (.I0(\sum_of_squares_reg_n_0_[42] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\sum_of_squares[43]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum_of_squares[43]_i_4 
       (.I0(\sum_of_squares_reg_n_0_[41] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\sum_of_squares[43]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum_of_squares[43]_i_5 
       (.I0(\sum_of_squares_reg_n_0_[40] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\sum_of_squares[43]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum_of_squares[44]_i_2 
       (.I0(\sum_of_squares_reg_n_0_[44] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\sum_of_squares[44]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[7]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[7] ),
        .I2(data_squared__0[7]),
        .O(\sum_of_squares[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[7]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[6] ),
        .I2(data_squared__0[6]),
        .O(\sum_of_squares[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[7]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[5] ),
        .I2(data_squared__0[5]),
        .O(\sum_of_squares[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sum_of_squares[7]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\sum_of_squares_reg_n_0_[4] ),
        .I2(data_squared__0[4]),
        .O(\sum_of_squares[7]_i_5_n_0 ));
  FDCE \sum_of_squares_reg[0] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[0]),
        .Q(\sum_of_squares_reg_n_0_[0] ));
  FDCE \sum_of_squares_reg[10] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[10]),
        .Q(\sum_of_squares_reg_n_0_[10] ));
  FDCE \sum_of_squares_reg[11] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[11]),
        .Q(\sum_of_squares_reg_n_0_[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_of_squares_reg[11]_i_1 
       (.CI(\sum_of_squares_reg[7]_i_1_n_0 ),
        .CO({\sum_of_squares_reg[11]_i_1_n_0 ,\sum_of_squares_reg[11]_i_1_n_1 ,\sum_of_squares_reg[11]_i_1_n_2 ,\sum_of_squares_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_squared__0[11:8]),
        .O(sum_of_squares[11:8]),
        .S({\sum_of_squares[11]_i_2_n_0 ,\sum_of_squares[11]_i_3_n_0 ,\sum_of_squares[11]_i_4_n_0 ,\sum_of_squares[11]_i_5_n_0 }));
  FDCE \sum_of_squares_reg[12] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[12]),
        .Q(\sum_of_squares_reg_n_0_[12] ));
  FDCE \sum_of_squares_reg[13] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[13]),
        .Q(\sum_of_squares_reg_n_0_[13] ));
  FDCE \sum_of_squares_reg[14] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[14]),
        .Q(\sum_of_squares_reg_n_0_[14] ));
  FDCE \sum_of_squares_reg[15] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[15]),
        .Q(\sum_of_squares_reg_n_0_[15] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_of_squares_reg[15]_i_1 
       (.CI(\sum_of_squares_reg[11]_i_1_n_0 ),
        .CO({\sum_of_squares_reg[15]_i_1_n_0 ,\sum_of_squares_reg[15]_i_1_n_1 ,\sum_of_squares_reg[15]_i_1_n_2 ,\sum_of_squares_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_squared__0[15:12]),
        .O(sum_of_squares[15:12]),
        .S({\sum_of_squares[15]_i_2_n_0 ,\sum_of_squares[15]_i_3_n_0 ,\sum_of_squares[15]_i_4_n_0 ,\sum_of_squares[15]_i_5_n_0 }));
  FDCE \sum_of_squares_reg[16] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[16]),
        .Q(\sum_of_squares_reg_n_0_[16] ));
  FDCE \sum_of_squares_reg[17] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[17]),
        .Q(\sum_of_squares_reg_n_0_[17] ));
  FDCE \sum_of_squares_reg[18] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[18]),
        .Q(\sum_of_squares_reg_n_0_[18] ));
  FDCE \sum_of_squares_reg[19] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[19]),
        .Q(\sum_of_squares_reg_n_0_[19] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_of_squares_reg[19]_i_1 
       (.CI(\sum_of_squares_reg[15]_i_1_n_0 ),
        .CO({\sum_of_squares_reg[19]_i_1_n_0 ,\sum_of_squares_reg[19]_i_1_n_1 ,\sum_of_squares_reg[19]_i_1_n_2 ,\sum_of_squares_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_squared__0[19:16]),
        .O(sum_of_squares[19:16]),
        .S({\sum_of_squares[19]_i_2_n_0 ,\sum_of_squares[19]_i_3_n_0 ,\sum_of_squares[19]_i_4_n_0 ,\sum_of_squares[19]_i_5_n_0 }));
  FDCE \sum_of_squares_reg[1] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[1]),
        .Q(\sum_of_squares_reg_n_0_[1] ));
  FDCE \sum_of_squares_reg[20] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[20]),
        .Q(\sum_of_squares_reg_n_0_[20] ));
  FDCE \sum_of_squares_reg[21] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[21]),
        .Q(\sum_of_squares_reg_n_0_[21] ));
  FDCE \sum_of_squares_reg[22] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[22]),
        .Q(\sum_of_squares_reg_n_0_[22] ));
  FDCE \sum_of_squares_reg[23] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[23]),
        .Q(\sum_of_squares_reg_n_0_[23] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_of_squares_reg[23]_i_1 
       (.CI(\sum_of_squares_reg[19]_i_1_n_0 ),
        .CO({\sum_of_squares_reg[23]_i_1_n_0 ,\sum_of_squares_reg[23]_i_1_n_1 ,\sum_of_squares_reg[23]_i_1_n_2 ,\sum_of_squares_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_squared__0[23:20]),
        .O(sum_of_squares[23:20]),
        .S({\sum_of_squares[23]_i_2_n_0 ,\sum_of_squares[23]_i_3_n_0 ,\sum_of_squares[23]_i_4_n_0 ,\sum_of_squares[23]_i_5_n_0 }));
  FDCE \sum_of_squares_reg[24] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[24]),
        .Q(\sum_of_squares_reg_n_0_[24] ));
  FDCE \sum_of_squares_reg[25] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[25]),
        .Q(\sum_of_squares_reg_n_0_[25] ));
  FDCE \sum_of_squares_reg[26] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[26]),
        .Q(\sum_of_squares_reg_n_0_[26] ));
  FDCE \sum_of_squares_reg[27] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[27]),
        .Q(\sum_of_squares_reg_n_0_[27] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_of_squares_reg[27]_i_1 
       (.CI(\sum_of_squares_reg[23]_i_1_n_0 ),
        .CO({\sum_of_squares_reg[27]_i_1_n_0 ,\sum_of_squares_reg[27]_i_1_n_1 ,\sum_of_squares_reg[27]_i_1_n_2 ,\sum_of_squares_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_squared__0[27:24]),
        .O(sum_of_squares[27:24]),
        .S({\sum_of_squares[27]_i_2_n_0 ,\sum_of_squares[27]_i_3_n_0 ,\sum_of_squares[27]_i_4_n_0 ,\sum_of_squares[27]_i_5_n_0 }));
  FDCE \sum_of_squares_reg[28] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[28]),
        .Q(\sum_of_squares_reg_n_0_[28] ));
  FDCE \sum_of_squares_reg[29] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[29]),
        .Q(\sum_of_squares_reg_n_0_[29] ));
  FDCE \sum_of_squares_reg[2] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[2]),
        .Q(\sum_of_squares_reg_n_0_[2] ));
  FDCE \sum_of_squares_reg[30] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[30]),
        .Q(\sum_of_squares_reg_n_0_[30] ));
  FDCE \sum_of_squares_reg[31] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[31]),
        .Q(\sum_of_squares_reg_n_0_[31] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_of_squares_reg[31]_i_1 
       (.CI(\sum_of_squares_reg[27]_i_1_n_0 ),
        .CO({\sum_of_squares_reg[31]_i_1_n_0 ,\sum_of_squares_reg[31]_i_1_n_1 ,\sum_of_squares_reg[31]_i_1_n_2 ,\sum_of_squares_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_squared__0[31:28]),
        .O(sum_of_squares[31:28]),
        .S({\sum_of_squares[31]_i_2_n_0 ,\sum_of_squares[31]_i_3_n_0 ,\sum_of_squares[31]_i_4_n_0 ,\sum_of_squares[31]_i_5_n_0 }));
  FDCE \sum_of_squares_reg[32] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[32]),
        .Q(\sum_of_squares_reg_n_0_[32] ));
  FDCE \sum_of_squares_reg[33] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[33]),
        .Q(\sum_of_squares_reg_n_0_[33] ));
  FDCE \sum_of_squares_reg[34] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[34]),
        .Q(\sum_of_squares_reg_n_0_[34] ));
  FDCE \sum_of_squares_reg[35] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[35]),
        .Q(\sum_of_squares_reg_n_0_[35] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_of_squares_reg[35]_i_1 
       (.CI(\sum_of_squares_reg[31]_i_1_n_0 ),
        .CO({\sum_of_squares_reg[35]_i_1_n_0 ,\sum_of_squares_reg[35]_i_1_n_1 ,\sum_of_squares_reg[35]_i_1_n_2 ,\sum_of_squares_reg[35]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sum_of_squares[35:32]),
        .S({\sum_of_squares[35]_i_2_n_0 ,\sum_of_squares[35]_i_3_n_0 ,\sum_of_squares[35]_i_4_n_0 ,\sum_of_squares[35]_i_5_n_0 }));
  FDCE \sum_of_squares_reg[36] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[36]),
        .Q(\sum_of_squares_reg_n_0_[36] ));
  FDCE \sum_of_squares_reg[37] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[37]),
        .Q(\sum_of_squares_reg_n_0_[37] ));
  FDCE \sum_of_squares_reg[38] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[38]),
        .Q(\sum_of_squares_reg_n_0_[38] ));
  FDCE \sum_of_squares_reg[39] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[39]),
        .Q(\sum_of_squares_reg_n_0_[39] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_of_squares_reg[39]_i_1 
       (.CI(\sum_of_squares_reg[35]_i_1_n_0 ),
        .CO({\sum_of_squares_reg[39]_i_1_n_0 ,\sum_of_squares_reg[39]_i_1_n_1 ,\sum_of_squares_reg[39]_i_1_n_2 ,\sum_of_squares_reg[39]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sum_of_squares[39:36]),
        .S({\sum_of_squares[39]_i_2_n_0 ,\sum_of_squares[39]_i_3_n_0 ,\sum_of_squares[39]_i_4_n_0 ,\sum_of_squares[39]_i_5_n_0 }));
  FDCE \sum_of_squares_reg[3] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[3]),
        .Q(\sum_of_squares_reg_n_0_[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_of_squares_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sum_of_squares_reg[3]_i_1_n_0 ,\sum_of_squares_reg[3]_i_1_n_1 ,\sum_of_squares_reg[3]_i_1_n_2 ,\sum_of_squares_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_squared__0[3:0]),
        .O(sum_of_squares[3:0]),
        .S({\sum_of_squares[3]_i_2_n_0 ,\sum_of_squares[3]_i_3_n_0 ,\sum_of_squares[3]_i_4_n_0 ,\sum_of_squares[3]_i_5_n_0 }));
  FDCE \sum_of_squares_reg[40] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[40]),
        .Q(\sum_of_squares_reg_n_0_[40] ));
  FDCE \sum_of_squares_reg[41] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[41]),
        .Q(\sum_of_squares_reg_n_0_[41] ));
  FDCE \sum_of_squares_reg[42] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[42]),
        .Q(\sum_of_squares_reg_n_0_[42] ));
  FDCE \sum_of_squares_reg[43] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[43]),
        .Q(\sum_of_squares_reg_n_0_[43] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_of_squares_reg[43]_i_1 
       (.CI(\sum_of_squares_reg[39]_i_1_n_0 ),
        .CO({\sum_of_squares_reg[43]_i_1_n_0 ,\sum_of_squares_reg[43]_i_1_n_1 ,\sum_of_squares_reg[43]_i_1_n_2 ,\sum_of_squares_reg[43]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sum_of_squares[43:40]),
        .S({\sum_of_squares[43]_i_2_n_0 ,\sum_of_squares[43]_i_3_n_0 ,\sum_of_squares[43]_i_4_n_0 ,\sum_of_squares[43]_i_5_n_0 }));
  FDCE \sum_of_squares_reg[44] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[44]),
        .Q(\sum_of_squares_reg_n_0_[44] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_of_squares_reg[44]_i_1 
       (.CI(\sum_of_squares_reg[43]_i_1_n_0 ),
        .CO(\NLW_sum_of_squares_reg[44]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sum_of_squares_reg[44]_i_1_O_UNCONNECTED [3:1],sum_of_squares[44]}),
        .S({1'b0,1'b0,1'b0,\sum_of_squares[44]_i_2_n_0 }));
  FDCE \sum_of_squares_reg[4] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[4]),
        .Q(\sum_of_squares_reg_n_0_[4] ));
  FDCE \sum_of_squares_reg[5] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[5]),
        .Q(\sum_of_squares_reg_n_0_[5] ));
  FDCE \sum_of_squares_reg[6] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[6]),
        .Q(\sum_of_squares_reg_n_0_[6] ));
  FDCE \sum_of_squares_reg[7] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[7]),
        .Q(\sum_of_squares_reg_n_0_[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_of_squares_reg[7]_i_1 
       (.CI(\sum_of_squares_reg[3]_i_1_n_0 ),
        .CO({\sum_of_squares_reg[7]_i_1_n_0 ,\sum_of_squares_reg[7]_i_1_n_1 ,\sum_of_squares_reg[7]_i_1_n_2 ,\sum_of_squares_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_squared__0[7:4]),
        .O(sum_of_squares[7:4]),
        .S({\sum_of_squares[7]_i_2_n_0 ,\sum_of_squares[7]_i_3_n_0 ,\sum_of_squares[7]_i_4_n_0 ,\sum_of_squares[7]_i_5_n_0 }));
  FDCE \sum_of_squares_reg[8] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[8]),
        .Q(\sum_of_squares_reg_n_0_[8] ));
  FDCE \sum_of_squares_reg[9] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum_of_squares[9]),
        .Q(\sum_of_squares_reg_n_0_[9] ));
  FDCE \sum_reg[0] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[0]),
        .Q(\sum_reg_n_0_[0] ));
  FDCE \sum_reg[10] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[10]),
        .Q(\sum_reg_n_0_[10] ));
  FDCE \sum_reg[11] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[11]),
        .Q(\sum_reg_n_0_[11] ));
  FDCE \sum_reg[12] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[12]),
        .Q(\sum_reg_n_0_[12] ));
  FDCE \sum_reg[13] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[13]),
        .Q(p_0_in[0]));
  FDCE \sum_reg[14] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[14]),
        .Q(p_0_in[1]));
  FDCE \sum_reg[15] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[15]),
        .Q(p_0_in[2]));
  FDCE \sum_reg[16] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[16]),
        .Q(p_0_in[3]));
  FDCE \sum_reg[17] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[17]),
        .Q(p_0_in[4]));
  FDCE \sum_reg[18] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[18]),
        .Q(p_0_in[5]));
  FDCE \sum_reg[19] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[19]),
        .Q(p_0_in[6]));
  FDCE \sum_reg[1] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[1]),
        .Q(\sum_reg_n_0_[1] ));
  FDCE \sum_reg[20] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[20]),
        .Q(p_0_in[7]));
  FDCE \sum_reg[21] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[21]),
        .Q(p_0_in[8]));
  FDCE \sum_reg[22] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[22]),
        .Q(p_0_in[9]));
  FDCE \sum_reg[23] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[23]),
        .Q(p_0_in[10]));
  FDCE \sum_reg[24] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[24]),
        .Q(p_0_in[11]));
  FDCE \sum_reg[25] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[25]),
        .Q(p_0_in[12]));
  FDCE \sum_reg[26] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[26]),
        .Q(p_0_in[13]));
  FDCE \sum_reg[27] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[27]),
        .Q(p_0_in[14]));
  FDCE \sum_reg[28] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[28]),
        .Q(p_0_in[15]));
  FDCE \sum_reg[2] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[2]),
        .Q(\sum_reg_n_0_[2] ));
  FDCE \sum_reg[3] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[3]),
        .Q(\sum_reg_n_0_[3] ));
  FDCE \sum_reg[4] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[4]),
        .Q(\sum_reg_n_0_[4] ));
  FDCE \sum_reg[5] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[5]),
        .Q(\sum_reg_n_0_[5] ));
  FDCE \sum_reg[6] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[6]),
        .Q(\sum_reg_n_0_[6] ));
  FDCE \sum_reg[7] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[7]),
        .Q(\sum_reg_n_0_[7] ));
  FDCE \sum_reg[8] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[8]),
        .Q(\sum_reg_n_0_[8] ));
  FDCE \sum_reg[9] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_7),
        .CLR(clk_divider_inst_n_11),
        .D(sum[9]),
        .Q(\sum_reg_n_0_[9] ));
  FDCE \v_max_reg[0] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_max_temp[0]),
        .Q(v_max[0]));
  FDCE \v_max_reg[10] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_max_temp[10]),
        .Q(v_max[10]));
  FDCE \v_max_reg[11] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_max_temp[11]),
        .Q(v_max[11]));
  FDCE \v_max_reg[12] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_max_temp[12]),
        .Q(v_max[12]));
  FDCE \v_max_reg[13] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_max_temp[13]),
        .Q(v_max[13]));
  FDCE \v_max_reg[14] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_max_temp[14]),
        .Q(v_max[14]));
  FDCE \v_max_reg[15] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_max_temp[15]),
        .Q(v_max[15]));
  FDCE \v_max_reg[1] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_max_temp[1]),
        .Q(v_max[1]));
  FDCE \v_max_reg[2] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_max_temp[2]),
        .Q(v_max[2]));
  FDCE \v_max_reg[3] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_max_temp[3]),
        .Q(v_max[3]));
  FDCE \v_max_reg[4] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_max_temp[4]),
        .Q(v_max[4]));
  FDCE \v_max_reg[5] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_max_temp[5]),
        .Q(v_max[5]));
  FDCE \v_max_reg[6] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_max_temp[6]),
        .Q(v_max[6]));
  FDCE \v_max_reg[7] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_max_temp[7]),
        .Q(v_max[7]));
  FDCE \v_max_reg[8] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_max_temp[8]),
        .Q(v_max[8]));
  FDCE \v_max_reg[9] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_max_temp[9]),
        .Q(v_max[9]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 v_max_temp0_carry
       (.CI(1'b0),
        .CO({v_max_temp0_carry_n_0,v_max_temp0_carry_n_1,v_max_temp0_carry_n_2,v_max_temp0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({v_max_temp0_carry_i_1_n_0,v_max_temp0_carry_i_2_n_0,v_max_temp0_carry_i_3_n_0,v_max_temp0_carry_i_4_n_0}),
        .O(NLW_v_max_temp0_carry_O_UNCONNECTED[3:0]),
        .S({v_max_temp0_carry_i_5_n_0,v_max_temp0_carry_i_6_n_0,v_max_temp0_carry_i_7_n_0,v_max_temp0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 v_max_temp0_carry__0
       (.CI(v_max_temp0_carry_n_0),
        .CO({v_max_temp0_carry__0_n_0,v_max_temp0_carry__0_n_1,v_max_temp0_carry__0_n_2,v_max_temp0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({v_max_temp0_carry__0_i_1_n_0,v_max_temp0_carry__0_i_2_n_0,v_max_temp0_carry__0_i_3_n_0,v_max_temp0_carry__0_i_4_n_0}),
        .O(NLW_v_max_temp0_carry__0_O_UNCONNECTED[3:0]),
        .S({v_max_temp0_carry__0_i_5_n_0,v_max_temp0_carry__0_i_6_n_0,v_max_temp0_carry__0_i_7_n_0,v_max_temp0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    v_max_temp0_carry__0_i_1
       (.I0(v_max_temp[15]),
        .I1(data_in_synced[15]),
        .I2(data_in_synced[14]),
        .I3(v_max_temp[14]),
        .O(v_max_temp0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    v_max_temp0_carry__0_i_2
       (.I0(data_in_synced[13]),
        .I1(v_max_temp[13]),
        .I2(data_in_synced[12]),
        .I3(v_max_temp[12]),
        .O(v_max_temp0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    v_max_temp0_carry__0_i_3
       (.I0(data_in_synced[11]),
        .I1(v_max_temp[11]),
        .I2(data_in_synced[10]),
        .I3(v_max_temp[10]),
        .O(v_max_temp0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    v_max_temp0_carry__0_i_4
       (.I0(data_in_synced[9]),
        .I1(v_max_temp[9]),
        .I2(data_in_synced[8]),
        .I3(v_max_temp[8]),
        .O(v_max_temp0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    v_max_temp0_carry__0_i_5
       (.I0(v_max_temp[15]),
        .I1(data_in_synced[15]),
        .I2(v_max_temp[14]),
        .I3(data_in_synced[14]),
        .O(v_max_temp0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    v_max_temp0_carry__0_i_6
       (.I0(v_max_temp[13]),
        .I1(data_in_synced[13]),
        .I2(v_max_temp[12]),
        .I3(data_in_synced[12]),
        .O(v_max_temp0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    v_max_temp0_carry__0_i_7
       (.I0(v_max_temp[11]),
        .I1(data_in_synced[11]),
        .I2(v_max_temp[10]),
        .I3(data_in_synced[10]),
        .O(v_max_temp0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    v_max_temp0_carry__0_i_8
       (.I0(v_max_temp[9]),
        .I1(data_in_synced[9]),
        .I2(v_max_temp[8]),
        .I3(data_in_synced[8]),
        .O(v_max_temp0_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    v_max_temp0_carry_i_1
       (.I0(data_in_synced[7]),
        .I1(v_max_temp[7]),
        .I2(data_in_synced[6]),
        .I3(v_max_temp[6]),
        .O(v_max_temp0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    v_max_temp0_carry_i_2
       (.I0(data_in_synced[5]),
        .I1(v_max_temp[5]),
        .I2(data_in_synced[4]),
        .I3(v_max_temp[4]),
        .O(v_max_temp0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    v_max_temp0_carry_i_3
       (.I0(data_in_synced[3]),
        .I1(v_max_temp[3]),
        .I2(data_in_synced[2]),
        .I3(v_max_temp[2]),
        .O(v_max_temp0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    v_max_temp0_carry_i_4
       (.I0(data_in_synced[1]),
        .I1(v_max_temp[1]),
        .I2(data_in_synced[0]),
        .I3(v_max_temp[0]),
        .O(v_max_temp0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    v_max_temp0_carry_i_5
       (.I0(v_max_temp[7]),
        .I1(data_in_synced[7]),
        .I2(v_max_temp[6]),
        .I3(data_in_synced[6]),
        .O(v_max_temp0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    v_max_temp0_carry_i_6
       (.I0(v_max_temp[5]),
        .I1(data_in_synced[5]),
        .I2(v_max_temp[4]),
        .I3(data_in_synced[4]),
        .O(v_max_temp0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    v_max_temp0_carry_i_7
       (.I0(v_max_temp[3]),
        .I1(data_in_synced[3]),
        .I2(v_max_temp[2]),
        .I3(data_in_synced[2]),
        .O(v_max_temp0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    v_max_temp0_carry_i_8
       (.I0(v_max_temp[1]),
        .I1(data_in_synced[1]),
        .I2(v_max_temp[0]),
        .I3(data_in_synced[0]),
        .O(v_max_temp0_carry_i_8_n_0));
  FDCE \v_max_temp_reg[0] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_5),
        .CLR(clk_divider_inst_n_11),
        .D(data_in_synced[0]),
        .Q(v_max_temp[0]));
  FDCE \v_max_temp_reg[10] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_5),
        .CLR(clk_divider_inst_n_11),
        .D(data_in_synced[10]),
        .Q(v_max_temp[10]));
  FDCE \v_max_temp_reg[11] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_5),
        .CLR(clk_divider_inst_n_11),
        .D(data_in_synced[11]),
        .Q(v_max_temp[11]));
  FDCE \v_max_temp_reg[12] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_5),
        .CLR(clk_divider_inst_n_11),
        .D(data_in_synced[12]),
        .Q(v_max_temp[12]));
  FDCE \v_max_temp_reg[13] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_5),
        .CLR(clk_divider_inst_n_11),
        .D(data_in_synced[13]),
        .Q(v_max_temp[13]));
  FDCE \v_max_temp_reg[14] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_5),
        .CLR(clk_divider_inst_n_11),
        .D(data_in_synced[14]),
        .Q(v_max_temp[14]));
  FDPE \v_max_temp_reg[15] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_5),
        .D(data_in_synced[15]),
        .PRE(clk_divider_inst_n_11),
        .Q(v_max_temp[15]));
  FDCE \v_max_temp_reg[1] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_5),
        .CLR(clk_divider_inst_n_11),
        .D(data_in_synced[1]),
        .Q(v_max_temp[1]));
  FDCE \v_max_temp_reg[2] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_5),
        .CLR(clk_divider_inst_n_11),
        .D(data_in_synced[2]),
        .Q(v_max_temp[2]));
  FDCE \v_max_temp_reg[3] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_5),
        .CLR(clk_divider_inst_n_11),
        .D(data_in_synced[3]),
        .Q(v_max_temp[3]));
  FDCE \v_max_temp_reg[4] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_5),
        .CLR(clk_divider_inst_n_11),
        .D(data_in_synced[4]),
        .Q(v_max_temp[4]));
  FDCE \v_max_temp_reg[5] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_5),
        .CLR(clk_divider_inst_n_11),
        .D(data_in_synced[5]),
        .Q(v_max_temp[5]));
  FDCE \v_max_temp_reg[6] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_5),
        .CLR(clk_divider_inst_n_11),
        .D(data_in_synced[6]),
        .Q(v_max_temp[6]));
  FDCE \v_max_temp_reg[7] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_5),
        .CLR(clk_divider_inst_n_11),
        .D(data_in_synced[7]),
        .Q(v_max_temp[7]));
  FDCE \v_max_temp_reg[8] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_5),
        .CLR(clk_divider_inst_n_11),
        .D(data_in_synced[8]),
        .Q(v_max_temp[8]));
  FDCE \v_max_temp_reg[9] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_5),
        .CLR(clk_divider_inst_n_11),
        .D(data_in_synced[9]),
        .Q(v_max_temp[9]));
  FDCE \v_min_reg[0] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_min_temp[0]),
        .Q(v_min[0]));
  FDCE \v_min_reg[10] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_min_temp[10]),
        .Q(v_min[10]));
  FDCE \v_min_reg[11] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_min_temp[11]),
        .Q(v_min[11]));
  FDCE \v_min_reg[12] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_min_temp[12]),
        .Q(v_min[12]));
  FDCE \v_min_reg[13] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_min_temp[13]),
        .Q(v_min[13]));
  FDCE \v_min_reg[14] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_min_temp[14]),
        .Q(v_min[14]));
  FDCE \v_min_reg[15] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_min_temp[15]),
        .Q(v_min[15]));
  FDCE \v_min_reg[1] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_min_temp[1]),
        .Q(v_min[1]));
  FDCE \v_min_reg[2] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_min_temp[2]),
        .Q(v_min[2]));
  FDCE \v_min_reg[3] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_min_temp[3]),
        .Q(v_min[3]));
  FDCE \v_min_reg[4] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_min_temp[4]),
        .Q(v_min[4]));
  FDCE \v_min_reg[5] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_min_temp[5]),
        .Q(v_min[5]));
  FDCE \v_min_reg[6] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_min_temp[6]),
        .Q(v_min[6]));
  FDCE \v_min_reg[7] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_min_temp[7]),
        .Q(v_min[7]));
  FDCE \v_min_reg[8] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_min_temp[8]),
        .Q(v_min[8]));
  FDCE \v_min_reg[9] 
       (.C(sys_clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(clk_divider_inst_n_11),
        .D(v_min_temp[9]),
        .Q(v_min[9]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 v_min_temp0_carry
       (.CI(1'b0),
        .CO({v_min_temp0_carry_n_0,v_min_temp0_carry_n_1,v_min_temp0_carry_n_2,v_min_temp0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({v_min_temp0_carry_i_1_n_0,v_min_temp0_carry_i_2_n_0,v_min_temp0_carry_i_3_n_0,v_min_temp0_carry_i_4_n_0}),
        .O(NLW_v_min_temp0_carry_O_UNCONNECTED[3:0]),
        .S({v_min_temp0_carry_i_5_n_0,v_min_temp0_carry_i_6_n_0,v_min_temp0_carry_i_7_n_0,v_min_temp0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 v_min_temp0_carry__0
       (.CI(v_min_temp0_carry_n_0),
        .CO({v_min_temp0_carry__0_n_0,v_min_temp0_carry__0_n_1,v_min_temp0_carry__0_n_2,v_min_temp0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({v_min_temp0_carry__0_i_1_n_0,v_min_temp0_carry__0_i_2_n_0,v_min_temp0_carry__0_i_3_n_0,v_min_temp0_carry__0_i_4_n_0}),
        .O(NLW_v_min_temp0_carry__0_O_UNCONNECTED[3:0]),
        .S({v_min_temp0_carry__0_i_5_n_0,v_min_temp0_carry__0_i_6_n_0,v_min_temp0_carry__0_i_7_n_0,v_min_temp0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    v_min_temp0_carry__0_i_1
       (.I0(data_in_synced[15]),
        .I1(v_min_temp[15]),
        .I2(v_min_temp[14]),
        .I3(data_in_synced[14]),
        .O(v_min_temp0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    v_min_temp0_carry__0_i_2
       (.I0(v_min_temp[13]),
        .I1(data_in_synced[13]),
        .I2(v_min_temp[12]),
        .I3(data_in_synced[12]),
        .O(v_min_temp0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    v_min_temp0_carry__0_i_3
       (.I0(v_min_temp[11]),
        .I1(data_in_synced[11]),
        .I2(v_min_temp[10]),
        .I3(data_in_synced[10]),
        .O(v_min_temp0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    v_min_temp0_carry__0_i_4
       (.I0(v_min_temp[9]),
        .I1(data_in_synced[9]),
        .I2(v_min_temp[8]),
        .I3(data_in_synced[8]),
        .O(v_min_temp0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    v_min_temp0_carry__0_i_5
       (.I0(v_min_temp[15]),
        .I1(data_in_synced[15]),
        .I2(v_min_temp[14]),
        .I3(data_in_synced[14]),
        .O(v_min_temp0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    v_min_temp0_carry__0_i_6
       (.I0(v_min_temp[13]),
        .I1(data_in_synced[13]),
        .I2(v_min_temp[12]),
        .I3(data_in_synced[12]),
        .O(v_min_temp0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    v_min_temp0_carry__0_i_7
       (.I0(v_min_temp[11]),
        .I1(data_in_synced[11]),
        .I2(v_min_temp[10]),
        .I3(data_in_synced[10]),
        .O(v_min_temp0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    v_min_temp0_carry__0_i_8
       (.I0(v_min_temp[9]),
        .I1(data_in_synced[9]),
        .I2(v_min_temp[8]),
        .I3(data_in_synced[8]),
        .O(v_min_temp0_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    v_min_temp0_carry_i_1
       (.I0(v_min_temp[7]),
        .I1(data_in_synced[7]),
        .I2(v_min_temp[6]),
        .I3(data_in_synced[6]),
        .O(v_min_temp0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    v_min_temp0_carry_i_2
       (.I0(v_min_temp[5]),
        .I1(data_in_synced[5]),
        .I2(v_min_temp[4]),
        .I3(data_in_synced[4]),
        .O(v_min_temp0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    v_min_temp0_carry_i_3
       (.I0(v_min_temp[3]),
        .I1(data_in_synced[3]),
        .I2(v_min_temp[2]),
        .I3(data_in_synced[2]),
        .O(v_min_temp0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    v_min_temp0_carry_i_4
       (.I0(v_min_temp[1]),
        .I1(data_in_synced[1]),
        .I2(v_min_temp[0]),
        .I3(data_in_synced[0]),
        .O(v_min_temp0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    v_min_temp0_carry_i_5
       (.I0(v_min_temp[7]),
        .I1(data_in_synced[7]),
        .I2(v_min_temp[6]),
        .I3(data_in_synced[6]),
        .O(v_min_temp0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    v_min_temp0_carry_i_6
       (.I0(v_min_temp[5]),
        .I1(data_in_synced[5]),
        .I2(v_min_temp[4]),
        .I3(data_in_synced[4]),
        .O(v_min_temp0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    v_min_temp0_carry_i_7
       (.I0(v_min_temp[3]),
        .I1(data_in_synced[3]),
        .I2(v_min_temp[2]),
        .I3(data_in_synced[2]),
        .O(v_min_temp0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    v_min_temp0_carry_i_8
       (.I0(v_min_temp[1]),
        .I1(data_in_synced[1]),
        .I2(v_min_temp[0]),
        .I3(data_in_synced[0]),
        .O(v_min_temp0_carry_i_8_n_0));
  FDPE \v_min_temp_reg[0] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_6),
        .D(data_in_synced[0]),
        .PRE(clk_divider_inst_n_11),
        .Q(v_min_temp[0]));
  FDPE \v_min_temp_reg[10] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_6),
        .D(data_in_synced[10]),
        .PRE(clk_divider_inst_n_11),
        .Q(v_min_temp[10]));
  FDPE \v_min_temp_reg[11] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_6),
        .D(data_in_synced[11]),
        .PRE(clk_divider_inst_n_11),
        .Q(v_min_temp[11]));
  FDPE \v_min_temp_reg[12] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_6),
        .D(data_in_synced[12]),
        .PRE(clk_divider_inst_n_11),
        .Q(v_min_temp[12]));
  FDPE \v_min_temp_reg[13] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_6),
        .D(data_in_synced[13]),
        .PRE(clk_divider_inst_n_11),
        .Q(v_min_temp[13]));
  FDPE \v_min_temp_reg[14] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_6),
        .D(data_in_synced[14]),
        .PRE(clk_divider_inst_n_11),
        .Q(v_min_temp[14]));
  FDCE \v_min_temp_reg[15] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_6),
        .CLR(clk_divider_inst_n_11),
        .D(data_in_synced[15]),
        .Q(v_min_temp[15]));
  FDPE \v_min_temp_reg[1] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_6),
        .D(data_in_synced[1]),
        .PRE(clk_divider_inst_n_11),
        .Q(v_min_temp[1]));
  FDPE \v_min_temp_reg[2] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_6),
        .D(data_in_synced[2]),
        .PRE(clk_divider_inst_n_11),
        .Q(v_min_temp[2]));
  FDPE \v_min_temp_reg[3] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_6),
        .D(data_in_synced[3]),
        .PRE(clk_divider_inst_n_11),
        .Q(v_min_temp[3]));
  FDPE \v_min_temp_reg[4] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_6),
        .D(data_in_synced[4]),
        .PRE(clk_divider_inst_n_11),
        .Q(v_min_temp[4]));
  FDPE \v_min_temp_reg[5] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_6),
        .D(data_in_synced[5]),
        .PRE(clk_divider_inst_n_11),
        .Q(v_min_temp[5]));
  FDPE \v_min_temp_reg[6] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_6),
        .D(data_in_synced[6]),
        .PRE(clk_divider_inst_n_11),
        .Q(v_min_temp[6]));
  FDPE \v_min_temp_reg[7] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_6),
        .D(data_in_synced[7]),
        .PRE(clk_divider_inst_n_11),
        .Q(v_min_temp[7]));
  FDPE \v_min_temp_reg[8] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_6),
        .D(data_in_synced[8]),
        .PRE(clk_divider_inst_n_11),
        .Q(v_min_temp[8]));
  FDPE \v_min_temp_reg[9] 
       (.C(sys_clk),
        .CE(clk_divider_inst_n_6),
        .D(data_in_synced[9]),
        .PRE(clk_divider_inst_n_11),
        .Q(v_min_temp[9]));
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
