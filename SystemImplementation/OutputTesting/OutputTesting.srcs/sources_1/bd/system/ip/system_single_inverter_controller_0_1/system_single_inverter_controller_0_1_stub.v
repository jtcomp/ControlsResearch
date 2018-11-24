// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Nov 22 20:05:04 2018
// Host        : WINDOWS-A7JT9PH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GitHub/ControlsResearch/SystemImplementation/OutputTesting/OutputTesting.srcs/sources_1/bd/system/ip/system_single_inverter_controller_0_1/system_single_inverter_controller_0_1_stub.v
// Design      : system_single_inverter_controller_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z030sbg485-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "single_inverter_controller_v1_0,Vivado 2017.2" *)
module system_single_inverter_controller_0_1(L1t, L1b, inverter_axi_lite_awaddr, 
  inverter_axi_lite_awprot, inverter_axi_lite_awvalid, inverter_axi_lite_awready, 
  inverter_axi_lite_wdata, inverter_axi_lite_wstrb, inverter_axi_lite_wvalid, 
  inverter_axi_lite_wready, inverter_axi_lite_bresp, inverter_axi_lite_bvalid, 
  inverter_axi_lite_bready, inverter_axi_lite_araddr, inverter_axi_lite_arprot, 
  inverter_axi_lite_arvalid, inverter_axi_lite_arready, inverter_axi_lite_rdata, 
  inverter_axi_lite_rresp, inverter_axi_lite_rvalid, inverter_axi_lite_rready, 
  inverter_axi_lite_aclk, inverter_axi_lite_aresetn)
/* synthesis syn_black_box black_box_pad_pin="L1t,L1b,inverter_axi_lite_awaddr[3:0],inverter_axi_lite_awprot[2:0],inverter_axi_lite_awvalid,inverter_axi_lite_awready,inverter_axi_lite_wdata[31:0],inverter_axi_lite_wstrb[3:0],inverter_axi_lite_wvalid,inverter_axi_lite_wready,inverter_axi_lite_bresp[1:0],inverter_axi_lite_bvalid,inverter_axi_lite_bready,inverter_axi_lite_araddr[3:0],inverter_axi_lite_arprot[2:0],inverter_axi_lite_arvalid,inverter_axi_lite_arready,inverter_axi_lite_rdata[31:0],inverter_axi_lite_rresp[1:0],inverter_axi_lite_rvalid,inverter_axi_lite_rready,inverter_axi_lite_aclk,inverter_axi_lite_aresetn" */;
  output L1t;
  output L1b;
  input [3:0]inverter_axi_lite_awaddr;
  input [2:0]inverter_axi_lite_awprot;
  input inverter_axi_lite_awvalid;
  output inverter_axi_lite_awready;
  input [31:0]inverter_axi_lite_wdata;
  input [3:0]inverter_axi_lite_wstrb;
  input inverter_axi_lite_wvalid;
  output inverter_axi_lite_wready;
  output [1:0]inverter_axi_lite_bresp;
  output inverter_axi_lite_bvalid;
  input inverter_axi_lite_bready;
  input [3:0]inverter_axi_lite_araddr;
  input [2:0]inverter_axi_lite_arprot;
  input inverter_axi_lite_arvalid;
  output inverter_axi_lite_arready;
  output [31:0]inverter_axi_lite_rdata;
  output [1:0]inverter_axi_lite_rresp;
  output inverter_axi_lite_rvalid;
  input inverter_axi_lite_rready;
  input inverter_axi_lite_aclk;
  input inverter_axi_lite_aresetn;
endmodule
