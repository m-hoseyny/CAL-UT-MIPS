module MEM (
	input clk,    // Clock
	input rst,  // Asynchronous reset active low
	input [31:0]address,
	input MEM_R_EN,
	input MEM_W_EN,
	input [31:0]data,
	output reg[31:0]mem_out	
);


reg [31:0]mem[63:0];
integer i;
wire [31:0]new_address;
assign new_address = address >> 2;

always @(posedge clk or posedge rst) begin : proc_MEM
	if(rst) begin
		for(i=0;i<64;i=i+1) begin
			mem[i] = 32'b0;
		end
	end else begin
		if(MEM_W_EN) begin
			mem[new_address] <= data; 
		end
	end
end

always @(*) begin : proc_MEM1
	if(MEM_R_EN) begin
		mem_out = mem[new_address];
	end else begin
		mem_out = 0;
	end
end


endmodule