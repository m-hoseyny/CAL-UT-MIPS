module ID_Stage (
	input clk,    // Clock
	input rst,  // Asynchronous reset active low
	// From IF
	input [31:0]instruction,
	// FROM WB stage
	input WB_Write_Enable,
	input [4:0]WB_Dest,
	input [31:0]WB_Data,
	// to IF stage registers
	// output IF_flush,
	//to stage registers
	output [4:0] Dest,
	output [31:0] Reg2,
	output [31:0] Val2,
	output [31:0] Val1,
	output [1:0] BR_Type,
	output [3:0] EXE_CMD,
	// MEM Signals
	output MEM_R_EN,
	output MEM_W_EN,
	// Write Back Enable
	output WB_EN
);


wire [31:0]reg1, reg2, SE_IMM;
wire IS_IMM;


	CU inst_CU
		(
			.opcode   (instruction[31:26]),
			.EXE_CMD  (EXE_CMD),
			.MEM_R_EN (MEM_R_EN),
			.MEM_W_EN (MEM_W_EN),
			.WB_EN    (WB_EN),
			.IS_IMM   (IS_IMM),
			.BR_Type  (BR_Type)
		);


	Register_File inst_Register_File
		(
			.clk       (clk),
			.rst       (rst),
			.src1      (instruction[25:21]),
			.src2      (instruction[20:16]),
			.dest      (WB_Dest),
			.Write_Val (WB_Data),
			.Write_EN  (WB_Write_Enable),
			.reg1      (reg1),
			.reg2      (reg2)
		);

	Sign_Extend inst_Sign_Extend (.in(instruction[15:0]), .out(SE_IMM));

	MUX_32bit_2_1 inst_MUX_32bit_2_1 (.A(reg2), .B(SE_IMM), .sel(IS_IMM), .OUT(Val2));
	assign Val1 = reg1;
	assign Reg2 = reg2;

	MUX_5bit_2_1 inst_MUX_5bit_2_1 (.A(instruction[15:11]), .B(instruction[20:16]), .sel(IS_IMM), .out(Dest));


endmodule