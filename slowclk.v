`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:56:13 12/08/2019 
// Design Name: 
// Module Name:    slowclk 
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
module slowclk(input fastclk, sw, output reg slowclk );

reg [25:0] period_count=0; 
reg [26:0] period_count1=0; 

always @ (posedge fastclk) 
	begin 
	if(sw==0)
		begin
			period_count<=period_count+1'b1; 

			slowclk=period_count[25];
		end
	else
		begin	
			period_count<=period_count+1'b1; 

			slowclk=period_count1[26];
		end
		
		end

 
endmodule
