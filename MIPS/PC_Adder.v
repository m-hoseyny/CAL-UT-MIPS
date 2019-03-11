module PC_Adder (
	input [31:0]PC_in,
	output [31:0]PC_out	
);

assign PC_out = PC_in + 32'd4;

endmodule