`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:16:01 04/18/2018 
// Design Name: 
// Module Name:    PR3 
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
module PR3(PR2, PR3, ALUBranch_Out3, ALU_result3, Zero3, clock);
		input clock;
		input [499:0] PR2;
		input [63:0] ALUBranch_Out3, ALU_result3;
		input Zero3;
		
		output reg [499:0] PR3;
		
		//output [63:0] PCout3;
		//output [10:0] Opcode3;
		
		//output [63:0] SEOut3;
		//output [63:0] Data1_3, Data2_3;
		
		wire Branch3, MemRead3,MemWrite3,MemtoReg3,RegWrite3;
		wire [4:0] Rt3;
		
		initial begin
		PR3[99] = 0;
		PR3[360] = 0;
		PR3[359:296] = 0;
		end
		
		assign Branch3 = PR2[99];
		assign MemRead3 = PR2[100];
		assign MemWrite3 = PR2[101];
		assign MemtoReg3 = PR2[102];
		assign RegWrite3 = PR2[103];
		
		//assign PCout3 = PR2[95:32];
		//assign Opcode3 = PR2[31:21];
		//assign SEout3 = PR2[295:232];
		assign Rt3 = PR2[4:0];
		
		//assign Data1_3 = PR2[167:104];
		//assign Data2_3 = PR2[231:168];
		
		always @ (posedge clock) begin
		PR3[4:0] <= Rt3;
		PR3[231:168] <= PR2[231:168];  // Data2_3
		PR3[99] <= Branch3;
		PR3[100] <= MemRead3;
		PR3[101] <= MemWrite3;
		PR3[102] <= MemtoReg3;
		PR3[103] <= RegWrite3;
		PR3[359:296] <= ALUBranch_Out3;
		PR3[360] <= Zero3;
		PR3[424:361] <= ALU_result3;
		
		end

endmodule
