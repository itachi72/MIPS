`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:21:15 04/15/2018
// Design Name:   mux_3
// Module Name:   E:/Projects/MIPS-master/tb_mux3.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_mux3;

	// Inputs
	reg [31:0] in_pc;
	reg [31:0] in_mem;
	reg [31:0] in_alu;
	reg isLd;
	reg isCall;

	// Outputs
	wire [31:0] data;

	// Instantiate the Unit Under Test (UUT)
	mux_3 uut (
		.in_pc(in_pc), 
		.in_mem(in_mem), 
		.in_alu(in_alu), 
		.isLd(isLd), 
		.isCall(isCall), 
		.data(data)
	);

	initial begin
		// Initialize Inputs
		in_pc = 0;
		in_mem = 0;
		in_alu = 0;
		isLd = 0;
		isCall = 0;

		// Wait 100 ns for global reset to finish
		#100;
      in_pc = 32'hff000000;
		in_mem = 32'h00ff0000;
		in_alu = 32'h0000ff00;
		isLd = 1'b0;
		isCall = 1'b0;
		#300;
		
		isLd = 1'b1;
		isCall = 1'b0;
		#300;
		
		isLd = 1'b0;
		isCall = 1'b1;
		#300;
		
		#100;
		$finish;
	end
      
endmodule

