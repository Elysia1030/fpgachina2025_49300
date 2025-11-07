-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Thu Nov  6 16:33:13 2025
-- Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/elysia/Software/Xilinx/Project/11-6/2023D_lwx.gen/sources_1/bd/design_1/ip/design_1_ADC_3PA1030_0_1/design_1_ADC_3PA1030_0_1_stub.vhdl
-- Design      : design_1_ADC_3PA1030_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ADC_3PA1030_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    i_adc_data : in STD_LOGIC_VECTOR ( 9 downto 0 );
    o_adc_clk : out STD_LOGIC;
    o_adc_data : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ADC_3PA1030_0_1 : entity is "design_1_ADC_3PA1030_0_1,ADC_3PA1030,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1_ADC_3PA1030_0_1 : entity is "design_1_ADC_3PA1030_0_1,ADC_3PA1030,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ADC_3PA1030,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,ADC_BITS=10,OUT_BITS=16}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_ADC_3PA1030_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_ADC_3PA1030_0_1 : entity is "module_ref";
end design_1_ADC_3PA1030_0_1;

architecture stub of design_1_ADC_3PA1030_0_1 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,aresetn,i_adc_data[9:0],o_adc_clk,o_adc_data[15:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of o_adc_clk : signal is "xilinx.com:signal:clock:1.0 o_adc_clk CLK";
  attribute X_INTERFACE_MODE of o_adc_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of o_adc_clk : signal is "XIL_INTERFACENAME o_adc_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_ADC_3PA1030_0_1_o_adc_clk, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "ADC_3PA1030,Vivado 2024.2";
begin
end;
