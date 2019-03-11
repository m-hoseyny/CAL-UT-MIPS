module Condition_Check (
	input [31:0] Reg2,
	input [31:0] Val1,
	input [1:0]BR_Type,
	output reg Br_taken
	
);

always @(*) begin : proc_ConditionCheck
	Br_taken = 0;
	case(BR_Type)
		0 : begin : OtherInstruction
			Br_taken = 0;
		end
		1 : begin : BEZ
			if(Val1 == 0) begin
				Br_taken = 1;
			end
		end
		2 : begin : BNE
			if(Val1 != Reg2) begin
				Br_taken = 1;
			end
		end
		3 : begin : JMP
			Br_taken = 1;
		end
	endcase
end

endmodule