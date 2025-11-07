-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Fri Nov  7 16:36:37 2025
-- Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/elysia/Software/Xilinx/Project/11-6V3/2023D_lwx.gen/sources_1/bd/design_1/ip/design_1_DAC_904_0_0/design_1_DAC_904_0_0_sim_netlist.vhdl
-- Design      : design_1_DAC_904_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_DAC_904_0_0_DAC_904 is
  port (
    dac_clk_out : out STD_LOGIC;
    dac_data : out STD_LOGIC_VECTOR ( 12 downto 0 );
    DAC_clk : in STD_LOGIC;
    data_tc16 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_DAC_904_0_0_DAC_904 : entity is "DAC_904";
end design_1_DAC_904_0_0_DAC_904;

architecture STRUCTURE of design_1_DAC_904_0_0_DAC_904 is
  signal data_ob : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal data_ob0 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal \data_ob0__0_n_0\ : STD_LOGIC;
  signal \data_ob0__10_n_0\ : STD_LOGIC;
  signal \data_ob0__11_n_0\ : STD_LOGIC;
  signal \data_ob0__12_n_0\ : STD_LOGIC;
  signal \data_ob0__1_n_0\ : STD_LOGIC;
  signal \data_ob0__2_n_0\ : STD_LOGIC;
  signal \data_ob0__3_n_0\ : STD_LOGIC;
  signal \data_ob0__4_n_0\ : STD_LOGIC;
  signal \data_ob0__5_n_0\ : STD_LOGIC;
  signal \data_ob0__6_n_0\ : STD_LOGIC;
  signal \data_ob0__7_n_0\ : STD_LOGIC;
  signal \data_ob0__8_n_0\ : STD_LOGIC;
  signal \data_ob0__9_n_0\ : STD_LOGIC;
  signal data_ob1 : STD_LOGIC_VECTOR ( 12 downto 2 );
  signal \data_ob1__0\ : STD_LOGIC_VECTOR ( 13 to 13 );
  signal \data_ob1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \data_ob1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \data_ob1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \data_ob1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \data_ob1_carry__0_n_0\ : STD_LOGIC;
  signal \data_ob1_carry__0_n_1\ : STD_LOGIC;
  signal \data_ob1_carry__0_n_2\ : STD_LOGIC;
  signal \data_ob1_carry__0_n_3\ : STD_LOGIC;
  signal \data_ob1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \data_ob1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \data_ob1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \data_ob1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \data_ob1_carry__1_n_1\ : STD_LOGIC;
  signal \data_ob1_carry__1_n_2\ : STD_LOGIC;
  signal \data_ob1_carry__1_n_3\ : STD_LOGIC;
  signal data_ob1_carry_i_1_n_0 : STD_LOGIC;
  signal data_ob1_carry_i_2_n_0 : STD_LOGIC;
  signal data_ob1_carry_i_3_n_0 : STD_LOGIC;
  signal data_ob1_carry_n_0 : STD_LOGIC;
  signal data_ob1_carry_n_1 : STD_LOGIC;
  signal data_ob1_carry_n_2 : STD_LOGIC;
  signal data_ob1_carry_n_3 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \NLW_data_ob1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_u_oddr_clk_S_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of u_oddr_clk : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of u_oddr_clk : label is "MLO";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of u_oddr_clk : label is "FALSE";
begin
\data_ob0__0\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_tc16(12),
      Q => \data_ob0__0_n_0\,
      R => p_0_in
    );
\data_ob0__1\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_tc16(11),
      Q => \data_ob0__1_n_0\,
      R => p_0_in
    );
\data_ob0__10\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_tc16(2),
      Q => \data_ob0__10_n_0\,
      R => p_0_in
    );
\data_ob0__11\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_tc16(1),
      Q => \data_ob0__11_n_0\,
      R => p_0_in
    );
\data_ob0__12\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_tc16(0),
      Q => \data_ob0__12_n_0\,
      R => p_0_in
    );
\data_ob0__2\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_tc16(10),
      Q => \data_ob0__2_n_0\,
      R => p_0_in
    );
\data_ob0__3\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_tc16(9),
      Q => \data_ob0__3_n_0\,
      R => p_0_in
    );
\data_ob0__4\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_tc16(8),
      Q => \data_ob0__4_n_0\,
      R => p_0_in
    );
\data_ob0__5\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_tc16(7),
      Q => \data_ob0__5_n_0\,
      R => p_0_in
    );
\data_ob0__6\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_tc16(6),
      Q => \data_ob0__6_n_0\,
      R => p_0_in
    );
\data_ob0__7\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_tc16(5),
      Q => \data_ob0__7_n_0\,
      R => p_0_in
    );
\data_ob0__8\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_tc16(4),
      Q => \data_ob0__8_n_0\,
      R => p_0_in
    );
\data_ob0__9\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_tc16(3),
      Q => \data_ob0__9_n_0\,
      R => p_0_in
    );
data_ob1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => data_ob1_carry_n_0,
      CO(2) => data_ob1_carry_n_1,
      CO(1) => data_ob1_carry_n_2,
      CO(0) => data_ob1_carry_n_3,
      CYINIT => '0',
      DI(3) => \data_ob0__8_n_0\,
      DI(2) => \data_ob0__9_n_0\,
      DI(1) => \data_ob0__10_n_0\,
      DI(0) => '0',
      O(3 downto 0) => data_ob1(5 downto 2),
      S(3) => data_ob1_carry_i_1_n_0,
      S(2) => data_ob1_carry_i_2_n_0,
      S(1) => data_ob1_carry_i_3_n_0,
      S(0) => \data_ob0__11_n_0\
    );
\data_ob1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => data_ob1_carry_n_0,
      CO(3) => \data_ob1_carry__0_n_0\,
      CO(2) => \data_ob1_carry__0_n_1\,
      CO(1) => \data_ob1_carry__0_n_2\,
      CO(0) => \data_ob1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \data_ob0__4_n_0\,
      DI(2) => \data_ob0__5_n_0\,
      DI(1) => \data_ob0__6_n_0\,
      DI(0) => \data_ob0__7_n_0\,
      O(3 downto 0) => data_ob1(9 downto 6),
      S(3) => \data_ob1_carry__0_i_1_n_0\,
      S(2) => \data_ob1_carry__0_i_2_n_0\,
      S(1) => \data_ob1_carry__0_i_3_n_0\,
      S(0) => \data_ob1_carry__0_i_4_n_0\
    );
\data_ob1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_ob0__4_n_0\,
      I1 => \data_ob0__6_n_0\,
      O => \data_ob1_carry__0_i_1_n_0\
    );
\data_ob1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_ob0__5_n_0\,
      I1 => \data_ob0__7_n_0\,
      O => \data_ob1_carry__0_i_2_n_0\
    );
\data_ob1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_ob0__6_n_0\,
      I1 => \data_ob0__8_n_0\,
      O => \data_ob1_carry__0_i_3_n_0\
    );
\data_ob1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_ob0__7_n_0\,
      I1 => \data_ob0__9_n_0\,
      O => \data_ob1_carry__0_i_4_n_0\
    );
\data_ob1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_ob1_carry__0_n_0\,
      CO(3) => \NLW_data_ob1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \data_ob1_carry__1_n_1\,
      CO(1) => \data_ob1_carry__1_n_2\,
      CO(0) => \data_ob1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \data_ob0__1_n_0\,
      DI(1) => \data_ob0__2_n_0\,
      DI(0) => \data_ob0__3_n_0\,
      O(3) => \data_ob1__0\(13),
      O(2 downto 0) => data_ob1(12 downto 10),
      S(3) => \data_ob1_carry__1_i_1_n_0\,
      S(2) => \data_ob1_carry__1_i_2_n_0\,
      S(1) => \data_ob1_carry__1_i_3_n_0\,
      S(0) => \data_ob1_carry__1_i_4_n_0\
    );
\data_ob1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_ob0__0_n_0\,
      I1 => \data_ob0__2_n_0\,
      O => \data_ob1_carry__1_i_1_n_0\
    );
\data_ob1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_ob0__1_n_0\,
      I1 => \data_ob0__3_n_0\,
      O => \data_ob1_carry__1_i_2_n_0\
    );
\data_ob1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_ob0__2_n_0\,
      I1 => \data_ob0__4_n_0\,
      O => \data_ob1_carry__1_i_3_n_0\
    );
\data_ob1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_ob0__3_n_0\,
      I1 => \data_ob0__5_n_0\,
      O => \data_ob1_carry__1_i_4_n_0\
    );
data_ob1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_ob0__8_n_0\,
      I1 => \data_ob0__10_n_0\,
      O => data_ob1_carry_i_1_n_0
    );
data_ob1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_ob0__9_n_0\,
      I1 => \data_ob0__11_n_0\,
      O => data_ob1_carry_i_2_n_0
    );
data_ob1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_ob0__10_n_0\,
      I1 => \data_ob0__12_n_0\,
      O => data_ob1_carry_i_3_n_0
    );
\data_ob[13]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_ob1__0\(13),
      O => data_ob0(13)
    );
\data_ob_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob1(10),
      Q => data_ob(10),
      R => p_0_in
    );
\data_ob_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob1(11),
      Q => data_ob(11),
      R => p_0_in
    );
\data_ob_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob1(12),
      Q => data_ob(12),
      R => p_0_in
    );
\data_ob_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob0(13),
      Q => data_ob(13),
      S => p_0_in
    );
\data_ob_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => \data_ob0__12_n_0\,
      Q => data_ob(1),
      R => p_0_in
    );
\data_ob_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob1(2),
      Q => data_ob(2),
      R => p_0_in
    );
\data_ob_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob1(3),
      Q => data_ob(3),
      R => p_0_in
    );
\data_ob_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob1(4),
      Q => data_ob(4),
      R => p_0_in
    );
\data_ob_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob1(5),
      Q => data_ob(5),
      R => p_0_in
    );
\data_ob_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob1(6),
      Q => data_ob(6),
      R => p_0_in
    );
\data_ob_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob1(7),
      Q => data_ob(7),
      R => p_0_in
    );
\data_ob_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob1(8),
      Q => data_ob(8),
      R => p_0_in
    );
\data_ob_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob1(9),
      Q => data_ob(9),
      R => p_0_in
    );
\data_q[13]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
\data_q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob(10),
      Q => dac_data(9),
      R => p_0_in
    );
\data_q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob(11),
      Q => dac_data(10),
      R => p_0_in
    );
\data_q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob(12),
      Q => dac_data(11),
      R => p_0_in
    );
\data_q_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob(13),
      Q => dac_data(12),
      S => p_0_in
    );
\data_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob(1),
      Q => dac_data(0),
      R => p_0_in
    );
\data_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob(2),
      Q => dac_data(1),
      R => p_0_in
    );
\data_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob(3),
      Q => dac_data(2),
      R => p_0_in
    );
\data_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob(4),
      Q => dac_data(3),
      R => p_0_in
    );
\data_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob(5),
      Q => dac_data(4),
      R => p_0_in
    );
\data_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob(6),
      Q => dac_data(5),
      R => p_0_in
    );
\data_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob(7),
      Q => dac_data(6),
      R => p_0_in
    );
\data_q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob(8),
      Q => dac_data(7),
      R => p_0_in
    );
\data_q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => DAC_clk,
      CE => '1',
      D => data_ob(9),
      Q => dac_data(8),
      R => p_0_in
    );
u_oddr_clk: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => DAC_clk,
      CE => '1',
      D1 => '1',
      D2 => '0',
      Q => dac_clk_out,
      R => p_0_in,
      S => NLW_u_oddr_clk_S_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_DAC_904_0_0 is
  port (
    DAC_clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    data_tc16 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dac_data : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_clk_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_DAC_904_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_DAC_904_0_0 : entity is "design_1_DAC_904_0_0,DAC_904,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_DAC_904_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_DAC_904_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_DAC_904_0_0 : entity is "DAC_904,Vivado 2024.2";
end design_1_DAC_904_0_0;

architecture STRUCTURE of design_1_DAC_904_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^dac_data\ : STD_LOGIC_VECTOR ( 13 downto 1 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DAC_clk : signal is "xilinx.com:signal:clock:1.0 DAC_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of DAC_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of DAC_clk : signal is "XIL_INTERFACENAME DAC_clk, ASSOCIATED_RESET aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  dac_data(13 downto 1) <= \^dac_data\(13 downto 1);
  dac_data(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_DAC_904_0_0_DAC_904
     port map (
      DAC_clk => DAC_clk,
      aresetn => aresetn,
      dac_clk_out => dac_clk_out,
      dac_data(12 downto 0) => \^dac_data\(13 downto 1),
      data_tc16(12 downto 0) => data_tc16(14 downto 2)
    );
end STRUCTURE;
