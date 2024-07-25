module UART_RX #(
parameter RX_data_wd = 8, 
parameter RX_bit_count_wd = 3, //related to data_wd
parameter prescale_wd = 6
)(
input		wire						CLK,RST,
input		wire	[prescale_wd-1:0]	prescale,
input		wire						RX_IN,PAR_TYP,PAR_EN,
output		wire	[RX_data_wd-1:0]		P_DATA,
output		wire							data_valid,par_err,stp_err
);


//internal signals
wire						edge_cnt_en,bit_cnt_en,data_samp_en,deser_en,par_chk_en,stp_chk_en,sampled_bit,sampling_done,edge_count_done;
wire	[RX_bit_count_wd-1:0]	bit_count;


UART_RX_DATAPATH #(
.data_wd(RX_data_wd),
.prescale_wd(prescale_wd), 
.bit_count_wd(RX_bit_count_wd))
U0_UART_RX_DATAPATH(
    .CLK(CLK), 
    .RST(RST), 
    .prescale(prescale), 
    .RX_IN(RX_IN), 
    .PAR_TYP(PAR_TYP),  
    .edge_cnt_en(edge_cnt_en), 
    .bit_cnt_en(bit_cnt_en), 
    .data_samp_en(data_samp_en), 
    .deser_en(deser_en), 
    .par_chk_en(par_chk_en), 
    .stp_chk_en(stp_chk_en), 
    .bit_count(bit_count), 
    .sampled_bit(sampled_bit), 
    .sampling_done(sampling_done), 
	.edge_count_done(edge_count_done),
    .par_err(par_err), 
    .stp_err(stp_err), 
    .P_DATA(P_DATA)
    );
	
	
UART_RX_fsm #(
.data_wd(RX_data_wd),
.prescale_wd(prescale_wd), 
.bit_count_wd(RX_bit_count_wd))
U0_UART_RX_fsm(
    .CLK(CLK), 
    .RST(RST), 
    .RX_IN(RX_IN), 
    .PAR_EN(PAR_EN), 
    .bit_count(bit_count), 
    .sampled_bit(sampled_bit), 
    .sampling_done(sampling_done), 
	.edge_count_done(edge_count_done),
    .par_err(par_err), 
    .stp_err(stp_err), 
    .data_valid(data_valid), 
    .edge_cnt_en(edge_cnt_en), 
    .bit_cnt_en(bit_cnt_en), 
    .data_samp_en(data_samp_en), 
    .deser_en(deser_en), 
    .par_chk_en(par_chk_en), 
    .stp_chk_en(stp_chk_en)
    );	


endmodule