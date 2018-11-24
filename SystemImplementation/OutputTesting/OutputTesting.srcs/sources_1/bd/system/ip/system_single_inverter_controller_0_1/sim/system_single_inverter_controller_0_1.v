// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:single_inverter_controller:1.0
// IP Revision: 3

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_single_inverter_controller_0_1 (
  L1t,
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
  inverter_axi_lite_aresetn
);

output wire L1t;
output wire L1b;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE AWADDR" *)
input wire [3 : 0] inverter_axi_lite_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE AWPROT" *)
input wire [2 : 0] inverter_axi_lite_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE AWVALID" *)
input wire inverter_axi_lite_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE AWREADY" *)
output wire inverter_axi_lite_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE WDATA" *)
input wire [31 : 0] inverter_axi_lite_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE WSTRB" *)
input wire [3 : 0] inverter_axi_lite_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE WVALID" *)
input wire inverter_axi_lite_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE WREADY" *)
output wire inverter_axi_lite_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE BRESP" *)
output wire [1 : 0] inverter_axi_lite_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE BVALID" *)
output wire inverter_axi_lite_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE BREADY" *)
input wire inverter_axi_lite_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE ARADDR" *)
input wire [3 : 0] inverter_axi_lite_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE ARPROT" *)
input wire [2 : 0] inverter_axi_lite_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE ARVALID" *)
input wire inverter_axi_lite_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE ARREADY" *)
output wire inverter_axi_lite_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE RDATA" *)
output wire [31 : 0] inverter_axi_lite_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE RRESP" *)
output wire [1 : 0] inverter_axi_lite_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE RVALID" *)
output wire inverter_axi_lite_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 Inverter_AXI_LITE RREADY" *)
input wire inverter_axi_lite_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Inverter_AXI_LITE_CLK CLK, xilinx.com:signal:clock:1.0 inverter_axi_lite_aclk CLK" *)
input wire inverter_axi_lite_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Inverter_AXI_LITE_RST RST, xilinx.com:signal:reset:1.0 inverter_axi_lite_aresetn RST" *)
input wire inverter_axi_lite_aresetn;

  single_inverter_controller_v1_0 #(
    .C_Inverter_AXI_LITE_DATA_WIDTH(32),  // Width of S_AXI data bus
    .C_Inverter_AXI_LITE_ADDR_WIDTH(4)  // Width of S_AXI address bus
  ) inst (
    .L1t(L1t),
    .L1b(L1b),
    .inverter_axi_lite_awaddr(inverter_axi_lite_awaddr),
    .inverter_axi_lite_awprot(inverter_axi_lite_awprot),
    .inverter_axi_lite_awvalid(inverter_axi_lite_awvalid),
    .inverter_axi_lite_awready(inverter_axi_lite_awready),
    .inverter_axi_lite_wdata(inverter_axi_lite_wdata),
    .inverter_axi_lite_wstrb(inverter_axi_lite_wstrb),
    .inverter_axi_lite_wvalid(inverter_axi_lite_wvalid),
    .inverter_axi_lite_wready(inverter_axi_lite_wready),
    .inverter_axi_lite_bresp(inverter_axi_lite_bresp),
    .inverter_axi_lite_bvalid(inverter_axi_lite_bvalid),
    .inverter_axi_lite_bready(inverter_axi_lite_bready),
    .inverter_axi_lite_araddr(inverter_axi_lite_araddr),
    .inverter_axi_lite_arprot(inverter_axi_lite_arprot),
    .inverter_axi_lite_arvalid(inverter_axi_lite_arvalid),
    .inverter_axi_lite_arready(inverter_axi_lite_arready),
    .inverter_axi_lite_rdata(inverter_axi_lite_rdata),
    .inverter_axi_lite_rresp(inverter_axi_lite_rresp),
    .inverter_axi_lite_rvalid(inverter_axi_lite_rvalid),
    .inverter_axi_lite_rready(inverter_axi_lite_rready),
    .inverter_axi_lite_aclk(inverter_axi_lite_aclk),
    .inverter_axi_lite_aresetn(inverter_axi_lite_aresetn)
  );
endmodule
