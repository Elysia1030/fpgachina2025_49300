// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri Nov  7 16:36:36 2025
// Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/elysia/Software/Xilinx/Project/11-6V3/2023D_lwx.gen/sources_1/bd/design_1/ip/design_1_DAC_904_0_0/design_1_DAC_904_0_0_stub.v
// Design      : design_1_DAC_904_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_DAC_904_0_0,DAC_904,{}" *) (* CORE_GENERATION_INFO = "design_1_DAC_904_0_0,DAC_904,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=DAC_904,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "DAC_904,Vivado 2024.2" *) 
module design_1_DAC_904_0_0(DAC_clk, aresetn, data_tc16, dac_data, 
  dac_clk_out)
/* synthesis syn_black_box black_box_pad_pin="aresetn,data_tc16[15:0],dac_data[13:0],dac_clk_out" */
/* synthesis syn_force_seq_prim="DAC_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 DAC_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DAC_clk, ASSOCIATED_RESET aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input DAC_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input [15:0]data_tc16;
  output [13:0]dac_data;
  output dac_clk_out;
endmodule
