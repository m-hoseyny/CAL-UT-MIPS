module MUX_5bit_2_1 (
	input [4:0]A, B,
	input sel,
	output [4:0]out
);

assign out = sel ? B : A;

endmodule