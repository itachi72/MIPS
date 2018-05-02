`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:05:50 04/13/2018
// Design Name:   instruction_mem
// Module Name:   E:/Projects/MIPS-master/tb_instruction_mem.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: instruction_mem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_instruction_mem;

	// Inputs
	reg [31:0] tb_pc;
	reg [31:0] tb_data;
	reg [31:0] tb_add;
	reg tb_write;

	// Outputs
	wire [31:0] tb_inst;

	// Instantiate the Unit Under Test (UUT)
	instruction_mem uut (
		.pc(tb_pc), 
		.data(tb_data), 
		.add(tb_add), 
		.inst(tb_inst),
		.write(tb_write)
	);

	initial begin
		tb_pc <= 0;
		tb_data <= 0;
		tb_add <= 0;
		tb_write <= 0;
		
		#10;											//writing to memory locations in the instruction memory.
		tb_write <= 1;
		tb_add <= 32'h0000000f;
		tb_data <= 32'hff000000;
		#50;
		tb_write = 0;
		
		#10;
		tb_write <= 1;
		tb_add <= 32'h000000f0;
		tb_data <= 32'h00ff0000;
		#50;
		tb_write <= 0;
		
		#10;										 //pc has the address of the first instruction mem location
		tb_pc <= 32'h0000000f;
		#50;
		tb_write <= 1;
		tb_data <= tb_inst;						//tb_data should have the content of the first instruction mem lcoation.
		
	end      
endmodule

