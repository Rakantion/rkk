`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:58:03 12/08/2019 
// Design Name: 
// Module Name:    seg7 
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
module seg7(input [3:0] x ,output En,output reg [6:0] a_to_g );
	always @(*)
		case(x)
			0: a_to_g = 7'b1111110;
			1: a_to_g = 7'b0110000;
			2: a_to_g = 7'b1101101;
			3: a_to_g = 7'b1111001;
			4: a_to_g = 7'b0110011;
			5: a_to_g = 7'b1011011;
			6: a_to_g = 7'b1011111;
			7: a_to_g = 7'b1110000;
			8: a_to_g = 7'b1111111;
			9: a_to_g = 7'b1111011;
			
			default: a_to_g = 7'b1111110; // 0
		endcase
	assign En = 1'b0 ; // ‘0’ for enable ‘1’ for disable


endmodule



