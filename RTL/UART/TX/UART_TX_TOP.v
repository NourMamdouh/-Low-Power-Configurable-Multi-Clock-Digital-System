module UART_TX_TOP #(parameter TX_data_width=8)(
input		wire							CLK,RST,
input		wire	[TX_data_width-1:0]		P_DATA,
input		wire							DATA_VALID,
input		wire							PAR_EN,PAR_TYP,
output		wire							TX_OUT,
output		wire							Busy
);

//wire definitions
wire ser_en, load_en, ser_done;
wire [1:0] mux_sel;

UART_TX_DATA_PATH #(.width(TX_data_width))DATAPATH (
    .CLK(CLK), 
    .RST(RST), 
    .P_DATA(P_DATA),
	.DATA_VALID(DATA_VALID), 
    .PAR_EN(PAR_EN), 
    .PAR_TYP(PAR_TYP), 
    .ser_en(ser_en), 
    .load_en(load_en), 
    .mux_sel(mux_sel), 
    .ser_done(ser_done), 
    .TX_OUT(TX_OUT)
    );


UART_TX_fsm FSM (
    .CLK(CLK), 
    .RST(RST), 
    .DATA_VALID(DATA_VALID), 
    .ser_done(ser_done), 
    .PAR_EN(PAR_EN), 
    .mux_sel(mux_sel), 
    .ser_en(ser_en), 
    .load_en(load_en), 
    .Busy(Busy)
    );


endmodule
