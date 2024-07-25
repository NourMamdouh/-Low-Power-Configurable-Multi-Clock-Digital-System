module ALU #(parameter op_size=16, parameter rslt_size=16, parameter fun_size=4)(
input			wire					CLK,RST,
input			wire					ALU_EN,
//ALU operands
input			wire	[op_size-1:0]	A,B,
//ALU operation selector
input			wire  	[fun_size-1:0]	ALU_FUN,
//Outputs
output			reg 	[rslt_size-1:0]	ALU_OUT,
output			reg 					OUT_VALID
 );


//internal signal
reg [rslt_size-1:0] rslt;
reg DATA_VALID;


//operation parameters
localparam [fun_size-1 : 0] ADD='d0, SUB='d1, MULT='d2, DIV='d3, AND='d4, OR='d5, NAND='d6, NOR='d7, XOR='d8, XNOR='d9, 
									EQUAL='d10, GREATER_THAN='d11, LESS_THAN='d12, R_SH='d13, L_SH='d14; 


//registering the output
always @(posedge CLK, negedge RST) begin
	if(!RST)begin
		ALU_OUT <= 'd0;
		OUT_VALID <= 'd0;
	end
	else if(ALU_EN) begin
		ALU_OUT <= rslt;
		OUT_VALID <= DATA_VALID;
	end
	else begin
		OUT_VALID  <= 'd0;
	end
end


//ALU Logic
always @(*)begin
DATA_VALID = 'd1;
rslt = 'd0;
	case(ALU_FUN)
	// Arithmetic operations
		ADD: begin
			rslt = A+B;
		end
		SUB: begin
			rslt = A-B;
		end
		MULT: begin
			rslt = A*B;
		end
		DIV: begin
			rslt = A/B;
		end
	//Logic operations
		AND: begin
			rslt = A&B;
		end
		OR: begin
			rslt = A|B;
		end
		NAND: begin
			rslt = ~(A&B);
		end
		NOR: begin
			rslt = ~(A|B);
		end
		XOR: begin
			rslt = A^B;
		end
		XNOR: begin
			rslt = ~(A^B);
		end
	//comparisons
		EQUAL: begin
			if(A==B) begin
				rslt = 'd1;
			end
			else begin
				rslt = 'd0;
			end
		end
		GREATER_THAN: begin
			if(A>B) begin
				rslt = 'd2;
			end
			else begin
				rslt = 'd0;
			end
		end
		LESS_THAN: begin
			if(A<B) begin
				rslt = 'd3;
			end
			else begin
				rslt = 'd0;
			end
		end
	//shift operations
		R_SH: begin
			rslt = A>>1;
		end
		L_SH: begin
			rslt = A<<1;
		end
		default: begin
			rslt = 'd0;
			DATA_VALID = 'd0;
		end
	endcase
end


endmodule