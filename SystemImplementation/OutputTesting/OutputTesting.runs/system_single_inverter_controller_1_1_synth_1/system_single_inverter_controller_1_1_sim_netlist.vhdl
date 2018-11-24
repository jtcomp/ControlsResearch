-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Thu Nov 22 20:05:12 2018
-- Host        : WINDOWS-A7JT9PH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_single_inverter_controller_1_1_sim_netlist.vhdl
-- Design      : system_single_inverter_controller_1_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z030sbg485-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_gen_var is
  port (
    \sL[0]_0\ : out STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    inverter_axi_lite_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_gen_var;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_gen_var is
  signal So : STD_LOGIC;
  signal So0_carry_n_1 : STD_LOGIC;
  signal So0_carry_n_2 : STD_LOGIC;
  signal So0_carry_n_3 : STD_LOGIC;
  signal So_i_1_n_0 : STD_LOGIC;
  signal So_i_3_n_0 : STD_LOGIC;
  signal So_i_4_n_0 : STD_LOGIC;
  signal So_i_5_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal NLW_So0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of So_i_4 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of So_i_5 : label is "soft_lutpair9";
begin
So0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_1_in,
      CO(2) => So0_carry_n_1,
      CO(1) => So0_carry_n_2,
      CO(0) => So0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_So0_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
So_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => So,
      I1 => p_1_in,
      I2 => So_i_3_n_0,
      O => So_i_1_n_0
    );
So_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(6),
      I3 => Q(7),
      I4 => So_i_4_n_0,
      O => So
    );
So_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(6),
      I3 => Q(7),
      I4 => So_i_5_n_0,
      O => So_i_3_n_0
    );
So_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      O => So_i_4_n_0
    );
So_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      O => So_i_5_n_0
    );
So_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => So_i_1_n_0,
      Q => \sL[0]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_single_leg_switch is
  port (
    L1t : out STD_LOGIC;
    L1b : out STD_LOGIC;
    inverter_axi_lite_aclk : in STD_LOGIC;
    \sL[0]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_single_leg_switch;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_single_leg_switch is
  signal \^l1b\ : STD_LOGIC;
  signal \^l1t\ : STD_LOGIC;
  signal Q1_i_1_n_0 : STD_LOGIC;
  signal Q2_i_1_n_0 : STD_LOGIC;
  signal State : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal deadtime_count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal deadtime_count0 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \deadtime_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \deadtime_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \deadtime_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \deadtime_count[7]_i_4_n_0\ : STD_LOGIC;
  signal \nextState[0]_i_1_n_0\ : STD_LOGIC;
  signal \nextState[1]_i_1_n_0\ : STD_LOGIC;
  signal \nextState[1]_i_2_n_0\ : STD_LOGIC;
  signal \nextState_reg_n_0_[0]\ : STD_LOGIC;
  signal \nextState_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Q1_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of Q2_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \deadtime_count[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \deadtime_count[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \deadtime_count[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \deadtime_count[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \deadtime_count[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \deadtime_count[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \deadtime_count[7]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \deadtime_count[7]_i_4\ : label is "soft_lutpair5";
begin
  L1b <= \^l1b\;
  L1t <= \^l1t\;
Q1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C4"
    )
        port map (
      I0 => State(0),
      I1 => State(1),
      I2 => \^l1t\,
      O => Q1_i_1_n_0
    );
Q1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => Q1_i_1_n_0,
      Q => \^l1t\,
      R => '0'
    );
Q2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => State(0),
      I1 => State(1),
      I2 => \^l1b\,
      O => Q2_i_1_n_0
    );
Q2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => Q2_i_1_n_0,
      Q => \^l1b\,
      R => '0'
    );
\State_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => \nextState_reg_n_0_[0]\,
      Q => State(0),
      R => '0'
    );
\State_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => \nextState_reg_n_0_[1]\,
      Q => State(1),
      R => '0'
    );
\deadtime_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => deadtime_count(0),
      O => \deadtime_count[0]_i_1_n_0\
    );
\deadtime_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => deadtime_count(0),
      I1 => deadtime_count(1),
      O => deadtime_count0(1)
    );
\deadtime_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => deadtime_count(1),
      I1 => deadtime_count(0),
      I2 => deadtime_count(2),
      O => deadtime_count0(2)
    );
\deadtime_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => deadtime_count(2),
      I1 => deadtime_count(0),
      I2 => deadtime_count(1),
      I3 => deadtime_count(3),
      O => deadtime_count0(3)
    );
\deadtime_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => deadtime_count(3),
      I1 => deadtime_count(1),
      I2 => deadtime_count(0),
      I3 => deadtime_count(2),
      I4 => deadtime_count(4),
      O => deadtime_count0(4)
    );
\deadtime_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => deadtime_count(4),
      I1 => deadtime_count(2),
      I2 => deadtime_count(0),
      I3 => deadtime_count(1),
      I4 => deadtime_count(3),
      I5 => deadtime_count(5),
      O => deadtime_count0(5)
    );
\deadtime_count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \deadtime_count[7]_i_4_n_0\,
      I1 => deadtime_count(4),
      I2 => deadtime_count(5),
      I3 => deadtime_count(6),
      O => deadtime_count0(6)
    );
\deadtime_count[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => State(1),
      I1 => State(0),
      O => \deadtime_count[7]_i_1_n_0\
    );
\deadtime_count[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => State(0),
      I1 => State(1),
      O => \deadtime_count[7]_i_2_n_0\
    );
\deadtime_count[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \deadtime_count[7]_i_4_n_0\,
      I1 => deadtime_count(6),
      I2 => deadtime_count(5),
      I3 => deadtime_count(4),
      I4 => deadtime_count(7),
      O => deadtime_count0(7)
    );
\deadtime_count[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => deadtime_count(2),
      I1 => deadtime_count(0),
      I2 => deadtime_count(1),
      I3 => deadtime_count(3),
      O => \deadtime_count[7]_i_4_n_0\
    );
\deadtime_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => inverter_axi_lite_aclk,
      CE => \deadtime_count[7]_i_2_n_0\,
      D => \deadtime_count[0]_i_1_n_0\,
      Q => deadtime_count(0),
      R => \deadtime_count[7]_i_1_n_0\
    );
\deadtime_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => inverter_axi_lite_aclk,
      CE => \deadtime_count[7]_i_2_n_0\,
      D => deadtime_count0(1),
      Q => deadtime_count(1),
      R => \deadtime_count[7]_i_1_n_0\
    );
\deadtime_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => inverter_axi_lite_aclk,
      CE => \deadtime_count[7]_i_2_n_0\,
      D => deadtime_count0(2),
      Q => deadtime_count(2),
      R => \deadtime_count[7]_i_1_n_0\
    );
\deadtime_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => inverter_axi_lite_aclk,
      CE => \deadtime_count[7]_i_2_n_0\,
      D => deadtime_count0(3),
      Q => deadtime_count(3),
      R => \deadtime_count[7]_i_1_n_0\
    );
\deadtime_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => inverter_axi_lite_aclk,
      CE => \deadtime_count[7]_i_2_n_0\,
      D => deadtime_count0(4),
      Q => deadtime_count(4),
      R => \deadtime_count[7]_i_1_n_0\
    );
\deadtime_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => inverter_axi_lite_aclk,
      CE => \deadtime_count[7]_i_2_n_0\,
      D => deadtime_count0(5),
      Q => deadtime_count(5),
      R => \deadtime_count[7]_i_1_n_0\
    );
\deadtime_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => inverter_axi_lite_aclk,
      CE => \deadtime_count[7]_i_2_n_0\,
      D => deadtime_count0(6),
      Q => deadtime_count(6),
      R => \deadtime_count[7]_i_1_n_0\
    );
\deadtime_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => inverter_axi_lite_aclk,
      CE => \deadtime_count[7]_i_2_n_0\,
      D => deadtime_count0(7),
      Q => deadtime_count(7),
      R => \deadtime_count[7]_i_1_n_0\
    );
\nextState[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0320032"
    )
        port map (
      I0 => \nextState[1]_i_2_n_0\,
      I1 => \sL[0]_0\,
      I2 => State(0),
      I3 => State(1),
      I4 => \nextState_reg_n_0_[0]\,
      O => \nextState[0]_i_1_n_0\
    );
\nextState[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC080C08"
    )
        port map (
      I0 => \nextState[1]_i_2_n_0\,
      I1 => \sL[0]_0\,
      I2 => State(0),
      I3 => State(1),
      I4 => \nextState_reg_n_0_[1]\,
      O => \nextState[1]_i_1_n_0\
    );
\nextState[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => deadtime_count(6),
      I1 => deadtime_count(7),
      I2 => deadtime_count(4),
      I3 => deadtime_count(5),
      I4 => deadtime_count(3),
      I5 => deadtime_count(2),
      O => \nextState[1]_i_2_n_0\
    );
\nextState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => \nextState[0]_i_1_n_0\,
      Q => \nextState_reg_n_0_[0]\,
      R => '0'
    );
\nextState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => \nextState[1]_i_1_n_0\,
      Q => \nextState_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_triangle_carrier is
  port (
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    inverter_axi_lite_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_triangle_carrier;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_triangle_carrier is
  signal carrier : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal count0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal count11_in : STD_LOGIC;
  signal \count[6]_i_2_n_0\ : STD_LOGIC;
  signal \count[6]_i_3_n_0\ : STD_LOGIC;
  signal \count[7]_i_2_n_0\ : STD_LOGIC;
  signal \count[7]_i_3_n_0\ : STD_LOGIC;
  signal \count[7]_i_4_n_0\ : STD_LOGIC;
  signal \count[7]_i_5_n_0\ : STD_LOGIC;
  signal \count[7]_i_6_n_0\ : STD_LOGIC;
  signal dp_i_1_n_0 : STD_LOGIC;
  signal dp_i_2_n_0 : STD_LOGIC;
  signal dp_reg_n_0 : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[6]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[6]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[7]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[7]_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of dp_i_2 : label is "soft_lutpair0";
begin
So0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(6),
      I1 => carrier(6),
      I2 => carrier(7),
      I3 => Q(7),
      O => DI(3)
    );
So0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(4),
      I1 => carrier(4),
      I2 => carrier(5),
      I3 => Q(5),
      O => DI(2)
    );
So0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(2),
      I1 => carrier(2),
      I2 => carrier(3),
      I3 => Q(3),
      O => DI(1)
    );
So0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(0),
      I1 => carrier(0),
      I2 => carrier(1),
      I3 => Q(1),
      O => DI(0)
    );
So0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => carrier(7),
      I1 => Q(7),
      I2 => carrier(6),
      I3 => Q(6),
      O => S(3)
    );
So0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => carrier(5),
      I1 => Q(5),
      I2 => carrier(4),
      I3 => Q(4),
      O => S(2)
    );
So0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => carrier(3),
      I1 => Q(3),
      I2 => carrier(2),
      I3 => Q(2),
      O => S(1)
    );
So0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => carrier(1),
      I1 => Q(1),
      I2 => carrier(0),
      I3 => Q(0),
      O => S(0)
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => carrier(0),
      O => count0(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \count[7]_i_3_n_0\,
      I1 => carrier(1),
      I2 => carrier(0),
      O => p_0_in1_in(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CC9"
    )
        port map (
      I0 => \count[7]_i_3_n_0\,
      I1 => carrier(2),
      I2 => carrier(0),
      I3 => carrier(1),
      O => p_0_in1_in(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6CCCCCC9"
    )
        port map (
      I0 => \count[7]_i_3_n_0\,
      I1 => carrier(3),
      I2 => carrier(1),
      I3 => carrier(0),
      I4 => carrier(2),
      O => p_0_in1_in(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6CCCCCCCCCCCCCC9"
    )
        port map (
      I0 => \count[7]_i_3_n_0\,
      I1 => carrier(4),
      I2 => carrier(2),
      I3 => carrier(0),
      I4 => carrier(1),
      I5 => carrier(3),
      O => p_0_in1_in(4)
    );
\count[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBC4043"
    )
        port map (
      I0 => \count[6]_i_2_n_0\,
      I1 => \count[7]_i_3_n_0\,
      I2 => carrier(4),
      I3 => \count[6]_i_3_n_0\,
      I4 => carrier(5),
      O => p_0_in1_in(5)
    );
\count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4F0B4F0F0F0F0C3"
    )
        port map (
      I0 => \count[6]_i_2_n_0\,
      I1 => \count[7]_i_3_n_0\,
      I2 => carrier(6),
      I3 => carrier(4),
      I4 => \count[6]_i_3_n_0\,
      I5 => carrier(5),
      O => p_0_in1_in(6)
    );
\count[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => carrier(1),
      I1 => carrier(0),
      I2 => carrier(2),
      I3 => carrier(3),
      O => \count[6]_i_2_n_0\
    );
\count[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => carrier(2),
      I1 => carrier(0),
      I2 => carrier(1),
      I3 => carrier(3),
      O => \count[6]_i_3_n_0\
    );
\count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7F7C80808083"
    )
        port map (
      I0 => \count[7]_i_2_n_0\,
      I1 => \count[7]_i_3_n_0\,
      I2 => carrier(6),
      I3 => \count[7]_i_4_n_0\,
      I4 => carrier(5),
      I5 => carrier(7),
      O => p_0_in1_in(7)
    );
\count[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => carrier(5),
      I1 => carrier(4),
      I2 => carrier(1),
      I3 => carrier(0),
      I4 => carrier(2),
      I5 => carrier(3),
      O => \count[7]_i_2_n_0\
    );
\count[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0B0B0B0F0F0F0FF"
    )
        port map (
      I0 => \count[7]_i_5_n_0\,
      I1 => carrier(7),
      I2 => dp_reg_n_0,
      I3 => \count[7]_i_6_n_0\,
      I4 => \count[6]_i_3_n_0\,
      I5 => carrier(6),
      O => \count[7]_i_3_n_0\
    );
\count[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => carrier(3),
      I1 => carrier(1),
      I2 => carrier(0),
      I3 => carrier(2),
      I4 => carrier(4),
      O => \count[7]_i_4_n_0\
    );
\count[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => carrier(5),
      I1 => carrier(4),
      I2 => carrier(3),
      I3 => carrier(2),
      I4 => carrier(0),
      I5 => carrier(1),
      O => \count[7]_i_5_n_0\
    );
\count[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => carrier(7),
      I1 => carrier(5),
      I2 => carrier(4),
      O => \count[7]_i_6_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => count0(0),
      Q => carrier(0),
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => p_0_in1_in(1),
      Q => carrier(1),
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => p_0_in1_in(2),
      Q => carrier(2),
      R => '0'
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => p_0_in1_in(3),
      Q => carrier(3),
      R => '0'
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => p_0_in1_in(4),
      Q => carrier(4),
      R => '0'
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => p_0_in1_in(5),
      Q => carrier(5),
      R => '0'
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => p_0_in1_in(6),
      Q => carrier(6),
      R => '0'
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => p_0_in1_in(7),
      Q => carrier(7),
      R => '0'
    );
dp_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => dp_i_2_n_0,
      I1 => count11_in,
      I2 => dp_reg_n_0,
      O => dp_i_1_n_0
    );
dp_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => carrier(4),
      I1 => carrier(5),
      I2 => carrier(7),
      I3 => \count[6]_i_3_n_0\,
      I4 => carrier(6),
      O => dp_i_2_n_0
    );
dp_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \count[6]_i_2_n_0\,
      I1 => carrier(4),
      I2 => carrier(5),
      I3 => carrier(6),
      I4 => carrier(7),
      O => count11_in
    );
dp_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => dp_i_1_n_0,
      Q => dp_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_top is
  port (
    L1t : out STD_LOGIC;
    L1b : out STD_LOGIC;
    inverter_axi_lite_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_top is
  signal gen_carrier_n_0 : STD_LOGIC;
  signal gen_carrier_n_1 : STD_LOGIC;
  signal gen_carrier_n_2 : STD_LOGIC;
  signal gen_carrier_n_3 : STD_LOGIC;
  signal gen_carrier_n_4 : STD_LOGIC;
  signal gen_carrier_n_5 : STD_LOGIC;
  signal gen_carrier_n_6 : STD_LOGIC;
  signal gen_carrier_n_7 : STD_LOGIC;
  signal \sL[0]_0\ : STD_LOGIC;
begin
gen_carrier: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_triangle_carrier
     port map (
      DI(3) => gen_carrier_n_0,
      DI(2) => gen_carrier_n_1,
      DI(1) => gen_carrier_n_2,
      DI(0) => gen_carrier_n_3,
      Q(7 downto 0) => Q(7 downto 0),
      S(3) => gen_carrier_n_4,
      S(2) => gen_carrier_n_5,
      S(1) => gen_carrier_n_6,
      S(0) => gen_carrier_n_7,
      inverter_axi_lite_aclk => inverter_axi_lite_aclk
    );
leg1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_single_leg_switch
     port map (
      L1b => L1b,
      L1t => L1t,
      inverter_axi_lite_aclk => inverter_axi_lite_aclk,
      \sL[0]_0\ => \sL[0]_0\
    );
pwmL1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_gen_var
     port map (
      DI(3) => gen_carrier_n_0,
      DI(2) => gen_carrier_n_1,
      DI(1) => gen_carrier_n_2,
      DI(0) => gen_carrier_n_3,
      Q(7 downto 0) => Q(7 downto 0),
      S(3) => gen_carrier_n_4,
      S(2) => gen_carrier_n_5,
      S(1) => gen_carrier_n_6,
      S(0) => gen_carrier_n_7,
      inverter_axi_lite_aclk => inverter_axi_lite_aclk,
      \sL[0]_0\ => \sL[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_single_inverter_controller_v1_0_Inverter_AXI_LITE is
  port (
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    inverter_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inverter_axi_lite_rvalid : out STD_LOGIC;
    inverter_axi_lite_bvalid : out STD_LOGIC;
    L1t : out STD_LOGIC;
    L1b : out STD_LOGIC;
    inverter_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inverter_axi_lite_arvalid : in STD_LOGIC;
    inverter_axi_lite_aclk : in STD_LOGIC;
    inverter_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inverter_axi_lite_awvalid : in STD_LOGIC;
    inverter_axi_lite_wvalid : in STD_LOGIC;
    inverter_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inverter_axi_lite_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inverter_axi_lite_aresetn : in STD_LOGIC;
    inverter_axi_lite_bready : in STD_LOGIC;
    inverter_axi_lite_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_single_inverter_controller_v1_0_Inverter_AXI_LITE;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_single_inverter_controller_v1_0_Inverter_AXI_LITE is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^inverter_axi_lite_bvalid\ : STD_LOGIC;
  signal \^inverter_axi_lite_rvalid\ : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair10";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  inverter_axi_lite_bvalid <= \^inverter_axi_lite_bvalid\;
  inverter_axi_lite_rvalid <= \^inverter_axi_lite_rvalid\;
PWMGenerator: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_top
     port map (
      L1b => L1b,
      L1t => L1t,
      Q(7 downto 0) => slv_reg0(7 downto 0),
      inverter_axi_lite_aclk => inverter_axi_lite_aclk
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => inverter_axi_lite_wvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^s_axi_awready\,
      I3 => inverter_axi_lite_awvalid,
      I4 => inverter_axi_lite_bready,
      I5 => \^inverter_axi_lite_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => inverter_axi_lite_araddr(0),
      I1 => inverter_axi_lite_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => inverter_axi_lite_araddr(1),
      I1 => inverter_axi_lite_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => inverter_axi_lite_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => inverter_axi_lite_awaddr(0),
      I1 => inverter_axi_lite_awvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => inverter_axi_lite_wvalid,
      I5 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => inverter_axi_lite_awaddr(1),
      I1 => inverter_axi_lite_awvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => inverter_axi_lite_wvalid,
      I5 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_axi_lite_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => inverter_axi_lite_awvalid,
      I1 => \^s_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => inverter_axi_lite_wvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => inverter_axi_lite_awvalid,
      I1 => inverter_axi_lite_wvalid,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      I4 => inverter_axi_lite_bready,
      I5 => \^inverter_axi_lite_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^inverter_axi_lite_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(0),
      I1 => slv_reg3(0),
      I2 => slv_reg0(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(10),
      I1 => slv_reg3(10),
      I2 => slv_reg0(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(11),
      I1 => slv_reg3(11),
      I2 => slv_reg0(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(12),
      I1 => slv_reg3(12),
      I2 => slv_reg0(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(13),
      I1 => slv_reg3(13),
      I2 => slv_reg0(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(14),
      I1 => slv_reg3(14),
      I2 => slv_reg0(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(15),
      I1 => slv_reg3(15),
      I2 => slv_reg0(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(16),
      I1 => slv_reg3(16),
      I2 => slv_reg0(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(17),
      I1 => slv_reg3(17),
      I2 => slv_reg0(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(18),
      I1 => slv_reg3(18),
      I2 => slv_reg0(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(19),
      I1 => slv_reg3(19),
      I2 => slv_reg0(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(1),
      I1 => slv_reg3(1),
      I2 => slv_reg0(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(20),
      I1 => slv_reg3(20),
      I2 => slv_reg0(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(21),
      I1 => slv_reg3(21),
      I2 => slv_reg0(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(22),
      I1 => slv_reg3(22),
      I2 => slv_reg0(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(23),
      I1 => slv_reg3(23),
      I2 => slv_reg0(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(24),
      I1 => slv_reg3(24),
      I2 => slv_reg0(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(25),
      I1 => slv_reg3(25),
      I2 => slv_reg0(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(26),
      I1 => slv_reg3(26),
      I2 => slv_reg0(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(27),
      I1 => slv_reg3(27),
      I2 => slv_reg0(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(28),
      I1 => slv_reg3(28),
      I2 => slv_reg0(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(29),
      I1 => slv_reg3(29),
      I2 => slv_reg0(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(2),
      I1 => slv_reg3(2),
      I2 => slv_reg0(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(30),
      I1 => slv_reg3(30),
      I2 => slv_reg0(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(31),
      I1 => slv_reg3(31),
      I2 => slv_reg0(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(3),
      I1 => slv_reg3(3),
      I2 => slv_reg0(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(4),
      I1 => slv_reg3(4),
      I2 => slv_reg0(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(5),
      I1 => slv_reg3(5),
      I2 => slv_reg0(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(6),
      I1 => slv_reg3(6),
      I2 => slv_reg0(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(7),
      I1 => slv_reg3(7),
      I2 => slv_reg0(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(8),
      I1 => slv_reg3(8),
      I2 => slv_reg0(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(9),
      I1 => slv_reg3(9),
      I2 => slv_reg0(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => inverter_axi_lite_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => inverter_axi_lite_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => inverter_axi_lite_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => inverter_axi_lite_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => inverter_axi_lite_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => inverter_axi_lite_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => inverter_axi_lite_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => inverter_axi_lite_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => inverter_axi_lite_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => inverter_axi_lite_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => inverter_axi_lite_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => inverter_axi_lite_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => inverter_axi_lite_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => inverter_axi_lite_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => inverter_axi_lite_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => inverter_axi_lite_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => inverter_axi_lite_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => inverter_axi_lite_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => inverter_axi_lite_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => inverter_axi_lite_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => inverter_axi_lite_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => inverter_axi_lite_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => inverter_axi_lite_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => inverter_axi_lite_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => inverter_axi_lite_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => inverter_axi_lite_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => inverter_axi_lite_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => inverter_axi_lite_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => inverter_axi_lite_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => inverter_axi_lite_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => inverter_axi_lite_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => inverter_axi_lite_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => inverter_axi_lite_arvalid,
      I2 => \^inverter_axi_lite_rvalid\,
      I3 => inverter_axi_lite_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^inverter_axi_lite_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => inverter_axi_lite_wvalid,
      I2 => inverter_axi_lite_awvalid,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => inverter_axi_lite_wstrb(1),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => inverter_axi_lite_wstrb(2),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => inverter_axi_lite_wstrb(3),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => inverter_axi_lite_awvalid,
      I1 => inverter_axi_lite_wvalid,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => inverter_axi_lite_wstrb(0),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(0),
      Q => slv_reg0(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(10),
      Q => slv_reg0(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(11),
      Q => slv_reg0(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(12),
      Q => slv_reg0(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(13),
      Q => slv_reg0(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(14),
      Q => slv_reg0(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(15),
      Q => slv_reg0(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(16),
      Q => slv_reg0(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(17),
      Q => slv_reg0(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(18),
      Q => slv_reg0(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(19),
      Q => slv_reg0(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(1),
      Q => slv_reg0(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(20),
      Q => slv_reg0(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(21),
      Q => slv_reg0(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(22),
      Q => slv_reg0(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(23),
      Q => slv_reg0(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(24),
      Q => slv_reg0(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(25),
      Q => slv_reg0(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(26),
      Q => slv_reg0(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(27),
      Q => slv_reg0(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(28),
      Q => slv_reg0(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(29),
      Q => slv_reg0(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(2),
      Q => slv_reg0(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(30),
      Q => slv_reg0(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(31),
      Q => slv_reg0(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(3),
      Q => slv_reg0(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(4),
      Q => slv_reg0(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(5),
      Q => slv_reg0(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(6),
      Q => slv_reg0(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(7),
      Q => slv_reg0(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(8),
      Q => slv_reg0(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(9),
      Q => slv_reg0(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => inverter_axi_lite_wstrb(1),
      I2 => axi_awaddr(2),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => inverter_axi_lite_wstrb(2),
      I2 => axi_awaddr(2),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => inverter_axi_lite_wstrb(3),
      I2 => axi_awaddr(2),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => inverter_axi_lite_wstrb(0),
      I2 => axi_awaddr(2),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(0),
      Q => slv_reg1(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(10),
      Q => slv_reg1(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(11),
      Q => slv_reg1(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(12),
      Q => slv_reg1(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(13),
      Q => slv_reg1(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(14),
      Q => slv_reg1(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(15),
      Q => slv_reg1(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(16),
      Q => slv_reg1(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(17),
      Q => slv_reg1(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(18),
      Q => slv_reg1(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(19),
      Q => slv_reg1(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(1),
      Q => slv_reg1(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(20),
      Q => slv_reg1(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(21),
      Q => slv_reg1(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(22),
      Q => slv_reg1(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(23),
      Q => slv_reg1(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(24),
      Q => slv_reg1(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(25),
      Q => slv_reg1(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(26),
      Q => slv_reg1(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(27),
      Q => slv_reg1(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(28),
      Q => slv_reg1(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(29),
      Q => slv_reg1(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(2),
      Q => slv_reg1(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(30),
      Q => slv_reg1(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(31),
      Q => slv_reg1(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(3),
      Q => slv_reg1(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(4),
      Q => slv_reg1(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(5),
      Q => slv_reg1(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(6),
      Q => slv_reg1(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(7),
      Q => slv_reg1(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(8),
      Q => slv_reg1(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(9),
      Q => slv_reg1(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => inverter_axi_lite_wstrb(1),
      I2 => axi_awaddr(2),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => inverter_axi_lite_wstrb(2),
      I2 => axi_awaddr(2),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => inverter_axi_lite_wstrb(3),
      I2 => axi_awaddr(2),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => inverter_axi_lite_wstrb(0),
      I2 => axi_awaddr(2),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(10),
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(11),
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(12),
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(13),
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(14),
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(15),
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(16),
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(17),
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(18),
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(19),
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(20),
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(21),
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(22),
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(23),
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(24),
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(25),
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(26),
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(27),
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(28),
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(29),
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(2),
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(30),
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(31),
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(3),
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(4),
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(5),
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(6),
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(7),
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(8),
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(9),
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => inverter_axi_lite_wstrb(1),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => inverter_axi_lite_wstrb(2),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => inverter_axi_lite_wstrb(3),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => inverter_axi_lite_wstrb(0),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => inverter_axi_lite_wdata(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => inverter_axi_lite_wdata(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => inverter_axi_lite_wdata(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => inverter_axi_lite_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => inverter_axi_lite_wdata(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^inverter_axi_lite_rvalid\,
      I1 => inverter_axi_lite_arvalid,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_single_inverter_controller_v1_0 is
  port (
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    inverter_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inverter_axi_lite_rvalid : out STD_LOGIC;
    inverter_axi_lite_bvalid : out STD_LOGIC;
    L1t : out STD_LOGIC;
    L1b : out STD_LOGIC;
    inverter_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inverter_axi_lite_arvalid : in STD_LOGIC;
    inverter_axi_lite_aclk : in STD_LOGIC;
    inverter_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inverter_axi_lite_awvalid : in STD_LOGIC;
    inverter_axi_lite_wvalid : in STD_LOGIC;
    inverter_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inverter_axi_lite_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inverter_axi_lite_aresetn : in STD_LOGIC;
    inverter_axi_lite_bready : in STD_LOGIC;
    inverter_axi_lite_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_single_inverter_controller_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_single_inverter_controller_v1_0 is
begin
single_inverter_controller_v1_0_Inverter_AXI_LITE_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_single_inverter_controller_v1_0_Inverter_AXI_LITE
     port map (
      L1b => L1b,
      L1t => L1t,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      inverter_axi_lite_aclk => inverter_axi_lite_aclk,
      inverter_axi_lite_araddr(1 downto 0) => inverter_axi_lite_araddr(1 downto 0),
      inverter_axi_lite_aresetn => inverter_axi_lite_aresetn,
      inverter_axi_lite_arvalid => inverter_axi_lite_arvalid,
      inverter_axi_lite_awaddr(1 downto 0) => inverter_axi_lite_awaddr(1 downto 0),
      inverter_axi_lite_awvalid => inverter_axi_lite_awvalid,
      inverter_axi_lite_bready => inverter_axi_lite_bready,
      inverter_axi_lite_bvalid => inverter_axi_lite_bvalid,
      inverter_axi_lite_rdata(31 downto 0) => inverter_axi_lite_rdata(31 downto 0),
      inverter_axi_lite_rready => inverter_axi_lite_rready,
      inverter_axi_lite_rvalid => inverter_axi_lite_rvalid,
      inverter_axi_lite_wdata(31 downto 0) => inverter_axi_lite_wdata(31 downto 0),
      inverter_axi_lite_wstrb(3 downto 0) => inverter_axi_lite_wstrb(3 downto 0),
      inverter_axi_lite_wvalid => inverter_axi_lite_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    L1t : out STD_LOGIC;
    L1b : out STD_LOGIC;
    inverter_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inverter_axi_lite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    inverter_axi_lite_awvalid : in STD_LOGIC;
    inverter_axi_lite_awready : out STD_LOGIC;
    inverter_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inverter_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inverter_axi_lite_wvalid : in STD_LOGIC;
    inverter_axi_lite_wready : out STD_LOGIC;
    inverter_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    inverter_axi_lite_bvalid : out STD_LOGIC;
    inverter_axi_lite_bready : in STD_LOGIC;
    inverter_axi_lite_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inverter_axi_lite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    inverter_axi_lite_arvalid : in STD_LOGIC;
    inverter_axi_lite_arready : out STD_LOGIC;
    inverter_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inverter_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    inverter_axi_lite_rvalid : out STD_LOGIC;
    inverter_axi_lite_rready : in STD_LOGIC;
    inverter_axi_lite_aclk : in STD_LOGIC;
    inverter_axi_lite_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_single_inverter_controller_1_1,single_inverter_controller_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "single_inverter_controller_v1_0,Vivado 2017.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
begin
  inverter_axi_lite_bresp(1) <= \<const0>\;
  inverter_axi_lite_bresp(0) <= \<const0>\;
  inverter_axi_lite_rresp(1) <= \<const0>\;
  inverter_axi_lite_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_single_inverter_controller_v1_0
     port map (
      L1b => L1b,
      L1t => L1t,
      S_AXI_ARREADY => inverter_axi_lite_arready,
      S_AXI_AWREADY => inverter_axi_lite_awready,
      S_AXI_WREADY => inverter_axi_lite_wready,
      inverter_axi_lite_aclk => inverter_axi_lite_aclk,
      inverter_axi_lite_araddr(1 downto 0) => inverter_axi_lite_araddr(3 downto 2),
      inverter_axi_lite_aresetn => inverter_axi_lite_aresetn,
      inverter_axi_lite_arvalid => inverter_axi_lite_arvalid,
      inverter_axi_lite_awaddr(1 downto 0) => inverter_axi_lite_awaddr(3 downto 2),
      inverter_axi_lite_awvalid => inverter_axi_lite_awvalid,
      inverter_axi_lite_bready => inverter_axi_lite_bready,
      inverter_axi_lite_bvalid => inverter_axi_lite_bvalid,
      inverter_axi_lite_rdata(31 downto 0) => inverter_axi_lite_rdata(31 downto 0),
      inverter_axi_lite_rready => inverter_axi_lite_rready,
      inverter_axi_lite_rvalid => inverter_axi_lite_rvalid,
      inverter_axi_lite_wdata(31 downto 0) => inverter_axi_lite_wdata(31 downto 0),
      inverter_axi_lite_wstrb(3 downto 0) => inverter_axi_lite_wstrb(3 downto 0),
      inverter_axi_lite_wvalid => inverter_axi_lite_wvalid
    );
end STRUCTURE;
