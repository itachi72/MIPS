`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:52:52 04/15/2018 
// Design Name: 
// Module Name:    control_unit 
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
module control_unit(input [5:1]opcode,	//this is a hardwired control unit, hence it's fast
		input imm,
		output isSt,
		output isLd,
		output isBeq,
		output isBgt,
		output isRet,
		output isImmediate,					//immediate bit set to one.
		output isWb,							//for mathematical/logical and data transfer instructions.
		output isUBranch,						//for instructions b, call, ret
		output isCall,
		output isAdd,
		output isSub,
		output isCmp,
		output isMul,							//will implement karatsuba later.
		output isDiv,							//will implement using basic subtraction technique (or maybe microinstructions)
		output isMod,							//same as division
		output isLsl,
		output isLsr,
		output isAsr,
		output isOr,
		output isAnd,
		output isNot,
		output isMov
		);
		//this is the worst piece of code i've to write (if u're reading this, just ignore this BS code (-_-)
		assign isSt = !opcode[5] && opcode[4] && opcode[3] && opcode[2] && opcode[1];
		assign isLd = !opcode[5] && opcode[4] && opcode[3] && opcode[2] && !opcode[1];
		assign isBeq = opcode[5] && !opcode[4] && !opcode[3] && !opcode[2] && !opcode[1];
		assign isBgt = opcode[5] && !opcode[4] && !opcode[3] && !opcode[2] && !opcode[1];
		assign isRet = opcode[5] && !opcode[4] && opcode[3] && !opcode[2] && !opcode[1];
		assign isImmediate = imm;
		assign isWb = !(opcode[5] + !opcode[5] && opcode[3] && opcode[1] && (opcode[4] + !opcode[2])) //i hate this signal
							+ (opcode[5] && !opcode[4] && !opcode[3] && opcode[2] && opcode[1]);
		assign isUBranch = opcode[5] && !opcode[4] && (!opcode[3] && opcode[2] + opcode[3] && !opcode[2] && !opcode[1]);
		assign isCall = opcode[5] && !opcode[4] && !opcode[3] && opcode[2] && opcode[1];
		assign isAdd = !opcode[5] && !opcode[4] && !opcode[3] && !opcode[2] && !opcode[1] 
							+ !opcode[5] && opcode[4] && opcode[3] && opcode[2];
		assign isSub = !opcode[5] && !opcode[4] && !opcode[3] && !opcode[2] && opcode[1];
		assign isCmp = !opcode[5] && !opcode[4] && opcode[3] && !opcode[2] && opcode[1];
		assign isMul = !opcode[5] && !opcode[4] && !opcode[3] && opcode[2] && !opcode[1];
		assign isDiv = !opcode[5] && !opcode[4] && !opcode[3] && opcode[2] && opcode[1];
		assign isMod = !opcode[5] && !opcode[4] && opcode[3] && !opcode[2] && !opcode[1];
		assign isLsl = !opcode[5] && opcode[4] && !opcode[3] && opcode[2] && !opcode[1];
		assign isLsr = !opcode[5] && opcode[4] && !opcode[3] && opcode[2] && opcode[1];
		assign isAsr = !opcode[5] && opcode[4] && opcode[3] && !opcode[2] && !opcode[1];
		assign isOr = !opcode[5] && !opcode[4] && opcode[3] && opcode[2] && opcode[1];
		assign isAnd = !opcode[5] && !opcode[4] && opcode[3] && opcode[2] && !opcode[1];
		assign isNot = !opcode[5] && opcode[4] && !opcode[3] && !opcode[2] && !opcode[1];
		assign isMov = !opcode[5] && opcode[4] && !opcode[3] && !opcode[2] && opcode[1];

endmodule
