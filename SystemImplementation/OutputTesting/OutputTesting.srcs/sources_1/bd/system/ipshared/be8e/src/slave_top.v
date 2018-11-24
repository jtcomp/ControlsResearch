`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:13:06 05/07/2013 
// Design Name: 
// Module Name:    slave_top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module slave_top(        
	    CLK, 
	    ARESET_ActLow,
		L1t, L1b,
		L1Duty
		);
	 
	 parameter 
			NUM_FROM_MASTER = 6'd21,
			NUM_TO_MASTER = 6'd19,
			REG_SIZE = 8;
	
	input wire CLK, ARESET_ActLow;
	input wire [7:0] L1Duty;
	wire [7:0] carrier;
	
//////////////////////////////////////		
//DATA BUS
//	input	rst, dclk; 	
//	output wire [23:0] data_to_master;
//	input wire [7:0] data_from_master;
	
//	wire [NUM_FROM_MASTER*8-1:0] regs_from_master;
//	wire [NUM_TO_MASTER*8-1:0] regs_to_master;		
//	wire [14:0] error_count;
//	wire last_valid;	
		
//	external_data_interface #(.NUM_INPUTS(NUM_TO_MASTER), .NUM_OUTPUTS(NUM_FROM_MASTER)) slave (data_from_master, data_to_master, rst, dclk, 					
//					regs_to_master, regs_from_master, CLK, 1'b1, error_count, last_valid);
	
//	reg [7:0] scratch_pad;	//scratch pad, just reflected back to the master
//	always @ (posedge CLK)
//		scratch_pad <= regs_from_master[NUM_FROM_MASTER*REG_SIZE-1:(NUM_FROM_MASTER-1)*REG_SIZE];
//	assign regs_to_master [NUM_TO_MASTER*REG_SIZE-1:(NUM_TO_MASTER-1)*REG_SIZE] = scratch_pad;
//////////////////////////////////////			
//	reg pwm_sync_adc_clk = 0;	


//////////////////////////////////////		
	//PWM and switching logic	
	output wire L1t, L1b;
	wire [7:0] D_L[0:0];
	wire sL[19:0];
	
	assign D_L[0] = L1Duty; //50% duty ratio??
	
	//carrier	
	triangle_carrier gen_carrier (CLK, 1'b1, 8'd0, carrier);
	
	//pwm
	pwm_gen_var pwmL1 (CLK, 1'b1, carrier, D_L[0], sL[0]);
	
	single_leg_switch leg1 (CLK, sL[0], L1t, L1b);	
	
endmodule
