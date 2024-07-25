module WRITE_FULL #(parameter ADDR_WIDTH=3) //when ADDR_WIDTH is changed, FULL SIGNAL AND GRAY ENCODER LOGIC NEED TO BE CHANGED
(
input	wire						CLK,RST,	//W_CLK && W_RST
input	wire						W_INC, 		 //to enable counting
input	wire	[ADDR_WIDTH:0]		R_PTR_SYNC,	 //to generate FULL signal,
output	wire						FULL,       //to indicate fifo is full
output	wire	[ADDR_WIDTH-1:0]	W_ADDR,
output	reg		[ADDR_WIDTH:0]		W_PTR,        //extra bit to help extracting full condition
output  wire						MEM_W_EN
);

//W_COUNTER STRUCTURE
reg [ADDR_WIDTH:0] W_count;


//R_COUNTER logic --> BINARY COUNTER
always @(posedge CLK, negedge RST)begin
	if(!RST)begin
		W_count <= 'd0;
	end
	else if(MEM_W_EN)begin
		W_count <=  W_count + 'd1;
	end
end


//gray encoding logic (W_PTR) --> for the sake of write to read synchronization
always @(*)begin
	case(W_count)
		'd2:	begin
					W_PTR = 'd3;
				end
		'd3:	begin
					W_PTR = 'd2;
				end
		'd4:	begin
					W_PTR = 'd6;
				end
		'd5:	begin
					W_PTR = 'd7;
				end				
		'd6:	begin
					W_PTR = 'd5;
				end				
		'd7:	begin
					W_PTR = 'd4;
				end
		'd8:	begin
					W_PTR = 'd12;
				end	
		'd9:	begin
					W_PTR = 'd13;
				end	
		'd10:	begin
					W_PTR = 'd15;
				end	
		'd11:	begin
					W_PTR = 'd14;
				end	
		'd12:	begin
					W_PTR = 'd10;
				end	
		'd13:	begin
					W_PTR = 'd11;
				end	
		'd14:	begin
					W_PTR = 'd9;
				end		
		'd15:	begin
					W_PTR = 'd8;
				end
		default:begin
					W_PTR = W_count;
				end
	endcase
end


//FULL signal logic
assign FULL = (R_PTR_SYNC[1:0] == W_PTR[1:0]) && (R_PTR_SYNC[ADDR_WIDTH:(ADDR_WIDTH-'d1)] == ~(W_PTR[ADDR_WIDTH:(ADDR_WIDTH-'d1)]));


//read address logic
assign W_ADDR = W_count[ADDR_WIDTH-1:0]; 


//MEMORY WRITE ENABLE LOGIC
assign MEM_W_EN = W_INC && (!FULL) ;

endmodule