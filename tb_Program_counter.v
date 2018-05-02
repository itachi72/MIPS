`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:18:27 04/16/2018
// Design Name:   Program_counter
// Module Name:   E:/Projects/MIPS-master/tb_Program_counter.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Program_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_Program_counter;

	reg tb_clk;
	reg [31:0] tb_pc_i;

	wire [31:0] tb_pc;

	Program_counter uut (
		.clk(tb_clk), 
		.pc_i(tb_pc_i), 
		.pc(tb_pc)
	);

	initial begin
		tb_clk = 0;
		tb_pc_i = 0;
		end
		always #10 tb_clk = ~tb_clk;
		
endmodule

