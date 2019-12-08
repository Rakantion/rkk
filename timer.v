`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:59:45 12/08/2019 
// Design Name: 
// Module Name:    timer 
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
module timer(input [3:0]a,b, input sw, outpb,slowclk, output reg[3:0]a1,b1
    );
	 
	//pbcounter g11(outpb,clk ,count );
	always @ (posedge slowclk)
		begin
			
			if(sw==1 && outpb==1)
				begin
					a1=a;
					b1=b;
							a1=a1-1;
							if(a==0)
								b1=b1-1;
						end
					

		end
	

endmodule
