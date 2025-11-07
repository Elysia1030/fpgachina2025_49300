-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Fri Nov  7 16:10:23 2025
-- Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/elysia/Software/Xilinx/Project/11-6V3/2023D_lwx.gen/sources_1/bd/design_1/ip/design_1_data_select_0_0/design_1_data_select_0_0_sim_netlist.vhdl
-- Design      : design_1_data_select_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_data_select_0_0_data_select is
  port (
    DAC_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    FM_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    AM_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    PSK_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SELE : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_data_select_0_0_data_select : entity is "data_select";
end design_1_data_select_0_0_data_select;

architecture STRUCTURE of design_1_data_select_0_0_data_select is
  signal DAC_data1 : STD_LOGIC;
  signal DAC_data10_in : STD_LOGIC;
  signal DAC_data1_carry_i_1_n_0 : STD_LOGIC;
  signal DAC_data1_carry_i_2_n_0 : STD_LOGIC;
  signal DAC_data1_carry_i_3_n_0 : STD_LOGIC;
  signal DAC_data1_carry_i_4_n_0 : STD_LOGIC;
  signal DAC_data1_carry_i_5_n_0 : STD_LOGIC;
  signal DAC_data1_carry_i_6_n_0 : STD_LOGIC;
  signal DAC_data1_carry_n_1 : STD_LOGIC;
  signal DAC_data1_carry_n_2 : STD_LOGIC;
  signal DAC_data1_carry_n_3 : STD_LOGIC;
  signal \DAC_data1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \DAC_data1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \DAC_data1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \DAC_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \DAC_data[10]_i_2_n_0\ : STD_LOGIC;
  signal \DAC_data[11]_i_2_n_0\ : STD_LOGIC;
  signal \DAC_data[12]_i_2_n_0\ : STD_LOGIC;
  signal \DAC_data[13]_i_2_n_0\ : STD_LOGIC;
  signal \DAC_data[14]_i_2_n_0\ : STD_LOGIC;
  signal \DAC_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \DAC_data[15]_i_3_n_0\ : STD_LOGIC;
  signal \DAC_data[15]_i_4_n_0\ : STD_LOGIC;
  signal \DAC_data[15]_i_5_n_0\ : STD_LOGIC;
  signal \DAC_data[15]_i_7_n_0\ : STD_LOGIC;
  signal \DAC_data[15]_i_8_n_0\ : STD_LOGIC;
  signal \DAC_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \DAC_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \DAC_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \DAC_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \DAC_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \DAC_data[6]_i_2_n_0\ : STD_LOGIC;
  signal \DAC_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \DAC_data[8]_i_2_n_0\ : STD_LOGIC;
  signal \DAC_data[9]_i_2_n_0\ : STD_LOGIC;
  signal fm_multiplied_result_n_100 : STD_LOGIC;
  signal fm_multiplied_result_n_101 : STD_LOGIC;
  signal fm_multiplied_result_n_102 : STD_LOGIC;
  signal fm_multiplied_result_n_103 : STD_LOGIC;
  signal fm_multiplied_result_n_104 : STD_LOGIC;
  signal fm_multiplied_result_n_105 : STD_LOGIC;
  signal fm_multiplied_result_n_84 : STD_LOGIC;
  signal fm_multiplied_result_n_85 : STD_LOGIC;
  signal fm_multiplied_result_n_86 : STD_LOGIC;
  signal fm_multiplied_result_n_87 : STD_LOGIC;
  signal fm_multiplied_result_n_88 : STD_LOGIC;
  signal fm_multiplied_result_n_89 : STD_LOGIC;
  signal fm_multiplied_result_n_90 : STD_LOGIC;
  signal fm_multiplied_result_n_91 : STD_LOGIC;
  signal fm_multiplied_result_n_92 : STD_LOGIC;
  signal fm_multiplied_result_n_93 : STD_LOGIC;
  signal fm_multiplied_result_n_94 : STD_LOGIC;
  signal fm_multiplied_result_n_95 : STD_LOGIC;
  signal fm_multiplied_result_n_96 : STD_LOGIC;
  signal fm_multiplied_result_n_97 : STD_LOGIC;
  signal fm_multiplied_result_n_98 : STD_LOGIC;
  signal fm_multiplied_result_n_99 : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_DAC_data1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DAC_data1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fm_multiplied_result_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_fm_multiplied_result_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_fm_multiplied_result_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_fm_multiplied_result_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_fm_multiplied_result_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_fm_multiplied_result_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_fm_multiplied_result_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_fm_multiplied_result_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_fm_multiplied_result_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fm_multiplied_result_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 22 );
  signal NLW_fm_multiplied_result_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of DAC_data1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \DAC_data1_inferred__0/i__carry\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DAC_data[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \DAC_data[10]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \DAC_data[11]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \DAC_data[12]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \DAC_data[13]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \DAC_data[14]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \DAC_data[15]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \DAC_data[15]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \DAC_data[15]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \DAC_data[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \DAC_data[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \DAC_data[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \DAC_data[4]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \DAC_data[5]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \DAC_data[6]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \DAC_data[7]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \DAC_data[8]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \DAC_data[9]_i_2\ : label is "soft_lutpair5";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of fm_multiplied_result : label is "{SYNTH-13 {cell *THIS*}}";
begin
DAC_data1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => DAC_data1,
      CO(2) => DAC_data1_carry_n_1,
      CO(1) => DAC_data1_carry_n_2,
      CO(0) => DAC_data1_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => DAC_data1_carry_i_1_n_0,
      DI(1) => DAC_data1_carry_i_2_n_0,
      DI(0) => DAC_data1_carry_i_3_n_0,
      O(3 downto 0) => NLW_DAC_data1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => fm_multiplied_result_n_85,
      S(2) => DAC_data1_carry_i_4_n_0,
      S(1) => DAC_data1_carry_i_5_n_0,
      S(0) => DAC_data1_carry_i_6_n_0
    );
DAC_data1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => fm_multiplied_result_n_87,
      I1 => fm_multiplied_result_n_86,
      O => DAC_data1_carry_i_1_n_0
    );
DAC_data1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => fm_multiplied_result_n_89,
      I1 => fm_multiplied_result_n_88,
      O => DAC_data1_carry_i_2_n_0
    );
DAC_data1_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fm_multiplied_result_n_90,
      O => DAC_data1_carry_i_3_n_0
    );
DAC_data1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fm_multiplied_result_n_87,
      I1 => fm_multiplied_result_n_86,
      O => DAC_data1_carry_i_4_n_0
    );
DAC_data1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fm_multiplied_result_n_89,
      I1 => fm_multiplied_result_n_88,
      O => DAC_data1_carry_i_5_n_0
    );
DAC_data1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fm_multiplied_result_n_90,
      I1 => fm_multiplied_result_n_91,
      O => DAC_data1_carry_i_6_n_0
    );
\DAC_data1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => DAC_data10_in,
      CO(2) => \DAC_data1_inferred__0/i__carry_n_1\,
      CO(1) => \DAC_data1_inferred__0/i__carry_n_2\,
      CO(0) => \DAC_data1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry_i_1_n_0\,
      DI(1) => \i__carry_i_2_n_0\,
      DI(0) => fm_multiplied_result_n_90,
      O(3 downto 0) => \NLW_DAC_data1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_3_n_0\,
      S(2) => \i__carry_i_4_n_0\,
      S(1) => \i__carry_i_5_n_0\,
      S(0) => \i__carry_i_6_n_0\
    );
\DAC_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAB8FFB800"
    )
        port map (
      I0 => AM_data(0),
      I1 => \DAC_data[15]_i_3_n_0\,
      I2 => PSK_data(0),
      I3 => \DAC_data[15]_i_4_n_0\,
      I4 => \DAC_data[0]_i_2_n_0\,
      I5 => p_0_in,
      O => p_1_in(0)
    );
\DAC_data[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => SELE(4),
      I1 => fm_multiplied_result_n_105,
      I2 => DAC_data1,
      I3 => DAC_data10_in,
      O => \DAC_data[0]_i_2_n_0\
    );
\DAC_data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAB8FFB800"
    )
        port map (
      I0 => AM_data(10),
      I1 => \DAC_data[15]_i_3_n_0\,
      I2 => PSK_data(10),
      I3 => \DAC_data[15]_i_4_n_0\,
      I4 => \DAC_data[10]_i_2_n_0\,
      I5 => p_0_in,
      O => p_1_in(10)
    );
\DAC_data[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => SELE(4),
      I1 => fm_multiplied_result_n_95,
      I2 => DAC_data1,
      I3 => DAC_data10_in,
      O => \DAC_data[10]_i_2_n_0\
    );
\DAC_data[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAB8FFB800"
    )
        port map (
      I0 => AM_data(11),
      I1 => \DAC_data[15]_i_3_n_0\,
      I2 => PSK_data(11),
      I3 => \DAC_data[15]_i_4_n_0\,
      I4 => \DAC_data[11]_i_2_n_0\,
      I5 => p_0_in,
      O => p_1_in(11)
    );
\DAC_data[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => SELE(4),
      I1 => fm_multiplied_result_n_94,
      I2 => DAC_data1,
      I3 => DAC_data10_in,
      O => \DAC_data[11]_i_2_n_0\
    );
\DAC_data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAB8FFB800"
    )
        port map (
      I0 => AM_data(12),
      I1 => \DAC_data[15]_i_3_n_0\,
      I2 => PSK_data(12),
      I3 => \DAC_data[15]_i_4_n_0\,
      I4 => \DAC_data[12]_i_2_n_0\,
      I5 => p_0_in,
      O => p_1_in(12)
    );
\DAC_data[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => SELE(4),
      I1 => fm_multiplied_result_n_93,
      I2 => DAC_data1,
      I3 => DAC_data10_in,
      O => \DAC_data[12]_i_2_n_0\
    );
\DAC_data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAB8FFB800"
    )
        port map (
      I0 => AM_data(13),
      I1 => \DAC_data[15]_i_3_n_0\,
      I2 => PSK_data(13),
      I3 => \DAC_data[15]_i_4_n_0\,
      I4 => \DAC_data[13]_i_2_n_0\,
      I5 => p_0_in,
      O => p_1_in(13)
    );
\DAC_data[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => SELE(4),
      I1 => fm_multiplied_result_n_92,
      I2 => DAC_data1,
      I3 => DAC_data10_in,
      O => \DAC_data[13]_i_2_n_0\
    );
\DAC_data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAB8FFB800"
    )
        port map (
      I0 => AM_data(14),
      I1 => \DAC_data[15]_i_3_n_0\,
      I2 => PSK_data(14),
      I3 => \DAC_data[15]_i_4_n_0\,
      I4 => \DAC_data[14]_i_2_n_0\,
      I5 => p_0_in,
      O => p_1_in(14)
    );
\DAC_data[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => SELE(4),
      I1 => fm_multiplied_result_n_91,
      I2 => DAC_data1,
      I3 => DAC_data10_in,
      O => \DAC_data[14]_i_2_n_0\
    );
\DAC_data[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \DAC_data[15]_i_1_n_0\
    );
\DAC_data[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAB8FFB800"
    )
        port map (
      I0 => AM_data(15),
      I1 => \DAC_data[15]_i_3_n_0\,
      I2 => PSK_data(15),
      I3 => \DAC_data[15]_i_4_n_0\,
      I4 => \DAC_data[15]_i_5_n_0\,
      I5 => p_0_in,
      O => p_1_in(15)
    );
\DAC_data[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => SELE(4),
      I1 => SELE(3),
      I2 => SELE(1),
      I3 => SELE(2),
      O => \DAC_data[15]_i_3_n_0\
    );
\DAC_data[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => SELE(3),
      I1 => SELE(2),
      I2 => SELE(0),
      I3 => SELE(1),
      O => \DAC_data[15]_i_4_n_0\
    );
\DAC_data[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2220"
    )
        port map (
      I0 => SELE(4),
      I1 => DAC_data10_in,
      I2 => DAC_data1,
      I3 => fm_multiplied_result_n_90,
      O => \DAC_data[15]_i_5_n_0\
    );
\DAC_data[15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => SELE(14),
      I1 => SELE(13),
      I2 => SELE(15),
      I3 => \DAC_data[15]_i_7_n_0\,
      I4 => \DAC_data[15]_i_8_n_0\,
      O => p_0_in
    );
\DAC_data[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => SELE(7),
      I1 => SELE(8),
      I2 => SELE(5),
      I3 => SELE(6),
      O => \DAC_data[15]_i_7_n_0\
    );
\DAC_data[15]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => SELE(11),
      I1 => SELE(12),
      I2 => SELE(9),
      I3 => SELE(10),
      O => \DAC_data[15]_i_8_n_0\
    );
\DAC_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAB8FFB800"
    )
        port map (
      I0 => AM_data(1),
      I1 => \DAC_data[15]_i_3_n_0\,
      I2 => PSK_data(1),
      I3 => \DAC_data[15]_i_4_n_0\,
      I4 => \DAC_data[1]_i_2_n_0\,
      I5 => p_0_in,
      O => p_1_in(1)
    );
\DAC_data[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => SELE(4),
      I1 => fm_multiplied_result_n_104,
      I2 => DAC_data1,
      I3 => DAC_data10_in,
      O => \DAC_data[1]_i_2_n_0\
    );
\DAC_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAB8FFB800"
    )
        port map (
      I0 => AM_data(2),
      I1 => \DAC_data[15]_i_3_n_0\,
      I2 => PSK_data(2),
      I3 => \DAC_data[15]_i_4_n_0\,
      I4 => \DAC_data[2]_i_2_n_0\,
      I5 => p_0_in,
      O => p_1_in(2)
    );
\DAC_data[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => SELE(4),
      I1 => fm_multiplied_result_n_103,
      I2 => DAC_data1,
      I3 => DAC_data10_in,
      O => \DAC_data[2]_i_2_n_0\
    );
\DAC_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAB8FFB800"
    )
        port map (
      I0 => AM_data(3),
      I1 => \DAC_data[15]_i_3_n_0\,
      I2 => PSK_data(3),
      I3 => \DAC_data[15]_i_4_n_0\,
      I4 => \DAC_data[3]_i_2_n_0\,
      I5 => p_0_in,
      O => p_1_in(3)
    );
\DAC_data[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => SELE(4),
      I1 => fm_multiplied_result_n_102,
      I2 => DAC_data1,
      I3 => DAC_data10_in,
      O => \DAC_data[3]_i_2_n_0\
    );
\DAC_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAB8FFB800"
    )
        port map (
      I0 => AM_data(4),
      I1 => \DAC_data[15]_i_3_n_0\,
      I2 => PSK_data(4),
      I3 => \DAC_data[15]_i_4_n_0\,
      I4 => \DAC_data[4]_i_2_n_0\,
      I5 => p_0_in,
      O => p_1_in(4)
    );
\DAC_data[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => SELE(4),
      I1 => fm_multiplied_result_n_101,
      I2 => DAC_data1,
      I3 => DAC_data10_in,
      O => \DAC_data[4]_i_2_n_0\
    );
\DAC_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAB8FFB800"
    )
        port map (
      I0 => AM_data(5),
      I1 => \DAC_data[15]_i_3_n_0\,
      I2 => PSK_data(5),
      I3 => \DAC_data[15]_i_4_n_0\,
      I4 => \DAC_data[5]_i_2_n_0\,
      I5 => p_0_in,
      O => p_1_in(5)
    );
\DAC_data[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => SELE(4),
      I1 => fm_multiplied_result_n_100,
      I2 => DAC_data1,
      I3 => DAC_data10_in,
      O => \DAC_data[5]_i_2_n_0\
    );
\DAC_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAB8FFB800"
    )
        port map (
      I0 => AM_data(6),
      I1 => \DAC_data[15]_i_3_n_0\,
      I2 => PSK_data(6),
      I3 => \DAC_data[15]_i_4_n_0\,
      I4 => \DAC_data[6]_i_2_n_0\,
      I5 => p_0_in,
      O => p_1_in(6)
    );
\DAC_data[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => SELE(4),
      I1 => fm_multiplied_result_n_99,
      I2 => DAC_data1,
      I3 => DAC_data10_in,
      O => \DAC_data[6]_i_2_n_0\
    );
\DAC_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAB8FFB800"
    )
        port map (
      I0 => AM_data(7),
      I1 => \DAC_data[15]_i_3_n_0\,
      I2 => PSK_data(7),
      I3 => \DAC_data[15]_i_4_n_0\,
      I4 => \DAC_data[7]_i_2_n_0\,
      I5 => p_0_in,
      O => p_1_in(7)
    );
\DAC_data[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => SELE(4),
      I1 => fm_multiplied_result_n_98,
      I2 => DAC_data1,
      I3 => DAC_data10_in,
      O => \DAC_data[7]_i_2_n_0\
    );
\DAC_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAB8FFB800"
    )
        port map (
      I0 => AM_data(8),
      I1 => \DAC_data[15]_i_3_n_0\,
      I2 => PSK_data(8),
      I3 => \DAC_data[15]_i_4_n_0\,
      I4 => \DAC_data[8]_i_2_n_0\,
      I5 => p_0_in,
      O => p_1_in(8)
    );
\DAC_data[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => SELE(4),
      I1 => fm_multiplied_result_n_97,
      I2 => DAC_data1,
      I3 => DAC_data10_in,
      O => \DAC_data[8]_i_2_n_0\
    );
\DAC_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAB8FFB800"
    )
        port map (
      I0 => AM_data(9),
      I1 => \DAC_data[15]_i_3_n_0\,
      I2 => PSK_data(9),
      I3 => \DAC_data[15]_i_4_n_0\,
      I4 => \DAC_data[9]_i_2_n_0\,
      I5 => p_0_in,
      O => p_1_in(9)
    );
\DAC_data[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => SELE(4),
      I1 => fm_multiplied_result_n_96,
      I2 => DAC_data1,
      I3 => DAC_data10_in,
      O => \DAC_data[9]_i_2_n_0\
    );
\DAC_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(0),
      Q => DAC_data(0),
      R => \DAC_data[15]_i_1_n_0\
    );
\DAC_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(10),
      Q => DAC_data(10),
      R => \DAC_data[15]_i_1_n_0\
    );
\DAC_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(11),
      Q => DAC_data(11),
      R => \DAC_data[15]_i_1_n_0\
    );
\DAC_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(12),
      Q => DAC_data(12),
      R => \DAC_data[15]_i_1_n_0\
    );
\DAC_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(13),
      Q => DAC_data(13),
      R => \DAC_data[15]_i_1_n_0\
    );
\DAC_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(14),
      Q => DAC_data(14),
      R => \DAC_data[15]_i_1_n_0\
    );
\DAC_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(15),
      Q => DAC_data(15),
      R => \DAC_data[15]_i_1_n_0\
    );
\DAC_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(1),
      Q => DAC_data(1),
      R => \DAC_data[15]_i_1_n_0\
    );
\DAC_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(2),
      Q => DAC_data(2),
      R => \DAC_data[15]_i_1_n_0\
    );
\DAC_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(3),
      Q => DAC_data(3),
      R => \DAC_data[15]_i_1_n_0\
    );
\DAC_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(4),
      Q => DAC_data(4),
      R => \DAC_data[15]_i_1_n_0\
    );
\DAC_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(5),
      Q => DAC_data(5),
      R => \DAC_data[15]_i_1_n_0\
    );
\DAC_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(6),
      Q => DAC_data(6),
      R => \DAC_data[15]_i_1_n_0\
    );
\DAC_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(7),
      Q => DAC_data(7),
      R => \DAC_data[15]_i_1_n_0\
    );
\DAC_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(8),
      Q => DAC_data(8),
      R => \DAC_data[15]_i_1_n_0\
    );
\DAC_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(9),
      Q => DAC_data(9),
      R => \DAC_data[15]_i_1_n_0\
    );
fm_multiplied_result: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => FM_data(15),
      A(28) => FM_data(15),
      A(27) => FM_data(15),
      A(26) => FM_data(15),
      A(25) => FM_data(15),
      A(24) => FM_data(15),
      A(23) => FM_data(15),
      A(22) => FM_data(15),
      A(21) => FM_data(15),
      A(20) => FM_data(15),
      A(19) => FM_data(15),
      A(18) => FM_data(15),
      A(17) => FM_data(15),
      A(16) => FM_data(15),
      A(15 downto 0) => FM_data(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_fm_multiplied_result_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000011001",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_fm_multiplied_result_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_fm_multiplied_result_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_fm_multiplied_result_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_fm_multiplied_result_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_fm_multiplied_result_OVERFLOW_UNCONNECTED,
      P(47 downto 22) => NLW_fm_multiplied_result_P_UNCONNECTED(47 downto 22),
      P(21) => fm_multiplied_result_n_84,
      P(20) => fm_multiplied_result_n_85,
      P(19) => fm_multiplied_result_n_86,
      P(18) => fm_multiplied_result_n_87,
      P(17) => fm_multiplied_result_n_88,
      P(16) => fm_multiplied_result_n_89,
      P(15) => fm_multiplied_result_n_90,
      P(14) => fm_multiplied_result_n_91,
      P(13) => fm_multiplied_result_n_92,
      P(12) => fm_multiplied_result_n_93,
      P(11) => fm_multiplied_result_n_94,
      P(10) => fm_multiplied_result_n_95,
      P(9) => fm_multiplied_result_n_96,
      P(8) => fm_multiplied_result_n_97,
      P(7) => fm_multiplied_result_n_98,
      P(6) => fm_multiplied_result_n_99,
      P(5) => fm_multiplied_result_n_100,
      P(4) => fm_multiplied_result_n_101,
      P(3) => fm_multiplied_result_n_102,
      P(2) => fm_multiplied_result_n_103,
      P(1) => fm_multiplied_result_n_104,
      P(0) => fm_multiplied_result_n_105,
      PATTERNBDETECT => NLW_fm_multiplied_result_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_fm_multiplied_result_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_fm_multiplied_result_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_fm_multiplied_result_UNDERFLOW_UNCONNECTED
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fm_multiplied_result_n_87,
      I1 => fm_multiplied_result_n_86,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fm_multiplied_result_n_89,
      I1 => fm_multiplied_result_n_88,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fm_multiplied_result_n_85,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fm_multiplied_result_n_87,
      I1 => fm_multiplied_result_n_86,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fm_multiplied_result_n_89,
      I1 => fm_multiplied_result_n_88,
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fm_multiplied_result_n_91,
      I1 => fm_multiplied_result_n_90,
      O => \i__carry_i_6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_data_select_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    SELE : in STD_LOGIC_VECTOR ( 15 downto 0 );
    AM_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    FM_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    PSK_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DAC_data : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_data_select_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_data_select_0_0 : entity is "design_1_data_select_0_0,data_select,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_data_select_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_data_select_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_data_select_0_0 : entity is "data_select,Vivado 2024.2";
end design_1_data_select_0_0;

architecture STRUCTURE of design_1_data_select_0_0 is
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
inst: entity work.design_1_data_select_0_0_data_select
     port map (
      AM_data(15 downto 0) => AM_data(15 downto 0),
      DAC_data(15 downto 0) => DAC_data(15 downto 0),
      FM_data(15 downto 0) => FM_data(15 downto 0),
      PSK_data(15 downto 0) => PSK_data(15 downto 0),
      SELE(15 downto 0) => SELE(15 downto 0),
      clk => clk,
      rst_n => rst_n
    );
end STRUCTURE;
