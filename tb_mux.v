`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:42:59 12/28/2017
// Design Name:   mux
// Module Name:   D:/work/fpga/MIPS/tb_mux.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_mux;

	// Inputs
	reg tb_ctrl;
	reg [31:0] tb_in0;
	reg [31:0] tb_in1;

	// Outputs
	wire [31:0] tb_out;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.ctrl(tb_ctrl), 
		.in0(tb_in0), 
		.in1(tb_in1), 
		.out(tb_out)
	);

	initial begin
		// Initialize Inputs
		tb_ctrl = 0;
		tb_in0 = 32'hffff0000;
		tb_in1 = 32'h0000ffff;

		// Wait 100 ns for global reset to finish
		#100;
      tb_ctrl = 1;
		
		#100;
		tb_ctrl = 0;
		 
		#100;
		tb_ctrl = 1;
		
		
		
	end
      
endmodule

