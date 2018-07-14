`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:58:44 03/18/2018 
// Design Name: 
// Module Name:    PCSrc 
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
module PCSrc(PR3,PCSrc_Out,AdderOut);
	input [499:0] PR3;
	input [63:0] AdderOut;
	wire [63:0] ALUBranch_Out4;
	wire Zero4,Branch4;
	wire PCSrc4;
	output reg [63:0] PCSrc_Out;
	
	assign Zero4 = PR3[360];
	assign Branch4 = PR3[99];
	
	//assign PCSrc4 = Zero4 & Branch4;
	assign PCSrc4 = 0;

	
	assign ALUBranch_Out4 = PR3[359:296];
	
	
always @* begin
case(PCSrc4)
0: begin
   PCSrc_Out <= AdderOut;
	end
	
1: begin
	PCSrc_Out <= ALUBranch_Out4;
	end

endcase
end
	
endmodule
