`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:41:33 12/28/2017
// Design Name:   MIPS
// Module Name:   D:/work/fpga/MIPS/tb_mips.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MIPS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_mips;

	// Inputs
	reg tb_clk;
	reg tb_reset;

	// Instantiate the Unit Under Test (UUT)
	MIPS M1 (
		.clk(tb_clk), 
		.reset(tb_reset)
	);

   //defining clock
	initial 
	tb_clk = 0;
	always
	begin
	#10 tb_clk = ~tb_clk;
	end
	
	initial
	#500 $finish;
	
	initial begin
		// Initialize Inputs

		// Wait 100 ns for global reset to finish
		#500;
        
		
		$finish;

	end
      
endmodule

