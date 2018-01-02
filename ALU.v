`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:01:47 12/28/2017 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [31:0] a1,
    input [31:0] a2,
	 input [3:0] alu_ctrl,
	 output zero,
	 output [31:0] alu_out
    );
	 
	 reg [31:0]temp;     //this temoporarily stores the value of the alu result so that it can be manipulated
	 wire zero;				//zero flag (whenever the alu result is zero, it is SET)
	 always@(a1 or a2 or alu_ctrl)
	 case(alu_ctrl)
	 4'b0001: begin
			 temp <= a1 + a2;
			 end
	 4'b0010: begin
			 temp <= a1 - a2;
			 end
	 4'b0011: begin
			 temp <= a1 & a2;
			 end
	 4'b0100: begin
			 temp <= a1 | a2;
			 end
	 4'b0101: begin
			 temp <= ~(a1 | a2);
			 end
	 4'b0110: begin
			 if(a1 > a2)
			 temp <= 32'd0;
			 else
			 temp <= 32'd1;
			 end
	 4'b0111: begin
			 temp = a1 && a2;
			 end
   endcase
//concurrent code

assign salu_out = temp;
assgin zero = (temp == 0) ? 1'b1 : 1'b0;
endmodule
