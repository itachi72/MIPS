`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:25:04 12/28/2017 
// Design Name: 
// Module Name:    mux 
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

module mux(ctrl, in0, in1, out
    );
	 parameter N=32;
	 input ctrl;
	 input [N-1:0]in0, in1;
	 output [N-1:0]out;
	 assign out = (ctrl==0) ? in0 : in1;
endmodule
