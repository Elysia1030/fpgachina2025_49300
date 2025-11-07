-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Thu Nov  6 16:33:59 2025
-- Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/elysia/Software/Xilinx/Project/11-6/2023D_lwx.gen/sources_1/bd/design_1/ip/design_1_IQ_DDC_0_0/design_1_IQ_DDC_0_0_sim_netlist.vhdl
-- Design      : design_1_IQ_DDC_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_IQ_DDC_0_0_IQ_DDC is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    iq_data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iq_tvalid : out STD_LOGIC;
    i_band : out STD_LOGIC_VECTOR ( 15 downto 0 );
    q_band : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_IQ_DDC_0_0_IQ_DDC : entity is "IQ_DDC";
  attribute PHASE_INC : integer;
  attribute PHASE_INC of design_1_IQ_DDC_0_0_IQ_DDC : entity is 171798692;
end design_1_IQ_DDC_0_0_IQ_DDC;

architecture STRUCTURE of design_1_IQ_DDC_0_0_IQ_DDC is
  component design_1_IQ_DDC_0_0_cic_compiler_iq is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC
  );
  end component design_1_IQ_DDC_0_0_cic_compiler_iq;
  component design_1_IQ_DDC_0_0_cic_compiler_iq_HD1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_IQ_DDC_0_0_cic_compiler_iq_HD1;
  signal cic_out_i : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal cic_out_q : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal cic_valid_q : STD_LOGIC;
  signal \i_mixer__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i_mixer_i_17_n_0 : STD_LOGIC;
  signal i_mixer_i_18_n_0 : STD_LOGIC;
  signal i_mixer_i_19_n_0 : STD_LOGIC;
  signal i_mixer_i_20_n_0 : STD_LOGIC;
  signal i_mixer_i_21_n_0 : STD_LOGIC;
  signal i_mixer_i_22_n_0 : STD_LOGIC;
  signal i_mixer_i_23_n_0 : STD_LOGIC;
  signal i_mixer_i_24_n_0 : STD_LOGIC;
  signal i_mixer_i_25_n_0 : STD_LOGIC;
  signal i_mixer_i_26_n_0 : STD_LOGIC;
  signal i_mixer_i_27_n_0 : STD_LOGIC;
  signal i_mixer_i_28_n_0 : STD_LOGIC;
  signal i_mixer_i_29_n_0 : STD_LOGIC;
  signal i_mixer_i_30_n_0 : STD_LOGIC;
  signal i_mixer_i_31_n_0 : STD_LOGIC;
  signal i_mixer_i_32_n_0 : STD_LOGIC;
  signal i_mixer_i_33_n_0 : STD_LOGIC;
  signal i_mixer_i_34_n_0 : STD_LOGIC;
  signal i_mixer_i_35_n_0 : STD_LOGIC;
  signal i_mixer_i_36_n_0 : STD_LOGIC;
  signal i_mixer_i_37_n_0 : STD_LOGIC;
  signal i_mixer_i_38_n_0 : STD_LOGIC;
  signal i_mixer_i_39_n_0 : STD_LOGIC;
  signal i_mixer_i_40_n_0 : STD_LOGIC;
  signal i_mixer_i_41_n_0 : STD_LOGIC;
  signal i_mixer_i_42_n_0 : STD_LOGIC;
  signal i_mixer_i_43_n_0 : STD_LOGIC;
  signal i_mixer_i_44_n_0 : STD_LOGIC;
  signal i_mixer_i_45_n_0 : STD_LOGIC;
  signal i_mixer_i_46_n_0 : STD_LOGIC;
  signal i_mixer_i_47_n_0 : STD_LOGIC;
  signal i_mixer_i_48_n_0 : STD_LOGIC;
  signal i_mixer_i_49_n_0 : STD_LOGIC;
  signal i_mixer_i_50_n_0 : STD_LOGIC;
  signal i_mixer_i_51_n_0 : STD_LOGIC;
  signal i_mixer_i_52_n_0 : STD_LOGIC;
  signal i_mixer_i_53_n_0 : STD_LOGIC;
  signal i_mixer_i_54_n_0 : STD_LOGIC;
  signal i_mixer_i_55_n_0 : STD_LOGIC;
  signal i_mixer_i_56_n_0 : STD_LOGIC;
  signal i_mixer_i_57_n_0 : STD_LOGIC;
  signal i_mixer_i_58_n_0 : STD_LOGIC;
  signal i_mixer_i_59_n_0 : STD_LOGIC;
  signal i_mixer_i_60_n_0 : STD_LOGIC;
  signal i_mixer_i_61_n_0 : STD_LOGIC;
  signal i_mixer_i_62_n_0 : STD_LOGIC;
  signal i_mixer_i_63_n_0 : STD_LOGIC;
  signal i_mixer_i_64_n_0 : STD_LOGIC;
  signal i_mixer_i_65_n_0 : STD_LOGIC;
  signal i_mixer_i_66_n_0 : STD_LOGIC;
  signal i_mixer_i_67_n_0 : STD_LOGIC;
  signal i_mixer_i_68_n_0 : STD_LOGIC;
  signal i_mixer_i_69_n_0 : STD_LOGIC;
  signal i_mixer_i_70_n_0 : STD_LOGIC;
  signal i_mixer_i_71_n_0 : STD_LOGIC;
  signal i_mixer_i_72_n_0 : STD_LOGIC;
  signal i_mixer_i_73_n_0 : STD_LOGIC;
  signal \^iq_tvalid\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \phase_accumulator[10]_i_2_n_0\ : STD_LOGIC;
  signal \phase_accumulator[10]_i_3_n_0\ : STD_LOGIC;
  signal \phase_accumulator[14]_i_2_n_0\ : STD_LOGIC;
  signal \phase_accumulator[14]_i_3_n_0\ : STD_LOGIC;
  signal \phase_accumulator[18]_i_2_n_0\ : STD_LOGIC;
  signal \phase_accumulator[18]_i_3_n_0\ : STD_LOGIC;
  signal \phase_accumulator[18]_i_4_n_0\ : STD_LOGIC;
  signal \phase_accumulator[18]_i_5_n_0\ : STD_LOGIC;
  signal \phase_accumulator[22]_i_2_n_0\ : STD_LOGIC;
  signal \phase_accumulator[26]_i_2_n_0\ : STD_LOGIC;
  signal \phase_accumulator[2]_i_2_n_0\ : STD_LOGIC;
  signal \phase_accumulator[2]_i_3_n_0\ : STD_LOGIC;
  signal \phase_accumulator[6]_i_2_n_0\ : STD_LOGIC;
  signal \phase_accumulator_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \phase_accumulator_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \phase_accumulator_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \phase_accumulator_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \phase_accumulator_reg[10]_i_1_n_4\ : STD_LOGIC;
  signal \phase_accumulator_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \phase_accumulator_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \phase_accumulator_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \phase_accumulator_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \phase_accumulator_reg[14]_i_1_n_1\ : STD_LOGIC;
  signal \phase_accumulator_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \phase_accumulator_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \phase_accumulator_reg[14]_i_1_n_4\ : STD_LOGIC;
  signal \phase_accumulator_reg[14]_i_1_n_5\ : STD_LOGIC;
  signal \phase_accumulator_reg[14]_i_1_n_6\ : STD_LOGIC;
  signal \phase_accumulator_reg[14]_i_1_n_7\ : STD_LOGIC;
  signal \phase_accumulator_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \phase_accumulator_reg[18]_i_1_n_1\ : STD_LOGIC;
  signal \phase_accumulator_reg[18]_i_1_n_2\ : STD_LOGIC;
  signal \phase_accumulator_reg[18]_i_1_n_3\ : STD_LOGIC;
  signal \phase_accumulator_reg[18]_i_1_n_4\ : STD_LOGIC;
  signal \phase_accumulator_reg[18]_i_1_n_5\ : STD_LOGIC;
  signal \phase_accumulator_reg[18]_i_1_n_6\ : STD_LOGIC;
  signal \phase_accumulator_reg[18]_i_1_n_7\ : STD_LOGIC;
  signal \phase_accumulator_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \phase_accumulator_reg[22]_i_1_n_1\ : STD_LOGIC;
  signal \phase_accumulator_reg[22]_i_1_n_2\ : STD_LOGIC;
  signal \phase_accumulator_reg[22]_i_1_n_3\ : STD_LOGIC;
  signal \phase_accumulator_reg[22]_i_1_n_4\ : STD_LOGIC;
  signal \phase_accumulator_reg[22]_i_1_n_5\ : STD_LOGIC;
  signal \phase_accumulator_reg[22]_i_1_n_6\ : STD_LOGIC;
  signal \phase_accumulator_reg[22]_i_1_n_7\ : STD_LOGIC;
  signal \phase_accumulator_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \phase_accumulator_reg[26]_i_1_n_1\ : STD_LOGIC;
  signal \phase_accumulator_reg[26]_i_1_n_2\ : STD_LOGIC;
  signal \phase_accumulator_reg[26]_i_1_n_3\ : STD_LOGIC;
  signal \phase_accumulator_reg[26]_i_1_n_4\ : STD_LOGIC;
  signal \phase_accumulator_reg[26]_i_1_n_5\ : STD_LOGIC;
  signal \phase_accumulator_reg[26]_i_1_n_6\ : STD_LOGIC;
  signal \phase_accumulator_reg[26]_i_1_n_7\ : STD_LOGIC;
  signal \phase_accumulator_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \phase_accumulator_reg[2]_i_1_n_1\ : STD_LOGIC;
  signal \phase_accumulator_reg[2]_i_1_n_2\ : STD_LOGIC;
  signal \phase_accumulator_reg[2]_i_1_n_3\ : STD_LOGIC;
  signal \phase_accumulator_reg[2]_i_1_n_4\ : STD_LOGIC;
  signal \phase_accumulator_reg[2]_i_1_n_5\ : STD_LOGIC;
  signal \phase_accumulator_reg[2]_i_1_n_6\ : STD_LOGIC;
  signal \phase_accumulator_reg[2]_i_1_n_7\ : STD_LOGIC;
  signal \phase_accumulator_reg[30]_i_1_n_3\ : STD_LOGIC;
  signal \phase_accumulator_reg[30]_i_1_n_6\ : STD_LOGIC;
  signal \phase_accumulator_reg[30]_i_1_n_7\ : STD_LOGIC;
  signal \phase_accumulator_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \phase_accumulator_reg[6]_i_1_n_1\ : STD_LOGIC;
  signal \phase_accumulator_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \phase_accumulator_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \phase_accumulator_reg[6]_i_1_n_4\ : STD_LOGIC;
  signal \phase_accumulator_reg[6]_i_1_n_5\ : STD_LOGIC;
  signal \phase_accumulator_reg[6]_i_1_n_6\ : STD_LOGIC;
  signal \phase_accumulator_reg[6]_i_1_n_7\ : STD_LOGIC;
  signal \phase_accumulator_reg_n_0_[10]\ : STD_LOGIC;
  signal \phase_accumulator_reg_n_0_[11]\ : STD_LOGIC;
  signal \phase_accumulator_reg_n_0_[12]\ : STD_LOGIC;
  signal \phase_accumulator_reg_n_0_[13]\ : STD_LOGIC;
  signal \phase_accumulator_reg_n_0_[14]\ : STD_LOGIC;
  signal \phase_accumulator_reg_n_0_[15]\ : STD_LOGIC;
  signal \phase_accumulator_reg_n_0_[16]\ : STD_LOGIC;
  signal \phase_accumulator_reg_n_0_[17]\ : STD_LOGIC;
  signal \phase_accumulator_reg_n_0_[18]\ : STD_LOGIC;
  signal \phase_accumulator_reg_n_0_[19]\ : STD_LOGIC;
  signal \phase_accumulator_reg_n_0_[20]\ : STD_LOGIC;
  signal \phase_accumulator_reg_n_0_[21]\ : STD_LOGIC;
  signal \phase_accumulator_reg_n_0_[22]\ : STD_LOGIC;
  signal \phase_accumulator_reg_n_0_[23]\ : STD_LOGIC;
  signal \phase_accumulator_reg_n_0_[2]\ : STD_LOGIC;
  signal \phase_accumulator_reg_n_0_[3]\ : STD_LOGIC;
  signal \phase_accumulator_reg_n_0_[4]\ : STD_LOGIC;
  signal \phase_accumulator_reg_n_0_[5]\ : STD_LOGIC;
  signal \phase_accumulator_reg_n_0_[6]\ : STD_LOGIC;
  signal \phase_accumulator_reg_n_0_[7]\ : STD_LOGIC;
  signal \phase_accumulator_reg_n_0_[8]\ : STD_LOGIC;
  signal \phase_accumulator_reg_n_0_[9]\ : STD_LOGIC;
  signal \q_mixer__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal q_mixer_i_10_n_0 : STD_LOGIC;
  signal q_mixer_i_11_n_0 : STD_LOGIC;
  signal q_mixer_i_12_n_0 : STD_LOGIC;
  signal q_mixer_i_13_n_0 : STD_LOGIC;
  signal q_mixer_i_14_n_0 : STD_LOGIC;
  signal q_mixer_i_15_n_0 : STD_LOGIC;
  signal q_mixer_i_16_n_0 : STD_LOGIC;
  signal q_mixer_i_17_n_0 : STD_LOGIC;
  signal q_mixer_i_18_n_0 : STD_LOGIC;
  signal q_mixer_i_19_n_0 : STD_LOGIC;
  signal q_mixer_i_1_n_0 : STD_LOGIC;
  signal q_mixer_i_20_n_0 : STD_LOGIC;
  signal q_mixer_i_21_n_0 : STD_LOGIC;
  signal q_mixer_i_22_n_0 : STD_LOGIC;
  signal q_mixer_i_23_n_0 : STD_LOGIC;
  signal q_mixer_i_24_n_0 : STD_LOGIC;
  signal q_mixer_i_25_n_0 : STD_LOGIC;
  signal q_mixer_i_26_n_0 : STD_LOGIC;
  signal q_mixer_i_27_n_0 : STD_LOGIC;
  signal q_mixer_i_28_n_0 : STD_LOGIC;
  signal q_mixer_i_29_n_0 : STD_LOGIC;
  signal q_mixer_i_2_n_0 : STD_LOGIC;
  signal q_mixer_i_30_n_0 : STD_LOGIC;
  signal q_mixer_i_31_n_0 : STD_LOGIC;
  signal q_mixer_i_32_n_0 : STD_LOGIC;
  signal q_mixer_i_33_n_0 : STD_LOGIC;
  signal q_mixer_i_34_n_0 : STD_LOGIC;
  signal q_mixer_i_35_n_0 : STD_LOGIC;
  signal q_mixer_i_36_n_0 : STD_LOGIC;
  signal q_mixer_i_37_n_0 : STD_LOGIC;
  signal q_mixer_i_38_n_0 : STD_LOGIC;
  signal q_mixer_i_39_n_0 : STD_LOGIC;
  signal q_mixer_i_3_n_0 : STD_LOGIC;
  signal q_mixer_i_40_n_0 : STD_LOGIC;
  signal q_mixer_i_41_n_0 : STD_LOGIC;
  signal q_mixer_i_42_n_0 : STD_LOGIC;
  signal q_mixer_i_43_n_0 : STD_LOGIC;
  signal q_mixer_i_44_n_0 : STD_LOGIC;
  signal q_mixer_i_45_n_0 : STD_LOGIC;
  signal q_mixer_i_4_n_0 : STD_LOGIC;
  signal q_mixer_i_5_n_0 : STD_LOGIC;
  signal q_mixer_i_6_n_0 : STD_LOGIC;
  signal q_mixer_i_7_n_0 : STD_LOGIC;
  signal q_mixer_i_8_n_0 : STD_LOGIC;
  signal q_mixer_i_9_n_0 : STD_LOGIC;
  signal \r_out_i[15]_i_1_n_0\ : STD_LOGIC;
  signal sel : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cic_inst_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_cic_inst_i_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_cic_inst_q_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_cic_inst_q_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_i_mixer_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_i_mixer_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_i_mixer_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_i_mixer_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_i_mixer_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_i_mixer_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_i_mixer_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_i_mixer_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_i_mixer_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_i_mixer_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_i_mixer_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_phase_accumulator_reg[30]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_phase_accumulator_reg[30]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_q_mixer_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_q_mixer_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_q_mixer_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_q_mixer_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_q_mixer_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_q_mixer_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_q_mixer_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_q_mixer_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_q_mixer_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_q_mixer_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_q_mixer_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cic_inst_i : label is "cic_compiler_iq,cic_compiler_v4_0_20,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of cic_inst_i : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of cic_inst_i : label is "cic_compiler_v4_0_20,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of cic_inst_q : label is "cic_compiler_iq,cic_compiler_v4_0_20,{}";
  attribute downgradeipidentifiedwarnings of cic_inst_q : label is "yes";
  attribute x_core_info of cic_inst_q : label is "cic_compiler_v4_0_20,Vivado 2024.2";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of i_mixer : label is "{SYNTH-13 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of i_mixer_i_18 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of i_mixer_i_23 : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \phase_accumulator_reg[10]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \phase_accumulator_reg[14]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \phase_accumulator_reg[18]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \phase_accumulator_reg[22]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \phase_accumulator_reg[26]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \phase_accumulator_reg[2]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \phase_accumulator_reg[30]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \phase_accumulator_reg[6]_i_1\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of q_mixer : label is "{SYNTH-13 {cell *THIS*}}";
  attribute SOFT_HLUTNM of q_mixer_i_17 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of q_mixer_i_19 : label is "soft_lutpair0";
begin
  iq_tvalid <= \^iq_tvalid\;
cic_inst_i: component design_1_IQ_DDC_0_0_cic_compiler_iq
     port map (
      aclk => clk,
      aresetn => rst_n,
      m_axis_data_tdata(31 downto 16) => cic_out_i(31 downto 16),
      m_axis_data_tdata(15 downto 0) => NLW_cic_inst_i_m_axis_data_tdata_UNCONNECTED(15 downto 0),
      m_axis_data_tvalid => \^iq_tvalid\,
      s_axis_data_tdata(31 downto 0) => \i_mixer__0\(31 downto 0),
      s_axis_data_tready => NLW_cic_inst_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => '1'
    );
cic_inst_q: component design_1_IQ_DDC_0_0_cic_compiler_iq_HD1
     port map (
      aclk => clk,
      aresetn => rst_n,
      m_axis_data_tdata(31 downto 16) => cic_out_q(31 downto 16),
      m_axis_data_tdata(15 downto 0) => NLW_cic_inst_q_m_axis_data_tdata_UNCONNECTED(15 downto 0),
      m_axis_data_tvalid => cic_valid_q,
      s_axis_data_tdata(31 downto 0) => \q_mixer__0\(31 downto 0),
      s_axis_data_tready => NLW_cic_inst_q_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => '1'
    );
i_mixer: unisim.vcomponents.DSP48E1
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
      A(29) => iq_data_in(15),
      A(28) => iq_data_in(15),
      A(27) => iq_data_in(15),
      A(26) => iq_data_in(15),
      A(25) => iq_data_in(15),
      A(24) => iq_data_in(15),
      A(23) => iq_data_in(15),
      A(22) => iq_data_in(15),
      A(21) => iq_data_in(15),
      A(20) => iq_data_in(15),
      A(19) => iq_data_in(15),
      A(18) => iq_data_in(15),
      A(17) => iq_data_in(15),
      A(16) => iq_data_in(15),
      A(15 downto 0) => iq_data_in(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_i_mixer_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => p_0_out(15),
      B(16) => p_0_out(15),
      B(15 downto 0) => p_0_out(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_i_mixer_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_i_mixer_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_i_mixer_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_i_mixer_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_i_mixer_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_i_mixer_P_UNCONNECTED(47 downto 32),
      P(31 downto 0) => \i_mixer__0\(31 downto 0),
      PATTERNBDETECT => NLW_i_mixer_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_i_mixer_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_i_mixer_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_i_mixer_UNDERFLOW_UNCONNECTED
    );
i_mixer_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100FFFFFFFE0000"
    )
        port map (
      I0 => sel(5),
      I1 => sel(4),
      I2 => sel(3),
      I3 => i_mixer_i_17_n_0,
      I4 => sel(6),
      I5 => sel(7),
      O => p_0_out(15)
    );
i_mixer_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_mixer_i_48_n_0,
      I1 => i_mixer_i_49_n_0,
      I2 => sel(5),
      I3 => i_mixer_i_50_n_0,
      I4 => sel(6),
      I5 => i_mixer_i_51_n_0,
      O => p_0_out(6)
    );
i_mixer_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_mixer_i_52_n_0,
      I1 => i_mixer_i_53_n_0,
      I2 => sel(5),
      I3 => i_mixer_i_54_n_0,
      I4 => sel(6),
      I5 => i_mixer_i_55_n_0,
      O => p_0_out(5)
    );
i_mixer_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_mixer_i_56_n_0,
      I1 => i_mixer_i_57_n_0,
      I2 => sel(5),
      I3 => i_mixer_i_58_n_0,
      I4 => sel(6),
      I5 => i_mixer_i_59_n_0,
      O => p_0_out(4)
    );
i_mixer_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_mixer_i_60_n_0,
      I1 => i_mixer_i_61_n_0,
      I2 => sel(5),
      I3 => i_mixer_i_62_n_0,
      I4 => sel(6),
      I5 => i_mixer_i_63_n_0,
      O => p_0_out(3)
    );
i_mixer_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_mixer_i_64_n_0,
      I1 => i_mixer_i_65_n_0,
      I2 => sel(5),
      I3 => i_mixer_i_66_n_0,
      I4 => sel(6),
      I5 => i_mixer_i_67_n_0,
      O => p_0_out(2)
    );
i_mixer_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_mixer_i_68_n_0,
      I1 => i_mixer_i_69_n_0,
      I2 => sel(5),
      I3 => i_mixer_i_70_n_0,
      I4 => sel(6),
      I5 => i_mixer_i_71_n_0,
      O => p_0_out(1)
    );
i_mixer_i_16: unisim.vcomponents.MUXF7
     port map (
      I0 => i_mixer_i_72_n_0,
      I1 => i_mixer_i_73_n_0,
      O => p_0_out(0),
      S => sel(5)
    );
i_mixer_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => sel(0),
      I1 => sel(2),
      I2 => sel(1),
      I3 => sel(7),
      O => i_mixer_i_17_n_0
    );
i_mixer_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F80007FF"
    )
        port map (
      I0 => sel(1),
      I1 => sel(0),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(7),
      O => i_mixer_i_18_n_0
    );
i_mixer_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88888855777776"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => i_mixer_i_19_n_0
    );
i_mixer_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0E0E00F004F4F"
    )
        port map (
      I0 => sel(4),
      I1 => i_mixer_i_18_n_0,
      I2 => sel(5),
      I3 => i_mixer_i_19_n_0,
      I4 => sel(6),
      I5 => sel(7),
      O => p_0_out(14)
    );
i_mixer_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEE00000111"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(1),
      I3 => sel(0),
      I4 => sel(2),
      I5 => sel(7),
      O => i_mixer_i_20_n_0
    );
i_mixer_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABFDD55554022AA"
    )
        port map (
      I0 => sel(4),
      I1 => sel(1),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(3),
      I5 => sel(7),
      O => i_mixer_i_21_n_0
    );
i_mixer_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44626622BB9D99DC"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => i_mixer_i_22_n_0
    );
i_mixer_i_23: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80007FFF"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      I4 => sel(7),
      O => i_mixer_i_23_n_0
    );
i_mixer_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEABBB11115444"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(1),
      I3 => sel(0),
      I4 => sel(2),
      I5 => sel(7),
      O => i_mixer_i_24_n_0
    );
i_mixer_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99BAA6646645599B"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(1),
      I4 => sel(2),
      I5 => sel(7),
      O => i_mixer_i_25_n_0
    );
i_mixer_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9926AA6666D95598"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => i_mixer_i_26_n_0
    );
i_mixer_i_27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5EAA0000A155FFFF"
    )
        port map (
      I0 => sel(3),
      I1 => sel(0),
      I2 => sel(1),
      I3 => sel(2),
      I4 => sel(4),
      I5 => sel(7),
      O => i_mixer_i_27_n_0
    );
i_mixer_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAEDFD45551202"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(1),
      I3 => sel(0),
      I4 => sel(2),
      I5 => sel(7),
      O => i_mixer_i_28_n_0
    );
i_mixer_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC1D33E223C6DC39"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(7),
      I5 => sel(1),
      O => i_mixer_i_29_n_0
    );
i_mixer_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_mixer_i_20_n_0,
      I1 => i_mixer_i_21_n_0,
      I2 => sel(5),
      I3 => i_mixer_i_22_n_0,
      I4 => sel(6),
      I5 => i_mixer_i_23_n_0,
      O => p_0_out(13)
    );
i_mixer_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4BC73C43B438C3A"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => i_mixer_i_30_n_0
    );
i_mixer_i_31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"68280A2A97D7F5D5"
    )
        port map (
      I0 => sel(4),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(0),
      I4 => sel(3),
      I5 => sel(7),
      O => i_mixer_i_31_n_0
    );
i_mixer_i_32: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8BD0742B7A2485D"
    )
        port map (
      I0 => sel(4),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(0),
      I4 => sel(7),
      I5 => sel(1),
      O => i_mixer_i_32_n_0
    );
i_mixer_i_33: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D30E2CF1E11B1EE4"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(2),
      I3 => sel(0),
      I4 => sel(7),
      I5 => sel(1),
      O => i_mixer_i_33_n_0
    );
i_mixer_i_34: unisim.vcomponents.LUT6
    generic map(
      INIT => X"788F37488770C8B6"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => i_mixer_i_34_n_0
    );
i_mixer_i_35: unisim.vcomponents.LUT6
    generic map(
      INIT => X"37620288C89DFD77"
    )
        port map (
      I0 => sel(4),
      I1 => sel(1),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(3),
      I5 => sel(7),
      O => i_mixer_i_35_n_0
    );
i_mixer_i_36: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE0AE95F41F516A0"
    )
        port map (
      I0 => sel(4),
      I1 => sel(2),
      I2 => sel(1),
      I3 => sel(3),
      I4 => sel(0),
      I5 => sel(7),
      O => i_mixer_i_36_n_0
    );
i_mixer_i_37: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3125CEDACFDA3025"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(7),
      I5 => sel(1),
      O => i_mixer_i_37_n_0
    );
i_mixer_i_38: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45C7B038BA384FC6"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => i_mixer_i_38_n_0
    );
i_mixer_i_39: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9C9DA20863625DF7"
    )
        port map (
      I0 => sel(4),
      I1 => sel(0),
      I2 => sel(1),
      I3 => sel(2),
      I4 => sel(3),
      I5 => sel(7),
      O => i_mixer_i_39_n_0
    );
i_mixer_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_mixer_i_24_n_0,
      I1 => i_mixer_i_25_n_0,
      I2 => sel(5),
      I3 => i_mixer_i_26_n_0,
      I4 => sel(6),
      I5 => i_mixer_i_27_n_0,
      O => p_0_out(12)
    );
i_mixer_i_40: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFB040C0104FBF3F"
    )
        port map (
      I0 => sel(2),
      I1 => sel(0),
      I2 => sel(4),
      I3 => sel(1),
      I4 => sel(3),
      I5 => sel(7),
      O => i_mixer_i_40_n_0
    );
i_mixer_i_41: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D28D2D73C7BC384"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(7),
      I5 => sel(1),
      O => i_mixer_i_41_n_0
    );
i_mixer_i_42: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1E34BCB8E1CB4346"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => i_mixer_i_42_n_0
    );
i_mixer_i_43: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BDB2B8E2424D471D"
    )
        port map (
      I0 => sel(4),
      I1 => sel(0),
      I2 => sel(3),
      I3 => sel(1),
      I4 => sel(2),
      I5 => sel(7),
      O => i_mixer_i_43_n_0
    );
i_mixer_i_44: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B392DF554C6D20AA"
    )
        port map (
      I0 => sel(4),
      I1 => sel(0),
      I2 => sel(2),
      I3 => sel(1),
      I4 => sel(3),
      I5 => sel(7),
      O => i_mixer_i_44_n_0
    );
i_mixer_i_45: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAB76724554898DB"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(1),
      I3 => sel(0),
      I4 => sel(2),
      I5 => sel(7),
      O => i_mixer_i_45_n_0
    );
i_mixer_i_46: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1BA291A6E45D6E58"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => i_mixer_i_46_n_0
    );
i_mixer_i_47: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7035642A8FCA9BD5"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(1),
      I4 => sel(2),
      I5 => sel(7),
      O => i_mixer_i_47_n_0
    );
i_mixer_i_48: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A95556AA7F2680D9"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(7),
      I5 => sel(1),
      O => i_mixer_i_48_n_0
    );
i_mixer_i_49: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B7F2480D7B2584DA"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(7),
      I5 => sel(1),
      O => i_mixer_i_49_n_0
    );
i_mixer_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_mixer_i_28_n_0,
      I1 => i_mixer_i_29_n_0,
      I2 => sel(5),
      I3 => i_mixer_i_30_n_0,
      I4 => sel(6),
      I5 => i_mixer_i_31_n_0,
      O => p_0_out(11)
    );
i_mixer_i_50: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB11022644EEFDD8"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => i_mixer_i_50_n_0
    );
i_mixer_i_51: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B55016A44AAFE95B"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(1),
      I4 => sel(2),
      I5 => sel(7),
      O => i_mixer_i_51_n_0
    );
i_mixer_i_52: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B69F10744960EF8B"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(1),
      I4 => sel(2),
      I5 => sel(7),
      O => i_mixer_i_52_n_0
    );
i_mixer_i_53: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A5E95A14C35B3CA"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(7),
      I5 => sel(1),
      O => i_mixer_i_53_n_0
    );
i_mixer_i_54: unisim.vcomponents.LUT6
    generic map(
      INIT => X"38DA5C96C725A368"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => i_mixer_i_54_n_0
    );
i_mixer_i_55: unisim.vcomponents.LUT6
    generic map(
      INIT => X"16F9E90672068DF9"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(2),
      I3 => sel(0),
      I4 => sel(7),
      I5 => sel(1),
      O => i_mixer_i_55_n_0
    );
i_mixer_i_56: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8C4973B663909C6F"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(7),
      I5 => sel(1),
      O => i_mixer_i_56_n_0
    );
i_mixer_i_57: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8B85747EA85157A"
    )
        port map (
      I0 => sel(4),
      I1 => sel(0),
      I2 => sel(3),
      I3 => sel(2),
      I4 => sel(7),
      I5 => sel(1),
      O => i_mixer_i_57_n_0
    );
i_mixer_i_58: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6C8EAAAE93715550"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => i_mixer_i_58_n_0
    );
i_mixer_i_59: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66D39CEE992C6311"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(1),
      I4 => sel(2),
      I5 => sel(7),
      O => i_mixer_i_59_n_0
    );
i_mixer_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_mixer_i_32_n_0,
      I1 => i_mixer_i_33_n_0,
      I2 => sel(5),
      I3 => i_mixer_i_34_n_0,
      I4 => sel(6),
      I5 => i_mixer_i_35_n_0,
      O => p_0_out(10)
    );
i_mixer_i_60: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B32FCACFCDD0353"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(1),
      I4 => sel(2),
      I5 => sel(7),
      O => i_mixer_i_60_n_0
    );
i_mixer_i_61: unisim.vcomponents.LUT6
    generic map(
      INIT => X"982769B16FDA9E4E"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(1),
      I4 => sel(2),
      I5 => sel(7),
      O => i_mixer_i_61_n_0
    );
i_mixer_i_62: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27D9BF41956E6E90"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(7),
      I4 => sel(2),
      I5 => sel(1),
      O => i_mixer_i_62_n_0
    );
i_mixer_i_63: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACB30BF253CDF40D"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => i_mixer_i_63_n_0
    );
i_mixer_i_64: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D45B6B2EE82467FB"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(2),
      I3 => sel(0),
      I4 => sel(7),
      I5 => sel(1),
      O => i_mixer_i_64_n_0
    );
i_mixer_i_65: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B960D617EF9F50C4"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(2),
      I3 => sel(0),
      I4 => sel(7),
      I5 => sel(1),
      O => i_mixer_i_65_n_0
    );
i_mixer_i_66: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE0A7866939BD8E"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(7),
      I3 => sel(0),
      I4 => sel(2),
      I5 => sel(1),
      O => i_mixer_i_66_n_0
    );
i_mixer_i_67: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E764DF661D7A24B9"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => i_mixer_i_67_n_0
    );
i_mixer_i_68: unisim.vcomponents.LUT6
    generic map(
      INIT => X"315196E484718D8F"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(7),
      I5 => sel(1),
      O => i_mixer_i_68_n_0
    );
i_mixer_i_69: unisim.vcomponents.LUT6
    generic map(
      INIT => X"062567F684F9B5D3"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(7),
      I5 => sel(1),
      O => i_mixer_i_69_n_0
    );
i_mixer_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_mixer_i_36_n_0,
      I1 => i_mixer_i_37_n_0,
      I2 => sel(5),
      I3 => i_mixer_i_38_n_0,
      I4 => sel(6),
      I5 => i_mixer_i_39_n_0,
      O => p_0_out(9)
    );
i_mixer_i_70: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFD6F4106AE2A264"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(1),
      I3 => sel(2),
      I4 => sel(7),
      I5 => sel(0),
      O => i_mixer_i_70_n_0
    );
i_mixer_i_71: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1216E8187B9EA2C1"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(7),
      I5 => sel(1),
      O => i_mixer_i_71_n_0
    );
i_mixer_i_72: unisim.vcomponents.LUT6
    generic map(
      INIT => X"75A0E4D4DB39C17D"
    )
        port map (
      I0 => sel(6),
      I1 => sel(4),
      I2 => sel(3),
      I3 => sel(2),
      I4 => sel(0),
      I5 => sel(1),
      O => i_mixer_i_72_n_0
    );
i_mixer_i_73: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9C2B0583DB27AEEC"
    )
        port map (
      I0 => sel(6),
      I1 => sel(4),
      I2 => sel(3),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => i_mixer_i_73_n_0
    );
i_mixer_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_mixer_i_40_n_0,
      I1 => i_mixer_i_41_n_0,
      I2 => sel(5),
      I3 => i_mixer_i_42_n_0,
      I4 => sel(6),
      I5 => i_mixer_i_43_n_0,
      O => p_0_out(8)
    );
i_mixer_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i_mixer_i_44_n_0,
      I1 => i_mixer_i_45_n_0,
      I2 => sel(5),
      I3 => i_mixer_i_46_n_0,
      I4 => sel(6),
      I5 => i_mixer_i_47_n_0,
      O => p_0_out(7)
    );
\phase_accumulator[10]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[13]\,
      O => \phase_accumulator[10]_i_2_n_0\
    );
\phase_accumulator[10]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[12]\,
      O => \phase_accumulator[10]_i_3_n_0\
    );
\phase_accumulator[14]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[16]\,
      O => \phase_accumulator[14]_i_2_n_0\
    );
\phase_accumulator[14]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[14]\,
      O => \phase_accumulator[14]_i_3_n_0\
    );
\phase_accumulator[18]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[21]\,
      O => \phase_accumulator[18]_i_2_n_0\
    );
\phase_accumulator[18]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[20]\,
      O => \phase_accumulator[18]_i_3_n_0\
    );
\phase_accumulator[18]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[19]\,
      O => \phase_accumulator[18]_i_4_n_0\
    );
\phase_accumulator[18]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[18]\,
      O => \phase_accumulator[18]_i_5_n_0\
    );
\phase_accumulator[22]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel(1),
      O => \phase_accumulator[22]_i_2_n_0\
    );
\phase_accumulator[26]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel(3),
      O => \phase_accumulator[26]_i_2_n_0\
    );
\phase_accumulator[2]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[5]\,
      O => \phase_accumulator[2]_i_2_n_0\
    );
\phase_accumulator[2]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[2]\,
      O => \phase_accumulator[2]_i_3_n_0\
    );
\phase_accumulator[6]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[7]\,
      O => \phase_accumulator[6]_i_2_n_0\
    );
\phase_accumulator_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[10]_i_1_n_7\,
      Q => \phase_accumulator_reg_n_0_[10]\
    );
\phase_accumulator_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_accumulator_reg[6]_i_1_n_0\,
      CO(3) => \phase_accumulator_reg[10]_i_1_n_0\,
      CO(2) => \phase_accumulator_reg[10]_i_1_n_1\,
      CO(1) => \phase_accumulator_reg[10]_i_1_n_2\,
      CO(0) => \phase_accumulator_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1100",
      O(3) => \phase_accumulator_reg[10]_i_1_n_4\,
      O(2) => \phase_accumulator_reg[10]_i_1_n_5\,
      O(1) => \phase_accumulator_reg[10]_i_1_n_6\,
      O(0) => \phase_accumulator_reg[10]_i_1_n_7\,
      S(3) => \phase_accumulator[10]_i_2_n_0\,
      S(2) => \phase_accumulator[10]_i_3_n_0\,
      S(1) => \phase_accumulator_reg_n_0_[11]\,
      S(0) => \phase_accumulator_reg_n_0_[10]\
    );
\phase_accumulator_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[10]_i_1_n_6\,
      Q => \phase_accumulator_reg_n_0_[11]\
    );
\phase_accumulator_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[10]_i_1_n_5\,
      Q => \phase_accumulator_reg_n_0_[12]\
    );
\phase_accumulator_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[10]_i_1_n_4\,
      Q => \phase_accumulator_reg_n_0_[13]\
    );
\phase_accumulator_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[14]_i_1_n_7\,
      Q => \phase_accumulator_reg_n_0_[14]\
    );
\phase_accumulator_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_accumulator_reg[10]_i_1_n_0\,
      CO(3) => \phase_accumulator_reg[14]_i_1_n_0\,
      CO(2) => \phase_accumulator_reg[14]_i_1_n_1\,
      CO(1) => \phase_accumulator_reg[14]_i_1_n_2\,
      CO(0) => \phase_accumulator_reg[14]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0101",
      O(3) => \phase_accumulator_reg[14]_i_1_n_4\,
      O(2) => \phase_accumulator_reg[14]_i_1_n_5\,
      O(1) => \phase_accumulator_reg[14]_i_1_n_6\,
      O(0) => \phase_accumulator_reg[14]_i_1_n_7\,
      S(3) => \phase_accumulator_reg_n_0_[17]\,
      S(2) => \phase_accumulator[14]_i_2_n_0\,
      S(1) => \phase_accumulator_reg_n_0_[15]\,
      S(0) => \phase_accumulator[14]_i_3_n_0\
    );
\phase_accumulator_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[14]_i_1_n_6\,
      Q => \phase_accumulator_reg_n_0_[15]\
    );
\phase_accumulator_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[14]_i_1_n_5\,
      Q => \phase_accumulator_reg_n_0_[16]\
    );
\phase_accumulator_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[14]_i_1_n_4\,
      Q => \phase_accumulator_reg_n_0_[17]\
    );
\phase_accumulator_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[18]_i_1_n_7\,
      Q => \phase_accumulator_reg_n_0_[18]\
    );
\phase_accumulator_reg[18]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_accumulator_reg[14]_i_1_n_0\,
      CO(3) => \phase_accumulator_reg[18]_i_1_n_0\,
      CO(2) => \phase_accumulator_reg[18]_i_1_n_1\,
      CO(1) => \phase_accumulator_reg[18]_i_1_n_2\,
      CO(0) => \phase_accumulator_reg[18]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \phase_accumulator_reg[18]_i_1_n_4\,
      O(2) => \phase_accumulator_reg[18]_i_1_n_5\,
      O(1) => \phase_accumulator_reg[18]_i_1_n_6\,
      O(0) => \phase_accumulator_reg[18]_i_1_n_7\,
      S(3) => \phase_accumulator[18]_i_2_n_0\,
      S(2) => \phase_accumulator[18]_i_3_n_0\,
      S(1) => \phase_accumulator[18]_i_4_n_0\,
      S(0) => \phase_accumulator[18]_i_5_n_0\
    );
\phase_accumulator_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[18]_i_1_n_6\,
      Q => \phase_accumulator_reg_n_0_[19]\
    );
\phase_accumulator_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[18]_i_1_n_5\,
      Q => \phase_accumulator_reg_n_0_[20]\
    );
\phase_accumulator_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[18]_i_1_n_4\,
      Q => \phase_accumulator_reg_n_0_[21]\
    );
\phase_accumulator_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[22]_i_1_n_7\,
      Q => \phase_accumulator_reg_n_0_[22]\
    );
\phase_accumulator_reg[22]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_accumulator_reg[18]_i_1_n_0\,
      CO(3) => \phase_accumulator_reg[22]_i_1_n_0\,
      CO(2) => \phase_accumulator_reg[22]_i_1_n_1\,
      CO(1) => \phase_accumulator_reg[22]_i_1_n_2\,
      CO(0) => \phase_accumulator_reg[22]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1000",
      O(3) => \phase_accumulator_reg[22]_i_1_n_4\,
      O(2) => \phase_accumulator_reg[22]_i_1_n_5\,
      O(1) => \phase_accumulator_reg[22]_i_1_n_6\,
      O(0) => \phase_accumulator_reg[22]_i_1_n_7\,
      S(3) => \phase_accumulator[22]_i_2_n_0\,
      S(2) => sel(0),
      S(1) => \phase_accumulator_reg_n_0_[23]\,
      S(0) => \phase_accumulator_reg_n_0_[22]\
    );
\phase_accumulator_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[22]_i_1_n_6\,
      Q => \phase_accumulator_reg_n_0_[23]\
    );
\phase_accumulator_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[22]_i_1_n_5\,
      Q => sel(0)
    );
\phase_accumulator_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[22]_i_1_n_4\,
      Q => sel(1)
    );
\phase_accumulator_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[26]_i_1_n_7\,
      Q => sel(2)
    );
\phase_accumulator_reg[26]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_accumulator_reg[22]_i_1_n_0\,
      CO(3) => \phase_accumulator_reg[26]_i_1_n_0\,
      CO(2) => \phase_accumulator_reg[26]_i_1_n_1\,
      CO(1) => \phase_accumulator_reg[26]_i_1_n_2\,
      CO(0) => \phase_accumulator_reg[26]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0010",
      O(3) => \phase_accumulator_reg[26]_i_1_n_4\,
      O(2) => \phase_accumulator_reg[26]_i_1_n_5\,
      O(1) => \phase_accumulator_reg[26]_i_1_n_6\,
      O(0) => \phase_accumulator_reg[26]_i_1_n_7\,
      S(3 downto 2) => sel(5 downto 4),
      S(1) => \phase_accumulator[26]_i_2_n_0\,
      S(0) => sel(2)
    );
\phase_accumulator_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[26]_i_1_n_6\,
      Q => sel(3)
    );
\phase_accumulator_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[26]_i_1_n_5\,
      Q => sel(4)
    );
\phase_accumulator_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[26]_i_1_n_4\,
      Q => sel(5)
    );
\phase_accumulator_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[2]_i_1_n_7\,
      Q => \phase_accumulator_reg_n_0_[2]\
    );
\phase_accumulator_reg[2]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \phase_accumulator_reg[2]_i_1_n_0\,
      CO(2) => \phase_accumulator_reg[2]_i_1_n_1\,
      CO(1) => \phase_accumulator_reg[2]_i_1_n_2\,
      CO(0) => \phase_accumulator_reg[2]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1001",
      O(3) => \phase_accumulator_reg[2]_i_1_n_4\,
      O(2) => \phase_accumulator_reg[2]_i_1_n_5\,
      O(1) => \phase_accumulator_reg[2]_i_1_n_6\,
      O(0) => \phase_accumulator_reg[2]_i_1_n_7\,
      S(3) => \phase_accumulator[2]_i_2_n_0\,
      S(2) => \phase_accumulator_reg_n_0_[4]\,
      S(1) => \phase_accumulator_reg_n_0_[3]\,
      S(0) => \phase_accumulator[2]_i_3_n_0\
    );
\phase_accumulator_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[30]_i_1_n_7\,
      Q => sel(6)
    );
\phase_accumulator_reg[30]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_accumulator_reg[26]_i_1_n_0\,
      CO(3 downto 1) => \NLW_phase_accumulator_reg[30]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \phase_accumulator_reg[30]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_phase_accumulator_reg[30]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \phase_accumulator_reg[30]_i_1_n_6\,
      O(0) => \phase_accumulator_reg[30]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => sel(7 downto 6)
    );
\phase_accumulator_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[30]_i_1_n_6\,
      Q => sel(7)
    );
\phase_accumulator_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[2]_i_1_n_6\,
      Q => \phase_accumulator_reg_n_0_[3]\
    );
\phase_accumulator_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[2]_i_1_n_5\,
      Q => \phase_accumulator_reg_n_0_[4]\
    );
\phase_accumulator_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[2]_i_1_n_4\,
      Q => \phase_accumulator_reg_n_0_[5]\
    );
\phase_accumulator_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[6]_i_1_n_7\,
      Q => \phase_accumulator_reg_n_0_[6]\
    );
\phase_accumulator_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_accumulator_reg[2]_i_1_n_0\,
      CO(3) => \phase_accumulator_reg[6]_i_1_n_0\,
      CO(2) => \phase_accumulator_reg[6]_i_1_n_1\,
      CO(1) => \phase_accumulator_reg[6]_i_1_n_2\,
      CO(0) => \phase_accumulator_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0010",
      O(3) => \phase_accumulator_reg[6]_i_1_n_4\,
      O(2) => \phase_accumulator_reg[6]_i_1_n_5\,
      O(1) => \phase_accumulator_reg[6]_i_1_n_6\,
      O(0) => \phase_accumulator_reg[6]_i_1_n_7\,
      S(3) => \phase_accumulator_reg_n_0_[9]\,
      S(2) => \phase_accumulator_reg_n_0_[8]\,
      S(1) => \phase_accumulator[6]_i_2_n_0\,
      S(0) => \phase_accumulator_reg_n_0_[6]\
    );
\phase_accumulator_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[6]_i_1_n_6\,
      Q => \phase_accumulator_reg_n_0_[7]\
    );
\phase_accumulator_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[6]_i_1_n_5\,
      Q => \phase_accumulator_reg_n_0_[8]\
    );
\phase_accumulator_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \r_out_i[15]_i_1_n_0\,
      D => \phase_accumulator_reg[6]_i_1_n_4\,
      Q => \phase_accumulator_reg_n_0_[9]\
    );
q_mixer: unisim.vcomponents.DSP48E1
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
      A(29) => iq_data_in(15),
      A(28) => iq_data_in(15),
      A(27) => iq_data_in(15),
      A(26) => iq_data_in(15),
      A(25) => iq_data_in(15),
      A(24) => iq_data_in(15),
      A(23) => iq_data_in(15),
      A(22) => iq_data_in(15),
      A(21) => iq_data_in(15),
      A(20) => iq_data_in(15),
      A(19) => iq_data_in(15),
      A(18) => iq_data_in(15),
      A(17) => iq_data_in(15),
      A(16) => iq_data_in(15),
      A(15 downto 0) => iq_data_in(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_q_mixer_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => q_mixer_i_1_n_0,
      B(16) => q_mixer_i_1_n_0,
      B(15) => q_mixer_i_1_n_0,
      B(14) => q_mixer_i_2_n_0,
      B(13) => q_mixer_i_3_n_0,
      B(12) => q_mixer_i_4_n_0,
      B(11) => q_mixer_i_5_n_0,
      B(10) => q_mixer_i_6_n_0,
      B(9) => q_mixer_i_7_n_0,
      B(8) => q_mixer_i_8_n_0,
      B(7) => q_mixer_i_9_n_0,
      B(6) => q_mixer_i_10_n_0,
      B(5) => q_mixer_i_11_n_0,
      B(4) => q_mixer_i_12_n_0,
      B(3) => q_mixer_i_13_n_0,
      B(2) => q_mixer_i_14_n_0,
      B(1) => q_mixer_i_15_n_0,
      B(0) => q_mixer_i_16_n_0,
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_q_mixer_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_q_mixer_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_q_mixer_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_q_mixer_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_q_mixer_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_q_mixer_P_UNCONNECTED(47 downto 32),
      P(31 downto 0) => \q_mixer__0\(31 downto 0),
      PATTERNBDETECT => NLW_q_mixer_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_q_mixer_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_q_mixer_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_q_mixer_UNDERFLOW_UNCONNECTED
    );
q_mixer_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF01FF00FF00FE"
    )
        port map (
      I0 => sel(6),
      I1 => sel(5),
      I2 => sel(4),
      I3 => sel(7),
      I4 => sel(3),
      I5 => i_mixer_i_17_n_0,
      O => q_mixer_i_1_n_0
    );
q_mixer_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => q_mixer_i_32_n_0,
      I1 => q_mixer_i_33_n_0,
      I2 => sel(6),
      I3 => i_mixer_i_48_n_0,
      I4 => sel(5),
      I5 => i_mixer_i_50_n_0,
      O => q_mixer_i_10_n_0
    );
q_mixer_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => q_mixer_i_34_n_0,
      I1 => q_mixer_i_35_n_0,
      I2 => sel(6),
      I3 => i_mixer_i_52_n_0,
      I4 => sel(5),
      I5 => i_mixer_i_54_n_0,
      O => q_mixer_i_11_n_0
    );
q_mixer_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => q_mixer_i_36_n_0,
      I1 => q_mixer_i_37_n_0,
      I2 => sel(6),
      I3 => i_mixer_i_56_n_0,
      I4 => sel(5),
      I5 => i_mixer_i_58_n_0,
      O => q_mixer_i_12_n_0
    );
q_mixer_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => q_mixer_i_38_n_0,
      I1 => q_mixer_i_39_n_0,
      I2 => sel(6),
      I3 => i_mixer_i_60_n_0,
      I4 => sel(5),
      I5 => i_mixer_i_62_n_0,
      O => q_mixer_i_13_n_0
    );
q_mixer_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => q_mixer_i_40_n_0,
      I1 => q_mixer_i_41_n_0,
      I2 => sel(6),
      I3 => i_mixer_i_64_n_0,
      I4 => sel(5),
      I5 => i_mixer_i_66_n_0,
      O => q_mixer_i_14_n_0
    );
q_mixer_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => q_mixer_i_42_n_0,
      I1 => q_mixer_i_43_n_0,
      I2 => sel(6),
      I3 => i_mixer_i_68_n_0,
      I4 => sel(5),
      I5 => i_mixer_i_70_n_0,
      O => q_mixer_i_15_n_0
    );
q_mixer_i_16: unisim.vcomponents.MUXF7
     port map (
      I0 => q_mixer_i_44_n_0,
      I1 => q_mixer_i_45_n_0,
      O => q_mixer_i_16_n_0,
      S => sel(6)
    );
q_mixer_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07FFF800"
    )
        port map (
      I0 => sel(1),
      I1 => sel(0),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(7),
      O => q_mixer_i_17_n_0
    );
q_mixer_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"554022AAAABFDD55"
    )
        port map (
      I0 => sel(4),
      I1 => sel(1),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(3),
      I5 => sel(7),
      O => q_mixer_i_18_n_0
    );
q_mixer_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      I4 => sel(7),
      O => q_mixer_i_19_n_0
    );
q_mixer_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FE0FF0F4FE0F000"
    )
        port map (
      I0 => sel(4),
      I1 => q_mixer_i_17_n_0,
      I2 => sel(6),
      I3 => sel(7),
      I4 => sel(5),
      I5 => i_mixer_i_19_n_0,
      O => q_mixer_i_2_n_0
    );
q_mixer_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6645599B99BAA664"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(1),
      I4 => sel(2),
      I5 => sel(7),
      O => q_mixer_i_20_n_0
    );
q_mixer_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A155FFFF5EAA0000"
    )
        port map (
      I0 => sel(3),
      I1 => sel(0),
      I2 => sel(1),
      I3 => sel(2),
      I4 => sel(4),
      I5 => sel(7),
      O => q_mixer_i_21_n_0
    );
q_mixer_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33E2CC1DDC3923C6"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(7),
      I5 => sel(1),
      O => q_mixer_i_22_n_0
    );
q_mixer_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"97D7F5D568280A2A"
    )
        port map (
      I0 => sel(4),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(0),
      I4 => sel(3),
      I5 => sel(7),
      O => q_mixer_i_23_n_0
    );
q_mixer_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2CF1D30E1EE4E11B"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(2),
      I3 => sel(0),
      I4 => sel(7),
      I5 => sel(1),
      O => q_mixer_i_24_n_0
    );
q_mixer_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C89DFD7737620288"
    )
        port map (
      I0 => sel(4),
      I1 => sel(1),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(3),
      I5 => sel(7),
      O => q_mixer_i_25_n_0
    );
q_mixer_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CEDA31253025CFDA"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(7),
      I5 => sel(1),
      O => q_mixer_i_26_n_0
    );
q_mixer_i_27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"63625DF79C9DA208"
    )
        port map (
      I0 => sel(4),
      I1 => sel(0),
      I2 => sel(1),
      I3 => sel(2),
      I4 => sel(3),
      I5 => sel(7),
      O => q_mixer_i_27_n_0
    );
q_mixer_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D2D72D28C3843C7B"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(7),
      I5 => sel(1),
      O => q_mixer_i_28_n_0
    );
q_mixer_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"424D471DBDB2B8E2"
    )
        port map (
      I0 => sel(4),
      I1 => sel(0),
      I2 => sel(3),
      I3 => sel(1),
      I4 => sel(2),
      I5 => sel(7),
      O => q_mixer_i_29_n_0
    );
q_mixer_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => q_mixer_i_18_n_0,
      I1 => q_mixer_i_19_n_0,
      I2 => sel(6),
      I3 => i_mixer_i_20_n_0,
      I4 => sel(5),
      I5 => i_mixer_i_22_n_0,
      O => q_mixer_i_3_n_0
    );
q_mixer_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"554898DBAAB76724"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(1),
      I3 => sel(0),
      I4 => sel(2),
      I5 => sel(7),
      O => q_mixer_i_30_n_0
    );
q_mixer_i_31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FCA9BD57035642A"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(1),
      I4 => sel(2),
      I5 => sel(7),
      O => q_mixer_i_31_n_0
    );
q_mixer_i_32: unisim.vcomponents.LUT6
    generic map(
      INIT => X"480DB7F284DA7B25"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(7),
      I5 => sel(1),
      O => q_mixer_i_32_n_0
    );
q_mixer_i_33: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4AAFE95BB55016A4"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(1),
      I4 => sel(2),
      I5 => sel(7),
      O => q_mixer_i_33_n_0
    );
q_mixer_i_34: unisim.vcomponents.LUT6
    generic map(
      INIT => X"95A16A5EB3CA4C35"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(7),
      I5 => sel(1),
      O => q_mixer_i_34_n_0
    );
q_mixer_i_35: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E90616F98DF97206"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(2),
      I3 => sel(0),
      I4 => sel(7),
      I5 => sel(1),
      O => q_mixer_i_35_n_0
    );
q_mixer_i_36: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5747A8B8157AEA85"
    )
        port map (
      I0 => sel(4),
      I1 => sel(0),
      I2 => sel(3),
      I3 => sel(2),
      I4 => sel(7),
      I5 => sel(1),
      O => q_mixer_i_36_n_0
    );
q_mixer_i_37: unisim.vcomponents.LUT6
    generic map(
      INIT => X"992C631166D39CEE"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(1),
      I4 => sel(2),
      I5 => sel(7),
      O => q_mixer_i_37_n_0
    );
q_mixer_i_38: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FDA9E4E982769B1"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(1),
      I4 => sel(2),
      I5 => sel(7),
      O => q_mixer_i_38_n_0
    );
q_mixer_i_39: unisim.vcomponents.LUT6
    generic map(
      INIT => X"53CDF40DACB30BF2"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => q_mixer_i_39_n_0
    );
q_mixer_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => q_mixer_i_20_n_0,
      I1 => q_mixer_i_21_n_0,
      I2 => sel(6),
      I3 => i_mixer_i_24_n_0,
      I4 => sel(5),
      I5 => i_mixer_i_26_n_0,
      O => q_mixer_i_4_n_0
    );
q_mixer_i_40: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D617B96050C4EF9F"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(2),
      I3 => sel(0),
      I4 => sel(7),
      I5 => sel(1),
      O => q_mixer_i_40_n_0
    );
q_mixer_i_41: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D7A24B9E764DF66"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => q_mixer_i_41_n_0
    );
q_mixer_i_42: unisim.vcomponents.LUT6
    generic map(
      INIT => X"67F60625B5D384F9"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(7),
      I5 => sel(1),
      O => q_mixer_i_42_n_0
    );
q_mixer_i_43: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8181216A2C17B9E"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(7),
      I5 => sel(1),
      O => q_mixer_i_43_n_0
    );
q_mixer_i_44: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9845DABE7AC262BC"
    )
        port map (
      I0 => sel(5),
      I1 => sel(4),
      I2 => sel(3),
      I3 => sel(1),
      I4 => sel(2),
      I5 => sel(0),
      O => q_mixer_i_44_n_0
    );
q_mixer_i_45: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7DA2465E5B1943DD"
    )
        port map (
      I0 => sel(5),
      I1 => sel(4),
      I2 => sel(3),
      I3 => sel(2),
      I4 => sel(0),
      I5 => sel(1),
      O => q_mixer_i_45_n_0
    );
q_mixer_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => q_mixer_i_22_n_0,
      I1 => q_mixer_i_23_n_0,
      I2 => sel(6),
      I3 => i_mixer_i_28_n_0,
      I4 => sel(5),
      I5 => i_mixer_i_30_n_0,
      O => q_mixer_i_5_n_0
    );
q_mixer_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => q_mixer_i_24_n_0,
      I1 => q_mixer_i_25_n_0,
      I2 => sel(6),
      I3 => i_mixer_i_32_n_0,
      I4 => sel(5),
      I5 => i_mixer_i_34_n_0,
      O => q_mixer_i_6_n_0
    );
q_mixer_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => q_mixer_i_26_n_0,
      I1 => q_mixer_i_27_n_0,
      I2 => sel(6),
      I3 => i_mixer_i_36_n_0,
      I4 => sel(5),
      I5 => i_mixer_i_38_n_0,
      O => q_mixer_i_7_n_0
    );
q_mixer_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => q_mixer_i_28_n_0,
      I1 => q_mixer_i_29_n_0,
      I2 => sel(6),
      I3 => i_mixer_i_40_n_0,
      I4 => sel(5),
      I5 => i_mixer_i_42_n_0,
      O => q_mixer_i_8_n_0
    );
q_mixer_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => q_mixer_i_30_n_0,
      I1 => q_mixer_i_31_n_0,
      I2 => sel(6),
      I3 => i_mixer_i_44_n_0,
      I4 => sel(5),
      I5 => i_mixer_i_46_n_0,
      O => q_mixer_i_9_n_0
    );
\r_out_i[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \r_out_i[15]_i_1_n_0\
    );
\r_out_i_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^iq_tvalid\,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_i(16),
      Q => i_band(0)
    );
\r_out_i_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^iq_tvalid\,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_i(26),
      Q => i_band(10)
    );
\r_out_i_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^iq_tvalid\,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_i(27),
      Q => i_band(11)
    );
\r_out_i_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^iq_tvalid\,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_i(28),
      Q => i_band(12)
    );
\r_out_i_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^iq_tvalid\,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_i(29),
      Q => i_band(13)
    );
\r_out_i_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^iq_tvalid\,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_i(30),
      Q => i_band(14)
    );
\r_out_i_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^iq_tvalid\,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_i(31),
      Q => i_band(15)
    );
\r_out_i_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^iq_tvalid\,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_i(17),
      Q => i_band(1)
    );
\r_out_i_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^iq_tvalid\,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_i(18),
      Q => i_band(2)
    );
\r_out_i_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^iq_tvalid\,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_i(19),
      Q => i_band(3)
    );
\r_out_i_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^iq_tvalid\,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_i(20),
      Q => i_band(4)
    );
\r_out_i_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^iq_tvalid\,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_i(21),
      Q => i_band(5)
    );
\r_out_i_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^iq_tvalid\,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_i(22),
      Q => i_band(6)
    );
\r_out_i_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^iq_tvalid\,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_i(23),
      Q => i_band(7)
    );
\r_out_i_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^iq_tvalid\,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_i(24),
      Q => i_band(8)
    );
\r_out_i_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^iq_tvalid\,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_i(25),
      Q => i_band(9)
    );
\r_out_q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cic_valid_q,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_q(16),
      Q => q_band(0)
    );
\r_out_q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cic_valid_q,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_q(26),
      Q => q_band(10)
    );
\r_out_q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cic_valid_q,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_q(27),
      Q => q_band(11)
    );
\r_out_q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cic_valid_q,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_q(28),
      Q => q_band(12)
    );
\r_out_q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cic_valid_q,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_q(29),
      Q => q_band(13)
    );
\r_out_q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cic_valid_q,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_q(30),
      Q => q_band(14)
    );
\r_out_q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cic_valid_q,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_q(31),
      Q => q_band(15)
    );
\r_out_q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cic_valid_q,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_q(17),
      Q => q_band(1)
    );
\r_out_q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cic_valid_q,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_q(18),
      Q => q_band(2)
    );
\r_out_q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cic_valid_q,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_q(19),
      Q => q_band(3)
    );
\r_out_q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cic_valid_q,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_q(20),
      Q => q_band(4)
    );
\r_out_q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cic_valid_q,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_q(21),
      Q => q_band(5)
    );
\r_out_q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cic_valid_q,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_q(22),
      Q => q_band(6)
    );
\r_out_q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cic_valid_q,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_q(23),
      Q => q_band(7)
    );
\r_out_q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cic_valid_q,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_q(24),
      Q => q_band(8)
    );
\r_out_q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cic_valid_q,
      CLR => \r_out_i[15]_i_1_n_0\,
      D => cic_out_q(25),
      Q => q_band(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_IQ_DDC_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    iq_data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iq_tvalid : out STD_LOGIC;
    i_band : out STD_LOGIC_VECTOR ( 15 downto 0 );
    q_band : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_IQ_DDC_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_IQ_DDC_0_0 : entity is "design_1_IQ_DDC_0_0,IQ_DDC,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_IQ_DDC_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_IQ_DDC_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_IQ_DDC_0_0 : entity is "IQ_DDC,Vivado 2024.2";
end design_1_IQ_DDC_0_0;

architecture STRUCTURE of design_1_IQ_DDC_0_0 is
  attribute PHASE_INC : integer;
  attribute PHASE_INC of inst : label is 171798692;
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
inst: entity work.design_1_IQ_DDC_0_0_IQ_DDC
     port map (
      clk => clk,
      i_band(15 downto 0) => i_band(15 downto 0),
      iq_data_in(15 downto 0) => iq_data_in(15 downto 0),
      iq_tvalid => iq_tvalid,
      q_band(15 downto 0) => q_band(15 downto 0),
      rst_n => rst_n
    );
end STRUCTURE;
