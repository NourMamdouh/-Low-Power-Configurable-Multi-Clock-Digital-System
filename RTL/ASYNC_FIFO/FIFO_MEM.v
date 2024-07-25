module FIFO_MEM #(
parameter DATA_WIDTH=8,
parameter ADDR_WIDTH=3) (
input	wire						CLK,RST,		//W_CLK && W_RST
input	wire	[ADDR_WIDTH-1:0]	W_ADDR,R_ADDR,
input	wire	[DATA_WIDTH-1:0]	W_DATA,
input	wire						W_EN,
output	wire	[DATA_WIDTH-1:0]	R_DATA
);

//internal mem structure
reg [DATA_WIDTH-1:0] FIFO [0:((2**ADDR_WIDTH)-1)];
// internal control internal
integer i;


//mem logic
always @(posedge CLK,negedge RST)begin
	if(!RST)begin
		for(i=0;i<(2**ADDR_WIDTH);i=i+1)begin
			FIFO[i] <= 'd0;
		end
	end
	else if(W_EN)begin
		FIFO[W_ADDR] <= W_DATA;
	end
end


//READ logic
assign R_DATA = FIFO[R_ADDR];

endmodule