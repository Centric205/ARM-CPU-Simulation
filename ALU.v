`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:46:16 01/28/2018 
// Design Name: 
// Module Name:    ALU 
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
module ALU(PR2,ALUSrc_Out,ALU_operation,ALU_result3,Zero3);
	 input [499:0] PR2;
	 wire [63:0] Data1_3;
	 input [63:0] ALUSrc_Out;
    input [3:0] ALU_operation;
    wire [63:0] A,B;
    output reg [63:0] ALU_result3;
    output Zero3;
	 
	 assign Data1_3 = PR2[167:104];
	 assign A = Data1_3;
	 assign B = ALUSrc_Out;
	 
    assign Zero3 = (ALU_result3==0); //Zero is true if ALU Result is 0
	 
	 always @* begin //reevaluate if these change
	 case (ALU_operation)
	 0: ALU_result3 <= A&B;
	 1: ALU_result3 <= A|B;
	 2: ALU_result3 <= A+B;
	 6: ALU_result3 <= A-B;
	 7: ALU_result3 <= B;
	 12: ALU_result3 <= ~(A|B); //result is nor
	 default: ALU_result3 <= 0;
	 endcase
	end
endmodule
