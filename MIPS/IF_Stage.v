module IF_Stage (
	input clk,    // Clocks
	input rst,  // Asynchronous reset active high
	input Br_taken,
	input [31:0]Br_Addr,
	output [31:0] PC,
	output [31:0] Instruction
	
);

// PC 
wire [31:0]next_PC, instruction_add, PC_after_adder;

	PC_Adder inst_PC_Adder (.PC_in(PC), .PC_out(PC_after_adder));

	MUX_32bit_2_1 inst_MUX_32bit_2_1 (.A(PC_after_adder), .B(Br_Addr), .sel(Br_taken), .OUT(next_PC));

	PC inst_PC (.clk(clk), .rst(rst), .PC_in(next_PC), .PC_out(PC));

// PC SwithCase
	ROM inst_ROM (.PC(PC), .Instruction(Instruction));


endmodule