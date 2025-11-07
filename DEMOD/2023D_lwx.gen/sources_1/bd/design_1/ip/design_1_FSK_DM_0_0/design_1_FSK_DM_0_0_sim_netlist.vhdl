-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Thu Nov  6 16:34:32 2025
-- Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/elysia/Software/Xilinx/Project/11-6/2023D_lwx.gen/sources_1/bd/design_1/ip/design_1_FSK_DM_0_0/design_1_FSK_DM_0_0_sim_netlist.vhdl
-- Design      : design_1_FSK_DM_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FSK_DM_0_0_phase_differentiator is
  port (
    frequency_out_tvalid : out STD_LOGIC;
    rst_n_0 : out STD_LOGIC;
    \prev_unwrapped_phase_reg[18]_0\ : out STD_LOGIC_VECTOR ( 18 downto 0 );
    \frequency_out_reg[18]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 18 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \frequency_out_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \frequency_out_reg[11]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \frequency_out_reg[15]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \frequency_out_reg[18]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_FSK_DM_0_0_phase_differentiator : entity is "phase_differentiator";
end design_1_FSK_DM_0_0_phase_differentiator;

architecture STRUCTURE of design_1_FSK_DM_0_0_phase_differentiator is
  signal frequency_out0 : STD_LOGIC_VECTOR ( 18 downto 3 );
  signal \frequency_out0_carry__0_n_0\ : STD_LOGIC;
  signal \frequency_out0_carry__0_n_1\ : STD_LOGIC;
  signal \frequency_out0_carry__0_n_2\ : STD_LOGIC;
  signal \frequency_out0_carry__0_n_3\ : STD_LOGIC;
  signal \frequency_out0_carry__1_n_0\ : STD_LOGIC;
  signal \frequency_out0_carry__1_n_1\ : STD_LOGIC;
  signal \frequency_out0_carry__1_n_2\ : STD_LOGIC;
  signal \frequency_out0_carry__1_n_3\ : STD_LOGIC;
  signal \frequency_out0_carry__2_n_0\ : STD_LOGIC;
  signal \frequency_out0_carry__2_n_1\ : STD_LOGIC;
  signal \frequency_out0_carry__2_n_2\ : STD_LOGIC;
  signal \frequency_out0_carry__2_n_3\ : STD_LOGIC;
  signal \frequency_out0_carry__3_n_2\ : STD_LOGIC;
  signal \frequency_out0_carry__3_n_3\ : STD_LOGIC;
  signal frequency_out0_carry_n_0 : STD_LOGIC;
  signal frequency_out0_carry_n_1 : STD_LOGIC;
  signal frequency_out0_carry_n_2 : STD_LOGIC;
  signal frequency_out0_carry_n_3 : STD_LOGIC;
  signal \^rst_n_0\ : STD_LOGIC;
  signal NLW_frequency_out0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_frequency_out0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_frequency_out0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  rst_n_0 <= \^rst_n_0\;
frequency_out0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => frequency_out0_carry_n_0,
      CO(2) => frequency_out0_carry_n_1,
      CO(1) => frequency_out0_carry_n_2,
      CO(0) => frequency_out0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => Q(3 downto 0),
      O(3) => frequency_out0(3),
      O(2 downto 0) => NLW_frequency_out0_carry_O_UNCONNECTED(2 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\frequency_out0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => frequency_out0_carry_n_0,
      CO(3) => \frequency_out0_carry__0_n_0\,
      CO(2) => \frequency_out0_carry__0_n_1\,
      CO(1) => \frequency_out0_carry__0_n_2\,
      CO(0) => \frequency_out0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(7 downto 4),
      O(3 downto 0) => frequency_out0(7 downto 4),
      S(3 downto 0) => \frequency_out_reg[7]_0\(3 downto 0)
    );
\frequency_out0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frequency_out0_carry__0_n_0\,
      CO(3) => \frequency_out0_carry__1_n_0\,
      CO(2) => \frequency_out0_carry__1_n_1\,
      CO(1) => \frequency_out0_carry__1_n_2\,
      CO(0) => \frequency_out0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(11 downto 8),
      O(3 downto 0) => frequency_out0(11 downto 8),
      S(3 downto 0) => \frequency_out_reg[11]_0\(3 downto 0)
    );
\frequency_out0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \frequency_out0_carry__1_n_0\,
      CO(3) => \frequency_out0_carry__2_n_0\,
      CO(2) => \frequency_out0_carry__2_n_1\,
      CO(1) => \frequency_out0_carry__2_n_2\,
      CO(0) => \frequency_out0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(15 downto 12),
      O(3 downto 0) => frequency_out0(15 downto 12),
      S(3 downto 0) => \frequency_out_reg[15]_0\(3 downto 0)
    );
\frequency_out0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \frequency_out0_carry__2_n_0\,
      CO(3 downto 2) => \NLW_frequency_out0_carry__3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \frequency_out0_carry__3_n_2\,
      CO(0) => \frequency_out0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => Q(17 downto 16),
      O(3) => \NLW_frequency_out0_carry__3_O_UNCONNECTED\(3),
      O(2 downto 0) => frequency_out0(18 downto 16),
      S(3) => '0',
      S(2 downto 0) => \frequency_out_reg[18]_1\(2 downto 0)
    );
\frequency_out_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => frequency_out0(10),
      Q => \frequency_out_reg[18]_0\(7)
    );
\frequency_out_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => frequency_out0(11),
      Q => \frequency_out_reg[18]_0\(8)
    );
\frequency_out_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => frequency_out0(12),
      Q => \frequency_out_reg[18]_0\(9)
    );
\frequency_out_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => frequency_out0(13),
      Q => \frequency_out_reg[18]_0\(10)
    );
\frequency_out_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => frequency_out0(14),
      Q => \frequency_out_reg[18]_0\(11)
    );
\frequency_out_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => frequency_out0(15),
      Q => \frequency_out_reg[18]_0\(12)
    );
\frequency_out_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => frequency_out0(16),
      Q => \frequency_out_reg[18]_0\(13)
    );
\frequency_out_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => frequency_out0(17),
      Q => \frequency_out_reg[18]_0\(14)
    );
\frequency_out_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => frequency_out0(18),
      Q => \frequency_out_reg[18]_0\(15)
    );
\frequency_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => frequency_out0(3),
      Q => \frequency_out_reg[18]_0\(0)
    );
\frequency_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => frequency_out0(4),
      Q => \frequency_out_reg[18]_0\(1)
    );
\frequency_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => frequency_out0(5),
      Q => \frequency_out_reg[18]_0\(2)
    );
\frequency_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => frequency_out0(6),
      Q => \frequency_out_reg[18]_0\(3)
    );
\frequency_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => frequency_out0(7),
      Q => \frequency_out_reg[18]_0\(4)
    );
\frequency_out_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => frequency_out0(8),
      Q => \frequency_out_reg[18]_0\(5)
    );
\frequency_out_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => frequency_out0(9),
      Q => \frequency_out_reg[18]_0\(6)
    );
frequency_out_tvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => E(0),
      Q => frequency_out_tvalid
    );
\prev_unwrapped_phase_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => Q(0),
      Q => \prev_unwrapped_phase_reg[18]_0\(0)
    );
\prev_unwrapped_phase_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => Q(10),
      Q => \prev_unwrapped_phase_reg[18]_0\(10)
    );
\prev_unwrapped_phase_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => Q(11),
      Q => \prev_unwrapped_phase_reg[18]_0\(11)
    );
\prev_unwrapped_phase_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => Q(12),
      Q => \prev_unwrapped_phase_reg[18]_0\(12)
    );
\prev_unwrapped_phase_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => Q(13),
      Q => \prev_unwrapped_phase_reg[18]_0\(13)
    );
\prev_unwrapped_phase_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => Q(14),
      Q => \prev_unwrapped_phase_reg[18]_0\(14)
    );
\prev_unwrapped_phase_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => Q(15),
      Q => \prev_unwrapped_phase_reg[18]_0\(15)
    );
\prev_unwrapped_phase_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => Q(16),
      Q => \prev_unwrapped_phase_reg[18]_0\(16)
    );
\prev_unwrapped_phase_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => Q(17),
      Q => \prev_unwrapped_phase_reg[18]_0\(17)
    );
\prev_unwrapped_phase_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => Q(18),
      Q => \prev_unwrapped_phase_reg[18]_0\(18)
    );
\prev_unwrapped_phase_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => Q(1),
      Q => \prev_unwrapped_phase_reg[18]_0\(1)
    );
\prev_unwrapped_phase_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => Q(2),
      Q => \prev_unwrapped_phase_reg[18]_0\(2)
    );
\prev_unwrapped_phase_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => Q(3),
      Q => \prev_unwrapped_phase_reg[18]_0\(3)
    );
\prev_unwrapped_phase_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => Q(4),
      Q => \prev_unwrapped_phase_reg[18]_0\(4)
    );
\prev_unwrapped_phase_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => Q(5),
      Q => \prev_unwrapped_phase_reg[18]_0\(5)
    );
\prev_unwrapped_phase_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => Q(6),
      Q => \prev_unwrapped_phase_reg[18]_0\(6)
    );
\prev_unwrapped_phase_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => Q(7),
      Q => \prev_unwrapped_phase_reg[18]_0\(7)
    );
\prev_unwrapped_phase_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => Q(8),
      Q => \prev_unwrapped_phase_reg[18]_0\(8)
    );
\prev_unwrapped_phase_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \^rst_n_0\,
      D => Q(9),
      Q => \prev_unwrapped_phase_reg[18]_0\(9)
    );
unwrapped_phase_tvalid_i_1: unisim.vcomponents.LUT1
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
entity design_1_FSK_DM_0_0_phase_unwrap is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 18 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \unwrapped_phase_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \unwrapped_phase_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \unwrapped_phase_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \unwrapped_phase_reg[18]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    unwrapped_phase_tvalid_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \prev_phase_reg[0]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \frequency_out_reg[18]\ : in STD_LOGIC_VECTOR ( 18 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_FSK_DM_0_0_phase_unwrap : entity is "phase_unwrap";
end design_1_FSK_DM_0_0_phase_unwrap;

architecture STRUCTURE of design_1_FSK_DM_0_0_phase_unwrap is
  signal \^q\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \next_unwrapped_phase0__4_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__0_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__0_n_1\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__0_n_2\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__0_n_3\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__0_n_4\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__0_n_5\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__0_n_6\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__0_n_7\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__1_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__1_n_1\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__1_n_2\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__1_n_3\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__1_n_4\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__1_n_5\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__1_n_6\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__1_n_7\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__2_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__2_n_1\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__2_n_2\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__2_n_3\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__2_n_4\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__2_n_5\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__2_n_6\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__2_n_7\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__3_n_2\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__3_n_3\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__3_n_5\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__3_n_6\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry__3_n_7\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry_i_1_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry_i_2_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry_i_3_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry_i_4_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry_i_5_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry_n_1\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry_n_2\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry_n_3\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry_n_4\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry_n_5\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry_n_6\ : STD_LOGIC;
  signal \next_unwrapped_phase0__4_carry_n_7\ : STD_LOGIC;
  signal next_unwrapped_phase1 : STD_LOGIC;
  signal \next_unwrapped_phase1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase1_carry__0_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase1_carry__0_n_1\ : STD_LOGIC;
  signal \next_unwrapped_phase1_carry__0_n_2\ : STD_LOGIC;
  signal \next_unwrapped_phase1_carry__0_n_3\ : STD_LOGIC;
  signal \next_unwrapped_phase1_carry__1_i_1_n_3\ : STD_LOGIC;
  signal next_unwrapped_phase1_carry_i_1_n_0 : STD_LOGIC;
  signal next_unwrapped_phase1_carry_i_2_n_0 : STD_LOGIC;
  signal next_unwrapped_phase1_carry_i_3_n_0 : STD_LOGIC;
  signal next_unwrapped_phase1_carry_i_4_n_0 : STD_LOGIC;
  signal next_unwrapped_phase1_carry_i_5_n_0 : STD_LOGIC;
  signal next_unwrapped_phase1_carry_i_6_n_0 : STD_LOGIC;
  signal next_unwrapped_phase1_carry_i_7_n_0 : STD_LOGIC;
  signal next_unwrapped_phase1_carry_i_8_n_0 : STD_LOGIC;
  signal next_unwrapped_phase1_carry_n_0 : STD_LOGIC;
  signal next_unwrapped_phase1_carry_n_1 : STD_LOGIC;
  signal next_unwrapped_phase1_carry_n_2 : STD_LOGIC;
  signal next_unwrapped_phase1_carry_n_3 : STD_LOGIC;
  signal next_unwrapped_phase2 : STD_LOGIC;
  signal \next_unwrapped_phase2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \next_unwrapped_phase2_carry__0_n_1\ : STD_LOGIC;
  signal \next_unwrapped_phase2_carry__0_n_2\ : STD_LOGIC;
  signal \next_unwrapped_phase2_carry__0_n_3\ : STD_LOGIC;
  signal next_unwrapped_phase2_carry_i_1_n_0 : STD_LOGIC;
  signal next_unwrapped_phase2_carry_i_2_n_0 : STD_LOGIC;
  signal next_unwrapped_phase2_carry_i_3_n_0 : STD_LOGIC;
  signal next_unwrapped_phase2_carry_i_4_n_0 : STD_LOGIC;
  signal next_unwrapped_phase2_carry_i_5_n_0 : STD_LOGIC;
  signal next_unwrapped_phase2_carry_i_6_n_0 : STD_LOGIC;
  signal next_unwrapped_phase2_carry_i_7_n_0 : STD_LOGIC;
  signal next_unwrapped_phase2_carry_i_8_n_0 : STD_LOGIC;
  signal next_unwrapped_phase2_carry_n_0 : STD_LOGIC;
  signal next_unwrapped_phase2_carry_n_1 : STD_LOGIC;
  signal next_unwrapped_phase2_carry_n_2 : STD_LOGIC;
  signal next_unwrapped_phase2_carry_n_3 : STD_LOGIC;
  signal \phase_diff_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \phase_diff_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \phase_diff_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \phase_diff_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \phase_diff_carry__0_n_0\ : STD_LOGIC;
  signal \phase_diff_carry__0_n_1\ : STD_LOGIC;
  signal \phase_diff_carry__0_n_2\ : STD_LOGIC;
  signal \phase_diff_carry__0_n_3\ : STD_LOGIC;
  signal \phase_diff_carry__0_n_4\ : STD_LOGIC;
  signal \phase_diff_carry__0_n_5\ : STD_LOGIC;
  signal \phase_diff_carry__0_n_6\ : STD_LOGIC;
  signal \phase_diff_carry__0_n_7\ : STD_LOGIC;
  signal \phase_diff_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \phase_diff_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \phase_diff_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \phase_diff_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \phase_diff_carry__1_n_0\ : STD_LOGIC;
  signal \phase_diff_carry__1_n_1\ : STD_LOGIC;
  signal \phase_diff_carry__1_n_2\ : STD_LOGIC;
  signal \phase_diff_carry__1_n_3\ : STD_LOGIC;
  signal \phase_diff_carry__1_n_4\ : STD_LOGIC;
  signal \phase_diff_carry__1_n_5\ : STD_LOGIC;
  signal \phase_diff_carry__1_n_6\ : STD_LOGIC;
  signal \phase_diff_carry__1_n_7\ : STD_LOGIC;
  signal \phase_diff_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \phase_diff_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \phase_diff_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \phase_diff_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \phase_diff_carry__2_n_0\ : STD_LOGIC;
  signal \phase_diff_carry__2_n_1\ : STD_LOGIC;
  signal \phase_diff_carry__2_n_2\ : STD_LOGIC;
  signal \phase_diff_carry__2_n_3\ : STD_LOGIC;
  signal \phase_diff_carry__2_n_4\ : STD_LOGIC;
  signal \phase_diff_carry__2_n_5\ : STD_LOGIC;
  signal \phase_diff_carry__2_n_6\ : STD_LOGIC;
  signal \phase_diff_carry__2_n_7\ : STD_LOGIC;
  signal phase_diff_carry_i_1_n_0 : STD_LOGIC;
  signal phase_diff_carry_i_2_n_0 : STD_LOGIC;
  signal phase_diff_carry_i_3_n_0 : STD_LOGIC;
  signal phase_diff_carry_i_4_n_0 : STD_LOGIC;
  signal phase_diff_carry_n_0 : STD_LOGIC;
  signal phase_diff_carry_n_1 : STD_LOGIC;
  signal phase_diff_carry_n_2 : STD_LOGIC;
  signal phase_diff_carry_n_3 : STD_LOGIC;
  signal phase_diff_carry_n_4 : STD_LOGIC;
  signal phase_diff_carry_n_5 : STD_LOGIC;
  signal phase_diff_carry_n_6 : STD_LOGIC;
  signal phase_diff_carry_n_7 : STD_LOGIC;
  signal phase_diff_scaled0 : STD_LOGIC;
  signal prev_phase : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_next_unwrapped_phase0__4_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_next_unwrapped_phase0__4_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_next_unwrapped_phase1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_next_unwrapped_phase1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_next_unwrapped_phase1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_next_unwrapped_phase1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_next_unwrapped_phase1_carry__1_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_next_unwrapped_phase1_carry__1_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_next_unwrapped_phase2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_next_unwrapped_phase2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HLUTNM : string;
  attribute HLUTNM of \next_unwrapped_phase0__4_carry__0_i_2\ : label is "lutpair0";
  attribute HLUTNM of \next_unwrapped_phase0__4_carry__0_i_7\ : label is "lutpair0";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \next_unwrapped_phase0__4_carry__1_i_10\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \next_unwrapped_phase0__4_carry__1_i_9\ : label is "soft_lutpair0";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of next_unwrapped_phase1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \next_unwrapped_phase1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \next_unwrapped_phase1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of next_unwrapped_phase2_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \next_unwrapped_phase2_carry__0\ : label is 11;
begin
  Q(18 downto 0) <= \^q\(18 downto 0);
\frequency_out0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \frequency_out_reg[18]\(7),
      O => \unwrapped_phase_reg[7]_0\(3)
    );
\frequency_out0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \frequency_out_reg[18]\(6),
      O => \unwrapped_phase_reg[7]_0\(2)
    );
\frequency_out0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \frequency_out_reg[18]\(5),
      O => \unwrapped_phase_reg[7]_0\(1)
    );
\frequency_out0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \frequency_out_reg[18]\(4),
      O => \unwrapped_phase_reg[7]_0\(0)
    );
\frequency_out0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(11),
      I1 => \frequency_out_reg[18]\(11),
      O => \unwrapped_phase_reg[11]_0\(3)
    );
\frequency_out0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(10),
      I1 => \frequency_out_reg[18]\(10),
      O => \unwrapped_phase_reg[11]_0\(2)
    );
\frequency_out0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(9),
      I1 => \frequency_out_reg[18]\(9),
      O => \unwrapped_phase_reg[11]_0\(1)
    );
\frequency_out0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \frequency_out_reg[18]\(8),
      O => \unwrapped_phase_reg[11]_0\(0)
    );
\frequency_out0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(15),
      I1 => \frequency_out_reg[18]\(15),
      O => \unwrapped_phase_reg[15]_0\(3)
    );
\frequency_out0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(14),
      I1 => \frequency_out_reg[18]\(14),
      O => \unwrapped_phase_reg[15]_0\(2)
    );
\frequency_out0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(13),
      I1 => \frequency_out_reg[18]\(13),
      O => \unwrapped_phase_reg[15]_0\(1)
    );
\frequency_out0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(12),
      I1 => \frequency_out_reg[18]\(12),
      O => \unwrapped_phase_reg[15]_0\(0)
    );
\frequency_out0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(18),
      I1 => \frequency_out_reg[18]\(18),
      O => \unwrapped_phase_reg[18]_0\(2)
    );
\frequency_out0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(17),
      I1 => \frequency_out_reg[18]\(17),
      O => \unwrapped_phase_reg[18]_0\(1)
    );
\frequency_out0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(16),
      I1 => \frequency_out_reg[18]\(16),
      O => \unwrapped_phase_reg[18]_0\(0)
    );
frequency_out0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \frequency_out_reg[18]\(3),
      O => S(3)
    );
frequency_out0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \frequency_out_reg[18]\(2),
      O => S(2)
    );
frequency_out0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \frequency_out_reg[18]\(1),
      O => S(1)
    );
frequency_out0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \frequency_out_reg[18]\(0),
      O => S(0)
    );
\next_unwrapped_phase0__4_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \next_unwrapped_phase0__4_carry_n_0\,
      CO(2) => \next_unwrapped_phase0__4_carry_n_1\,
      CO(1) => \next_unwrapped_phase0__4_carry_n_2\,
      CO(0) => \next_unwrapped_phase0__4_carry_n_3\,
      CYINIT => '0',
      DI(3) => \next_unwrapped_phase0__4_carry_i_1_n_0\,
      DI(2 downto 0) => \^q\(2 downto 0),
      O(3) => \next_unwrapped_phase0__4_carry_n_4\,
      O(2) => \next_unwrapped_phase0__4_carry_n_5\,
      O(1) => \next_unwrapped_phase0__4_carry_n_6\,
      O(0) => \next_unwrapped_phase0__4_carry_n_7\,
      S(3) => \next_unwrapped_phase0__4_carry_i_2_n_0\,
      S(2) => \next_unwrapped_phase0__4_carry_i_3_n_0\,
      S(1) => \next_unwrapped_phase0__4_carry_i_4_n_0\,
      S(0) => \next_unwrapped_phase0__4_carry_i_5_n_0\
    );
\next_unwrapped_phase0__4_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_unwrapped_phase0__4_carry_n_0\,
      CO(3) => \next_unwrapped_phase0__4_carry__0_n_0\,
      CO(2) => \next_unwrapped_phase0__4_carry__0_n_1\,
      CO(1) => \next_unwrapped_phase0__4_carry__0_n_2\,
      CO(0) => \next_unwrapped_phase0__4_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \next_unwrapped_phase0__4_carry__0_i_1_n_0\,
      DI(2) => \next_unwrapped_phase0__4_carry__0_i_2_n_0\,
      DI(1) => \next_unwrapped_phase0__4_carry__0_i_3_n_0\,
      DI(0) => \next_unwrapped_phase0__4_carry__0_i_4_n_0\,
      O(3) => \next_unwrapped_phase0__4_carry__0_n_4\,
      O(2) => \next_unwrapped_phase0__4_carry__0_n_5\,
      O(1) => \next_unwrapped_phase0__4_carry__0_n_6\,
      O(0) => \next_unwrapped_phase0__4_carry__0_n_7\,
      S(3) => \next_unwrapped_phase0__4_carry__0_i_5_n_0\,
      S(2) => \next_unwrapped_phase0__4_carry__0_i_6_n_0\,
      S(1) => \next_unwrapped_phase0__4_carry__0_i_7_n_0\,
      S(0) => \next_unwrapped_phase0__4_carry__0_i_8_n_0\
    );
\next_unwrapped_phase0__4_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => next_unwrapped_phase1,
      I1 => \phase_diff_carry__0_n_7\,
      I2 => \^q\(7),
      O => \next_unwrapped_phase0__4_carry__0_i_1_n_0\
    );
\next_unwrapped_phase0__4_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8E88"
    )
        port map (
      I0 => \^q\(5),
      I1 => phase_diff_carry_n_5,
      I2 => next_unwrapped_phase1,
      I3 => next_unwrapped_phase2,
      O => \next_unwrapped_phase0__4_carry__0_i_2_n_0\
    );
\next_unwrapped_phase0__4_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8E88"
    )
        port map (
      I0 => \^q\(4),
      I1 => phase_diff_carry_n_6,
      I2 => next_unwrapped_phase1,
      I3 => next_unwrapped_phase2,
      O => \next_unwrapped_phase0__4_carry__0_i_3_n_0\
    );
\next_unwrapped_phase0__4_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => next_unwrapped_phase1,
      I1 => next_unwrapped_phase2,
      I2 => \^q\(4),
      I3 => phase_diff_carry_n_6,
      O => \next_unwrapped_phase0__4_carry__0_i_4_n_0\
    );
\next_unwrapped_phase0__4_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6699999699969966"
    )
        port map (
      I0 => \phase_diff_carry__0_n_7\,
      I1 => \^q\(7),
      I2 => next_unwrapped_phase2,
      I3 => next_unwrapped_phase1,
      I4 => phase_diff_carry_n_4,
      I5 => \^q\(6),
      O => \next_unwrapped_phase0__4_carry__0_i_5_n_0\
    );
\next_unwrapped_phase0__4_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96966996"
    )
        port map (
      I0 => \next_unwrapped_phase0__4_carry__0_i_2_n_0\,
      I1 => phase_diff_carry_n_4,
      I2 => \^q\(6),
      I3 => next_unwrapped_phase2,
      I4 => next_unwrapped_phase1,
      O => \next_unwrapped_phase0__4_carry__0_i_6_n_0\
    );
\next_unwrapped_phase0__4_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96996966"
    )
        port map (
      I0 => \^q\(5),
      I1 => phase_diff_carry_n_5,
      I2 => next_unwrapped_phase1,
      I3 => next_unwrapped_phase2,
      I4 => \next_unwrapped_phase0__4_carry__0_i_3_n_0\,
      O => \next_unwrapped_phase0__4_carry__0_i_7_n_0\
    );
\next_unwrapped_phase0__4_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9969669666966696"
    )
        port map (
      I0 => phase_diff_carry_n_6,
      I1 => \^q\(4),
      I2 => next_unwrapped_phase2,
      I3 => next_unwrapped_phase1,
      I4 => phase_diff_carry_n_7,
      I5 => \^q\(3),
      O => \next_unwrapped_phase0__4_carry__0_i_8_n_0\
    );
\next_unwrapped_phase0__4_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_unwrapped_phase0__4_carry__0_n_0\,
      CO(3) => \next_unwrapped_phase0__4_carry__1_n_0\,
      CO(2) => \next_unwrapped_phase0__4_carry__1_n_1\,
      CO(1) => \next_unwrapped_phase0__4_carry__1_n_2\,
      CO(0) => \next_unwrapped_phase0__4_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \next_unwrapped_phase0__4_carry__1_i_1_n_0\,
      DI(2) => \next_unwrapped_phase0__4_carry__1_i_2_n_0\,
      DI(1) => \next_unwrapped_phase0__4_carry__1_i_3_n_0\,
      DI(0) => \next_unwrapped_phase0__4_carry__1_i_4_n_0\,
      O(3) => \next_unwrapped_phase0__4_carry__1_n_4\,
      O(2) => \next_unwrapped_phase0__4_carry__1_n_5\,
      O(1) => \next_unwrapped_phase0__4_carry__1_n_6\,
      O(0) => \next_unwrapped_phase0__4_carry__1_n_7\,
      S(3) => \next_unwrapped_phase0__4_carry__1_i_5_n_0\,
      S(2) => \next_unwrapped_phase0__4_carry__1_i_6_n_0\,
      S(1) => \next_unwrapped_phase0__4_carry__1_i_7_n_0\,
      S(0) => \next_unwrapped_phase0__4_carry__1_i_8_n_0\
    );
\next_unwrapped_phase0__4_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE1111E111EEEE1"
    )
        port map (
      I0 => \^q\(10),
      I1 => \phase_diff_carry__0_n_4\,
      I2 => next_unwrapped_phase2,
      I3 => next_unwrapped_phase1,
      I4 => \^q\(11),
      I5 => \phase_diff_carry__1_n_7\,
      O => \next_unwrapped_phase0__4_carry__1_i_1_n_0\
    );
\next_unwrapped_phase0__4_carry__1_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => next_unwrapped_phase2,
      I1 => next_unwrapped_phase1,
      O => \next_unwrapped_phase0__4_carry__1_i_10_n_0\
    );
\next_unwrapped_phase0__4_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \^q\(8),
      I1 => \phase_diff_carry__0_n_6\,
      I2 => \^q\(9),
      I3 => \phase_diff_carry__0_n_5\,
      O => \next_unwrapped_phase0__4_carry__1_i_2_n_0\
    );
\next_unwrapped_phase0__4_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \^q\(7),
      I1 => \phase_diff_carry__0_n_7\,
      I2 => \^q\(8),
      I3 => \phase_diff_carry__0_n_6\,
      O => \next_unwrapped_phase0__4_carry__1_i_3_n_0\
    );
\next_unwrapped_phase0__4_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \^q\(7),
      I1 => \phase_diff_carry__0_n_7\,
      I2 => next_unwrapped_phase1,
      O => \next_unwrapped_phase0__4_carry__1_i_4_n_0\
    );
\next_unwrapped_phase0__4_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966696666669"
    )
        port map (
      I0 => \next_unwrapped_phase0__4_carry__1_i_9_n_0\,
      I1 => \next_unwrapped_phase0__4_carry__1_i_10_n_0\,
      I2 => \phase_diff_carry__0_n_4\,
      I3 => \^q\(10),
      I4 => \phase_diff_carry__0_n_5\,
      I5 => \^q\(9),
      O => \next_unwrapped_phase0__4_carry__1_i_5_n_0\
    );
\next_unwrapped_phase0__4_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => \phase_diff_carry__0_n_6\,
      I1 => \^q\(8),
      I2 => \phase_diff_carry__0_n_4\,
      I3 => \^q\(10),
      I4 => \phase_diff_carry__0_n_5\,
      I5 => \^q\(9),
      O => \next_unwrapped_phase0__4_carry__1_i_6_n_0\
    );
\next_unwrapped_phase0__4_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => \phase_diff_carry__0_n_7\,
      I1 => \^q\(7),
      I2 => \phase_diff_carry__0_n_5\,
      I3 => \^q\(9),
      I4 => \phase_diff_carry__0_n_6\,
      I5 => \^q\(8),
      O => \next_unwrapped_phase0__4_carry__1_i_7_n_0\
    );
\next_unwrapped_phase0__4_carry__1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"693C3C96"
    )
        port map (
      I0 => next_unwrapped_phase1,
      I1 => \phase_diff_carry__0_n_6\,
      I2 => \^q\(8),
      I3 => \phase_diff_carry__0_n_7\,
      I4 => \^q\(7),
      O => \next_unwrapped_phase0__4_carry__1_i_8_n_0\
    );
\next_unwrapped_phase0__4_carry__1_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => next_unwrapped_phase1,
      I1 => \^q\(11),
      I2 => \phase_diff_carry__1_n_7\,
      O => \next_unwrapped_phase0__4_carry__1_i_9_n_0\
    );
\next_unwrapped_phase0__4_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_unwrapped_phase0__4_carry__1_n_0\,
      CO(3) => \next_unwrapped_phase0__4_carry__2_n_0\,
      CO(2) => \next_unwrapped_phase0__4_carry__2_n_1\,
      CO(1) => \next_unwrapped_phase0__4_carry__2_n_2\,
      CO(0) => \next_unwrapped_phase0__4_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \next_unwrapped_phase0__4_carry__2_i_1_n_0\,
      DI(2) => \next_unwrapped_phase0__4_carry__2_i_2_n_0\,
      DI(1) => \next_unwrapped_phase0__4_carry__2_i_3_n_0\,
      DI(0) => \next_unwrapped_phase0__4_carry__2_i_4_n_0\,
      O(3) => \next_unwrapped_phase0__4_carry__2_n_4\,
      O(2) => \next_unwrapped_phase0__4_carry__2_n_5\,
      O(1) => \next_unwrapped_phase0__4_carry__2_n_6\,
      O(0) => \next_unwrapped_phase0__4_carry__2_n_7\,
      S(3) => \next_unwrapped_phase0__4_carry__2_i_5_n_0\,
      S(2) => \next_unwrapped_phase0__4_carry__2_i_6_n_0\,
      S(1) => \next_unwrapped_phase0__4_carry__2_i_7_n_0\,
      S(0) => \next_unwrapped_phase0__4_carry__2_i_8_n_0\
    );
\next_unwrapped_phase0__4_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F696F696F690900"
    )
        port map (
      I0 => \phase_diff_carry__1_n_4\,
      I1 => \^q\(14),
      I2 => next_unwrapped_phase1,
      I3 => next_unwrapped_phase2,
      I4 => \^q\(13),
      I5 => \phase_diff_carry__1_n_5\,
      O => \next_unwrapped_phase0__4_carry__2_i_1_n_0\
    );
\next_unwrapped_phase0__4_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE1111E111EEEE1"
    )
        port map (
      I0 => \^q\(13),
      I1 => \phase_diff_carry__1_n_5\,
      I2 => next_unwrapped_phase2,
      I3 => next_unwrapped_phase1,
      I4 => \^q\(14),
      I5 => \phase_diff_carry__1_n_4\,
      O => \next_unwrapped_phase0__4_carry__2_i_2_n_0\
    );
\next_unwrapped_phase0__4_carry__2_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D40000D4"
    )
        port map (
      I0 => next_unwrapped_phase1,
      I1 => \phase_diff_carry__1_n_7\,
      I2 => \^q\(11),
      I3 => \^q\(12),
      I4 => \phase_diff_carry__1_n_6\,
      O => \next_unwrapped_phase0__4_carry__2_i_3_n_0\
    );
\next_unwrapped_phase0__4_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F696F696F690900"
    )
        port map (
      I0 => \phase_diff_carry__1_n_7\,
      I1 => \^q\(11),
      I2 => next_unwrapped_phase1,
      I3 => next_unwrapped_phase2,
      I4 => \^q\(10),
      I5 => \phase_diff_carry__0_n_4\,
      O => \next_unwrapped_phase0__4_carry__2_i_4_n_0\
    );
\next_unwrapped_phase0__4_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669696996969669"
    )
        port map (
      I0 => \next_unwrapped_phase0__4_carry__2_i_1_n_0\,
      I1 => \phase_diff_carry__2_n_7\,
      I2 => \^q\(15),
      I3 => \^q\(14),
      I4 => \phase_diff_carry__1_n_4\,
      I5 => next_unwrapped_phase1,
      O => \next_unwrapped_phase0__4_carry__2_i_5_n_0\
    );
\next_unwrapped_phase0__4_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966696666669"
    )
        port map (
      I0 => \next_unwrapped_phase0__4_carry__2_i_9_n_0\,
      I1 => \next_unwrapped_phase0__4_carry__1_i_10_n_0\,
      I2 => \phase_diff_carry__1_n_5\,
      I3 => \^q\(13),
      I4 => \phase_diff_carry__1_n_6\,
      I5 => \^q\(12),
      O => \next_unwrapped_phase0__4_carry__2_i_6_n_0\
    );
\next_unwrapped_phase0__4_carry__2_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96969669"
    )
        port map (
      I0 => \next_unwrapped_phase0__4_carry__2_i_3_n_0\,
      I1 => \phase_diff_carry__1_n_5\,
      I2 => \^q\(13),
      I3 => \phase_diff_carry__1_n_6\,
      I4 => \^q\(12),
      O => \next_unwrapped_phase0__4_carry__2_i_7_n_0\
    );
\next_unwrapped_phase0__4_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669696996969669"
    )
        port map (
      I0 => \next_unwrapped_phase0__4_carry__2_i_4_n_0\,
      I1 => \phase_diff_carry__1_n_6\,
      I2 => \^q\(12),
      I3 => \^q\(11),
      I4 => \phase_diff_carry__1_n_7\,
      I5 => next_unwrapped_phase1,
      O => \next_unwrapped_phase0__4_carry__2_i_8_n_0\
    );
\next_unwrapped_phase0__4_carry__2_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => next_unwrapped_phase1,
      I1 => \^q\(14),
      I2 => \phase_diff_carry__1_n_4\,
      O => \next_unwrapped_phase0__4_carry__2_i_9_n_0\
    );
\next_unwrapped_phase0__4_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_unwrapped_phase0__4_carry__2_n_0\,
      CO(3 downto 2) => \NLW_next_unwrapped_phase0__4_carry__3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \next_unwrapped_phase0__4_carry__3_n_2\,
      CO(0) => \next_unwrapped_phase0__4_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \next_unwrapped_phase0__4_carry__3_i_1_n_0\,
      DI(0) => \next_unwrapped_phase0__4_carry__3_i_2_n_0\,
      O(3) => \NLW_next_unwrapped_phase0__4_carry__3_O_UNCONNECTED\(3),
      O(2) => \next_unwrapped_phase0__4_carry__3_n_5\,
      O(1) => \next_unwrapped_phase0__4_carry__3_n_6\,
      O(0) => \next_unwrapped_phase0__4_carry__3_n_7\,
      S(3) => '0',
      S(2) => \next_unwrapped_phase0__4_carry__3_i_3_n_0\,
      S(1) => \next_unwrapped_phase0__4_carry__3_i_4_n_0\,
      S(0) => \next_unwrapped_phase0__4_carry__3_i_5_n_0\
    );
\next_unwrapped_phase0__4_carry__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE1111E111EEEE1"
    )
        port map (
      I0 => \^q\(16),
      I1 => \phase_diff_carry__2_n_6\,
      I2 => next_unwrapped_phase1,
      I3 => next_unwrapped_phase2,
      I4 => \phase_diff_carry__2_n_5\,
      I5 => \^q\(17),
      O => \next_unwrapped_phase0__4_carry__3_i_1_n_0\
    );
\next_unwrapped_phase0__4_carry__3_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D40000D4"
    )
        port map (
      I0 => next_unwrapped_phase1,
      I1 => \phase_diff_carry__1_n_4\,
      I2 => \^q\(14),
      I3 => \^q\(15),
      I4 => \phase_diff_carry__2_n_7\,
      O => \next_unwrapped_phase0__4_carry__3_i_2_n_0\
    );
\next_unwrapped_phase0__4_carry__3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111F0001EEE0FFFE"
    )
        port map (
      I0 => \phase_diff_carry__2_n_6\,
      I1 => \^q\(16),
      I2 => next_unwrapped_phase1,
      I3 => next_unwrapped_phase2,
      I4 => \next_unwrapped_phase0__4_carry__3_i_6_n_0\,
      I5 => \next_unwrapped_phase0__4_carry__3_i_7_n_0\,
      O => \next_unwrapped_phase0__4_carry__3_i_3_n_0\
    );
\next_unwrapped_phase0__4_carry__3_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"696969AA"
    )
        port map (
      I0 => \next_unwrapped_phase0__4_carry__3_i_1_n_0\,
      I1 => \phase_diff_carry__2_n_6\,
      I2 => \^q\(16),
      I3 => \phase_diff_carry__2_n_7\,
      I4 => \^q\(15),
      O => \next_unwrapped_phase0__4_carry__3_i_4_n_0\
    );
\next_unwrapped_phase0__4_carry__3_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96969669"
    )
        port map (
      I0 => \next_unwrapped_phase0__4_carry__3_i_2_n_0\,
      I1 => \phase_diff_carry__2_n_6\,
      I2 => \^q\(16),
      I3 => \phase_diff_carry__2_n_7\,
      I4 => \^q\(15),
      O => \next_unwrapped_phase0__4_carry__3_i_5_n_0\
    );
\next_unwrapped_phase0__4_carry__3_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_diff_carry__2_n_5\,
      I1 => \^q\(17),
      O => \next_unwrapped_phase0__4_carry__3_i_6_n_0\
    );
\next_unwrapped_phase0__4_carry__3_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4BB44BB44BB4B44B"
    )
        port map (
      I0 => next_unwrapped_phase1,
      I1 => next_unwrapped_phase2,
      I2 => \phase_diff_carry__2_n_4\,
      I3 => \^q\(18),
      I4 => \^q\(17),
      I5 => \phase_diff_carry__2_n_5\,
      O => \next_unwrapped_phase0__4_carry__3_i_7_n_0\
    );
\next_unwrapped_phase0__4_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_diff_carry_n_7,
      I1 => \^q\(3),
      O => \next_unwrapped_phase0__4_carry_i_1_n_0\
    );
\next_unwrapped_phase0__4_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6966"
    )
        port map (
      I0 => \^q\(3),
      I1 => phase_diff_carry_n_7,
      I2 => next_unwrapped_phase1,
      I3 => next_unwrapped_phase2,
      O => \next_unwrapped_phase0__4_carry_i_2_n_0\
    );
\next_unwrapped_phase0__4_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => next_unwrapped_phase1,
      I1 => next_unwrapped_phase2,
      I2 => \^q\(2),
      O => \next_unwrapped_phase0__4_carry_i_3_n_0\
    );
\next_unwrapped_phase0__4_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => next_unwrapped_phase1,
      I1 => next_unwrapped_phase2,
      I2 => \^q\(1),
      O => \next_unwrapped_phase0__4_carry_i_4_n_0\
    );
\next_unwrapped_phase0__4_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => next_unwrapped_phase1,
      I1 => next_unwrapped_phase2,
      I2 => \^q\(0),
      O => \next_unwrapped_phase0__4_carry_i_5_n_0\
    );
next_unwrapped_phase1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => next_unwrapped_phase1_carry_n_0,
      CO(2) => next_unwrapped_phase1_carry_n_1,
      CO(1) => next_unwrapped_phase1_carry_n_2,
      CO(0) => next_unwrapped_phase1_carry_n_3,
      CYINIT => '0',
      DI(3) => next_unwrapped_phase1_carry_i_1_n_0,
      DI(2) => next_unwrapped_phase1_carry_i_2_n_0,
      DI(1) => next_unwrapped_phase1_carry_i_3_n_0,
      DI(0) => next_unwrapped_phase1_carry_i_4_n_0,
      O(3 downto 0) => NLW_next_unwrapped_phase1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => next_unwrapped_phase1_carry_i_5_n_0,
      S(2) => next_unwrapped_phase1_carry_i_6_n_0,
      S(1) => next_unwrapped_phase1_carry_i_7_n_0,
      S(0) => next_unwrapped_phase1_carry_i_8_n_0
    );
\next_unwrapped_phase1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => next_unwrapped_phase1_carry_n_0,
      CO(3) => \next_unwrapped_phase1_carry__0_n_0\,
      CO(2) => \next_unwrapped_phase1_carry__0_n_1\,
      CO(1) => \next_unwrapped_phase1_carry__0_n_2\,
      CO(0) => \next_unwrapped_phase1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \phase_diff_carry__2_n_4\,
      DI(2) => \next_unwrapped_phase1_carry__0_i_1_n_0\,
      DI(1) => \phase_diff_carry__1_n_4\,
      DI(0) => \next_unwrapped_phase1_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_next_unwrapped_phase1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \next_unwrapped_phase1_carry__0_i_3_n_0\,
      S(2) => \next_unwrapped_phase1_carry__0_i_4_n_0\,
      S(1) => \next_unwrapped_phase1_carry__0_i_5_n_0\,
      S(0) => \next_unwrapped_phase1_carry__0_i_6_n_0\
    );
\next_unwrapped_phase1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \phase_diff_carry__2_n_7\,
      I1 => \phase_diff_carry__2_n_6\,
      O => \next_unwrapped_phase1_carry__0_i_1_n_0\
    );
\next_unwrapped_phase1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \phase_diff_carry__1_n_7\,
      I1 => \phase_diff_carry__1_n_6\,
      O => \next_unwrapped_phase1_carry__0_i_2_n_0\
    );
\next_unwrapped_phase1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \phase_diff_carry__2_n_5\,
      I1 => \phase_diff_carry__2_n_4\,
      O => \next_unwrapped_phase1_carry__0_i_3_n_0\
    );
\next_unwrapped_phase1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \phase_diff_carry__2_n_6\,
      I1 => \phase_diff_carry__2_n_7\,
      O => \next_unwrapped_phase1_carry__0_i_4_n_0\
    );
\next_unwrapped_phase1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \phase_diff_carry__1_n_5\,
      I1 => \phase_diff_carry__1_n_4\,
      O => \next_unwrapped_phase1_carry__0_i_5_n_0\
    );
\next_unwrapped_phase1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \phase_diff_carry__1_n_7\,
      I1 => \phase_diff_carry__1_n_6\,
      O => \next_unwrapped_phase1_carry__0_i_6_n_0\
    );
\next_unwrapped_phase1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_unwrapped_phase1_carry__0_n_0\,
      CO(3 downto 1) => \NLW_next_unwrapped_phase1_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => next_unwrapped_phase1,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_next_unwrapped_phase1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \next_unwrapped_phase1_carry__1_i_1_n_3\
    );
\next_unwrapped_phase1_carry__1_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_diff_carry__2_n_0\,
      CO(3 downto 1) => \NLW_next_unwrapped_phase1_carry__1_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \next_unwrapped_phase1_carry__1_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_next_unwrapped_phase1_carry__1_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
next_unwrapped_phase1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \phase_diff_carry__0_n_5\,
      I1 => \phase_diff_carry__0_n_4\,
      O => next_unwrapped_phase1_carry_i_1_n_0
    );
next_unwrapped_phase1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \phase_diff_carry__0_n_7\,
      I1 => \phase_diff_carry__0_n_6\,
      O => next_unwrapped_phase1_carry_i_2_n_0
    );
next_unwrapped_phase1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_diff_carry_n_5,
      I1 => phase_diff_carry_n_4,
      O => next_unwrapped_phase1_carry_i_3_n_0
    );
next_unwrapped_phase1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phase_diff_carry_n_7,
      I1 => phase_diff_carry_n_6,
      O => next_unwrapped_phase1_carry_i_4_n_0
    );
next_unwrapped_phase1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \phase_diff_carry__0_n_4\,
      I1 => \phase_diff_carry__0_n_5\,
      O => next_unwrapped_phase1_carry_i_5_n_0
    );
next_unwrapped_phase1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \phase_diff_carry__0_n_7\,
      I1 => \phase_diff_carry__0_n_6\,
      O => next_unwrapped_phase1_carry_i_6_n_0
    );
next_unwrapped_phase1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => phase_diff_carry_n_4,
      I1 => phase_diff_carry_n_5,
      O => next_unwrapped_phase1_carry_i_7_n_0
    );
next_unwrapped_phase1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_diff_carry_n_7,
      I1 => phase_diff_carry_n_6,
      O => next_unwrapped_phase1_carry_i_8_n_0
    );
next_unwrapped_phase2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => next_unwrapped_phase2_carry_n_0,
      CO(2) => next_unwrapped_phase2_carry_n_1,
      CO(1) => next_unwrapped_phase2_carry_n_2,
      CO(0) => next_unwrapped_phase2_carry_n_3,
      CYINIT => '0',
      DI(3) => next_unwrapped_phase2_carry_i_1_n_0,
      DI(2) => next_unwrapped_phase2_carry_i_2_n_0,
      DI(1) => next_unwrapped_phase2_carry_i_3_n_0,
      DI(0) => next_unwrapped_phase2_carry_i_4_n_0,
      O(3 downto 0) => NLW_next_unwrapped_phase2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => next_unwrapped_phase2_carry_i_5_n_0,
      S(2) => next_unwrapped_phase2_carry_i_6_n_0,
      S(1) => next_unwrapped_phase2_carry_i_7_n_0,
      S(0) => next_unwrapped_phase2_carry_i_8_n_0
    );
\next_unwrapped_phase2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => next_unwrapped_phase2_carry_n_0,
      CO(3) => next_unwrapped_phase2,
      CO(2) => \next_unwrapped_phase2_carry__0_n_1\,
      CO(1) => \next_unwrapped_phase2_carry__0_n_2\,
      CO(0) => \next_unwrapped_phase2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \next_unwrapped_phase2_carry__0_i_1_n_0\,
      DI(1) => \next_unwrapped_phase2_carry__0_i_2_n_0\,
      DI(0) => \next_unwrapped_phase2_carry__0_i_3_n_0\,
      O(3 downto 0) => \NLW_next_unwrapped_phase2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => phase_diff_scaled0,
      S(2) => \next_unwrapped_phase2_carry__0_i_5_n_0\,
      S(1) => \next_unwrapped_phase2_carry__0_i_6_n_0\,
      S(0) => \next_unwrapped_phase2_carry__0_i_7_n_0\
    );
\next_unwrapped_phase2_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \phase_diff_carry__2_n_4\,
      O => \next_unwrapped_phase2_carry__0_i_1_n_0\
    );
\next_unwrapped_phase2_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \phase_diff_carry__2_n_7\,
      I1 => \phase_diff_carry__2_n_6\,
      O => \next_unwrapped_phase2_carry__0_i_2_n_0\
    );
\next_unwrapped_phase2_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \phase_diff_carry__1_n_4\,
      O => \next_unwrapped_phase2_carry__0_i_3_n_0\
    );
\next_unwrapped_phase2_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \next_unwrapped_phase1_carry__1_i_1_n_3\,
      O => phase_diff_scaled0
    );
\next_unwrapped_phase2_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \phase_diff_carry__2_n_4\,
      I1 => \phase_diff_carry__2_n_5\,
      O => \next_unwrapped_phase2_carry__0_i_5_n_0\
    );
\next_unwrapped_phase2_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \phase_diff_carry__2_n_7\,
      I1 => \phase_diff_carry__2_n_6\,
      O => \next_unwrapped_phase2_carry__0_i_6_n_0\
    );
\next_unwrapped_phase2_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \phase_diff_carry__1_n_4\,
      I1 => \phase_diff_carry__1_n_5\,
      O => \next_unwrapped_phase2_carry__0_i_7_n_0\
    );
next_unwrapped_phase2_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \phase_diff_carry__1_n_7\,
      I1 => \phase_diff_carry__1_n_6\,
      O => next_unwrapped_phase2_carry_i_1_n_0
    );
next_unwrapped_phase2_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \phase_diff_carry__0_n_5\,
      I1 => \phase_diff_carry__0_n_4\,
      O => next_unwrapped_phase2_carry_i_2_n_0
    );
next_unwrapped_phase2_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \phase_diff_carry__0_n_7\,
      I1 => \phase_diff_carry__0_n_6\,
      O => next_unwrapped_phase2_carry_i_3_n_0
    );
next_unwrapped_phase2_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_diff_carry_n_4,
      O => next_unwrapped_phase2_carry_i_4_n_0
    );
next_unwrapped_phase2_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \phase_diff_carry__1_n_7\,
      I1 => \phase_diff_carry__1_n_6\,
      O => next_unwrapped_phase2_carry_i_5_n_0
    );
next_unwrapped_phase2_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \phase_diff_carry__0_n_5\,
      I1 => \phase_diff_carry__0_n_4\,
      O => next_unwrapped_phase2_carry_i_6_n_0
    );
next_unwrapped_phase2_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \phase_diff_carry__0_n_7\,
      I1 => \phase_diff_carry__0_n_6\,
      O => next_unwrapped_phase2_carry_i_7_n_0
    );
next_unwrapped_phase2_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => phase_diff_carry_n_4,
      I1 => phase_diff_carry_n_5,
      O => next_unwrapped_phase2_carry_i_8_n_0
    );
phase_diff_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => phase_diff_carry_n_0,
      CO(2) => phase_diff_carry_n_1,
      CO(1) => phase_diff_carry_n_2,
      CO(0) => phase_diff_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => D(3 downto 0),
      O(3) => phase_diff_carry_n_4,
      O(2) => phase_diff_carry_n_5,
      O(1) => phase_diff_carry_n_6,
      O(0) => phase_diff_carry_n_7,
      S(3) => phase_diff_carry_i_1_n_0,
      S(2) => phase_diff_carry_i_2_n_0,
      S(1) => phase_diff_carry_i_3_n_0,
      S(0) => phase_diff_carry_i_4_n_0
    );
\phase_diff_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => phase_diff_carry_n_0,
      CO(3) => \phase_diff_carry__0_n_0\,
      CO(2) => \phase_diff_carry__0_n_1\,
      CO(1) => \phase_diff_carry__0_n_2\,
      CO(0) => \phase_diff_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => D(7 downto 4),
      O(3) => \phase_diff_carry__0_n_4\,
      O(2) => \phase_diff_carry__0_n_5\,
      O(1) => \phase_diff_carry__0_n_6\,
      O(0) => \phase_diff_carry__0_n_7\,
      S(3) => \phase_diff_carry__0_i_1_n_0\,
      S(2) => \phase_diff_carry__0_i_2_n_0\,
      S(1) => \phase_diff_carry__0_i_3_n_0\,
      S(0) => \phase_diff_carry__0_i_4_n_0\
    );
\phase_diff_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D(7),
      I1 => prev_phase(7),
      O => \phase_diff_carry__0_i_1_n_0\
    );
\phase_diff_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D(6),
      I1 => prev_phase(6),
      O => \phase_diff_carry__0_i_2_n_0\
    );
\phase_diff_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D(5),
      I1 => prev_phase(5),
      O => \phase_diff_carry__0_i_3_n_0\
    );
\phase_diff_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D(4),
      I1 => prev_phase(4),
      O => \phase_diff_carry__0_i_4_n_0\
    );
\phase_diff_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_diff_carry__0_n_0\,
      CO(3) => \phase_diff_carry__1_n_0\,
      CO(2) => \phase_diff_carry__1_n_1\,
      CO(1) => \phase_diff_carry__1_n_2\,
      CO(0) => \phase_diff_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => D(11 downto 8),
      O(3) => \phase_diff_carry__1_n_4\,
      O(2) => \phase_diff_carry__1_n_5\,
      O(1) => \phase_diff_carry__1_n_6\,
      O(0) => \phase_diff_carry__1_n_7\,
      S(3) => \phase_diff_carry__1_i_1_n_0\,
      S(2) => \phase_diff_carry__1_i_2_n_0\,
      S(1) => \phase_diff_carry__1_i_3_n_0\,
      S(0) => \phase_diff_carry__1_i_4_n_0\
    );
\phase_diff_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D(11),
      I1 => prev_phase(11),
      O => \phase_diff_carry__1_i_1_n_0\
    );
\phase_diff_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D(10),
      I1 => prev_phase(10),
      O => \phase_diff_carry__1_i_2_n_0\
    );
\phase_diff_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D(9),
      I1 => prev_phase(9),
      O => \phase_diff_carry__1_i_3_n_0\
    );
\phase_diff_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D(8),
      I1 => prev_phase(8),
      O => \phase_diff_carry__1_i_4_n_0\
    );
\phase_diff_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_diff_carry__1_n_0\,
      CO(3) => \phase_diff_carry__2_n_0\,
      CO(2) => \phase_diff_carry__2_n_1\,
      CO(1) => \phase_diff_carry__2_n_2\,
      CO(0) => \phase_diff_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => prev_phase(15),
      DI(2 downto 0) => D(14 downto 12),
      O(3) => \phase_diff_carry__2_n_4\,
      O(2) => \phase_diff_carry__2_n_5\,
      O(1) => \phase_diff_carry__2_n_6\,
      O(0) => \phase_diff_carry__2_n_7\,
      S(3) => \phase_diff_carry__2_i_1_n_0\,
      S(2) => \phase_diff_carry__2_i_2_n_0\,
      S(1) => \phase_diff_carry__2_i_3_n_0\,
      S(0) => \phase_diff_carry__2_i_4_n_0\
    );
\phase_diff_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D(15),
      I1 => prev_phase(15),
      O => \phase_diff_carry__2_i_1_n_0\
    );
\phase_diff_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D(14),
      I1 => prev_phase(14),
      O => \phase_diff_carry__2_i_2_n_0\
    );
\phase_diff_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D(13),
      I1 => prev_phase(13),
      O => \phase_diff_carry__2_i_3_n_0\
    );
\phase_diff_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D(12),
      I1 => prev_phase(12),
      O => \phase_diff_carry__2_i_4_n_0\
    );
phase_diff_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D(3),
      I1 => prev_phase(3),
      O => phase_diff_carry_i_1_n_0
    );
phase_diff_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D(2),
      I1 => prev_phase(2),
      O => phase_diff_carry_i_2_n_0
    );
phase_diff_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D(1),
      I1 => prev_phase(1),
      O => phase_diff_carry_i_3_n_0
    );
phase_diff_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D(0),
      I1 => prev_phase(0),
      O => phase_diff_carry_i_4_n_0
    );
\prev_phase_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => D(0),
      Q => prev_phase(0)
    );
\prev_phase_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => D(10),
      Q => prev_phase(10)
    );
\prev_phase_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => D(11),
      Q => prev_phase(11)
    );
\prev_phase_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => D(12),
      Q => prev_phase(12)
    );
\prev_phase_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => D(13),
      Q => prev_phase(13)
    );
\prev_phase_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => D(14),
      Q => prev_phase(14)
    );
\prev_phase_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => D(15),
      Q => prev_phase(15)
    );
\prev_phase_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => D(1),
      Q => prev_phase(1)
    );
\prev_phase_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => D(2),
      Q => prev_phase(2)
    );
\prev_phase_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => D(3),
      Q => prev_phase(3)
    );
\prev_phase_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => D(4),
      Q => prev_phase(4)
    );
\prev_phase_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => D(5),
      Q => prev_phase(5)
    );
\prev_phase_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => D(6),
      Q => prev_phase(6)
    );
\prev_phase_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => D(7),
      Q => prev_phase(7)
    );
\prev_phase_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => D(8),
      Q => prev_phase(8)
    );
\prev_phase_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => D(9),
      Q => prev_phase(9)
    );
\unwrapped_phase_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => \next_unwrapped_phase0__4_carry_n_7\,
      Q => \^q\(0)
    );
\unwrapped_phase_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => \next_unwrapped_phase0__4_carry__1_n_5\,
      Q => \^q\(10)
    );
\unwrapped_phase_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => \next_unwrapped_phase0__4_carry__1_n_4\,
      Q => \^q\(11)
    );
\unwrapped_phase_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => \next_unwrapped_phase0__4_carry__2_n_7\,
      Q => \^q\(12)
    );
\unwrapped_phase_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => \next_unwrapped_phase0__4_carry__2_n_6\,
      Q => \^q\(13)
    );
\unwrapped_phase_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => \next_unwrapped_phase0__4_carry__2_n_5\,
      Q => \^q\(14)
    );
\unwrapped_phase_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => \next_unwrapped_phase0__4_carry__2_n_4\,
      Q => \^q\(15)
    );
\unwrapped_phase_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => \next_unwrapped_phase0__4_carry__3_n_7\,
      Q => \^q\(16)
    );
\unwrapped_phase_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => \next_unwrapped_phase0__4_carry__3_n_6\,
      Q => \^q\(17)
    );
\unwrapped_phase_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => \next_unwrapped_phase0__4_carry__3_n_5\,
      Q => \^q\(18)
    );
\unwrapped_phase_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => \next_unwrapped_phase0__4_carry_n_6\,
      Q => \^q\(1)
    );
\unwrapped_phase_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => \next_unwrapped_phase0__4_carry_n_5\,
      Q => \^q\(2)
    );
\unwrapped_phase_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => \next_unwrapped_phase0__4_carry_n_4\,
      Q => \^q\(3)
    );
\unwrapped_phase_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => \next_unwrapped_phase0__4_carry__0_n_7\,
      Q => \^q\(4)
    );
\unwrapped_phase_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => \next_unwrapped_phase0__4_carry__0_n_6\,
      Q => \^q\(5)
    );
\unwrapped_phase_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => \next_unwrapped_phase0__4_carry__0_n_5\,
      Q => \^q\(6)
    );
\unwrapped_phase_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => \next_unwrapped_phase0__4_carry__0_n_4\,
      Q => \^q\(7)
    );
\unwrapped_phase_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => \next_unwrapped_phase0__4_carry__1_n_7\,
      Q => \^q\(8)
    );
\unwrapped_phase_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => unwrapped_phase_tvalid_reg_0(0),
      CLR => \prev_phase_reg[0]_0\,
      D => \next_unwrapped_phase0__4_carry__1_n_6\,
      Q => \^q\(9)
    );
unwrapped_phase_tvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \prev_phase_reg[0]_0\,
      D => unwrapped_phase_tvalid_reg_0(0),
      Q => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FSK_DM_0_0_FSK_DM is
  port (
    rst_n : in STD_LOGIC;
    clk : in STD_LOGIC;
    iq_tvalid : in STD_LOGIC;
    fm_data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fm_data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_FSK_DM_0_0_FSK_DM : entity is "FSK_DM";
end design_1_FSK_DM_0_0_FSK_DM;

architecture STRUCTURE of design_1_FSK_DM_0_0_FSK_DM is
  component design_1_FSK_DM_0_0_cordic_atan4 is
  port (
    aclk : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_FSK_DM_0_0_cordic_atan4;
  component design_1_FSK_DM_0_0_fir_lpf_fsk is
  port (
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  end component design_1_FSK_DM_0_0_fir_lpf_fsk;
  signal demod_out : STD_LOGIC_VECTOR ( 18 downto 3 );
  signal demod_tvalid : STD_LOGIC;
  signal dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dout_tvalid : STD_LOGIC;
  signal phase_differentiator_inst_n_1 : STD_LOGIC;
  signal phase_unwrap_inst_n_20 : STD_LOGIC;
  signal phase_unwrap_inst_n_21 : STD_LOGIC;
  signal phase_unwrap_inst_n_22 : STD_LOGIC;
  signal phase_unwrap_inst_n_23 : STD_LOGIC;
  signal phase_unwrap_inst_n_24 : STD_LOGIC;
  signal phase_unwrap_inst_n_25 : STD_LOGIC;
  signal phase_unwrap_inst_n_26 : STD_LOGIC;
  signal phase_unwrap_inst_n_27 : STD_LOGIC;
  signal phase_unwrap_inst_n_28 : STD_LOGIC;
  signal phase_unwrap_inst_n_29 : STD_LOGIC;
  signal phase_unwrap_inst_n_30 : STD_LOGIC;
  signal phase_unwrap_inst_n_31 : STD_LOGIC;
  signal phase_unwrap_inst_n_32 : STD_LOGIC;
  signal phase_unwrap_inst_n_33 : STD_LOGIC;
  signal phase_unwrap_inst_n_34 : STD_LOGIC;
  signal phase_unwrap_inst_n_35 : STD_LOGIC;
  signal phase_unwrap_inst_n_36 : STD_LOGIC;
  signal phase_unwrap_inst_n_37 : STD_LOGIC;
  signal phase_unwrap_inst_n_38 : STD_LOGIC;
  signal prev_unwrapped_phase : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal unwrapped_phase : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal unwrapped_phase_tvalid : STD_LOGIC;
  signal NLW_fir_lpf_fsk_inst_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_lpf_fsk_inst_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_lpf_fsk_inst_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 0 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cordic_atan4_inst : label is "cordic_atan4,cordic_v6_0_23,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of cordic_atan4_inst : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of cordic_atan4_inst : label is "cordic_v6_0_23,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of fir_lpf_fsk_inst : label is "fir_lpf_fsk,fir_compiler_v7_2_23,{}";
  attribute downgradeipidentifiedwarnings of fir_lpf_fsk_inst : label is "yes";
  attribute x_core_info of fir_lpf_fsk_inst : label is "fir_compiler_v7_2_23,Vivado 2024.2";
begin
cordic_atan4_inst: component design_1_FSK_DM_0_0_cordic_atan4
     port map (
      aclk => clk,
      m_axis_dout_tdata(15 downto 0) => dout(15 downto 0),
      m_axis_dout_tvalid => dout_tvalid,
      s_axis_cartesian_tdata(31 downto 0) => fm_data_in(31 downto 0),
      s_axis_cartesian_tvalid => iq_tvalid
    );
fir_lpf_fsk_inst: component design_1_FSK_DM_0_0_fir_lpf_fsk
     port map (
      aclk => clk,
      m_axis_data_tdata(39 downto 35) => NLW_fir_lpf_fsk_inst_m_axis_data_tdata_UNCONNECTED(39 downto 35),
      m_axis_data_tdata(34 downto 19) => fm_data_out(15 downto 0),
      m_axis_data_tdata(18 downto 0) => NLW_fir_lpf_fsk_inst_m_axis_data_tdata_UNCONNECTED(18 downto 0),
      m_axis_data_tvalid => NLW_fir_lpf_fsk_inst_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => demod_out(18 downto 3),
      s_axis_data_tready => NLW_fir_lpf_fsk_inst_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => demod_tvalid
    );
phase_differentiator_inst: entity work.design_1_FSK_DM_0_0_phase_differentiator
     port map (
      E(0) => unwrapped_phase_tvalid,
      Q(18 downto 0) => unwrapped_phase(18 downto 0),
      S(3) => phase_unwrap_inst_n_20,
      S(2) => phase_unwrap_inst_n_21,
      S(1) => phase_unwrap_inst_n_22,
      S(0) => phase_unwrap_inst_n_23,
      clk => clk,
      \frequency_out_reg[11]_0\(3) => phase_unwrap_inst_n_28,
      \frequency_out_reg[11]_0\(2) => phase_unwrap_inst_n_29,
      \frequency_out_reg[11]_0\(1) => phase_unwrap_inst_n_30,
      \frequency_out_reg[11]_0\(0) => phase_unwrap_inst_n_31,
      \frequency_out_reg[15]_0\(3) => phase_unwrap_inst_n_32,
      \frequency_out_reg[15]_0\(2) => phase_unwrap_inst_n_33,
      \frequency_out_reg[15]_0\(1) => phase_unwrap_inst_n_34,
      \frequency_out_reg[15]_0\(0) => phase_unwrap_inst_n_35,
      \frequency_out_reg[18]_0\(15 downto 0) => demod_out(18 downto 3),
      \frequency_out_reg[18]_1\(2) => phase_unwrap_inst_n_36,
      \frequency_out_reg[18]_1\(1) => phase_unwrap_inst_n_37,
      \frequency_out_reg[18]_1\(0) => phase_unwrap_inst_n_38,
      \frequency_out_reg[7]_0\(3) => phase_unwrap_inst_n_24,
      \frequency_out_reg[7]_0\(2) => phase_unwrap_inst_n_25,
      \frequency_out_reg[7]_0\(1) => phase_unwrap_inst_n_26,
      \frequency_out_reg[7]_0\(0) => phase_unwrap_inst_n_27,
      frequency_out_tvalid => demod_tvalid,
      \prev_unwrapped_phase_reg[18]_0\(18 downto 0) => prev_unwrapped_phase(18 downto 0),
      rst_n => rst_n,
      rst_n_0 => phase_differentiator_inst_n_1
    );
phase_unwrap_inst: entity work.design_1_FSK_DM_0_0_phase_unwrap
     port map (
      D(15 downto 0) => dout(15 downto 0),
      E(0) => unwrapped_phase_tvalid,
      Q(18 downto 0) => unwrapped_phase(18 downto 0),
      S(3) => phase_unwrap_inst_n_20,
      S(2) => phase_unwrap_inst_n_21,
      S(1) => phase_unwrap_inst_n_22,
      S(0) => phase_unwrap_inst_n_23,
      clk => clk,
      \frequency_out_reg[18]\(18 downto 0) => prev_unwrapped_phase(18 downto 0),
      \prev_phase_reg[0]_0\ => phase_differentiator_inst_n_1,
      \unwrapped_phase_reg[11]_0\(3) => phase_unwrap_inst_n_28,
      \unwrapped_phase_reg[11]_0\(2) => phase_unwrap_inst_n_29,
      \unwrapped_phase_reg[11]_0\(1) => phase_unwrap_inst_n_30,
      \unwrapped_phase_reg[11]_0\(0) => phase_unwrap_inst_n_31,
      \unwrapped_phase_reg[15]_0\(3) => phase_unwrap_inst_n_32,
      \unwrapped_phase_reg[15]_0\(2) => phase_unwrap_inst_n_33,
      \unwrapped_phase_reg[15]_0\(1) => phase_unwrap_inst_n_34,
      \unwrapped_phase_reg[15]_0\(0) => phase_unwrap_inst_n_35,
      \unwrapped_phase_reg[18]_0\(2) => phase_unwrap_inst_n_36,
      \unwrapped_phase_reg[18]_0\(1) => phase_unwrap_inst_n_37,
      \unwrapped_phase_reg[18]_0\(0) => phase_unwrap_inst_n_38,
      \unwrapped_phase_reg[7]_0\(3) => phase_unwrap_inst_n_24,
      \unwrapped_phase_reg[7]_0\(2) => phase_unwrap_inst_n_25,
      \unwrapped_phase_reg[7]_0\(1) => phase_unwrap_inst_n_26,
      \unwrapped_phase_reg[7]_0\(0) => phase_unwrap_inst_n_27,
      unwrapped_phase_tvalid_reg_0(0) => dout_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FSK_DM_0_0 is
  port (
    rst_n : in STD_LOGIC;
    clk : in STD_LOGIC;
    iq_tvalid : in STD_LOGIC;
    fm_data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fm_data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_FSK_DM_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_FSK_DM_0_0 : entity is "design_1_FSK_DM_0_0,FSK_DM,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_FSK_DM_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_FSK_DM_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_FSK_DM_0_0 : entity is "FSK_DM,Vivado 2024.2";
end design_1_FSK_DM_0_0;

architecture STRUCTURE of design_1_FSK_DM_0_0 is
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
inst: entity work.design_1_FSK_DM_0_0_FSK_DM
     port map (
      clk => clk,
      fm_data_in(31 downto 0) => fm_data_in(31 downto 0),
      fm_data_out(15 downto 0) => fm_data_out(15 downto 0),
      iq_tvalid => iq_tvalid,
      rst_n => rst_n
    );
end STRUCTURE;
