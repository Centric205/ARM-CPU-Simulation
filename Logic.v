`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:30:14 01/30/2018 
// Design Name: 
// Module Name:    Logic 
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
module Logic(PR2,ALU_operation);
	 input [499:0] PR2;
    wire [1:0] ALUOp3;
    wire [10:0] Opcode3;
    output reg [3:0] ALU_operation;
	 
	 assign ALUOp3 = PR2[98:97];
	 assign Opcode3 = PR2[31:21];
	 
	 always@ (ALUOp3, Opcode3) begin
	 case ({ALUOp3,Opcode3})
	 13'b10_10101010000: ALU_operation <= 1; //ORR
	 13'b00_00000000000: ALU_operation <= 2; //ADD
	 13'b01_00000000000: ALU_operation <= 7; //Pass input B
	 13'b10_10001011000: ALU_operation <= 2; //ADD
	 13'b10_11001011000: ALU_operation <= 6; //SUBRACT
	 13'b10_10001010000: ALU_operation <= 0; //AND
	 13'b00_11111000010: ALU_operation <= 2; //Load
	 13'b00_11111000000: ALU_operation <= 2; //Store
	 13'b01_10110100000: ALU_operation <= 7; //Branch
	 default: ALU_operation <= 15;  // Should not happen

endcase
end


endmodule
