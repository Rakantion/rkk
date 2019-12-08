`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:06:04 12/08/2019 
// Design Name: 
// Module Name:    push2 
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
module push2(input clk, pb,sw1,output count);//,output [6:0]s0,s1,output en0,en1
	 
	wire outpb;

	pulse g8(pb ,clk,outpb  );
	pbcounter g9(outpb,clk ,count );

	
	//seg7 g3(a1,en0,s0);
	//seg7 g4(b1,en1,s1);
endmodule
