module ROM (
	input [31:0]PC,
	output reg [31:0] Instruction
);

always @(PC) begin : proc_rom
	case (PC)
		32'd0  : Instruction = 32'b10000000000000010000011000001010;//-- Addi r1 ,r0 ,1546 //r1=1546
		32'd4  : Instruction = 32'b0;
		32'd8  : Instruction = 32'b0;
		32'd12  : Instruction = 32'b00000100000000010001000000000000;//-- Add r2 ,r0 ,r1//r2=1546
		32'd16  : Instruction = 32'b00001100000000010001100000000000;//-- sub r3 ,r0 ,r1//r3=-1546
		32'd20  : Instruction = 32'b0;
		32'd24  : Instruction = 32'b0;
		32'd28  : Instruction = 32'b00010100010000110010000000000000; //--and r4,r2,r3 //r4=2
		32'd32  : Instruction = 32'b0;
		32'd36  : Instruction = 32'b0;
		32'd40  : Instruction = 32'b10000100011001010001101000110100; //--subi r5,r3,//r5=-8254
		32'd44  : Instruction = 32'b00011000011001000010100000000000; //--or r5,r3,r4 //r5=-1546
		32'd48  : Instruction = 32'b0;
		32'd52  : Instruction = 32'b0;
		32'd56  : Instruction = 32'b00011100101000000011000000000000; //--nor r6,r5,r0//r6=1545
		32'd60  : Instruction = 32'b00011100100000000101100000000000; //--nor r11,r4,r0//r11=-3
		32'd64  : Instruction = 32'b00001100101001010010100000000000; //--sub r5,r5,r5//r5=0
		32'd68  : Instruction = 32'b10000000000000010000010000000000; //--addi r1,r0,1024 //r1=1024
		32'd72  : Instruction = 32'b0;
		32'd76  : Instruction = 32'b0;
		32'd80  : Instruction = 32'b10010100001000100000000000000000;//-- st r2 ,r1 ,0 //
		32'd84  : Instruction = 32'b0;
		32'd88  : Instruction = 32'b0;
		32'd92  : Instruction = 32'b10010000001001010000000000000000;//-- ld r5 ,r1 ,0 //r5=1546
		32'd96  : Instruction = 32'b0;
		32'd100  : Instruction = 32'b0;
		32'd104  : Instruction = 32'b10100000101000000000000000000001;//-- Bez r5 ,1//not taken
		32'd108  : Instruction = 32'b0;
		32'd112  : Instruction = 32'b0;
		32'd116  : Instruction = 32'b00100000101000010011100000000000;//-- xor r7 ,r5 ,r1 //r7=522
		32'd120  : Instruction = 32'b00100000101000010000000000000000;//-- xor r0 ,r5 ,r1 //r0=0
		32'd124  : Instruction = 32'b00100100011001000011100000000000;//-- sla r7 ,r3 ,r4//r7=-6184
		32'd128  : Instruction = 32'b10010100001001110000000000010100;//-- st r7 ,r1 ,20
		32'd132  : Instruction = 32'b00101000011001000100000000000000;//-- sll r8 ,r3 ,r4  //r8=-6184
		32'd136  : Instruction = 32'b00101100011001000100100000000000;//-- sra r9 ,r3 ,r4 //r9=1073741437
		32'd140  : Instruction = 32'b00110000011001000101000000000000;//-- srl r10 ,r3 ,r4//r10=-384
		32'd144  : Instruction = 32'b0;
		32'd148  : Instruction = 32'b0;
		32'd152  : Instruction = 32'b10010100001000110000000000000100;//-- st r3 ,r1 ,4
		32'd156  : Instruction = 32'b0;
		32'd160  : Instruction = 32'b0;
		32'd164  : Instruction = 32'b10010100001001000000000000001000;//-- st r4 ,r1 ,8
		32'd168  : Instruction = 32'b0;
		32'd172  : Instruction = 32'b0;
		32'd176  : Instruction = 32'b10010100001001010000000000001100;//-- st r5 ,r1 ,12
		32'd180  : Instruction = 32'b0;
		32'd184  : Instruction = 32'b0;
		32'd188  : Instruction = 32'b10010100001001100000000000010000;//-- st r6 ,r1 ,16
		32'd192  : Instruction = 32'b0;
		32'd196  : Instruction = 32'b0;
		32'd200  : Instruction = 32'b10010000001010110000000000000100;//-- ld r11 ,r1 ,4//r11=-1456
		32'd204  : Instruction = 32'b0;
		32'd208  : Instruction = 32'b0;
		32'd212  : Instruction = 32'b10010100001010110000000000011000;//-- st r11 ,r1 ,24
		32'd216  : Instruction = 32'b0;
		32'd220  : Instruction = 32'b0;
		32'd224  : Instruction = 32'b10010100001010010000000000011100;//-- st r9 ,r1 ,28
		32'd228  : Instruction = 32'b0;
		32'd232  : Instruction = 32'b0;
		32'd236  : Instruction = 32'b10010100001010100000000000100000;//-- st r10 ,r1 ,32
		32'd240  : Instruction = 32'b0;
		32'd244  : Instruction = 32'b0;
		32'd248  : Instruction = 32'b10010100001010000000000000100100;//-- st r8 ,r1 ,36
		32'd252  : Instruction = 32'b0;
		32'd256  : Instruction = 32'b0;
		32'd260  : Instruction = 32'b10000000000000010000000000000011;//-- Addi r1 ,r0 ,3 //r1=3
		32'd264  : Instruction = 32'b10000000000001000000010000000000;//-- Addi r4 ,r0 ,1024   //r4=1024
		32'd268  : Instruction = 32'b10000000000000100000000000000000;//-- Addi r2 ,r0 ,0 //r2=0
		32'd272  : Instruction = 32'b10000000000000110000000000000001;//-- Addi r3 ,r0 ,1 //r3=1
		32'd276  : Instruction = 32'b0;
		32'd280  : Instruction = 32'b0;
		32'd284  : Instruction = 32'b10000000000010010000000000000010;//-- Addi r9 ,r0 ,2 //r9=2
		32'd288  : Instruction = 32'b00101000011010010100000000000000;//-- sll r8 ,r3 ,r9 //r8=r3*4
		32'd292  : Instruction = 32'b0;
		32'd296  : Instruction = 32'b0;
		32'd300  : Instruction = 32'b00000100100010000100000000000000;//-- Add r8 ,r4 ,r8 //r8=1024+r3*4
		32'd304  : Instruction = 32'b0;
		32'd308  : Instruction = 32'b0;
		32'd312  : Instruction = 32'b10010001000001010000000000000000;//-- ld r5 ,r8 ,0 //
		32'd316  : Instruction = 32'b0;
		32'd320  : Instruction = 32'b0;
		32'd324  : Instruction = 32'b10010001000001101111111111111100;//-- ld r6 ,r8 ,-4 //
		32'd328  : Instruction = 32'b0;
		32'd332  : Instruction = 32'b0;
		32'd336  : Instruction = 32'b00001100101001100100100000000000;//-- sub r9 ,r5 ,r6
		32'd340  : Instruction = 32'b10000000000010101000000000000000;//-- Addi r10 ,r0 ,0x8000
		32'd344  : Instruction = 32'b10000000000010110000000000010000;//-- Addi r11 ,r0 ,16 //2
		32'd348  : Instruction = 32'b00101001010010110101000000000000;//-- sll r10 ,r1 ,r11 //2
		32'd352  : Instruction = 32'b0;
		32'd356  : Instruction = 32'b0;
		32'd360  : Instruction = 32'b00010101001010100100100000000000;//-- And r9 ,r9 ,r10 // if(r5>r6) r9=0 else r9=-2147483648
		32'd364  : Instruction = 32'b10100001001000000000000000000010;//-- Bez r9 ,2
		32'd368  : Instruction = 32'b10010101000001011111111111111100;//-- st r5 ,r8 ,-4
		32'd372  : Instruction = 32'b10010101000001100000000000000000;//-- st r6 ,r8 ,0
		32'd376  : Instruction = 32'b10000000011000110000000000000001;//-- Addi r3 ,r3 ,1 //2
		32'd380  : Instruction = 32'b0;
		32'd384  : Instruction = 32'b0;
		32'd388  : Instruction = 32'b10100100001000111111111111110001;//-- BNE r1 ,r3 ,-15
		32'd392  : Instruction = 32'b10000000010000100000000000000001;//-- Addi r2 ,r2 ,1 //2
		32'd396  : Instruction = 32'b0;
		32'd400  : Instruction = 32'b0;
		32'd404  : Instruction = 32'b10100100001000101111111111101110;//-- BNE r1 ,r2 ,-18
		32'd408  : Instruction = 32'b10000000000000010000010000000000;//-- Addi r1 ,r0 ,1024 //r1=1024
		32'd412  : Instruction = 32'b0;
		32'd416  : Instruction = 32'b0;
		32'd420  : Instruction = 32'b10010000001000100000000000000000;//-- ld ,r2 ,r1 ,0 //r2=-1546
		32'd424  : Instruction = 32'b10010000001000110000000000000100;//-- ld ,r3 ,r1 ,4 //r3=2
		32'd428  : Instruction = 32'b10010000001001000000000000001000;//-- ld ,r4 ,r1 ,8 //r4=1546
		32'd432  : Instruction = 32'b10010000001001000000001000001000;//-- ld ,r4 ,r1 ,520 // after SRAM r4=random number
		32'd436  : Instruction = 32'b0;
		32'd440  : Instruction = 32'b0;
		32'd444  : Instruction = 32'b10010000001001000000010000001000;//-- ld ,r4 ,r1 ,1023 // after SRAM r4=random number
		32'd448  : Instruction = 32'b10010000001001010000000000001100;//-- ld ,r5 ,r1 ,12 // r5=1546
		32'd452  : Instruction = 32'b10010000001001100000000000010000;//-- ld ,r6 ,r1 ,16 //r6=1545
		32'd456  : Instruction = 32'b10010000001001110000000000010100;//-- ld ,r7 ,r1 ,20 //r7=-6184
		32'd460  : Instruction = 32'b10010000001010000000000000011000;//-- ld ,r8 ,r1 ,24 //r8=-1546
		32'd464  : Instruction = 32'b10010000001010010000000000011100;//-- ld ,r9 ,r1 ,28 //r9=1073741437
		32'd468  : Instruction = 32'b10010000001010100000000000100000;//-- ld ,r10,r1 ,32 //r10=-387
		32'd472  : Instruction = 32'b10010000001010110000000000100100;//-- ld ,r11,r1 ,36 //r11=-6184 // when change report execution clock
		32'd476  : Instruction = 32'b10101000000000001111111111111111;//-- JMP -1*/
		default : Instruction = 32'bz;
	endcase
end

endmodule