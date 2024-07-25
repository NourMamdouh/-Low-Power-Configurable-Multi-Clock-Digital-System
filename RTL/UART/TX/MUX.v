module MUX (
input	wire	[1:0]	sel,
input	wire			in0,in1,in2,in3,
output	reg				OUT
);

//localparam start_bit='d0, data='d1,parity_bit='d3, stop_bit='d2;

always @(*)begin
	case(sel)
		'd0:	begin
				OUT = in0;
				end
		'd1:	begin
				OUT = in1;
				end
		'd2:	begin
				OUT = in2;
				end
		'd3:	begin
				OUT = in3;
				end
	endcase
end

endmodule