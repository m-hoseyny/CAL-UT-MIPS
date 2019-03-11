module WB_Stage (
	input clk,    // Clock
	input WB_EN_in,
	input MEM_R_EN,

	input [31:0]ALU_Res,
	input [31:0]Mem_read_Value,
	input [4:0]Dest_in,

	output WB_EN,
	output [31:0]Write_Value,
	output [4:0]Dest

);
	assign Dest = Dest_in;
	assign WB_EN = WB_EN_in;
	MUX_32bit_2_1 inst_MUX_32bit_2_1 (.A(ALU_Res), .B(Mem_read_Value), .sel(MEM_R_EN), .OUT(Write_Value));

endmodule