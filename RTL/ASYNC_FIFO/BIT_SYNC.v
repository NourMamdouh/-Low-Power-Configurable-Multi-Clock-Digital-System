module BIT_SYNC #(
parameter NUM_STAGES = 2,
parameter BUS_WIDTH = 8
)(
input	wire							CLK,RST,
input	wire 		[BUS_WIDTH-1:0]		ASYNC,
output	reg			[BUS_WIDTH-1:0]		SYNC
);

integer i;
//sychronizer instantiation
reg [NUM_STAGES-1 : 0] sychronizer [0:BUS_WIDTH-1] ;


//sychronizer logic
always @(posedge CLK,negedge RST)begin
	if(!RST)begin
		for(i=0;i<BUS_WIDTH;i=i+1)begin
			sychronizer[i] <= 'd0;
		end
	end
	else begin
		for(i=0;i<BUS_WIDTH;i=i+1)begin
			sychronizer[i] <= {ASYNC[i],sychronizer[i][NUM_STAGES-1:1]};
		end	
	end
end


//output logic
always @(*)begin
	for(i=0;i<BUS_WIDTH;i=i+1)begin
		SYNC[i] = sychronizer[i]['d0];
	end
end



endmodule