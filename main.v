`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:24:50 12/08/2019 
// Design Name: 
// Module Name:    main 
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
module main(input [3:0]z,input clk,pb0,pb1,sw,sw1,output en0,en1,output[3:0]a,b, output count,outpb0,outpb1,slowclk,output [6:0]s0,s1  );
																						
	//wire [3:0]a,b;
	push1 g1(z,sw,clk,pb0,a,b,outpb0);//,s0,s1,en0,en1
	//switch g9(a,b,a1,b1);
	slowclk g6(clk,sw1,slowclk);
	push2 g7(clk, pb1,sw1,outpb1);//,s0,s1,en0,en1
	timer g10 (z,sw,outpb1,slowclk,a1,b1);
	
	
	
	seg7 g3(a1,en0,s0);
	seg7 g4(b1,en1,s1);
	
	

	
endmodule
