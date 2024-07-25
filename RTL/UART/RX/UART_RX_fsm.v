module UART_RX_fsm #(
parameter data_wd = 8, 
parameter bit_count_wd = 3, //related to data_wd
parameter prescale_wd = 6  
)(
input		wire						CLK,RST,
input		wire						RX_IN,PAR_EN,
//outputs from datapath
input		wire	[bit_count_wd-1:0]	bit_count,	
input		wire						sampled_bit,sampling_done,edge_count_done,
input		wire						par_err,stp_err,
//inputs to datapath
output		reg							data_valid,edge_cnt_en,bit_cnt_en,data_samp_en,deser_en,par_chk_en,stp_chk_en
);

/////////////////////internal control signals and parameters//////////////////
localparam	[bit_count_wd-1:0]	max_bit_count = data_wd-'d1;


/////////////////////state definitions ///////////////////////////////////////
localparam [2:0] 	idle		= 'b000,
					start  	 	= 'b001,
					data		= 'b011,
					parity		= 'b010,
					stop		= 'b110;

	
//s/////////////////state transitions//////////////////////////////////
reg 	   [2:0]	current_state,next_state;

always @(posedge CLK,negedge RST)begin
	if(!RST)begin
		current_state <= idle;
	end
	else begin
		current_state <= next_state;
	end
end


//////////////////////next_state logic///////////////////////////////
always @(*)begin
	//default value
	next_state= idle;
	case(current_state)
		idle:		begin
						if(!RX_IN)begin
							next_state = start;
						end
						else begin
							next_state = idle;
						end
					end
		start:		begin
						if(sampling_done && sampled_bit)begin  //glitch
							next_state = idle;
						end
						else if(edge_count_done)begin
							next_state = data;
						end
						else begin
							next_state = start;
						end
							
					end
		data:		begin
						if(edge_count_done && (bit_count==max_bit_count))begin
							if(PAR_EN)begin
								next_state = parity;
							end
							else begin
								next_state = stop;
							end	
						end
						else begin
							next_state = data;
						end
					end
		parity:		begin
						if(edge_count_done)begin
							next_state = stop;
						end
						else begin
							next_state = parity;
						end
					end
		stop:		begin
						if(edge_count_done)begin
							if(RX_IN)begin
								next_state = idle;
							end
							else begin
								next_state = start;
							end	
						end
						else begin
							next_state = stop;
						end
					end
		default:	begin
						next_state = idle;	
					end
					
	endcase
end


//////////////////////output logic///////////////////////////////
always @(*)begin
	//default values
	data_valid		= 'd0;		
	edge_cnt_en		= 'd0;
	bit_cnt_en		= 'd0;
	data_samp_en	= 'd0;
	deser_en		= 'd0;
	par_chk_en		= 'd0;
	stp_chk_en		= 'd0;
	case(current_state)
		idle:		begin
						data_valid	= 'd0;
					end
		start:		begin
						edge_cnt_en = 'd1;
						data_samp_en = 'd1;
					end
		data:		begin
						edge_cnt_en = 'd1;
						bit_cnt_en = 'd1;
						data_samp_en = 'd1;
						deser_en = sampling_done;
					end
		parity:		begin
						edge_cnt_en = 'd1;
						data_samp_en = 'd1;
						par_chk_en = sampling_done;
					end
		stop:		begin
						edge_cnt_en = 'd1;
						data_samp_en = 'd1;
						stp_chk_en = sampling_done;
						if(edge_count_done && !stp_err && !(PAR_EN & par_err))begin // to not consider previous par_error value if parity is now disabled
							data_valid = 'd1;
						end
						else begin
							data_valid = 'd0;
						end
					end
		default:	begin
						data_valid		= 'd0;		
						edge_cnt_en		= 'd0;
						bit_cnt_en		= 'd0;
						data_samp_en	= 'd0;
						deser_en		= 'd0;
						par_chk_en		= 'd0;
						stp_chk_en		= 'd0;	
					end
	endcase
end

endmodule