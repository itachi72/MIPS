`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:44:04 04/13/2018 
// Design Name: 
// Module Name:    Decode 
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
module Decode(input [31:0]inst,
		input [31:0] pc,
		output [4:0] opcode, 
		output immediate_bit,							//27th-bit
		output [31:0] branch_tgt,				//actual branch target
		output [3:0] rd,							//destination resistor
		output [3:0] rs1,							//source resistors
		output [3:0] rs2,
		output [31:0] immx						//the modified immediate value (using bits 17 and 18).
    );
	
	reg [15:0]imm;									//immediate value for operand
	reg [28:0]b_imm;								//branch immediate value
	reg [1:0] uh;
	assign opcode = inst[31:27];				//this will be input to the control unit.
	assign immediate_bit = inst[26];		
	assign immediate = inst[26:0];
	assign rd = inst[26:23];
	assign rs1 = inst[22:19];
	assign rs2 = inst[18:15];
	
	always@(inst)
	begin
	imm = inst[15:0];
	uh = inst[17:16];
	end
	assign immx = 2'b10 ? {16'd0, imm} : imm<<16;
	
	always@(inst)
	begin
	b_imm = inst[27:1]<<2;
	end
	
	assign branch_tgt = b_imm + pc;
	
endmodule
