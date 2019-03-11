module EXE_Stage (
	input clk,    // Clock
	input [3:0]EXE_CMD,
	input [31:0]Val1,
	input [31:0]Val2,
	input [31:0]Reg2,
	input [31:0] PC,
	input [1:0]BR_type,

	output [31:0]ALU_Res,
	output [31:0]Br_Addr,
	output Br_taken	
);

	assign Br_Addr = PC + (Val2 << 2);

	ALU inst_ALU (.EXE_CMD(EXE_CMD), .Val2(Val2), .Val1(Val1), .ALU_Res(ALU_Res));
	Condition_Check inst_Condition_Check (.Reg2(Reg2), .Val1(Val1), .BR_Type(BR_type), .Br_taken(Br_taken));

	





endmodule