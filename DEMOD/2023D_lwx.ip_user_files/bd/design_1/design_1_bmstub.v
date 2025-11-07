// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module design_1 (
  FIXED_IO_0_mio,
  FIXED_IO_0_ddr_vrn,
  FIXED_IO_0_ddr_vrp,
  FIXED_IO_0_ps_srstb,
  FIXED_IO_0_ps_clk,
  FIXED_IO_0_ps_porb,
  DDR_0_cas_n,
  DDR_0_cke,
  DDR_0_ck_n,
  DDR_0_ck_p,
  DDR_0_cs_n,
  DDR_0_reset_n,
  DDR_0_odt,
  DDR_0_ras_n,
  DDR_0_we_n,
  DDR_0_ba,
  DDR_0_addr,
  DDR_0_dm,
  DDR_0_dq,
  DDR_0_dqs_n,
  DDR_0_dqs_p,
  UART_0_0_txd,
  UART_0_0_rxd,
  UART_1_0_txd,
  UART_1_0_rxd,
  i_adc_data,
  adc_clk,
  dac_clk_out,
  dac_data_out
);

  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 MIO" *)
  (* X_INTERFACE_MODE = "master FIXED_IO_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO_0, CAN_DEBUG false" *)
  inout [53:0]FIXED_IO_0_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 DDR_VRN" *)
  inout FIXED_IO_0_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 DDR_VRP" *)
  inout FIXED_IO_0_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_SRSTB" *)
  inout FIXED_IO_0_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_CLK" *)
  inout FIXED_IO_0_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_PORB" *)
  inout FIXED_IO_0_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CAS_N" *)
  (* X_INTERFACE_MODE = "master DDR_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR_0, CAN_DEBUG false, TIMEPERIOD_PS 1250, MEMORY_TYPE COMPONENTS, DATA_WIDTH 8, CS_ENABLED true, DATA_MASK_ENABLED true, SLOT Single, MEM_ADDR_MAP ROW_COLUMN_BANK, BURST_LENGTH 8, AXI_ARBITRATION_SCHEME TDM, CAS_LATENCY 11, CAS_WRITE_LATENCY 11" *)
  inout DDR_0_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CKE" *)
  inout DDR_0_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CK_N" *)
  inout DDR_0_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CK_P" *)
  inout DDR_0_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CS_N" *)
  inout DDR_0_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 RESET_N" *)
  inout DDR_0_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 ODT" *)
  inout DDR_0_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 RAS_N" *)
  inout DDR_0_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 WE_N" *)
  inout DDR_0_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 BA" *)
  inout [2:0]DDR_0_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 ADDR" *)
  inout [14:0]DDR_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 DM" *)
  inout [3:0]DDR_0_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 DQ" *)
  inout [31:0]DDR_0_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 DQS_N" *)
  inout [3:0]DDR_0_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 DQS_P" *)
  inout [3:0]DDR_0_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_0_0 TxD" *)
  (* X_INTERFACE_MODE = "master UART_0_0" *)
  output UART_0_0_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_0_0 RxD" *)
  input UART_0_0_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_1_0 TxD" *)
  (* X_INTERFACE_MODE = "master UART_1_0" *)
  output UART_1_0_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_1_0 RxD" *)
  input UART_1_0_rxd;
  (* X_INTERFACE_IGNORE = "true" *)
  input [9:0]i_adc_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ADC_CLK CLK" *)
  (* X_INTERFACE_MODE = "master CLK.ADC_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ADC_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_ADC_3PA1030_0_1_o_adc_clk, INSERT_VIP 0" *)
  output adc_clk;
  (* X_INTERFACE_IGNORE = "true" *)
  output dac_clk_out;
  (* X_INTERFACE_IGNORE = "true" *)
  output [13:0]dac_data_out;

  // stub module has no contents

endmodule
