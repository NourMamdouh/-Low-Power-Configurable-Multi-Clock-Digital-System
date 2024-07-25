module deserializer #(
parameter data_wd=8,
parameter bit_count_wd=3)
(
input		wire						CLK,RST,
input		wire	[bit_count_wd-1:0]	bit_count,
input		wire						sampled_bit,
input		wire						enable,
output		reg	[data_wd-1:0]		P_DATA
);

always @(posedge CLK,negedge RST)begin
	if(!RST)begin
		P_DATA <= 'd0;
	end
	else if(enable)begin
		P_DATA[bit_count] <= sampled_bit;
	end
end

endmodule