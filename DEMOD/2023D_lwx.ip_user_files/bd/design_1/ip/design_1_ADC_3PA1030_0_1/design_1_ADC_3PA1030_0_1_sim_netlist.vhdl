-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Thu Nov  6 16:33:13 2025
-- Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/elysia/Software/Xilinx/Project/11-6/2023D_lwx.gen/sources_1/bd/design_1/ip/design_1_ADC_3PA1030_0_1/design_1_ADC_3PA1030_0_1_sim_netlist.vhdl
-- Design      : design_1_ADC_3PA1030_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ADC_3PA1030_0_1_ADC_3PA1030 is
  port (
    o_adc_data : out STD_LOGIC_VECTOR ( 9 downto 0 );
    aresetn : in STD_LOGIC;
    i_adc_data : in STD_LOGIC_VECTOR ( 9 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ADC_3PA1030_0_1_ADC_3PA1030 : entity is "ADC_3PA1030";
end design_1_ADC_3PA1030_0_1_ADC_3PA1030;

architecture STRUCTURE of design_1_ADC_3PA1030_0_1_ADC_3PA1030 is
  signal r_adc_data_d1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_data_out_q[15]_i_2_n_0\ : STD_LOGIC;
  signal w_offset_corrected : STD_LOGIC_VECTOR ( 9 to 9 );
begin
\r_adc_data_d1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \r_data_out_q[15]_i_2_n_0\,
      D => i_adc_data(0),
      Q => r_adc_data_d1(0)
    );
\r_adc_data_d1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \r_data_out_q[15]_i_2_n_0\,
      D => i_adc_data(1),
      Q => r_adc_data_d1(1)
    );
\r_adc_data_d1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \r_data_out_q[15]_i_2_n_0\,
      D => i_adc_data(2),
      Q => r_adc_data_d1(2)
    );
\r_adc_data_d1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \r_data_out_q[15]_i_2_n_0\,
      D => i_adc_data(3),
      Q => r_adc_data_d1(3)
    );
\r_adc_data_d1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \r_data_out_q[15]_i_2_n_0\,
      D => i_adc_data(4),
      Q => r_adc_data_d1(4)
    );
\r_adc_data_d1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \r_data_out_q[15]_i_2_n_0\,
      D => i_adc_data(5),
      Q => r_adc_data_d1(5)
    );
\r_adc_data_d1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \r_data_out_q[15]_i_2_n_0\,
      D => i_adc_data(6),
      Q => r_adc_data_d1(6)
    );
\r_adc_data_d1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \r_data_out_q[15]_i_2_n_0\,
      D => i_adc_data(7),
      Q => r_adc_data_d1(7)
    );
\r_adc_data_d1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \r_data_out_q[15]_i_2_n_0\,
      D => i_adc_data(8),
      Q => r_adc_data_d1(8)
    );
\r_adc_data_d1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \r_data_out_q[15]_i_2_n_0\,
      D => i_adc_data(9),
      Q => r_adc_data_d1(9)
    );
\r_data_out_q[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_adc_data_d1(9),
      O => w_offset_corrected(9)
    );
\r_data_out_q[15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \r_data_out_q[15]_i_2_n_0\
    );
\r_data_out_q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \r_data_out_q[15]_i_2_n_0\,
      D => r_adc_data_d1(4),
      Q => o_adc_data(4)
    );
\r_data_out_q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \r_data_out_q[15]_i_2_n_0\,
      D => r_adc_data_d1(5),
      Q => o_adc_data(5)
    );
\r_data_out_q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \r_data_out_q[15]_i_2_n_0\,
      D => r_adc_data_d1(6),
      Q => o_adc_data(6)
    );
\r_data_out_q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \r_data_out_q[15]_i_2_n_0\,
      D => r_adc_data_d1(7),
      Q => o_adc_data(7)
    );
\r_data_out_q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \r_data_out_q[15]_i_2_n_0\,
      D => r_adc_data_d1(8),
      Q => o_adc_data(8)
    );
\r_data_out_q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \r_data_out_q[15]_i_2_n_0\,
      D => w_offset_corrected(9),
      Q => o_adc_data(9)
    );
\r_data_out_q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \r_data_out_q[15]_i_2_n_0\,
      D => r_adc_data_d1(0),
      Q => o_adc_data(0)
    );
\r_data_out_q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \r_data_out_q[15]_i_2_n_0\,
      D => r_adc_data_d1(1),
      Q => o_adc_data(1)
    );
\r_data_out_q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \r_data_out_q[15]_i_2_n_0\,
      D => r_adc_data_d1(2),
      Q => o_adc_data(2)
    );
\r_data_out_q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \r_data_out_q[15]_i_2_n_0\,
      D => r_adc_data_d1(3),
      Q => o_adc_data(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ADC_3PA1030_0_1 is
  port (
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    i_adc_data : in STD_LOGIC_VECTOR ( 9 downto 0 );
    o_adc_clk : out STD_LOGIC;
    o_adc_data : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ADC_3PA1030_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ADC_3PA1030_0_1 : entity is "design_1_ADC_3PA1030_0_1,ADC_3PA1030,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_ADC_3PA1030_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_ADC_3PA1030_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_ADC_3PA1030_0_1 : entity is "ADC_3PA1030,Vivado 2024.2";
end design_1_ADC_3PA1030_0_1;

architecture STRUCTURE of design_1_ADC_3PA1030_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \^o_adc_data\ : STD_LOGIC_VECTOR ( 15 downto 6 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of o_adc_clk : signal is "xilinx.com:signal:clock:1.0 o_adc_clk CLK";
  attribute X_INTERFACE_MODE of o_adc_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of o_adc_clk : signal is "XIL_INTERFACENAME o_adc_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_ADC_3PA1030_0_1_o_adc_clk, INSERT_VIP 0";
begin
  o_adc_data(15 downto 6) <= \^o_adc_data\(15 downto 6);
  o_adc_data(5) <= \<const0>\;
  o_adc_data(4) <= \<const0>\;
  o_adc_data(3) <= \<const0>\;
  o_adc_data(2) <= \<const0>\;
  o_adc_data(1) <= \<const0>\;
  o_adc_data(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_ADC_3PA1030_0_1_ADC_3PA1030
     port map (
      aresetn => aresetn,
      clk => clk,
      i_adc_data(9 downto 0) => i_adc_data(9 downto 0),
      o_adc_data(9 downto 0) => \^o_adc_data\(15 downto 6)
    );
o_adc_clk_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk,
      O => o_adc_clk
    );
end STRUCTURE;
