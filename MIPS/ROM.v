module ROM (
	input [31:0]PC,
	output reg [31:0] Instruction
);

always @(PC) begin : proc_rom
	case (PC)
		32'd0 : Instruction = 32'b10000000000000010000011000001010;//-- Addi r1 ,r0 ,1546 //r1=1546
		32'd4 : Instruction = 32'b00000100000000010001000000000000;//-- Add r2 ,r0 ,r1//r2=1546
		32'd8 : Instruction = 32'b00001100000000010001100000000000;//-- sub r3 ,r0 ,r1//r3=-1546
		32'd12 :Instruction = 32'b00010100010000110010000000000000; //--and r4,r2,r3 //r4=2
		32'd16 :Instruction = 32'b10000100011001010001101000110100; //--subi r5,r3,//r5=-8254
		32'd20 :Instruction = 32'b00011000011001000010100000000000; //--or r5,r3,r4 //r5=-1546
		32'd24 :Instruction = 32'b00011100101000000011000000000000; //--nor r6,r5,r0//r6=1545
		32'd28 :Instruction = 32'b00011100100000000101100000000000; //--nor r11,r4,r0//r11=-3
		32'd32 :Instruction = 32'b00001100101001010010100000000000; //--sub r5,r5,r5//r5=0
		32'd36 :Instruction = 32'b10000000000000010000010000000000; //--addi r1,r0,1024 //r1=1024
		32'd40 :Instruction = 32'b10010100001000100000000000000000;//-- st r2 ,r1 ,0 //
		32'd44 :Instruction = 32'b10010000001001010000000000000000;//-- ld r5 ,r1 ,0 //r5=1546
		default : Instruction = 32'bz;
	endcase
end

endmodule