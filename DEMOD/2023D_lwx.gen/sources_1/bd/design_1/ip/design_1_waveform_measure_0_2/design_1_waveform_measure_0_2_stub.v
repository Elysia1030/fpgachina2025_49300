// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri Nov  7 10:08:04 2025
// Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/elysia/Software/Xilinx/Project/11-6V3/2023D_lwx.gen/sources_1/bd/design_1/ip/design_1_waveform_measure_0_2/design_1_waveform_measure_0_2_stub.v
// Design      : design_1_waveform_measure_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_waveform_measure_0_2,waveform_measure,{}" *) (* CORE_GENERATION_INFO = "design_1_waveform_measure_0_2,waveform_measure,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=waveform_measure,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,CLK_FREQ=50000000,DATA_WIDTH=16,SAMPLE_NUM_WIDTH=13,SAMPLE_RATE=1000000,FRE_DIV=50}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "waveform_measure,Vivado 2024.2" *) 
module design_1_waveform_measure_0_2(sys_clk, rst_n, data_in, v_max, v_min, mean_square, 
  period_sample_cnt, o_signal_dc_removed, measure_done)
/* synthesis syn_black_box black_box_pad_pin="rst_n,data_in[15:0],v_max[15:0],v_min[15:0],mean_square[31:0],period_sample_cnt[15:0],o_signal_dc_removed[15:0],measure_done" */
/* synthesis syn_force_seq_prim="sys_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input sys_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [15:0]data_in;
  output [15:0]v_max;
  output [15:0]v_min;
  output [31:0]mean_square;
  output [15:0]period_sample_cnt;
  output [15:0]o_signal_dc_removed;
  output measure_done;
endmodule
