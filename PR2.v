`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:15:53 04/18/2018 
// Design Name: 
// Module Name:    PR2 
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
module PR2(PR1, PR2, Data1, Data2, SEout2, clock, 
			ALUSrc2, Branch2, MemRead2,MemWrite2,MemtoReg2,RegWrite2,ALUOp2);
		input clock;
		input [499:0] PR1;
		input [63:0] Data1, Data2, SEout2;
		
		output reg [499:0] PR2;
		
		input ALUSrc2, Branch2, MemRead2,MemWrite2,MemtoReg2,RegWrite2;
		input [1:0] ALUOp2;
		
		wire [63:0] PCout2;
		wire [4:0] Rt2;
		
		assign PCout2 = PR1[95:32];
		assign Rt2 = PR1[4:0];
	
		
		always @ (posedge clock) begin
		PR2[95:32] <= PCout2;
		PR2[96] <= ALUSrc2;
		PR2[98:97] <= ALUOp2;
		PR2[99] <= Branch2;
		PR2[100] <= MemRead2;
		PR2[101] <= MemWrite2;
		PR2[102] <= MemtoReg2;
		PR2[103] <= RegWrite2;
		PR2[167:104] <= Data1;
		PR2[231:168] <= Data2;
		PR2[295:232] <= SEout2;
		PR2[31:21] <= PR1[31:21];  // Opcode
		PR2[4:0] <= Rt2;
		end
		
endmodule
