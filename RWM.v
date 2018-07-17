`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:00:11 02/18/2018 
// Design Name: 
// Module Name:    RWM 
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
module RWM(PR3,clock,ReadData4);
		input [499:0] PR3;
      wire [63:0] ALU_result4,Data2_4;
		wire [63:0] Address;
		wire [63:0] WriteData;
		wire MemWrite4, MemRead4;
		input clock;
		output reg [63:0] ReadData4;
		reg [7:0] DM [0:255];  // DM-Data Memory denoting say, Hard Drive
		
		assign ALU_result4 = PR3[424:361];
		assign Data2_4 = PR3[231:168];
		assign Address = ALU_result4;
		assign WriteData = Data2_4;
		
		assign MemRead4 = PR3[100];
		assign MemWrite4 = PR3[101];
		
		
		initial
		begin
		DM[0] = 8'h00;  //Beginning of 0th double word
		DM[1] = 8'h00;
		DM[2] = 8'h00;
		DM[3] = 8'h00;
		DM[4] = 8'h00;
		DM[5] = 8'h00;
		DM[6] = 8'h00;
		DM[7] = 8'h00;	  //End of 0th double word
		
		DM[8] = 8'h11;  //Beginning of 1th double word
		DM[9] = 8'h11;
		DM[10] = 8'h11;
		DM[11] = 8'h11;
		DM[12] = 8'h11;
		DM[13] = 8'h11;
		DM[14] = 8'h11;
		DM[15] = 8'h11;	  //End of 1th double word
		
		
		DM[16] = 8'h22;  //Beginning of 2nd double word
		DM[17] = 8'h22;
		DM[18] = 8'h22;
		DM[19] = 8'h22;
		DM[20] = 8'h22;
		DM[21] = 8'h22;
		DM[22] = 8'h22;
		DM[23] = 8'h22;	  //End of 2nd double word
		
		DM[24] = 8'h33;  //Beginning of 3rd double word
		DM[25] = 8'h33;
		DM[26] = 8'h33;
		DM[27] = 8'h33;
		DM[28] = 8'h33;
		DM[29] = 8'h33;
		DM[30] = 8'h33;
		DM[31] = 8'h33;	  //End of 3rd double word
		
		DM[32] = 8'h44;  //Beginning of 4th double word
		DM[33] = 8'h44;
		DM[34] = 8'h44;
		DM[35] = 8'h44;
		DM[36] = 8'h44;
		DM[37] = 8'h44;
		DM[38] = 8'h44;
		DM[39] = 8'h44;	  //End of 4th double word
		
		DM[40] = 8'h55;  //Beginning of 5th double word
		DM[41] = 8'h55;
		DM[42] = 8'h55;
		DM[43] = 8'h55;
		DM[44] = 8'h55;
		DM[45] = 8'h55;
		DM[46] = 8'h55;
		DM[47] = 8'h55;	  //End of 5th double word
	
		DM[48] = 8'h66;  //Beginning of 6th double word. Remember Byte addresses are in decimal here (without 0x prefix)
		DM[49] = 8'h66;
		DM[50] = 8'h66;
		DM[51] = 8'h66;
		DM[52] = 8'h66;
		DM[53] = 8'h66;
		DM[54] = 8'h66;
		DM[55] = 8'h66;  //End of 6th double word
		
		DM[56] = 8'h77;  //Beginning of 7th double word
		DM[57] = 8'h77;
		DM[58] = 8'h77;
		DM[59] = 8'h77;
		DM[60] = 8'h77;
		DM[61] = 8'h77;
		DM[62] = 8'h77;
		DM[63] = 8'h77;  //The end of 7th double word
		
		DM[64] = 8'h88;  //Beginning of 8th double word
		DM[65] = 8'h88;
		DM[66] = 8'h88;
		DM[67] = 8'h88;
		DM[68] = 8'h88;
		DM[69] = 8'h88;
		DM[70] = 8'h88;
		DM[71] = 8'h88;  //The end of 8th double word
		
		DM[72] = 8'h99;  //Beginning of ninth double word
		DM[73] = 8'h99;
		DM[74] = 8'h99;
		DM[75] = 8'h99;
		DM[76] = 8'h99;
		DM[77] = 8'h99;
		DM[78] = 8'h99;
		DM[79] = 8'h99;  //The end of ninth double word
		
		DM[80] = 8'haa;  //Beginning of tenth (a) double word
		DM[81] = 8'haa;
		DM[82] = 8'haa;
		DM[83] = 8'haa;
		DM[84] = 8'haa;
		DM[85] = 8'haa;
		DM[86] = 8'haa;
		DM[87] = 8'haa;  //The end of tenth(a) double word
		
		DM[88] = 8'hbb;  //Beginning of eleventh double word
		DM[89] = 8'hbb;
		DM[90] = 8'hbb;
		DM[91] = 8'hbb;
		DM[92] = 8'hbb;
		DM[93] = 8'hbb;
		DM[94] = 8'hbb;
		DM[95] = 8'hbb;  //The end of eleventh double word
		
		DM[96] = 8'hcc;  //Beginning of twelth double word
		DM[97] = 8'hcc;
		DM[98] = 8'hcc;
		DM[99] = 8'hcc;
		DM[100] = 8'hcc;
		DM[101] = 8'hcc;
		DM[102] = 8'hcc;
		DM[103] = 8'hcc;  //The end of twelth double word
		
		
		end
		
		
		always@(MemRead4)
		begin
		if(MemRead4 == 1)
		assign ReadData4 = {DM[Address+0],DM[Address+1],DM[Address+2],DM[Address+3],DM[Address+4],DM[Address+5],
								DM[Address+6],DM[Address+7]};
		end   //We are reading 8 consecutive bytes from the address and catenating them to form a double word
		
		always@(posedge clock)
		begin
		if(MemWrite4 == 1)
		begin
		DM[Address+0] = WriteData[63:56];
		DM[Address+1] = WriteData[55:48];
		DM[Address+2] = WriteData[47:40];
		DM[Address+3] = WriteData[39:32];
		DM[Address+4] = WriteData[31:24];
		DM[Address+5] = WriteData[23:16];
		DM[Address+6] = WriteData[15:8];
		DM[Address+7] = WriteData[7:0];
		end
		end  //"Big Endian", higher significance byte is in lower address end
		
		
endmodule
