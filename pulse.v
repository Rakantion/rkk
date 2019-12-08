`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:34:15 12/08/2019 
// Design Name: 
// Module Name:    pulse 
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
module pulse(input   inp ,      input   clk,   output OUTp  ); 
 
reg delay1; 
reg delay2;
reg delay3; 
 
     always @(posedge clk)  
	  begin   
	  delay1 <=inp;
	  delay2 <= delay1; 
	  delay3 <= delay2;   
	  end    
	  assign OUTp = delay1 & delay2 & ~delay3;
	  
endmodule
