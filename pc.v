`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:27:55 04/15/2018 
// Design Name: 
// Module Name:    Program_counter 
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
module Program_counter(
	 input clk,
	 input reset,
    input [31:0] pc_i,
	 output [31:0]pc
    );
	reg [31:0]pc;
	reg [31:0]pc_temp;
	
	always@(*)						//this will store the value of pc_i
	pc_temp = pc_i;
	
	always@(posedge clk)
	begin
	if(reset)
	pc = 0;
	else
	begin pc = pc_temp + 32'd4;
	pc_temp = pc;
	end
	end

endmodule
