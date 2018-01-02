`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:15:25 12/28/2017 
// Design Name: 
// Module Name:    sign_extender 
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
module sign_extender( in, out
    );
	 input [15:0]in;
	 output [31:0]out;
	 assign out = (in[15] == 0) ? {16'h0000, in} : {16'hffff, in};
endmodule
