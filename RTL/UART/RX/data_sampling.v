module data_smapling #(
parameter prescale_wd = 6
)(
input		wire						CLK,RST,
input		wire	[prescale_wd-1:0]	prescale,
input		wire						data_samp_en,   //output control signal from fsm
input		wire						RX_IN,
input		wire	[prescale_wd-1:0]	edge_count,
output		reg							sampled_bit,									
output		reg							sampling_done  //input to fsm									
);


//internal control signals
wire	[prescale_wd-2:0] 	middle,left_middle,right_middle;
reg		[2:0]				samples;


//storing sampled bits
always @(posedge CLK,negedge RST)begin
	if(!RST)begin
		samples <= 'd0;
	end
	else if(data_samp_en)begin
		if(edge_count == left_middle && (prescale != 'd4))begin
			samples [0] <= RX_IN;
		end
		else if(edge_count == middle)begin
			samples [1] <= RX_IN;
		end
		else if(edge_count == right_middle && (prescale != 'd4))begin
			samples [2] <= RX_IN;
		end
	end
end


//done_signal and sampled_bit logic
always @(*)begin
	if(prescale == 'd4)begin
		sampling_done = (edge_count == right_middle);
		sampled_bit = samples [1];
	end
	else begin
		sampling_done = (edge_count == (right_middle + 'd1));
		case(samples)
			3'b000,3'b001,3'b010,3'b100 :begin
											sampled_bit = 1'b0;	
										end
			3'b011,3'b101,3'b110,3'b111 :begin
											sampled_bit = 1'b1;	
										end
			default					   :begin
											sampled_bit = 1'b0;
										end
										
		endcase
	end
end


//internal control signals logic
assign  middle		 = (prescale >> 'd1) - 'd1;
assign left_middle	 = middle - 'd1;
assign right_middle	 = middle + 'd1;


endmodule