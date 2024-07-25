module READ_EMPTY #(parameter ADDR_WIDTH=3) //when ADDR_WIDTH is changed, EMPTY SIGNAL AND GRAY ENCODER LOGIC NEED TO BE CHANGED
(  
input	wire						CLK,RST,	//R_CLK && R_RST 
input	wire						R_INC, 		 //to enable counting
input	wire	[ADDR_WIDTH:0]		W_PTR_SYNC,	 //to generate EMPTY signal,
output	wire						EMPTY,       //to indicate fifo is empty
output	wire	[ADDR_WIDTH-1:0]	R_ADDR,
output	reg		[ADDR_WIDTH:0]		R_PTR        //extra bit to help extracting full condition
);

//R_COUNTER STRUCTURE
reg [ADDR_WIDTH:0] R_count;


//R_COUNTER logic --> BINARY COUNTER
always @(posedge CLK, negedge RST)begin
	if(!RST)begin
		R_count <= 'd0;
	end
	else if(R_INC && !EMPTY)begin
		R_count <=  R_count + 'd1;
	end
end


//gray encoding logic (R_PTR) --> for the sake of read to write synchronization
always @(*)begin
	case(R_count)
		'd2:	begin
					R_PTR = 'd3;
				end
		'd3:	begin
					R_PTR = 'd2;
				end
		'd4:	begin
					R_PTR = 'd6;
				end
		'd5:	begin
					R_PTR = 'd7;
				end				
		'd6:	begin
					R_PTR = 'd5;
				end				
		'd7:	begin
					R_PTR = 'd4;
				end
		'd8:	begin
					R_PTR = 'd12;
				end	
		'd9:	begin
					R_PTR = 'd13;
				end	
		'd10:	begin
					R_PTR = 'd15;
				end	
		'd11:	begin
					R_PTR = 'd14;
				end	
		'd12:	begin
					R_PTR = 'd10;
				end	
		'd13:	begin
					R_PTR = 'd11;
				end	
		'd14:	begin
					R_PTR = 'd9;
				end		
		'd15:	begin
					R_PTR = 'd8;
				end
		default:begin
					R_PTR = R_count;
				end
	endcase
end


//EMPTY signal logic
assign EMPTY = (W_PTR_SYNC == R_PTR);


//read address logic
assign R_ADDR = R_count[ADDR_WIDTH-1:0]; 

endmodule