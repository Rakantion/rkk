`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:09:12 12/08/2019 
// Design Name: 
// Module Name:    pbcounter 
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
module pbcounter(input B,clk ,output reg count=0 );

wire BC;

pulse G1 (     B,       clk,   BC);




always @ (posedge BC)
begin 

count <= count+1'b1;

end

    


endmodule
