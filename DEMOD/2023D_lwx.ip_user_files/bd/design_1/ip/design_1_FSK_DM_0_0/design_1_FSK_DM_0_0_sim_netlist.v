// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Thu Nov  6 16:34:32 2025
// Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/elysia/Software/Xilinx/Project/11-6/2023D_lwx.gen/sources_1/bd/design_1/ip/design_1_FSK_DM_0_0/design_1_FSK_DM_0_0_sim_netlist.v
// Design      : design_1_FSK_DM_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_FSK_DM_0_0,FSK_DM,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "FSK_DM,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_FSK_DM_0_0
   (rst_n,
    clk,
    iq_tvalid,
    fm_data_in,
    fm_data_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input iq_tvalid;
  input [31:0]fm_data_in;
  output [15:0]fm_data_out;

  wire clk;
  wire [31:0]fm_data_in;
  wire [15:0]fm_data_out;
  wire iq_tvalid;
  wire rst_n;

  design_1_FSK_DM_0_0_FSK_DM inst
       (.clk(clk),
        .fm_data_in(fm_data_in),
        .fm_data_out(fm_data_out),
        .iq_tvalid(iq_tvalid),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "FSK_DM" *) 
module design_1_FSK_DM_0_0_FSK_DM
   (rst_n,
    clk,
    iq_tvalid,
    fm_data_in,
    fm_data_out);
  input rst_n;
  input clk;
  input iq_tvalid;
  input [31:0]fm_data_in;
  output [15:0]fm_data_out;

  wire clk;
  wire [18:3]demod_out;
  wire demod_tvalid;
  wire [15:0]dout;
  wire dout_tvalid;
  wire [31:0]fm_data_in;
  wire [15:0]fm_data_out;
  wire iq_tvalid;
  wire phase_differentiator_inst_n_1;
  wire phase_unwrap_inst_n_20;
  wire phase_unwrap_inst_n_21;
  wire phase_unwrap_inst_n_22;
  wire phase_unwrap_inst_n_23;
  wire phase_unwrap_inst_n_24;
  wire phase_unwrap_inst_n_25;
  wire phase_unwrap_inst_n_26;
  wire phase_unwrap_inst_n_27;
  wire phase_unwrap_inst_n_28;
  wire phase_unwrap_inst_n_29;
  wire phase_unwrap_inst_n_30;
  wire phase_unwrap_inst_n_31;
  wire phase_unwrap_inst_n_32;
  wire phase_unwrap_inst_n_33;
  wire phase_unwrap_inst_n_34;
  wire phase_unwrap_inst_n_35;
  wire phase_unwrap_inst_n_36;
  wire phase_unwrap_inst_n_37;
  wire phase_unwrap_inst_n_38;
  wire [18:0]prev_unwrapped_phase;
  wire rst_n;
  wire [18:0]unwrapped_phase;
  wire unwrapped_phase_tvalid;
  wire NLW_fir_lpf_fsk_inst_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_fir_lpf_fsk_inst_s_axis_data_tready_UNCONNECTED;
  wire [39:0]NLW_fir_lpf_fsk_inst_m_axis_data_tdata_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "cordic_atan4,cordic_v6_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_23,Vivado 2024.2" *) 
  design_1_FSK_DM_0_0_cordic_atan4 cordic_atan4_inst
       (.aclk(clk),
        .m_axis_dout_tdata(dout),
        .m_axis_dout_tvalid(dout_tvalid),
        .s_axis_cartesian_tdata(fm_data_in),
        .s_axis_cartesian_tvalid(iq_tvalid));
  (* CHECK_LICENSE_TYPE = "fir_lpf_fsk,fir_compiler_v7_2_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_23,Vivado 2024.2" *) 
  design_1_FSK_DM_0_0_fir_lpf_fsk fir_lpf_fsk_inst
       (.aclk(clk),
        .m_axis_data_tdata({NLW_fir_lpf_fsk_inst_m_axis_data_tdata_UNCONNECTED[39:35],fm_data_out,NLW_fir_lpf_fsk_inst_m_axis_data_tdata_UNCONNECTED[18:0]}),
        .m_axis_data_tvalid(NLW_fir_lpf_fsk_inst_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata(demod_out),
        .s_axis_data_tready(NLW_fir_lpf_fsk_inst_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(demod_tvalid));
  design_1_FSK_DM_0_0_phase_differentiator phase_differentiator_inst
       (.E(unwrapped_phase_tvalid),
        .Q(unwrapped_phase),
        .S({phase_unwrap_inst_n_20,phase_unwrap_inst_n_21,phase_unwrap_inst_n_22,phase_unwrap_inst_n_23}),
        .clk(clk),
        .\frequency_out_reg[11]_0 ({phase_unwrap_inst_n_28,phase_unwrap_inst_n_29,phase_unwrap_inst_n_30,phase_unwrap_inst_n_31}),
        .\frequency_out_reg[15]_0 ({phase_unwrap_inst_n_32,phase_unwrap_inst_n_33,phase_unwrap_inst_n_34,phase_unwrap_inst_n_35}),
        .\frequency_out_reg[18]_0 (demod_out),
        .\frequency_out_reg[18]_1 ({phase_unwrap_inst_n_36,phase_unwrap_inst_n_37,phase_unwrap_inst_n_38}),
        .\frequency_out_reg[7]_0 ({phase_unwrap_inst_n_24,phase_unwrap_inst_n_25,phase_unwrap_inst_n_26,phase_unwrap_inst_n_27}),
        .frequency_out_tvalid(demod_tvalid),
        .\prev_unwrapped_phase_reg[18]_0 (prev_unwrapped_phase),
        .rst_n(rst_n),
        .rst_n_0(phase_differentiator_inst_n_1));
  design_1_FSK_DM_0_0_phase_unwrap phase_unwrap_inst
       (.D(dout),
        .E(unwrapped_phase_tvalid),
        .Q(unwrapped_phase),
        .S({phase_unwrap_inst_n_20,phase_unwrap_inst_n_21,phase_unwrap_inst_n_22,phase_unwrap_inst_n_23}),
        .clk(clk),
        .\frequency_out_reg[18] (prev_unwrapped_phase),
        .\prev_phase_reg[0]_0 (phase_differentiator_inst_n_1),
        .\unwrapped_phase_reg[11]_0 ({phase_unwrap_inst_n_28,phase_unwrap_inst_n_29,phase_unwrap_inst_n_30,phase_unwrap_inst_n_31}),
        .\unwrapped_phase_reg[15]_0 ({phase_unwrap_inst_n_32,phase_unwrap_inst_n_33,phase_unwrap_inst_n_34,phase_unwrap_inst_n_35}),
        .\unwrapped_phase_reg[18]_0 ({phase_unwrap_inst_n_36,phase_unwrap_inst_n_37,phase_unwrap_inst_n_38}),
        .\unwrapped_phase_reg[7]_0 ({phase_unwrap_inst_n_24,phase_unwrap_inst_n_25,phase_unwrap_inst_n_26,phase_unwrap_inst_n_27}),
        .unwrapped_phase_tvalid_reg_0(dout_tvalid));
endmodule

(* CHECK_LICENSE_TYPE = "cordic_atan4,cordic_v6_0_23,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "cordic_atan4" *) 
(* X_CORE_INFO = "cordic_v6_0_23,Vivado 2024.2" *) 
module design_1_FSK_DM_0_0_cordic_atan4
   (aclk,
    s_axis_cartesian_tvalid,
    s_axis_cartesian_tdata,
    m_axis_dout_tvalid,
    m_axis_dout_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_DOUT:S_AXIS_PHASE:S_AXIS_CARTESIAN, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CARTESIAN TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_CARTESIAN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_CARTESIAN, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_cartesian_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CARTESIAN TDATA" *) input [31:0]s_axis_cartesian_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DOUT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DOUT, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_dout_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TDATA" *) output [15:0]m_axis_dout_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "fir_lpf_fsk,fir_compiler_v7_2_23,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_lpf_fsk" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_23,Vivado 2024.2" *) 
module design_1_FSK_DM_0_0_fir_lpf_fsk
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

(* ORIG_REF_NAME = "phase_differentiator" *) 
module design_1_FSK_DM_0_0_phase_differentiator
   (frequency_out_tvalid,
    rst_n_0,
    \prev_unwrapped_phase_reg[18]_0 ,
    \frequency_out_reg[18]_0 ,
    E,
    clk,
    Q,
    S,
    \frequency_out_reg[7]_0 ,
    \frequency_out_reg[11]_0 ,
    \frequency_out_reg[15]_0 ,
    \frequency_out_reg[18]_1 ,
    rst_n);
  output frequency_out_tvalid;
  output rst_n_0;
  output [18:0]\prev_unwrapped_phase_reg[18]_0 ;
  output [15:0]\frequency_out_reg[18]_0 ;
  input [0:0]E;
  input clk;
  input [18:0]Q;
  input [3:0]S;
  input [3:0]\frequency_out_reg[7]_0 ;
  input [3:0]\frequency_out_reg[11]_0 ;
  input [3:0]\frequency_out_reg[15]_0 ;
  input [2:0]\frequency_out_reg[18]_1 ;
  input rst_n;

  wire [0:0]E;
  wire [18:0]Q;
  wire [3:0]S;
  wire clk;
  wire [18:3]frequency_out0;
  wire frequency_out0_carry__0_n_0;
  wire frequency_out0_carry__0_n_1;
  wire frequency_out0_carry__0_n_2;
  wire frequency_out0_carry__0_n_3;
  wire frequency_out0_carry__1_n_0;
  wire frequency_out0_carry__1_n_1;
  wire frequency_out0_carry__1_n_2;
  wire frequency_out0_carry__1_n_3;
  wire frequency_out0_carry__2_n_0;
  wire frequency_out0_carry__2_n_1;
  wire frequency_out0_carry__2_n_2;
  wire frequency_out0_carry__2_n_3;
  wire frequency_out0_carry__3_n_2;
  wire frequency_out0_carry__3_n_3;
  wire frequency_out0_carry_n_0;
  wire frequency_out0_carry_n_1;
  wire frequency_out0_carry_n_2;
  wire frequency_out0_carry_n_3;
  wire [3:0]\frequency_out_reg[11]_0 ;
  wire [3:0]\frequency_out_reg[15]_0 ;
  wire [15:0]\frequency_out_reg[18]_0 ;
  wire [2:0]\frequency_out_reg[18]_1 ;
  wire [3:0]\frequency_out_reg[7]_0 ;
  wire frequency_out_tvalid;
  wire [18:0]\prev_unwrapped_phase_reg[18]_0 ;
  wire rst_n;
  wire rst_n_0;
  wire [2:0]NLW_frequency_out0_carry_O_UNCONNECTED;
  wire [3:2]NLW_frequency_out0_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_frequency_out0_carry__3_O_UNCONNECTED;

  CARRY4 frequency_out0_carry
       (.CI(1'b0),
        .CO({frequency_out0_carry_n_0,frequency_out0_carry_n_1,frequency_out0_carry_n_2,frequency_out0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O({frequency_out0[3],NLW_frequency_out0_carry_O_UNCONNECTED[2:0]}),
        .S(S));
  CARRY4 frequency_out0_carry__0
       (.CI(frequency_out0_carry_n_0),
        .CO({frequency_out0_carry__0_n_0,frequency_out0_carry__0_n_1,frequency_out0_carry__0_n_2,frequency_out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(frequency_out0[7:4]),
        .S(\frequency_out_reg[7]_0 ));
  CARRY4 frequency_out0_carry__1
       (.CI(frequency_out0_carry__0_n_0),
        .CO({frequency_out0_carry__1_n_0,frequency_out0_carry__1_n_1,frequency_out0_carry__1_n_2,frequency_out0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(frequency_out0[11:8]),
        .S(\frequency_out_reg[11]_0 ));
  CARRY4 frequency_out0_carry__2
       (.CI(frequency_out0_carry__1_n_0),
        .CO({frequency_out0_carry__2_n_0,frequency_out0_carry__2_n_1,frequency_out0_carry__2_n_2,frequency_out0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O(frequency_out0[15:12]),
        .S(\frequency_out_reg[15]_0 ));
  CARRY4 frequency_out0_carry__3
       (.CI(frequency_out0_carry__2_n_0),
        .CO({NLW_frequency_out0_carry__3_CO_UNCONNECTED[3:2],frequency_out0_carry__3_n_2,frequency_out0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[17:16]}),
        .O({NLW_frequency_out0_carry__3_O_UNCONNECTED[3],frequency_out0[18:16]}),
        .S({1'b0,\frequency_out_reg[18]_1 }));
  FDCE \frequency_out_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(frequency_out0[10]),
        .Q(\frequency_out_reg[18]_0 [7]));
  FDCE \frequency_out_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(frequency_out0[11]),
        .Q(\frequency_out_reg[18]_0 [8]));
  FDCE \frequency_out_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(frequency_out0[12]),
        .Q(\frequency_out_reg[18]_0 [9]));
  FDCE \frequency_out_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(frequency_out0[13]),
        .Q(\frequency_out_reg[18]_0 [10]));
  FDCE \frequency_out_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(frequency_out0[14]),
        .Q(\frequency_out_reg[18]_0 [11]));
  FDCE \frequency_out_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(frequency_out0[15]),
        .Q(\frequency_out_reg[18]_0 [12]));
  FDCE \frequency_out_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(frequency_out0[16]),
        .Q(\frequency_out_reg[18]_0 [13]));
  FDCE \frequency_out_reg[17] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(frequency_out0[17]),
        .Q(\frequency_out_reg[18]_0 [14]));
  FDCE \frequency_out_reg[18] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(frequency_out0[18]),
        .Q(\frequency_out_reg[18]_0 [15]));
  FDCE \frequency_out_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(frequency_out0[3]),
        .Q(\frequency_out_reg[18]_0 [0]));
  FDCE \frequency_out_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(frequency_out0[4]),
        .Q(\frequency_out_reg[18]_0 [1]));
  FDCE \frequency_out_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(frequency_out0[5]),
        .Q(\frequency_out_reg[18]_0 [2]));
  FDCE \frequency_out_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(frequency_out0[6]),
        .Q(\frequency_out_reg[18]_0 [3]));
  FDCE \frequency_out_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(frequency_out0[7]),
        .Q(\frequency_out_reg[18]_0 [4]));
  FDCE \frequency_out_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(frequency_out0[8]),
        .Q(\frequency_out_reg[18]_0 [5]));
  FDCE \frequency_out_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(frequency_out0[9]),
        .Q(\frequency_out_reg[18]_0 [6]));
  FDCE frequency_out_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(E),
        .Q(frequency_out_tvalid));
  FDCE \prev_unwrapped_phase_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(Q[0]),
        .Q(\prev_unwrapped_phase_reg[18]_0 [0]));
  FDCE \prev_unwrapped_phase_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(Q[10]),
        .Q(\prev_unwrapped_phase_reg[18]_0 [10]));
  FDCE \prev_unwrapped_phase_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(Q[11]),
        .Q(\prev_unwrapped_phase_reg[18]_0 [11]));
  FDCE \prev_unwrapped_phase_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(Q[12]),
        .Q(\prev_unwrapped_phase_reg[18]_0 [12]));
  FDCE \prev_unwrapped_phase_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(Q[13]),
        .Q(\prev_unwrapped_phase_reg[18]_0 [13]));
  FDCE \prev_unwrapped_phase_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(Q[14]),
        .Q(\prev_unwrapped_phase_reg[18]_0 [14]));
  FDCE \prev_unwrapped_phase_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(Q[15]),
        .Q(\prev_unwrapped_phase_reg[18]_0 [15]));
  FDCE \prev_unwrapped_phase_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(Q[16]),
        .Q(\prev_unwrapped_phase_reg[18]_0 [16]));
  FDCE \prev_unwrapped_phase_reg[17] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(Q[17]),
        .Q(\prev_unwrapped_phase_reg[18]_0 [17]));
  FDCE \prev_unwrapped_phase_reg[18] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(Q[18]),
        .Q(\prev_unwrapped_phase_reg[18]_0 [18]));
  FDCE \prev_unwrapped_phase_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(Q[1]),
        .Q(\prev_unwrapped_phase_reg[18]_0 [1]));
  FDCE \prev_unwrapped_phase_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(Q[2]),
        .Q(\prev_unwrapped_phase_reg[18]_0 [2]));
  FDCE \prev_unwrapped_phase_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(Q[3]),
        .Q(\prev_unwrapped_phase_reg[18]_0 [3]));
  FDCE \prev_unwrapped_phase_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(Q[4]),
        .Q(\prev_unwrapped_phase_reg[18]_0 [4]));
  FDCE \prev_unwrapped_phase_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(Q[5]),
        .Q(\prev_unwrapped_phase_reg[18]_0 [5]));
  FDCE \prev_unwrapped_phase_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(Q[6]),
        .Q(\prev_unwrapped_phase_reg[18]_0 [6]));
  FDCE \prev_unwrapped_phase_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(Q[7]),
        .Q(\prev_unwrapped_phase_reg[18]_0 [7]));
  FDCE \prev_unwrapped_phase_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(Q[8]),
        .Q(\prev_unwrapped_phase_reg[18]_0 [8]));
  FDCE \prev_unwrapped_phase_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(Q[9]),
        .Q(\prev_unwrapped_phase_reg[18]_0 [9]));
  LUT1 #(
    .INIT(2'h1)) 
    unwrapped_phase_tvalid_i_1
       (.I0(rst_n),
        .O(rst_n_0));
endmodule

(* ORIG_REF_NAME = "phase_unwrap" *) 
module design_1_FSK_DM_0_0_phase_unwrap
   (E,
    Q,
    S,
    \unwrapped_phase_reg[7]_0 ,
    \unwrapped_phase_reg[11]_0 ,
    \unwrapped_phase_reg[15]_0 ,
    \unwrapped_phase_reg[18]_0 ,
    unwrapped_phase_tvalid_reg_0,
    clk,
    \prev_phase_reg[0]_0 ,
    D,
    \frequency_out_reg[18] );
  output [0:0]E;
  output [18:0]Q;
  output [3:0]S;
  output [3:0]\unwrapped_phase_reg[7]_0 ;
  output [3:0]\unwrapped_phase_reg[11]_0 ;
  output [3:0]\unwrapped_phase_reg[15]_0 ;
  output [2:0]\unwrapped_phase_reg[18]_0 ;
  input [0:0]unwrapped_phase_tvalid_reg_0;
  input clk;
  input \prev_phase_reg[0]_0 ;
  input [15:0]D;
  input [18:0]\frequency_out_reg[18] ;

  wire [15:0]D;
  wire [0:0]E;
  wire [18:0]Q;
  wire [3:0]S;
  wire clk;
  wire [18:0]\frequency_out_reg[18] ;
  wire next_unwrapped_phase0__4_carry__0_i_1_n_0;
  wire next_unwrapped_phase0__4_carry__0_i_2_n_0;
  wire next_unwrapped_phase0__4_carry__0_i_3_n_0;
  wire next_unwrapped_phase0__4_carry__0_i_4_n_0;
  wire next_unwrapped_phase0__4_carry__0_i_5_n_0;
  wire next_unwrapped_phase0__4_carry__0_i_6_n_0;
  wire next_unwrapped_phase0__4_carry__0_i_7_n_0;
  wire next_unwrapped_phase0__4_carry__0_i_8_n_0;
  wire next_unwrapped_phase0__4_carry__0_n_0;
  wire next_unwrapped_phase0__4_carry__0_n_1;
  wire next_unwrapped_phase0__4_carry__0_n_2;
  wire next_unwrapped_phase0__4_carry__0_n_3;
  wire next_unwrapped_phase0__4_carry__0_n_4;
  wire next_unwrapped_phase0__4_carry__0_n_5;
  wire next_unwrapped_phase0__4_carry__0_n_6;
  wire next_unwrapped_phase0__4_carry__0_n_7;
  wire next_unwrapped_phase0__4_carry__1_i_10_n_0;
  wire next_unwrapped_phase0__4_carry__1_i_1_n_0;
  wire next_unwrapped_phase0__4_carry__1_i_2_n_0;
  wire next_unwrapped_phase0__4_carry__1_i_3_n_0;
  wire next_unwrapped_phase0__4_carry__1_i_4_n_0;
  wire next_unwrapped_phase0__4_carry__1_i_5_n_0;
  wire next_unwrapped_phase0__4_carry__1_i_6_n_0;
  wire next_unwrapped_phase0__4_carry__1_i_7_n_0;
  wire next_unwrapped_phase0__4_carry__1_i_8_n_0;
  wire next_unwrapped_phase0__4_carry__1_i_9_n_0;
  wire next_unwrapped_phase0__4_carry__1_n_0;
  wire next_unwrapped_phase0__4_carry__1_n_1;
  wire next_unwrapped_phase0__4_carry__1_n_2;
  wire next_unwrapped_phase0__4_carry__1_n_3;
  wire next_unwrapped_phase0__4_carry__1_n_4;
  wire next_unwrapped_phase0__4_carry__1_n_5;
  wire next_unwrapped_phase0__4_carry__1_n_6;
  wire next_unwrapped_phase0__4_carry__1_n_7;
  wire next_unwrapped_phase0__4_carry__2_i_1_n_0;
  wire next_unwrapped_phase0__4_carry__2_i_2_n_0;
  wire next_unwrapped_phase0__4_carry__2_i_3_n_0;
  wire next_unwrapped_phase0__4_carry__2_i_4_n_0;
  wire next_unwrapped_phase0__4_carry__2_i_5_n_0;
  wire next_unwrapped_phase0__4_carry__2_i_6_n_0;
  wire next_unwrapped_phase0__4_carry__2_i_7_n_0;
  wire next_unwrapped_phase0__4_carry__2_i_8_n_0;
  wire next_unwrapped_phase0__4_carry__2_i_9_n_0;
  wire next_unwrapped_phase0__4_carry__2_n_0;
  wire next_unwrapped_phase0__4_carry__2_n_1;
  wire next_unwrapped_phase0__4_carry__2_n_2;
  wire next_unwrapped_phase0__4_carry__2_n_3;
  wire next_unwrapped_phase0__4_carry__2_n_4;
  wire next_unwrapped_phase0__4_carry__2_n_5;
  wire next_unwrapped_phase0__4_carry__2_n_6;
  wire next_unwrapped_phase0__4_carry__2_n_7;
  wire next_unwrapped_phase0__4_carry__3_i_1_n_0;
  wire next_unwrapped_phase0__4_carry__3_i_2_n_0;
  wire next_unwrapped_phase0__4_carry__3_i_3_n_0;
  wire next_unwrapped_phase0__4_carry__3_i_4_n_0;
  wire next_unwrapped_phase0__4_carry__3_i_5_n_0;
  wire next_unwrapped_phase0__4_carry__3_i_6_n_0;
  wire next_unwrapped_phase0__4_carry__3_i_7_n_0;
  wire next_unwrapped_phase0__4_carry__3_n_2;
  wire next_unwrapped_phase0__4_carry__3_n_3;
  wire next_unwrapped_phase0__4_carry__3_n_5;
  wire next_unwrapped_phase0__4_carry__3_n_6;
  wire next_unwrapped_phase0__4_carry__3_n_7;
  wire next_unwrapped_phase0__4_carry_i_1_n_0;
  wire next_unwrapped_phase0__4_carry_i_2_n_0;
  wire next_unwrapped_phase0__4_carry_i_3_n_0;
  wire next_unwrapped_phase0__4_carry_i_4_n_0;
  wire next_unwrapped_phase0__4_carry_i_5_n_0;
  wire next_unwrapped_phase0__4_carry_n_0;
  wire next_unwrapped_phase0__4_carry_n_1;
  wire next_unwrapped_phase0__4_carry_n_2;
  wire next_unwrapped_phase0__4_carry_n_3;
  wire next_unwrapped_phase0__4_carry_n_4;
  wire next_unwrapped_phase0__4_carry_n_5;
  wire next_unwrapped_phase0__4_carry_n_6;
  wire next_unwrapped_phase0__4_carry_n_7;
  wire next_unwrapped_phase1;
  wire next_unwrapped_phase1_carry__0_i_1_n_0;
  wire next_unwrapped_phase1_carry__0_i_2_n_0;
  wire next_unwrapped_phase1_carry__0_i_3_n_0;
  wire next_unwrapped_phase1_carry__0_i_4_n_0;
  wire next_unwrapped_phase1_carry__0_i_5_n_0;
  wire next_unwrapped_phase1_carry__0_i_6_n_0;
  wire next_unwrapped_phase1_carry__0_n_0;
  wire next_unwrapped_phase1_carry__0_n_1;
  wire next_unwrapped_phase1_carry__0_n_2;
  wire next_unwrapped_phase1_carry__0_n_3;
  wire next_unwrapped_phase1_carry__1_i_1_n_3;
  wire next_unwrapped_phase1_carry_i_1_n_0;
  wire next_unwrapped_phase1_carry_i_2_n_0;
  wire next_unwrapped_phase1_carry_i_3_n_0;
  wire next_unwrapped_phase1_carry_i_4_n_0;
  wire next_unwrapped_phase1_carry_i_5_n_0;
  wire next_unwrapped_phase1_carry_i_6_n_0;
  wire next_unwrapped_phase1_carry_i_7_n_0;
  wire next_unwrapped_phase1_carry_i_8_n_0;
  wire next_unwrapped_phase1_carry_n_0;
  wire next_unwrapped_phase1_carry_n_1;
  wire next_unwrapped_phase1_carry_n_2;
  wire next_unwrapped_phase1_carry_n_3;
  wire next_unwrapped_phase2;
  wire next_unwrapped_phase2_carry__0_i_1_n_0;
  wire next_unwrapped_phase2_carry__0_i_2_n_0;
  wire next_unwrapped_phase2_carry__0_i_3_n_0;
  wire next_unwrapped_phase2_carry__0_i_5_n_0;
  wire next_unwrapped_phase2_carry__0_i_6_n_0;
  wire next_unwrapped_phase2_carry__0_i_7_n_0;
  wire next_unwrapped_phase2_carry__0_n_1;
  wire next_unwrapped_phase2_carry__0_n_2;
  wire next_unwrapped_phase2_carry__0_n_3;
  wire next_unwrapped_phase2_carry_i_1_n_0;
  wire next_unwrapped_phase2_carry_i_2_n_0;
  wire next_unwrapped_phase2_carry_i_3_n_0;
  wire next_unwrapped_phase2_carry_i_4_n_0;
  wire next_unwrapped_phase2_carry_i_5_n_0;
  wire next_unwrapped_phase2_carry_i_6_n_0;
  wire next_unwrapped_phase2_carry_i_7_n_0;
  wire next_unwrapped_phase2_carry_i_8_n_0;
  wire next_unwrapped_phase2_carry_n_0;
  wire next_unwrapped_phase2_carry_n_1;
  wire next_unwrapped_phase2_carry_n_2;
  wire next_unwrapped_phase2_carry_n_3;
  wire phase_diff_carry__0_i_1_n_0;
  wire phase_diff_carry__0_i_2_n_0;
  wire phase_diff_carry__0_i_3_n_0;
  wire phase_diff_carry__0_i_4_n_0;
  wire phase_diff_carry__0_n_0;
  wire phase_diff_carry__0_n_1;
  wire phase_diff_carry__0_n_2;
  wire phase_diff_carry__0_n_3;
  wire phase_diff_carry__0_n_4;
  wire phase_diff_carry__0_n_5;
  wire phase_diff_carry__0_n_6;
  wire phase_diff_carry__0_n_7;
  wire phase_diff_carry__1_i_1_n_0;
  wire phase_diff_carry__1_i_2_n_0;
  wire phase_diff_carry__1_i_3_n_0;
  wire phase_diff_carry__1_i_4_n_0;
  wire phase_diff_carry__1_n_0;
  wire phase_diff_carry__1_n_1;
  wire phase_diff_carry__1_n_2;
  wire phase_diff_carry__1_n_3;
  wire phase_diff_carry__1_n_4;
  wire phase_diff_carry__1_n_5;
  wire phase_diff_carry__1_n_6;
  wire phase_diff_carry__1_n_7;
  wire phase_diff_carry__2_i_1_n_0;
  wire phase_diff_carry__2_i_2_n_0;
  wire phase_diff_carry__2_i_3_n_0;
  wire phase_diff_carry__2_i_4_n_0;
  wire phase_diff_carry__2_n_0;
  wire phase_diff_carry__2_n_1;
  wire phase_diff_carry__2_n_2;
  wire phase_diff_carry__2_n_3;
  wire phase_diff_carry__2_n_4;
  wire phase_diff_carry__2_n_5;
  wire phase_diff_carry__2_n_6;
  wire phase_diff_carry__2_n_7;
  wire phase_diff_carry_i_1_n_0;
  wire phase_diff_carry_i_2_n_0;
  wire phase_diff_carry_i_3_n_0;
  wire phase_diff_carry_i_4_n_0;
  wire phase_diff_carry_n_0;
  wire phase_diff_carry_n_1;
  wire phase_diff_carry_n_2;
  wire phase_diff_carry_n_3;
  wire phase_diff_carry_n_4;
  wire phase_diff_carry_n_5;
  wire phase_diff_carry_n_6;
  wire phase_diff_carry_n_7;
  wire phase_diff_scaled0;
  wire [15:0]prev_phase;
  wire \prev_phase_reg[0]_0 ;
  wire [3:0]\unwrapped_phase_reg[11]_0 ;
  wire [3:0]\unwrapped_phase_reg[15]_0 ;
  wire [2:0]\unwrapped_phase_reg[18]_0 ;
  wire [3:0]\unwrapped_phase_reg[7]_0 ;
  wire [0:0]unwrapped_phase_tvalid_reg_0;
  wire [3:2]NLW_next_unwrapped_phase0__4_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_next_unwrapped_phase0__4_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_next_unwrapped_phase1_carry_O_UNCONNECTED;
  wire [3:0]NLW_next_unwrapped_phase1_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_next_unwrapped_phase1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_next_unwrapped_phase1_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_next_unwrapped_phase1_carry__1_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_next_unwrapped_phase1_carry__1_i_1_O_UNCONNECTED;
  wire [3:0]NLW_next_unwrapped_phase2_carry_O_UNCONNECTED;
  wire [3:0]NLW_next_unwrapped_phase2_carry__0_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h9)) 
    frequency_out0_carry__0_i_1
       (.I0(Q[7]),
        .I1(\frequency_out_reg[18] [7]),
        .O(\unwrapped_phase_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    frequency_out0_carry__0_i_2
       (.I0(Q[6]),
        .I1(\frequency_out_reg[18] [6]),
        .O(\unwrapped_phase_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    frequency_out0_carry__0_i_3
       (.I0(Q[5]),
        .I1(\frequency_out_reg[18] [5]),
        .O(\unwrapped_phase_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    frequency_out0_carry__0_i_4
       (.I0(Q[4]),
        .I1(\frequency_out_reg[18] [4]),
        .O(\unwrapped_phase_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    frequency_out0_carry__1_i_1
       (.I0(Q[11]),
        .I1(\frequency_out_reg[18] [11]),
        .O(\unwrapped_phase_reg[11]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    frequency_out0_carry__1_i_2
       (.I0(Q[10]),
        .I1(\frequency_out_reg[18] [10]),
        .O(\unwrapped_phase_reg[11]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    frequency_out0_carry__1_i_3
       (.I0(Q[9]),
        .I1(\frequency_out_reg[18] [9]),
        .O(\unwrapped_phase_reg[11]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    frequency_out0_carry__1_i_4
       (.I0(Q[8]),
        .I1(\frequency_out_reg[18] [8]),
        .O(\unwrapped_phase_reg[11]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    frequency_out0_carry__2_i_1
       (.I0(Q[15]),
        .I1(\frequency_out_reg[18] [15]),
        .O(\unwrapped_phase_reg[15]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    frequency_out0_carry__2_i_2
       (.I0(Q[14]),
        .I1(\frequency_out_reg[18] [14]),
        .O(\unwrapped_phase_reg[15]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    frequency_out0_carry__2_i_3
       (.I0(Q[13]),
        .I1(\frequency_out_reg[18] [13]),
        .O(\unwrapped_phase_reg[15]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    frequency_out0_carry__2_i_4
       (.I0(Q[12]),
        .I1(\frequency_out_reg[18] [12]),
        .O(\unwrapped_phase_reg[15]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    frequency_out0_carry__3_i_1
       (.I0(Q[18]),
        .I1(\frequency_out_reg[18] [18]),
        .O(\unwrapped_phase_reg[18]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    frequency_out0_carry__3_i_2
       (.I0(Q[17]),
        .I1(\frequency_out_reg[18] [17]),
        .O(\unwrapped_phase_reg[18]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    frequency_out0_carry__3_i_3
       (.I0(Q[16]),
        .I1(\frequency_out_reg[18] [16]),
        .O(\unwrapped_phase_reg[18]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    frequency_out0_carry_i_1
       (.I0(Q[3]),
        .I1(\frequency_out_reg[18] [3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    frequency_out0_carry_i_2
       (.I0(Q[2]),
        .I1(\frequency_out_reg[18] [2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    frequency_out0_carry_i_3
       (.I0(Q[1]),
        .I1(\frequency_out_reg[18] [1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    frequency_out0_carry_i_4
       (.I0(Q[0]),
        .I1(\frequency_out_reg[18] [0]),
        .O(S[0]));
  CARRY4 next_unwrapped_phase0__4_carry
       (.CI(1'b0),
        .CO({next_unwrapped_phase0__4_carry_n_0,next_unwrapped_phase0__4_carry_n_1,next_unwrapped_phase0__4_carry_n_2,next_unwrapped_phase0__4_carry_n_3}),
        .CYINIT(1'b0),
        .DI({next_unwrapped_phase0__4_carry_i_1_n_0,Q[2:0]}),
        .O({next_unwrapped_phase0__4_carry_n_4,next_unwrapped_phase0__4_carry_n_5,next_unwrapped_phase0__4_carry_n_6,next_unwrapped_phase0__4_carry_n_7}),
        .S({next_unwrapped_phase0__4_carry_i_2_n_0,next_unwrapped_phase0__4_carry_i_3_n_0,next_unwrapped_phase0__4_carry_i_4_n_0,next_unwrapped_phase0__4_carry_i_5_n_0}));
  CARRY4 next_unwrapped_phase0__4_carry__0
       (.CI(next_unwrapped_phase0__4_carry_n_0),
        .CO({next_unwrapped_phase0__4_carry__0_n_0,next_unwrapped_phase0__4_carry__0_n_1,next_unwrapped_phase0__4_carry__0_n_2,next_unwrapped_phase0__4_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({next_unwrapped_phase0__4_carry__0_i_1_n_0,next_unwrapped_phase0__4_carry__0_i_2_n_0,next_unwrapped_phase0__4_carry__0_i_3_n_0,next_unwrapped_phase0__4_carry__0_i_4_n_0}),
        .O({next_unwrapped_phase0__4_carry__0_n_4,next_unwrapped_phase0__4_carry__0_n_5,next_unwrapped_phase0__4_carry__0_n_6,next_unwrapped_phase0__4_carry__0_n_7}),
        .S({next_unwrapped_phase0__4_carry__0_i_5_n_0,next_unwrapped_phase0__4_carry__0_i_6_n_0,next_unwrapped_phase0__4_carry__0_i_7_n_0,next_unwrapped_phase0__4_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    next_unwrapped_phase0__4_carry__0_i_1
       (.I0(next_unwrapped_phase1),
        .I1(phase_diff_carry__0_n_7),
        .I2(Q[7]),
        .O(next_unwrapped_phase0__4_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h8E88)) 
    next_unwrapped_phase0__4_carry__0_i_2
       (.I0(Q[5]),
        .I1(phase_diff_carry_n_5),
        .I2(next_unwrapped_phase1),
        .I3(next_unwrapped_phase2),
        .O(next_unwrapped_phase0__4_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h8E88)) 
    next_unwrapped_phase0__4_carry__0_i_3
       (.I0(Q[4]),
        .I1(phase_diff_carry_n_6),
        .I2(next_unwrapped_phase1),
        .I3(next_unwrapped_phase2),
        .O(next_unwrapped_phase0__4_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h4BB4)) 
    next_unwrapped_phase0__4_carry__0_i_4
       (.I0(next_unwrapped_phase1),
        .I1(next_unwrapped_phase2),
        .I2(Q[4]),
        .I3(phase_diff_carry_n_6),
        .O(next_unwrapped_phase0__4_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h6699999699969966)) 
    next_unwrapped_phase0__4_carry__0_i_5
       (.I0(phase_diff_carry__0_n_7),
        .I1(Q[7]),
        .I2(next_unwrapped_phase2),
        .I3(next_unwrapped_phase1),
        .I4(phase_diff_carry_n_4),
        .I5(Q[6]),
        .O(next_unwrapped_phase0__4_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h96966996)) 
    next_unwrapped_phase0__4_carry__0_i_6
       (.I0(next_unwrapped_phase0__4_carry__0_i_2_n_0),
        .I1(phase_diff_carry_n_4),
        .I2(Q[6]),
        .I3(next_unwrapped_phase2),
        .I4(next_unwrapped_phase1),
        .O(next_unwrapped_phase0__4_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h96996966)) 
    next_unwrapped_phase0__4_carry__0_i_7
       (.I0(Q[5]),
        .I1(phase_diff_carry_n_5),
        .I2(next_unwrapped_phase1),
        .I3(next_unwrapped_phase2),
        .I4(next_unwrapped_phase0__4_carry__0_i_3_n_0),
        .O(next_unwrapped_phase0__4_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h9969669666966696)) 
    next_unwrapped_phase0__4_carry__0_i_8
       (.I0(phase_diff_carry_n_6),
        .I1(Q[4]),
        .I2(next_unwrapped_phase2),
        .I3(next_unwrapped_phase1),
        .I4(phase_diff_carry_n_7),
        .I5(Q[3]),
        .O(next_unwrapped_phase0__4_carry__0_i_8_n_0));
  CARRY4 next_unwrapped_phase0__4_carry__1
       (.CI(next_unwrapped_phase0__4_carry__0_n_0),
        .CO({next_unwrapped_phase0__4_carry__1_n_0,next_unwrapped_phase0__4_carry__1_n_1,next_unwrapped_phase0__4_carry__1_n_2,next_unwrapped_phase0__4_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({next_unwrapped_phase0__4_carry__1_i_1_n_0,next_unwrapped_phase0__4_carry__1_i_2_n_0,next_unwrapped_phase0__4_carry__1_i_3_n_0,next_unwrapped_phase0__4_carry__1_i_4_n_0}),
        .O({next_unwrapped_phase0__4_carry__1_n_4,next_unwrapped_phase0__4_carry__1_n_5,next_unwrapped_phase0__4_carry__1_n_6,next_unwrapped_phase0__4_carry__1_n_7}),
        .S({next_unwrapped_phase0__4_carry__1_i_5_n_0,next_unwrapped_phase0__4_carry__1_i_6_n_0,next_unwrapped_phase0__4_carry__1_i_7_n_0,next_unwrapped_phase0__4_carry__1_i_8_n_0}));
  LUT6 #(
    .INIT(64'hEEE1111E111EEEE1)) 
    next_unwrapped_phase0__4_carry__1_i_1
       (.I0(Q[10]),
        .I1(phase_diff_carry__0_n_4),
        .I2(next_unwrapped_phase2),
        .I3(next_unwrapped_phase1),
        .I4(Q[11]),
        .I5(phase_diff_carry__1_n_7),
        .O(next_unwrapped_phase0__4_carry__1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    next_unwrapped_phase0__4_carry__1_i_10
       (.I0(next_unwrapped_phase2),
        .I1(next_unwrapped_phase1),
        .O(next_unwrapped_phase0__4_carry__1_i_10_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    next_unwrapped_phase0__4_carry__1_i_2
       (.I0(Q[8]),
        .I1(phase_diff_carry__0_n_6),
        .I2(Q[9]),
        .I3(phase_diff_carry__0_n_5),
        .O(next_unwrapped_phase0__4_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    next_unwrapped_phase0__4_carry__1_i_3
       (.I0(Q[7]),
        .I1(phase_diff_carry__0_n_7),
        .I2(Q[8]),
        .I3(phase_diff_carry__0_n_6),
        .O(next_unwrapped_phase0__4_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    next_unwrapped_phase0__4_carry__1_i_4
       (.I0(Q[7]),
        .I1(phase_diff_carry__0_n_7),
        .I2(next_unwrapped_phase1),
        .O(next_unwrapped_phase0__4_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h9666966696666669)) 
    next_unwrapped_phase0__4_carry__1_i_5
       (.I0(next_unwrapped_phase0__4_carry__1_i_9_n_0),
        .I1(next_unwrapped_phase0__4_carry__1_i_10_n_0),
        .I2(phase_diff_carry__0_n_4),
        .I3(Q[10]),
        .I4(phase_diff_carry__0_n_5),
        .I5(Q[9]),
        .O(next_unwrapped_phase0__4_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    next_unwrapped_phase0__4_carry__1_i_6
       (.I0(phase_diff_carry__0_n_6),
        .I1(Q[8]),
        .I2(phase_diff_carry__0_n_4),
        .I3(Q[10]),
        .I4(phase_diff_carry__0_n_5),
        .I5(Q[9]),
        .O(next_unwrapped_phase0__4_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    next_unwrapped_phase0__4_carry__1_i_7
       (.I0(phase_diff_carry__0_n_7),
        .I1(Q[7]),
        .I2(phase_diff_carry__0_n_5),
        .I3(Q[9]),
        .I4(phase_diff_carry__0_n_6),
        .I5(Q[8]),
        .O(next_unwrapped_phase0__4_carry__1_i_7_n_0));
  LUT5 #(
    .INIT(32'h693C3C96)) 
    next_unwrapped_phase0__4_carry__1_i_8
       (.I0(next_unwrapped_phase1),
        .I1(phase_diff_carry__0_n_6),
        .I2(Q[8]),
        .I3(phase_diff_carry__0_n_7),
        .I4(Q[7]),
        .O(next_unwrapped_phase0__4_carry__1_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    next_unwrapped_phase0__4_carry__1_i_9
       (.I0(next_unwrapped_phase1),
        .I1(Q[11]),
        .I2(phase_diff_carry__1_n_7),
        .O(next_unwrapped_phase0__4_carry__1_i_9_n_0));
  CARRY4 next_unwrapped_phase0__4_carry__2
       (.CI(next_unwrapped_phase0__4_carry__1_n_0),
        .CO({next_unwrapped_phase0__4_carry__2_n_0,next_unwrapped_phase0__4_carry__2_n_1,next_unwrapped_phase0__4_carry__2_n_2,next_unwrapped_phase0__4_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({next_unwrapped_phase0__4_carry__2_i_1_n_0,next_unwrapped_phase0__4_carry__2_i_2_n_0,next_unwrapped_phase0__4_carry__2_i_3_n_0,next_unwrapped_phase0__4_carry__2_i_4_n_0}),
        .O({next_unwrapped_phase0__4_carry__2_n_4,next_unwrapped_phase0__4_carry__2_n_5,next_unwrapped_phase0__4_carry__2_n_6,next_unwrapped_phase0__4_carry__2_n_7}),
        .S({next_unwrapped_phase0__4_carry__2_i_5_n_0,next_unwrapped_phase0__4_carry__2_i_6_n_0,next_unwrapped_phase0__4_carry__2_i_7_n_0,next_unwrapped_phase0__4_carry__2_i_8_n_0}));
  LUT6 #(
    .INIT(64'h6F696F696F690900)) 
    next_unwrapped_phase0__4_carry__2_i_1
       (.I0(phase_diff_carry__1_n_4),
        .I1(Q[14]),
        .I2(next_unwrapped_phase1),
        .I3(next_unwrapped_phase2),
        .I4(Q[13]),
        .I5(phase_diff_carry__1_n_5),
        .O(next_unwrapped_phase0__4_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'hEEE1111E111EEEE1)) 
    next_unwrapped_phase0__4_carry__2_i_2
       (.I0(Q[13]),
        .I1(phase_diff_carry__1_n_5),
        .I2(next_unwrapped_phase2),
        .I3(next_unwrapped_phase1),
        .I4(Q[14]),
        .I5(phase_diff_carry__1_n_4),
        .O(next_unwrapped_phase0__4_carry__2_i_2_n_0));
  LUT5 #(
    .INIT(32'hD40000D4)) 
    next_unwrapped_phase0__4_carry__2_i_3
       (.I0(next_unwrapped_phase1),
        .I1(phase_diff_carry__1_n_7),
        .I2(Q[11]),
        .I3(Q[12]),
        .I4(phase_diff_carry__1_n_6),
        .O(next_unwrapped_phase0__4_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h6F696F696F690900)) 
    next_unwrapped_phase0__4_carry__2_i_4
       (.I0(phase_diff_carry__1_n_7),
        .I1(Q[11]),
        .I2(next_unwrapped_phase1),
        .I3(next_unwrapped_phase2),
        .I4(Q[10]),
        .I5(phase_diff_carry__0_n_4),
        .O(next_unwrapped_phase0__4_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h9669696996969669)) 
    next_unwrapped_phase0__4_carry__2_i_5
       (.I0(next_unwrapped_phase0__4_carry__2_i_1_n_0),
        .I1(phase_diff_carry__2_n_7),
        .I2(Q[15]),
        .I3(Q[14]),
        .I4(phase_diff_carry__1_n_4),
        .I5(next_unwrapped_phase1),
        .O(next_unwrapped_phase0__4_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'h9666966696666669)) 
    next_unwrapped_phase0__4_carry__2_i_6
       (.I0(next_unwrapped_phase0__4_carry__2_i_9_n_0),
        .I1(next_unwrapped_phase0__4_carry__1_i_10_n_0),
        .I2(phase_diff_carry__1_n_5),
        .I3(Q[13]),
        .I4(phase_diff_carry__1_n_6),
        .I5(Q[12]),
        .O(next_unwrapped_phase0__4_carry__2_i_6_n_0));
  LUT5 #(
    .INIT(32'h96969669)) 
    next_unwrapped_phase0__4_carry__2_i_7
       (.I0(next_unwrapped_phase0__4_carry__2_i_3_n_0),
        .I1(phase_diff_carry__1_n_5),
        .I2(Q[13]),
        .I3(phase_diff_carry__1_n_6),
        .I4(Q[12]),
        .O(next_unwrapped_phase0__4_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h9669696996969669)) 
    next_unwrapped_phase0__4_carry__2_i_8
       (.I0(next_unwrapped_phase0__4_carry__2_i_4_n_0),
        .I1(phase_diff_carry__1_n_6),
        .I2(Q[12]),
        .I3(Q[11]),
        .I4(phase_diff_carry__1_n_7),
        .I5(next_unwrapped_phase1),
        .O(next_unwrapped_phase0__4_carry__2_i_8_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    next_unwrapped_phase0__4_carry__2_i_9
       (.I0(next_unwrapped_phase1),
        .I1(Q[14]),
        .I2(phase_diff_carry__1_n_4),
        .O(next_unwrapped_phase0__4_carry__2_i_9_n_0));
  CARRY4 next_unwrapped_phase0__4_carry__3
       (.CI(next_unwrapped_phase0__4_carry__2_n_0),
        .CO({NLW_next_unwrapped_phase0__4_carry__3_CO_UNCONNECTED[3:2],next_unwrapped_phase0__4_carry__3_n_2,next_unwrapped_phase0__4_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,next_unwrapped_phase0__4_carry__3_i_1_n_0,next_unwrapped_phase0__4_carry__3_i_2_n_0}),
        .O({NLW_next_unwrapped_phase0__4_carry__3_O_UNCONNECTED[3],next_unwrapped_phase0__4_carry__3_n_5,next_unwrapped_phase0__4_carry__3_n_6,next_unwrapped_phase0__4_carry__3_n_7}),
        .S({1'b0,next_unwrapped_phase0__4_carry__3_i_3_n_0,next_unwrapped_phase0__4_carry__3_i_4_n_0,next_unwrapped_phase0__4_carry__3_i_5_n_0}));
  LUT6 #(
    .INIT(64'hEEE1111E111EEEE1)) 
    next_unwrapped_phase0__4_carry__3_i_1
       (.I0(Q[16]),
        .I1(phase_diff_carry__2_n_6),
        .I2(next_unwrapped_phase1),
        .I3(next_unwrapped_phase2),
        .I4(phase_diff_carry__2_n_5),
        .I5(Q[17]),
        .O(next_unwrapped_phase0__4_carry__3_i_1_n_0));
  LUT5 #(
    .INIT(32'hD40000D4)) 
    next_unwrapped_phase0__4_carry__3_i_2
       (.I0(next_unwrapped_phase1),
        .I1(phase_diff_carry__1_n_4),
        .I2(Q[14]),
        .I3(Q[15]),
        .I4(phase_diff_carry__2_n_7),
        .O(next_unwrapped_phase0__4_carry__3_i_2_n_0));
  LUT6 #(
    .INIT(64'h111F0001EEE0FFFE)) 
    next_unwrapped_phase0__4_carry__3_i_3
       (.I0(phase_diff_carry__2_n_6),
        .I1(Q[16]),
        .I2(next_unwrapped_phase1),
        .I3(next_unwrapped_phase2),
        .I4(next_unwrapped_phase0__4_carry__3_i_6_n_0),
        .I5(next_unwrapped_phase0__4_carry__3_i_7_n_0),
        .O(next_unwrapped_phase0__4_carry__3_i_3_n_0));
  LUT5 #(
    .INIT(32'h696969AA)) 
    next_unwrapped_phase0__4_carry__3_i_4
       (.I0(next_unwrapped_phase0__4_carry__3_i_1_n_0),
        .I1(phase_diff_carry__2_n_6),
        .I2(Q[16]),
        .I3(phase_diff_carry__2_n_7),
        .I4(Q[15]),
        .O(next_unwrapped_phase0__4_carry__3_i_4_n_0));
  LUT5 #(
    .INIT(32'h96969669)) 
    next_unwrapped_phase0__4_carry__3_i_5
       (.I0(next_unwrapped_phase0__4_carry__3_i_2_n_0),
        .I1(phase_diff_carry__2_n_6),
        .I2(Q[16]),
        .I3(phase_diff_carry__2_n_7),
        .I4(Q[15]),
        .O(next_unwrapped_phase0__4_carry__3_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    next_unwrapped_phase0__4_carry__3_i_6
       (.I0(phase_diff_carry__2_n_5),
        .I1(Q[17]),
        .O(next_unwrapped_phase0__4_carry__3_i_6_n_0));
  LUT6 #(
    .INIT(64'h4BB44BB44BB4B44B)) 
    next_unwrapped_phase0__4_carry__3_i_7
       (.I0(next_unwrapped_phase1),
        .I1(next_unwrapped_phase2),
        .I2(phase_diff_carry__2_n_4),
        .I3(Q[18]),
        .I4(Q[17]),
        .I5(phase_diff_carry__2_n_5),
        .O(next_unwrapped_phase0__4_carry__3_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    next_unwrapped_phase0__4_carry_i_1
       (.I0(phase_diff_carry_n_7),
        .I1(Q[3]),
        .O(next_unwrapped_phase0__4_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h6966)) 
    next_unwrapped_phase0__4_carry_i_2
       (.I0(Q[3]),
        .I1(phase_diff_carry_n_7),
        .I2(next_unwrapped_phase1),
        .I3(next_unwrapped_phase2),
        .O(next_unwrapped_phase0__4_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    next_unwrapped_phase0__4_carry_i_3
       (.I0(next_unwrapped_phase1),
        .I1(next_unwrapped_phase2),
        .I2(Q[2]),
        .O(next_unwrapped_phase0__4_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    next_unwrapped_phase0__4_carry_i_4
       (.I0(next_unwrapped_phase1),
        .I1(next_unwrapped_phase2),
        .I2(Q[1]),
        .O(next_unwrapped_phase0__4_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h1E)) 
    next_unwrapped_phase0__4_carry_i_5
       (.I0(next_unwrapped_phase1),
        .I1(next_unwrapped_phase2),
        .I2(Q[0]),
        .O(next_unwrapped_phase0__4_carry_i_5_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 next_unwrapped_phase1_carry
       (.CI(1'b0),
        .CO({next_unwrapped_phase1_carry_n_0,next_unwrapped_phase1_carry_n_1,next_unwrapped_phase1_carry_n_2,next_unwrapped_phase1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({next_unwrapped_phase1_carry_i_1_n_0,next_unwrapped_phase1_carry_i_2_n_0,next_unwrapped_phase1_carry_i_3_n_0,next_unwrapped_phase1_carry_i_4_n_0}),
        .O(NLW_next_unwrapped_phase1_carry_O_UNCONNECTED[3:0]),
        .S({next_unwrapped_phase1_carry_i_5_n_0,next_unwrapped_phase1_carry_i_6_n_0,next_unwrapped_phase1_carry_i_7_n_0,next_unwrapped_phase1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 next_unwrapped_phase1_carry__0
       (.CI(next_unwrapped_phase1_carry_n_0),
        .CO({next_unwrapped_phase1_carry__0_n_0,next_unwrapped_phase1_carry__0_n_1,next_unwrapped_phase1_carry__0_n_2,next_unwrapped_phase1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({phase_diff_carry__2_n_4,next_unwrapped_phase1_carry__0_i_1_n_0,phase_diff_carry__1_n_4,next_unwrapped_phase1_carry__0_i_2_n_0}),
        .O(NLW_next_unwrapped_phase1_carry__0_O_UNCONNECTED[3:0]),
        .S({next_unwrapped_phase1_carry__0_i_3_n_0,next_unwrapped_phase1_carry__0_i_4_n_0,next_unwrapped_phase1_carry__0_i_5_n_0,next_unwrapped_phase1_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    next_unwrapped_phase1_carry__0_i_1
       (.I0(phase_diff_carry__2_n_7),
        .I1(phase_diff_carry__2_n_6),
        .O(next_unwrapped_phase1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    next_unwrapped_phase1_carry__0_i_2
       (.I0(phase_diff_carry__1_n_7),
        .I1(phase_diff_carry__1_n_6),
        .O(next_unwrapped_phase1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    next_unwrapped_phase1_carry__0_i_3
       (.I0(phase_diff_carry__2_n_5),
        .I1(phase_diff_carry__2_n_4),
        .O(next_unwrapped_phase1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    next_unwrapped_phase1_carry__0_i_4
       (.I0(phase_diff_carry__2_n_6),
        .I1(phase_diff_carry__2_n_7),
        .O(next_unwrapped_phase1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    next_unwrapped_phase1_carry__0_i_5
       (.I0(phase_diff_carry__1_n_5),
        .I1(phase_diff_carry__1_n_4),
        .O(next_unwrapped_phase1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    next_unwrapped_phase1_carry__0_i_6
       (.I0(phase_diff_carry__1_n_7),
        .I1(phase_diff_carry__1_n_6),
        .O(next_unwrapped_phase1_carry__0_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 next_unwrapped_phase1_carry__1
       (.CI(next_unwrapped_phase1_carry__0_n_0),
        .CO({NLW_next_unwrapped_phase1_carry__1_CO_UNCONNECTED[3:1],next_unwrapped_phase1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_next_unwrapped_phase1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,next_unwrapped_phase1_carry__1_i_1_n_3}));
  CARRY4 next_unwrapped_phase1_carry__1_i_1
       (.CI(phase_diff_carry__2_n_0),
        .CO({NLW_next_unwrapped_phase1_carry__1_i_1_CO_UNCONNECTED[3:1],next_unwrapped_phase1_carry__1_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_next_unwrapped_phase1_carry__1_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h8)) 
    next_unwrapped_phase1_carry_i_1
       (.I0(phase_diff_carry__0_n_5),
        .I1(phase_diff_carry__0_n_4),
        .O(next_unwrapped_phase1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    next_unwrapped_phase1_carry_i_2
       (.I0(phase_diff_carry__0_n_7),
        .I1(phase_diff_carry__0_n_6),
        .O(next_unwrapped_phase1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    next_unwrapped_phase1_carry_i_3
       (.I0(phase_diff_carry_n_5),
        .I1(phase_diff_carry_n_4),
        .O(next_unwrapped_phase1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    next_unwrapped_phase1_carry_i_4
       (.I0(phase_diff_carry_n_7),
        .I1(phase_diff_carry_n_6),
        .O(next_unwrapped_phase1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    next_unwrapped_phase1_carry_i_5
       (.I0(phase_diff_carry__0_n_4),
        .I1(phase_diff_carry__0_n_5),
        .O(next_unwrapped_phase1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    next_unwrapped_phase1_carry_i_6
       (.I0(phase_diff_carry__0_n_7),
        .I1(phase_diff_carry__0_n_6),
        .O(next_unwrapped_phase1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    next_unwrapped_phase1_carry_i_7
       (.I0(phase_diff_carry_n_4),
        .I1(phase_diff_carry_n_5),
        .O(next_unwrapped_phase1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    next_unwrapped_phase1_carry_i_8
       (.I0(phase_diff_carry_n_7),
        .I1(phase_diff_carry_n_6),
        .O(next_unwrapped_phase1_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 next_unwrapped_phase2_carry
       (.CI(1'b0),
        .CO({next_unwrapped_phase2_carry_n_0,next_unwrapped_phase2_carry_n_1,next_unwrapped_phase2_carry_n_2,next_unwrapped_phase2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({next_unwrapped_phase2_carry_i_1_n_0,next_unwrapped_phase2_carry_i_2_n_0,next_unwrapped_phase2_carry_i_3_n_0,next_unwrapped_phase2_carry_i_4_n_0}),
        .O(NLW_next_unwrapped_phase2_carry_O_UNCONNECTED[3:0]),
        .S({next_unwrapped_phase2_carry_i_5_n_0,next_unwrapped_phase2_carry_i_6_n_0,next_unwrapped_phase2_carry_i_7_n_0,next_unwrapped_phase2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 next_unwrapped_phase2_carry__0
       (.CI(next_unwrapped_phase2_carry_n_0),
        .CO({next_unwrapped_phase2,next_unwrapped_phase2_carry__0_n_1,next_unwrapped_phase2_carry__0_n_2,next_unwrapped_phase2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,next_unwrapped_phase2_carry__0_i_1_n_0,next_unwrapped_phase2_carry__0_i_2_n_0,next_unwrapped_phase2_carry__0_i_3_n_0}),
        .O(NLW_next_unwrapped_phase2_carry__0_O_UNCONNECTED[3:0]),
        .S({phase_diff_scaled0,next_unwrapped_phase2_carry__0_i_5_n_0,next_unwrapped_phase2_carry__0_i_6_n_0,next_unwrapped_phase2_carry__0_i_7_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    next_unwrapped_phase2_carry__0_i_1
       (.I0(phase_diff_carry__2_n_4),
        .O(next_unwrapped_phase2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    next_unwrapped_phase2_carry__0_i_2
       (.I0(phase_diff_carry__2_n_7),
        .I1(phase_diff_carry__2_n_6),
        .O(next_unwrapped_phase2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_unwrapped_phase2_carry__0_i_3
       (.I0(phase_diff_carry__1_n_4),
        .O(next_unwrapped_phase2_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_unwrapped_phase2_carry__0_i_4
       (.I0(next_unwrapped_phase1_carry__1_i_1_n_3),
        .O(phase_diff_scaled0));
  LUT2 #(
    .INIT(4'h2)) 
    next_unwrapped_phase2_carry__0_i_5
       (.I0(phase_diff_carry__2_n_4),
        .I1(phase_diff_carry__2_n_5),
        .O(next_unwrapped_phase2_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    next_unwrapped_phase2_carry__0_i_6
       (.I0(phase_diff_carry__2_n_7),
        .I1(phase_diff_carry__2_n_6),
        .O(next_unwrapped_phase2_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    next_unwrapped_phase2_carry__0_i_7
       (.I0(phase_diff_carry__1_n_4),
        .I1(phase_diff_carry__1_n_5),
        .O(next_unwrapped_phase2_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    next_unwrapped_phase2_carry_i_1
       (.I0(phase_diff_carry__1_n_7),
        .I1(phase_diff_carry__1_n_6),
        .O(next_unwrapped_phase2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    next_unwrapped_phase2_carry_i_2
       (.I0(phase_diff_carry__0_n_5),
        .I1(phase_diff_carry__0_n_4),
        .O(next_unwrapped_phase2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    next_unwrapped_phase2_carry_i_3
       (.I0(phase_diff_carry__0_n_7),
        .I1(phase_diff_carry__0_n_6),
        .O(next_unwrapped_phase2_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_unwrapped_phase2_carry_i_4
       (.I0(phase_diff_carry_n_4),
        .O(next_unwrapped_phase2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    next_unwrapped_phase2_carry_i_5
       (.I0(phase_diff_carry__1_n_7),
        .I1(phase_diff_carry__1_n_6),
        .O(next_unwrapped_phase2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    next_unwrapped_phase2_carry_i_6
       (.I0(phase_diff_carry__0_n_5),
        .I1(phase_diff_carry__0_n_4),
        .O(next_unwrapped_phase2_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    next_unwrapped_phase2_carry_i_7
       (.I0(phase_diff_carry__0_n_7),
        .I1(phase_diff_carry__0_n_6),
        .O(next_unwrapped_phase2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    next_unwrapped_phase2_carry_i_8
       (.I0(phase_diff_carry_n_4),
        .I1(phase_diff_carry_n_5),
        .O(next_unwrapped_phase2_carry_i_8_n_0));
  CARRY4 phase_diff_carry
       (.CI(1'b0),
        .CO({phase_diff_carry_n_0,phase_diff_carry_n_1,phase_diff_carry_n_2,phase_diff_carry_n_3}),
        .CYINIT(1'b1),
        .DI(D[3:0]),
        .O({phase_diff_carry_n_4,phase_diff_carry_n_5,phase_diff_carry_n_6,phase_diff_carry_n_7}),
        .S({phase_diff_carry_i_1_n_0,phase_diff_carry_i_2_n_0,phase_diff_carry_i_3_n_0,phase_diff_carry_i_4_n_0}));
  CARRY4 phase_diff_carry__0
       (.CI(phase_diff_carry_n_0),
        .CO({phase_diff_carry__0_n_0,phase_diff_carry__0_n_1,phase_diff_carry__0_n_2,phase_diff_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(D[7:4]),
        .O({phase_diff_carry__0_n_4,phase_diff_carry__0_n_5,phase_diff_carry__0_n_6,phase_diff_carry__0_n_7}),
        .S({phase_diff_carry__0_i_1_n_0,phase_diff_carry__0_i_2_n_0,phase_diff_carry__0_i_3_n_0,phase_diff_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    phase_diff_carry__0_i_1
       (.I0(D[7]),
        .I1(prev_phase[7]),
        .O(phase_diff_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase_diff_carry__0_i_2
       (.I0(D[6]),
        .I1(prev_phase[6]),
        .O(phase_diff_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase_diff_carry__0_i_3
       (.I0(D[5]),
        .I1(prev_phase[5]),
        .O(phase_diff_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase_diff_carry__0_i_4
       (.I0(D[4]),
        .I1(prev_phase[4]),
        .O(phase_diff_carry__0_i_4_n_0));
  CARRY4 phase_diff_carry__1
       (.CI(phase_diff_carry__0_n_0),
        .CO({phase_diff_carry__1_n_0,phase_diff_carry__1_n_1,phase_diff_carry__1_n_2,phase_diff_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(D[11:8]),
        .O({phase_diff_carry__1_n_4,phase_diff_carry__1_n_5,phase_diff_carry__1_n_6,phase_diff_carry__1_n_7}),
        .S({phase_diff_carry__1_i_1_n_0,phase_diff_carry__1_i_2_n_0,phase_diff_carry__1_i_3_n_0,phase_diff_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    phase_diff_carry__1_i_1
       (.I0(D[11]),
        .I1(prev_phase[11]),
        .O(phase_diff_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase_diff_carry__1_i_2
       (.I0(D[10]),
        .I1(prev_phase[10]),
        .O(phase_diff_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase_diff_carry__1_i_3
       (.I0(D[9]),
        .I1(prev_phase[9]),
        .O(phase_diff_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase_diff_carry__1_i_4
       (.I0(D[8]),
        .I1(prev_phase[8]),
        .O(phase_diff_carry__1_i_4_n_0));
  CARRY4 phase_diff_carry__2
       (.CI(phase_diff_carry__1_n_0),
        .CO({phase_diff_carry__2_n_0,phase_diff_carry__2_n_1,phase_diff_carry__2_n_2,phase_diff_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({prev_phase[15],D[14:12]}),
        .O({phase_diff_carry__2_n_4,phase_diff_carry__2_n_5,phase_diff_carry__2_n_6,phase_diff_carry__2_n_7}),
        .S({phase_diff_carry__2_i_1_n_0,phase_diff_carry__2_i_2_n_0,phase_diff_carry__2_i_3_n_0,phase_diff_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    phase_diff_carry__2_i_1
       (.I0(D[15]),
        .I1(prev_phase[15]),
        .O(phase_diff_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase_diff_carry__2_i_2
       (.I0(D[14]),
        .I1(prev_phase[14]),
        .O(phase_diff_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase_diff_carry__2_i_3
       (.I0(D[13]),
        .I1(prev_phase[13]),
        .O(phase_diff_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase_diff_carry__2_i_4
       (.I0(D[12]),
        .I1(prev_phase[12]),
        .O(phase_diff_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase_diff_carry_i_1
       (.I0(D[3]),
        .I1(prev_phase[3]),
        .O(phase_diff_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase_diff_carry_i_2
       (.I0(D[2]),
        .I1(prev_phase[2]),
        .O(phase_diff_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase_diff_carry_i_3
       (.I0(D[1]),
        .I1(prev_phase[1]),
        .O(phase_diff_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase_diff_carry_i_4
       (.I0(D[0]),
        .I1(prev_phase[0]),
        .O(phase_diff_carry_i_4_n_0));
  FDCE \prev_phase_reg[0] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(D[0]),
        .Q(prev_phase[0]));
  FDCE \prev_phase_reg[10] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(D[10]),
        .Q(prev_phase[10]));
  FDCE \prev_phase_reg[11] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(D[11]),
        .Q(prev_phase[11]));
  FDCE \prev_phase_reg[12] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(D[12]),
        .Q(prev_phase[12]));
  FDCE \prev_phase_reg[13] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(D[13]),
        .Q(prev_phase[13]));
  FDCE \prev_phase_reg[14] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(D[14]),
        .Q(prev_phase[14]));
  FDCE \prev_phase_reg[15] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(D[15]),
        .Q(prev_phase[15]));
  FDCE \prev_phase_reg[1] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(D[1]),
        .Q(prev_phase[1]));
  FDCE \prev_phase_reg[2] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(D[2]),
        .Q(prev_phase[2]));
  FDCE \prev_phase_reg[3] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(D[3]),
        .Q(prev_phase[3]));
  FDCE \prev_phase_reg[4] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(D[4]),
        .Q(prev_phase[4]));
  FDCE \prev_phase_reg[5] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(D[5]),
        .Q(prev_phase[5]));
  FDCE \prev_phase_reg[6] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(D[6]),
        .Q(prev_phase[6]));
  FDCE \prev_phase_reg[7] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(D[7]),
        .Q(prev_phase[7]));
  FDCE \prev_phase_reg[8] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(D[8]),
        .Q(prev_phase[8]));
  FDCE \prev_phase_reg[9] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(D[9]),
        .Q(prev_phase[9]));
  FDCE \unwrapped_phase_reg[0] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(next_unwrapped_phase0__4_carry_n_7),
        .Q(Q[0]));
  FDCE \unwrapped_phase_reg[10] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(next_unwrapped_phase0__4_carry__1_n_5),
        .Q(Q[10]));
  FDCE \unwrapped_phase_reg[11] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(next_unwrapped_phase0__4_carry__1_n_4),
        .Q(Q[11]));
  FDCE \unwrapped_phase_reg[12] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(next_unwrapped_phase0__4_carry__2_n_7),
        .Q(Q[12]));
  FDCE \unwrapped_phase_reg[13] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(next_unwrapped_phase0__4_carry__2_n_6),
        .Q(Q[13]));
  FDCE \unwrapped_phase_reg[14] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(next_unwrapped_phase0__4_carry__2_n_5),
        .Q(Q[14]));
  FDCE \unwrapped_phase_reg[15] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(next_unwrapped_phase0__4_carry__2_n_4),
        .Q(Q[15]));
  FDCE \unwrapped_phase_reg[16] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(next_unwrapped_phase0__4_carry__3_n_7),
        .Q(Q[16]));
  FDCE \unwrapped_phase_reg[17] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(next_unwrapped_phase0__4_carry__3_n_6),
        .Q(Q[17]));
  FDCE \unwrapped_phase_reg[18] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(next_unwrapped_phase0__4_carry__3_n_5),
        .Q(Q[18]));
  FDCE \unwrapped_phase_reg[1] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(next_unwrapped_phase0__4_carry_n_6),
        .Q(Q[1]));
  FDCE \unwrapped_phase_reg[2] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(next_unwrapped_phase0__4_carry_n_5),
        .Q(Q[2]));
  FDCE \unwrapped_phase_reg[3] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(next_unwrapped_phase0__4_carry_n_4),
        .Q(Q[3]));
  FDCE \unwrapped_phase_reg[4] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(next_unwrapped_phase0__4_carry__0_n_7),
        .Q(Q[4]));
  FDCE \unwrapped_phase_reg[5] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(next_unwrapped_phase0__4_carry__0_n_6),
        .Q(Q[5]));
  FDCE \unwrapped_phase_reg[6] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(next_unwrapped_phase0__4_carry__0_n_5),
        .Q(Q[6]));
  FDCE \unwrapped_phase_reg[7] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(next_unwrapped_phase0__4_carry__0_n_4),
        .Q(Q[7]));
  FDCE \unwrapped_phase_reg[8] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(next_unwrapped_phase0__4_carry__1_n_7),
        .Q(Q[8]));
  FDCE \unwrapped_phase_reg[9] 
       (.C(clk),
        .CE(unwrapped_phase_tvalid_reg_0),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(next_unwrapped_phase0__4_carry__1_n_6),
        .Q(Q[9]));
  FDCE unwrapped_phase_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\prev_phase_reg[0]_0 ),
        .D(unwrapped_phase_tvalid_reg_0),
        .Q(E));
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
