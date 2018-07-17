`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:17:09 03/06/2018 
// Design Name: 
// Module Name:    PC 
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
module PC(PCSrc_Out,PCout, clock);
		input [63:0] PCSrc_Out;
		input clock; // the clock to triger write
		output reg [63:0] PCout;
		
		wire [63:0] PCin;
		
		initial 
		begin
		PCout = 0;
		end
		
		assign PCin = PCSrc_Out;
		
		always@(posedge clock) begin
		PCout <= PCin;
		end
		
		
		
endmodule
