module stp_chk
(
input		wire			CLK,RST,
input		wire			sampled_bit,
input		wire			enable,
output		reg				stp_err
);


always @(posedge CLK,negedge RST)begin
	if(!RST)begin
		stp_err <= 'd0;
	end
	else if(enable)begin
		stp_err <= !sampled_bit ;
	end
end


endmodule