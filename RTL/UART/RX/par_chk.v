module par_chk #(
parameter data_wd=8)
(
input		wire					CLK,RST,
input		wire	[data_wd-1:0]	P_DATA,
input		wire					PAR_TYP,
input		wire					sampled_bit,
input		wire					enable,
output		reg						par_err
);


//internal signals
wire parity;


always @(posedge CLK,negedge RST)begin
	if(!RST)begin
		par_err <= 'd0;
	end
	else if(enable)begin
		par_err <= sampled_bit ^ parity;
	end
end


//parity calculation logic
assign parity = (PAR_TYP==1'b0)? ^P_DATA : ~(^P_DATA) ;


endmodule