module RX_DIV_R_CALC #(parameter DIV_RATIO_WIDTH = 4,parameter prescale_wd=6) (
input	wire	[prescale_wd-1:0]		prescale,
output	reg		[DIV_RATIO_WIDTH-1:0] 	RX_Div_Ratio
);

always @(*)begin
	case(prescale)
		'd32	:	RX_Div_Ratio = 'd1;
		'd16	:	RX_Div_Ratio = 'd2;
		'd8	:		RX_Div_Ratio = 'd4;
		'd4	:		RX_Div_Ratio = 'd8;
		default:	RX_Div_Ratio = 'd1;
	endcase
end

endmodule