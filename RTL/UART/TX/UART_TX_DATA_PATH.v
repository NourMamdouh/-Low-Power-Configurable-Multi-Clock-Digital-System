module UART_TX_DATA_PATH #(parameter width=8)(
input		wire						CLK,RST,
input		wire		[width-1:0]		P_DATA,
input		wire						DATA_VALID,
input		wire						PAR_EN,PAR_TYP,
//control signals -->> outputs from controller fsm
input		wire						ser_en, // a fram is being transmitted
input		wire						load_en, // activated high if data_valid is high in stop or valid state , to allow loading data before moving staright forward to start state
input		wire		[1:0]			mux_sel,
output		wire						ser_done,
output		reg 						TX_OUT	
);

//wire definitions
wire	par_bit, ser_data;
//mux_sel parameters
localparam start_bit='d0, data='d1,parity_bit='d3, idle_stop_bit='d2;


serializer #(.width(width)) SERIAL_BLOCK (
    .CLK(CLK), 
    .RST(RST), 
    .P_DATA(P_DATA),
	 .DATA_VALID(DATA_VALID), 
    .ser_en(ser_en), 
    .load_en(load_en), 
    .ser_data(ser_data), 
    .ser_done(ser_done)
    );
	

parity_calc #(.width(width)) PARITY_BLOCK (
    .CLK(CLK), 
    .RST(RST), 
    .P_DATA(P_DATA),
	 .DATA_VALID(DATA_VALID),
    .load_en(load_en), 
    .PAR_TYP(PAR_TYP), 
    .PAR_EN(PAR_EN), 
    .par_bit(par_bit)
    );


//MUX LOGIC
always @(*)begin
	case(mux_sel)
		start_bit	:	begin
						TX_OUT = 'd0;
						end
		data		:	begin
						TX_OUT = ser_data;
						end
		parity_bit	:	begin
						TX_OUT = par_bit;
						end
		idle_stop_bit:	begin
						TX_OUT = 'd1;
						end
		default      :	begin
						TX_OUT = 'd1;
						end
	endcase	
end

endmodule