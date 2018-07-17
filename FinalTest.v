`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:55:27 03/18/2018
// Design Name:   WireALL
// Module Name:   C:/Users/Jimmy-Lap/Desktop/CS/CSULB/Computer Architecture/Lab/Lab 7/LAB7/WireALLvtf.v
// Project Name:  LAB7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: WireALL
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module WireALLvtf;

	// Inputs
	reg clock;

	// Instantiate the Unit Under Test (UUT)
	WireALL uut (
		.clock(clock)
	);

	initial begin
		// Initialize Inputs
		clock = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100 clock = 1;
		#100 clock = 0;
		#100 clock = 1;
		#100 clock = 0;
		#100 clock = 1;
		#100 clock = 0;
		#100 clock = 1;
		#100 clock = 0;
		#100 clock = 1;
		#100 clock = 0;
		#100 clock = 1;
		#100 clock = 0;
		#100 clock = 1;
		#100 clock = 0;
		#100 clock = 1;
		#100 clock = 0;
		#100 clock = 1;
		#100 clock = 0;
		#100 clock = 1;
		#100 clock = 0;
		#100 clock = 1;
		#100 clock = 0;
		#100 $finish;


	end
      
endmodule

