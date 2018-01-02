`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:24:44 12/28/2017 
// Design Name: 
// Module Name:    MIPS 
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
module MIPS(
    input clk,
    input reset
    );

wire [15:0]sign_in = 16'hf145;
wire [31:0]sign_out = 32'h00000000;
wire [31:0]reg2 = 32'h3f573921;
wire mux_ctrl = 0; 
wire [31:0]mux_out;
//instantiated a ALU Source mux
mux u1 (
		.ctrl(mux_ctrl), 
		.in0(reg2), 
		.in1(sign_out), 
		.out(mux_out)
	);
//instantiated a sign extender
sign_extender u2 (
		.in(sign_in), 
		.out(sign_out)
	);
endmodule
