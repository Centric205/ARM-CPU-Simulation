`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:42:12 02/06/2018 
// Design Name: 
// Module Name:    LAB3A 
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
module registerfile(PR1, PR4, MemtoReg_Out, Data1, Data2, clock, Reg2Loc_Out);
		input [499:0] PR1;
		input [499:0] PR4;
      input [63:0] MemtoReg_Out;
		input [4:0] Reg2Loc_Out;
		wire [4:0] Rn, Rm; // the register numbers to read or write
		wire[63:0] Write_Data; //data to write
		wire RegWrite5; // the write control
		input clock; // the clock to triger write
		output [63:0] Data1, Data2; // the register values read
		reg [63:0] RF [0:31]; // 32 registers each 32 bits long
		wire [4:0] Rt5;
		
		initial begin
		RF[0] = 64'b0;
		RF[31] = 64'b0;
		end
		
		assign Rt5 = PR4[4:0];
		
	   assign Rn = PR1[9:5];
		assign Rm = Reg2Loc_Out;
		
		assign Data1 = RF[Rn];
		assign Data2 = RF[Rm];

		
		assign Write_Data = MemtoReg_Out;
		
		assign RegWrite5 = PR4[103];
		
		always@(posedge clock)
		if (RegWrite5 == 1) RF[Rt5] <= Write_Data;
		

endmodule
