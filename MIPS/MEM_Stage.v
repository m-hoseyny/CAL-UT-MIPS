module MEM_Stage (
	input clk,    // Clock
	input rst,  // Asynchronous reset active low
	input [31:0] PC_in,
	output [31:0] PC	
	
);

assign PC = PC_in;

endmodule