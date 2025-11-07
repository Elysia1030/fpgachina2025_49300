-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Fri Nov  7 10:08:04 2025
-- Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/elysia/Software/Xilinx/Project/11-6V3/2023D_lwx.gen/sources_1/bd/design_1/ip/design_1_waveform_measure_0_0/design_1_waveform_measure_0_0_sim_netlist.vhdl
-- Design      : design_1_waveform_measure_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_waveform_measure_0_0_clk_divider is
  port (
    \FSM_onehot_state_reg[1]\ : out STD_LOGIC;
    sample_clk : out STD_LOGIC;
    sample_clk_d1_reg : out STD_LOGIC;
    sample_clk_d1_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    sample_clk_d1_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]_3\ : out STD_LOGIC;
    rst_n_0 : out STD_LOGIC;
    \FSM_onehot_state_reg[2]_0\ : in STD_LOGIC;
    sample_clk_d1 : in STD_LOGIC;
    \FSM_onehot_state_reg[2]_1\ : in STD_LOGIC;
    \FSM_onehot_state_reg[2]_2\ : in STD_LOGIC;
    \FSM_onehot_state_reg[2]_3\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \v_min_temp_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    signal_rectified : in STD_LOGIC;
    signal_rectified_d1 : in STD_LOGIC;
    measurement_started_reg : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    sys_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_waveform_measure_0_0_clk_divider : entity is "clk_divider";
end design_1_waveform_measure_0_0_clk_divider;

architecture STRUCTURE of design_1_waveform_measure_0_0_clk_divider is
  signal clk_div : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal clk_div_0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal measurement_started_i_2_n_0 : STD_LOGIC;
  signal \^rst_n_0\ : STD_LOGIC;
  signal \^sample_clk\ : STD_LOGIC;
  signal \^sample_clk_d1_reg_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \clk_div[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \clk_div[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of measurement_started_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sample_cnt[12]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \signal_dc_removed[15]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sum[28]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \v_max_temp[15]_i_1\ : label is "soft_lutpair2";
begin
  rst_n_0 <= \^rst_n_0\;
  sample_clk <= \^sample_clk\;
  sample_clk_d1_reg_1(0) <= \^sample_clk_d1_reg_1\(0);
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FFB0"
    )
        port map (
      I0 => sample_clk_d1,
      I1 => \^sample_clk\,
      I2 => \FSM_onehot_state_reg[2]_1\,
      I3 => \FSM_onehot_state_reg[2]_2\,
      I4 => \FSM_onehot_state_reg[2]_3\,
      O => sample_clk_d1_reg_0
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0FFF0F0F040"
    )
        port map (
      I0 => sample_clk_d1,
      I1 => \^sample_clk\,
      I2 => \FSM_onehot_state_reg[2]_1\,
      I3 => \FSM_onehot_state_reg[2]_2\,
      I4 => \FSM_onehot_state_reg[2]_3\,
      I5 => \FSM_onehot_state_reg[2]_0\,
      O => sample_clk_d1_reg
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA2000"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_0\,
      I1 => sample_clk_d1,
      I2 => \^sample_clk\,
      I3 => \FSM_onehot_state_reg[2]_1\,
      I4 => \FSM_onehot_state_reg[2]_2\,
      I5 => \FSM_onehot_state_reg[2]_3\,
      O => \FSM_onehot_state_reg[1]\
    );
\clk_div[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_div(0),
      O => clk_div_0(0)
    );
\clk_div[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFDFF0000"
    )
        port map (
      I0 => clk_div(5),
      I1 => clk_div(2),
      I2 => clk_div(3),
      I3 => clk_div(4),
      I4 => clk_div(0),
      I5 => clk_div(1),
      O => clk_div_0(1)
    );
\clk_div[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => clk_div(1),
      I1 => clk_div(0),
      I2 => clk_div(2),
      O => clk_div_0(2)
    );
\clk_div[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => clk_div(2),
      I1 => clk_div(0),
      I2 => clk_div(1),
      I3 => clk_div(3),
      O => clk_div_0(3)
    );
\clk_div[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66CCCC8CCCCCCCCC"
    )
        port map (
      I0 => clk_div(1),
      I1 => clk_div(4),
      I2 => clk_div(5),
      I3 => clk_div(2),
      I4 => clk_div(3),
      I5 => clk_div(0),
      O => clk_div_0(4)
    );
\clk_div[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F80FF00FF00F700"
    )
        port map (
      I0 => clk_div(0),
      I1 => clk_div(4),
      I2 => clk_div(1),
      I3 => clk_div(5),
      I4 => clk_div(3),
      I5 => clk_div(2),
      O => clk_div_0(5)
    );
\clk_div_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => clk_div_0(0),
      Q => clk_div(0)
    );
\clk_div_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => clk_div_0(1),
      Q => clk_div(1)
    );
\clk_div_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => clk_div_0(2),
      Q => clk_div(2)
    );
\clk_div_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => clk_div_0(3),
      Q => clk_div(3)
    );
\clk_div_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => clk_div_0(4),
      Q => clk_div(4)
    );
\clk_div_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => clk_div_0(5),
      Q => clk_div(5)
    );
measurement_started_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F70808"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_0\,
      I1 => signal_rectified,
      I2 => signal_rectified_d1,
      I3 => measurement_started_i_2_n_0,
      I4 => measurement_started_reg,
      O => \FSM_onehot_state_reg[1]_3\
    );
measurement_started_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sample_clk_d1,
      I1 => \^sample_clk\,
      I2 => \FSM_onehot_state_reg[2]_1\,
      O => measurement_started_i_2_n_0
    );
\period_cnt_temp[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAEAAAAAAAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_2\,
      I1 => \FSM_onehot_state_reg[2]_0\,
      I2 => signal_rectified,
      I3 => signal_rectified_d1,
      I4 => measurement_started_reg,
      I5 => \^sample_clk_d1_reg_1\(0),
      O => \FSM_onehot_state_reg[2]\(0)
    );
sample_clk_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => clk_div(1),
      I1 => clk_div(0),
      I2 => clk_div(4),
      I3 => clk_div(5),
      I4 => clk_div(2),
      I5 => clk_div(3),
      O => \^sample_clk\
    );
\sample_cnt[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4440"
    )
        port map (
      I0 => sample_clk_d1,
      I1 => \^sample_clk\,
      I2 => \FSM_onehot_state_reg[2]_0\,
      I3 => \FSM_onehot_state_reg[2]_1\,
      I4 => \FSM_onehot_state_reg[2]_2\,
      O => E(0)
    );
\signal_dc_removed[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sample_clk_d1,
      I1 => \^sample_clk\,
      I2 => \FSM_onehot_state_reg[2]_0\,
      O => \^sample_clk_d1_reg_1\(0)
    );
\sum[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_0\,
      I1 => \FSM_onehot_state_reg[2]_1\,
      I2 => \^sample_clk\,
      I3 => sample_clk_d1,
      O => \FSM_onehot_state_reg[1]_2\(0)
    );
\v_max[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^rst_n_0\
    );
\v_max_temp[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F800"
    )
        port map (
      I0 => CO(0),
      I1 => \FSM_onehot_state_reg[2]_0\,
      I2 => \FSM_onehot_state_reg[2]_1\,
      I3 => \^sample_clk\,
      I4 => sample_clk_d1,
      O => \FSM_onehot_state_reg[1]_0\(0)
    );
\v_min_temp[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F800"
    )
        port map (
      I0 => \v_min_temp_reg[0]\(0),
      I1 => \FSM_onehot_state_reg[2]_0\,
      I2 => \FSM_onehot_state_reg[2]_1\,
      I3 => \^sample_clk\,
      I4 => sample_clk_d1,
      O => \FSM_onehot_state_reg[1]_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_waveform_measure_0_0_waveform_measure is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    v_max : out STD_LOGIC_VECTOR ( 15 downto 0 );
    v_min : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mean_square : out STD_LOGIC_VECTOR ( 31 downto 0 );
    period_sample_cnt : out STD_LOGIC_VECTOR ( 15 downto 0 );
    measure_done : out STD_LOGIC;
    sys_clk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_waveform_measure_0_0_waveform_measure : entity is "waveform_measure";
end design_1_waveform_measure_0_0_waveform_measure;

architecture STRUCTURE of design_1_waveform_measure_0_0_waveform_measure is
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clk_divider_inst_n_0 : STD_LOGIC;
  signal clk_divider_inst_n_10 : STD_LOGIC;
  signal clk_divider_inst_n_11 : STD_LOGIC;
  signal clk_divider_inst_n_2 : STD_LOGIC;
  signal clk_divider_inst_n_3 : STD_LOGIC;
  signal clk_divider_inst_n_5 : STD_LOGIC;
  signal clk_divider_inst_n_6 : STD_LOGIC;
  signal clk_divider_inst_n_7 : STD_LOGIC;
  signal clk_divider_inst_n_8 : STD_LOGIC;
  signal data_in_synced : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \data_squared__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dc_offset : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal final_period_cnt : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \final_period_cnt0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \final_period_cnt0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \final_period_cnt0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \final_period_cnt0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \final_period_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \final_period_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \final_period_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \final_period_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \final_period_cnt0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \final_period_cnt0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \final_period_cnt0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \final_period_cnt0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \final_period_cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \final_period_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \final_period_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \final_period_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \final_period_cnt0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \final_period_cnt0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \final_period_cnt0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \final_period_cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \final_period_cnt0_carry__2_n_3\ : STD_LOGIC;
  signal final_period_cnt0_carry_i_1_n_0 : STD_LOGIC;
  signal final_period_cnt0_carry_i_2_n_0 : STD_LOGIC;
  signal final_period_cnt0_carry_i_3_n_0 : STD_LOGIC;
  signal final_period_cnt0_carry_i_4_n_0 : STD_LOGIC;
  signal final_period_cnt0_carry_n_0 : STD_LOGIC;
  signal final_period_cnt0_carry_n_1 : STD_LOGIC;
  signal final_period_cnt0_carry_n_2 : STD_LOGIC;
  signal final_period_cnt0_carry_n_3 : STD_LOGIC;
  signal \final_period_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \final_period_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \final_period_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \final_period_cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \final_period_cnt[13]_i_1_n_0\ : STD_LOGIC;
  signal \final_period_cnt[14]_i_1_n_0\ : STD_LOGIC;
  signal \final_period_cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \final_period_cnt[15]_i_2_n_0\ : STD_LOGIC;
  signal \final_period_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \final_period_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \final_period_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \final_period_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \final_period_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \final_period_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \final_period_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \final_period_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \final_period_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal in10 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal in17 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal in8 : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal measurement_started_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal period_cnt_temp : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal period_cnt_temp0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal period_cnt_temp_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \period_cnt_temp_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \period_cnt_temp_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \period_cnt_temp_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \period_cnt_temp_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \period_cnt_temp_reg[15]_i_3_n_2\ : STD_LOGIC;
  signal \period_cnt_temp_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \period_cnt_temp_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \period_cnt_temp_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \period_cnt_temp_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \period_cnt_temp_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \period_cnt_temp_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \period_cnt_temp_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \period_cnt_temp_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \period_cnt_temp_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal sample_clk : STD_LOGIC;
  signal sample_clk_d1 : STD_LOGIC;
  signal sample_cnt : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \sample_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \sample_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \sample_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \sample_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \sample_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \sample_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \sample_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal sample_cnt0_carry_n_0 : STD_LOGIC;
  signal sample_cnt0_carry_n_1 : STD_LOGIC;
  signal sample_cnt0_carry_n_2 : STD_LOGIC;
  signal sample_cnt0_carry_n_3 : STD_LOGIC;
  signal \sample_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \sample_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \sample_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \sample_cnt[12]_i_2_n_0\ : STD_LOGIC;
  signal \sample_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \sample_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \sample_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \sample_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \sample_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \sample_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \sample_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \sample_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \sample_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal sample_cnt_0 : STD_LOGIC;
  signal signal_dc_removed0 : STD_LOGIC;
  signal signal_dc_removed00_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \signal_dc_removed0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \signal_dc_removed0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \signal_dc_removed0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \signal_dc_removed0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \signal_dc_removed0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \signal_dc_removed0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \signal_dc_removed0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \signal_dc_removed0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \signal_dc_removed0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \signal_dc_removed0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \signal_dc_removed0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \signal_dc_removed0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \signal_dc_removed0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \signal_dc_removed0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \signal_dc_removed0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal signal_rectified : STD_LOGIC;
  signal signal_rectified_d1 : STD_LOGIC;
  signal signal_rectified_i_10_n_0 : STD_LOGIC;
  signal signal_rectified_i_11_n_0 : STD_LOGIC;
  signal signal_rectified_i_12_n_0 : STD_LOGIC;
  signal signal_rectified_i_13_n_0 : STD_LOGIC;
  signal signal_rectified_i_14_n_0 : STD_LOGIC;
  signal signal_rectified_i_15_n_0 : STD_LOGIC;
  signal signal_rectified_i_16_n_0 : STD_LOGIC;
  signal signal_rectified_i_17_n_0 : STD_LOGIC;
  signal signal_rectified_i_18_n_0 : STD_LOGIC;
  signal signal_rectified_i_3_n_0 : STD_LOGIC;
  signal signal_rectified_i_4_n_0 : STD_LOGIC;
  signal signal_rectified_i_5_n_0 : STD_LOGIC;
  signal signal_rectified_i_6_n_0 : STD_LOGIC;
  signal signal_rectified_i_7_n_0 : STD_LOGIC;
  signal signal_rectified_i_8_n_0 : STD_LOGIC;
  signal signal_rectified_i_9_n_0 : STD_LOGIC;
  signal signal_rectified_reg_i_1_n_0 : STD_LOGIC;
  signal signal_rectified_reg_i_1_n_1 : STD_LOGIC;
  signal signal_rectified_reg_i_1_n_2 : STD_LOGIC;
  signal signal_rectified_reg_i_1_n_3 : STD_LOGIC;
  signal signal_rectified_reg_i_2_n_0 : STD_LOGIC;
  signal signal_rectified_reg_i_2_n_1 : STD_LOGIC;
  signal signal_rectified_reg_i_2_n_2 : STD_LOGIC;
  signal signal_rectified_reg_i_2_n_3 : STD_LOGIC;
  signal sum : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal \sum0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sum0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sum0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sum0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sum0_carry__0_n_0\ : STD_LOGIC;
  signal \sum0_carry__0_n_1\ : STD_LOGIC;
  signal \sum0_carry__0_n_2\ : STD_LOGIC;
  signal \sum0_carry__0_n_3\ : STD_LOGIC;
  signal \sum0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \sum0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \sum0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \sum0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \sum0_carry__1_n_0\ : STD_LOGIC;
  signal \sum0_carry__1_n_1\ : STD_LOGIC;
  signal \sum0_carry__1_n_2\ : STD_LOGIC;
  signal \sum0_carry__1_n_3\ : STD_LOGIC;
  signal \sum0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \sum0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \sum0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \sum0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \sum0_carry__2_n_0\ : STD_LOGIC;
  signal \sum0_carry__2_n_1\ : STD_LOGIC;
  signal \sum0_carry__2_n_2\ : STD_LOGIC;
  signal \sum0_carry__2_n_3\ : STD_LOGIC;
  signal \sum0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \sum0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \sum0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \sum0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \sum0_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \sum0_carry__3_n_0\ : STD_LOGIC;
  signal \sum0_carry__3_n_1\ : STD_LOGIC;
  signal \sum0_carry__3_n_2\ : STD_LOGIC;
  signal \sum0_carry__3_n_3\ : STD_LOGIC;
  signal \sum0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \sum0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \sum0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \sum0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \sum0_carry__4_n_0\ : STD_LOGIC;
  signal \sum0_carry__4_n_1\ : STD_LOGIC;
  signal \sum0_carry__4_n_2\ : STD_LOGIC;
  signal \sum0_carry__4_n_3\ : STD_LOGIC;
  signal \sum0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \sum0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \sum0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \sum0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \sum0_carry__5_n_0\ : STD_LOGIC;
  signal \sum0_carry__5_n_1\ : STD_LOGIC;
  signal \sum0_carry__5_n_2\ : STD_LOGIC;
  signal \sum0_carry__5_n_3\ : STD_LOGIC;
  signal \sum0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal sum0_carry_i_1_n_0 : STD_LOGIC;
  signal sum0_carry_i_2_n_0 : STD_LOGIC;
  signal sum0_carry_i_3_n_0 : STD_LOGIC;
  signal sum0_carry_i_4_n_0 : STD_LOGIC;
  signal sum0_carry_n_0 : STD_LOGIC;
  signal sum0_carry_n_1 : STD_LOGIC;
  signal sum0_carry_n_2 : STD_LOGIC;
  signal sum0_carry_n_3 : STD_LOGIC;
  signal sum_of_squares : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal \sum_of_squares[11]_i_2_n_0\ : STD_LOGIC;
  signal \sum_of_squares[11]_i_3_n_0\ : STD_LOGIC;
  signal \sum_of_squares[11]_i_4_n_0\ : STD_LOGIC;
  signal \sum_of_squares[11]_i_5_n_0\ : STD_LOGIC;
  signal \sum_of_squares[15]_i_2_n_0\ : STD_LOGIC;
  signal \sum_of_squares[15]_i_3_n_0\ : STD_LOGIC;
  signal \sum_of_squares[15]_i_4_n_0\ : STD_LOGIC;
  signal \sum_of_squares[15]_i_5_n_0\ : STD_LOGIC;
  signal \sum_of_squares[19]_i_2_n_0\ : STD_LOGIC;
  signal \sum_of_squares[19]_i_3_n_0\ : STD_LOGIC;
  signal \sum_of_squares[19]_i_4_n_0\ : STD_LOGIC;
  signal \sum_of_squares[19]_i_5_n_0\ : STD_LOGIC;
  signal \sum_of_squares[23]_i_2_n_0\ : STD_LOGIC;
  signal \sum_of_squares[23]_i_3_n_0\ : STD_LOGIC;
  signal \sum_of_squares[23]_i_4_n_0\ : STD_LOGIC;
  signal \sum_of_squares[23]_i_5_n_0\ : STD_LOGIC;
  signal \sum_of_squares[27]_i_2_n_0\ : STD_LOGIC;
  signal \sum_of_squares[27]_i_3_n_0\ : STD_LOGIC;
  signal \sum_of_squares[27]_i_4_n_0\ : STD_LOGIC;
  signal \sum_of_squares[27]_i_5_n_0\ : STD_LOGIC;
  signal \sum_of_squares[31]_i_2_n_0\ : STD_LOGIC;
  signal \sum_of_squares[31]_i_3_n_0\ : STD_LOGIC;
  signal \sum_of_squares[31]_i_4_n_0\ : STD_LOGIC;
  signal \sum_of_squares[31]_i_5_n_0\ : STD_LOGIC;
  signal \sum_of_squares[35]_i_2_n_0\ : STD_LOGIC;
  signal \sum_of_squares[35]_i_3_n_0\ : STD_LOGIC;
  signal \sum_of_squares[35]_i_4_n_0\ : STD_LOGIC;
  signal \sum_of_squares[35]_i_5_n_0\ : STD_LOGIC;
  signal \sum_of_squares[39]_i_2_n_0\ : STD_LOGIC;
  signal \sum_of_squares[39]_i_3_n_0\ : STD_LOGIC;
  signal \sum_of_squares[39]_i_4_n_0\ : STD_LOGIC;
  signal \sum_of_squares[39]_i_5_n_0\ : STD_LOGIC;
  signal \sum_of_squares[3]_i_2_n_0\ : STD_LOGIC;
  signal \sum_of_squares[3]_i_3_n_0\ : STD_LOGIC;
  signal \sum_of_squares[3]_i_4_n_0\ : STD_LOGIC;
  signal \sum_of_squares[3]_i_5_n_0\ : STD_LOGIC;
  signal \sum_of_squares[43]_i_2_n_0\ : STD_LOGIC;
  signal \sum_of_squares[43]_i_3_n_0\ : STD_LOGIC;
  signal \sum_of_squares[43]_i_4_n_0\ : STD_LOGIC;
  signal \sum_of_squares[43]_i_5_n_0\ : STD_LOGIC;
  signal \sum_of_squares[44]_i_2_n_0\ : STD_LOGIC;
  signal \sum_of_squares[7]_i_2_n_0\ : STD_LOGIC;
  signal \sum_of_squares[7]_i_3_n_0\ : STD_LOGIC;
  signal \sum_of_squares[7]_i_4_n_0\ : STD_LOGIC;
  signal \sum_of_squares[7]_i_5_n_0\ : STD_LOGIC;
  signal \sum_of_squares_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \sum_of_squares_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \sum_of_squares_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \sum_of_squares_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \sum_of_squares_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \sum_of_squares_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \sum_of_squares_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \sum_of_squares_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \sum_of_squares_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \sum_of_squares_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \sum_of_squares_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \sum_of_squares_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \sum_of_squares_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \sum_of_squares_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \sum_of_squares_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \sum_of_squares_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \sum_of_squares_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \sum_of_squares_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \sum_of_squares_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \sum_of_squares_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \sum_of_squares_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \sum_of_squares_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \sum_of_squares_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \sum_of_squares_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \sum_of_squares_reg[35]_i_1_n_0\ : STD_LOGIC;
  signal \sum_of_squares_reg[35]_i_1_n_1\ : STD_LOGIC;
  signal \sum_of_squares_reg[35]_i_1_n_2\ : STD_LOGIC;
  signal \sum_of_squares_reg[35]_i_1_n_3\ : STD_LOGIC;
  signal \sum_of_squares_reg[39]_i_1_n_0\ : STD_LOGIC;
  signal \sum_of_squares_reg[39]_i_1_n_1\ : STD_LOGIC;
  signal \sum_of_squares_reg[39]_i_1_n_2\ : STD_LOGIC;
  signal \sum_of_squares_reg[39]_i_1_n_3\ : STD_LOGIC;
  signal \sum_of_squares_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sum_of_squares_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \sum_of_squares_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \sum_of_squares_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \sum_of_squares_reg[43]_i_1_n_0\ : STD_LOGIC;
  signal \sum_of_squares_reg[43]_i_1_n_1\ : STD_LOGIC;
  signal \sum_of_squares_reg[43]_i_1_n_2\ : STD_LOGIC;
  signal \sum_of_squares_reg[43]_i_1_n_3\ : STD_LOGIC;
  signal \sum_of_squares_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sum_of_squares_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \sum_of_squares_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \sum_of_squares_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[0]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[10]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[11]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[12]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[13]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[14]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[15]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[16]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[17]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[18]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[19]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[1]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[20]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[21]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[22]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[23]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[24]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[25]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[26]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[27]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[28]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[29]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[2]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[30]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[31]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[32]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[33]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[34]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[35]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[36]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[37]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[38]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[39]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[3]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[40]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[41]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[42]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[43]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[44]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[4]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[5]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[6]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[7]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[8]\ : STD_LOGIC;
  signal \sum_of_squares_reg_n_0_[9]\ : STD_LOGIC;
  signal \sum_reg_n_0_[0]\ : STD_LOGIC;
  signal \sum_reg_n_0_[10]\ : STD_LOGIC;
  signal \sum_reg_n_0_[11]\ : STD_LOGIC;
  signal \sum_reg_n_0_[12]\ : STD_LOGIC;
  signal \sum_reg_n_0_[1]\ : STD_LOGIC;
  signal \sum_reg_n_0_[2]\ : STD_LOGIC;
  signal \sum_reg_n_0_[3]\ : STD_LOGIC;
  signal \sum_reg_n_0_[4]\ : STD_LOGIC;
  signal \sum_reg_n_0_[5]\ : STD_LOGIC;
  signal \sum_reg_n_0_[6]\ : STD_LOGIC;
  signal \sum_reg_n_0_[7]\ : STD_LOGIC;
  signal \sum_reg_n_0_[8]\ : STD_LOGIC;
  signal \sum_reg_n_0_[9]\ : STD_LOGIC;
  signal v_max_temp : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \v_max_temp0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \v_max_temp0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \v_max_temp0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \v_max_temp0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \v_max_temp0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \v_max_temp0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \v_max_temp0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \v_max_temp0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \v_max_temp0_carry__0_n_0\ : STD_LOGIC;
  signal \v_max_temp0_carry__0_n_1\ : STD_LOGIC;
  signal \v_max_temp0_carry__0_n_2\ : STD_LOGIC;
  signal \v_max_temp0_carry__0_n_3\ : STD_LOGIC;
  signal v_max_temp0_carry_i_1_n_0 : STD_LOGIC;
  signal v_max_temp0_carry_i_2_n_0 : STD_LOGIC;
  signal v_max_temp0_carry_i_3_n_0 : STD_LOGIC;
  signal v_max_temp0_carry_i_4_n_0 : STD_LOGIC;
  signal v_max_temp0_carry_i_5_n_0 : STD_LOGIC;
  signal v_max_temp0_carry_i_6_n_0 : STD_LOGIC;
  signal v_max_temp0_carry_i_7_n_0 : STD_LOGIC;
  signal v_max_temp0_carry_i_8_n_0 : STD_LOGIC;
  signal v_max_temp0_carry_n_0 : STD_LOGIC;
  signal v_max_temp0_carry_n_1 : STD_LOGIC;
  signal v_max_temp0_carry_n_2 : STD_LOGIC;
  signal v_max_temp0_carry_n_3 : STD_LOGIC;
  signal v_min_temp : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \v_min_temp0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \v_min_temp0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \v_min_temp0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \v_min_temp0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \v_min_temp0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \v_min_temp0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \v_min_temp0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \v_min_temp0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \v_min_temp0_carry__0_n_0\ : STD_LOGIC;
  signal \v_min_temp0_carry__0_n_1\ : STD_LOGIC;
  signal \v_min_temp0_carry__0_n_2\ : STD_LOGIC;
  signal \v_min_temp0_carry__0_n_3\ : STD_LOGIC;
  signal v_min_temp0_carry_i_1_n_0 : STD_LOGIC;
  signal v_min_temp0_carry_i_2_n_0 : STD_LOGIC;
  signal v_min_temp0_carry_i_3_n_0 : STD_LOGIC;
  signal v_min_temp0_carry_i_4_n_0 : STD_LOGIC;
  signal v_min_temp0_carry_i_5_n_0 : STD_LOGIC;
  signal v_min_temp0_carry_i_6_n_0 : STD_LOGIC;
  signal v_min_temp0_carry_i_7_n_0 : STD_LOGIC;
  signal v_min_temp0_carry_i_8_n_0 : STD_LOGIC;
  signal v_min_temp0_carry_n_0 : STD_LOGIC;
  signal v_min_temp0_carry_n_1 : STD_LOGIC;
  signal v_min_temp0_carry_n_2 : STD_LOGIC;
  signal v_min_temp0_carry_n_3 : STD_LOGIC;
  signal NLW_data_squared_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_data_squared_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_data_squared_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_data_squared_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_data_squared_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_data_squared_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_data_squared_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_data_squared_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_data_squared_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_data_squared_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_data_squared_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_final_period_cnt0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_final_period_cnt0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_period_cnt_temp_reg[15]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_period_cnt_temp_reg[15]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sample_cnt0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_signal_dc_removed0_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_signal_rectified_reg_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_signal_rectified_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sum_of_squares_reg[44]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum_of_squares_reg[44]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_v_max_temp0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v_max_temp0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_v_min_temp0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v_min_temp0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "IDLE:001,SAMPLE:010,CALC_AND_LATCH:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "IDLE:001,SAMPLE:010,CALC_AND_LATCH:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "IDLE:001,SAMPLE:010,CALC_AND_LATCH:100,";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of data_squared : label is "{SYNTH-13 {cell *THIS*}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of final_period_cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \final_period_cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \final_period_cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \final_period_cnt0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \final_period_cnt[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \final_period_cnt[10]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \final_period_cnt[11]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \final_period_cnt[12]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \final_period_cnt[13]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \final_period_cnt[14]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \final_period_cnt[15]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \final_period_cnt[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \final_period_cnt[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \final_period_cnt[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \final_period_cnt[4]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \final_period_cnt[5]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \final_period_cnt[6]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \final_period_cnt[7]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \final_period_cnt[8]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \final_period_cnt[9]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \period_cnt_temp[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \period_cnt_temp[10]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \period_cnt_temp[11]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \period_cnt_temp[12]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \period_cnt_temp[13]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \period_cnt_temp[14]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \period_cnt_temp[15]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \period_cnt_temp[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \period_cnt_temp[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \period_cnt_temp[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \period_cnt_temp[4]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \period_cnt_temp[5]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \period_cnt_temp[6]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \period_cnt_temp[7]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \period_cnt_temp[8]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \period_cnt_temp[9]_i_1\ : label is "soft_lutpair28";
  attribute ADDER_THRESHOLD of \period_cnt_temp_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \period_cnt_temp_reg[15]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \period_cnt_temp_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \period_cnt_temp_reg[8]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of sample_cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \sample_cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_cnt0_carry__1\ : label is 35;
  attribute SOFT_HLUTNM of \sample_cnt[10]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sample_cnt[11]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sample_cnt[12]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sample_cnt[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \sample_cnt[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \sample_cnt[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \sample_cnt[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \sample_cnt[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \sample_cnt[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \sample_cnt[7]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \sample_cnt[8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \sample_cnt[9]_i_1\ : label is "soft_lutpair22";
  attribute ADDER_THRESHOLD of \signal_dc_removed0_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \signal_dc_removed0_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \signal_dc_removed0_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \signal_dc_removed0_inferred__0/i__carry__2\ : label is 35;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of signal_rectified_reg_i_1 : label is 11;
  attribute COMPARATOR_THRESHOLD of signal_rectified_reg_i_2 : label is 11;
  attribute ADDER_THRESHOLD of sum0_carry : label is 35;
  attribute ADDER_THRESHOLD of \sum0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sum0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \sum0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \sum0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \sum0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \sum[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \sum[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sum[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sum[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sum[14]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sum[15]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sum[16]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sum[17]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sum[18]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sum[19]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sum[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sum[20]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sum[21]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sum[22]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sum[23]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sum[24]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sum[25]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sum[26]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sum[27]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sum[28]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sum[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sum[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sum[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sum[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sum[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sum[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sum[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sum[9]_i_1\ : label is "soft_lutpair13";
  attribute ADDER_THRESHOLD of \sum_of_squares_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_of_squares_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_of_squares_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_of_squares_reg[23]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_of_squares_reg[27]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_of_squares_reg[31]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_of_squares_reg[35]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_of_squares_reg[39]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_of_squares_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_of_squares_reg[43]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_of_squares_reg[44]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_of_squares_reg[7]_i_1\ : label is 35;
  attribute COMPARATOR_THRESHOLD of v_max_temp0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \v_max_temp0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of v_min_temp0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \v_min_temp0_carry__0\ : label is 11;
begin
  Q(15 downto 0) <= \^q\(15 downto 0);
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_3_n_0\,
      I1 => sample_cnt(0),
      I2 => sample_cnt(1),
      I3 => \FSM_onehot_state[2]_i_4_n_0\,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => sample_cnt(10),
      I1 => sample_cnt(11),
      I2 => sample_cnt(8),
      I3 => sample_cnt(9),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => sample_cnt(12),
      O => \FSM_onehot_state[2]_i_3_n_0\
    );
\FSM_onehot_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => sample_cnt(4),
      I1 => sample_cnt(5),
      I2 => sample_cnt(2),
      I3 => sample_cnt(3),
      I4 => sample_cnt(7),
      I5 => sample_cnt(6),
      O => \FSM_onehot_state[2]_i_4_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => clk_divider_inst_n_3,
      PRE => clk_divider_inst_n_11,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      CLR => clk_divider_inst_n_11,
      D => clk_divider_inst_n_2,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      CLR => clk_divider_inst_n_11,
      D => clk_divider_inst_n_0,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
clk_divider_inst: entity work.design_1_waveform_measure_0_0_clk_divider
     port map (
      CO(0) => \v_max_temp0_carry__0_n_0\,
      E(0) => sample_cnt_0,
      \FSM_onehot_state_reg[1]\ => clk_divider_inst_n_0,
      \FSM_onehot_state_reg[1]_0\(0) => clk_divider_inst_n_5,
      \FSM_onehot_state_reg[1]_1\(0) => clk_divider_inst_n_6,
      \FSM_onehot_state_reg[1]_2\(0) => clk_divider_inst_n_7,
      \FSM_onehot_state_reg[1]_3\ => clk_divider_inst_n_10,
      \FSM_onehot_state_reg[2]\(0) => clk_divider_inst_n_8,
      \FSM_onehot_state_reg[2]_0\ => \FSM_onehot_state_reg_n_0_[1]\,
      \FSM_onehot_state_reg[2]_1\ => \FSM_onehot_state_reg_n_0_[0]\,
      \FSM_onehot_state_reg[2]_2\ => \FSM_onehot_state_reg_n_0_[2]\,
      \FSM_onehot_state_reg[2]_3\ => \FSM_onehot_state[2]_i_2_n_0\,
      measurement_started_reg => measurement_started_reg_n_0,
      rst_n => rst_n,
      rst_n_0 => clk_divider_inst_n_11,
      sample_clk => sample_clk,
      sample_clk_d1 => sample_clk_d1,
      sample_clk_d1_reg => clk_divider_inst_n_2,
      sample_clk_d1_reg_0 => clk_divider_inst_n_3,
      sample_clk_d1_reg_1(0) => signal_dc_removed0,
      signal_rectified => signal_rectified,
      signal_rectified_d1 => signal_rectified_d1,
      sys_clk => sys_clk,
      \v_min_temp_reg[0]\(0) => \v_min_temp0_carry__0_n_0\
    );
\data_in_synced_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_clk,
      CLR => clk_divider_inst_n_11,
      D => data_in(0),
      Q => data_in_synced(0)
    );
\data_in_synced_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_clk,
      CLR => clk_divider_inst_n_11,
      D => data_in(10),
      Q => data_in_synced(10)
    );
\data_in_synced_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_clk,
      CLR => clk_divider_inst_n_11,
      D => data_in(11),
      Q => data_in_synced(11)
    );
\data_in_synced_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_clk,
      CLR => clk_divider_inst_n_11,
      D => data_in(12),
      Q => data_in_synced(12)
    );
\data_in_synced_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_clk,
      CLR => clk_divider_inst_n_11,
      D => data_in(13),
      Q => data_in_synced(13)
    );
\data_in_synced_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_clk,
      CLR => clk_divider_inst_n_11,
      D => data_in(14),
      Q => data_in_synced(14)
    );
\data_in_synced_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_clk,
      CLR => clk_divider_inst_n_11,
      D => data_in(15),
      Q => data_in_synced(15)
    );
\data_in_synced_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_clk,
      CLR => clk_divider_inst_n_11,
      D => data_in(1),
      Q => data_in_synced(1)
    );
\data_in_synced_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_clk,
      CLR => clk_divider_inst_n_11,
      D => data_in(2),
      Q => data_in_synced(2)
    );
\data_in_synced_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_clk,
      CLR => clk_divider_inst_n_11,
      D => data_in(3),
      Q => data_in_synced(3)
    );
\data_in_synced_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_clk,
      CLR => clk_divider_inst_n_11,
      D => data_in(4),
      Q => data_in_synced(4)
    );
\data_in_synced_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_clk,
      CLR => clk_divider_inst_n_11,
      D => data_in(5),
      Q => data_in_synced(5)
    );
\data_in_synced_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_clk,
      CLR => clk_divider_inst_n_11,
      D => data_in(6),
      Q => data_in_synced(6)
    );
\data_in_synced_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_clk,
      CLR => clk_divider_inst_n_11,
      D => data_in(7),
      Q => data_in_synced(7)
    );
\data_in_synced_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_clk,
      CLR => clk_divider_inst_n_11,
      D => data_in(8),
      Q => data_in_synced(8)
    );
\data_in_synced_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_clk,
      CLR => clk_divider_inst_n_11,
      D => data_in(9),
      Q => data_in_synced(9)
    );
data_squared: unisim.vcomponents.DSP48E1
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
      A(29) => \^q\(15),
      A(28) => \^q\(15),
      A(27) => \^q\(15),
      A(26) => \^q\(15),
      A(25) => \^q\(15),
      A(24) => \^q\(15),
      A(23) => \^q\(15),
      A(22) => \^q\(15),
      A(21) => \^q\(15),
      A(20) => \^q\(15),
      A(19) => \^q\(15),
      A(18) => \^q\(15),
      A(17) => \^q\(15),
      A(16) => \^q\(15),
      A(15 downto 0) => \^q\(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_data_squared_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \^q\(15),
      B(16) => \^q\(15),
      B(15 downto 0) => \^q\(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_data_squared_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_data_squared_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_data_squared_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_data_squared_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_data_squared_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_data_squared_P_UNCONNECTED(47 downto 32),
      P(31 downto 0) => \data_squared__0\(31 downto 0),
      PATTERNBDETECT => NLW_data_squared_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_data_squared_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_data_squared_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_data_squared_UNDERFLOW_UNCONNECTED
    );
\dc_offset_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => p_0_in(0),
      Q => dc_offset(0)
    );
\dc_offset_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => p_0_in(10),
      Q => dc_offset(10)
    );
\dc_offset_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => p_0_in(11),
      Q => dc_offset(11)
    );
\dc_offset_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => p_0_in(12),
      Q => dc_offset(12)
    );
\dc_offset_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => p_0_in(13),
      Q => dc_offset(13)
    );
\dc_offset_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => p_0_in(14),
      Q => dc_offset(14)
    );
\dc_offset_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => p_0_in(15),
      Q => dc_offset(15)
    );
\dc_offset_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => p_0_in(1),
      Q => dc_offset(1)
    );
\dc_offset_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => p_0_in(2),
      Q => dc_offset(2)
    );
\dc_offset_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => p_0_in(3),
      Q => dc_offset(3)
    );
\dc_offset_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => p_0_in(4),
      Q => dc_offset(4)
    );
\dc_offset_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => p_0_in(5),
      Q => dc_offset(5)
    );
\dc_offset_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => p_0_in(6),
      Q => dc_offset(6)
    );
\dc_offset_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => p_0_in(7),
      Q => dc_offset(7)
    );
\dc_offset_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => p_0_in(8),
      Q => dc_offset(8)
    );
\dc_offset_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => p_0_in(9),
      Q => dc_offset(9)
    );
final_period_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => final_period_cnt0_carry_n_0,
      CO(2) => final_period_cnt0_carry_n_1,
      CO(1) => final_period_cnt0_carry_n_2,
      CO(0) => final_period_cnt0_carry_n_3,
      CYINIT => period_cnt_temp(0),
      DI(3 downto 0) => period_cnt_temp(4 downto 1),
      O(3 downto 0) => in10(4 downto 1),
      S(3) => final_period_cnt0_carry_i_1_n_0,
      S(2) => final_period_cnt0_carry_i_2_n_0,
      S(1) => final_period_cnt0_carry_i_3_n_0,
      S(0) => final_period_cnt0_carry_i_4_n_0
    );
\final_period_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => final_period_cnt0_carry_n_0,
      CO(3) => \final_period_cnt0_carry__0_n_0\,
      CO(2) => \final_period_cnt0_carry__0_n_1\,
      CO(1) => \final_period_cnt0_carry__0_n_2\,
      CO(0) => \final_period_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => period_cnt_temp(8 downto 5),
      O(3 downto 0) => in10(8 downto 5),
      S(3) => \final_period_cnt0_carry__0_i_1_n_0\,
      S(2) => \final_period_cnt0_carry__0_i_2_n_0\,
      S(1) => \final_period_cnt0_carry__0_i_3_n_0\,
      S(0) => \final_period_cnt0_carry__0_i_4_n_0\
    );
\final_period_cnt0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt_temp(8),
      O => \final_period_cnt0_carry__0_i_1_n_0\
    );
\final_period_cnt0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt_temp(7),
      O => \final_period_cnt0_carry__0_i_2_n_0\
    );
\final_period_cnt0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt_temp(6),
      O => \final_period_cnt0_carry__0_i_3_n_0\
    );
\final_period_cnt0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt_temp(5),
      O => \final_period_cnt0_carry__0_i_4_n_0\
    );
\final_period_cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \final_period_cnt0_carry__0_n_0\,
      CO(3) => \final_period_cnt0_carry__1_n_0\,
      CO(2) => \final_period_cnt0_carry__1_n_1\,
      CO(1) => \final_period_cnt0_carry__1_n_2\,
      CO(0) => \final_period_cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => period_cnt_temp(12 downto 9),
      O(3 downto 0) => in10(12 downto 9),
      S(3) => \final_period_cnt0_carry__1_i_1_n_0\,
      S(2) => \final_period_cnt0_carry__1_i_2_n_0\,
      S(1) => \final_period_cnt0_carry__1_i_3_n_0\,
      S(0) => \final_period_cnt0_carry__1_i_4_n_0\
    );
\final_period_cnt0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt_temp(12),
      O => \final_period_cnt0_carry__1_i_1_n_0\
    );
\final_period_cnt0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt_temp(11),
      O => \final_period_cnt0_carry__1_i_2_n_0\
    );
\final_period_cnt0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt_temp(10),
      O => \final_period_cnt0_carry__1_i_3_n_0\
    );
\final_period_cnt0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt_temp(9),
      O => \final_period_cnt0_carry__1_i_4_n_0\
    );
\final_period_cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \final_period_cnt0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_final_period_cnt0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \final_period_cnt0_carry__2_n_2\,
      CO(0) => \final_period_cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => period_cnt_temp(14 downto 13),
      O(3) => \NLW_final_period_cnt0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => in10(15 downto 13),
      S(3) => '0',
      S(2) => \final_period_cnt0_carry__2_i_1_n_0\,
      S(1) => \final_period_cnt0_carry__2_i_2_n_0\,
      S(0) => \final_period_cnt0_carry__2_i_3_n_0\
    );
\final_period_cnt0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt_temp(15),
      O => \final_period_cnt0_carry__2_i_1_n_0\
    );
\final_period_cnt0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt_temp(14),
      O => \final_period_cnt0_carry__2_i_2_n_0\
    );
\final_period_cnt0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt_temp(13),
      O => \final_period_cnt0_carry__2_i_3_n_0\
    );
final_period_cnt0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt_temp(4),
      O => final_period_cnt0_carry_i_1_n_0
    );
final_period_cnt0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt_temp(3),
      O => final_period_cnt0_carry_i_2_n_0
    );
final_period_cnt0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt_temp(2),
      O => final_period_cnt0_carry_i_3_n_0
    );
final_period_cnt0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_cnt_temp(1),
      O => final_period_cnt0_carry_i_4_n_0
    );
\final_period_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => period_cnt_temp(0),
      O => \final_period_cnt[0]_i_1_n_0\
    );
\final_period_cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in10(10),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \final_period_cnt[10]_i_1_n_0\
    );
\final_period_cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in10(11),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \final_period_cnt[11]_i_1_n_0\
    );
\final_period_cnt[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in10(12),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \final_period_cnt[12]_i_1_n_0\
    );
\final_period_cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in10(13),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \final_period_cnt[13]_i_1_n_0\
    );
\final_period_cnt[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in10(14),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \final_period_cnt[14]_i_1_n_0\
    );
\final_period_cnt[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => measurement_started_reg_n_0,
      I1 => signal_rectified_d1,
      I2 => signal_rectified,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \final_period_cnt[15]_i_1_n_0\
    );
\final_period_cnt[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in10(15),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \final_period_cnt[15]_i_2_n_0\
    );
\final_period_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in10(1),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \final_period_cnt[1]_i_1_n_0\
    );
\final_period_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in10(2),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \final_period_cnt[2]_i_1_n_0\
    );
\final_period_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in10(3),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \final_period_cnt[3]_i_1_n_0\
    );
\final_period_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in10(4),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \final_period_cnt[4]_i_1_n_0\
    );
\final_period_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in10(5),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \final_period_cnt[5]_i_1_n_0\
    );
\final_period_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in10(6),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \final_period_cnt[6]_i_1_n_0\
    );
\final_period_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in10(7),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \final_period_cnt[7]_i_1_n_0\
    );
\final_period_cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in10(8),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \final_period_cnt[8]_i_1_n_0\
    );
\final_period_cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in10(9),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \final_period_cnt[9]_i_1_n_0\
    );
\final_period_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \final_period_cnt[15]_i_1_n_0\,
      CLR => clk_divider_inst_n_11,
      D => \final_period_cnt[0]_i_1_n_0\,
      Q => final_period_cnt(0)
    );
\final_period_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \final_period_cnt[15]_i_1_n_0\,
      CLR => clk_divider_inst_n_11,
      D => \final_period_cnt[10]_i_1_n_0\,
      Q => final_period_cnt(10)
    );
\final_period_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \final_period_cnt[15]_i_1_n_0\,
      CLR => clk_divider_inst_n_11,
      D => \final_period_cnt[11]_i_1_n_0\,
      Q => final_period_cnt(11)
    );
\final_period_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \final_period_cnt[15]_i_1_n_0\,
      CLR => clk_divider_inst_n_11,
      D => \final_period_cnt[12]_i_1_n_0\,
      Q => final_period_cnt(12)
    );
\final_period_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \final_period_cnt[15]_i_1_n_0\,
      CLR => clk_divider_inst_n_11,
      D => \final_period_cnt[13]_i_1_n_0\,
      Q => final_period_cnt(13)
    );
\final_period_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \final_period_cnt[15]_i_1_n_0\,
      CLR => clk_divider_inst_n_11,
      D => \final_period_cnt[14]_i_1_n_0\,
      Q => final_period_cnt(14)
    );
\final_period_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \final_period_cnt[15]_i_1_n_0\,
      CLR => clk_divider_inst_n_11,
      D => \final_period_cnt[15]_i_2_n_0\,
      Q => final_period_cnt(15)
    );
\final_period_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \final_period_cnt[15]_i_1_n_0\,
      CLR => clk_divider_inst_n_11,
      D => \final_period_cnt[1]_i_1_n_0\,
      Q => final_period_cnt(1)
    );
\final_period_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \final_period_cnt[15]_i_1_n_0\,
      CLR => clk_divider_inst_n_11,
      D => \final_period_cnt[2]_i_1_n_0\,
      Q => final_period_cnt(2)
    );
\final_period_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \final_period_cnt[15]_i_1_n_0\,
      CLR => clk_divider_inst_n_11,
      D => \final_period_cnt[3]_i_1_n_0\,
      Q => final_period_cnt(3)
    );
\final_period_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \final_period_cnt[15]_i_1_n_0\,
      CLR => clk_divider_inst_n_11,
      D => \final_period_cnt[4]_i_1_n_0\,
      Q => final_period_cnt(4)
    );
\final_period_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \final_period_cnt[15]_i_1_n_0\,
      CLR => clk_divider_inst_n_11,
      D => \final_period_cnt[5]_i_1_n_0\,
      Q => final_period_cnt(5)
    );
\final_period_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \final_period_cnt[15]_i_1_n_0\,
      CLR => clk_divider_inst_n_11,
      D => \final_period_cnt[6]_i_1_n_0\,
      Q => final_period_cnt(6)
    );
\final_period_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \final_period_cnt[15]_i_1_n_0\,
      CLR => clk_divider_inst_n_11,
      D => \final_period_cnt[7]_i_1_n_0\,
      Q => final_period_cnt(7)
    );
\final_period_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \final_period_cnt[15]_i_1_n_0\,
      CLR => clk_divider_inst_n_11,
      D => \final_period_cnt[8]_i_1_n_0\,
      Q => final_period_cnt(8)
    );
\final_period_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \final_period_cnt[15]_i_1_n_0\,
      CLR => clk_divider_inst_n_11,
      D => \final_period_cnt[9]_i_1_n_0\,
      Q => final_period_cnt(9)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_synced(7),
      I1 => dc_offset(7),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_synced(6),
      I1 => dc_offset(6),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_synced(5),
      I1 => dc_offset(5),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_synced(4),
      I1 => dc_offset(4),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_synced(11),
      I1 => dc_offset(11),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_synced(10),
      I1 => dc_offset(10),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_synced(9),
      I1 => dc_offset(9),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_synced(8),
      I1 => dc_offset(8),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_synced(15),
      I1 => dc_offset(15),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_synced(14),
      I1 => dc_offset(14),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_synced(13),
      I1 => dc_offset(13),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_synced(12),
      I1 => dc_offset(12),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_synced(3),
      I1 => dc_offset(3),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_synced(2),
      I1 => dc_offset(2),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_synced(1),
      I1 => dc_offset(1),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_synced(0),
      I1 => dc_offset(0),
      O => \i__carry_i_4_n_0\
    );
\mean_square_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[13]\,
      Q => mean_square(0)
    );
\mean_square_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[23]\,
      Q => mean_square(10)
    );
\mean_square_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[24]\,
      Q => mean_square(11)
    );
\mean_square_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[25]\,
      Q => mean_square(12)
    );
\mean_square_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[26]\,
      Q => mean_square(13)
    );
\mean_square_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[27]\,
      Q => mean_square(14)
    );
\mean_square_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[28]\,
      Q => mean_square(15)
    );
\mean_square_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[29]\,
      Q => mean_square(16)
    );
\mean_square_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[30]\,
      Q => mean_square(17)
    );
\mean_square_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[31]\,
      Q => mean_square(18)
    );
\mean_square_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[32]\,
      Q => mean_square(19)
    );
\mean_square_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[14]\,
      Q => mean_square(1)
    );
\mean_square_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[33]\,
      Q => mean_square(20)
    );
\mean_square_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[34]\,
      Q => mean_square(21)
    );
\mean_square_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[35]\,
      Q => mean_square(22)
    );
\mean_square_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[36]\,
      Q => mean_square(23)
    );
\mean_square_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[37]\,
      Q => mean_square(24)
    );
\mean_square_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[38]\,
      Q => mean_square(25)
    );
\mean_square_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[39]\,
      Q => mean_square(26)
    );
\mean_square_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[40]\,
      Q => mean_square(27)
    );
\mean_square_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[41]\,
      Q => mean_square(28)
    );
\mean_square_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[42]\,
      Q => mean_square(29)
    );
\mean_square_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[15]\,
      Q => mean_square(2)
    );
\mean_square_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[43]\,
      Q => mean_square(30)
    );
\mean_square_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[44]\,
      Q => mean_square(31)
    );
\mean_square_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[16]\,
      Q => mean_square(3)
    );
\mean_square_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[17]\,
      Q => mean_square(4)
    );
\mean_square_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[18]\,
      Q => mean_square(5)
    );
\mean_square_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[19]\,
      Q => mean_square(6)
    );
\mean_square_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[20]\,
      Q => mean_square(7)
    );
\mean_square_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[21]\,
      Q => mean_square(8)
    );
\mean_square_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => \sum_of_squares_reg_n_0_[22]\,
      Q => mean_square(9)
    );
measure_done_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => clk_divider_inst_n_11,
      D => \FSM_onehot_state_reg_n_0_[2]\,
      Q => measure_done
    );
measurement_started_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => clk_divider_inst_n_11,
      D => clk_divider_inst_n_10,
      Q => measurement_started_reg_n_0
    );
\period_cnt_temp[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"13"
    )
        port map (
      I0 => period_cnt_temp(0),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => measurement_started_reg_n_0,
      O => period_cnt_temp_1(0)
    );
\period_cnt_temp[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => measurement_started_reg_n_0,
      I2 => period_cnt_temp0(10),
      O => period_cnt_temp_1(10)
    );
\period_cnt_temp[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => measurement_started_reg_n_0,
      I2 => period_cnt_temp0(11),
      O => period_cnt_temp_1(11)
    );
\period_cnt_temp[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => measurement_started_reg_n_0,
      I2 => period_cnt_temp0(12),
      O => period_cnt_temp_1(12)
    );
\period_cnt_temp[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => measurement_started_reg_n_0,
      I2 => period_cnt_temp0(13),
      O => period_cnt_temp_1(13)
    );
\period_cnt_temp[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => measurement_started_reg_n_0,
      I2 => period_cnt_temp0(14),
      O => period_cnt_temp_1(14)
    );
\period_cnt_temp[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => measurement_started_reg_n_0,
      I2 => period_cnt_temp0(15),
      O => period_cnt_temp_1(15)
    );
\period_cnt_temp[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => measurement_started_reg_n_0,
      I2 => period_cnt_temp0(1),
      O => period_cnt_temp_1(1)
    );
\period_cnt_temp[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => measurement_started_reg_n_0,
      I2 => period_cnt_temp0(2),
      O => period_cnt_temp_1(2)
    );
\period_cnt_temp[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => measurement_started_reg_n_0,
      I2 => period_cnt_temp0(3),
      O => period_cnt_temp_1(3)
    );
\period_cnt_temp[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => measurement_started_reg_n_0,
      I2 => period_cnt_temp0(4),
      O => period_cnt_temp_1(4)
    );
\period_cnt_temp[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => measurement_started_reg_n_0,
      I2 => period_cnt_temp0(5),
      O => period_cnt_temp_1(5)
    );
\period_cnt_temp[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => measurement_started_reg_n_0,
      I2 => period_cnt_temp0(6),
      O => period_cnt_temp_1(6)
    );
\period_cnt_temp[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => measurement_started_reg_n_0,
      I2 => period_cnt_temp0(7),
      O => period_cnt_temp_1(7)
    );
\period_cnt_temp[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => measurement_started_reg_n_0,
      I2 => period_cnt_temp0(8),
      O => period_cnt_temp_1(8)
    );
\period_cnt_temp[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => measurement_started_reg_n_0,
      I2 => period_cnt_temp0(9),
      O => period_cnt_temp_1(9)
    );
\period_cnt_temp_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_8,
      CLR => clk_divider_inst_n_11,
      D => period_cnt_temp_1(0),
      Q => period_cnt_temp(0)
    );
\period_cnt_temp_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_8,
      CLR => clk_divider_inst_n_11,
      D => period_cnt_temp_1(10),
      Q => period_cnt_temp(10)
    );
\period_cnt_temp_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_8,
      CLR => clk_divider_inst_n_11,
      D => period_cnt_temp_1(11),
      Q => period_cnt_temp(11)
    );
\period_cnt_temp_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_8,
      CLR => clk_divider_inst_n_11,
      D => period_cnt_temp_1(12),
      Q => period_cnt_temp(12)
    );
\period_cnt_temp_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \period_cnt_temp_reg[8]_i_2_n_0\,
      CO(3) => \period_cnt_temp_reg[12]_i_2_n_0\,
      CO(2) => \period_cnt_temp_reg[12]_i_2_n_1\,
      CO(1) => \period_cnt_temp_reg[12]_i_2_n_2\,
      CO(0) => \period_cnt_temp_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => period_cnt_temp0(12 downto 9),
      S(3 downto 0) => period_cnt_temp(12 downto 9)
    );
\period_cnt_temp_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_8,
      CLR => clk_divider_inst_n_11,
      D => period_cnt_temp_1(13),
      Q => period_cnt_temp(13)
    );
\period_cnt_temp_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_8,
      CLR => clk_divider_inst_n_11,
      D => period_cnt_temp_1(14),
      Q => period_cnt_temp(14)
    );
\period_cnt_temp_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_8,
      CLR => clk_divider_inst_n_11,
      D => period_cnt_temp_1(15),
      Q => period_cnt_temp(15)
    );
\period_cnt_temp_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \period_cnt_temp_reg[12]_i_2_n_0\,
      CO(3 downto 2) => \NLW_period_cnt_temp_reg[15]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \period_cnt_temp_reg[15]_i_3_n_2\,
      CO(0) => \period_cnt_temp_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_period_cnt_temp_reg[15]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => period_cnt_temp0(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => period_cnt_temp(15 downto 13)
    );
\period_cnt_temp_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_8,
      CLR => clk_divider_inst_n_11,
      D => period_cnt_temp_1(1),
      Q => period_cnt_temp(1)
    );
\period_cnt_temp_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_8,
      CLR => clk_divider_inst_n_11,
      D => period_cnt_temp_1(2),
      Q => period_cnt_temp(2)
    );
\period_cnt_temp_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_8,
      CLR => clk_divider_inst_n_11,
      D => period_cnt_temp_1(3),
      Q => period_cnt_temp(3)
    );
\period_cnt_temp_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_8,
      CLR => clk_divider_inst_n_11,
      D => period_cnt_temp_1(4),
      Q => period_cnt_temp(4)
    );
\period_cnt_temp_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \period_cnt_temp_reg[4]_i_2_n_0\,
      CO(2) => \period_cnt_temp_reg[4]_i_2_n_1\,
      CO(1) => \period_cnt_temp_reg[4]_i_2_n_2\,
      CO(0) => \period_cnt_temp_reg[4]_i_2_n_3\,
      CYINIT => period_cnt_temp(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => period_cnt_temp0(4 downto 1),
      S(3 downto 0) => period_cnt_temp(4 downto 1)
    );
\period_cnt_temp_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_8,
      CLR => clk_divider_inst_n_11,
      D => period_cnt_temp_1(5),
      Q => period_cnt_temp(5)
    );
\period_cnt_temp_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_8,
      CLR => clk_divider_inst_n_11,
      D => period_cnt_temp_1(6),
      Q => period_cnt_temp(6)
    );
\period_cnt_temp_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_8,
      CLR => clk_divider_inst_n_11,
      D => period_cnt_temp_1(7),
      Q => period_cnt_temp(7)
    );
\period_cnt_temp_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_8,
      CLR => clk_divider_inst_n_11,
      D => period_cnt_temp_1(8),
      Q => period_cnt_temp(8)
    );
\period_cnt_temp_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \period_cnt_temp_reg[4]_i_2_n_0\,
      CO(3) => \period_cnt_temp_reg[8]_i_2_n_0\,
      CO(2) => \period_cnt_temp_reg[8]_i_2_n_1\,
      CO(1) => \period_cnt_temp_reg[8]_i_2_n_2\,
      CO(0) => \period_cnt_temp_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => period_cnt_temp0(8 downto 5),
      S(3 downto 0) => period_cnt_temp(8 downto 5)
    );
\period_cnt_temp_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_8,
      CLR => clk_divider_inst_n_11,
      D => period_cnt_temp_1(9),
      Q => period_cnt_temp(9)
    );
\period_sample_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => final_period_cnt(0),
      Q => period_sample_cnt(0)
    );
\period_sample_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => final_period_cnt(10),
      Q => period_sample_cnt(10)
    );
\period_sample_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => final_period_cnt(11),
      Q => period_sample_cnt(11)
    );
\period_sample_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => final_period_cnt(12),
      Q => period_sample_cnt(12)
    );
\period_sample_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => final_period_cnt(13),
      Q => period_sample_cnt(13)
    );
\period_sample_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => final_period_cnt(14),
      Q => period_sample_cnt(14)
    );
\period_sample_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => final_period_cnt(15),
      Q => period_sample_cnt(15)
    );
\period_sample_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => final_period_cnt(1),
      Q => period_sample_cnt(1)
    );
\period_sample_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => final_period_cnt(2),
      Q => period_sample_cnt(2)
    );
\period_sample_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => final_period_cnt(3),
      Q => period_sample_cnt(3)
    );
\period_sample_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => final_period_cnt(4),
      Q => period_sample_cnt(4)
    );
\period_sample_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => final_period_cnt(5),
      Q => period_sample_cnt(5)
    );
\period_sample_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => final_period_cnt(6),
      Q => period_sample_cnt(6)
    );
\period_sample_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => final_period_cnt(7),
      Q => period_sample_cnt(7)
    );
\period_sample_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => final_period_cnt(8),
      Q => period_sample_cnt(8)
    );
\period_sample_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => final_period_cnt(9),
      Q => period_sample_cnt(9)
    );
sample_clk_d1_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => clk_divider_inst_n_11,
      D => sample_clk,
      Q => sample_clk_d1
    );
sample_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sample_cnt0_carry_n_0,
      CO(2) => sample_cnt0_carry_n_1,
      CO(1) => sample_cnt0_carry_n_2,
      CO(0) => sample_cnt0_carry_n_3,
      CYINIT => sample_cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in17(4 downto 1),
      S(3 downto 0) => sample_cnt(4 downto 1)
    );
\sample_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sample_cnt0_carry_n_0,
      CO(3) => \sample_cnt0_carry__0_n_0\,
      CO(2) => \sample_cnt0_carry__0_n_1\,
      CO(1) => \sample_cnt0_carry__0_n_2\,
      CO(0) => \sample_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in17(8 downto 5),
      S(3 downto 0) => sample_cnt(8 downto 5)
    );
\sample_cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_cnt0_carry__0_n_0\,
      CO(3) => \NLW_sample_cnt0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \sample_cnt0_carry__1_n_1\,
      CO(1) => \sample_cnt0_carry__1_n_2\,
      CO(0) => \sample_cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in17(12 downto 9),
      S(3 downto 0) => sample_cnt(12 downto 9)
    );
\sample_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => sample_cnt(0),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \sample_cnt[0]_i_1_n_0\
    );
\sample_cnt[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in17(10),
      O => \sample_cnt[10]_i_1_n_0\
    );
\sample_cnt[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in17(11),
      O => \sample_cnt[11]_i_1_n_0\
    );
\sample_cnt[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in17(12),
      O => \sample_cnt[12]_i_2_n_0\
    );
\sample_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in17(1),
      O => \sample_cnt[1]_i_1_n_0\
    );
\sample_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in17(2),
      O => \sample_cnt[2]_i_1_n_0\
    );
\sample_cnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in17(3),
      O => \sample_cnt[3]_i_1_n_0\
    );
\sample_cnt[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in17(4),
      O => \sample_cnt[4]_i_1_n_0\
    );
\sample_cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in17(5),
      O => \sample_cnt[5]_i_1_n_0\
    );
\sample_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in17(6),
      O => \sample_cnt[6]_i_1_n_0\
    );
\sample_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in17(7),
      O => \sample_cnt[7]_i_1_n_0\
    );
\sample_cnt[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in17(8),
      O => \sample_cnt[8]_i_1_n_0\
    );
\sample_cnt[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in17(9),
      O => \sample_cnt[9]_i_1_n_0\
    );
\sample_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_cnt_0,
      CLR => clk_divider_inst_n_11,
      D => \sample_cnt[0]_i_1_n_0\,
      Q => sample_cnt(0)
    );
\sample_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_cnt_0,
      CLR => clk_divider_inst_n_11,
      D => \sample_cnt[10]_i_1_n_0\,
      Q => sample_cnt(10)
    );
\sample_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_cnt_0,
      CLR => clk_divider_inst_n_11,
      D => \sample_cnt[11]_i_1_n_0\,
      Q => sample_cnt(11)
    );
\sample_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_cnt_0,
      CLR => clk_divider_inst_n_11,
      D => \sample_cnt[12]_i_2_n_0\,
      Q => sample_cnt(12)
    );
\sample_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_cnt_0,
      CLR => clk_divider_inst_n_11,
      D => \sample_cnt[1]_i_1_n_0\,
      Q => sample_cnt(1)
    );
\sample_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_cnt_0,
      CLR => clk_divider_inst_n_11,
      D => \sample_cnt[2]_i_1_n_0\,
      Q => sample_cnt(2)
    );
\sample_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_cnt_0,
      CLR => clk_divider_inst_n_11,
      D => \sample_cnt[3]_i_1_n_0\,
      Q => sample_cnt(3)
    );
\sample_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_cnt_0,
      CLR => clk_divider_inst_n_11,
      D => \sample_cnt[4]_i_1_n_0\,
      Q => sample_cnt(4)
    );
\sample_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_cnt_0,
      CLR => clk_divider_inst_n_11,
      D => \sample_cnt[5]_i_1_n_0\,
      Q => sample_cnt(5)
    );
\sample_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_cnt_0,
      CLR => clk_divider_inst_n_11,
      D => \sample_cnt[6]_i_1_n_0\,
      Q => sample_cnt(6)
    );
\sample_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_cnt_0,
      CLR => clk_divider_inst_n_11,
      D => \sample_cnt[7]_i_1_n_0\,
      Q => sample_cnt(7)
    );
\sample_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_cnt_0,
      CLR => clk_divider_inst_n_11,
      D => \sample_cnt[8]_i_1_n_0\,
      Q => sample_cnt(8)
    );
\sample_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sample_cnt_0,
      CLR => clk_divider_inst_n_11,
      D => \sample_cnt[9]_i_1_n_0\,
      Q => sample_cnt(9)
    );
\signal_dc_removed0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \signal_dc_removed0_inferred__0/i__carry_n_0\,
      CO(2) => \signal_dc_removed0_inferred__0/i__carry_n_1\,
      CO(1) => \signal_dc_removed0_inferred__0/i__carry_n_2\,
      CO(0) => \signal_dc_removed0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => data_in_synced(3 downto 0),
      O(3 downto 0) => signal_dc_removed00_in(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\signal_dc_removed0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \signal_dc_removed0_inferred__0/i__carry_n_0\,
      CO(3) => \signal_dc_removed0_inferred__0/i__carry__0_n_0\,
      CO(2) => \signal_dc_removed0_inferred__0/i__carry__0_n_1\,
      CO(1) => \signal_dc_removed0_inferred__0/i__carry__0_n_2\,
      CO(0) => \signal_dc_removed0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_in_synced(7 downto 4),
      O(3 downto 0) => signal_dc_removed00_in(7 downto 4),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\signal_dc_removed0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \signal_dc_removed0_inferred__0/i__carry__0_n_0\,
      CO(3) => \signal_dc_removed0_inferred__0/i__carry__1_n_0\,
      CO(2) => \signal_dc_removed0_inferred__0/i__carry__1_n_1\,
      CO(1) => \signal_dc_removed0_inferred__0/i__carry__1_n_2\,
      CO(0) => \signal_dc_removed0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_in_synced(11 downto 8),
      O(3 downto 0) => signal_dc_removed00_in(11 downto 8),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\signal_dc_removed0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \signal_dc_removed0_inferred__0/i__carry__1_n_0\,
      CO(3) => \NLW_signal_dc_removed0_inferred__0/i__carry__2_CO_UNCONNECTED\(3),
      CO(2) => \signal_dc_removed0_inferred__0/i__carry__2_n_1\,
      CO(1) => \signal_dc_removed0_inferred__0/i__carry__2_n_2\,
      CO(0) => \signal_dc_removed0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => data_in_synced(14 downto 12),
      O(3 downto 0) => signal_dc_removed00_in(15 downto 12),
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\signal_dc_removed_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => signal_dc_removed0,
      CLR => clk_divider_inst_n_11,
      D => signal_dc_removed00_in(0),
      Q => \^q\(0)
    );
\signal_dc_removed_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => signal_dc_removed0,
      CLR => clk_divider_inst_n_11,
      D => signal_dc_removed00_in(10),
      Q => \^q\(10)
    );
\signal_dc_removed_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => signal_dc_removed0,
      CLR => clk_divider_inst_n_11,
      D => signal_dc_removed00_in(11),
      Q => \^q\(11)
    );
\signal_dc_removed_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => signal_dc_removed0,
      CLR => clk_divider_inst_n_11,
      D => signal_dc_removed00_in(12),
      Q => \^q\(12)
    );
\signal_dc_removed_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => signal_dc_removed0,
      CLR => clk_divider_inst_n_11,
      D => signal_dc_removed00_in(13),
      Q => \^q\(13)
    );
\signal_dc_removed_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => signal_dc_removed0,
      CLR => clk_divider_inst_n_11,
      D => signal_dc_removed00_in(14),
      Q => \^q\(14)
    );
\signal_dc_removed_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => signal_dc_removed0,
      CLR => clk_divider_inst_n_11,
      D => signal_dc_removed00_in(15),
      Q => \^q\(15)
    );
\signal_dc_removed_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => signal_dc_removed0,
      CLR => clk_divider_inst_n_11,
      D => signal_dc_removed00_in(1),
      Q => \^q\(1)
    );
\signal_dc_removed_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => signal_dc_removed0,
      CLR => clk_divider_inst_n_11,
      D => signal_dc_removed00_in(2),
      Q => \^q\(2)
    );
\signal_dc_removed_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => signal_dc_removed0,
      CLR => clk_divider_inst_n_11,
      D => signal_dc_removed00_in(3),
      Q => \^q\(3)
    );
\signal_dc_removed_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => signal_dc_removed0,
      CLR => clk_divider_inst_n_11,
      D => signal_dc_removed00_in(4),
      Q => \^q\(4)
    );
\signal_dc_removed_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => signal_dc_removed0,
      CLR => clk_divider_inst_n_11,
      D => signal_dc_removed00_in(5),
      Q => \^q\(5)
    );
\signal_dc_removed_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => signal_dc_removed0,
      CLR => clk_divider_inst_n_11,
      D => signal_dc_removed00_in(6),
      Q => \^q\(6)
    );
\signal_dc_removed_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => signal_dc_removed0,
      CLR => clk_divider_inst_n_11,
      D => signal_dc_removed00_in(7),
      Q => \^q\(7)
    );
\signal_dc_removed_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => signal_dc_removed0,
      CLR => clk_divider_inst_n_11,
      D => signal_dc_removed00_in(8),
      Q => \^q\(8)
    );
\signal_dc_removed_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => signal_dc_removed0,
      CLR => clk_divider_inst_n_11,
      D => signal_dc_removed00_in(9),
      Q => \^q\(9)
    );
signal_rectified_d1_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => clk_divider_inst_n_11,
      D => signal_rectified,
      Q => signal_rectified_d1
    );
signal_rectified_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      O => signal_rectified_i_10_n_0
    );
signal_rectified_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      O => signal_rectified_i_11_n_0
    );
signal_rectified_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => signal_rectified_i_12_n_0
    );
signal_rectified_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => signal_rectified_i_13_n_0
    );
signal_rectified_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => signal_rectified_i_14_n_0
    );
signal_rectified_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      O => signal_rectified_i_15_n_0
    );
signal_rectified_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => signal_rectified_i_16_n_0
    );
signal_rectified_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => signal_rectified_i_17_n_0
    );
signal_rectified_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => signal_rectified_i_18_n_0
    );
signal_rectified_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^q\(15),
      O => signal_rectified_i_3_n_0
    );
signal_rectified_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(13),
      O => signal_rectified_i_4_n_0
    );
signal_rectified_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(11),
      O => signal_rectified_i_5_n_0
    );
signal_rectified_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      O => signal_rectified_i_6_n_0
    );
signal_rectified_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^q\(15),
      O => signal_rectified_i_7_n_0
    );
signal_rectified_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(13),
      O => signal_rectified_i_8_n_0
    );
signal_rectified_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(11),
      O => signal_rectified_i_9_n_0
    );
signal_rectified_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => clk_divider_inst_n_11,
      D => signal_rectified_reg_i_1_n_0,
      Q => signal_rectified
    );
signal_rectified_reg_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => signal_rectified_reg_i_2_n_0,
      CO(3) => signal_rectified_reg_i_1_n_0,
      CO(2) => signal_rectified_reg_i_1_n_1,
      CO(1) => signal_rectified_reg_i_1_n_2,
      CO(0) => signal_rectified_reg_i_1_n_3,
      CYINIT => '0',
      DI(3) => signal_rectified_i_3_n_0,
      DI(2) => signal_rectified_i_4_n_0,
      DI(1) => signal_rectified_i_5_n_0,
      DI(0) => signal_rectified_i_6_n_0,
      O(3 downto 0) => NLW_signal_rectified_reg_i_1_O_UNCONNECTED(3 downto 0),
      S(3) => signal_rectified_i_7_n_0,
      S(2) => signal_rectified_i_8_n_0,
      S(1) => signal_rectified_i_9_n_0,
      S(0) => signal_rectified_i_10_n_0
    );
signal_rectified_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => signal_rectified_reg_i_2_n_0,
      CO(2) => signal_rectified_reg_i_2_n_1,
      CO(1) => signal_rectified_reg_i_2_n_2,
      CO(0) => signal_rectified_reg_i_2_n_3,
      CYINIT => '0',
      DI(3) => signal_rectified_i_11_n_0,
      DI(2) => signal_rectified_i_12_n_0,
      DI(1) => signal_rectified_i_13_n_0,
      DI(0) => signal_rectified_i_14_n_0,
      O(3 downto 0) => NLW_signal_rectified_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => signal_rectified_i_15_n_0,
      S(2) => signal_rectified_i_16_n_0,
      S(1) => signal_rectified_i_17_n_0,
      S(0) => signal_rectified_i_18_n_0
    );
sum0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sum0_carry_n_0,
      CO(2) => sum0_carry_n_1,
      CO(1) => sum0_carry_n_2,
      CO(0) => sum0_carry_n_3,
      CYINIT => '0',
      DI(3) => \sum_reg_n_0_[3]\,
      DI(2) => \sum_reg_n_0_[2]\,
      DI(1) => \sum_reg_n_0_[1]\,
      DI(0) => \sum_reg_n_0_[0]\,
      O(3 downto 0) => in8(3 downto 0),
      S(3) => sum0_carry_i_1_n_0,
      S(2) => sum0_carry_i_2_n_0,
      S(1) => sum0_carry_i_3_n_0,
      S(0) => sum0_carry_i_4_n_0
    );
\sum0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sum0_carry_n_0,
      CO(3) => \sum0_carry__0_n_0\,
      CO(2) => \sum0_carry__0_n_1\,
      CO(1) => \sum0_carry__0_n_2\,
      CO(0) => \sum0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \sum_reg_n_0_[7]\,
      DI(2) => \sum_reg_n_0_[6]\,
      DI(1) => \sum_reg_n_0_[5]\,
      DI(0) => \sum_reg_n_0_[4]\,
      O(3 downto 0) => in8(7 downto 4),
      S(3) => \sum0_carry__0_i_1_n_0\,
      S(2) => \sum0_carry__0_i_2_n_0\,
      S(1) => \sum0_carry__0_i_3_n_0\,
      S(0) => \sum0_carry__0_i_4_n_0\
    );
\sum0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[7]\,
      I1 => data_in_synced(7),
      O => \sum0_carry__0_i_1_n_0\
    );
\sum0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[6]\,
      I1 => data_in_synced(6),
      O => \sum0_carry__0_i_2_n_0\
    );
\sum0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[5]\,
      I1 => data_in_synced(5),
      O => \sum0_carry__0_i_3_n_0\
    );
\sum0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[4]\,
      I1 => data_in_synced(4),
      O => \sum0_carry__0_i_4_n_0\
    );
\sum0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__0_n_0\,
      CO(3) => \sum0_carry__1_n_0\,
      CO(2) => \sum0_carry__1_n_1\,
      CO(1) => \sum0_carry__1_n_2\,
      CO(0) => \sum0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \sum_reg_n_0_[11]\,
      DI(2) => \sum_reg_n_0_[10]\,
      DI(1) => \sum_reg_n_0_[9]\,
      DI(0) => \sum_reg_n_0_[8]\,
      O(3 downto 0) => in8(11 downto 8),
      S(3) => \sum0_carry__1_i_1_n_0\,
      S(2) => \sum0_carry__1_i_2_n_0\,
      S(1) => \sum0_carry__1_i_3_n_0\,
      S(0) => \sum0_carry__1_i_4_n_0\
    );
\sum0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[11]\,
      I1 => data_in_synced(11),
      O => \sum0_carry__1_i_1_n_0\
    );
\sum0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[10]\,
      I1 => data_in_synced(10),
      O => \sum0_carry__1_i_2_n_0\
    );
\sum0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[9]\,
      I1 => data_in_synced(9),
      O => \sum0_carry__1_i_3_n_0\
    );
\sum0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[8]\,
      I1 => data_in_synced(8),
      O => \sum0_carry__1_i_4_n_0\
    );
\sum0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__1_n_0\,
      CO(3) => \sum0_carry__2_n_0\,
      CO(2) => \sum0_carry__2_n_1\,
      CO(1) => \sum0_carry__2_n_2\,
      CO(0) => \sum0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => data_in_synced(15),
      DI(2 downto 1) => p_0_in(1 downto 0),
      DI(0) => \sum_reg_n_0_[12]\,
      O(3 downto 0) => in8(15 downto 12),
      S(3) => \sum0_carry__2_i_1_n_0\,
      S(2) => \sum0_carry__2_i_2_n_0\,
      S(1) => \sum0_carry__2_i_3_n_0\,
      S(0) => \sum0_carry__2_i_4_n_0\
    );
\sum0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_in_synced(15),
      I1 => p_0_in(2),
      O => \sum0_carry__2_i_1_n_0\
    );
\sum0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(1),
      I1 => data_in_synced(14),
      O => \sum0_carry__2_i_2_n_0\
    );
\sum0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(0),
      I1 => data_in_synced(13),
      O => \sum0_carry__2_i_3_n_0\
    );
\sum0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[12]\,
      I1 => data_in_synced(12),
      O => \sum0_carry__2_i_4_n_0\
    );
\sum0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__2_n_0\,
      CO(3) => \sum0_carry__3_n_0\,
      CO(2) => \sum0_carry__3_n_1\,
      CO(1) => \sum0_carry__3_n_2\,
      CO(0) => \sum0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => p_0_in(5 downto 3),
      DI(0) => \sum0_carry__3_i_1_n_0\,
      O(3 downto 0) => in8(19 downto 16),
      S(3) => \sum0_carry__3_i_2_n_0\,
      S(2) => \sum0_carry__3_i_3_n_0\,
      S(1) => \sum0_carry__3_i_4_n_0\,
      S(0) => \sum0_carry__3_i_5_n_0\
    );
\sum0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in_synced(15),
      O => \sum0_carry__3_i_1_n_0\
    );
\sum0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(6),
      O => \sum0_carry__3_i_2_n_0\
    );
\sum0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(5),
      O => \sum0_carry__3_i_3_n_0\
    );
\sum0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(4),
      O => \sum0_carry__3_i_4_n_0\
    );
\sum0_carry__3_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_in_synced(15),
      I1 => p_0_in(3),
      O => \sum0_carry__3_i_5_n_0\
    );
\sum0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__3_n_0\,
      CO(3) => \sum0_carry__4_n_0\,
      CO(2) => \sum0_carry__4_n_1\,
      CO(1) => \sum0_carry__4_n_2\,
      CO(0) => \sum0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_0_in(9 downto 6),
      O(3 downto 0) => in8(23 downto 20),
      S(3) => \sum0_carry__4_i_1_n_0\,
      S(2) => \sum0_carry__4_i_2_n_0\,
      S(1) => \sum0_carry__4_i_3_n_0\,
      S(0) => \sum0_carry__4_i_4_n_0\
    );
\sum0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(9),
      I1 => p_0_in(10),
      O => \sum0_carry__4_i_1_n_0\
    );
\sum0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(8),
      I1 => p_0_in(9),
      O => \sum0_carry__4_i_2_n_0\
    );
\sum0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(7),
      I1 => p_0_in(8),
      O => \sum0_carry__4_i_3_n_0\
    );
\sum0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(6),
      I1 => p_0_in(7),
      O => \sum0_carry__4_i_4_n_0\
    );
\sum0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__4_n_0\,
      CO(3) => \sum0_carry__5_n_0\,
      CO(2) => \sum0_carry__5_n_1\,
      CO(1) => \sum0_carry__5_n_2\,
      CO(0) => \sum0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_0_in(13 downto 10),
      O(3 downto 0) => in8(27 downto 24),
      S(3) => \sum0_carry__5_i_1_n_0\,
      S(2) => \sum0_carry__5_i_2_n_0\,
      S(1) => \sum0_carry__5_i_3_n_0\,
      S(0) => \sum0_carry__5_i_4_n_0\
    );
\sum0_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(13),
      I1 => p_0_in(14),
      O => \sum0_carry__5_i_1_n_0\
    );
\sum0_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(12),
      I1 => p_0_in(13),
      O => \sum0_carry__5_i_2_n_0\
    );
\sum0_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(11),
      I1 => p_0_in(12),
      O => \sum0_carry__5_i_3_n_0\
    );
\sum0_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(10),
      I1 => p_0_in(11),
      O => \sum0_carry__5_i_4_n_0\
    );
\sum0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__5_n_0\,
      CO(3 downto 0) => \NLW_sum0_carry__6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_sum0_carry__6_O_UNCONNECTED\(3 downto 1),
      O(0) => in8(28),
      S(3 downto 1) => B"000",
      S(0) => \sum0_carry__6_i_1_n_0\
    );
\sum0_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(14),
      I1 => p_0_in(15),
      O => \sum0_carry__6_i_1_n_0\
    );
sum0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[3]\,
      I1 => data_in_synced(3),
      O => sum0_carry_i_1_n_0
    );
sum0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[2]\,
      I1 => data_in_synced(2),
      O => sum0_carry_i_2_n_0
    );
sum0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[1]\,
      I1 => data_in_synced(1),
      O => sum0_carry_i_3_n_0
    );
sum0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[0]\,
      I1 => data_in_synced(0),
      O => sum0_carry_i_4_n_0
    );
\sum[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in_synced(0),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in8(0),
      O => sum(0)
    );
\sum[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in_synced(10),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in8(10),
      O => sum(10)
    );
\sum[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in_synced(11),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in8(11),
      O => sum(11)
    );
\sum[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in_synced(12),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in8(12),
      O => sum(12)
    );
\sum[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in_synced(13),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in8(13),
      O => sum(13)
    );
\sum[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in_synced(14),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in8(14),
      O => sum(14)
    );
\sum[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in8(15),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => data_in_synced(15),
      O => sum(15)
    );
\sum[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in8(16),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => data_in_synced(15),
      O => sum(16)
    );
\sum[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in8(17),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => data_in_synced(15),
      O => sum(17)
    );
\sum[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in8(18),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => data_in_synced(15),
      O => sum(18)
    );
\sum[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in8(19),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => data_in_synced(15),
      O => sum(19)
    );
\sum[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in_synced(1),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in8(1),
      O => sum(1)
    );
\sum[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in8(20),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => data_in_synced(15),
      O => sum(20)
    );
\sum[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in8(21),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => data_in_synced(15),
      O => sum(21)
    );
\sum[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in8(22),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => data_in_synced(15),
      O => sum(22)
    );
\sum[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in8(23),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => data_in_synced(15),
      O => sum(23)
    );
\sum[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in8(24),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => data_in_synced(15),
      O => sum(24)
    );
\sum[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in8(25),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => data_in_synced(15),
      O => sum(25)
    );
\sum[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in8(26),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => data_in_synced(15),
      O => sum(26)
    );
\sum[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in8(27),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => data_in_synced(15),
      O => sum(27)
    );
\sum[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in8(28),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => data_in_synced(15),
      O => sum(28)
    );
\sum[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in_synced(2),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in8(2),
      O => sum(2)
    );
\sum[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in_synced(3),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in8(3),
      O => sum(3)
    );
\sum[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in_synced(4),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in8(4),
      O => sum(4)
    );
\sum[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in_synced(5),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in8(5),
      O => sum(5)
    );
\sum[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in_synced(6),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in8(6),
      O => sum(6)
    );
\sum[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in_synced(7),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in8(7),
      O => sum(7)
    );
\sum[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in_synced(8),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in8(8),
      O => sum(8)
    );
\sum[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in_synced(9),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => in8(9),
      O => sum(9)
    );
\sum_of_squares[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[11]\,
      I2 => \data_squared__0\(11),
      O => \sum_of_squares[11]_i_2_n_0\
    );
\sum_of_squares[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[10]\,
      I2 => \data_squared__0\(10),
      O => \sum_of_squares[11]_i_3_n_0\
    );
\sum_of_squares[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[9]\,
      I2 => \data_squared__0\(9),
      O => \sum_of_squares[11]_i_4_n_0\
    );
\sum_of_squares[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[8]\,
      I2 => \data_squared__0\(8),
      O => \sum_of_squares[11]_i_5_n_0\
    );
\sum_of_squares[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[15]\,
      I2 => \data_squared__0\(15),
      O => \sum_of_squares[15]_i_2_n_0\
    );
\sum_of_squares[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[14]\,
      I2 => \data_squared__0\(14),
      O => \sum_of_squares[15]_i_3_n_0\
    );
\sum_of_squares[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[13]\,
      I2 => \data_squared__0\(13),
      O => \sum_of_squares[15]_i_4_n_0\
    );
\sum_of_squares[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[12]\,
      I2 => \data_squared__0\(12),
      O => \sum_of_squares[15]_i_5_n_0\
    );
\sum_of_squares[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[19]\,
      I2 => \data_squared__0\(19),
      O => \sum_of_squares[19]_i_2_n_0\
    );
\sum_of_squares[19]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[18]\,
      I2 => \data_squared__0\(18),
      O => \sum_of_squares[19]_i_3_n_0\
    );
\sum_of_squares[19]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[17]\,
      I2 => \data_squared__0\(17),
      O => \sum_of_squares[19]_i_4_n_0\
    );
\sum_of_squares[19]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[16]\,
      I2 => \data_squared__0\(16),
      O => \sum_of_squares[19]_i_5_n_0\
    );
\sum_of_squares[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[23]\,
      I2 => \data_squared__0\(23),
      O => \sum_of_squares[23]_i_2_n_0\
    );
\sum_of_squares[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[22]\,
      I2 => \data_squared__0\(22),
      O => \sum_of_squares[23]_i_3_n_0\
    );
\sum_of_squares[23]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[21]\,
      I2 => \data_squared__0\(21),
      O => \sum_of_squares[23]_i_4_n_0\
    );
\sum_of_squares[23]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[20]\,
      I2 => \data_squared__0\(20),
      O => \sum_of_squares[23]_i_5_n_0\
    );
\sum_of_squares[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[27]\,
      I2 => \data_squared__0\(27),
      O => \sum_of_squares[27]_i_2_n_0\
    );
\sum_of_squares[27]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[26]\,
      I2 => \data_squared__0\(26),
      O => \sum_of_squares[27]_i_3_n_0\
    );
\sum_of_squares[27]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[25]\,
      I2 => \data_squared__0\(25),
      O => \sum_of_squares[27]_i_4_n_0\
    );
\sum_of_squares[27]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[24]\,
      I2 => \data_squared__0\(24),
      O => \sum_of_squares[27]_i_5_n_0\
    );
\sum_of_squares[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[31]\,
      I2 => \data_squared__0\(31),
      O => \sum_of_squares[31]_i_2_n_0\
    );
\sum_of_squares[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[30]\,
      I2 => \data_squared__0\(30),
      O => \sum_of_squares[31]_i_3_n_0\
    );
\sum_of_squares[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[29]\,
      I2 => \data_squared__0\(29),
      O => \sum_of_squares[31]_i_4_n_0\
    );
\sum_of_squares[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[28]\,
      I2 => \data_squared__0\(28),
      O => \sum_of_squares[31]_i_5_n_0\
    );
\sum_of_squares[35]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sum_of_squares_reg_n_0_[35]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \sum_of_squares[35]_i_2_n_0\
    );
\sum_of_squares[35]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sum_of_squares_reg_n_0_[34]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \sum_of_squares[35]_i_3_n_0\
    );
\sum_of_squares[35]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sum_of_squares_reg_n_0_[33]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \sum_of_squares[35]_i_4_n_0\
    );
\sum_of_squares[35]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sum_of_squares_reg_n_0_[32]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \sum_of_squares[35]_i_5_n_0\
    );
\sum_of_squares[39]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sum_of_squares_reg_n_0_[39]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \sum_of_squares[39]_i_2_n_0\
    );
\sum_of_squares[39]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sum_of_squares_reg_n_0_[38]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \sum_of_squares[39]_i_3_n_0\
    );
\sum_of_squares[39]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sum_of_squares_reg_n_0_[37]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \sum_of_squares[39]_i_4_n_0\
    );
\sum_of_squares[39]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sum_of_squares_reg_n_0_[36]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \sum_of_squares[39]_i_5_n_0\
    );
\sum_of_squares[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[3]\,
      I2 => \data_squared__0\(3),
      O => \sum_of_squares[3]_i_2_n_0\
    );
\sum_of_squares[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[2]\,
      I2 => \data_squared__0\(2),
      O => \sum_of_squares[3]_i_3_n_0\
    );
\sum_of_squares[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[1]\,
      I2 => \data_squared__0\(1),
      O => \sum_of_squares[3]_i_4_n_0\
    );
\sum_of_squares[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[0]\,
      I2 => \data_squared__0\(0),
      O => \sum_of_squares[3]_i_5_n_0\
    );
\sum_of_squares[43]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sum_of_squares_reg_n_0_[43]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \sum_of_squares[43]_i_2_n_0\
    );
\sum_of_squares[43]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sum_of_squares_reg_n_0_[42]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \sum_of_squares[43]_i_3_n_0\
    );
\sum_of_squares[43]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sum_of_squares_reg_n_0_[41]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \sum_of_squares[43]_i_4_n_0\
    );
\sum_of_squares[43]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sum_of_squares_reg_n_0_[40]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \sum_of_squares[43]_i_5_n_0\
    );
\sum_of_squares[44]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sum_of_squares_reg_n_0_[44]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \sum_of_squares[44]_i_2_n_0\
    );
\sum_of_squares[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[7]\,
      I2 => \data_squared__0\(7),
      O => \sum_of_squares[7]_i_2_n_0\
    );
\sum_of_squares[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[6]\,
      I2 => \data_squared__0\(6),
      O => \sum_of_squares[7]_i_3_n_0\
    );
\sum_of_squares[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[5]\,
      I2 => \data_squared__0\(5),
      O => \sum_of_squares[7]_i_4_n_0\
    );
\sum_of_squares[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \sum_of_squares_reg_n_0_[4]\,
      I2 => \data_squared__0\(4),
      O => \sum_of_squares[7]_i_5_n_0\
    );
\sum_of_squares_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(0),
      Q => \sum_of_squares_reg_n_0_[0]\
    );
\sum_of_squares_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(10),
      Q => \sum_of_squares_reg_n_0_[10]\
    );
\sum_of_squares_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(11),
      Q => \sum_of_squares_reg_n_0_[11]\
    );
\sum_of_squares_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_of_squares_reg[7]_i_1_n_0\,
      CO(3) => \sum_of_squares_reg[11]_i_1_n_0\,
      CO(2) => \sum_of_squares_reg[11]_i_1_n_1\,
      CO(1) => \sum_of_squares_reg[11]_i_1_n_2\,
      CO(0) => \sum_of_squares_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \data_squared__0\(11 downto 8),
      O(3 downto 0) => sum_of_squares(11 downto 8),
      S(3) => \sum_of_squares[11]_i_2_n_0\,
      S(2) => \sum_of_squares[11]_i_3_n_0\,
      S(1) => \sum_of_squares[11]_i_4_n_0\,
      S(0) => \sum_of_squares[11]_i_5_n_0\
    );
\sum_of_squares_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(12),
      Q => \sum_of_squares_reg_n_0_[12]\
    );
\sum_of_squares_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(13),
      Q => \sum_of_squares_reg_n_0_[13]\
    );
\sum_of_squares_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(14),
      Q => \sum_of_squares_reg_n_0_[14]\
    );
\sum_of_squares_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(15),
      Q => \sum_of_squares_reg_n_0_[15]\
    );
\sum_of_squares_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_of_squares_reg[11]_i_1_n_0\,
      CO(3) => \sum_of_squares_reg[15]_i_1_n_0\,
      CO(2) => \sum_of_squares_reg[15]_i_1_n_1\,
      CO(1) => \sum_of_squares_reg[15]_i_1_n_2\,
      CO(0) => \sum_of_squares_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \data_squared__0\(15 downto 12),
      O(3 downto 0) => sum_of_squares(15 downto 12),
      S(3) => \sum_of_squares[15]_i_2_n_0\,
      S(2) => \sum_of_squares[15]_i_3_n_0\,
      S(1) => \sum_of_squares[15]_i_4_n_0\,
      S(0) => \sum_of_squares[15]_i_5_n_0\
    );
\sum_of_squares_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(16),
      Q => \sum_of_squares_reg_n_0_[16]\
    );
\sum_of_squares_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(17),
      Q => \sum_of_squares_reg_n_0_[17]\
    );
\sum_of_squares_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(18),
      Q => \sum_of_squares_reg_n_0_[18]\
    );
\sum_of_squares_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(19),
      Q => \sum_of_squares_reg_n_0_[19]\
    );
\sum_of_squares_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_of_squares_reg[15]_i_1_n_0\,
      CO(3) => \sum_of_squares_reg[19]_i_1_n_0\,
      CO(2) => \sum_of_squares_reg[19]_i_1_n_1\,
      CO(1) => \sum_of_squares_reg[19]_i_1_n_2\,
      CO(0) => \sum_of_squares_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \data_squared__0\(19 downto 16),
      O(3 downto 0) => sum_of_squares(19 downto 16),
      S(3) => \sum_of_squares[19]_i_2_n_0\,
      S(2) => \sum_of_squares[19]_i_3_n_0\,
      S(1) => \sum_of_squares[19]_i_4_n_0\,
      S(0) => \sum_of_squares[19]_i_5_n_0\
    );
\sum_of_squares_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(1),
      Q => \sum_of_squares_reg_n_0_[1]\
    );
\sum_of_squares_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(20),
      Q => \sum_of_squares_reg_n_0_[20]\
    );
\sum_of_squares_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(21),
      Q => \sum_of_squares_reg_n_0_[21]\
    );
\sum_of_squares_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(22),
      Q => \sum_of_squares_reg_n_0_[22]\
    );
\sum_of_squares_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(23),
      Q => \sum_of_squares_reg_n_0_[23]\
    );
\sum_of_squares_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_of_squares_reg[19]_i_1_n_0\,
      CO(3) => \sum_of_squares_reg[23]_i_1_n_0\,
      CO(2) => \sum_of_squares_reg[23]_i_1_n_1\,
      CO(1) => \sum_of_squares_reg[23]_i_1_n_2\,
      CO(0) => \sum_of_squares_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \data_squared__0\(23 downto 20),
      O(3 downto 0) => sum_of_squares(23 downto 20),
      S(3) => \sum_of_squares[23]_i_2_n_0\,
      S(2) => \sum_of_squares[23]_i_3_n_0\,
      S(1) => \sum_of_squares[23]_i_4_n_0\,
      S(0) => \sum_of_squares[23]_i_5_n_0\
    );
\sum_of_squares_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(24),
      Q => \sum_of_squares_reg_n_0_[24]\
    );
\sum_of_squares_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(25),
      Q => \sum_of_squares_reg_n_0_[25]\
    );
\sum_of_squares_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(26),
      Q => \sum_of_squares_reg_n_0_[26]\
    );
\sum_of_squares_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(27),
      Q => \sum_of_squares_reg_n_0_[27]\
    );
\sum_of_squares_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_of_squares_reg[23]_i_1_n_0\,
      CO(3) => \sum_of_squares_reg[27]_i_1_n_0\,
      CO(2) => \sum_of_squares_reg[27]_i_1_n_1\,
      CO(1) => \sum_of_squares_reg[27]_i_1_n_2\,
      CO(0) => \sum_of_squares_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \data_squared__0\(27 downto 24),
      O(3 downto 0) => sum_of_squares(27 downto 24),
      S(3) => \sum_of_squares[27]_i_2_n_0\,
      S(2) => \sum_of_squares[27]_i_3_n_0\,
      S(1) => \sum_of_squares[27]_i_4_n_0\,
      S(0) => \sum_of_squares[27]_i_5_n_0\
    );
\sum_of_squares_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(28),
      Q => \sum_of_squares_reg_n_0_[28]\
    );
\sum_of_squares_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(29),
      Q => \sum_of_squares_reg_n_0_[29]\
    );
\sum_of_squares_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(2),
      Q => \sum_of_squares_reg_n_0_[2]\
    );
\sum_of_squares_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(30),
      Q => \sum_of_squares_reg_n_0_[30]\
    );
\sum_of_squares_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(31),
      Q => \sum_of_squares_reg_n_0_[31]\
    );
\sum_of_squares_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_of_squares_reg[27]_i_1_n_0\,
      CO(3) => \sum_of_squares_reg[31]_i_1_n_0\,
      CO(2) => \sum_of_squares_reg[31]_i_1_n_1\,
      CO(1) => \sum_of_squares_reg[31]_i_1_n_2\,
      CO(0) => \sum_of_squares_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \data_squared__0\(31 downto 28),
      O(3 downto 0) => sum_of_squares(31 downto 28),
      S(3) => \sum_of_squares[31]_i_2_n_0\,
      S(2) => \sum_of_squares[31]_i_3_n_0\,
      S(1) => \sum_of_squares[31]_i_4_n_0\,
      S(0) => \sum_of_squares[31]_i_5_n_0\
    );
\sum_of_squares_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(32),
      Q => \sum_of_squares_reg_n_0_[32]\
    );
\sum_of_squares_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(33),
      Q => \sum_of_squares_reg_n_0_[33]\
    );
\sum_of_squares_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(34),
      Q => \sum_of_squares_reg_n_0_[34]\
    );
\sum_of_squares_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(35),
      Q => \sum_of_squares_reg_n_0_[35]\
    );
\sum_of_squares_reg[35]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_of_squares_reg[31]_i_1_n_0\,
      CO(3) => \sum_of_squares_reg[35]_i_1_n_0\,
      CO(2) => \sum_of_squares_reg[35]_i_1_n_1\,
      CO(1) => \sum_of_squares_reg[35]_i_1_n_2\,
      CO(0) => \sum_of_squares_reg[35]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sum_of_squares(35 downto 32),
      S(3) => \sum_of_squares[35]_i_2_n_0\,
      S(2) => \sum_of_squares[35]_i_3_n_0\,
      S(1) => \sum_of_squares[35]_i_4_n_0\,
      S(0) => \sum_of_squares[35]_i_5_n_0\
    );
\sum_of_squares_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(36),
      Q => \sum_of_squares_reg_n_0_[36]\
    );
\sum_of_squares_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(37),
      Q => \sum_of_squares_reg_n_0_[37]\
    );
\sum_of_squares_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(38),
      Q => \sum_of_squares_reg_n_0_[38]\
    );
\sum_of_squares_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(39),
      Q => \sum_of_squares_reg_n_0_[39]\
    );
\sum_of_squares_reg[39]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_of_squares_reg[35]_i_1_n_0\,
      CO(3) => \sum_of_squares_reg[39]_i_1_n_0\,
      CO(2) => \sum_of_squares_reg[39]_i_1_n_1\,
      CO(1) => \sum_of_squares_reg[39]_i_1_n_2\,
      CO(0) => \sum_of_squares_reg[39]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sum_of_squares(39 downto 36),
      S(3) => \sum_of_squares[39]_i_2_n_0\,
      S(2) => \sum_of_squares[39]_i_3_n_0\,
      S(1) => \sum_of_squares[39]_i_4_n_0\,
      S(0) => \sum_of_squares[39]_i_5_n_0\
    );
\sum_of_squares_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(3),
      Q => \sum_of_squares_reg_n_0_[3]\
    );
\sum_of_squares_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_of_squares_reg[3]_i_1_n_0\,
      CO(2) => \sum_of_squares_reg[3]_i_1_n_1\,
      CO(1) => \sum_of_squares_reg[3]_i_1_n_2\,
      CO(0) => \sum_of_squares_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \data_squared__0\(3 downto 0),
      O(3 downto 0) => sum_of_squares(3 downto 0),
      S(3) => \sum_of_squares[3]_i_2_n_0\,
      S(2) => \sum_of_squares[3]_i_3_n_0\,
      S(1) => \sum_of_squares[3]_i_4_n_0\,
      S(0) => \sum_of_squares[3]_i_5_n_0\
    );
\sum_of_squares_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(40),
      Q => \sum_of_squares_reg_n_0_[40]\
    );
\sum_of_squares_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(41),
      Q => \sum_of_squares_reg_n_0_[41]\
    );
\sum_of_squares_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(42),
      Q => \sum_of_squares_reg_n_0_[42]\
    );
\sum_of_squares_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(43),
      Q => \sum_of_squares_reg_n_0_[43]\
    );
\sum_of_squares_reg[43]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_of_squares_reg[39]_i_1_n_0\,
      CO(3) => \sum_of_squares_reg[43]_i_1_n_0\,
      CO(2) => \sum_of_squares_reg[43]_i_1_n_1\,
      CO(1) => \sum_of_squares_reg[43]_i_1_n_2\,
      CO(0) => \sum_of_squares_reg[43]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sum_of_squares(43 downto 40),
      S(3) => \sum_of_squares[43]_i_2_n_0\,
      S(2) => \sum_of_squares[43]_i_3_n_0\,
      S(1) => \sum_of_squares[43]_i_4_n_0\,
      S(0) => \sum_of_squares[43]_i_5_n_0\
    );
\sum_of_squares_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(44),
      Q => \sum_of_squares_reg_n_0_[44]\
    );
\sum_of_squares_reg[44]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_of_squares_reg[43]_i_1_n_0\,
      CO(3 downto 0) => \NLW_sum_of_squares_reg[44]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_sum_of_squares_reg[44]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => sum_of_squares(44),
      S(3 downto 1) => B"000",
      S(0) => \sum_of_squares[44]_i_2_n_0\
    );
\sum_of_squares_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(4),
      Q => \sum_of_squares_reg_n_0_[4]\
    );
\sum_of_squares_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(5),
      Q => \sum_of_squares_reg_n_0_[5]\
    );
\sum_of_squares_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(6),
      Q => \sum_of_squares_reg_n_0_[6]\
    );
\sum_of_squares_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(7),
      Q => \sum_of_squares_reg_n_0_[7]\
    );
\sum_of_squares_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_of_squares_reg[3]_i_1_n_0\,
      CO(3) => \sum_of_squares_reg[7]_i_1_n_0\,
      CO(2) => \sum_of_squares_reg[7]_i_1_n_1\,
      CO(1) => \sum_of_squares_reg[7]_i_1_n_2\,
      CO(0) => \sum_of_squares_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \data_squared__0\(7 downto 4),
      O(3 downto 0) => sum_of_squares(7 downto 4),
      S(3) => \sum_of_squares[7]_i_2_n_0\,
      S(2) => \sum_of_squares[7]_i_3_n_0\,
      S(1) => \sum_of_squares[7]_i_4_n_0\,
      S(0) => \sum_of_squares[7]_i_5_n_0\
    );
\sum_of_squares_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(8),
      Q => \sum_of_squares_reg_n_0_[8]\
    );
\sum_of_squares_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum_of_squares(9),
      Q => \sum_of_squares_reg_n_0_[9]\
    );
\sum_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(0),
      Q => \sum_reg_n_0_[0]\
    );
\sum_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(10),
      Q => \sum_reg_n_0_[10]\
    );
\sum_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(11),
      Q => \sum_reg_n_0_[11]\
    );
\sum_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(12),
      Q => \sum_reg_n_0_[12]\
    );
\sum_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(13),
      Q => p_0_in(0)
    );
\sum_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(14),
      Q => p_0_in(1)
    );
\sum_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(15),
      Q => p_0_in(2)
    );
\sum_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(16),
      Q => p_0_in(3)
    );
\sum_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(17),
      Q => p_0_in(4)
    );
\sum_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(18),
      Q => p_0_in(5)
    );
\sum_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(19),
      Q => p_0_in(6)
    );
\sum_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(1),
      Q => \sum_reg_n_0_[1]\
    );
\sum_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(20),
      Q => p_0_in(7)
    );
\sum_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(21),
      Q => p_0_in(8)
    );
\sum_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(22),
      Q => p_0_in(9)
    );
\sum_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(23),
      Q => p_0_in(10)
    );
\sum_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(24),
      Q => p_0_in(11)
    );
\sum_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(25),
      Q => p_0_in(12)
    );
\sum_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(26),
      Q => p_0_in(13)
    );
\sum_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(27),
      Q => p_0_in(14)
    );
\sum_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(28),
      Q => p_0_in(15)
    );
\sum_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(2),
      Q => \sum_reg_n_0_[2]\
    );
\sum_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(3),
      Q => \sum_reg_n_0_[3]\
    );
\sum_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(4),
      Q => \sum_reg_n_0_[4]\
    );
\sum_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(5),
      Q => \sum_reg_n_0_[5]\
    );
\sum_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(6),
      Q => \sum_reg_n_0_[6]\
    );
\sum_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(7),
      Q => \sum_reg_n_0_[7]\
    );
\sum_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(8),
      Q => \sum_reg_n_0_[8]\
    );
\sum_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_7,
      CLR => clk_divider_inst_n_11,
      D => sum(9),
      Q => \sum_reg_n_0_[9]\
    );
\v_max_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_max_temp(0),
      Q => v_max(0)
    );
\v_max_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_max_temp(10),
      Q => v_max(10)
    );
\v_max_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_max_temp(11),
      Q => v_max(11)
    );
\v_max_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_max_temp(12),
      Q => v_max(12)
    );
\v_max_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_max_temp(13),
      Q => v_max(13)
    );
\v_max_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_max_temp(14),
      Q => v_max(14)
    );
\v_max_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_max_temp(15),
      Q => v_max(15)
    );
\v_max_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_max_temp(1),
      Q => v_max(1)
    );
\v_max_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_max_temp(2),
      Q => v_max(2)
    );
\v_max_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_max_temp(3),
      Q => v_max(3)
    );
\v_max_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_max_temp(4),
      Q => v_max(4)
    );
\v_max_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_max_temp(5),
      Q => v_max(5)
    );
\v_max_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_max_temp(6),
      Q => v_max(6)
    );
\v_max_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_max_temp(7),
      Q => v_max(7)
    );
\v_max_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_max_temp(8),
      Q => v_max(8)
    );
\v_max_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_max_temp(9),
      Q => v_max(9)
    );
v_max_temp0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => v_max_temp0_carry_n_0,
      CO(2) => v_max_temp0_carry_n_1,
      CO(1) => v_max_temp0_carry_n_2,
      CO(0) => v_max_temp0_carry_n_3,
      CYINIT => '0',
      DI(3) => v_max_temp0_carry_i_1_n_0,
      DI(2) => v_max_temp0_carry_i_2_n_0,
      DI(1) => v_max_temp0_carry_i_3_n_0,
      DI(0) => v_max_temp0_carry_i_4_n_0,
      O(3 downto 0) => NLW_v_max_temp0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => v_max_temp0_carry_i_5_n_0,
      S(2) => v_max_temp0_carry_i_6_n_0,
      S(1) => v_max_temp0_carry_i_7_n_0,
      S(0) => v_max_temp0_carry_i_8_n_0
    );
\v_max_temp0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => v_max_temp0_carry_n_0,
      CO(3) => \v_max_temp0_carry__0_n_0\,
      CO(2) => \v_max_temp0_carry__0_n_1\,
      CO(1) => \v_max_temp0_carry__0_n_2\,
      CO(0) => \v_max_temp0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \v_max_temp0_carry__0_i_1_n_0\,
      DI(2) => \v_max_temp0_carry__0_i_2_n_0\,
      DI(1) => \v_max_temp0_carry__0_i_3_n_0\,
      DI(0) => \v_max_temp0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_v_max_temp0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \v_max_temp0_carry__0_i_5_n_0\,
      S(2) => \v_max_temp0_carry__0_i_6_n_0\,
      S(1) => \v_max_temp0_carry__0_i_7_n_0\,
      S(0) => \v_max_temp0_carry__0_i_8_n_0\
    );
\v_max_temp0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => v_max_temp(15),
      I1 => data_in_synced(15),
      I2 => data_in_synced(14),
      I3 => v_max_temp(14),
      O => \v_max_temp0_carry__0_i_1_n_0\
    );
\v_max_temp0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => data_in_synced(13),
      I1 => v_max_temp(13),
      I2 => data_in_synced(12),
      I3 => v_max_temp(12),
      O => \v_max_temp0_carry__0_i_2_n_0\
    );
\v_max_temp0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => data_in_synced(11),
      I1 => v_max_temp(11),
      I2 => data_in_synced(10),
      I3 => v_max_temp(10),
      O => \v_max_temp0_carry__0_i_3_n_0\
    );
\v_max_temp0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => data_in_synced(9),
      I1 => v_max_temp(9),
      I2 => data_in_synced(8),
      I3 => v_max_temp(8),
      O => \v_max_temp0_carry__0_i_4_n_0\
    );
\v_max_temp0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_max_temp(15),
      I1 => data_in_synced(15),
      I2 => v_max_temp(14),
      I3 => data_in_synced(14),
      O => \v_max_temp0_carry__0_i_5_n_0\
    );
\v_max_temp0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_max_temp(13),
      I1 => data_in_synced(13),
      I2 => v_max_temp(12),
      I3 => data_in_synced(12),
      O => \v_max_temp0_carry__0_i_6_n_0\
    );
\v_max_temp0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_max_temp(11),
      I1 => data_in_synced(11),
      I2 => v_max_temp(10),
      I3 => data_in_synced(10),
      O => \v_max_temp0_carry__0_i_7_n_0\
    );
\v_max_temp0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_max_temp(9),
      I1 => data_in_synced(9),
      I2 => v_max_temp(8),
      I3 => data_in_synced(8),
      O => \v_max_temp0_carry__0_i_8_n_0\
    );
v_max_temp0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => data_in_synced(7),
      I1 => v_max_temp(7),
      I2 => data_in_synced(6),
      I3 => v_max_temp(6),
      O => v_max_temp0_carry_i_1_n_0
    );
v_max_temp0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => data_in_synced(5),
      I1 => v_max_temp(5),
      I2 => data_in_synced(4),
      I3 => v_max_temp(4),
      O => v_max_temp0_carry_i_2_n_0
    );
v_max_temp0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => data_in_synced(3),
      I1 => v_max_temp(3),
      I2 => data_in_synced(2),
      I3 => v_max_temp(2),
      O => v_max_temp0_carry_i_3_n_0
    );
v_max_temp0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => data_in_synced(1),
      I1 => v_max_temp(1),
      I2 => data_in_synced(0),
      I3 => v_max_temp(0),
      O => v_max_temp0_carry_i_4_n_0
    );
v_max_temp0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_max_temp(7),
      I1 => data_in_synced(7),
      I2 => v_max_temp(6),
      I3 => data_in_synced(6),
      O => v_max_temp0_carry_i_5_n_0
    );
v_max_temp0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_max_temp(5),
      I1 => data_in_synced(5),
      I2 => v_max_temp(4),
      I3 => data_in_synced(4),
      O => v_max_temp0_carry_i_6_n_0
    );
v_max_temp0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_max_temp(3),
      I1 => data_in_synced(3),
      I2 => v_max_temp(2),
      I3 => data_in_synced(2),
      O => v_max_temp0_carry_i_7_n_0
    );
v_max_temp0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_max_temp(1),
      I1 => data_in_synced(1),
      I2 => v_max_temp(0),
      I3 => data_in_synced(0),
      O => v_max_temp0_carry_i_8_n_0
    );
\v_max_temp_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_5,
      CLR => clk_divider_inst_n_11,
      D => data_in_synced(0),
      Q => v_max_temp(0)
    );
\v_max_temp_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_5,
      CLR => clk_divider_inst_n_11,
      D => data_in_synced(10),
      Q => v_max_temp(10)
    );
\v_max_temp_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_5,
      CLR => clk_divider_inst_n_11,
      D => data_in_synced(11),
      Q => v_max_temp(11)
    );
\v_max_temp_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_5,
      CLR => clk_divider_inst_n_11,
      D => data_in_synced(12),
      Q => v_max_temp(12)
    );
\v_max_temp_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_5,
      CLR => clk_divider_inst_n_11,
      D => data_in_synced(13),
      Q => v_max_temp(13)
    );
\v_max_temp_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_5,
      CLR => clk_divider_inst_n_11,
      D => data_in_synced(14),
      Q => v_max_temp(14)
    );
\v_max_temp_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_5,
      D => data_in_synced(15),
      PRE => clk_divider_inst_n_11,
      Q => v_max_temp(15)
    );
\v_max_temp_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_5,
      CLR => clk_divider_inst_n_11,
      D => data_in_synced(1),
      Q => v_max_temp(1)
    );
\v_max_temp_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_5,
      CLR => clk_divider_inst_n_11,
      D => data_in_synced(2),
      Q => v_max_temp(2)
    );
\v_max_temp_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_5,
      CLR => clk_divider_inst_n_11,
      D => data_in_synced(3),
      Q => v_max_temp(3)
    );
\v_max_temp_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_5,
      CLR => clk_divider_inst_n_11,
      D => data_in_synced(4),
      Q => v_max_temp(4)
    );
\v_max_temp_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_5,
      CLR => clk_divider_inst_n_11,
      D => data_in_synced(5),
      Q => v_max_temp(5)
    );
\v_max_temp_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_5,
      CLR => clk_divider_inst_n_11,
      D => data_in_synced(6),
      Q => v_max_temp(6)
    );
\v_max_temp_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_5,
      CLR => clk_divider_inst_n_11,
      D => data_in_synced(7),
      Q => v_max_temp(7)
    );
\v_max_temp_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_5,
      CLR => clk_divider_inst_n_11,
      D => data_in_synced(8),
      Q => v_max_temp(8)
    );
\v_max_temp_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_5,
      CLR => clk_divider_inst_n_11,
      D => data_in_synced(9),
      Q => v_max_temp(9)
    );
\v_min_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_min_temp(0),
      Q => v_min(0)
    );
\v_min_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_min_temp(10),
      Q => v_min(10)
    );
\v_min_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_min_temp(11),
      Q => v_min(11)
    );
\v_min_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_min_temp(12),
      Q => v_min(12)
    );
\v_min_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_min_temp(13),
      Q => v_min(13)
    );
\v_min_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_min_temp(14),
      Q => v_min(14)
    );
\v_min_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_min_temp(15),
      Q => v_min(15)
    );
\v_min_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_min_temp(1),
      Q => v_min(1)
    );
\v_min_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_min_temp(2),
      Q => v_min(2)
    );
\v_min_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_min_temp(3),
      Q => v_min(3)
    );
\v_min_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_min_temp(4),
      Q => v_min(4)
    );
\v_min_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_min_temp(5),
      Q => v_min(5)
    );
\v_min_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_min_temp(6),
      Q => v_min(6)
    );
\v_min_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_min_temp(7),
      Q => v_min(7)
    );
\v_min_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_min_temp(8),
      Q => v_min(8)
    );
\v_min_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => clk_divider_inst_n_11,
      D => v_min_temp(9),
      Q => v_min(9)
    );
v_min_temp0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => v_min_temp0_carry_n_0,
      CO(2) => v_min_temp0_carry_n_1,
      CO(1) => v_min_temp0_carry_n_2,
      CO(0) => v_min_temp0_carry_n_3,
      CYINIT => '0',
      DI(3) => v_min_temp0_carry_i_1_n_0,
      DI(2) => v_min_temp0_carry_i_2_n_0,
      DI(1) => v_min_temp0_carry_i_3_n_0,
      DI(0) => v_min_temp0_carry_i_4_n_0,
      O(3 downto 0) => NLW_v_min_temp0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => v_min_temp0_carry_i_5_n_0,
      S(2) => v_min_temp0_carry_i_6_n_0,
      S(1) => v_min_temp0_carry_i_7_n_0,
      S(0) => v_min_temp0_carry_i_8_n_0
    );
\v_min_temp0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => v_min_temp0_carry_n_0,
      CO(3) => \v_min_temp0_carry__0_n_0\,
      CO(2) => \v_min_temp0_carry__0_n_1\,
      CO(1) => \v_min_temp0_carry__0_n_2\,
      CO(0) => \v_min_temp0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \v_min_temp0_carry__0_i_1_n_0\,
      DI(2) => \v_min_temp0_carry__0_i_2_n_0\,
      DI(1) => \v_min_temp0_carry__0_i_3_n_0\,
      DI(0) => \v_min_temp0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_v_min_temp0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \v_min_temp0_carry__0_i_5_n_0\,
      S(2) => \v_min_temp0_carry__0_i_6_n_0\,
      S(1) => \v_min_temp0_carry__0_i_7_n_0\,
      S(0) => \v_min_temp0_carry__0_i_8_n_0\
    );
\v_min_temp0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => data_in_synced(15),
      I1 => v_min_temp(15),
      I2 => v_min_temp(14),
      I3 => data_in_synced(14),
      O => \v_min_temp0_carry__0_i_1_n_0\
    );
\v_min_temp0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => v_min_temp(13),
      I1 => data_in_synced(13),
      I2 => v_min_temp(12),
      I3 => data_in_synced(12),
      O => \v_min_temp0_carry__0_i_2_n_0\
    );
\v_min_temp0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => v_min_temp(11),
      I1 => data_in_synced(11),
      I2 => v_min_temp(10),
      I3 => data_in_synced(10),
      O => \v_min_temp0_carry__0_i_3_n_0\
    );
\v_min_temp0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => v_min_temp(9),
      I1 => data_in_synced(9),
      I2 => v_min_temp(8),
      I3 => data_in_synced(8),
      O => \v_min_temp0_carry__0_i_4_n_0\
    );
\v_min_temp0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_min_temp(15),
      I1 => data_in_synced(15),
      I2 => v_min_temp(14),
      I3 => data_in_synced(14),
      O => \v_min_temp0_carry__0_i_5_n_0\
    );
\v_min_temp0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_min_temp(13),
      I1 => data_in_synced(13),
      I2 => v_min_temp(12),
      I3 => data_in_synced(12),
      O => \v_min_temp0_carry__0_i_6_n_0\
    );
\v_min_temp0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_min_temp(11),
      I1 => data_in_synced(11),
      I2 => v_min_temp(10),
      I3 => data_in_synced(10),
      O => \v_min_temp0_carry__0_i_7_n_0\
    );
\v_min_temp0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_min_temp(9),
      I1 => data_in_synced(9),
      I2 => v_min_temp(8),
      I3 => data_in_synced(8),
      O => \v_min_temp0_carry__0_i_8_n_0\
    );
v_min_temp0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => v_min_temp(7),
      I1 => data_in_synced(7),
      I2 => v_min_temp(6),
      I3 => data_in_synced(6),
      O => v_min_temp0_carry_i_1_n_0
    );
v_min_temp0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => v_min_temp(5),
      I1 => data_in_synced(5),
      I2 => v_min_temp(4),
      I3 => data_in_synced(4),
      O => v_min_temp0_carry_i_2_n_0
    );
v_min_temp0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => v_min_temp(3),
      I1 => data_in_synced(3),
      I2 => v_min_temp(2),
      I3 => data_in_synced(2),
      O => v_min_temp0_carry_i_3_n_0
    );
v_min_temp0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => v_min_temp(1),
      I1 => data_in_synced(1),
      I2 => v_min_temp(0),
      I3 => data_in_synced(0),
      O => v_min_temp0_carry_i_4_n_0
    );
v_min_temp0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_min_temp(7),
      I1 => data_in_synced(7),
      I2 => v_min_temp(6),
      I3 => data_in_synced(6),
      O => v_min_temp0_carry_i_5_n_0
    );
v_min_temp0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_min_temp(5),
      I1 => data_in_synced(5),
      I2 => v_min_temp(4),
      I3 => data_in_synced(4),
      O => v_min_temp0_carry_i_6_n_0
    );
v_min_temp0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_min_temp(3),
      I1 => data_in_synced(3),
      I2 => v_min_temp(2),
      I3 => data_in_synced(2),
      O => v_min_temp0_carry_i_7_n_0
    );
v_min_temp0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_min_temp(1),
      I1 => data_in_synced(1),
      I2 => v_min_temp(0),
      I3 => data_in_synced(0),
      O => v_min_temp0_carry_i_8_n_0
    );
\v_min_temp_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_6,
      D => data_in_synced(0),
      PRE => clk_divider_inst_n_11,
      Q => v_min_temp(0)
    );
\v_min_temp_reg[10]\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_6,
      D => data_in_synced(10),
      PRE => clk_divider_inst_n_11,
      Q => v_min_temp(10)
    );
\v_min_temp_reg[11]\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_6,
      D => data_in_synced(11),
      PRE => clk_divider_inst_n_11,
      Q => v_min_temp(11)
    );
\v_min_temp_reg[12]\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_6,
      D => data_in_synced(12),
      PRE => clk_divider_inst_n_11,
      Q => v_min_temp(12)
    );
\v_min_temp_reg[13]\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_6,
      D => data_in_synced(13),
      PRE => clk_divider_inst_n_11,
      Q => v_min_temp(13)
    );
\v_min_temp_reg[14]\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_6,
      D => data_in_synced(14),
      PRE => clk_divider_inst_n_11,
      Q => v_min_temp(14)
    );
\v_min_temp_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_6,
      CLR => clk_divider_inst_n_11,
      D => data_in_synced(15),
      Q => v_min_temp(15)
    );
\v_min_temp_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_6,
      D => data_in_synced(1),
      PRE => clk_divider_inst_n_11,
      Q => v_min_temp(1)
    );
\v_min_temp_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_6,
      D => data_in_synced(2),
      PRE => clk_divider_inst_n_11,
      Q => v_min_temp(2)
    );
\v_min_temp_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_6,
      D => data_in_synced(3),
      PRE => clk_divider_inst_n_11,
      Q => v_min_temp(3)
    );
\v_min_temp_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_6,
      D => data_in_synced(4),
      PRE => clk_divider_inst_n_11,
      Q => v_min_temp(4)
    );
\v_min_temp_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_6,
      D => data_in_synced(5),
      PRE => clk_divider_inst_n_11,
      Q => v_min_temp(5)
    );
\v_min_temp_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_6,
      D => data_in_synced(6),
      PRE => clk_divider_inst_n_11,
      Q => v_min_temp(6)
    );
\v_min_temp_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_6,
      D => data_in_synced(7),
      PRE => clk_divider_inst_n_11,
      Q => v_min_temp(7)
    );
\v_min_temp_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_6,
      D => data_in_synced(8),
      PRE => clk_divider_inst_n_11,
      Q => v_min_temp(8)
    );
\v_min_temp_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => clk_divider_inst_n_6,
      D => data_in_synced(9),
      PRE => clk_divider_inst_n_11,
      Q => v_min_temp(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_waveform_measure_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_waveform_measure_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_waveform_measure_0_0 : entity is "design_1_waveform_measure_0_0,waveform_measure,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_waveform_measure_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_waveform_measure_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_waveform_measure_0_0 : entity is "waveform_measure,Vivado 2024.2";
end design_1_waveform_measure_0_0;

architecture STRUCTURE of design_1_waveform_measure_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of sys_clk : signal is "xilinx.com:signal:clock:1.0 sys_clk CLK";
  attribute X_INTERFACE_MODE of sys_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of sys_clk : signal is "XIL_INTERFACENAME sys_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
inst: entity work.design_1_waveform_measure_0_0_waveform_measure
     port map (
      Q(15 downto 0) => o_signal_dc_removed(15 downto 0),
      data_in(15 downto 0) => data_in(15 downto 0),
      mean_square(31 downto 0) => mean_square(31 downto 0),
      measure_done => measure_done,
      period_sample_cnt(15 downto 0) => period_sample_cnt(15 downto 0),
      rst_n => rst_n,
      sys_clk => sys_clk,
      v_max(15 downto 0) => v_max(15 downto 0),
      v_min(15 downto 0) => v_min(15 downto 0)
    );
end STRUCTURE;
