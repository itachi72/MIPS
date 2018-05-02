`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:37:14 12/28/2017
// Design Name:   ALU
// Module Name:   D:/work/fpga/MIPS/tb_alu.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_alu;

	// Inputs
	reg [31:0] tb_a1;
	reg [31:0] tb_a2;
	reg [3:0] tb_alu_ctrl;

	// Outputs
	wire tb_zero;
	wire [31:0] tb_alu_out;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.a1(tb_a1), 
		.a2(tb_a2), 
		.alu_ctrl(tb_alu_ctrl), 
		.zero(tb_zero), 
		.alu_out(tb_alu_out)
	);

	initial begin
		// Initialize Inputs
		tb_a1 = 32'd0010;
		tb_a2 = 32'd0001;
		tb_alu_ctrl = 0;
		
		#100;
		// Wait 100 ns for global reset to finish
		#50 tb_alu_ctrl <= 4'b0001;       //add
      #50 tb_alu_ctrl <= 4'b0010;  		 //sub
      #50 tb_alu_ctrl <= 4'b0011;		 //and
      #50 tb_alu_ctrl <= 4'b0100;		 //or
      #50 tb_alu_ctrl <= 4'b0101;		 //nor
		#50 tb_alu_ctrl <= 4'b0110;       //compare
      #50 tb_alu_ctrl <= 4'b0111;       //bitwise or
		
		#100;
		$finish;
  
	end
      
endmodule

