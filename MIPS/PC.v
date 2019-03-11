module PC (
	input clk,    // Clock
	input rst,  // Asynchronous reset active low
	input [31:0]PC_in,
	output reg [31:0]PC_out
	
);

always @(posedge clk or posedge rst) begin : proc_pc_reg
	if(rst) begin
		PC_out <= 0;
	end else begin
		PC_out <= PC_in ;
	end
end

endmodule