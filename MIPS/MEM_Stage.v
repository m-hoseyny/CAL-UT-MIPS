module MEM_Stage (
	input clk,    // Clock
	input rst,  // Asynchronous reset active low
	input MEM_R_EN_in,
	input MEM_W_EN_in,
	input [31:0]ALU_Res_in,
	input [31:0]ST_val,
	output [31:0]MEM_read_value
);

	wire [31:0] address_EXEStage_MEM;

	

	Address_Mapping inst_Address_Mapping (.address_in(ALU_Res_in), .address_out(address_EXEStage_MEM));

	MEM inst_MEM
		(
			.clk      (clk),
			.rst      (rst),
			.address  (address_EXEStage_MEM),
			.MEM_R_EN (MEM_R_EN_in),
			.MEM_W_EN (MEM_W_EN_in),
			.data     (ST_val),
			.mem_out  (MEM_read_value)
		);


endmodule