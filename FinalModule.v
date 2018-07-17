module Final(clock);
		
		input clock;
		
		wire [499:0] PR1, PR2, PR3, PR4;
		
		wire [31:0] Instruction_Out;
		
		wire [63:0] Data1, Data2, SEout2, SEoutBranch2, ALUBranch_Out3, ALU_result3, 
						ReadData4, PCout, AdderOut, MemtoReg_Out, ALUSrc_Out, PCSrc_Out;
		
		wire Reg2Loc2, ALUSrc2, Branch2, MemRead2,MemWrite2,MemtoReg2,RegWrite2, Zero3;
		
		wire [1:0] ALUOp2;
		
		wire [3:0] ALU_operation;
		
		wire [4:0] Reg2Loc_Out;
		
	
		
		PR1 lab8a(PR1, PCout, Instruction_Out,clock);
		PR2 lab8b(PR1, PR2, Data1, Data2, SEout2, clock, ALUSrc2, Branch2, MemRead2,MemWrite2,MemtoReg2,RegWrite2,ALUOp2);
		PR3 lab8c(PR2, PR3, ALUBranch_Out3, ALU_result3, Zero3, clock);
		PR4 lab8d(PR3, PR4, ReadData4, clock);
		BranchAdder lab7(PR2, ALUBranch_Out3);
		PC lab5a(PCSrc_Out, PCout, clock);
		ADDER lab5aa(PCout,AdderOut);
		IM lab5b(PCout,Instruction_Out);
		ID lab5c(PR1, Reg2Loc2,ALUSrc2,MemtoReg2,RegWrite2,MemRead2,MemWrite2,Branch2,ALUOp2);
		RWM lab4(PR3,clock,ReadData4);
		SignExtender lab4a(PR1,SEout2,SEoutBranch2);
		registerfile lab3(PR1, PR4, MemtoReg_Out, Data1, Data2, clock, Reg2Loc_Out);
		Logic lab2a(PR2,ALU_operation);
		ALU lab2b(PR2,ALUSrc_Out,ALU_operation,ALU_result3,Zero3);
		PCSrc lab1a(PR3,PCSrc_Out,AdderOut);
		Reg2Loc lab1b(PR1,Reg2Loc2,Reg2Loc_Out);
		ALUSrc lab1c(PR2,ALUSrc_Out);
		MemtoReg lab1d(PR4, MemtoReg_Out);
		
		
		
		
endmodule
