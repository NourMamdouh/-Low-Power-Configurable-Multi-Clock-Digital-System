module PULSE_GEN (
input	wire	CLK,RST,
input	wire	IN,
output	wire	OUT
);

reg pulse_reg;

always @(posedge CLK,negedge RST)begin
	if(!RST)begin
		pulse_reg <= 'd0;
	end
	else begin
		pulse_reg <= IN;
	end
end

assign OUT = IN && !pulse_reg ;

endmodule