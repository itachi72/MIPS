`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:52:58 04/15/2018 
// Design Name: 
// Module Name:    mux_3 
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
module mux_3( input [31:0]in_pc,
			input [31:0]in_mem,
			input [31:0]in_alu,
			input isLd,
			input isCall,
			output [31:0]data
    );
	reg [1:0]sel;
	always@(isLd or isCall)
	begin
	sel = {isLd , isCall};
	end
	
	assign data = (sel==2'b10)?in_pc:((sel==2'b01)?in_mem:in_alu);
	
endmodule
