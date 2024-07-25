module SYS_TOP  #(
parameter RX_data_wd = 8, 
parameter RX_bit_count_wd = 3, //related to RX_data_wd
parameter prescale_wd = 6,
parameter TX_data_width=RX_data_wd
)(
input	wire		UART_CLK,REF_CLK,RST_N,
input	wire		UART_RX_IN,
output  wire        UART_TX_O,
output  wire        parity_error,
output  wire        framing_error
);

localparam RX_DIV_RATIO_WD = 4;
localparam RST_NUM_STAGES = 2;
localparam DATA_NUM_STAGES = 2;
localparam FIFO_ADDR_WD = 3;
localparam REG_F_ADDR_WD = 4 ;
localparam REG_F_DATA_WD = TX_data_width;
localparam ALU_OP_WD = REG_F_DATA_WD;
localparam ALU_FUN_WD = 4;
localparam ALU_OUT_WD = ALU_OP_WD*2;

wire RX_CLK, TX_CLK, UART_SYNC_RST, REF_SYNC_RST, ALU_CLK, Gate_EN, FIFO_RD_INC_PULSE, FIFO_WR_INC, ALU_OUT_VALID, REG_F_WrEn, REG_F_RdEn, ALU_EN, TX_DATA_VALID ;

wire	[prescale_wd-1:0]		prescale;

wire [RX_data_wd-1:0] RX_P_DATA, RX_P_DATA_SYNC;

wire [TX_data_width-1:0] FIFO_RD_DATA, FIFO_WR_DATA;

wire PAR_TYP, PAR_EN, TX_Busy, RX_data_valid, RX_data_valid_SYNC;

wire F_FULL, F_EMPTY;


wire [prescale_wd-1:0] TX_Div_Ratio;
wire [RX_DIV_RATIO_WD-1:0] RX_Div_Ratio;


wire [ALU_OP_WD-1:0] ALU_OP_A,ALU_OP_B;
wire [ALU_FUN_WD-1:0] ALU_FUN;
wire [ALU_OUT_WD-1:0] ALU_OUT;

wire [REG_F_ADDR_WD-1:0] REG_F_Address;
wire [REG_F_DATA_WD-1:0] REG_F_WrData, REG_F_RdData, UART_CONFIG, REG_3;


assign PAR_EN = UART_CONFIG[0];
assign PAR_TYP = UART_CONFIG[1];
assign TX_Div_Ratio = REG_3[prescale_wd-1:0];
assign prescale = UART_CONFIG[prescale_wd+1:2];



////////////////////////////// RST_SYNC_1 ---> REF CLK DOMIAN //////////////////////////
	RST_SYNC #(
	.NUM_STAGES(RST_NUM_STAGES)) 
	RST_SYNC_1 (
		.CLK(REF_CLK), 
		.RST(RST_N), 
		.SYNC_RST(REF_SYNC_RST)
	);
	
	
////////////////////////////// RST_SYNC_2 ---> UART CLK DOMIAN //////////////////////////	
	RST_SYNC #(
	.NUM_STAGES(RST_NUM_STAGES)) 
	RST_SYNC_2 (
		.CLK(UART_CLK), 
		.RST(RST_N), 
		.SYNC_RST(UART_SYNC_RST)
	);
	
	
////////////////////////////// UART///////////////////////////	
	UART #(
		.RX_data_wd(RX_data_wd),
		.prescale_wd(prescale_wd), 
		.RX_bit_count_wd(RX_bit_count_wd),
		.TX_data_width(TX_data_width))
		U0_UART(
		.RX_CLK(RX_CLK), 
		.TX_CLK(TX_CLK), 
		.RST(UART_SYNC_RST), 
		.prescale(prescale), 
		.RX_IN(UART_RX_IN), 
		.PAR_TYP(PAR_TYP), 
		.PAR_EN(PAR_EN), 
		.RX_P_DATA(RX_P_DATA), 
		.RX_data_valid(RX_data_valid), 
		.par_err(parity_error), 
		.stp_err(framing_error),
		.TX_P_DATA(FIFO_RD_DATA), 
		.TX_DATA_VALID(TX_DATA_VALID), 
		.TX_OUT(UART_TX_O), 
		.TX_Busy(TX_Busy)
	);
	

////////////////////////////// TX_CLK //////////////////////////	
	ClkDiv #(.DIV_RATIO_WIDTH(prescale_wd)) TX_ClkDiv (
		.i_ref_clk(UART_CLK), 
		.i_rst_n(UART_SYNC_RST), 
		.i_clk_en(1'd1), 
		.i_div_ratio(TX_Div_Ratio), 
		.o_div_clk(TX_CLK)
	);

	assign TX_DATA_VALID = !F_EMPTY ;
	

////////////////////////////// RX_CLK //////////////////////////	
	ClkDiv #(.DIV_RATIO_WIDTH(RX_DIV_RATIO_WD)) RX_ClkDiv (
		.i_ref_clk(UART_CLK), 
		.i_rst_n(UART_SYNC_RST), 
		.i_clk_en(1'd1), 
		.i_div_ratio(RX_Div_Ratio), 
		.o_div_clk(RX_CLK)
	);


	RX_DIV_R_CALC #(.DIV_RATIO_WIDTH(RX_DIV_RATIO_WD), .prescale_wd(prescale_wd)) U0_RX_DIV_R_CALC (
	.prescale(prescale),
	.RX_Div_Ratio(RX_Div_Ratio));
	
	
////////////////////////////// ALU_CLK //////////////////////////		
	CLK_GATE U0_CLK_GATE(
	.CLK_EN(Gate_EN),
	.CLK(REF_CLK),
	.GATED_CLK(ALU_CLK)
	);

	
//////////////////////////////////////// RX TO REF DATA SYNC ///////////////////////
	DATA_SYNC #(
	.NUM_STAGES(DATA_NUM_STAGES),
	.BUS_WIDTH(RX_data_wd)) U0_DATA_SYNC (
		.CLK(REF_CLK), 
		.RST(REF_SYNC_RST), 
		.bus_enable(RX_data_valid), 
		.Unsync_bus(RX_P_DATA), 
		.sync_bus(RX_P_DATA_SYNC), 
		.enable_pulse(RX_data_valid_SYNC)
	);


//////////////////////////////////////// SYS_CNTRL TO TX ASYNC_FIFO ///////////////////////
	ASYNC_FIFO #(
	.DATA_WIDTH(TX_data_width),
	.ADDR_WIDTH(FIFO_ADDR_WD)) CTRL_2_TX_FIFO (
	.R_CLK(TX_CLK),
	.R_RST(UART_SYNC_RST), 		
	.W_CLK(REF_CLK),
	.W_RST(REF_SYNC_RST), 		
	.W_INC(FIFO_WR_INC), 		
	.R_INC(FIFO_RD_INC_PULSE), 		 
	.WR_DATA(FIFO_WR_DATA),	
	.RD_DATA(FIFO_RD_DATA),	
	.FULL(F_FULL),		
	.EMPTY(F_EMPTY)	
	);


//////////////////////////////////////// FIFO_RD_INC PULSE GENERATOR///////////////////////////////////
	PULSE_GEN U0_PULSE_GEN(
	.CLK(TX_CLK),
	.RST(UART_SYNC_RST),
	.IN(TX_Busy),
	.OUT(FIFO_RD_INC_PULSE));


//////////////////////////////////ALU/////////////////////////////
	ALU #(.op_size(ALU_OP_WD),.rslt_size(ALU_OUT_WD),.fun_size(ALU_FUN_WD)) U0_ALU (
		.CLK(ALU_CLK), 
		.RST(REF_SYNC_RST), 
		.ALU_EN(ALU_EN), 
		.A(ALU_OP_A), 
		.B(ALU_OP_B), 
		.ALU_FUN(ALU_FUN), 
		.ALU_OUT(ALU_OUT),
		.OUT_VALID(ALU_OUT_VALID)
	);


/////////////////////////////////REG FILE///////////////////////////////
	Reg_File #(.ADDR_WD(REG_F_ADDR_WD),.DATA_WD(REG_F_DATA_WD)) U0_RegFile (
		.CLK(REF_CLK), 
		.RST(REF_SYNC_RST), 
		.WrEn(REG_F_WrEn), 
		.RdEn(REG_F_RdEn), 
		.Address(REG_F_Address), 
		.WrData(REG_F_WrData), 
		.RdData(REG_F_RdData),
		.REG_0(ALU_OP_A),
		.REG_1(ALU_OP_B),
		.REG_2(UART_CONFIG),
		.REG_3(REG_3)
	);

	

/////////////////////////////////SYSTEM COTROL///////////////////////////////////////////////////////

	SYS_CNTRL #(.DATA_WD(TX_data_width),.REG_ADDR_WD(REG_F_ADDR_WD),.ALU_FUN_WD(ALU_FUN_WD),.ALU_OUT_WD(ALU_OUT_WD)) U0_SYS_CNTRL (
	.CLK(REF_CLK),
	.RST(REF_SYNC_RST),
	.REG_RD_D(REG_F_RdData), 
	.ALU_OUT(ALU_OUT), 
	.DATA_SYNC(RX_P_DATA_SYNC),
	.FIFO_FULL(F_FULL), 
	.ALU_OUT_VALID(ALU_OUT_VALID), 
	.VALID_SYNC(RX_data_valid_SYNC),
	.REG_WR_D(REG_F_WrData), 
	.FIFO_WR_D(FIFO_WR_DATA), 
	.REG_ADDR(REG_F_Address),
	.ALU_FUN(ALU_FUN),
	.REG_WR_EN(REG_F_WrEn), 
	.REG_RD_EN(REG_F_RdEn), 
	.ALU_EN(ALU_EN), 
	.GATE_EN(Gate_EN), 
	.FIFO_WR_INC(FIFO_WR_INC)
	);

	
endmodule