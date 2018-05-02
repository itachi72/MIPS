`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:25:17 04/13/2018 
// Design Name: 
// Module Name:    instruction_mem 
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
module instruction_mem(
		input [31:0] pc,
		input [31:0] data,			
		input [31:0] add,
		input write,
		output [31:0]inst
		);

	reg [31:0]inst;
	reg [31:0]mem[31:0];				
					
	always@(pc)
	begin
	inst = mem[pc];						//the 32-bit instruction stored in the inst register.
	end
	
	always@(write)
	begin
	if(write == 1'b1)
	mem[add] = data;
	end

endmodule
