module UART #(
parameter RX_data_wd = 8, 
parameter RX_bit_count_wd = 3, //related to RX_data_wd
parameter prescale_wd = 6,
parameter TX_data_width=8
)(
input		wire							RST,
input		wire							PAR_EN,PAR_TYP,
///////////////TX////////////////////
input		wire							RX_CLK,
input		wire	[TX_data_width-1:0]		TX_P_DATA,
input		wire							TX_DATA_VALID,
output		wire							TX_OUT,
output		wire							TX_Busy,
///////////////RX////////////////////
input		wire							TX_CLK,
input		wire	[prescale_wd-1:0]		prescale,
input		wire							RX_IN,
output		wire	[RX_data_wd-1:0]		RX_P_DATA,
output		wire							RX_data_valid,par_err,stp_err
);

///////////////////UART RX/////////////////////////////
	UART_RX #(
		.RX_data_wd(RX_data_wd),
		.prescale_wd(prescale_wd), 
		.RX_bit_count_wd(RX_bit_count_wd))
		U0_UART_RX(
		.CLK(RX_CLK), 
		.RST(RST), 
		.prescale(prescale), 
		.RX_IN(RX_IN), 
		.PAR_TYP(PAR_TYP), 
		.PAR_EN(PAR_EN), 
		.P_DATA(RX_P_DATA), 
		.data_valid(RX_data_valid), 
		.par_err(par_err), 
		.stp_err(stp_err)
	);
	
	
///////////////////UART TX/////////////////////////////
	UART_TX_TOP #(
		.TX_data_width(TX_data_width))
		U0_UART_TX (
		.CLK(TX_CLK), 
		.RST(RST), 
		.P_DATA(TX_P_DATA), 
		.DATA_VALID(TX_DATA_VALID), 
		.PAR_EN(PAR_EN), 
		.PAR_TYP(PAR_TYP), 
		.TX_OUT(TX_OUT), 
		.Busy(TX_Busy)
	);
	
endmodule