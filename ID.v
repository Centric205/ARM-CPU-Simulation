`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:48:07 03/07/2018 
// Design Name: 
// Module Name:    ID 
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
module ID(PR1, Reg2Loc2,ALUSrc2,MemtoReg2,RegWrite2,MemRead2,MemWrite2,Branch2,ALUOp2);
			wire [10:0] Opcode2;
			input [499:0] PR1;
			output reg Reg2Loc2,ALUSrc2,MemtoReg2,RegWrite2,MemRead2,MemWrite2,Branch2;
			output reg [1:0] ALUOp2;
			
			assign Opcode2 = PR1[31:21];
			
always @* begin
case (Opcode2)
// LDUR
11'b11111000010: begin
					  Reg2Loc2 <= 0; ALUSrc2 <= 1; MemtoReg2 <= 1; RegWrite2 <= 1;
					  MemRead2 <= 1; MemWrite2 <= 0; Branch2 <= 0; ALUOp2 <= 00;
					  end

//	STUR
11'b11111000000: begin
					  Reg2Loc2 <= 1; ALUSrc2 <= 1; MemtoReg2 <= 0; RegWrite2 <= 0;
					  MemRead2 <= 0; MemWrite2 <= 1; Branch2 <= 0; ALUOp2 <= 00;
					  end

// ADD
11'b10001011000: begin
					  Reg2Loc2 <= 0; ALUSrc2 <= 0; MemtoReg2 <= 0; RegWrite2 <= 1;
					  MemRead2 <= 0; MemWrite2 <= 0; Branch2 <= 0; ALUOp2 <= 10;
					  end

// SUB
11'b11001011000: begin
					  Reg2Loc2 <= 0; ALUSrc2 <= 0; MemtoReg2 <= 0; RegWrite2 <= 1;
					  MemRead2 <= 0; MemWrite2 <= 0; Branch2 <= 0; ALUOp2 <= 10;
					  end


// AND
11'b10001010000: begin
					  Reg2Loc2 <= 0; ALUSrc2 <= 0; MemtoReg2 <= 0; RegWrite2 <= 1;
					  MemRead2 <= 0; MemWrite2 <= 0; Branch2 <= 0; ALUOp2 <= 10;
					  end


// ORR
11'b10101010000: begin
					  Reg2Loc2 <= 0; ALUSrc2 <= 0; MemtoReg2 <= 0; RegWrite2 <= 1;
					  MemRead2 <= 0; MemWrite2 <= 0; Branch2 <= 0; ALUOp2 <= 10;
					  end
					  
// Branch
11'b10110100000: begin
					  Reg2Loc2 <= 1; ALUSrc2 <= 0; MemtoReg2 <= 0; RegWrite2 <= 0;
					  MemRead2 <= 0; MemWrite2 <= 0; Branch2 <= 1; ALUOp2 <= 01;
					  end
					  

endcase
end


endmodule
