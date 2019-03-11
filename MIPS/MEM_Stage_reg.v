module MEM_Stage_reg (
	input clk,    // Clock
	input rst,  // Asynchronous reset active low
	input WB_EN_in,
	input MEM_R_EN_in,
	input [31:0]ALU_Res_in,

	input [31:0] Mem_read_value_in,
	input [4:0]Dest_in,
	
	output reg WB_EN,
	output reg MEM_R_EN,
	output reg [31:0]ALU_Res,
	output reg [31:0]Mem_read_value,
	output reg [4:0]Dest	
);

always @(posedge clk or posedge rst) begin : proc_ID_Stage_reg
	if(rst) begin
		WB_EN <= 0;
		MEM_R_EN <= 0;
		ALU_Res <= 0;
		Dest <= 0;
		Mem_read_value <= 0;
	end else begin
		WB_EN <= WB_EN_in;
		MEM_R_EN <= MEM_R_EN_in;
		ALU_Res <= ALU_Res_in;
		Dest <= Dest_in;
		Mem_read_value <= Mem_read_value_in;
	end
end

endmodule