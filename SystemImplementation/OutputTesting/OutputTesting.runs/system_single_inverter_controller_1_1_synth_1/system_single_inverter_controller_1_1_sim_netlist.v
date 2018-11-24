// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Nov 22 20:05:12 2018
// Host        : WINDOWS-A7JT9PH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_single_inverter_controller_1_1_sim_netlist.v
// Design      : system_single_inverter_controller_1_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z030sbg485-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_gen_var
   (\sL[0]_0 ,
    DI,
    S,
    Q,
    inverter_axi_lite_aclk);
  output \sL[0]_0 ;
  input [3:0]DI;
  input [3:0]S;
  input [7:0]Q;
  input inverter_axi_lite_aclk;

  wire [3:0]DI;
  wire [7:0]Q;
  wire [3:0]S;
  wire So;
  wire So0_carry_n_1;
  wire So0_carry_n_2;
  wire So0_carry_n_3;
  wire So_i_1_n_0;
  wire So_i_3_n_0;
  wire So_i_4_n_0;
  wire So_i_5_n_0;
  wire inverter_axi_lite_aclk;
  wire p_1_in;
  wire \sL[0]_0 ;
  wire [3:0]NLW_So0_carry_O_UNCONNECTED;

  CARRY4 So0_carry
       (.CI(1'b0),
        .CO({p_1_in,So0_carry_n_1,So0_carry_n_2,So0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_So0_carry_O_UNCONNECTED[3:0]),
        .S(S));
  LUT3 #(
    .INIT(8'h0E)) 
    So_i_1
       (.I0(So),
        .I1(p_1_in),
        .I2(So_i_3_n_0),
        .O(So_i_1_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    So_i_2
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(So_i_4_n_0),
        .O(So));
  LUT5 #(
    .INIT(32'h00010000)) 
    So_i_3
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(So_i_5_n_0),
        .O(So_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    So_i_4
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(So_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    So_i_5
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(So_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    So_reg
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(So_i_1_n_0),
        .Q(\sL[0]_0 ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_single_inverter_controller_v1_0
   (S_AXI_ARREADY,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    inverter_axi_lite_rdata,
    inverter_axi_lite_rvalid,
    inverter_axi_lite_bvalid,
    L1t,
    L1b,
    inverter_axi_lite_wstrb,
    inverter_axi_lite_arvalid,
    inverter_axi_lite_aclk,
    inverter_axi_lite_awaddr,
    inverter_axi_lite_awvalid,
    inverter_axi_lite_wvalid,
    inverter_axi_lite_wdata,
    inverter_axi_lite_araddr,
    inverter_axi_lite_aresetn,
    inverter_axi_lite_bready,
    inverter_axi_lite_rready);
  output S_AXI_ARREADY;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [31:0]inverter_axi_lite_rdata;
  output inverter_axi_lite_rvalid;
  output inverter_axi_lite_bvalid;
  output L1t;
  output L1b;
  input [3:0]inverter_axi_lite_wstrb;
  input inverter_axi_lite_arvalid;
  input inverter_axi_lite_aclk;
  input [1:0]inverter_axi_lite_awaddr;
  input inverter_axi_lite_awvalid;
  input inverter_axi_lite_wvalid;
  input [31:0]inverter_axi_lite_wdata;
  input [1:0]inverter_axi_lite_araddr;
  input inverter_axi_lite_aresetn;
  input inverter_axi_lite_bready;
  input inverter_axi_lite_rready;

  wire L1b;
  wire L1t;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire inverter_axi_lite_aclk;
  wire [1:0]inverter_axi_lite_araddr;
  wire inverter_axi_lite_aresetn;
  wire inverter_axi_lite_arvalid;
  wire [1:0]inverter_axi_lite_awaddr;
  wire inverter_axi_lite_awvalid;
  wire inverter_axi_lite_bready;
  wire inverter_axi_lite_bvalid;
  wire [31:0]inverter_axi_lite_rdata;
  wire inverter_axi_lite_rready;
  wire inverter_axi_lite_rvalid;
  wire [31:0]inverter_axi_lite_wdata;
  wire [3:0]inverter_axi_lite_wstrb;
  wire inverter_axi_lite_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_single_inverter_controller_v1_0_Inverter_AXI_LITE single_inverter_controller_v1_0_Inverter_AXI_LITE_inst
       (.L1b(L1b),
        .L1t(L1t),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .inverter_axi_lite_aclk(inverter_axi_lite_aclk),
        .inverter_axi_lite_araddr(inverter_axi_lite_araddr),
        .inverter_axi_lite_aresetn(inverter_axi_lite_aresetn),
        .inverter_axi_lite_arvalid(inverter_axi_lite_arvalid),
        .inverter_axi_lite_awaddr(inverter_axi_lite_awaddr),
        .inverter_axi_lite_awvalid(inverter_axi_lite_awvalid),
        .inverter_axi_lite_bready(inverter_axi_lite_bready),
        .inverter_axi_lite_bvalid(inverter_axi_lite_bvalid),
        .inverter_axi_lite_rdata(inverter_axi_lite_rdata),
        .inverter_axi_lite_rready(inverter_axi_lite_rready),
        .inverter_axi_lite_rvalid(inverter_axi_lite_rvalid),
        .inverter_axi_lite_wdata(inverter_axi_lite_wdata),
        .inverter_axi_lite_wstrb(inverter_axi_lite_wstrb),
        .inverter_axi_lite_wvalid(inverter_axi_lite_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_single_inverter_controller_v1_0_Inverter_AXI_LITE
   (S_AXI_ARREADY,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    inverter_axi_lite_rdata,
    inverter_axi_lite_rvalid,
    inverter_axi_lite_bvalid,
    L1t,
    L1b,
    inverter_axi_lite_wstrb,
    inverter_axi_lite_arvalid,
    inverter_axi_lite_aclk,
    inverter_axi_lite_awaddr,
    inverter_axi_lite_awvalid,
    inverter_axi_lite_wvalid,
    inverter_axi_lite_wdata,
    inverter_axi_lite_araddr,
    inverter_axi_lite_aresetn,
    inverter_axi_lite_bready,
    inverter_axi_lite_rready);
  output S_AXI_ARREADY;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [31:0]inverter_axi_lite_rdata;
  output inverter_axi_lite_rvalid;
  output inverter_axi_lite_bvalid;
  output L1t;
  output L1b;
  input [3:0]inverter_axi_lite_wstrb;
  input inverter_axi_lite_arvalid;
  input inverter_axi_lite_aclk;
  input [1:0]inverter_axi_lite_awaddr;
  input inverter_axi_lite_awvalid;
  input inverter_axi_lite_wvalid;
  input [31:0]inverter_axi_lite_wdata;
  input [1:0]inverter_axi_lite_araddr;
  input inverter_axi_lite_aresetn;
  input inverter_axi_lite_bready;
  input inverter_axi_lite_rready;

  wire L1b;
  wire L1t;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready_i_1_n_0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire inverter_axi_lite_aclk;
  wire [1:0]inverter_axi_lite_araddr;
  wire inverter_axi_lite_aresetn;
  wire inverter_axi_lite_arvalid;
  wire [1:0]inverter_axi_lite_awaddr;
  wire inverter_axi_lite_awvalid;
  wire inverter_axi_lite_bready;
  wire inverter_axi_lite_bvalid;
  wire [31:0]inverter_axi_lite_rdata;
  wire inverter_axi_lite_rready;
  wire inverter_axi_lite_rvalid;
  wire [31:0]inverter_axi_lite_wdata;
  wire [3:0]inverter_axi_lite_wstrb;
  wire inverter_axi_lite_wvalid;
  wire [31:0]reg_data_out;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden__0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_top PWMGenerator
       (.L1b(L1b),
        .L1t(L1t),
        .Q(slv_reg0[7:0]),
        .inverter_axi_lite_aclk(inverter_axi_lite_aclk));
  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(inverter_axi_lite_wvalid),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(inverter_axi_lite_awvalid),
        .I4(inverter_axi_lite_bready),
        .I5(inverter_axi_lite_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(inverter_axi_lite_araddr[0]),
        .I1(inverter_axi_lite_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(inverter_axi_lite_araddr[1]),
        .I1(inverter_axi_lite_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(inverter_axi_lite_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(inverter_axi_lite_awaddr[0]),
        .I1(inverter_axi_lite_awvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(inverter_axi_lite_wvalid),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(inverter_axi_lite_awaddr[1]),
        .I1(inverter_axi_lite_awvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(inverter_axi_lite_wvalid),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(inverter_axi_lite_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(inverter_axi_lite_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(inverter_axi_lite_wvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(inverter_axi_lite_awvalid),
        .I1(inverter_axi_lite_wvalid),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(inverter_axi_lite_bready),
        .I5(inverter_axi_lite_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(inverter_axi_lite_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg2[0]),
        .I1(slv_reg3[0]),
        .I2(slv_reg0[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg2[10]),
        .I1(slv_reg3[10]),
        .I2(slv_reg0[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg2[11]),
        .I1(slv_reg3[11]),
        .I2(slv_reg0[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg2[12]),
        .I1(slv_reg3[12]),
        .I2(slv_reg0[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg2[13]),
        .I1(slv_reg3[13]),
        .I2(slv_reg0[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg2[14]),
        .I1(slv_reg3[14]),
        .I2(slv_reg0[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg2[15]),
        .I1(slv_reg3[15]),
        .I2(slv_reg0[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg2[16]),
        .I1(slv_reg3[16]),
        .I2(slv_reg0[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg2[17]),
        .I1(slv_reg3[17]),
        .I2(slv_reg0[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg2[18]),
        .I1(slv_reg3[18]),
        .I2(slv_reg0[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg2[19]),
        .I1(slv_reg3[19]),
        .I2(slv_reg0[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg2[1]),
        .I1(slv_reg3[1]),
        .I2(slv_reg0[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg2[20]),
        .I1(slv_reg3[20]),
        .I2(slv_reg0[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg2[21]),
        .I1(slv_reg3[21]),
        .I2(slv_reg0[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg2[22]),
        .I1(slv_reg3[22]),
        .I2(slv_reg0[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg2[23]),
        .I1(slv_reg3[23]),
        .I2(slv_reg0[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg2[24]),
        .I1(slv_reg3[24]),
        .I2(slv_reg0[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg2[25]),
        .I1(slv_reg3[25]),
        .I2(slv_reg0[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg2[26]),
        .I1(slv_reg3[26]),
        .I2(slv_reg0[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg2[27]),
        .I1(slv_reg3[27]),
        .I2(slv_reg0[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg2[28]),
        .I1(slv_reg3[28]),
        .I2(slv_reg0[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg2[29]),
        .I1(slv_reg3[29]),
        .I2(slv_reg0[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg2[2]),
        .I1(slv_reg3[2]),
        .I2(slv_reg0[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg2[30]),
        .I1(slv_reg3[30]),
        .I2(slv_reg0[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[30]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg2[31]),
        .I1(slv_reg3[31]),
        .I2(slv_reg0[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg2[3]),
        .I1(slv_reg3[3]),
        .I2(slv_reg0[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg2[4]),
        .I1(slv_reg3[4]),
        .I2(slv_reg0[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg2[5]),
        .I1(slv_reg3[5]),
        .I2(slv_reg0[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg2[6]),
        .I1(slv_reg3[6]),
        .I2(slv_reg0[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg2[7]),
        .I1(slv_reg3[7]),
        .I2(slv_reg0[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg2[8]),
        .I1(slv_reg3[8]),
        .I2(slv_reg0[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg2[9]),
        .I1(slv_reg3[9]),
        .I2(slv_reg0[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(inverter_axi_lite_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(inverter_axi_lite_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(inverter_axi_lite_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(inverter_axi_lite_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(inverter_axi_lite_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(inverter_axi_lite_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(inverter_axi_lite_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(inverter_axi_lite_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(inverter_axi_lite_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(inverter_axi_lite_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(inverter_axi_lite_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(inverter_axi_lite_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(inverter_axi_lite_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(inverter_axi_lite_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(inverter_axi_lite_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(inverter_axi_lite_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(inverter_axi_lite_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(inverter_axi_lite_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(inverter_axi_lite_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(inverter_axi_lite_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(inverter_axi_lite_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(inverter_axi_lite_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(inverter_axi_lite_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(inverter_axi_lite_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(inverter_axi_lite_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(inverter_axi_lite_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(inverter_axi_lite_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(inverter_axi_lite_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(inverter_axi_lite_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(inverter_axi_lite_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(inverter_axi_lite_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(inverter_axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(inverter_axi_lite_rdata[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(inverter_axi_lite_arvalid),
        .I2(inverter_axi_lite_rvalid),
        .I3(inverter_axi_lite_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(inverter_axi_lite_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_wready_i_1
       (.I0(S_AXI_WREADY),
        .I1(inverter_axi_lite_wvalid),
        .I2(inverter_axi_lite_awvalid),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0010)) 
    \slv_reg0[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(inverter_axi_lite_wstrb[1]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \slv_reg0[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(inverter_axi_lite_wstrb[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \slv_reg0[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(inverter_axi_lite_wstrb[3]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \slv_reg0[31]_i_2 
       (.I0(inverter_axi_lite_awvalid),
        .I1(inverter_axi_lite_wvalid),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \slv_reg0[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(inverter_axi_lite_wstrb[0]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[0]),
        .Q(slv_reg0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[10]),
        .Q(slv_reg0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[11]),
        .Q(slv_reg0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[12]),
        .Q(slv_reg0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[13]),
        .Q(slv_reg0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[14]),
        .Q(slv_reg0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[15]),
        .Q(slv_reg0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[16]),
        .Q(slv_reg0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[17]),
        .Q(slv_reg0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[18]),
        .Q(slv_reg0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[19]),
        .Q(slv_reg0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[1]),
        .Q(slv_reg0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[20]),
        .Q(slv_reg0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[21]),
        .Q(slv_reg0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[22]),
        .Q(slv_reg0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[23]),
        .Q(slv_reg0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[24]),
        .Q(slv_reg0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[25]),
        .Q(slv_reg0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[26]),
        .Q(slv_reg0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[27]),
        .Q(slv_reg0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[28]),
        .Q(slv_reg0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[29]),
        .Q(slv_reg0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[2]),
        .Q(slv_reg0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[30]),
        .Q(slv_reg0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[31]),
        .Q(slv_reg0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[3]),
        .Q(slv_reg0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[4]),
        .Q(slv_reg0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[5]),
        .Q(slv_reg0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[6]),
        .Q(slv_reg0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[7]),
        .Q(slv_reg0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[8]),
        .Q(slv_reg0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[9]),
        .Q(slv_reg0[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg1[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(inverter_axi_lite_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg1[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(inverter_axi_lite_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg1[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(inverter_axi_lite_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg1[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(inverter_axi_lite_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[0]),
        .Q(slv_reg1[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[10]),
        .Q(slv_reg1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[11]),
        .Q(slv_reg1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[12]),
        .Q(slv_reg1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[13]),
        .Q(slv_reg1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[14]),
        .Q(slv_reg1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[15]),
        .Q(slv_reg1[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[16]),
        .Q(slv_reg1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[17]),
        .Q(slv_reg1[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[18]),
        .Q(slv_reg1[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[19]),
        .Q(slv_reg1[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[1]),
        .Q(slv_reg1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[20]),
        .Q(slv_reg1[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[21]),
        .Q(slv_reg1[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[22]),
        .Q(slv_reg1[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[23]),
        .Q(slv_reg1[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[24]),
        .Q(slv_reg1[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[25]),
        .Q(slv_reg1[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[26]),
        .Q(slv_reg1[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[27]),
        .Q(slv_reg1[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[28]),
        .Q(slv_reg1[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[29]),
        .Q(slv_reg1[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[2]),
        .Q(slv_reg1[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[30]),
        .Q(slv_reg1[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[31]),
        .Q(slv_reg1[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[3]),
        .Q(slv_reg1[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[4]),
        .Q(slv_reg1[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[5]),
        .Q(slv_reg1[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[6]),
        .Q(slv_reg1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[7]),
        .Q(slv_reg1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[8]),
        .Q(slv_reg1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[9]),
        .Q(slv_reg1[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0008)) 
    \slv_reg2[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(inverter_axi_lite_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \slv_reg2[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(inverter_axi_lite_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \slv_reg2[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(inverter_axi_lite_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \slv_reg2[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(inverter_axi_lite_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg3[15]_i_1 
       (.I0(inverter_axi_lite_wstrb[1]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg3[23]_i_1 
       (.I0(inverter_axi_lite_wstrb[2]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg3[31]_i_1 
       (.I0(inverter_axi_lite_wstrb[3]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg3[7]_i_1 
       (.I0(inverter_axi_lite_wstrb[0]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(\slv_reg0[31]_i_2_n_0 ),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(inverter_axi_lite_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(inverter_axi_lite_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    slv_reg_rden
       (.I0(inverter_axi_lite_rvalid),
        .I1(inverter_axi_lite_arvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_single_leg_switch
   (L1t,
    L1b,
    inverter_axi_lite_aclk,
    \sL[0]_0 );
  output L1t;
  output L1b;
  input inverter_axi_lite_aclk;
  input \sL[0]_0 ;

  wire L1b;
  wire L1t;
  wire Q1_i_1_n_0;
  wire Q2_i_1_n_0;
  wire [1:0]State;
  wire [7:0]deadtime_count;
  wire [7:1]deadtime_count0;
  wire \deadtime_count[0]_i_1_n_0 ;
  wire \deadtime_count[7]_i_1_n_0 ;
  wire \deadtime_count[7]_i_2_n_0 ;
  wire \deadtime_count[7]_i_4_n_0 ;
  wire inverter_axi_lite_aclk;
  wire \nextState[0]_i_1_n_0 ;
  wire \nextState[1]_i_1_n_0 ;
  wire \nextState[1]_i_2_n_0 ;
  wire \nextState_reg_n_0_[0] ;
  wire \nextState_reg_n_0_[1] ;
  wire \sL[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hC4)) 
    Q1_i_1
       (.I0(State[0]),
        .I1(State[1]),
        .I2(L1t),
        .O(Q1_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q1_reg
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(Q1_i_1_n_0),
        .Q(L1t),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hA2)) 
    Q2_i_1
       (.I0(State[0]),
        .I1(State[1]),
        .I2(L1b),
        .O(Q2_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q2_reg
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(Q2_i_1_n_0),
        .Q(L1b),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \State_reg[0] 
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(\nextState_reg_n_0_[0] ),
        .Q(State[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \State_reg[1] 
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(\nextState_reg_n_0_[1] ),
        .Q(State[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \deadtime_count[0]_i_1 
       (.I0(deadtime_count[0]),
        .O(\deadtime_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \deadtime_count[1]_i_1 
       (.I0(deadtime_count[0]),
        .I1(deadtime_count[1]),
        .O(deadtime_count0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \deadtime_count[2]_i_1 
       (.I0(deadtime_count[1]),
        .I1(deadtime_count[0]),
        .I2(deadtime_count[2]),
        .O(deadtime_count0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \deadtime_count[3]_i_1 
       (.I0(deadtime_count[2]),
        .I1(deadtime_count[0]),
        .I2(deadtime_count[1]),
        .I3(deadtime_count[3]),
        .O(deadtime_count0[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \deadtime_count[4]_i_1 
       (.I0(deadtime_count[3]),
        .I1(deadtime_count[1]),
        .I2(deadtime_count[0]),
        .I3(deadtime_count[2]),
        .I4(deadtime_count[4]),
        .O(deadtime_count0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \deadtime_count[5]_i_1 
       (.I0(deadtime_count[4]),
        .I1(deadtime_count[2]),
        .I2(deadtime_count[0]),
        .I3(deadtime_count[1]),
        .I4(deadtime_count[3]),
        .I5(deadtime_count[5]),
        .O(deadtime_count0[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \deadtime_count[6]_i_1 
       (.I0(\deadtime_count[7]_i_4_n_0 ),
        .I1(deadtime_count[4]),
        .I2(deadtime_count[5]),
        .I3(deadtime_count[6]),
        .O(deadtime_count0[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \deadtime_count[7]_i_1 
       (.I0(State[1]),
        .I1(State[0]),
        .O(\deadtime_count[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \deadtime_count[7]_i_2 
       (.I0(State[0]),
        .I1(State[1]),
        .O(\deadtime_count[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \deadtime_count[7]_i_3 
       (.I0(\deadtime_count[7]_i_4_n_0 ),
        .I1(deadtime_count[6]),
        .I2(deadtime_count[5]),
        .I3(deadtime_count[4]),
        .I4(deadtime_count[7]),
        .O(deadtime_count0[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \deadtime_count[7]_i_4 
       (.I0(deadtime_count[2]),
        .I1(deadtime_count[0]),
        .I2(deadtime_count[1]),
        .I3(deadtime_count[3]),
        .O(\deadtime_count[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \deadtime_count_reg[0] 
       (.C(inverter_axi_lite_aclk),
        .CE(\deadtime_count[7]_i_2_n_0 ),
        .D(\deadtime_count[0]_i_1_n_0 ),
        .Q(deadtime_count[0]),
        .R(\deadtime_count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \deadtime_count_reg[1] 
       (.C(inverter_axi_lite_aclk),
        .CE(\deadtime_count[7]_i_2_n_0 ),
        .D(deadtime_count0[1]),
        .Q(deadtime_count[1]),
        .R(\deadtime_count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \deadtime_count_reg[2] 
       (.C(inverter_axi_lite_aclk),
        .CE(\deadtime_count[7]_i_2_n_0 ),
        .D(deadtime_count0[2]),
        .Q(deadtime_count[2]),
        .R(\deadtime_count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \deadtime_count_reg[3] 
       (.C(inverter_axi_lite_aclk),
        .CE(\deadtime_count[7]_i_2_n_0 ),
        .D(deadtime_count0[3]),
        .Q(deadtime_count[3]),
        .R(\deadtime_count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \deadtime_count_reg[4] 
       (.C(inverter_axi_lite_aclk),
        .CE(\deadtime_count[7]_i_2_n_0 ),
        .D(deadtime_count0[4]),
        .Q(deadtime_count[4]),
        .R(\deadtime_count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \deadtime_count_reg[5] 
       (.C(inverter_axi_lite_aclk),
        .CE(\deadtime_count[7]_i_2_n_0 ),
        .D(deadtime_count0[5]),
        .Q(deadtime_count[5]),
        .R(\deadtime_count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \deadtime_count_reg[6] 
       (.C(inverter_axi_lite_aclk),
        .CE(\deadtime_count[7]_i_2_n_0 ),
        .D(deadtime_count0[6]),
        .Q(deadtime_count[6]),
        .R(\deadtime_count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \deadtime_count_reg[7] 
       (.C(inverter_axi_lite_aclk),
        .CE(\deadtime_count[7]_i_2_n_0 ),
        .D(deadtime_count0[7]),
        .Q(deadtime_count[7]),
        .R(\deadtime_count[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0320032)) 
    \nextState[0]_i_1 
       (.I0(\nextState[1]_i_2_n_0 ),
        .I1(\sL[0]_0 ),
        .I2(State[0]),
        .I3(State[1]),
        .I4(\nextState_reg_n_0_[0] ),
        .O(\nextState[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFC080C08)) 
    \nextState[1]_i_1 
       (.I0(\nextState[1]_i_2_n_0 ),
        .I1(\sL[0]_0 ),
        .I2(State[0]),
        .I3(State[1]),
        .I4(\nextState_reg_n_0_[1] ),
        .O(\nextState[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \nextState[1]_i_2 
       (.I0(deadtime_count[6]),
        .I1(deadtime_count[7]),
        .I2(deadtime_count[4]),
        .I3(deadtime_count[5]),
        .I4(deadtime_count[3]),
        .I5(deadtime_count[2]),
        .O(\nextState[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \nextState_reg[0] 
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(\nextState[0]_i_1_n_0 ),
        .Q(\nextState_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \nextState_reg[1] 
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(\nextState[1]_i_1_n_0 ),
        .Q(\nextState_reg_n_0_[1] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_top
   (L1t,
    L1b,
    inverter_axi_lite_aclk,
    Q);
  output L1t;
  output L1b;
  input inverter_axi_lite_aclk;
  input [7:0]Q;

  wire L1b;
  wire L1t;
  wire [7:0]Q;
  wire gen_carrier_n_0;
  wire gen_carrier_n_1;
  wire gen_carrier_n_2;
  wire gen_carrier_n_3;
  wire gen_carrier_n_4;
  wire gen_carrier_n_5;
  wire gen_carrier_n_6;
  wire gen_carrier_n_7;
  wire inverter_axi_lite_aclk;
  wire \sL[0]_0 ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_triangle_carrier gen_carrier
       (.DI({gen_carrier_n_0,gen_carrier_n_1,gen_carrier_n_2,gen_carrier_n_3}),
        .Q(Q),
        .S({gen_carrier_n_4,gen_carrier_n_5,gen_carrier_n_6,gen_carrier_n_7}),
        .inverter_axi_lite_aclk(inverter_axi_lite_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_single_leg_switch leg1
       (.L1b(L1b),
        .L1t(L1t),
        .inverter_axi_lite_aclk(inverter_axi_lite_aclk),
        .\sL[0]_0 (\sL[0]_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_gen_var pwmL1
       (.DI({gen_carrier_n_0,gen_carrier_n_1,gen_carrier_n_2,gen_carrier_n_3}),
        .Q(Q),
        .S({gen_carrier_n_4,gen_carrier_n_5,gen_carrier_n_6,gen_carrier_n_7}),
        .inverter_axi_lite_aclk(inverter_axi_lite_aclk),
        .\sL[0]_0 (\sL[0]_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "system_single_inverter_controller_1_1,single_inverter_controller_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "single_inverter_controller_v1_0,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (L1t,
    L1b,
    inverter_axi_lite_awaddr,
    inverter_axi_lite_awprot,
    inverter_axi_lite_awvalid,
    inverter_axi_lite_awready,
    inverter_axi_lite_wdata,
    inverter_axi_lite_wstrb,
    inverter_axi_lite_wvalid,
    inverter_axi_lite_wready,
    inverter_axi_lite_bresp,
    inverter_axi_lite_bvalid,
    inverter_axi_lite_bready,
    inverter_axi_lite_araddr,
    inverter_axi_lite_arprot,
    inverter_axi_lite_arvalid,
    inverter_axi_lite_arready,
    inverter_axi_lite_rdata,
    inverter_axi_lite_rresp,
    inverter_axi_lite_rvalid,
    inverter_axi_lite_rready,
    inverter_axi_lite_aclk,
    inverter_axi_lite_aresetn);
  output L1t;
  output L1b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE AWADDR" *) input [3:0]inverter_axi_lite_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE AWPROT" *) input [2:0]inverter_axi_lite_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE AWVALID" *) input inverter_axi_lite_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE AWREADY" *) output inverter_axi_lite_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE WDATA" *) input [31:0]inverter_axi_lite_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE WSTRB" *) input [3:0]inverter_axi_lite_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE WVALID" *) input inverter_axi_lite_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE WREADY" *) output inverter_axi_lite_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE BRESP" *) output [1:0]inverter_axi_lite_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE BVALID" *) output inverter_axi_lite_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE BREADY" *) input inverter_axi_lite_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE ARADDR" *) input [3:0]inverter_axi_lite_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE ARPROT" *) input [2:0]inverter_axi_lite_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE ARVALID" *) input inverter_axi_lite_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE ARREADY" *) output inverter_axi_lite_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE RDATA" *) output [31:0]inverter_axi_lite_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE RRESP" *) output [1:0]inverter_axi_lite_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE RVALID" *) output inverter_axi_lite_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE RREADY" *) input inverter_axi_lite_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Inverter_AXI_LITE_CLK CLK, xilinx.com:signal:clock:1.0 inverter_axi_lite_aclk CLK" *) input inverter_axi_lite_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Inverter_AXI_LITE_RST RST, xilinx.com:signal:reset:1.0 inverter_axi_lite_aresetn RST" *) input inverter_axi_lite_aresetn;

  wire \<const0> ;
  wire L1b;
  wire L1t;
  wire inverter_axi_lite_aclk;
  wire [3:0]inverter_axi_lite_araddr;
  wire inverter_axi_lite_aresetn;
  wire inverter_axi_lite_arready;
  wire inverter_axi_lite_arvalid;
  wire [3:0]inverter_axi_lite_awaddr;
  wire inverter_axi_lite_awready;
  wire inverter_axi_lite_awvalid;
  wire inverter_axi_lite_bready;
  wire inverter_axi_lite_bvalid;
  wire [31:0]inverter_axi_lite_rdata;
  wire inverter_axi_lite_rready;
  wire inverter_axi_lite_rvalid;
  wire [31:0]inverter_axi_lite_wdata;
  wire inverter_axi_lite_wready;
  wire [3:0]inverter_axi_lite_wstrb;
  wire inverter_axi_lite_wvalid;

  assign inverter_axi_lite_bresp[1] = \<const0> ;
  assign inverter_axi_lite_bresp[0] = \<const0> ;
  assign inverter_axi_lite_rresp[1] = \<const0> ;
  assign inverter_axi_lite_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_single_inverter_controller_v1_0 inst
       (.L1b(L1b),
        .L1t(L1t),
        .S_AXI_ARREADY(inverter_axi_lite_arready),
        .S_AXI_AWREADY(inverter_axi_lite_awready),
        .S_AXI_WREADY(inverter_axi_lite_wready),
        .inverter_axi_lite_aclk(inverter_axi_lite_aclk),
        .inverter_axi_lite_araddr(inverter_axi_lite_araddr[3:2]),
        .inverter_axi_lite_aresetn(inverter_axi_lite_aresetn),
        .inverter_axi_lite_arvalid(inverter_axi_lite_arvalid),
        .inverter_axi_lite_awaddr(inverter_axi_lite_awaddr[3:2]),
        .inverter_axi_lite_awvalid(inverter_axi_lite_awvalid),
        .inverter_axi_lite_bready(inverter_axi_lite_bready),
        .inverter_axi_lite_bvalid(inverter_axi_lite_bvalid),
        .inverter_axi_lite_rdata(inverter_axi_lite_rdata),
        .inverter_axi_lite_rready(inverter_axi_lite_rready),
        .inverter_axi_lite_rvalid(inverter_axi_lite_rvalid),
        .inverter_axi_lite_wdata(inverter_axi_lite_wdata),
        .inverter_axi_lite_wstrb(inverter_axi_lite_wstrb),
        .inverter_axi_lite_wvalid(inverter_axi_lite_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_triangle_carrier
   (DI,
    S,
    inverter_axi_lite_aclk,
    Q);
  output [3:0]DI;
  output [3:0]S;
  input inverter_axi_lite_aclk;
  input [7:0]Q;

  wire [3:0]DI;
  wire [7:0]Q;
  wire [3:0]S;
  wire [7:0]carrier;
  wire [0:0]count0;
  wire count11_in;
  wire \count[6]_i_2_n_0 ;
  wire \count[6]_i_3_n_0 ;
  wire \count[7]_i_2_n_0 ;
  wire \count[7]_i_3_n_0 ;
  wire \count[7]_i_4_n_0 ;
  wire \count[7]_i_5_n_0 ;
  wire \count[7]_i_6_n_0 ;
  wire dp_i_1_n_0;
  wire dp_i_2_n_0;
  wire dp_reg_n_0;
  wire inverter_axi_lite_aclk;
  wire [7:1]p_0_in1_in;

  LUT4 #(
    .INIT(16'h2F02)) 
    So0_carry_i_1
       (.I0(Q[6]),
        .I1(carrier[6]),
        .I2(carrier[7]),
        .I3(Q[7]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    So0_carry_i_2
       (.I0(Q[4]),
        .I1(carrier[4]),
        .I2(carrier[5]),
        .I3(Q[5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    So0_carry_i_3
       (.I0(Q[2]),
        .I1(carrier[2]),
        .I2(carrier[3]),
        .I3(Q[3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    So0_carry_i_4
       (.I0(Q[0]),
        .I1(carrier[0]),
        .I2(carrier[1]),
        .I3(Q[1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    So0_carry_i_5
       (.I0(carrier[7]),
        .I1(Q[7]),
        .I2(carrier[6]),
        .I3(Q[6]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    So0_carry_i_6
       (.I0(carrier[5]),
        .I1(Q[5]),
        .I2(carrier[4]),
        .I3(Q[4]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    So0_carry_i_7
       (.I0(carrier[3]),
        .I1(Q[3]),
        .I2(carrier[2]),
        .I3(Q[2]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    So0_carry_i_8
       (.I0(carrier[1]),
        .I1(Q[1]),
        .I2(carrier[0]),
        .I3(Q[0]),
        .O(S[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(carrier[0]),
        .O(count0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \count[1]_i_1 
       (.I0(\count[7]_i_3_n_0 ),
        .I1(carrier[1]),
        .I2(carrier[0]),
        .O(p_0_in1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6CC9)) 
    \count[2]_i_1 
       (.I0(\count[7]_i_3_n_0 ),
        .I1(carrier[2]),
        .I2(carrier[0]),
        .I3(carrier[1]),
        .O(p_0_in1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6CCCCCC9)) 
    \count[3]_i_1 
       (.I0(\count[7]_i_3_n_0 ),
        .I1(carrier[3]),
        .I2(carrier[1]),
        .I3(carrier[0]),
        .I4(carrier[2]),
        .O(p_0_in1_in[3]));
  LUT6 #(
    .INIT(64'h6CCCCCCCCCCCCCC9)) 
    \count[4]_i_1 
       (.I0(\count[7]_i_3_n_0 ),
        .I1(carrier[4]),
        .I2(carrier[2]),
        .I3(carrier[0]),
        .I4(carrier[1]),
        .I5(carrier[3]),
        .O(p_0_in1_in[4]));
  LUT5 #(
    .INIT(32'hBFBC4043)) 
    \count[5]_i_1 
       (.I0(\count[6]_i_2_n_0 ),
        .I1(\count[7]_i_3_n_0 ),
        .I2(carrier[4]),
        .I3(\count[6]_i_3_n_0 ),
        .I4(carrier[5]),
        .O(p_0_in1_in[5]));
  LUT6 #(
    .INIT(64'hB4F0B4F0F0F0F0C3)) 
    \count[6]_i_1 
       (.I0(\count[6]_i_2_n_0 ),
        .I1(\count[7]_i_3_n_0 ),
        .I2(carrier[6]),
        .I3(carrier[4]),
        .I4(\count[6]_i_3_n_0 ),
        .I5(carrier[5]),
        .O(p_0_in1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[6]_i_2 
       (.I0(carrier[1]),
        .I1(carrier[0]),
        .I2(carrier[2]),
        .I3(carrier[3]),
        .O(\count[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[6]_i_3 
       (.I0(carrier[2]),
        .I1(carrier[0]),
        .I2(carrier[1]),
        .I3(carrier[3]),
        .O(\count[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F7F7C80808083)) 
    \count[7]_i_1 
       (.I0(\count[7]_i_2_n_0 ),
        .I1(\count[7]_i_3_n_0 ),
        .I2(carrier[6]),
        .I3(\count[7]_i_4_n_0 ),
        .I4(carrier[5]),
        .I5(carrier[7]),
        .O(p_0_in1_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count[7]_i_2 
       (.I0(carrier[5]),
        .I1(carrier[4]),
        .I2(carrier[1]),
        .I3(carrier[0]),
        .I4(carrier[2]),
        .I5(carrier[3]),
        .O(\count[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B0B0F0F0F0FF)) 
    \count[7]_i_3 
       (.I0(\count[7]_i_5_n_0 ),
        .I1(carrier[7]),
        .I2(dp_reg_n_0),
        .I3(\count[7]_i_6_n_0 ),
        .I4(\count[6]_i_3_n_0 ),
        .I5(carrier[6]),
        .O(\count[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[7]_i_4 
       (.I0(carrier[3]),
        .I1(carrier[1]),
        .I2(carrier[0]),
        .I3(carrier[2]),
        .I4(carrier[4]),
        .O(\count[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \count[7]_i_5 
       (.I0(carrier[5]),
        .I1(carrier[4]),
        .I2(carrier[3]),
        .I3(carrier[2]),
        .I4(carrier[0]),
        .I5(carrier[1]),
        .O(\count[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \count[7]_i_6 
       (.I0(carrier[7]),
        .I1(carrier[5]),
        .I2(carrier[4]),
        .O(\count[7]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(count0),
        .Q(carrier[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(p_0_in1_in[1]),
        .Q(carrier[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(p_0_in1_in[2]),
        .Q(carrier[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(p_0_in1_in[3]),
        .Q(carrier[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(p_0_in1_in[4]),
        .Q(carrier[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(p_0_in1_in[5]),
        .Q(carrier[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(p_0_in1_in[6]),
        .Q(carrier[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(p_0_in1_in[7]),
        .Q(carrier[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hCA)) 
    dp_i_1
       (.I0(dp_i_2_n_0),
        .I1(count11_in),
        .I2(dp_reg_n_0),
        .O(dp_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    dp_i_2
       (.I0(carrier[4]),
        .I1(carrier[5]),
        .I2(carrier[7]),
        .I3(\count[6]_i_3_n_0 ),
        .I4(carrier[6]),
        .O(dp_i_2_n_0));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    dp_i_3
       (.I0(\count[6]_i_2_n_0 ),
        .I1(carrier[4]),
        .I2(carrier[5]),
        .I3(carrier[6]),
        .I4(carrier[7]),
        .O(count11_in));
  FDRE #(
    .INIT(1'b1)) 
    dp_reg
       (.C(inverter_axi_lite_aclk),
        .CE(1'b1),
        .D(dp_i_1_n_0),
        .Q(dp_reg_n_0),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
