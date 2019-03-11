module EXE_Stage_reg (
	input clk,    // Clock
	input rst,  // Asynchronous reset active high
	input WB_EN_in,
	// MEM_Signals
	input MEM_R_EN_in,
	input MEM_W_EN_in,

	input [31:0] ALU_Res_in,
	input [31:0] ST_Val_in,
	input [4:0]Dest_in,

	output reg WB_EN,
	output reg MEM_R_EN,
	output reg MEM_W_EN,
	output reg[31:0]ALU_Res,
	output reg[31:0]ST_Val,
	output reg[4:0]Dest
);

always @(posedge clk or posedge rst) begin : proc_EXE_Stage_reg
	if(rst) begin
		MEM_W_EN <= 0;
		MEM_R_EN <= 0;
		ALU_Res <= 0;
		ST_Val <= 0;
		Dest <= 0;
	end else begin
		WB_EN <= WB_EN_in;
		MEM_W_EN <= MEM_W_EN_in;
		MEM_R_EN <= MEM_R_EN_in;
		ALU_Res <= ALU_Res_in;
		ST_Val <= ST_Val_in;
		Dest <= Dest_in;
	end
end

endmodule