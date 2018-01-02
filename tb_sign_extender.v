`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:22:36 12/28/2017
// Design Name:   sign_extender
// Module Name:   D:/work/fpga/MIPS/tb_sign_extender.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sign_extender
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_sign_extender;

	// Inputs
	reg [15:0] in;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	sign_extender uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
      in = 16'hffff;
		
		#100;
		in = 16'h0fff;

	end
      
endmodule

