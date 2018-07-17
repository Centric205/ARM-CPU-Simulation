`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:27:17 01/30/2018 
// Design Name: 
// Module Name:    LAB2C 
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
module ALUwithContol(ALUOp, Opcode_field, A, B, ALU_result, Zero);
		input [1:0] ALUOp;
		input [10:0] Opcode_field;
		input [63:0] A;
		input [63:0] B;
		output [63:0] ALU_result;
		output Zero;
		wire [3:0] ALU_operation;
		//Instantiate the two units
		Logic Lab2b(ALUOp, Opcode_field, ALU_operation);
		ALU	Lab2a(ALU_operation, A, B, ALU_result, Zero);


endmodule
