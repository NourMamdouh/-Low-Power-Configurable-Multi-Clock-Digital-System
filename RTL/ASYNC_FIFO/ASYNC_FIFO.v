module ASYNC_FIFO #(
parameter DATA_WIDTH=8,
parameter ADDR_WIDTH=3) (
input	wire						R_CLK,R_RST, //for read operatin		
input	wire						W_CLK,W_RST, //for write operatin		
input	wire						W_INC, 		 //to enable writing into FIFO
input	wire						R_INC, 		 //to enable reading from FIFO
input	wire	[DATA_WIDTH-1:0]	WR_DATA,	// transmitter data
output	wire	[DATA_WIDTH-1:0]	RD_DATA,	//reciever data
output	wire						FULL,		//to indicate FIFO IS FULL
output	wire						EMPTY		//to indicate FIFO IS FULL
);

//internal signal declarations
wire [ADDR_WIDTH-1:0] W_ADDR,R_ADDR;
wire MEM_W_EN;
wire [ADDR_WIDTH:0] W_PTR_SYNC, R_PTR_SYNC, R_PTR, W_PTR;
localparam sync_stages_num = 2;


FIFO_MEM #(.DATA_WIDTH(DATA_WIDTH),.ADDR_WIDTH(ADDR_WIDTH))U0_FIFO_MEM (
    .CLK(W_CLK), 
    .RST(W_RST), 
    .W_ADDR(W_ADDR), 
    .R_ADDR(R_ADDR), 
    .W_DATA(WR_DATA), 
    .W_EN(MEM_W_EN), 
    .R_DATA(RD_DATA)
    );
	
	
READ_EMPTY #(.ADDR_WIDTH(ADDR_WIDTH)) U0_READ_EMPTY (
    .CLK(R_CLK), 
    .RST(R_RST), 
    .R_INC(R_INC), 
    .W_PTR_SYNC(W_PTR_SYNC), 
    .EMPTY(EMPTY), 
    .R_ADDR(R_ADDR), 
    .R_PTR(R_PTR)
    );
	
	
WRITE_FULL #(.ADDR_WIDTH(ADDR_WIDTH)) U0_WRITE_FULL (
    .CLK(W_CLK), 
    .RST(W_RST), 
    .W_INC(W_INC), 
    .R_PTR_SYNC(R_PTR_SYNC), 
    .FULL(FULL), 
    .W_ADDR(W_ADDR), 
    .W_PTR(W_PTR), 
    .MEM_W_EN(MEM_W_EN)
    );
	
	
BIT_SYNC  #(
	.NUM_STAGES(sync_stages_num),
	.BUS_WIDTH((ADDR_WIDTH+1))) 
		W2R_SYNC(
		.CLK(R_CLK), 
		.RST(R_RST), 
		.ASYNC(W_PTR), 
		.SYNC(W_PTR_SYNC)
	);
	
	
BIT_SYNC  #(
	.NUM_STAGES(sync_stages_num),
	.BUS_WIDTH((ADDR_WIDTH+1))) 
		R2W_SYNC(
		.CLK(W_CLK), 
		.RST(W_RST), 
		.ASYNC(R_PTR), 
		.SYNC(R_PTR_SYNC)
	);	

endmodule