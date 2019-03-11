module IF_Stage_reg (
	input clk,    // Clock
	input rst,  
	input [31:0] PC_in,
	input [31:0] Instruction_in,
	output reg [31:0] PC,
	output reg [31:0] Instruction	
);

always @(posedge clk or posedge rst) begin : proc_IF_Stage_reg
	if(rst) begin
		PC <= 0;
		Instruction <= 0;
	end else begin
		PC <= PC_in ;
		Instruction <= Instruction_in;
	end
end

endmodule