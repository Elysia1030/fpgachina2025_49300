-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Thu Nov  6 16:34:02 2025
-- Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/elysia/Software/Xilinx/Project/11-6/2023D_lwx.gen/sources_1/bd/design_1/ip/design_1_ASK_DM_0_2/design_1_ASK_DM_0_2_sim_netlist.vhdl
-- Design      : design_1_ASK_DM_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ASK_DM_0_2_ASK_DM is
  port (
    rst_n : in STD_LOGIC;
    clk : in STD_LOGIC;
    iq_tvalid : in STD_LOGIC;
    am_data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    am_data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ASK_DM_0_2_ASK_DM : entity is "ASK_DM";
end design_1_ASK_DM_0_2_ASK_DM;

architecture STRUCTURE of design_1_ASK_DM_0_2_ASK_DM is
  component design_1_ASK_DM_0_2_cordic_ask is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_ASK_DM_0_2_cordic_ask;
  signal NLW_cordic_ask_inst_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_cordic_ask_inst_m_axis_dout_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cordic_ask_inst : label is "cordic_ask,cordic_v6_0_23,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of cordic_ask_inst : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of cordic_ask_inst : label is "cordic_v6_0_23,Vivado 2024.2";
begin
cordic_ask_inst: component design_1_ASK_DM_0_2_cordic_ask
     port map (
      aclk => clk,
      aresetn => rst_n,
      m_axis_dout_tdata(31 downto 16) => NLW_cordic_ask_inst_m_axis_dout_tdata_UNCONNECTED(31 downto 16),
      m_axis_dout_tdata(15 downto 0) => am_data_out(15 downto 0),
      m_axis_dout_tvalid => NLW_cordic_ask_inst_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_cartesian_tdata(31 downto 0) => am_data_in(31 downto 0),
      s_axis_cartesian_tvalid => iq_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ASK_DM_0_2 is
  port (
    rst_n : in STD_LOGIC;
    clk : in STD_LOGIC;
    iq_tvalid : in STD_LOGIC;
    am_data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    am_data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ASK_DM_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ASK_DM_0_2 : entity is "design_1_ASK_DM_0_2,ASK_DM,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_ASK_DM_0_2 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_ASK_DM_0_2 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_ASK_DM_0_2 : entity is "ASK_DM,Vivado 2024.2";
end design_1_ASK_DM_0_2;

architecture STRUCTURE of design_1_ASK_DM_0_2 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_MODE of rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_ASK_DM_0_2_ASK_DM
     port map (
      am_data_in(31 downto 0) => am_data_in(31 downto 0),
      am_data_out(15 downto 0) => am_data_out(15 downto 0),
      clk => clk,
      iq_tvalid => iq_tvalid,
      rst_n => rst_n
    );
end STRUCTURE;
