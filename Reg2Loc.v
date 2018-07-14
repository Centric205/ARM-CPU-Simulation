`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:09:32 03/14/2018 
// Design Name: 
// Module Name:    Reg2Loc 
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
module Reg2Loc(PR1,Reg2Loc2,Reg2Loc_Out);
	 input [499:0] PR1;
    reg [4:0] In000;
    reg [4:0] In111;
    input Reg2Loc2;
    output reg [4:0] Reg2Loc_Out;
	 
	 
always @* begin
case(Reg2Loc2)
0: begin
	assign In000 = PR1[20:16];
   Reg2Loc_Out <= In000;
	end
	
1: begin
   assign In111 = PR1[4:0];
   Reg2Loc_Out <= In111;
	end

endcase 
end

endmodule
