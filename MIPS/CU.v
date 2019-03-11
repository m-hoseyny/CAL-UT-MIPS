module CU (
	input [5:0]opcode,
	output reg[3:0]EXE_CMD,
	output reg MEM_R_EN,
	output reg MEM_W_EN,
	output reg WB_EN,
	output reg IS_IMM,
	output reg [1:0]BR_Type	
);

always @(*) begin : proc_
	{EXE_CMD, BR_Type, MEM_W_EN, MEM_R_EN, WB_EN, IS_IMM} = 10'b0;
	case (opcode) 
		0 : begin : NOP
			EXE_CMD = 4'bx;
		end
		1 : begin : ADD
			EXE_CMD = 4'b0;
			WB_EN = 1;
		end
		3 : begin : SUB
			EXE_CMD = 4'b0010;
			WB_EN = 1;
		end
		5 : begin : AND
			EXE_CMD = 4'b0100;
			WB_EN = 1;
		end
		6 : begin : OR
			EXE_CMD = 4'b0101;
			WB_EN = 1;
		end
		7 : begin : NOR
			EXE_CMD = 4'b0110;
			WB_EN = 1;
		end
		8 : begin : XOR
			EXE_CMD = 4'b0111;
			WB_EN = 1;
		end
		9 : begin : SAL
			EXE_CMD = 4'b1000;
			WB_EN = 1;
		end
		10 : begin : SLL 
			EXE_CMD = 4'b1000;
			WB_EN = 1;
		end
		11 : begin : SRA
			EXE_CMD = 4'b1001;
			WB_EN = 1;
		end
		12 : begin : SRL
			EXE_CMD = 4'b1010;
			WB_EN = 1;
		end
		32 : begin : ADDI
			EXE_CMD = 4'b0;
			IS_IMM = 1'b1;
			WB_EN = 1;
		end
		33 : begin : SUBI
			EXE_CMD = 4'b0010;
			IS_IMM = 1'b1;
			WB_EN = 1;
		end
		36 : begin : LD
			EXE_CMD = 4'b0;
			WB_EN = 1;
			MEM_R_EN = 1'b1;
			IS_IMM = 1'b1;
		end
		37 : begin : ST
			EXE_CMD = 4'b0;
			MEM_W_EN = 1'b1;
			IS_IMM = 1'b1;
		end
		40 : begin : BEZ
			EXE_CMD = 4'bx;
			BR_Type = 2'b01;
		end
		41 : begin : BNE
			EXE_CMD = 4'bx;
			BR_Type = 2'b10;
		end
		42 : begin : JMP
			EXE_CMD = 4'bx;
			BR_Type = 2'b11;
		end
		default : EXE_CMD = 4'bz;
	endcase
end

endmodule