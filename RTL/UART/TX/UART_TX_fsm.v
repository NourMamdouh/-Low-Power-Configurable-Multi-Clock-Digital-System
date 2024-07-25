module UART_TX_fsm(
input		wire			CLK,RST,
input		wire			DATA_VALID,
input		wire			ser_done, 		// output from serializer
input		wire			PAR_EN,
output		reg		[1:0]	mux_sel,
output		reg				ser_en,
output		reg				load_en,	// to enable loading parity flag and P_DATA
output		reg				Busy 			// activated when a framث is being transmitted
);


/////////////////////state definitions ////////////////////////
localparam [2:0] 	idle		= 'b000,
					start  	 	= 'b001,
					data_trans	= 'b011,
					parity		= 'b010,
					stop		= 'b110;



/////////////////////mux_sel parameters/////////////////////
localparam start_bit='d0, data='d1,parity_bit='d3, idle_stop_bit='d2; 
	
	
	
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
						if(DATA_VALID)begin
							next_state = start;
						end
						else begin
							next_state = idle;
						end
					end
		start:		begin
						next_state = data_trans;	
					end
		data_trans:	begin
						if(ser_done)begin
							if(PAR_EN)begin
								next_state = parity;
							end
							else begin
								next_state = stop;
							end	
						end
						else begin
							next_state = data_trans;
						end
					end
		parity:		begin
						next_state = stop;
					end
		stop:		begin
						if(DATA_VALID)begin
							next_state = start;
						end
						else begin
							next_state = idle;
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
	mux_sel  ='d0;
	ser_en	 ='d0;
	load_en	 ='d0;
	Busy	 ='d0;
	case(current_state)
		idle:		begin
						load_en = 'd1; //to allow loading new data into serilaizer in case data_valid goes high
						mux_sel = idle_stop_bit;
					end
		start:		begin
						Busy ='d1;
						mux_sel = start_bit;
					end
		data_trans:	begin
						Busy ='d1;
						mux_sel = data;
						ser_en = 'd1;		
					end
		parity:		begin
						Busy ='d1;
						mux_sel = parity_bit;
					end
		stop:		begin
						//Busy ='d1;
						Busy = !DATA_VALID ; 
						// proposed modification: Busy = !DATA_VALID   --> so that busy goes low, if fifo still has data to send, and as a R_INC pulse is generated again
						mux_sel = idle_stop_bit;
						load_en = 'd1; //to allow loading new data into serilaizer in case data_valid goes high
					end
		default:	begin
						mux_sel  ='d0;
						ser_en	 ='d0;
						load_en	 ='d0;
						Busy	 ='d0;
					end
					
	endcase
end


endmodule
