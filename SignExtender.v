`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:55:15 02/19/2018 
// Design Name: 
// Module Name:    SignExtender 
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
module SignExtender(PR1,SEout2,SEoutBranch2);
      input [499:0] PR1;
		wire [8:0] SEin;
		wire [18:0] SEinBranch;
		output [63:0] SEout2,SEoutBranch2;
		
		assign SEin = PR1[20:12];
		assign SEinBranch = PR1[23:5];

		assign SEout2 = {{55{SEin[8]}},SEin};

		assign SEoutBranch2 = {{45{SEinBranch[18]}},SEinBranch};
		

endmodule
