module ALU (
	input[3:0]EXE_CMD,
	input signed [31:0] Val2,
	input signed [31:0] Val1,
	output reg signed[31:0] ALU_Res
);



always @(*) begin : proc_ALU
	case(EXE_CMD)
		0 : begin : ADD
			ALU_Res = Val1 + Val2;
		end
		2 : begin : SUB
			ALU_Res = Val1 - Val2;
		end
		4 : begin : AND
			ALU_Res = Val1 & Val2;
		end
		5 : begin : OR
			ALU_Res = Val1 | Val2;
		end
		6 : begin : NOR
			ALU_Res = ~(Val1 | Val2);
		end
		7 : begin : XOR 
			ALU_Res = Val1 ^ Val2;
		end
		8 : begin : SLA
			ALU_Res = Val1 << Val2;
		end
		9 : begin : SRA
			ALU_Res = Val1 >>> Val2;
		end
		10 : begin : SRL
			ALU_Res = Val1 >> Val2;
		end
		default : ALU_Res = 32'bz;
	endcase
end

endmodule