module Address_Mapping (
	input [31:0]address_in,
	output [31:0] address_out
	
);

assign address_out = address_in - 32'd1024; 

endmodule