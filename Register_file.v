`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:25:00 12/28/2017 
// Design Name: 
// Module Name:    Register_file 
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
module Register_file(
    input [4:0] readreg_1,				//5-bits for input address
    input [4:0] readreg_2,
    input [4:0] write_add,
    input [31:0] write_dat,
	 input regwrite,
    output [31:0] regdat_1,
    output [31:0] regdat_2
    );
	reg [31:0]reg_file[15:0];         //16 registers of 32-bits
	
	always@(regwrite)
	begin
	if(regwrite == 1'b1)
	reg_file[write_add] <= write_dat;
	end
assign regdat_1 = reg_file[readreg_1];
assign regdat_2 = reg_file[readreg_2];

endmodule
