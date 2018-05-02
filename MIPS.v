`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neelkamal Semwal
// 
// Create Date:    16:26:35 04/15/2018 
// Design Name: 
// Module Name:    MIPS 
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
module MIPS(input clk,
		input rst
    );
	 Decode D1 (.inst(inst), .pc(pc), .opcode(opcode), .immediate_bit(immediate_bit), 
		.branch_tgt(branch_tgt), .rd(rd), .rs1(rs1), .rs2(rs2), .immx(immx));	//1
		
	 Program_counter PC1(.clk(clk), .reset(rst), .pc_i(pc_i), .pc(pc));		//2
	 
	 sign_extender SE1 (.in(in), .out(out));										//3
	 
	 Register_file RF1 (.readreg_1(tb_readreg_1), .readreg_2(tb_readreg_2), .write_add(tb_write_add), 
		.write_dat(tb_write_dat), .regwrite(tb_regwrite), .regdat_1(tb_regdat_1), .regdat_2(tb_regdat_2));		//4
		
	 ALU A1 (.a1(tb_a1), .a2(tb_a2), .alu_ctrl(tb_alu_ctrl), .zero(tb_zero), .alu_out(tb_alu_out));			 //5
	 
	 control_unit CU1 (.opcode(opcode), .imm(imm), .isSt(isSt), .isLd(isLd), .isBeq(isBeq), .isBgt(isBgt), 
		.isRet(isRet), .isImmediate(isImmediate), .isWb(isWb), .isUBranch(isUBranch), .isCall(isCall), 
		.isAdd(isAdd), .isSub(isSub), .isCmp(isCmp), .isMul(isMul), .isDiv(isDiv), .isMod(isMod), .isLsl(isLsl), 
		.isLsr(isLsr), .isAsr(isAsr), .isOr(isOr), .isAnd(isAnd), .isNot(isNot), .isMov(isMov));					//6
		
	 instruction_mem IM1 (.pc(tb_pc), .data(tb_data), .add(tb_add), 
		.inst(tb_inst),.write(tb_write));												//7
		
	 mux MX1 (.ctrl(tb_ctrl), .in0(tb_in0), .in1(tb_in1), .out(tb_out));		//8
	
	 mux_3 MX3 (.in_pc(in_pc), .in_mem(in_mem), .in_alu(in_alu), .isLd(isLd), 
		.isCall(isCall), .data(data));													//9
	
endmodule
