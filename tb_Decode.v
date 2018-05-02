`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:27:59 04/15/2018
// Design Name:   Decode
// Module Name:   E:/Projects/MIPS-master/tb_Decode.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decode
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_Decode;

	// Inputs
	reg [31:0] inst;
	reg [31:0] pc;

	// Outputs
	wire [4:0] opcode;
	wire immediate_bit;
	wire [31:0] branch_tgt;
	wire [3:0] rd;
	wire [3:0] rs1;
	wire [3:0] rs2;
	wire [31:0] immx;

	// Instantiate the Unit Under Test (UUT)
	Decode uut (
		.inst(inst), 
		.pc(pc), 
		.opcode(opcode), 
		.immediate_bit(immediate_bit), 
		.branch_tgt(branch_tgt), 
		.rd(rd), 
		.rs1(rs1), 
		.rs2(rs2), 
		.immx(immx)
	);

	initial begin
		// Initialize Inputs
		inst = 0;
		pc = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		inst = 32'hf23b78da;
		#500;
		
		#100;
		$finish;
        
		// Add stimulus here

	end
      
endmodule

