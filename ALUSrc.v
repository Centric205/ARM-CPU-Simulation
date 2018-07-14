`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:05:31 03/14/2018 
// Design Name: 
// Module Name:    ALUSrc 
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
module ALUSrc(PR2,ALUSrc_Out);
    input [499:0] PR2;
    wire [63:0] Data2_3;
    wire [63:0] SEout3;
    reg [63:0] In0;
    reg [63:0] In1;
    wire ALUSrc3;
    output reg [63:0] ALUSrc_Out;
	 
	 assign ALUSrc3 = PR2[96];
	 assign SEout3 = PR2[295:232];
	 assign Data2_3 = PR2[231:168];
	 
always @* begin
case(ALUSrc3)
0: begin
	assign In0 = Data2_3;
	ALUSrc_Out <= In0;
	end
	
1: begin
   assign In1 = SEout3;
   ALUSrc_Out <= In1;
	end

endcase
end


endmodule
