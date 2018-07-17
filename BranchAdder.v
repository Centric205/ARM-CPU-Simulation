`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:14:51 03/18/2018 
// Design Name: 
// Module Name:    BranchAdder 
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
module BranchAdder(PR2, ALUBranch_Out3);
		input [499:0] PR2;
		wire [63:0] PCout3;
		wire [63:0] SEoutBranch;
		wire [63:0] ShiftLeft2;
		output [63:0] ALUBranch_Out3;
		
		assign PCout3 = PR2[95:32];
		assign SEoutBranch = PR2[295:232];
		
		assign ShiftLeft2 = SEoutBranch << 2;
		assign ALUBranch_Out3 = PCout3+ShiftLeft2;

endmodule
