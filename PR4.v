`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:16:10 04/18/2018 
// Design Name: 
// Module Name:    PR4 
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
module PR4(PR3, PR4, ReadData4, clock);
		input clock;
		input [499:0] PR3;
		input [63:0] ReadData4;
		
		output reg [499:0] PR4;

		wire MemtoReg4,RegWrite4;
		wire [4:0] Rt4;
		
		assign MemtoReg4 = PR3[102];
		assign RegWrite4 = PR3[103];
		
		assign Rt4 = PR3[4:0];
		
		always@(posedge clock) begin
		PR4[4:0] <= Rt4;
		PR4[102] <= MemtoReg4;
		PR4[103] <= RegWrite4;
		PR4[424:361] <= PR3[424:361];  //ALU_result4
		PR4[488:425] <= ReadData4;
		
		
		end

endmodule
