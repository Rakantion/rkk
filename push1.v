`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:32:15 12/08/2019 
// Design Name: 
// Module Name:    push1 
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
module push1(input [3:0]z,input sw,clk,input pb, output reg[3:0]a,b, output  count);  //,output [6:0]s0,s1,output en0,en1

	
	wire outpb;
	pulse g2(pb ,clk,outpb  );
	pbcounter g5(outpb,clk ,count );
		always @ (*)
		begin 
		
		if(sw==0)
			begin
				if(count==0)
					a=z;
				else
					b=z;
			end
		else
			begin
				a=a;
				b=b;
			end
			
		end
	

	//seg7 g3(a,en0,s0);
	//seg7 g4(b,en1,s1);


endmodule
