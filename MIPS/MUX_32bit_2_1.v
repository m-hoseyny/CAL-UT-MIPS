module MUX_32bit_2_1 (
	input [31:0]A,
	input [31:0]B,
	input sel,
	output [31:0]OUT
);

assign OUT = sel ? B : A;


endmodule