module UART_RX_DATAPATH #(
parameter data_wd = 8, 
parameter bit_count_wd = 3, //related to data_wd
parameter prescale_wd = 6
)(
input		wire						CLK,RST,
input		wire	[prescale_wd-1:0]	prescale,
input		wire						RX_IN,PAR_TYP,
//outputs from fsm
input		wire						edge_cnt_en,bit_cnt_en,data_samp_en,deser_en,par_chk_en,stp_chk_en,
//inputs to fsm
output		wire	[bit_count_wd-1:0]	bit_count,	
output		wire						sampled_bit,sampling_done,edge_count_done,
output		wire						par_err,stp_err,
//only_top outputs
output		wire	[data_wd-1:0]		P_DATA
);


wire	[prescale_wd-1:0]	edge_count;


edge_bit_counter #(
.prescale_wd(prescale_wd), 
.bit_count_wd(bit_count_wd))
U0_edge_bit_counter(
.CLK(CLK),
.RST(RST),
.prescale(prescale),
.edge_cnt_en(edge_cnt_en), 
.bit_cnt_en(bit_cnt_en),
.edge_count(edge_count),
.bit_count(bit_count),
.edge_count_done(edge_count_done)
);


data_smapling #(
.prescale_wd(prescale_wd)) 
U0_data_smapling (
.CLK(CLK),
.RST(RST),
.prescale(prescale),
.data_samp_en(data_samp_en),
.RX_IN(RX_IN),
.edge_count(edge_count),
.sampled_bit(sampled_bit),									
.sampling_done(sampling_done)								
);


deserializer #(
.data_wd(data_wd),
.bit_count_wd(bit_count_wd))
U0_deserializer(
.CLK(CLK),
.RST(RST),
.bit_count(bit_count),
.sampled_bit(sampled_bit),									
.enable(deser_en),
.P_DATA(P_DATA)
);


par_chk #(
.data_wd(data_wd))
U0_par_chk(
.CLK(CLK),
.RST(RST),
.P_DATA(P_DATA),
.PAR_TYP(PAR_TYP),
.sampled_bit(sampled_bit),									
.enable(par_chk_en),
.par_err(par_err)
);


stp_chk
U0_stp_chk(
.CLK(CLK),
.RST(RST),
.sampled_bit(sampled_bit),									
.enable(stp_chk_en),
.stp_err(stp_err)
);


endmodule