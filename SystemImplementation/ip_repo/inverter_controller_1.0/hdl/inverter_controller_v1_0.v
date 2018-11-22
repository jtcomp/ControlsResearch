
`timescale 1 ns / 1 ps

	module inverter_controller_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface Inverter_AXI
		parameter integer C_Inverter_AXI_DATA_WIDTH	= 32,
		parameter integer C_Inverter_AXI_ADDR_WIDTH	= 5
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface Inverter_AXI
		input wire  inverter_axi_aclk,
		input wire  inverter_axi_aresetn,
		input wire [C_Inverter_AXI_ADDR_WIDTH-1 : 0] inverter_axi_awaddr,
		input wire [2 : 0] inverter_axi_awprot,
		input wire  inverter_axi_awvalid,
		output wire  inverter_axi_awready,
		input wire [C_Inverter_AXI_DATA_WIDTH-1 : 0] inverter_axi_wdata,
		input wire [(C_Inverter_AXI_DATA_WIDTH/8)-1 : 0] inverter_axi_wstrb,
		input wire  inverter_axi_wvalid,
		output wire  inverter_axi_wready,
		output wire [1 : 0] inverter_axi_bresp,
		output wire  inverter_axi_bvalid,
		input wire  inverter_axi_bready,
		input wire [C_Inverter_AXI_ADDR_WIDTH-1 : 0] inverter_axi_araddr,
		input wire [2 : 0] inverter_axi_arprot,
		input wire  inverter_axi_arvalid,
		output wire  inverter_axi_arready,
		output wire [C_Inverter_AXI_DATA_WIDTH-1 : 0] inverter_axi_rdata,
		output wire [1 : 0] inverter_axi_rresp,
		output wire  inverter_axi_rvalid,
		input wire  inverter_axi_rready
	);
// Instantiation of Axi Bus Interface Inverter_AXI
	inverter_controller_v1_0_Inverter_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_Inverter_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_Inverter_AXI_ADDR_WIDTH)
	) inverter_controller_v1_0_Inverter_AXI_inst (
		.S_AXI_ACLK(inverter_axi_aclk),
		.S_AXI_ARESETN(inverter_axi_aresetn),
		.S_AXI_AWADDR(inverter_axi_awaddr),
		.S_AXI_AWPROT(inverter_axi_awprot),
		.S_AXI_AWVALID(inverter_axi_awvalid),
		.S_AXI_AWREADY(inverter_axi_awready),
		.S_AXI_WDATA(inverter_axi_wdata),
		.S_AXI_WSTRB(inverter_axi_wstrb),
		.S_AXI_WVALID(inverter_axi_wvalid),
		.S_AXI_WREADY(inverter_axi_wready),
		.S_AXI_BRESP(inverter_axi_bresp),
		.S_AXI_BVALID(inverter_axi_bvalid),
		.S_AXI_BREADY(inverter_axi_bready),
		.S_AXI_ARADDR(inverter_axi_araddr),
		.S_AXI_ARPROT(inverter_axi_arprot),
		.S_AXI_ARVALID(inverter_axi_arvalid),
		.S_AXI_ARREADY(inverter_axi_arready),
		.S_AXI_RDATA(inverter_axi_rdata),
		.S_AXI_RRESP(inverter_axi_rresp),
		.S_AXI_RVALID(inverter_axi_rvalid),
		.S_AXI_RREADY(inverter_axi_rready)
	);

	// Add user logic here

	// User logic ends

	endmodule
