module RST_SYNC #(
parameter NUM_STAGES = 2)(
input	wire	CLK,RST,
output	wire	SYNC_RST
);

//sychronizer instantiation
reg [NUM_STAGES-1:0] sychronizer;


//sychronizer logic
always @(posedge CLK,negedge RST)begin
	if(!RST)begin
		sychronizer <= 'd0;
	end
	else begin
		sychronizer <= {1'b1,sychronizer[NUM_STAGES-1:1]};
	end
end


//SYNC_RST assignment
assign SYNC_RST = sychronizer['d0];

endmodule