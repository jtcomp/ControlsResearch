-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Thu Nov 22 20:05:03 2018
-- Host        : WINDOWS-A7JT9PH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_single_inverter_controller_0_1_stub.vhdl
-- Design      : system_single_inverter_controller_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z030sbg485-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "L1t,L1b,inverter_axi_lite_awaddr[3:0],inverter_axi_lite_awprot[2:0],inverter_axi_lite_awvalid,inverter_axi_lite_awready,inverter_axi_lite_wdata[31:0],inverter_axi_lite_wstrb[3:0],inverter_axi_lite_wvalid,inverter_axi_lite_wready,inverter_axi_lite_bresp[1:0],inverter_axi_lite_bvalid,inverter_axi_lite_bready,inverter_axi_lite_araddr[3:0],inverter_axi_lite_arprot[2:0],inverter_axi_lite_arvalid,inverter_axi_lite_arready,inverter_axi_lite_rdata[31:0],inverter_axi_lite_rresp[1:0],inverter_axi_lite_rvalid,inverter_axi_lite_rready,inverter_axi_lite_aclk,inverter_axi_lite_aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "single_inverter_controller_v1_0,Vivado 2017.2";
begin
end;
