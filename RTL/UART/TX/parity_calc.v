module parity_calc #(parameter width=8)(
input 		wire						CLK,
input 		wire						RST,
input		wire		[width-1:0]		P_DATA,
input		wire						DATA_VALID,
input		wire						load_en,
input		wire						PAR_TYP,
input		wire						PAR_EN,// is enabled if data_valid goes high in idle or stop state
output		reg						par_bit
);

wire parity_combo;

always @(posedge CLK,negedge RST)begin
	if(!RST)begin
		par_bit <= 'd0;
	end
	else if (PAR_EN && load_en && DATA_VALID) begin
		par_bit <=  parity_combo;
	end
end

assign parity_combo = PAR_TYP? (!(^P_DATA)) : (^P_DATA) ; 

endmodule
