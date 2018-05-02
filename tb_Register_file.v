`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:16:48 01/02/2018
// Design Name:   Register_file
// Module Name:   D:/work/fpga/MIPS/tb_Register_file.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register_file
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_Register_file;
	// Inputs
	reg [4:0] tb_readreg_1;
	reg [4:0] tb_readreg_2;
	reg [4:0] tb_write_add;
	reg [31:0] tb_write_dat;
	reg tb_regwrite;
   integer i=0;
	// Outputs
	wire [31:0] tb_regdat_1;
		wire [31:0] tb_regdat_2;

	// Instantiate the Unit Under Test (UUT)
	Register_file U1_reg (
		.readreg_1(tb_readreg_1), 
		.readreg_2(tb_readreg_2), 
		.write_add(tb_write_add), 
		.write_dat(tb_write_dat), 
		.regwrite(tb_regwrite), 
		.regdat_1(tb_regdat_1), 
		.regdat_2(tb_regdat_2)
	);

	initial begin
		tb_regwrite = 1'b0;
		#20;
		tb_write_add = 5'b00001;				//1st register to be written to.
		tb_write_dat = 32'h0000000f;
		tb_regwrite = 1'b1;
		#100;
		
		tb_regwrite = 0;
		#20;
		tb_write_add = 5'b00010;			  //2nd register to be written to.
		tb_write_dat = 32'h000000f0;
		tb_regwrite = 1;
		#100;
		
		tb_regwrite = 0;
		#20;
		tb_readreg_1 = 5'b00001;
		tb_readreg_2 = 5'b00010;
		
		#300;
		tb_readreg_1 = 5'b00011;
		
		#100;
		$finish;
	end     
endmodule

