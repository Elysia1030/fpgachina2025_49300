-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Fri Nov  7 12:12:31 2025
-- Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/elysia/Software/Xilinx/Project/11-6V3/2023D_lwx.gen/sources_1/bd/design_1/ip/design_1_PSK_DM_0_0/design_1_PSK_DM_0_0_sim_netlist.vhdl
-- Design      : design_1_PSK_DM_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_PSK_DM_0_0_costas_loop is
  port (
    rst_n_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    pm_data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rst_n : in STD_LOGIC;
    \phase_adjust_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_PSK_DM_0_0_costas_loop : entity is "costas_loop";
end design_1_PSK_DM_0_0_costas_loop;

architecture STRUCTURE of design_1_PSK_DM_0_0_costas_loop is
  component design_1_PSK_DM_0_0_fir_lpf_psk is
  port (
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  end component design_1_PSK_DM_0_0_fir_lpf_psk;
  component design_1_PSK_DM_0_0_fir_lpf_psk_HD1 is
  port (
    aclk : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_PSK_DM_0_0_fir_lpf_psk_HD1;
  signal cosine_wave : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \cosine_wave[0]_i_2_n_0\ : STD_LOGIC;
  signal \cosine_wave[0]_i_3_n_0\ : STD_LOGIC;
  signal \cosine_wave[10]_i_1_n_0\ : STD_LOGIC;
  signal \cosine_wave[10]_i_2_n_0\ : STD_LOGIC;
  signal \cosine_wave[10]_i_3_n_0\ : STD_LOGIC;
  signal \cosine_wave[11]_i_1_n_0\ : STD_LOGIC;
  signal \cosine_wave[11]_i_2_n_0\ : STD_LOGIC;
  signal \cosine_wave[11]_i_3_n_0\ : STD_LOGIC;
  signal \cosine_wave[12]_i_1_n_0\ : STD_LOGIC;
  signal \cosine_wave[12]_i_2_n_0\ : STD_LOGIC;
  signal \cosine_wave[12]_i_3_n_0\ : STD_LOGIC;
  signal \cosine_wave[13]_i_2_n_0\ : STD_LOGIC;
  signal \cosine_wave[13]_i_3_n_0\ : STD_LOGIC;
  signal \cosine_wave[13]_i_4_n_0\ : STD_LOGIC;
  signal \cosine_wave[13]_i_5_n_0\ : STD_LOGIC;
  signal \cosine_wave[13]_i_6_n_0\ : STD_LOGIC;
  signal \cosine_wave[14]_i_1_n_0\ : STD_LOGIC;
  signal \cosine_wave[14]_i_2_n_0\ : STD_LOGIC;
  signal \cosine_wave[15]_i_1_n_0\ : STD_LOGIC;
  signal \cosine_wave[15]_i_2_n_0\ : STD_LOGIC;
  signal \cosine_wave[1]_i_1_n_0\ : STD_LOGIC;
  signal \cosine_wave[1]_i_2_n_0\ : STD_LOGIC;
  signal \cosine_wave[1]_i_3_n_0\ : STD_LOGIC;
  signal \cosine_wave[2]_i_1_n_0\ : STD_LOGIC;
  signal \cosine_wave[2]_i_2_n_0\ : STD_LOGIC;
  signal \cosine_wave[2]_i_3_n_0\ : STD_LOGIC;
  signal \cosine_wave[3]_i_1_n_0\ : STD_LOGIC;
  signal \cosine_wave[3]_i_2_n_0\ : STD_LOGIC;
  signal \cosine_wave[3]_i_3_n_0\ : STD_LOGIC;
  signal \cosine_wave[4]_i_1_n_0\ : STD_LOGIC;
  signal \cosine_wave[4]_i_2_n_0\ : STD_LOGIC;
  signal \cosine_wave[4]_i_3_n_0\ : STD_LOGIC;
  signal \cosine_wave[5]_i_1_n_0\ : STD_LOGIC;
  signal \cosine_wave[5]_i_2_n_0\ : STD_LOGIC;
  signal \cosine_wave[5]_i_3_n_0\ : STD_LOGIC;
  signal \cosine_wave[6]_i_1_n_0\ : STD_LOGIC;
  signal \cosine_wave[6]_i_2_n_0\ : STD_LOGIC;
  signal \cosine_wave[6]_i_3_n_0\ : STD_LOGIC;
  signal \cosine_wave[7]_i_1_n_0\ : STD_LOGIC;
  signal \cosine_wave[7]_i_2_n_0\ : STD_LOGIC;
  signal \cosine_wave[7]_i_3_n_0\ : STD_LOGIC;
  signal \cosine_wave[8]_i_1_n_0\ : STD_LOGIC;
  signal \cosine_wave[8]_i_2_n_0\ : STD_LOGIC;
  signal \cosine_wave[8]_i_3_n_0\ : STD_LOGIC;
  signal \cosine_wave[9]_i_1_n_0\ : STD_LOGIC;
  signal \cosine_wave[9]_i_2_n_0\ : STD_LOGIC;
  signal \cosine_wave[9]_i_3_n_0\ : STD_LOGIC;
  signal \cosine_wave_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cosine_wave_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal fir_tdata_i_i_mixer : STD_LOGIC_VECTOR ( 33 downto 18 );
  signal fir_tdata_i_q_mixer : STD_LOGIC_VECTOR ( 33 downto 18 );
  signal i_mixer : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal i_mixer0_n_100 : STD_LOGIC;
  signal i_mixer0_n_101 : STD_LOGIC;
  signal i_mixer0_n_102 : STD_LOGIC;
  signal i_mixer0_n_103 : STD_LOGIC;
  signal i_mixer0_n_104 : STD_LOGIC;
  signal i_mixer0_n_105 : STD_LOGIC;
  signal i_mixer0_n_74 : STD_LOGIC;
  signal i_mixer0_n_75 : STD_LOGIC;
  signal i_mixer0_n_76 : STD_LOGIC;
  signal i_mixer0_n_77 : STD_LOGIC;
  signal i_mixer0_n_78 : STD_LOGIC;
  signal i_mixer0_n_79 : STD_LOGIC;
  signal i_mixer0_n_80 : STD_LOGIC;
  signal i_mixer0_n_81 : STD_LOGIC;
  signal i_mixer0_n_82 : STD_LOGIC;
  signal i_mixer0_n_83 : STD_LOGIC;
  signal i_mixer0_n_84 : STD_LOGIC;
  signal i_mixer0_n_85 : STD_LOGIC;
  signal i_mixer0_n_86 : STD_LOGIC;
  signal i_mixer0_n_87 : STD_LOGIC;
  signal i_mixer0_n_88 : STD_LOGIC;
  signal i_mixer0_n_89 : STD_LOGIC;
  signal i_mixer0_n_90 : STD_LOGIC;
  signal i_mixer0_n_91 : STD_LOGIC;
  signal i_mixer0_n_92 : STD_LOGIC;
  signal i_mixer0_n_93 : STD_LOGIC;
  signal i_mixer0_n_94 : STD_LOGIC;
  signal i_mixer0_n_95 : STD_LOGIC;
  signal i_mixer0_n_96 : STD_LOGIC;
  signal i_mixer0_n_97 : STD_LOGIC;
  signal i_mixer0_n_98 : STD_LOGIC;
  signal i_mixer0_n_99 : STD_LOGIC;
  signal mixed_valid_r : STD_LOGIC;
  signal mixed_valid_r_i_1_n_0 : STD_LOGIC;
  signal p_0_in0 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \phase_accumulator[11]_i_2_n_0\ : STD_LOGIC;
  signal \phase_accumulator[11]_i_3_n_0\ : STD_LOGIC;
  signal \phase_accumulator[11]_i_4_n_0\ : STD_LOGIC;
  signal \phase_accumulator[11]_i_5_n_0\ : STD_LOGIC;
  signal \phase_accumulator[11]_i_6_n_0\ : STD_LOGIC;
  signal \phase_accumulator[11]_i_7_n_0\ : STD_LOGIC;
  signal \phase_accumulator[11]_i_8_n_0\ : STD_LOGIC;
  signal \phase_accumulator[11]_i_9_n_0\ : STD_LOGIC;
  signal \phase_accumulator[15]_i_2_n_0\ : STD_LOGIC;
  signal \phase_accumulator[15]_i_3_n_0\ : STD_LOGIC;
  signal \phase_accumulator[15]_i_4_n_0\ : STD_LOGIC;
  signal \phase_accumulator[15]_i_5_n_0\ : STD_LOGIC;
  signal \phase_accumulator[15]_i_6_n_0\ : STD_LOGIC;
  signal \phase_accumulator[15]_i_7_n_0\ : STD_LOGIC;
  signal \phase_accumulator[15]_i_8_n_0\ : STD_LOGIC;
  signal \phase_accumulator[15]_i_9_n_0\ : STD_LOGIC;
  signal \phase_accumulator[19]_i_2_n_0\ : STD_LOGIC;
  signal \phase_accumulator[19]_i_3_n_0\ : STD_LOGIC;
  signal \phase_accumulator[19]_i_4_n_0\ : STD_LOGIC;
  signal \phase_accumulator[19]_i_5_n_0\ : STD_LOGIC;
  signal \phase_accumulator[19]_i_6_n_0\ : STD_LOGIC;
  signal \phase_accumulator[19]_i_7_n_0\ : STD_LOGIC;
  signal \phase_accumulator[19]_i_8_n_0\ : STD_LOGIC;
  signal \phase_accumulator[19]_i_9_n_0\ : STD_LOGIC;
  signal \phase_accumulator[23]_i_2_n_0\ : STD_LOGIC;
  signal \phase_accumulator[23]_i_3_n_0\ : STD_LOGIC;
  signal \phase_accumulator[23]_i_4_n_0\ : STD_LOGIC;
  signal \phase_accumulator[23]_i_5_n_0\ : STD_LOGIC;
  signal \phase_accumulator[23]_i_6_n_0\ : STD_LOGIC;
  signal \phase_accumulator[23]_i_7_n_0\ : STD_LOGIC;
  signal \phase_accumulator[23]_i_8_n_0\ : STD_LOGIC;
  signal \phase_accumulator[23]_i_9_n_0\ : STD_LOGIC;
  signal \phase_accumulator[27]_i_2_n_0\ : STD_LOGIC;
  signal \phase_accumulator[27]_i_3_n_0\ : STD_LOGIC;
  signal \phase_accumulator[27]_i_4_n_0\ : STD_LOGIC;
  signal \phase_accumulator[27]_i_5_n_0\ : STD_LOGIC;
  signal \phase_accumulator[27]_i_6_n_0\ : STD_LOGIC;
  signal \phase_accumulator[27]_i_7_n_0\ : STD_LOGIC;
  signal \phase_accumulator[27]_i_8_n_0\ : STD_LOGIC;
  signal \phase_accumulator[27]_i_9_n_0\ : STD_LOGIC;
  signal \phase_accumulator[31]_i_2_n_0\ : STD_LOGIC;
  signal \phase_accumulator[31]_i_3_n_0\ : STD_LOGIC;
  signal \phase_accumulator[31]_i_4_n_0\ : STD_LOGIC;
  signal \phase_accumulator[31]_i_5_n_0\ : STD_LOGIC;
  signal \phase_accumulator[31]_i_6_n_0\ : STD_LOGIC;
  signal \phase_accumulator[31]_i_7_n_0\ : STD_LOGIC;
  signal \phase_accumulator[31]_i_8_n_0\ : STD_LOGIC;
  signal \phase_accumulator[3]_i_2_n_0\ : STD_LOGIC;
  signal \phase_accumulator[3]_i_3_n_0\ : STD_LOGIC;
  signal \phase_accumulator[3]_i_4_n_0\ : STD_LOGIC;
  signal \phase_accumulator[3]_i_5_n_0\ : STD_LOGIC;
  signal \phase_accumulator[7]_i_2_n_0\ : STD_LOGIC;
  signal \phase_accumulator[7]_i_3_n_0\ : STD_LOGIC;
  signal \phase_accumulator[7]_i_4_n_0\ : STD_LOGIC;
  signal \phase_accumulator[7]_i_5_n_0\ : STD_LOGIC;
  signal \phase_accumulator[7]_i_6_n_0\ : STD_LOGIC;
  signal \phase_accumulator[7]_i_7_n_0\ : STD_LOGIC;
  signal \phase_accumulator[7]_i_8_n_0\ : STD_LOGIC;
  signal \phase_accumulator[7]_i_9_n_0\ : STD_LOGIC;
  signal \phase_accumulator_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \phase_accumulator_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \phase_accumulator_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \phase_accumulator_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \phase_accumulator_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \phase_accumulator_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \phase_accumulator_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \phase_accumulator_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \phase_accumulator_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \phase_accumulator_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \phase_accumulator_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \phase_accumulator_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \phase_accumulator_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \phase_accumulator_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \phase_accumulator_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \phase_accumulator_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \phase_accumulator_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \phase_accumulator_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \phase_accumulator_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \phase_accumulator_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \phase_accumulator_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \phase_accumulator_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \phase_accumulator_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \phase_accumulator_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \phase_accumulator_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \phase_accumulator_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \phase_accumulator_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \phase_accumulator_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \phase_accumulator_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \phase_accumulator_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \phase_accumulator_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \phase_accumulator_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \phase_accumulator_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \phase_accumulator_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \phase_accumulator_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \phase_accumulator_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \phase_accumulator_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \phase_accumulator_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \phase_accumulator_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \phase_accumulator_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \phase_accumulator_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \phase_accumulator_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \phase_accumulator_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \phase_accumulator_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \phase_accumulator_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \phase_accumulator_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \phase_accumulator_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \phase_accumulator_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \phase_accumulator_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \phase_accumulator_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \phase_accumulator_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \phase_accumulator_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \phase_accumulator_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \phase_accumulator_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \phase_accumulator_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \phase_accumulator_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_accumulator_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \phase_accumulator_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \phase_accumulator_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \phase_accumulator_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \phase_accumulator_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \phase_accumulator_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \phase_accumulator_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \phase_accumulator_reg_n_0_[0]\ : STD_LOGIC;
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
  signal \phase_accumulator_reg_n_0_[1]\ : STD_LOGIC;
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
  signal phase_adjust : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \phase_adjust[0]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[10]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[11]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[12]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[13]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[14]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[15]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[16]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[17]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[18]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[19]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[1]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[20]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[21]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[22]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[23]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[24]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[25]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[26]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[2]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[3]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[4]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[5]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[6]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[7]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[8]_i_1_n_0\ : STD_LOGIC;
  signal \phase_adjust[9]_i_1_n_0\ : STD_LOGIC;
  signal phase_error0_n_100 : STD_LOGIC;
  signal phase_error0_n_101 : STD_LOGIC;
  signal phase_error0_n_102 : STD_LOGIC;
  signal phase_error0_n_103 : STD_LOGIC;
  signal phase_error0_n_104 : STD_LOGIC;
  signal phase_error0_n_105 : STD_LOGIC;
  signal phase_error0_n_74 : STD_LOGIC;
  signal phase_error0_n_75 : STD_LOGIC;
  signal phase_error0_n_76 : STD_LOGIC;
  signal phase_error0_n_77 : STD_LOGIC;
  signal phase_error0_n_78 : STD_LOGIC;
  signal phase_error0_n_79 : STD_LOGIC;
  signal phase_error0_n_80 : STD_LOGIC;
  signal phase_error0_n_81 : STD_LOGIC;
  signal phase_error0_n_82 : STD_LOGIC;
  signal phase_error0_n_83 : STD_LOGIC;
  signal phase_error0_n_84 : STD_LOGIC;
  signal phase_error0_n_85 : STD_LOGIC;
  signal phase_error0_n_86 : STD_LOGIC;
  signal phase_error0_n_87 : STD_LOGIC;
  signal phase_error0_n_88 : STD_LOGIC;
  signal phase_error0_n_89 : STD_LOGIC;
  signal phase_error0_n_90 : STD_LOGIC;
  signal phase_error0_n_91 : STD_LOGIC;
  signal phase_error0_n_92 : STD_LOGIC;
  signal phase_error0_n_93 : STD_LOGIC;
  signal phase_error0_n_94 : STD_LOGIC;
  signal phase_error0_n_95 : STD_LOGIC;
  signal phase_error0_n_96 : STD_LOGIC;
  signal phase_error0_n_97 : STD_LOGIC;
  signal phase_error0_n_98 : STD_LOGIC;
  signal phase_error0_n_99 : STD_LOGIC;
  signal q_mixer : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal q_mixer0_n_100 : STD_LOGIC;
  signal q_mixer0_n_101 : STD_LOGIC;
  signal q_mixer0_n_102 : STD_LOGIC;
  signal q_mixer0_n_103 : STD_LOGIC;
  signal q_mixer0_n_104 : STD_LOGIC;
  signal q_mixer0_n_105 : STD_LOGIC;
  signal q_mixer0_n_74 : STD_LOGIC;
  signal q_mixer0_n_75 : STD_LOGIC;
  signal q_mixer0_n_76 : STD_LOGIC;
  signal q_mixer0_n_77 : STD_LOGIC;
  signal q_mixer0_n_78 : STD_LOGIC;
  signal q_mixer0_n_79 : STD_LOGIC;
  signal q_mixer0_n_80 : STD_LOGIC;
  signal q_mixer0_n_81 : STD_LOGIC;
  signal q_mixer0_n_82 : STD_LOGIC;
  signal q_mixer0_n_83 : STD_LOGIC;
  signal q_mixer0_n_84 : STD_LOGIC;
  signal q_mixer0_n_85 : STD_LOGIC;
  signal q_mixer0_n_86 : STD_LOGIC;
  signal q_mixer0_n_87 : STD_LOGIC;
  signal q_mixer0_n_88 : STD_LOGIC;
  signal q_mixer0_n_89 : STD_LOGIC;
  signal q_mixer0_n_90 : STD_LOGIC;
  signal q_mixer0_n_91 : STD_LOGIC;
  signal q_mixer0_n_92 : STD_LOGIC;
  signal q_mixer0_n_93 : STD_LOGIC;
  signal q_mixer0_n_94 : STD_LOGIC;
  signal q_mixer0_n_95 : STD_LOGIC;
  signal q_mixer0_n_96 : STD_LOGIC;
  signal q_mixer0_n_97 : STD_LOGIC;
  signal q_mixer0_n_98 : STD_LOGIC;
  signal q_mixer0_n_99 : STD_LOGIC;
  signal \^rst_n_0\ : STD_LOGIC;
  signal sel : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sine_wave : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \sine_wave[0]_i_2_n_0\ : STD_LOGIC;
  signal \sine_wave[0]_i_3_n_0\ : STD_LOGIC;
  signal \sine_wave[10]_i_2_n_0\ : STD_LOGIC;
  signal \sine_wave[10]_i_3_n_0\ : STD_LOGIC;
  signal \sine_wave[10]_i_4_n_0\ : STD_LOGIC;
  signal \sine_wave[10]_i_5_n_0\ : STD_LOGIC;
  signal \sine_wave[11]_i_2_n_0\ : STD_LOGIC;
  signal \sine_wave[11]_i_3_n_0\ : STD_LOGIC;
  signal \sine_wave[11]_i_4_n_0\ : STD_LOGIC;
  signal \sine_wave[11]_i_5_n_0\ : STD_LOGIC;
  signal \sine_wave[12]_i_2_n_0\ : STD_LOGIC;
  signal \sine_wave[12]_i_3_n_0\ : STD_LOGIC;
  signal \sine_wave[12]_i_4_n_0\ : STD_LOGIC;
  signal \sine_wave[12]_i_5_n_0\ : STD_LOGIC;
  signal \sine_wave[13]_i_2_n_0\ : STD_LOGIC;
  signal \sine_wave[13]_i_3_n_0\ : STD_LOGIC;
  signal \sine_wave[13]_i_4_n_0\ : STD_LOGIC;
  signal \sine_wave[13]_i_5_n_0\ : STD_LOGIC;
  signal \sine_wave[14]_i_2_n_0\ : STD_LOGIC;
  signal \sine_wave[14]_i_3_n_0\ : STD_LOGIC;
  signal \sine_wave[15]_i_2_n_0\ : STD_LOGIC;
  signal \sine_wave[1]_i_2_n_0\ : STD_LOGIC;
  signal \sine_wave[1]_i_3_n_0\ : STD_LOGIC;
  signal \sine_wave[1]_i_4_n_0\ : STD_LOGIC;
  signal \sine_wave[1]_i_5_n_0\ : STD_LOGIC;
  signal \sine_wave[2]_i_2_n_0\ : STD_LOGIC;
  signal \sine_wave[2]_i_3_n_0\ : STD_LOGIC;
  signal \sine_wave[2]_i_4_n_0\ : STD_LOGIC;
  signal \sine_wave[2]_i_5_n_0\ : STD_LOGIC;
  signal \sine_wave[3]_i_2_n_0\ : STD_LOGIC;
  signal \sine_wave[3]_i_3_n_0\ : STD_LOGIC;
  signal \sine_wave[3]_i_4_n_0\ : STD_LOGIC;
  signal \sine_wave[3]_i_5_n_0\ : STD_LOGIC;
  signal \sine_wave[4]_i_2_n_0\ : STD_LOGIC;
  signal \sine_wave[4]_i_3_n_0\ : STD_LOGIC;
  signal \sine_wave[4]_i_4_n_0\ : STD_LOGIC;
  signal \sine_wave[4]_i_5_n_0\ : STD_LOGIC;
  signal \sine_wave[5]_i_2_n_0\ : STD_LOGIC;
  signal \sine_wave[5]_i_3_n_0\ : STD_LOGIC;
  signal \sine_wave[5]_i_4_n_0\ : STD_LOGIC;
  signal \sine_wave[5]_i_5_n_0\ : STD_LOGIC;
  signal \sine_wave[6]_i_2_n_0\ : STD_LOGIC;
  signal \sine_wave[6]_i_3_n_0\ : STD_LOGIC;
  signal \sine_wave[6]_i_4_n_0\ : STD_LOGIC;
  signal \sine_wave[6]_i_5_n_0\ : STD_LOGIC;
  signal \sine_wave[7]_i_2_n_0\ : STD_LOGIC;
  signal \sine_wave[7]_i_3_n_0\ : STD_LOGIC;
  signal \sine_wave[7]_i_4_n_0\ : STD_LOGIC;
  signal \sine_wave[7]_i_5_n_0\ : STD_LOGIC;
  signal \sine_wave[8]_i_2_n_0\ : STD_LOGIC;
  signal \sine_wave[8]_i_3_n_0\ : STD_LOGIC;
  signal \sine_wave[8]_i_4_n_0\ : STD_LOGIC;
  signal \sine_wave[8]_i_5_n_0\ : STD_LOGIC;
  signal \sine_wave[9]_i_2_n_0\ : STD_LOGIC;
  signal \sine_wave[9]_i_3_n_0\ : STD_LOGIC;
  signal \sine_wave[9]_i_4_n_0\ : STD_LOGIC;
  signal \sine_wave[9]_i_5_n_0\ : STD_LOGIC;
  signal NLW_fir_lpf_psk_psk2_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_lpf_psk_psk2_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_lpf_psk_psk2_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal NLW_fir_lpf_psk_psk3_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_lpf_psk_psk3_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_lpf_psk_psk3_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal NLW_i_mixer0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_i_mixer0_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_i_mixer0_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_i_mixer0_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_i_mixer0_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_i_mixer0_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_i_mixer0_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_i_mixer0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_i_mixer0_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_i_mixer0_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_i_mixer0_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_phase_accumulator_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_phase_error0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_phase_error0_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_phase_error0_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_phase_error0_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_phase_error0_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_phase_error0_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_phase_error0_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_phase_error0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_phase_error0_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_phase_error0_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_phase_error0_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_q_mixer0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_q_mixer0_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_q_mixer0_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_q_mixer0_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_q_mixer0_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_q_mixer0_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_q_mixer0_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_q_mixer0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_q_mixer0_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_q_mixer0_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_q_mixer0_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cosine_wave[13]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cosine_wave[13]_i_6\ : label is "soft_lutpair1";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fir_lpf_psk_psk2 : label is "fir_lpf_psk,fir_compiler_v7_2_23,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fir_lpf_psk_psk2 : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fir_lpf_psk_psk2 : label is "fir_compiler_v7_2_23,Vivado 2024.2";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk2_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk2_i_10 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk2_i_11 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk2_i_12 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk2_i_13 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk2_i_14 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk2_i_15 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk2_i_16 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk2_i_2 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk2_i_3 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk2_i_4 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk2_i_5 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk2_i_6 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk2_i_7 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk2_i_8 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk2_i_9 : label is "soft_lutpair19";
  attribute CHECK_LICENSE_TYPE of fir_lpf_psk_psk3 : label is "fir_lpf_psk,fir_compiler_v7_2_23,{}";
  attribute downgradeipidentifiedwarnings of fir_lpf_psk_psk3 : label is "yes";
  attribute x_core_info of fir_lpf_psk_psk3 : label is "fir_compiler_v7_2_23,Vivado 2024.2";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk3_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk3_i_10 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk3_i_11 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk3_i_12 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk3_i_13 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk3_i_14 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk3_i_15 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk3_i_16 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk3_i_2 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk3_i_3 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk3_i_4 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk3_i_5 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk3_i_6 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk3_i_7 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk3_i_8 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of fir_lpf_psk_psk3_i_9 : label is "soft_lutpair27";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of i_mixer0 : label is "{SYNTH-12 {cell *THIS*}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \phase_accumulator_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_accumulator_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_accumulator_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_accumulator_reg[23]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_accumulator_reg[27]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_accumulator_reg[31]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_accumulator_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \phase_accumulator_reg[7]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \phase_adjust[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \phase_adjust[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \phase_adjust[11]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \phase_adjust[12]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \phase_adjust[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \phase_adjust[14]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \phase_adjust[15]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \phase_adjust[16]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \phase_adjust[17]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \phase_adjust[18]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \phase_adjust[19]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \phase_adjust[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \phase_adjust[20]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \phase_adjust[21]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \phase_adjust[22]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \phase_adjust[23]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \phase_adjust[24]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \phase_adjust[25]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \phase_adjust[26]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \phase_adjust[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \phase_adjust[31]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \phase_adjust[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \phase_adjust[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \phase_adjust[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \phase_adjust[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \phase_adjust[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \phase_adjust[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \phase_adjust[9]_i_1\ : label is "soft_lutpair6";
  attribute METHODOLOGY_DRC_VIOS of phase_error0 : label is "{SYNTH-12 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of q_mixer0 : label is "{SYNTH-12 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \sine_wave[13]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sine_wave[15]_i_2\ : label is "soft_lutpair1";
begin
  rst_n_0 <= \^rst_n_0\;
\carrier_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sine_wave(0),
      Q => Q(0),
      R => '0'
    );
\carrier_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sine_wave(10),
      Q => Q(10),
      R => '0'
    );
\carrier_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sine_wave(11),
      Q => Q(11),
      R => '0'
    );
\carrier_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sine_wave(12),
      Q => Q(12),
      R => '0'
    );
\carrier_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sine_wave(13),
      Q => Q(13),
      R => '0'
    );
\carrier_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sine_wave(14),
      Q => Q(14),
      R => '0'
    );
\carrier_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sine_wave(15),
      Q => Q(15),
      R => '0'
    );
\carrier_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sine_wave(1),
      Q => Q(1),
      R => '0'
    );
\carrier_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sine_wave(2),
      Q => Q(2),
      R => '0'
    );
\carrier_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sine_wave(3),
      Q => Q(3),
      R => '0'
    );
\carrier_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sine_wave(4),
      Q => Q(4),
      R => '0'
    );
\carrier_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sine_wave(5),
      Q => Q(5),
      R => '0'
    );
\carrier_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sine_wave(6),
      Q => Q(6),
      R => '0'
    );
\carrier_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sine_wave(7),
      Q => Q(7),
      R => '0'
    );
\carrier_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sine_wave(8),
      Q => Q(8),
      R => '0'
    );
\carrier_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sine_wave(9),
      Q => Q(9),
      R => '0'
    );
\cosine_wave[0]_i_2\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[0]_i_2_n_0\
    );
\cosine_wave[0]_i_3\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[0]_i_3_n_0\
    );
\cosine_wave[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cosine_wave[10]_i_2_n_0\,
      I1 => \sine_wave[10]_i_2_n_0\,
      I2 => sel(5),
      I3 => \cosine_wave[10]_i_3_n_0\,
      I4 => sel(6),
      I5 => \sine_wave[10]_i_3_n_0\,
      O => \cosine_wave[10]_i_1_n_0\
    );
\cosine_wave[10]_i_2\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[10]_i_2_n_0\
    );
\cosine_wave[10]_i_3\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[10]_i_3_n_0\
    );
\cosine_wave[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cosine_wave[11]_i_2_n_0\,
      I1 => \sine_wave[11]_i_2_n_0\,
      I2 => sel(5),
      I3 => \cosine_wave[11]_i_3_n_0\,
      I4 => sel(6),
      I5 => \sine_wave[11]_i_3_n_0\,
      O => \cosine_wave[11]_i_1_n_0\
    );
\cosine_wave[11]_i_2\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[11]_i_2_n_0\
    );
\cosine_wave[11]_i_3\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[11]_i_3_n_0\
    );
\cosine_wave[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cosine_wave[12]_i_2_n_0\,
      I1 => \sine_wave[12]_i_2_n_0\,
      I2 => sel(5),
      I3 => \cosine_wave[12]_i_3_n_0\,
      I4 => sel(6),
      I5 => \sine_wave[12]_i_3_n_0\,
      O => \cosine_wave[12]_i_1_n_0\
    );
\cosine_wave[12]_i_2\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[12]_i_2_n_0\
    );
\cosine_wave[12]_i_3\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[12]_i_3_n_0\
    );
\cosine_wave[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8888888B8BBBBBB"
    )
        port map (
      I0 => \cosine_wave[13]_i_4_n_0\,
      I1 => sel(6),
      I2 => \cosine_wave[13]_i_5_n_0\,
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(7),
      O => \cosine_wave[13]_i_2_n_0\
    );
\cosine_wave[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8FFFFCDC80000"
    )
        port map (
      I0 => sel(4),
      I1 => sel(7),
      I2 => sel(3),
      I3 => \cosine_wave[13]_i_6_n_0\,
      I4 => sel(6),
      I5 => \sine_wave[13]_i_2_n_0\,
      O => \cosine_wave[13]_i_3_n_0\
    );
\cosine_wave[13]_i_4\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[13]_i_4_n_0\
    );
\cosine_wave[13]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(7),
      O => \cosine_wave[13]_i_5_n_0\
    );
\cosine_wave[13]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F807"
    )
        port map (
      I0 => sel(1),
      I1 => sel(0),
      I2 => sel(2),
      I3 => sel(7),
      O => \cosine_wave[13]_i_6_n_0\
    );
\cosine_wave[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC8830BB"
    )
        port map (
      I0 => \sine_wave[14]_i_2_n_0\,
      I1 => sel(5),
      I2 => \cosine_wave[14]_i_2_n_0\,
      I3 => sel(6),
      I4 => sel(7),
      O => \cosine_wave[14]_i_1_n_0\
    );
\cosine_wave[14]_i_2\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[14]_i_2_n_0\
    );
\cosine_wave[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100FFFFFFFE0000"
    )
        port map (
      I0 => sel(5),
      I1 => sel(4),
      I2 => sel(3),
      I3 => \cosine_wave[15]_i_2_n_0\,
      I4 => sel(6),
      I5 => sel(7),
      O => \cosine_wave[15]_i_1_n_0\
    );
\cosine_wave[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => sel(0),
      I1 => sel(2),
      I2 => sel(1),
      I3 => sel(7),
      O => \cosine_wave[15]_i_2_n_0\
    );
\cosine_wave[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cosine_wave[1]_i_2_n_0\,
      I1 => \sine_wave[1]_i_2_n_0\,
      I2 => sel(5),
      I3 => \cosine_wave[1]_i_3_n_0\,
      I4 => sel(6),
      I5 => \sine_wave[1]_i_3_n_0\,
      O => \cosine_wave[1]_i_1_n_0\
    );
\cosine_wave[1]_i_2\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[1]_i_2_n_0\
    );
\cosine_wave[1]_i_3\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[1]_i_3_n_0\
    );
\cosine_wave[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cosine_wave[2]_i_2_n_0\,
      I1 => \sine_wave[2]_i_2_n_0\,
      I2 => sel(5),
      I3 => \cosine_wave[2]_i_3_n_0\,
      I4 => sel(6),
      I5 => \sine_wave[2]_i_3_n_0\,
      O => \cosine_wave[2]_i_1_n_0\
    );
\cosine_wave[2]_i_2\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[2]_i_2_n_0\
    );
\cosine_wave[2]_i_3\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[2]_i_3_n_0\
    );
\cosine_wave[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cosine_wave[3]_i_2_n_0\,
      I1 => \sine_wave[3]_i_2_n_0\,
      I2 => sel(5),
      I3 => \cosine_wave[3]_i_3_n_0\,
      I4 => sel(6),
      I5 => \sine_wave[3]_i_3_n_0\,
      O => \cosine_wave[3]_i_1_n_0\
    );
\cosine_wave[3]_i_2\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[3]_i_2_n_0\
    );
\cosine_wave[3]_i_3\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[3]_i_3_n_0\
    );
\cosine_wave[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cosine_wave[4]_i_2_n_0\,
      I1 => \sine_wave[4]_i_2_n_0\,
      I2 => sel(5),
      I3 => \cosine_wave[4]_i_3_n_0\,
      I4 => sel(6),
      I5 => \sine_wave[4]_i_3_n_0\,
      O => \cosine_wave[4]_i_1_n_0\
    );
\cosine_wave[4]_i_2\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[4]_i_2_n_0\
    );
\cosine_wave[4]_i_3\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[4]_i_3_n_0\
    );
\cosine_wave[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cosine_wave[5]_i_2_n_0\,
      I1 => \sine_wave[5]_i_2_n_0\,
      I2 => sel(5),
      I3 => \cosine_wave[5]_i_3_n_0\,
      I4 => sel(6),
      I5 => \sine_wave[5]_i_3_n_0\,
      O => \cosine_wave[5]_i_1_n_0\
    );
\cosine_wave[5]_i_2\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[5]_i_2_n_0\
    );
\cosine_wave[5]_i_3\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[5]_i_3_n_0\
    );
\cosine_wave[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cosine_wave[6]_i_2_n_0\,
      I1 => \sine_wave[6]_i_2_n_0\,
      I2 => sel(5),
      I3 => \cosine_wave[6]_i_3_n_0\,
      I4 => sel(6),
      I5 => \sine_wave[6]_i_3_n_0\,
      O => \cosine_wave[6]_i_1_n_0\
    );
\cosine_wave[6]_i_2\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[6]_i_2_n_0\
    );
\cosine_wave[6]_i_3\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[6]_i_3_n_0\
    );
\cosine_wave[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cosine_wave[7]_i_2_n_0\,
      I1 => \sine_wave[7]_i_2_n_0\,
      I2 => sel(5),
      I3 => \cosine_wave[7]_i_3_n_0\,
      I4 => sel(6),
      I5 => \sine_wave[7]_i_3_n_0\,
      O => \cosine_wave[7]_i_1_n_0\
    );
\cosine_wave[7]_i_2\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[7]_i_2_n_0\
    );
\cosine_wave[7]_i_3\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[7]_i_3_n_0\
    );
\cosine_wave[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cosine_wave[8]_i_2_n_0\,
      I1 => \sine_wave[8]_i_2_n_0\,
      I2 => sel(5),
      I3 => \cosine_wave[8]_i_3_n_0\,
      I4 => sel(6),
      I5 => \sine_wave[8]_i_3_n_0\,
      O => \cosine_wave[8]_i_1_n_0\
    );
\cosine_wave[8]_i_2\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[8]_i_2_n_0\
    );
\cosine_wave[8]_i_3\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[8]_i_3_n_0\
    );
\cosine_wave[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cosine_wave[9]_i_2_n_0\,
      I1 => \sine_wave[9]_i_2_n_0\,
      I2 => sel(5),
      I3 => \cosine_wave[9]_i_3_n_0\,
      I4 => sel(6),
      I5 => \sine_wave[9]_i_3_n_0\,
      O => \cosine_wave[9]_i_1_n_0\
    );
\cosine_wave[9]_i_2\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[9]_i_2_n_0\
    );
\cosine_wave[9]_i_3\: unisim.vcomponents.LUT6
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
      O => \cosine_wave[9]_i_3_n_0\
    );
\cosine_wave_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cosine_wave_reg[0]_i_1_n_0\,
      Q => cosine_wave(0)
    );
\cosine_wave_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cosine_wave[0]_i_2_n_0\,
      I1 => \cosine_wave[0]_i_3_n_0\,
      O => \cosine_wave_reg[0]_i_1_n_0\,
      S => sel(5)
    );
\cosine_wave_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cosine_wave[10]_i_1_n_0\,
      Q => cosine_wave(10)
    );
\cosine_wave_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cosine_wave[11]_i_1_n_0\,
      Q => cosine_wave(11)
    );
\cosine_wave_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cosine_wave[12]_i_1_n_0\,
      Q => cosine_wave(12)
    );
\cosine_wave_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cosine_wave_reg[13]_i_1_n_0\,
      Q => cosine_wave(13)
    );
\cosine_wave_reg[13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cosine_wave[13]_i_2_n_0\,
      I1 => \cosine_wave[13]_i_3_n_0\,
      O => \cosine_wave_reg[13]_i_1_n_0\,
      S => sel(5)
    );
\cosine_wave_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cosine_wave[14]_i_1_n_0\,
      Q => cosine_wave(14)
    );
\cosine_wave_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cosine_wave[15]_i_1_n_0\,
      Q => cosine_wave(15)
    );
\cosine_wave_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cosine_wave[1]_i_1_n_0\,
      Q => cosine_wave(1)
    );
\cosine_wave_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cosine_wave[2]_i_1_n_0\,
      Q => cosine_wave(2)
    );
\cosine_wave_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cosine_wave[3]_i_1_n_0\,
      Q => cosine_wave(3)
    );
\cosine_wave_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cosine_wave[4]_i_1_n_0\,
      Q => cosine_wave(4)
    );
\cosine_wave_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cosine_wave[5]_i_1_n_0\,
      Q => cosine_wave(5)
    );
\cosine_wave_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cosine_wave[6]_i_1_n_0\,
      Q => cosine_wave(6)
    );
\cosine_wave_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cosine_wave[7]_i_1_n_0\,
      Q => cosine_wave(7)
    );
\cosine_wave_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cosine_wave[8]_i_1_n_0\,
      Q => cosine_wave(8)
    );
\cosine_wave_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cosine_wave[9]_i_1_n_0\,
      Q => cosine_wave(9)
    );
fir_lpf_psk_psk2: component design_1_PSK_DM_0_0_fir_lpf_psk
     port map (
      aclk => clk,
      m_axis_data_tdata(39 downto 34) => NLW_fir_lpf_psk_psk2_m_axis_data_tdata_UNCONNECTED(39 downto 34),
      m_axis_data_tdata(33 downto 18) => fir_tdata_i_i_mixer(33 downto 18),
      m_axis_data_tdata(17 downto 0) => NLW_fir_lpf_psk_psk2_m_axis_data_tdata_UNCONNECTED(17 downto 0),
      m_axis_data_tvalid => NLW_fir_lpf_psk_psk2_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => i_mixer(31 downto 16),
      s_axis_data_tready => NLW_fir_lpf_psk_psk2_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => mixed_valid_r
    );
fir_lpf_psk_psk2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_mixer0_n_74,
      I1 => \phase_adjust_reg[0]_0\,
      O => i_mixer(31)
    );
fir_lpf_psk_psk2_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_mixer0_n_83,
      I1 => \phase_adjust_reg[0]_0\,
      O => i_mixer(22)
    );
fir_lpf_psk_psk2_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_mixer0_n_84,
      I1 => \phase_adjust_reg[0]_0\,
      O => i_mixer(21)
    );
fir_lpf_psk_psk2_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_mixer0_n_85,
      I1 => \phase_adjust_reg[0]_0\,
      O => i_mixer(20)
    );
fir_lpf_psk_psk2_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_mixer0_n_86,
      I1 => \phase_adjust_reg[0]_0\,
      O => i_mixer(19)
    );
fir_lpf_psk_psk2_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_mixer0_n_87,
      I1 => \phase_adjust_reg[0]_0\,
      O => i_mixer(18)
    );
fir_lpf_psk_psk2_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_mixer0_n_88,
      I1 => \phase_adjust_reg[0]_0\,
      O => i_mixer(17)
    );
fir_lpf_psk_psk2_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_mixer0_n_89,
      I1 => \phase_adjust_reg[0]_0\,
      O => i_mixer(16)
    );
fir_lpf_psk_psk2_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_mixer0_n_75,
      I1 => \phase_adjust_reg[0]_0\,
      O => i_mixer(30)
    );
fir_lpf_psk_psk2_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_mixer0_n_76,
      I1 => \phase_adjust_reg[0]_0\,
      O => i_mixer(29)
    );
fir_lpf_psk_psk2_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_mixer0_n_77,
      I1 => \phase_adjust_reg[0]_0\,
      O => i_mixer(28)
    );
fir_lpf_psk_psk2_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_mixer0_n_78,
      I1 => \phase_adjust_reg[0]_0\,
      O => i_mixer(27)
    );
fir_lpf_psk_psk2_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_mixer0_n_79,
      I1 => \phase_adjust_reg[0]_0\,
      O => i_mixer(26)
    );
fir_lpf_psk_psk2_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_mixer0_n_80,
      I1 => \phase_adjust_reg[0]_0\,
      O => i_mixer(25)
    );
fir_lpf_psk_psk2_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_mixer0_n_81,
      I1 => \phase_adjust_reg[0]_0\,
      O => i_mixer(24)
    );
fir_lpf_psk_psk2_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_mixer0_n_82,
      I1 => \phase_adjust_reg[0]_0\,
      O => i_mixer(23)
    );
fir_lpf_psk_psk3: component design_1_PSK_DM_0_0_fir_lpf_psk_HD1
     port map (
      aclk => clk,
      m_axis_data_tdata(39 downto 34) => NLW_fir_lpf_psk_psk3_m_axis_data_tdata_UNCONNECTED(39 downto 34),
      m_axis_data_tdata(33 downto 18) => fir_tdata_i_q_mixer(33 downto 18),
      m_axis_data_tdata(17 downto 0) => NLW_fir_lpf_psk_psk3_m_axis_data_tdata_UNCONNECTED(17 downto 0),
      m_axis_data_tvalid => NLW_fir_lpf_psk_psk3_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => q_mixer(31 downto 16),
      s_axis_data_tready => NLW_fir_lpf_psk_psk3_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => mixed_valid_r
    );
fir_lpf_psk_psk3_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => q_mixer0_n_74,
      I1 => \phase_adjust_reg[0]_0\,
      O => q_mixer(31)
    );
fir_lpf_psk_psk3_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => q_mixer0_n_83,
      I1 => \phase_adjust_reg[0]_0\,
      O => q_mixer(22)
    );
fir_lpf_psk_psk3_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => q_mixer0_n_84,
      I1 => \phase_adjust_reg[0]_0\,
      O => q_mixer(21)
    );
fir_lpf_psk_psk3_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => q_mixer0_n_85,
      I1 => \phase_adjust_reg[0]_0\,
      O => q_mixer(20)
    );
fir_lpf_psk_psk3_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => q_mixer0_n_86,
      I1 => \phase_adjust_reg[0]_0\,
      O => q_mixer(19)
    );
fir_lpf_psk_psk3_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => q_mixer0_n_87,
      I1 => \phase_adjust_reg[0]_0\,
      O => q_mixer(18)
    );
fir_lpf_psk_psk3_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => q_mixer0_n_88,
      I1 => \phase_adjust_reg[0]_0\,
      O => q_mixer(17)
    );
fir_lpf_psk_psk3_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => q_mixer0_n_89,
      I1 => \phase_adjust_reg[0]_0\,
      O => q_mixer(16)
    );
fir_lpf_psk_psk3_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => q_mixer0_n_75,
      I1 => \phase_adjust_reg[0]_0\,
      O => q_mixer(30)
    );
fir_lpf_psk_psk3_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => q_mixer0_n_76,
      I1 => \phase_adjust_reg[0]_0\,
      O => q_mixer(29)
    );
fir_lpf_psk_psk3_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => q_mixer0_n_77,
      I1 => \phase_adjust_reg[0]_0\,
      O => q_mixer(28)
    );
fir_lpf_psk_psk3_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => q_mixer0_n_78,
      I1 => \phase_adjust_reg[0]_0\,
      O => q_mixer(27)
    );
fir_lpf_psk_psk3_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => q_mixer0_n_79,
      I1 => \phase_adjust_reg[0]_0\,
      O => q_mixer(26)
    );
fir_lpf_psk_psk3_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => q_mixer0_n_80,
      I1 => \phase_adjust_reg[0]_0\,
      O => q_mixer(25)
    );
fir_lpf_psk_psk3_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => q_mixer0_n_81,
      I1 => \phase_adjust_reg[0]_0\,
      O => q_mixer(24)
    );
fir_lpf_psk_psk3_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => q_mixer0_n_82,
      I1 => \phase_adjust_reg[0]_0\,
      O => q_mixer(23)
    );
i_mixer0: unisim.vcomponents.DSP48E1
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
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => pm_data_in(15),
      A(28) => pm_data_in(15),
      A(27) => pm_data_in(15),
      A(26) => pm_data_in(15),
      A(25) => pm_data_in(15),
      A(24) => pm_data_in(15),
      A(23) => pm_data_in(15),
      A(22) => pm_data_in(15),
      A(21) => pm_data_in(15),
      A(20) => pm_data_in(15),
      A(19) => pm_data_in(15),
      A(18) => pm_data_in(15),
      A(17) => pm_data_in(15),
      A(16) => pm_data_in(15),
      A(15 downto 0) => pm_data_in(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_i_mixer0_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => sine_wave(15),
      B(16) => sine_wave(15),
      B(15 downto 0) => sine_wave(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_i_mixer0_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_i_mixer0_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_i_mixer0_CARRYOUT_UNCONNECTED(3 downto 0),
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
      CEP => '1',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_i_mixer0_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_i_mixer0_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_i_mixer0_P_UNCONNECTED(47 downto 32),
      P(31) => i_mixer0_n_74,
      P(30) => i_mixer0_n_75,
      P(29) => i_mixer0_n_76,
      P(28) => i_mixer0_n_77,
      P(27) => i_mixer0_n_78,
      P(26) => i_mixer0_n_79,
      P(25) => i_mixer0_n_80,
      P(24) => i_mixer0_n_81,
      P(23) => i_mixer0_n_82,
      P(22) => i_mixer0_n_83,
      P(21) => i_mixer0_n_84,
      P(20) => i_mixer0_n_85,
      P(19) => i_mixer0_n_86,
      P(18) => i_mixer0_n_87,
      P(17) => i_mixer0_n_88,
      P(16) => i_mixer0_n_89,
      P(15) => i_mixer0_n_90,
      P(14) => i_mixer0_n_91,
      P(13) => i_mixer0_n_92,
      P(12) => i_mixer0_n_93,
      P(11) => i_mixer0_n_94,
      P(10) => i_mixer0_n_95,
      P(9) => i_mixer0_n_96,
      P(8) => i_mixer0_n_97,
      P(7) => i_mixer0_n_98,
      P(6) => i_mixer0_n_99,
      P(5) => i_mixer0_n_100,
      P(4) => i_mixer0_n_101,
      P(3) => i_mixer0_n_102,
      P(2) => i_mixer0_n_103,
      P(1) => i_mixer0_n_104,
      P(0) => i_mixer0_n_105,
      PATTERNBDETECT => NLW_i_mixer0_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_i_mixer0_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_i_mixer0_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_i_mixer0_UNDERFLOW_UNCONNECTED
    );
mixed_valid_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rst_n,
      I1 => mixed_valid_r,
      O => mixed_valid_r_i_1_n_0
    );
mixed_valid_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => mixed_valid_r_i_1_n_0,
      Q => mixed_valid_r,
      R => '0'
    );
\phase_accumulator[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[10]\,
      I1 => phase_adjust(10),
      O => \phase_accumulator[11]_i_2_n_0\
    );
\phase_accumulator[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[9]\,
      I1 => phase_adjust(9),
      O => \phase_accumulator[11]_i_3_n_0\
    );
\phase_accumulator[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[8]\,
      I1 => phase_adjust(8),
      O => \phase_accumulator[11]_i_4_n_0\
    );
\phase_accumulator[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phase_adjust(7),
      I1 => \phase_accumulator_reg_n_0_[7]\,
      O => \phase_accumulator[11]_i_5_n_0\
    );
\phase_accumulator[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => phase_adjust(10),
      I1 => \phase_accumulator_reg_n_0_[10]\,
      I2 => \phase_accumulator_reg_n_0_[11]\,
      I3 => phase_adjust(11),
      O => \phase_accumulator[11]_i_6_n_0\
    );
\phase_accumulator[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => phase_adjust(9),
      I1 => \phase_accumulator_reg_n_0_[9]\,
      I2 => \phase_accumulator_reg_n_0_[10]\,
      I3 => phase_adjust(10),
      O => \phase_accumulator[11]_i_7_n_0\
    );
\phase_accumulator[11]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => phase_adjust(8),
      I1 => \phase_accumulator_reg_n_0_[8]\,
      I2 => \phase_accumulator_reg_n_0_[9]\,
      I3 => phase_adjust(9),
      O => \phase_accumulator[11]_i_8_n_0\
    );
\phase_accumulator[11]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E11E"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[7]\,
      I1 => phase_adjust(7),
      I2 => \phase_accumulator_reg_n_0_[8]\,
      I3 => phase_adjust(8),
      O => \phase_accumulator[11]_i_9_n_0\
    );
\phase_accumulator[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phase_adjust(14),
      I1 => \phase_accumulator_reg_n_0_[14]\,
      O => \phase_accumulator[15]_i_2_n_0\
    );
\phase_accumulator[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phase_adjust(13),
      I1 => \phase_accumulator_reg_n_0_[13]\,
      O => \phase_accumulator[15]_i_3_n_0\
    );
\phase_accumulator[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phase_adjust(12),
      I1 => \phase_accumulator_reg_n_0_[12]\,
      O => \phase_accumulator[15]_i_4_n_0\
    );
\phase_accumulator[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[12]\,
      I1 => phase_adjust(12),
      O => \phase_accumulator[15]_i_5_n_0\
    );
\phase_accumulator[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E11E"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[14]\,
      I1 => phase_adjust(14),
      I2 => \phase_accumulator_reg_n_0_[15]\,
      I3 => phase_adjust(15),
      O => \phase_accumulator[15]_i_6_n_0\
    );
\phase_accumulator[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[13]\,
      I1 => phase_adjust(13),
      I2 => \phase_accumulator_reg_n_0_[14]\,
      I3 => phase_adjust(14),
      O => \phase_accumulator[15]_i_7_n_0\
    );
\phase_accumulator[15]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[12]\,
      I1 => phase_adjust(12),
      I2 => \phase_accumulator_reg_n_0_[13]\,
      I3 => phase_adjust(13),
      O => \phase_accumulator[15]_i_8_n_0\
    );
\phase_accumulator[15]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[12]\,
      I1 => phase_adjust(12),
      I2 => phase_adjust(11),
      I3 => \phase_accumulator_reg_n_0_[11]\,
      O => \phase_accumulator[15]_i_9_n_0\
    );
\phase_accumulator[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phase_adjust(18),
      I1 => \phase_accumulator_reg_n_0_[18]\,
      O => \phase_accumulator[19]_i_2_n_0\
    );
\phase_accumulator[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[18]\,
      I1 => phase_adjust(18),
      O => \phase_accumulator[19]_i_3_n_0\
    );
\phase_accumulator[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phase_adjust(16),
      I1 => \phase_accumulator_reg_n_0_[16]\,
      O => \phase_accumulator[19]_i_4_n_0\
    );
\phase_accumulator[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[16]\,
      I1 => phase_adjust(16),
      O => \phase_accumulator[19]_i_5_n_0\
    );
\phase_accumulator[19]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[18]\,
      I1 => phase_adjust(18),
      I2 => \phase_accumulator_reg_n_0_[19]\,
      I3 => phase_adjust(19),
      O => \phase_accumulator[19]_i_6_n_0\
    );
\phase_accumulator[19]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[18]\,
      I1 => phase_adjust(18),
      I2 => phase_adjust(17),
      I3 => \phase_accumulator_reg_n_0_[17]\,
      O => \phase_accumulator[19]_i_7_n_0\
    );
\phase_accumulator[19]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E11E"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[16]\,
      I1 => phase_adjust(16),
      I2 => \phase_accumulator_reg_n_0_[17]\,
      I3 => phase_adjust(17),
      O => \phase_accumulator[19]_i_8_n_0\
    );
\phase_accumulator[19]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[16]\,
      I1 => phase_adjust(16),
      I2 => phase_adjust(15),
      I3 => \phase_accumulator_reg_n_0_[15]\,
      O => \phase_accumulator[19]_i_9_n_0\
    );
\phase_accumulator[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[22]\,
      I1 => phase_adjust(22),
      O => \phase_accumulator[23]_i_2_n_0\
    );
\phase_accumulator[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phase_adjust(21),
      I1 => \phase_accumulator_reg_n_0_[21]\,
      O => \phase_accumulator[23]_i_3_n_0\
    );
\phase_accumulator[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phase_adjust(20),
      I1 => \phase_accumulator_reg_n_0_[20]\,
      O => \phase_accumulator[23]_i_4_n_0\
    );
\phase_accumulator[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phase_adjust(19),
      I1 => \phase_accumulator_reg_n_0_[19]\,
      O => \phase_accumulator[23]_i_5_n_0\
    );
\phase_accumulator[23]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => phase_adjust(22),
      I1 => \phase_accumulator_reg_n_0_[22]\,
      I2 => \phase_accumulator_reg_n_0_[23]\,
      I3 => phase_adjust(23),
      O => \phase_accumulator[23]_i_6_n_0\
    );
\phase_accumulator[23]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E11E"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[21]\,
      I1 => phase_adjust(21),
      I2 => \phase_accumulator_reg_n_0_[22]\,
      I3 => phase_adjust(22),
      O => \phase_accumulator[23]_i_7_n_0\
    );
\phase_accumulator[23]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[20]\,
      I1 => phase_adjust(20),
      I2 => \phase_accumulator_reg_n_0_[21]\,
      I3 => phase_adjust(21),
      O => \phase_accumulator[23]_i_8_n_0\
    );
\phase_accumulator[23]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[19]\,
      I1 => phase_adjust(19),
      I2 => \phase_accumulator_reg_n_0_[20]\,
      I3 => phase_adjust(20),
      O => \phase_accumulator[23]_i_9_n_0\
    );
\phase_accumulator[27]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sel(3),
      I1 => phase_adjust(31),
      O => \phase_accumulator[27]_i_2_n_0\
    );
\phase_accumulator[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phase_adjust(25),
      I1 => sel(1),
      O => \phase_accumulator[27]_i_3_n_0\
    );
\phase_accumulator[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sel(1),
      I1 => phase_adjust(25),
      O => \phase_accumulator[27]_i_4_n_0\
    );
\phase_accumulator[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[23]\,
      I1 => phase_adjust(23),
      O => \phase_accumulator[27]_i_5_n_0\
    );
\phase_accumulator[27]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => sel(3),
      I1 => phase_adjust(31),
      I2 => phase_adjust(26),
      I3 => sel(2),
      O => \phase_accumulator[27]_i_6_n_0\
    );
\phase_accumulator[27]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E11E"
    )
        port map (
      I0 => sel(1),
      I1 => phase_adjust(25),
      I2 => sel(2),
      I3 => phase_adjust(26),
      O => \phase_accumulator[27]_i_7_n_0\
    );
\phase_accumulator[27]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => sel(1),
      I1 => phase_adjust(25),
      I2 => phase_adjust(24),
      I3 => sel(0),
      O => \phase_accumulator[27]_i_8_n_0\
    );
\phase_accumulator[27]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => phase_adjust(23),
      I1 => \phase_accumulator_reg_n_0_[23]\,
      I2 => sel(0),
      I3 => phase_adjust(24),
      O => \phase_accumulator[27]_i_9_n_0\
    );
\phase_accumulator[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel(5),
      I1 => phase_adjust(31),
      O => \phase_accumulator[31]_i_2_n_0\
    );
\phase_accumulator[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel(4),
      I1 => phase_adjust(31),
      O => \phase_accumulator[31]_i_3_n_0\
    );
\phase_accumulator[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phase_adjust(31),
      I1 => sel(3),
      O => \phase_accumulator[31]_i_4_n_0\
    );
\phase_accumulator[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9C"
    )
        port map (
      I0 => sel(6),
      I1 => sel(7),
      I2 => phase_adjust(31),
      O => \phase_accumulator[31]_i_5_n_0\
    );
\phase_accumulator[31]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9C"
    )
        port map (
      I0 => sel(5),
      I1 => sel(6),
      I2 => phase_adjust(31),
      O => \phase_accumulator[31]_i_6_n_0\
    );
\phase_accumulator[31]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9C"
    )
        port map (
      I0 => sel(4),
      I1 => sel(5),
      I2 => phase_adjust(31),
      O => \phase_accumulator[31]_i_7_n_0\
    );
\phase_accumulator[31]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C6"
    )
        port map (
      I0 => sel(3),
      I1 => sel(4),
      I2 => phase_adjust(31),
      O => \phase_accumulator[31]_i_8_n_0\
    );
\phase_accumulator[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[2]\,
      I1 => \phase_accumulator_reg_n_0_[3]\,
      I2 => phase_adjust(3),
      O => \phase_accumulator[3]_i_2_n_0\
    );
\phase_accumulator[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[2]\,
      I1 => phase_adjust(2),
      O => \phase_accumulator[3]_i_3_n_0\
    );
\phase_accumulator[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_adjust(1),
      I1 => \phase_accumulator_reg_n_0_[1]\,
      O => \phase_accumulator[3]_i_4_n_0\
    );
\phase_accumulator[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_adjust(0),
      I1 => \phase_accumulator_reg_n_0_[0]\,
      O => \phase_accumulator[3]_i_5_n_0\
    );
\phase_accumulator[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[7]\,
      I1 => phase_adjust(7),
      O => \phase_accumulator[7]_i_2_n_0\
    );
\phase_accumulator[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phase_adjust(5),
      I1 => \phase_accumulator_reg_n_0_[5]\,
      O => \phase_accumulator[7]_i_3_n_0\
    );
\phase_accumulator[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[5]\,
      I1 => phase_adjust(5),
      O => \phase_accumulator[7]_i_4_n_0\
    );
\phase_accumulator[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[3]\,
      I1 => phase_adjust(3),
      O => \phase_accumulator[7]_i_5_n_0\
    );
\phase_accumulator[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[7]\,
      I1 => phase_adjust(7),
      I2 => phase_adjust(6),
      I3 => \phase_accumulator_reg_n_0_[6]\,
      O => \phase_accumulator[7]_i_6_n_0\
    );
\phase_accumulator[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E11E"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[5]\,
      I1 => phase_adjust(5),
      I2 => \phase_accumulator_reg_n_0_[6]\,
      I3 => phase_adjust(6),
      O => \phase_accumulator[7]_i_7_n_0\
    );
\phase_accumulator[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \phase_accumulator_reg_n_0_[5]\,
      I1 => phase_adjust(5),
      I2 => phase_adjust(4),
      I3 => \phase_accumulator_reg_n_0_[4]\,
      O => \phase_accumulator[7]_i_8_n_0\
    );
\phase_accumulator[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => phase_adjust(3),
      I1 => \phase_accumulator_reg_n_0_[3]\,
      I2 => \phase_accumulator_reg_n_0_[4]\,
      I3 => phase_adjust(4),
      O => \phase_accumulator[7]_i_9_n_0\
    );
\phase_accumulator_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[3]_i_1_n_7\,
      Q => \phase_accumulator_reg_n_0_[0]\
    );
\phase_accumulator_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[11]_i_1_n_5\,
      Q => \phase_accumulator_reg_n_0_[10]\
    );
\phase_accumulator_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[11]_i_1_n_4\,
      Q => \phase_accumulator_reg_n_0_[11]\
    );
\phase_accumulator_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_accumulator_reg[7]_i_1_n_0\,
      CO(3) => \phase_accumulator_reg[11]_i_1_n_0\,
      CO(2) => \phase_accumulator_reg[11]_i_1_n_1\,
      CO(1) => \phase_accumulator_reg[11]_i_1_n_2\,
      CO(0) => \phase_accumulator_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \phase_accumulator[11]_i_2_n_0\,
      DI(2) => \phase_accumulator[11]_i_3_n_0\,
      DI(1) => \phase_accumulator[11]_i_4_n_0\,
      DI(0) => \phase_accumulator[11]_i_5_n_0\,
      O(3) => \phase_accumulator_reg[11]_i_1_n_4\,
      O(2) => \phase_accumulator_reg[11]_i_1_n_5\,
      O(1) => \phase_accumulator_reg[11]_i_1_n_6\,
      O(0) => \phase_accumulator_reg[11]_i_1_n_7\,
      S(3) => \phase_accumulator[11]_i_6_n_0\,
      S(2) => \phase_accumulator[11]_i_7_n_0\,
      S(1) => \phase_accumulator[11]_i_8_n_0\,
      S(0) => \phase_accumulator[11]_i_9_n_0\
    );
\phase_accumulator_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[15]_i_1_n_7\,
      Q => \phase_accumulator_reg_n_0_[12]\
    );
\phase_accumulator_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[15]_i_1_n_6\,
      Q => \phase_accumulator_reg_n_0_[13]\
    );
\phase_accumulator_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[15]_i_1_n_5\,
      Q => \phase_accumulator_reg_n_0_[14]\
    );
\phase_accumulator_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[15]_i_1_n_4\,
      Q => \phase_accumulator_reg_n_0_[15]\
    );
\phase_accumulator_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_accumulator_reg[11]_i_1_n_0\,
      CO(3) => \phase_accumulator_reg[15]_i_1_n_0\,
      CO(2) => \phase_accumulator_reg[15]_i_1_n_1\,
      CO(1) => \phase_accumulator_reg[15]_i_1_n_2\,
      CO(0) => \phase_accumulator_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \phase_accumulator[15]_i_2_n_0\,
      DI(2) => \phase_accumulator[15]_i_3_n_0\,
      DI(1) => \phase_accumulator[15]_i_4_n_0\,
      DI(0) => \phase_accumulator[15]_i_5_n_0\,
      O(3) => \phase_accumulator_reg[15]_i_1_n_4\,
      O(2) => \phase_accumulator_reg[15]_i_1_n_5\,
      O(1) => \phase_accumulator_reg[15]_i_1_n_6\,
      O(0) => \phase_accumulator_reg[15]_i_1_n_7\,
      S(3) => \phase_accumulator[15]_i_6_n_0\,
      S(2) => \phase_accumulator[15]_i_7_n_0\,
      S(1) => \phase_accumulator[15]_i_8_n_0\,
      S(0) => \phase_accumulator[15]_i_9_n_0\
    );
\phase_accumulator_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[19]_i_1_n_7\,
      Q => \phase_accumulator_reg_n_0_[16]\
    );
\phase_accumulator_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[19]_i_1_n_6\,
      Q => \phase_accumulator_reg_n_0_[17]\
    );
\phase_accumulator_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[19]_i_1_n_5\,
      Q => \phase_accumulator_reg_n_0_[18]\
    );
\phase_accumulator_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[19]_i_1_n_4\,
      Q => \phase_accumulator_reg_n_0_[19]\
    );
\phase_accumulator_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_accumulator_reg[15]_i_1_n_0\,
      CO(3) => \phase_accumulator_reg[19]_i_1_n_0\,
      CO(2) => \phase_accumulator_reg[19]_i_1_n_1\,
      CO(1) => \phase_accumulator_reg[19]_i_1_n_2\,
      CO(0) => \phase_accumulator_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \phase_accumulator[19]_i_2_n_0\,
      DI(2) => \phase_accumulator[19]_i_3_n_0\,
      DI(1) => \phase_accumulator[19]_i_4_n_0\,
      DI(0) => \phase_accumulator[19]_i_5_n_0\,
      O(3) => \phase_accumulator_reg[19]_i_1_n_4\,
      O(2) => \phase_accumulator_reg[19]_i_1_n_5\,
      O(1) => \phase_accumulator_reg[19]_i_1_n_6\,
      O(0) => \phase_accumulator_reg[19]_i_1_n_7\,
      S(3) => \phase_accumulator[19]_i_6_n_0\,
      S(2) => \phase_accumulator[19]_i_7_n_0\,
      S(1) => \phase_accumulator[19]_i_8_n_0\,
      S(0) => \phase_accumulator[19]_i_9_n_0\
    );
\phase_accumulator_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[3]_i_1_n_6\,
      Q => \phase_accumulator_reg_n_0_[1]\
    );
\phase_accumulator_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[23]_i_1_n_7\,
      Q => \phase_accumulator_reg_n_0_[20]\
    );
\phase_accumulator_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[23]_i_1_n_6\,
      Q => \phase_accumulator_reg_n_0_[21]\
    );
\phase_accumulator_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[23]_i_1_n_5\,
      Q => \phase_accumulator_reg_n_0_[22]\
    );
\phase_accumulator_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[23]_i_1_n_4\,
      Q => \phase_accumulator_reg_n_0_[23]\
    );
\phase_accumulator_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_accumulator_reg[19]_i_1_n_0\,
      CO(3) => \phase_accumulator_reg[23]_i_1_n_0\,
      CO(2) => \phase_accumulator_reg[23]_i_1_n_1\,
      CO(1) => \phase_accumulator_reg[23]_i_1_n_2\,
      CO(0) => \phase_accumulator_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \phase_accumulator[23]_i_2_n_0\,
      DI(2) => \phase_accumulator[23]_i_3_n_0\,
      DI(1) => \phase_accumulator[23]_i_4_n_0\,
      DI(0) => \phase_accumulator[23]_i_5_n_0\,
      O(3) => \phase_accumulator_reg[23]_i_1_n_4\,
      O(2) => \phase_accumulator_reg[23]_i_1_n_5\,
      O(1) => \phase_accumulator_reg[23]_i_1_n_6\,
      O(0) => \phase_accumulator_reg[23]_i_1_n_7\,
      S(3) => \phase_accumulator[23]_i_6_n_0\,
      S(2) => \phase_accumulator[23]_i_7_n_0\,
      S(1) => \phase_accumulator[23]_i_8_n_0\,
      S(0) => \phase_accumulator[23]_i_9_n_0\
    );
\phase_accumulator_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[27]_i_1_n_7\,
      Q => sel(0)
    );
\phase_accumulator_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[27]_i_1_n_6\,
      Q => sel(1)
    );
\phase_accumulator_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[27]_i_1_n_5\,
      Q => sel(2)
    );
\phase_accumulator_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[27]_i_1_n_4\,
      Q => sel(3)
    );
\phase_accumulator_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_accumulator_reg[23]_i_1_n_0\,
      CO(3) => \phase_accumulator_reg[27]_i_1_n_0\,
      CO(2) => \phase_accumulator_reg[27]_i_1_n_1\,
      CO(1) => \phase_accumulator_reg[27]_i_1_n_2\,
      CO(0) => \phase_accumulator_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \phase_accumulator[27]_i_2_n_0\,
      DI(2) => \phase_accumulator[27]_i_3_n_0\,
      DI(1) => \phase_accumulator[27]_i_4_n_0\,
      DI(0) => \phase_accumulator[27]_i_5_n_0\,
      O(3) => \phase_accumulator_reg[27]_i_1_n_4\,
      O(2) => \phase_accumulator_reg[27]_i_1_n_5\,
      O(1) => \phase_accumulator_reg[27]_i_1_n_6\,
      O(0) => \phase_accumulator_reg[27]_i_1_n_7\,
      S(3) => \phase_accumulator[27]_i_6_n_0\,
      S(2) => \phase_accumulator[27]_i_7_n_0\,
      S(1) => \phase_accumulator[27]_i_8_n_0\,
      S(0) => \phase_accumulator[27]_i_9_n_0\
    );
\phase_accumulator_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[31]_i_1_n_7\,
      Q => sel(4)
    );
\phase_accumulator_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[31]_i_1_n_6\,
      Q => sel(5)
    );
\phase_accumulator_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[3]_i_1_n_5\,
      Q => \phase_accumulator_reg_n_0_[2]\
    );
\phase_accumulator_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[31]_i_1_n_5\,
      Q => sel(6)
    );
\phase_accumulator_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[31]_i_1_n_4\,
      Q => sel(7)
    );
\phase_accumulator_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_accumulator_reg[27]_i_1_n_0\,
      CO(3) => \NLW_phase_accumulator_reg[31]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \phase_accumulator_reg[31]_i_1_n_1\,
      CO(1) => \phase_accumulator_reg[31]_i_1_n_2\,
      CO(0) => \phase_accumulator_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \phase_accumulator[31]_i_2_n_0\,
      DI(1) => \phase_accumulator[31]_i_3_n_0\,
      DI(0) => \phase_accumulator[31]_i_4_n_0\,
      O(3) => \phase_accumulator_reg[31]_i_1_n_4\,
      O(2) => \phase_accumulator_reg[31]_i_1_n_5\,
      O(1) => \phase_accumulator_reg[31]_i_1_n_6\,
      O(0) => \phase_accumulator_reg[31]_i_1_n_7\,
      S(3) => \phase_accumulator[31]_i_5_n_0\,
      S(2) => \phase_accumulator[31]_i_6_n_0\,
      S(1) => \phase_accumulator[31]_i_7_n_0\,
      S(0) => \phase_accumulator[31]_i_8_n_0\
    );
\phase_accumulator_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[3]_i_1_n_4\,
      Q => \phase_accumulator_reg_n_0_[3]\
    );
\phase_accumulator_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \phase_accumulator_reg[3]_i_1_n_0\,
      CO(2) => \phase_accumulator_reg[3]_i_1_n_1\,
      CO(1) => \phase_accumulator_reg[3]_i_1_n_2\,
      CO(0) => \phase_accumulator_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \phase_accumulator_reg_n_0_[2]\,
      DI(2 downto 0) => phase_adjust(2 downto 0),
      O(3) => \phase_accumulator_reg[3]_i_1_n_4\,
      O(2) => \phase_accumulator_reg[3]_i_1_n_5\,
      O(1) => \phase_accumulator_reg[3]_i_1_n_6\,
      O(0) => \phase_accumulator_reg[3]_i_1_n_7\,
      S(3) => \phase_accumulator[3]_i_2_n_0\,
      S(2) => \phase_accumulator[3]_i_3_n_0\,
      S(1) => \phase_accumulator[3]_i_4_n_0\,
      S(0) => \phase_accumulator[3]_i_5_n_0\
    );
\phase_accumulator_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[7]_i_1_n_7\,
      Q => \phase_accumulator_reg_n_0_[4]\
    );
\phase_accumulator_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[7]_i_1_n_6\,
      Q => \phase_accumulator_reg_n_0_[5]\
    );
\phase_accumulator_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[7]_i_1_n_5\,
      Q => \phase_accumulator_reg_n_0_[6]\
    );
\phase_accumulator_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[7]_i_1_n_4\,
      Q => \phase_accumulator_reg_n_0_[7]\
    );
\phase_accumulator_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_accumulator_reg[3]_i_1_n_0\,
      CO(3) => \phase_accumulator_reg[7]_i_1_n_0\,
      CO(2) => \phase_accumulator_reg[7]_i_1_n_1\,
      CO(1) => \phase_accumulator_reg[7]_i_1_n_2\,
      CO(0) => \phase_accumulator_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \phase_accumulator[7]_i_2_n_0\,
      DI(2) => \phase_accumulator[7]_i_3_n_0\,
      DI(1) => \phase_accumulator[7]_i_4_n_0\,
      DI(0) => \phase_accumulator[7]_i_5_n_0\,
      O(3) => \phase_accumulator_reg[7]_i_1_n_4\,
      O(2) => \phase_accumulator_reg[7]_i_1_n_5\,
      O(1) => \phase_accumulator_reg[7]_i_1_n_6\,
      O(0) => \phase_accumulator_reg[7]_i_1_n_7\,
      S(3) => \phase_accumulator[7]_i_6_n_0\,
      S(2) => \phase_accumulator[7]_i_7_n_0\,
      S(1) => \phase_accumulator[7]_i_8_n_0\,
      S(0) => \phase_accumulator[7]_i_9_n_0\
    );
\phase_accumulator_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[11]_i_1_n_7\,
      Q => \phase_accumulator_reg_n_0_[8]\
    );
\phase_accumulator_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_accumulator_reg[11]_i_1_n_6\,
      Q => \phase_accumulator_reg_n_0_[9]\
    );
\phase_adjust[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_101,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[0]_i_1_n_0\
    );
\phase_adjust[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_91,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[10]_i_1_n_0\
    );
\phase_adjust[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_90,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[11]_i_1_n_0\
    );
\phase_adjust[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_89,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[12]_i_1_n_0\
    );
\phase_adjust[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_88,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[13]_i_1_n_0\
    );
\phase_adjust[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_87,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[14]_i_1_n_0\
    );
\phase_adjust[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_86,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[15]_i_1_n_0\
    );
\phase_adjust[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_85,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[16]_i_1_n_0\
    );
\phase_adjust[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_84,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[17]_i_1_n_0\
    );
\phase_adjust[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_83,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[18]_i_1_n_0\
    );
\phase_adjust[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_82,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[19]_i_1_n_0\
    );
\phase_adjust[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_100,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[1]_i_1_n_0\
    );
\phase_adjust[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_81,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[20]_i_1_n_0\
    );
\phase_adjust[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_80,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[21]_i_1_n_0\
    );
\phase_adjust[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_79,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[22]_i_1_n_0\
    );
\phase_adjust[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_78,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[23]_i_1_n_0\
    );
\phase_adjust[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_77,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[24]_i_1_n_0\
    );
\phase_adjust[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_76,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[25]_i_1_n_0\
    );
\phase_adjust[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_75,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[26]_i_1_n_0\
    );
\phase_adjust[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_99,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[2]_i_1_n_0\
    );
\phase_adjust[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_74,
      I1 => \phase_adjust_reg[0]_0\,
      O => p_0_in0
    );
\phase_adjust[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_98,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[3]_i_1_n_0\
    );
\phase_adjust[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_97,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[4]_i_1_n_0\
    );
\phase_adjust[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_96,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[5]_i_1_n_0\
    );
\phase_adjust[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_95,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[6]_i_1_n_0\
    );
\phase_adjust[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_94,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[7]_i_1_n_0\
    );
\phase_adjust[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_93,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[8]_i_1_n_0\
    );
\phase_adjust[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_error0_n_92,
      I1 => \phase_adjust_reg[0]_0\,
      O => \phase_adjust[9]_i_1_n_0\
    );
\phase_adjust_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[0]_i_1_n_0\,
      Q => phase_adjust(0)
    );
\phase_adjust_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[10]_i_1_n_0\,
      Q => phase_adjust(10)
    );
\phase_adjust_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[11]_i_1_n_0\,
      Q => phase_adjust(11)
    );
\phase_adjust_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[12]_i_1_n_0\,
      Q => phase_adjust(12)
    );
\phase_adjust_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[13]_i_1_n_0\,
      Q => phase_adjust(13)
    );
\phase_adjust_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[14]_i_1_n_0\,
      Q => phase_adjust(14)
    );
\phase_adjust_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[15]_i_1_n_0\,
      Q => phase_adjust(15)
    );
\phase_adjust_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[16]_i_1_n_0\,
      Q => phase_adjust(16)
    );
\phase_adjust_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[17]_i_1_n_0\,
      Q => phase_adjust(17)
    );
\phase_adjust_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[18]_i_1_n_0\,
      Q => phase_adjust(18)
    );
\phase_adjust_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[19]_i_1_n_0\,
      Q => phase_adjust(19)
    );
\phase_adjust_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[1]_i_1_n_0\,
      Q => phase_adjust(1)
    );
\phase_adjust_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[20]_i_1_n_0\,
      Q => phase_adjust(20)
    );
\phase_adjust_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[21]_i_1_n_0\,
      Q => phase_adjust(21)
    );
\phase_adjust_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[22]_i_1_n_0\,
      Q => phase_adjust(22)
    );
\phase_adjust_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[23]_i_1_n_0\,
      Q => phase_adjust(23)
    );
\phase_adjust_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[24]_i_1_n_0\,
      Q => phase_adjust(24)
    );
\phase_adjust_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[25]_i_1_n_0\,
      Q => phase_adjust(25)
    );
\phase_adjust_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[26]_i_1_n_0\,
      Q => phase_adjust(26)
    );
\phase_adjust_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[2]_i_1_n_0\,
      Q => phase_adjust(2)
    );
\phase_adjust_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_in0,
      Q => phase_adjust(31)
    );
\phase_adjust_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[3]_i_1_n_0\,
      Q => phase_adjust(3)
    );
\phase_adjust_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[4]_i_1_n_0\,
      Q => phase_adjust(4)
    );
\phase_adjust_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[5]_i_1_n_0\,
      Q => phase_adjust(5)
    );
\phase_adjust_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[6]_i_1_n_0\,
      Q => phase_adjust(6)
    );
\phase_adjust_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[7]_i_1_n_0\,
      Q => phase_adjust(7)
    );
\phase_adjust_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[8]_i_1_n_0\,
      Q => phase_adjust(8)
    );
\phase_adjust_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \phase_adjust[9]_i_1_n_0\,
      Q => phase_adjust(9)
    );
phase_error0: unisim.vcomponents.DSP48E1
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
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => fir_tdata_i_i_mixer(33),
      A(28) => fir_tdata_i_i_mixer(33),
      A(27) => fir_tdata_i_i_mixer(33),
      A(26) => fir_tdata_i_i_mixer(33),
      A(25) => fir_tdata_i_i_mixer(33),
      A(24) => fir_tdata_i_i_mixer(33),
      A(23) => fir_tdata_i_i_mixer(33),
      A(22) => fir_tdata_i_i_mixer(33),
      A(21) => fir_tdata_i_i_mixer(33),
      A(20) => fir_tdata_i_i_mixer(33),
      A(19) => fir_tdata_i_i_mixer(33),
      A(18) => fir_tdata_i_i_mixer(33),
      A(17) => fir_tdata_i_i_mixer(33),
      A(16) => fir_tdata_i_i_mixer(33),
      A(15 downto 0) => fir_tdata_i_i_mixer(33 downto 18),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_phase_error0_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => fir_tdata_i_q_mixer(33),
      B(16) => fir_tdata_i_q_mixer(33),
      B(15 downto 0) => fir_tdata_i_q_mixer(33 downto 18),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_phase_error0_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_phase_error0_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_phase_error0_CARRYOUT_UNCONNECTED(3 downto 0),
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
      CEP => '1',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_phase_error0_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_phase_error0_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_phase_error0_P_UNCONNECTED(47 downto 32),
      P(31) => phase_error0_n_74,
      P(30) => phase_error0_n_75,
      P(29) => phase_error0_n_76,
      P(28) => phase_error0_n_77,
      P(27) => phase_error0_n_78,
      P(26) => phase_error0_n_79,
      P(25) => phase_error0_n_80,
      P(24) => phase_error0_n_81,
      P(23) => phase_error0_n_82,
      P(22) => phase_error0_n_83,
      P(21) => phase_error0_n_84,
      P(20) => phase_error0_n_85,
      P(19) => phase_error0_n_86,
      P(18) => phase_error0_n_87,
      P(17) => phase_error0_n_88,
      P(16) => phase_error0_n_89,
      P(15) => phase_error0_n_90,
      P(14) => phase_error0_n_91,
      P(13) => phase_error0_n_92,
      P(12) => phase_error0_n_93,
      P(11) => phase_error0_n_94,
      P(10) => phase_error0_n_95,
      P(9) => phase_error0_n_96,
      P(8) => phase_error0_n_97,
      P(7) => phase_error0_n_98,
      P(6) => phase_error0_n_99,
      P(5) => phase_error0_n_100,
      P(4) => phase_error0_n_101,
      P(3) => phase_error0_n_102,
      P(2) => phase_error0_n_103,
      P(1) => phase_error0_n_104,
      P(0) => phase_error0_n_105,
      PATTERNBDETECT => NLW_phase_error0_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_phase_error0_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_phase_error0_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_phase_error0_UNDERFLOW_UNCONNECTED
    );
q_mixer0: unisim.vcomponents.DSP48E1
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
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => pm_data_in(15),
      A(28) => pm_data_in(15),
      A(27) => pm_data_in(15),
      A(26) => pm_data_in(15),
      A(25) => pm_data_in(15),
      A(24) => pm_data_in(15),
      A(23) => pm_data_in(15),
      A(22) => pm_data_in(15),
      A(21) => pm_data_in(15),
      A(20) => pm_data_in(15),
      A(19) => pm_data_in(15),
      A(18) => pm_data_in(15),
      A(17) => pm_data_in(15),
      A(16) => pm_data_in(15),
      A(15 downto 0) => pm_data_in(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_q_mixer0_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => cosine_wave(15),
      B(16) => cosine_wave(15),
      B(15 downto 0) => cosine_wave(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_q_mixer0_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_q_mixer0_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_q_mixer0_CARRYOUT_UNCONNECTED(3 downto 0),
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
      CEP => '1',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_q_mixer0_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_q_mixer0_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_q_mixer0_P_UNCONNECTED(47 downto 32),
      P(31) => q_mixer0_n_74,
      P(30) => q_mixer0_n_75,
      P(29) => q_mixer0_n_76,
      P(28) => q_mixer0_n_77,
      P(27) => q_mixer0_n_78,
      P(26) => q_mixer0_n_79,
      P(25) => q_mixer0_n_80,
      P(24) => q_mixer0_n_81,
      P(23) => q_mixer0_n_82,
      P(22) => q_mixer0_n_83,
      P(21) => q_mixer0_n_84,
      P(20) => q_mixer0_n_85,
      P(19) => q_mixer0_n_86,
      P(18) => q_mixer0_n_87,
      P(17) => q_mixer0_n_88,
      P(16) => q_mixer0_n_89,
      P(15) => q_mixer0_n_90,
      P(14) => q_mixer0_n_91,
      P(13) => q_mixer0_n_92,
      P(12) => q_mixer0_n_93,
      P(11) => q_mixer0_n_94,
      P(10) => q_mixer0_n_95,
      P(9) => q_mixer0_n_96,
      P(8) => q_mixer0_n_97,
      P(7) => q_mixer0_n_98,
      P(6) => q_mixer0_n_99,
      P(5) => q_mixer0_n_100,
      P(4) => q_mixer0_n_101,
      P(3) => q_mixer0_n_102,
      P(2) => q_mixer0_n_103,
      P(1) => q_mixer0_n_104,
      P(0) => q_mixer0_n_105,
      PATTERNBDETECT => NLW_q_mixer0_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_q_mixer0_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_q_mixer0_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_q_mixer0_UNDERFLOW_UNCONNECTED
    );
\sine_wave[0]_i_2\: unisim.vcomponents.LUT6
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
      O => \sine_wave[0]_i_2_n_0\
    );
\sine_wave[0]_i_3\: unisim.vcomponents.LUT6
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
      O => \sine_wave[0]_i_3_n_0\
    );
\sine_wave[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_wave[10]_i_2_n_0\,
      I1 => \sine_wave[10]_i_3_n_0\,
      I2 => sel(6),
      I3 => \sine_wave[10]_i_4_n_0\,
      I4 => sel(5),
      I5 => \sine_wave[10]_i_5_n_0\,
      O => p_0_out(10)
    );
\sine_wave[10]_i_2\: unisim.vcomponents.LUT6
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
      O => \sine_wave[10]_i_2_n_0\
    );
\sine_wave[10]_i_3\: unisim.vcomponents.LUT6
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
      O => \sine_wave[10]_i_3_n_0\
    );
\sine_wave[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0742F8BD485DB7A2"
    )
        port map (
      I0 => sel(4),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(0),
      I4 => sel(7),
      I5 => sel(1),
      O => \sine_wave[10]_i_4_n_0\
    );
\sine_wave[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8770C8B6788F3748"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => \sine_wave[10]_i_5_n_0\
    );
\sine_wave[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_wave[11]_i_2_n_0\,
      I1 => \sine_wave[11]_i_3_n_0\,
      I2 => sel(6),
      I3 => \sine_wave[11]_i_4_n_0\,
      I4 => sel(5),
      I5 => \sine_wave[11]_i_5_n_0\,
      O => p_0_out(11)
    );
\sine_wave[11]_i_2\: unisim.vcomponents.LUT6
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
      O => \sine_wave[11]_i_2_n_0\
    );
\sine_wave[11]_i_3\: unisim.vcomponents.LUT6
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
      O => \sine_wave[11]_i_3_n_0\
    );
\sine_wave[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45551202BAAAEDFD"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(1),
      I3 => sel(0),
      I4 => sel(2),
      I5 => sel(7),
      O => \sine_wave[11]_i_4_n_0\
    );
\sine_wave[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B438C3AC4BC73C4"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => \sine_wave[11]_i_5_n_0\
    );
\sine_wave[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_wave[12]_i_2_n_0\,
      I1 => \sine_wave[12]_i_3_n_0\,
      I2 => sel(6),
      I3 => \sine_wave[12]_i_4_n_0\,
      I4 => sel(5),
      I5 => \sine_wave[12]_i_5_n_0\,
      O => p_0_out(12)
    );
\sine_wave[12]_i_2\: unisim.vcomponents.LUT6
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
      O => \sine_wave[12]_i_2_n_0\
    );
\sine_wave[12]_i_3\: unisim.vcomponents.LUT6
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
      O => \sine_wave[12]_i_3_n_0\
    );
\sine_wave[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11115444EEEEABBB"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(1),
      I3 => sel(0),
      I4 => sel(2),
      I5 => sel(7),
      O => \sine_wave[12]_i_4_n_0\
    );
\sine_wave[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66D955989926AA66"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => \sine_wave[12]_i_5_n_0\
    );
\sine_wave[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_wave[13]_i_2_n_0\,
      I1 => \sine_wave[13]_i_3_n_0\,
      I2 => sel(6),
      I3 => \sine_wave[13]_i_4_n_0\,
      I4 => sel(5),
      I5 => \sine_wave[13]_i_5_n_0\,
      O => p_0_out(13)
    );
\sine_wave[13]_i_2\: unisim.vcomponents.LUT6
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
      O => \sine_wave[13]_i_2_n_0\
    );
\sine_wave[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80007FFF"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      I4 => sel(7),
      O => \sine_wave[13]_i_3_n_0\
    );
\sine_wave[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000111FFFFFEEE"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(1),
      I3 => sel(0),
      I4 => sel(2),
      I5 => sel(7),
      O => \sine_wave[13]_i_4_n_0\
    );
\sine_wave[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB9D99DC44626622"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => \sine_wave[13]_i_5_n_0\
    );
\sine_wave[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B3F8B0C"
    )
        port map (
      I0 => \sine_wave[14]_i_2_n_0\,
      I1 => sel(6),
      I2 => sel(7),
      I3 => sel(5),
      I4 => \sine_wave[14]_i_3_n_0\,
      O => p_0_out(14)
    );
\sine_wave[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAAA00155555"
    )
        port map (
      I0 => sel(4),
      I1 => sel(1),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(3),
      I5 => sel(7),
      O => \sine_wave[14]_i_2_n_0\
    );
\sine_wave[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55777776AA888888"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => \sine_wave[14]_i_3_n_0\
    );
\sine_wave[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => sel(6),
      I1 => sel(5),
      I2 => sel(4),
      I3 => sel(7),
      I4 => sel(3),
      I5 => \sine_wave[15]_i_2_n_0\,
      O => p_0_out(15)
    );
\sine_wave[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => sel(0),
      I1 => sel(2),
      I2 => sel(1),
      I3 => sel(7),
      O => \sine_wave[15]_i_2_n_0\
    );
\sine_wave[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_wave[1]_i_2_n_0\,
      I1 => \sine_wave[1]_i_3_n_0\,
      I2 => sel(6),
      I3 => \sine_wave[1]_i_4_n_0\,
      I4 => sel(5),
      I5 => \sine_wave[1]_i_5_n_0\,
      O => p_0_out(1)
    );
\sine_wave[1]_i_2\: unisim.vcomponents.LUT6
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
      O => \sine_wave[1]_i_2_n_0\
    );
\sine_wave[1]_i_3\: unisim.vcomponents.LUT6
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
      O => \sine_wave[1]_i_3_n_0\
    );
\sine_wave[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96E431518D8F8471"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(7),
      I5 => sel(1),
      O => \sine_wave[1]_i_4_n_0\
    );
\sine_wave[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F410BFD6A2646AE2"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(1),
      I3 => sel(2),
      I4 => sel(7),
      I5 => sel(0),
      O => \sine_wave[1]_i_5_n_0\
    );
\sine_wave[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_wave[2]_i_2_n_0\,
      I1 => \sine_wave[2]_i_3_n_0\,
      I2 => sel(6),
      I3 => \sine_wave[2]_i_4_n_0\,
      I4 => sel(5),
      I5 => \sine_wave[2]_i_5_n_0\,
      O => p_0_out(2)
    );
\sine_wave[2]_i_2\: unisim.vcomponents.LUT6
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
      O => \sine_wave[2]_i_2_n_0\
    );
\sine_wave[2]_i_3\: unisim.vcomponents.LUT6
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
      O => \sine_wave[2]_i_3_n_0\
    );
\sine_wave[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6B2ED45B67FBE824"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(2),
      I3 => sel(0),
      I4 => sel(7),
      I5 => sel(1),
      O => \sine_wave[2]_i_4_n_0\
    );
\sine_wave[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00E7A689693DBE8"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(7),
      I3 => sel(0),
      I4 => sel(2),
      I5 => sel(1),
      O => \sine_wave[2]_i_5_n_0\
    );
\sine_wave[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_wave[3]_i_2_n_0\,
      I1 => \sine_wave[3]_i_3_n_0\,
      I2 => sel(6),
      I3 => \sine_wave[3]_i_4_n_0\,
      I4 => sel(5),
      I5 => \sine_wave[3]_i_5_n_0\,
      O => p_0_out(3)
    );
\sine_wave[3]_i_2\: unisim.vcomponents.LUT6
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
      O => \sine_wave[3]_i_2_n_0\
    );
\sine_wave[3]_i_3\: unisim.vcomponents.LUT6
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
      O => \sine_wave[3]_i_3_n_0\
    );
\sine_wave[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCDD03530B32FCAC"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(1),
      I4 => sel(2),
      I5 => sel(7),
      O => \sine_wave[3]_i_4_n_0\
    );
\sine_wave[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D92741BF6E95906E"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(7),
      I4 => sel(2),
      I5 => sel(1),
      O => \sine_wave[3]_i_5_n_0\
    );
\sine_wave[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_wave[4]_i_2_n_0\,
      I1 => \sine_wave[4]_i_3_n_0\,
      I2 => sel(6),
      I3 => \sine_wave[4]_i_4_n_0\,
      I4 => sel(5),
      I5 => \sine_wave[4]_i_5_n_0\,
      O => p_0_out(4)
    );
\sine_wave[4]_i_2\: unisim.vcomponents.LUT6
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
      O => \sine_wave[4]_i_2_n_0\
    );
\sine_wave[4]_i_3\: unisim.vcomponents.LUT6
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
      O => \sine_wave[4]_i_3_n_0\
    );
\sine_wave[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"73B68C499C6F6390"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(7),
      I5 => sel(1),
      O => \sine_wave[4]_i_4_n_0\
    );
\sine_wave[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"937155506C8EAAAE"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => \sine_wave[4]_i_5_n_0\
    );
\sine_wave[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_wave[5]_i_2_n_0\,
      I1 => \sine_wave[5]_i_3_n_0\,
      I2 => sel(6),
      I3 => \sine_wave[5]_i_4_n_0\,
      I4 => sel(5),
      I5 => \sine_wave[5]_i_5_n_0\,
      O => p_0_out(5)
    );
\sine_wave[5]_i_2\: unisim.vcomponents.LUT6
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
      O => \sine_wave[5]_i_2_n_0\
    );
\sine_wave[5]_i_3\: unisim.vcomponents.LUT6
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
      O => \sine_wave[5]_i_3_n_0\
    );
\sine_wave[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4960EF8BB69F1074"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(1),
      I4 => sel(2),
      I5 => sel(7),
      O => \sine_wave[5]_i_4_n_0\
    );
\sine_wave[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C725A36838DA5C96"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => \sine_wave[5]_i_5_n_0\
    );
\sine_wave[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_wave[6]_i_2_n_0\,
      I1 => \sine_wave[6]_i_3_n_0\,
      I2 => sel(6),
      I3 => \sine_wave[6]_i_4_n_0\,
      I4 => sel(5),
      I5 => \sine_wave[6]_i_5_n_0\,
      O => p_0_out(6)
    );
\sine_wave[6]_i_2\: unisim.vcomponents.LUT6
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
      O => \sine_wave[6]_i_2_n_0\
    );
\sine_wave[6]_i_3\: unisim.vcomponents.LUT6
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
      O => \sine_wave[6]_i_3_n_0\
    );
\sine_wave[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AAA95580D97F26"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(7),
      I5 => sel(1),
      O => \sine_wave[6]_i_4_n_0\
    );
\sine_wave[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44EEFDD8BB110226"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => \sine_wave[6]_i_5_n_0\
    );
\sine_wave[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_wave[7]_i_2_n_0\,
      I1 => \sine_wave[7]_i_3_n_0\,
      I2 => sel(6),
      I3 => \sine_wave[7]_i_4_n_0\,
      I4 => sel(5),
      I5 => \sine_wave[7]_i_5_n_0\,
      O => p_0_out(7)
    );
\sine_wave[7]_i_2\: unisim.vcomponents.LUT6
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
      O => \sine_wave[7]_i_2_n_0\
    );
\sine_wave[7]_i_3\: unisim.vcomponents.LUT6
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
      O => \sine_wave[7]_i_3_n_0\
    );
\sine_wave[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C6D20AAB392DF55"
    )
        port map (
      I0 => sel(4),
      I1 => sel(0),
      I2 => sel(2),
      I3 => sel(1),
      I4 => sel(3),
      I5 => sel(7),
      O => \sine_wave[7]_i_4_n_0\
    );
\sine_wave[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E45D6E581BA291A6"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => \sine_wave[7]_i_5_n_0\
    );
\sine_wave[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_wave[8]_i_2_n_0\,
      I1 => \sine_wave[8]_i_3_n_0\,
      I2 => sel(6),
      I3 => \sine_wave[8]_i_4_n_0\,
      I4 => sel(5),
      I5 => \sine_wave[8]_i_5_n_0\,
      O => p_0_out(8)
    );
\sine_wave[8]_i_2\: unisim.vcomponents.LUT6
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
      O => \sine_wave[8]_i_2_n_0\
    );
\sine_wave[8]_i_3\: unisim.vcomponents.LUT6
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
      O => \sine_wave[8]_i_3_n_0\
    );
\sine_wave[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"104FBF3FEFB040C0"
    )
        port map (
      I0 => sel(2),
      I1 => sel(0),
      I2 => sel(4),
      I3 => sel(1),
      I4 => sel(3),
      I5 => sel(7),
      O => \sine_wave[8]_i_4_n_0\
    );
\sine_wave[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E1CB43461E34BCB8"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => \sine_wave[8]_i_5_n_0\
    );
\sine_wave[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_wave[9]_i_2_n_0\,
      I1 => \sine_wave[9]_i_3_n_0\,
      I2 => sel(6),
      I3 => \sine_wave[9]_i_4_n_0\,
      I4 => sel(5),
      I5 => \sine_wave[9]_i_5_n_0\,
      O => p_0_out(9)
    );
\sine_wave[9]_i_2\: unisim.vcomponents.LUT6
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
      O => \sine_wave[9]_i_2_n_0\
    );
\sine_wave[9]_i_3\: unisim.vcomponents.LUT6
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
      O => \sine_wave[9]_i_3_n_0\
    );
\sine_wave[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"41F516A0BE0AE95F"
    )
        port map (
      I0 => sel(4),
      I1 => sel(2),
      I2 => sel(1),
      I3 => sel(3),
      I4 => sel(0),
      I5 => sel(7),
      O => \sine_wave[9]_i_4_n_0\
    );
\sine_wave[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA384FC645C7B038"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(7),
      O => \sine_wave[9]_i_5_n_0\
    );
\sine_wave_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_out(0),
      Q => sine_wave(0)
    );
\sine_wave_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_wave[0]_i_2_n_0\,
      I1 => \sine_wave[0]_i_3_n_0\,
      O => p_0_out(0),
      S => sel(6)
    );
\sine_wave_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_out(10),
      Q => sine_wave(10)
    );
\sine_wave_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_out(11),
      Q => sine_wave(11)
    );
\sine_wave_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_out(12),
      Q => sine_wave(12)
    );
\sine_wave_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_out(13),
      Q => sine_wave(13)
    );
\sine_wave_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_out(14),
      Q => sine_wave(14)
    );
\sine_wave_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_out(15),
      Q => sine_wave(15)
    );
\sine_wave_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_out(1),
      Q => sine_wave(1)
    );
\sine_wave_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_out(2),
      Q => sine_wave(2)
    );
\sine_wave_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_out(3),
      Q => sine_wave(3)
    );
\sine_wave_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_out(4),
      Q => sine_wave(4)
    );
\sine_wave_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_out(5),
      Q => sine_wave(5)
    );
\sine_wave_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_out(6),
      Q => sine_wave(6)
    );
\sine_wave_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_out(7),
      Q => sine_wave(7)
    );
\sine_wave_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_out(8),
      Q => sine_wave(8)
    );
\sine_wave_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => p_0_out(9),
      Q => sine_wave(9)
    );
\square_wave[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^rst_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_PSK_DM_0_0_PSK_DM is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    pm_data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pm_data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_PSK_DM_0_0_PSK_DM : entity is "PSK_DM";
end design_1_PSK_DM_0_0_PSK_DM;

architecture STRUCTURE of design_1_PSK_DM_0_0_PSK_DM is
  component design_1_PSK_DM_0_0_fir_lpf_psk is
  port (
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  end component design_1_PSK_DM_0_0_fir_lpf_psk;
  component design_1_PSK_DM_0_0_mult_gen_psk is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_PSK_DM_0_0_mult_gen_psk;
  signal \<const0>\ : STD_LOGIC;
  signal carrier_out_signed : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal costas_loop_inst_n_0 : STD_LOGIC;
  signal fir_lpf_psk_psk2_i_17_n_0 : STD_LOGIC;
  signal fir_tdata_i : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal mixed_PSK_data_signed : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal mixed_valid_r : STD_LOGIC;
  signal \^pm_data_out\ : STD_LOGIC_VECTOR ( 9 to 9 );
  signal square_wave1 : STD_LOGIC;
  signal \square_wave[11]_i_10_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_11_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_12_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_13_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_14_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_16_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_17_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_18_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_19_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_20_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_21_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_22_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_23_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_25_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_26_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_27_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_28_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_29_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_30_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_31_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_32_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_33_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_34_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_35_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_36_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_37_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_38_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_39_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_40_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_4_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_5_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_7_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_8_n_0\ : STD_LOGIC;
  signal \square_wave[11]_i_9_n_0\ : STD_LOGIC;
  signal \square_wave_reg[11]_i_15_n_0\ : STD_LOGIC;
  signal \square_wave_reg[11]_i_15_n_1\ : STD_LOGIC;
  signal \square_wave_reg[11]_i_15_n_2\ : STD_LOGIC;
  signal \square_wave_reg[11]_i_15_n_3\ : STD_LOGIC;
  signal \square_wave_reg[11]_i_24_n_0\ : STD_LOGIC;
  signal \square_wave_reg[11]_i_24_n_1\ : STD_LOGIC;
  signal \square_wave_reg[11]_i_24_n_2\ : STD_LOGIC;
  signal \square_wave_reg[11]_i_24_n_3\ : STD_LOGIC;
  signal \square_wave_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \square_wave_reg[11]_i_3_n_1\ : STD_LOGIC;
  signal \square_wave_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \square_wave_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \square_wave_reg[11]_i_6_n_0\ : STD_LOGIC;
  signal \square_wave_reg[11]_i_6_n_1\ : STD_LOGIC;
  signal \square_wave_reg[11]_i_6_n_2\ : STD_LOGIC;
  signal \square_wave_reg[11]_i_6_n_3\ : STD_LOGIC;
  signal NLW_fir_lpf_psk_psk1_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_lpf_psk_psk1_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_lpf_psk_psk1_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 34 );
  signal NLW_mult_gen_psk_P_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_square_wave_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_square_wave_reg[11]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_square_wave_reg[11]_i_15_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_square_wave_reg[11]_i_24_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_square_wave_reg[11]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_square_wave_reg[11]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fir_lpf_psk_psk1 : label is "fir_lpf_psk,fir_compiler_v7_2_23,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fir_lpf_psk_psk1 : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fir_lpf_psk_psk1 : label is "fir_compiler_v7_2_23,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of mult_gen_psk : label is "mult_gen_psk,mult_gen_v12_0_22,{}";
  attribute downgradeipidentifiedwarnings of mult_gen_psk : label is "yes";
  attribute x_core_info of mult_gen_psk : label is "mult_gen_v12_0_22,Vivado 2024.2";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \square_wave_reg[11]_i_1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \square_wave_reg[11]_i_15\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \square_wave_reg[11]_i_24\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \square_wave_reg[11]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \square_wave_reg[11]_i_6\ : label is 11;
begin
  pm_data_out(15) <= \<const0>\;
  pm_data_out(14) <= \<const0>\;
  pm_data_out(13) <= \<const0>\;
  pm_data_out(12) <= \<const0>\;
  pm_data_out(11) <= \^pm_data_out\(9);
  pm_data_out(10) <= \<const0>\;
  pm_data_out(9) <= \^pm_data_out\(9);
  pm_data_out(8) <= \^pm_data_out\(9);
  pm_data_out(7) <= \^pm_data_out\(9);
  pm_data_out(6) <= \<const0>\;
  pm_data_out(5) <= \^pm_data_out\(9);
  pm_data_out(4) <= \^pm_data_out\(9);
  pm_data_out(3) <= \^pm_data_out\(9);
  pm_data_out(2) <= \<const0>\;
  pm_data_out(1) <= \<const0>\;
  pm_data_out(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
costas_loop_inst: entity work.design_1_PSK_DM_0_0_costas_loop
     port map (
      Q(15 downto 0) => carrier_out_signed(15 downto 0),
      clk => clk,
      \phase_adjust_reg[0]_0\ => fir_lpf_psk_psk2_i_17_n_0,
      pm_data_in(15 downto 0) => pm_data_in(15 downto 0),
      rst_n => rst_n,
      rst_n_0 => costas_loop_inst_n_0
    );
fir_lpf_psk_psk1: component design_1_PSK_DM_0_0_fir_lpf_psk
     port map (
      aclk => clk,
      m_axis_data_tdata(39 downto 34) => NLW_fir_lpf_psk_psk1_m_axis_data_tdata_UNCONNECTED(39 downto 34),
      m_axis_data_tdata(33 downto 0) => fir_tdata_i(33 downto 0),
      m_axis_data_tvalid => NLW_fir_lpf_psk_psk1_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => mixed_PSK_data_signed(31 downto 16),
      s_axis_data_tready => NLW_fir_lpf_psk_psk1_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => mixed_valid_r
    );
fir_lpf_psk_psk2_i_17: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => costas_loop_inst_n_0,
      D => '1',
      Q => fir_lpf_psk_psk2_i_17_n_0
    );
mixed_valid_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_n,
      Q => mixed_valid_r,
      R => '0'
    );
mult_gen_psk: component design_1_PSK_DM_0_0_mult_gen_psk
     port map (
      A(15 downto 0) => pm_data_in(15 downto 0),
      B(15 downto 0) => carrier_out_signed(15 downto 0),
      CLK => clk,
      P(31 downto 16) => mixed_PSK_data_signed(31 downto 16),
      P(15 downto 0) => NLW_mult_gen_psk_P_UNCONNECTED(15 downto 0)
    );
\square_wave[11]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fir_tdata_i(24),
      I1 => fir_tdata_i(25),
      O => \square_wave[11]_i_10_n_0\
    );
\square_wave[11]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_tdata_i(30),
      I1 => fir_tdata_i(31),
      O => \square_wave[11]_i_11_n_0\
    );
\square_wave[11]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_tdata_i(28),
      I1 => fir_tdata_i(29),
      O => \square_wave[11]_i_12_n_0\
    );
\square_wave[11]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_tdata_i(26),
      I1 => fir_tdata_i(27),
      O => \square_wave[11]_i_13_n_0\
    );
\square_wave[11]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_tdata_i(24),
      I1 => fir_tdata_i(25),
      O => \square_wave[11]_i_14_n_0\
    );
\square_wave[11]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fir_tdata_i(22),
      I1 => fir_tdata_i(23),
      O => \square_wave[11]_i_16_n_0\
    );
\square_wave[11]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fir_tdata_i(20),
      I1 => fir_tdata_i(21),
      O => \square_wave[11]_i_17_n_0\
    );
\square_wave[11]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fir_tdata_i(18),
      I1 => fir_tdata_i(19),
      O => \square_wave[11]_i_18_n_0\
    );
\square_wave[11]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fir_tdata_i(16),
      I1 => fir_tdata_i(17),
      O => \square_wave[11]_i_19_n_0\
    );
\square_wave[11]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_tdata_i(22),
      I1 => fir_tdata_i(23),
      O => \square_wave[11]_i_20_n_0\
    );
\square_wave[11]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_tdata_i(20),
      I1 => fir_tdata_i(21),
      O => \square_wave[11]_i_21_n_0\
    );
\square_wave[11]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_tdata_i(18),
      I1 => fir_tdata_i(19),
      O => \square_wave[11]_i_22_n_0\
    );
\square_wave[11]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_tdata_i(16),
      I1 => fir_tdata_i(17),
      O => \square_wave[11]_i_23_n_0\
    );
\square_wave[11]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fir_tdata_i(14),
      I1 => fir_tdata_i(15),
      O => \square_wave[11]_i_25_n_0\
    );
\square_wave[11]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fir_tdata_i(12),
      I1 => fir_tdata_i(13),
      O => \square_wave[11]_i_26_n_0\
    );
\square_wave[11]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fir_tdata_i(10),
      I1 => fir_tdata_i(11),
      O => \square_wave[11]_i_27_n_0\
    );
\square_wave[11]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fir_tdata_i(8),
      I1 => fir_tdata_i(9),
      O => \square_wave[11]_i_28_n_0\
    );
\square_wave[11]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_tdata_i(14),
      I1 => fir_tdata_i(15),
      O => \square_wave[11]_i_29_n_0\
    );
\square_wave[11]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_tdata_i(12),
      I1 => fir_tdata_i(13),
      O => \square_wave[11]_i_30_n_0\
    );
\square_wave[11]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_tdata_i(10),
      I1 => fir_tdata_i(11),
      O => \square_wave[11]_i_31_n_0\
    );
\square_wave[11]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_tdata_i(8),
      I1 => fir_tdata_i(9),
      O => \square_wave[11]_i_32_n_0\
    );
\square_wave[11]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fir_tdata_i(6),
      I1 => fir_tdata_i(7),
      O => \square_wave[11]_i_33_n_0\
    );
\square_wave[11]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fir_tdata_i(4),
      I1 => fir_tdata_i(5),
      O => \square_wave[11]_i_34_n_0\
    );
\square_wave[11]_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fir_tdata_i(2),
      I1 => fir_tdata_i(3),
      O => \square_wave[11]_i_35_n_0\
    );
\square_wave[11]_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fir_tdata_i(0),
      I1 => fir_tdata_i(1),
      O => \square_wave[11]_i_36_n_0\
    );
\square_wave[11]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_tdata_i(6),
      I1 => fir_tdata_i(7),
      O => \square_wave[11]_i_37_n_0\
    );
\square_wave[11]_i_38\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_tdata_i(4),
      I1 => fir_tdata_i(5),
      O => \square_wave[11]_i_38_n_0\
    );
\square_wave[11]_i_39\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_tdata_i(2),
      I1 => fir_tdata_i(3),
      O => \square_wave[11]_i_39_n_0\
    );
\square_wave[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fir_tdata_i(32),
      I1 => fir_tdata_i(33),
      O => \square_wave[11]_i_4_n_0\
    );
\square_wave[11]_i_40\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_tdata_i(0),
      I1 => fir_tdata_i(1),
      O => \square_wave[11]_i_40_n_0\
    );
\square_wave[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_tdata_i(32),
      I1 => fir_tdata_i(33),
      O => \square_wave[11]_i_5_n_0\
    );
\square_wave[11]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fir_tdata_i(30),
      I1 => fir_tdata_i(31),
      O => \square_wave[11]_i_7_n_0\
    );
\square_wave[11]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fir_tdata_i(28),
      I1 => fir_tdata_i(29),
      O => \square_wave[11]_i_8_n_0\
    );
\square_wave[11]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fir_tdata_i(26),
      I1 => fir_tdata_i(27),
      O => \square_wave[11]_i_9_n_0\
    );
\square_wave_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => costas_loop_inst_n_0,
      D => square_wave1,
      Q => \^pm_data_out\(9)
    );
\square_wave_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \square_wave_reg[11]_i_3_n_0\,
      CO(3 downto 1) => \NLW_square_wave_reg[11]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => square_wave1,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \square_wave[11]_i_4_n_0\,
      O(3 downto 0) => \NLW_square_wave_reg[11]_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \square_wave[11]_i_5_n_0\
    );
\square_wave_reg[11]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => \square_wave_reg[11]_i_24_n_0\,
      CO(3) => \square_wave_reg[11]_i_15_n_0\,
      CO(2) => \square_wave_reg[11]_i_15_n_1\,
      CO(1) => \square_wave_reg[11]_i_15_n_2\,
      CO(0) => \square_wave_reg[11]_i_15_n_3\,
      CYINIT => '0',
      DI(3) => \square_wave[11]_i_25_n_0\,
      DI(2) => \square_wave[11]_i_26_n_0\,
      DI(1) => \square_wave[11]_i_27_n_0\,
      DI(0) => \square_wave[11]_i_28_n_0\,
      O(3 downto 0) => \NLW_square_wave_reg[11]_i_15_O_UNCONNECTED\(3 downto 0),
      S(3) => \square_wave[11]_i_29_n_0\,
      S(2) => \square_wave[11]_i_30_n_0\,
      S(1) => \square_wave[11]_i_31_n_0\,
      S(0) => \square_wave[11]_i_32_n_0\
    );
\square_wave_reg[11]_i_24\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \square_wave_reg[11]_i_24_n_0\,
      CO(2) => \square_wave_reg[11]_i_24_n_1\,
      CO(1) => \square_wave_reg[11]_i_24_n_2\,
      CO(0) => \square_wave_reg[11]_i_24_n_3\,
      CYINIT => '0',
      DI(3) => \square_wave[11]_i_33_n_0\,
      DI(2) => \square_wave[11]_i_34_n_0\,
      DI(1) => \square_wave[11]_i_35_n_0\,
      DI(0) => \square_wave[11]_i_36_n_0\,
      O(3 downto 0) => \NLW_square_wave_reg[11]_i_24_O_UNCONNECTED\(3 downto 0),
      S(3) => \square_wave[11]_i_37_n_0\,
      S(2) => \square_wave[11]_i_38_n_0\,
      S(1) => \square_wave[11]_i_39_n_0\,
      S(0) => \square_wave[11]_i_40_n_0\
    );
\square_wave_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \square_wave_reg[11]_i_6_n_0\,
      CO(3) => \square_wave_reg[11]_i_3_n_0\,
      CO(2) => \square_wave_reg[11]_i_3_n_1\,
      CO(1) => \square_wave_reg[11]_i_3_n_2\,
      CO(0) => \square_wave_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \square_wave[11]_i_7_n_0\,
      DI(2) => \square_wave[11]_i_8_n_0\,
      DI(1) => \square_wave[11]_i_9_n_0\,
      DI(0) => \square_wave[11]_i_10_n_0\,
      O(3 downto 0) => \NLW_square_wave_reg[11]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \square_wave[11]_i_11_n_0\,
      S(2) => \square_wave[11]_i_12_n_0\,
      S(1) => \square_wave[11]_i_13_n_0\,
      S(0) => \square_wave[11]_i_14_n_0\
    );
\square_wave_reg[11]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \square_wave_reg[11]_i_15_n_0\,
      CO(3) => \square_wave_reg[11]_i_6_n_0\,
      CO(2) => \square_wave_reg[11]_i_6_n_1\,
      CO(1) => \square_wave_reg[11]_i_6_n_2\,
      CO(0) => \square_wave_reg[11]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \square_wave[11]_i_16_n_0\,
      DI(2) => \square_wave[11]_i_17_n_0\,
      DI(1) => \square_wave[11]_i_18_n_0\,
      DI(0) => \square_wave[11]_i_19_n_0\,
      O(3 downto 0) => \NLW_square_wave_reg[11]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => \square_wave[11]_i_20_n_0\,
      S(2) => \square_wave[11]_i_21_n_0\,
      S(1) => \square_wave[11]_i_22_n_0\,
      S(0) => \square_wave[11]_i_23_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_PSK_DM_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    pm_data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pm_data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_PSK_DM_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_PSK_DM_0_0 : entity is "design_1_PSK_DM_0_0,PSK_DM,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_PSK_DM_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_PSK_DM_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_PSK_DM_0_0 : entity is "PSK_DM,Vivado 2024.2";
end design_1_PSK_DM_0_0;

architecture STRUCTURE of design_1_PSK_DM_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^pm_data_out\ : STD_LOGIC_VECTOR ( 11 downto 3 );
  signal NLW_inst_pm_data_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
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
  pm_data_out(15) <= \<const0>\;
  pm_data_out(14) <= \<const0>\;
  pm_data_out(13) <= \<const0>\;
  pm_data_out(12) <= \<const0>\;
  pm_data_out(11) <= \^pm_data_out\(11);
  pm_data_out(10) <= \<const0>\;
  pm_data_out(9 downto 7) <= \^pm_data_out\(9 downto 7);
  pm_data_out(6) <= \<const0>\;
  pm_data_out(5 downto 3) <= \^pm_data_out\(5 downto 3);
  pm_data_out(2) <= \<const0>\;
  pm_data_out(1) <= \<const0>\;
  pm_data_out(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_PSK_DM_0_0_PSK_DM
     port map (
      clk => clk,
      pm_data_in(15 downto 0) => pm_data_in(15 downto 0),
      pm_data_out(15 downto 12) => NLW_inst_pm_data_out_UNCONNECTED(15 downto 12),
      pm_data_out(11) => \^pm_data_out\(11),
      pm_data_out(10) => NLW_inst_pm_data_out_UNCONNECTED(10),
      pm_data_out(9 downto 7) => \^pm_data_out\(9 downto 7),
      pm_data_out(6) => NLW_inst_pm_data_out_UNCONNECTED(6),
      pm_data_out(5 downto 3) => \^pm_data_out\(5 downto 3),
      pm_data_out(2 downto 0) => NLW_inst_pm_data_out_UNCONNECTED(2 downto 0),
      rst_n => rst_n
    );
end STRUCTURE;
