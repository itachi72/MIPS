`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:35:51 04/15/2018
// Design Name:   control_unit
// Module Name:   E:/Projects/MIPS-master/tb_control_unit.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: control_unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_control_unit;

	// Inputs
	reg [4:0] opcode;
	reg imm;

	// Outputs
	wire isSt;
	wire isLd;
	wire isBeq;
	wire isBgt;
	wire isRet;
	wire isImmediate;
	wire isWb;
	wire isUBranch;
	wire isCall;
	wire isAdd;
	wire isSub;
	wire isCmp;
	wire isMul;
	wire isDiv;
	wire isMod;
	wire isLsl;
	wire isLsr;
	wire isAsr;
	wire isOr;
	wire isAnd;
	wire isNot;
	wire isMov;

	// Instantiate the Unit Under Test (UUT)
	control_unit uut (
		.opcode(opcode), 
		.imm(imm), 
		.isSt(isSt), 
		.isLd(isLd), 
		.isBeq(isBeq), 
		.isBgt(isBgt), 
		.isRet(isRet), 
		.isImmediate(isImmediate), 
		.isWb(isWb), 
		.isUBranch(isUBranch), 
		.isCall(isCall), 
		.isAdd(isAdd), 
		.isSub(isSub), 
		.isCmp(isCmp), 
		.isMul(isMul), 
		.isDiv(isDiv), 
		.isMod(isMod), 
		.isLsl(isLsl), 
		.isLsr(isLsr), 
		.isAsr(isAsr), 
		.isOr(isOr), 
		.isAnd(isAnd), 
		.isNot(isNot), 
		.isMov(isMov)
	);

	initial begin
		opcode = 0;
		imm = 0;
		
		#100;
		opcode = 5'b11111;
		
		#100;
		opcode = 5'b00001;						//subtract
		
		#100;
		opcode = 5'b00010;						//multiplication
		
		#100;
		opcode = 5'b10000;						//branch-equal
		
		#100;
		opcode = 5'b01111;						//store
		
		#100;
		opcode = 5'b10100;						//return
		
		#1000;
		$finish;

	end
      
endmodule

