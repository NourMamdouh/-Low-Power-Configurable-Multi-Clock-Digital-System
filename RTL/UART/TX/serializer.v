module serializer #(parameter width=8 )( //up to 8 bits)(
input		wire						CLK,
input		wire						RST, //asynchronous active low reset
//parallel data
input		wire		[width-1:0]		P_DATA,
input		wire						DATA_VALID,
//control signals -->> outputs from controller fsm
input		wire						ser_en, // a fram is being transmitted
input		wire						load_en, //to allow loading new data into serilaizer in case data_valid goes high
//serial data output
output		wire						ser_data,
// serial operation done signal -->> input to controller fsm
output		wire						ser_done	
);

//counter signal
reg [2:0] count;
////////////
reg [width-1:0] P_DATA_reg;


//loading parallel data
always @(posedge CLK, negedge RST)begin
	if(!RST)begin
		P_DATA_reg <= 'd0;
	end
	else if(load_en && DATA_VALID)begin
		P_DATA_reg <= P_DATA;
	end
end


//counter logic
always @(posedge CLK, negedge RST)begin
	if(!RST)begin
		count <= 'd0;
	end
	else if(ser_en)begin
		count <= count + 'd1;
	end
	else begin
		count <= 'd0;
	end
end


//serialization logic
assign ser_data = P_DATA_reg[count];


//done signal logic
assign ser_done = (count==(width-'d1))? 'd1 : 'd0 ;

endmodule