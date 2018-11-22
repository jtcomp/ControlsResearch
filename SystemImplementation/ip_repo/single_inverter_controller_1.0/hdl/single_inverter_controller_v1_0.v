
`timescale 1 ns / 1 ps

	module single_inverter_controller_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface Inverter_AXI_LITE
		parameter integer C_Inverter_AXI_LITE_DATA_WIDTH	= 32,
		parameter integer C_Inverter_AXI_LITE_ADDR_WIDTH	= 4
	)
	(
		// Users to add ports here
		
		output wire L1t, L1b,

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface Inverter_AXI_LITE
		input wire  inverter_axi_lite_aclk,
		input wire  inverter_axi_lite_aresetn,
		input wire [C_Inverter_AXI_LITE_ADDR_WIDTH-1 : 0] inverter_axi_lite_awaddr,
		input wire [2 : 0] inverter_axi_lite_awprot,
		input wire  inverter_axi_lite_awvalid,
		output wire  inverter_axi_lite_awready,
		input wire [C_Inverter_AXI_LITE_DATA_WIDTH-1 : 0] inverter_axi_lite_wdata,
		input wire [(C_Inverter_AXI_LITE_DATA_WIDTH/8)-1 : 0] inverter_axi_lite_wstrb,
		input wire  inverter_axi_lite_wvalid,
		output wire  inverter_axi_lite_wready,
		output wire [1 : 0] inverter_axi_lite_bresp,
		output wire  inverter_axi_lite_bvalid,
		input wire  inverter_axi_lite_bready,
		input wire [C_Inverter_AXI_LITE_ADDR_WIDTH-1 : 0] inverter_axi_lite_araddr,
		input wire [2 : 0] inverter_axi_lite_arprot,
		input wire  inverter_axi_lite_arvalid,
		output wire  inverter_axi_lite_arready,
		output wire [C_Inverter_AXI_LITE_DATA_WIDTH-1 : 0] inverter_axi_lite_rdata,
		output wire [1 : 0] inverter_axi_lite_rresp,
		output wire  inverter_axi_lite_rvalid,
		input wire  inverter_axi_lite_rready
	);
// Instantiation of Axi Bus Interface Inverter_AXI_LITE
	single_inverter_controller_v1_0_Inverter_AXI_LITE # ( 
		.C_S_AXI_DATA_WIDTH(C_Inverter_AXI_LITE_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_Inverter_AXI_LITE_ADDR_WIDTH)
	) single_inverter_controller_v1_0_Inverter_AXI_LITE_inst (
	    .L1t(L1t),
	    .L1b(L1b),
		.S_AXI_ACLK(inverter_axi_lite_aclk),
		.S_AXI_ARESETN(inverter_axi_lite_aresetn),
		.S_AXI_AWADDR(inverter_axi_lite_awaddr),
		.S_AXI_AWPROT(inverter_axi_lite_awprot),
		.S_AXI_AWVALID(inverter_axi_lite_awvalid),
		.S_AXI_AWREADY(inverter_axi_lite_awready),
		.S_AXI_WDATA(inverter_axi_lite_wdata),
		.S_AXI_WSTRB(inverter_axi_lite_wstrb),
		.S_AXI_WVALID(inverter_axi_lite_wvalid),
		.S_AXI_WREADY(inverter_axi_lite_wready),
		.S_AXI_BRESP(inverter_axi_lite_bresp),
		.S_AXI_BVALID(inverter_axi_lite_bvalid),
		.S_AXI_BREADY(inverter_axi_lite_bready),
		.S_AXI_ARADDR(inverter_axi_lite_araddr),
		.S_AXI_ARPROT(inverter_axi_lite_arprot),
		.S_AXI_ARVALID(inverter_axi_lite_arvalid),
		.S_AXI_ARREADY(inverter_axi_lite_arready),
		.S_AXI_RDATA(inverter_axi_lite_rdata),
		.S_AXI_RRESP(inverter_axi_lite_rresp),
		.S_AXI_RVALID(inverter_axi_lite_rvalid),
		.S_AXI_RREADY(inverter_axi_lite_rready)
	);

	// Add user logic here
	
	

	// User logic ends

	endmodule
