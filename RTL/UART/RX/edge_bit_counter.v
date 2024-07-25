module edge_bit_counter #(
parameter prescale_wd=6, 
parameter bit_count_wd = 3 // reltaed to frame data width
)
(
input		wire						CLK ,RST,
input		wire	[prescale_wd-1:0]	prescale,
input		wire						edge_cnt_en, bit_cnt_en,   //output control signals from fsm
output		reg		[prescale_wd-1:0]	edge_count,
output		reg		[bit_count_wd-1:0]	bit_count,
output		reg							edge_count_done
);

wire edge_count_done_comb;


//edge counter logic
always @(posedge CLK,negedge RST)begin
	if(!RST)begin
		edge_count <= 'd0;
	end
	else if(edge_cnt_en && !edge_count_done)begin
		edge_count <= edge_count + 'd1;
	end
	else begin
		edge_count <= 'd0;
	end
end


//edge counter done logic
always @(posedge CLK,negedge RST)begin
	if(!RST)begin
		edge_count_done <= 'd0;
	end
	else begin
		edge_count_done <= edge_count_done_comb;
	end
end

//bit counter logic
always @(posedge CLK,negedge RST)begin
	if(!RST)begin
		bit_count <= 'd0;
	end
	else if(bit_cnt_en)begin
		if(edge_count_done)begin
			bit_count <= bit_count + 'd1;
		end
	end
	else begin
		bit_count <= 'd0;
	end
end


//edge_count_done logic
assign edge_count_done_comb = (edge_count == (prescale - 'd2));


endmodule