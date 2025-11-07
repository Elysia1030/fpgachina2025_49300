-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Fri Nov  7 10:08:04 2025
-- Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/elysia/Software/Xilinx/Project/11-6V3/2023D_lwx.gen/sources_1/bd/design_1/ip/design_1_waveform_measure_0_1/design_1_waveform_measure_0_1_stub.vhdl
-- Design      : design_1_waveform_measure_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_waveform_measure_0_1 is
  Port ( 
    sys_clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    v_max : out STD_LOGIC_VECTOR ( 15 downto 0 );
    v_min : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mean_square : out STD_LOGIC_VECTOR ( 31 downto 0 );
    period_sample_cnt : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_signal_dc_removed : out STD_LOGIC_VECTOR ( 15 downto 0 );
    measure_done : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_waveform_measure_0_1 : entity is "design_1_waveform_measure_0_1,waveform_measure,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1_waveform_measure_0_1 : entity is "design_1_waveform_measure_0_1,waveform_measure,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=waveform_measure,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,CLK_FREQ=50000000,DATA_WIDTH=16,SAMPLE_NUM_WIDTH=13,SAMPLE_RATE=1000000,FRE_DIV=50}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_waveform_measure_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_waveform_measure_0_1 : entity is "module_ref";
end design_1_waveform_measure_0_1;

architecture stub of design_1_waveform_measure_0_1 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "sys_clk,rst_n,data_in[15:0],v_max[15:0],v_min[15:0],mean_square[31:0],period_sample_cnt[15:0],o_signal_dc_removed[15:0],measure_done";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of sys_clk : signal is "xilinx.com:signal:clock:1.0 sys_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of sys_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of sys_clk : signal is "XIL_INTERFACENAME sys_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_MODE of rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "waveform_measure,Vivado 2024.2";
begin
end;
