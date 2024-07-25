module SYS_CNTRL #(parameter DATA_WD=8, parameter REG_ADDR_WD=4,parameter ALU_FUN_WD=4, parameter ALU_OUT_WD=(DATA_WD*2))(
input		wire						CLK,RST,
///DATA BUSES
input		wire	[DATA_WD-1:0]		REG_RD_D, DATA_SYNC,
input		wire	[ALU_OUT_WD-1:0]	ALU_OUT,
///INPUT CNTRL SIGNALS
input		wire						FIFO_FULL, ALU_OUT_VALID, VALID_SYNC,
///OUTPUT DATA BUSES
output		reg 	[DATA_WD-1:0]		REG_WR_D, FIFO_WR_D, 
output		reg		[REG_ADDR_WD-1:0]	REG_ADDR,
output		reg		[ALU_FUN_WD-1:0]	ALU_FUN,
///OUTPUT CONTROL SIGNALS
output		reg 						REG_WR_EN, REG_RD_EN, ALU_EN, GATE_EN, FIFO_WR_INC
);

/////////////////////internal control signals and parameters//////////////////
reg [DATA_WD-1:0] INTERNAL_TEMP,TEMP_COMB;   // to save received TEMP data from RX
reg TEMP_EN;

//TEMP LOGIC
always @(posedge CLK, negedge RST)begin
	if(!RST)begin
		INTERNAL_TEMP <= 'd0;
	end
	else if(TEMP_EN)begin
		INTERNAL_TEMP <= TEMP_COMB;
	end
end


/////////////////////STATE AND COMMAND DEFINITIONS ///////////////////////////////////////

///STATES
localparam [3:0] 	idle			= 'b0000,
					WT_W_ADDR  	 	= 'b0001,   // WAIT FOR REG_FILE WRITE ADDRESS  -->> REG FILE WRITE COMMAND
					WT_W_DATA		= 'b0011,   // WAIT FOR REG_FILE WRITE DATA -->> REG FILE WRITE COMMAND
					WT_R_ADDR		= 'b0010,	// WAIT FOR REG_FILE READ ADRRESS -->> REG FILE READ COMMAND
					WT_FULL_REG		= 'b0110,	// WAIT FOR FIFO FULL SIGNAL TO GO DOWN WHEN TRANSMITTING DATA READ FROM REG_FILE -->> REG FILE READ COMMAND
					WT_ALU_A		= 'b0100,	// WAIT FOR ALU A_OP -->> ALU OPERATION COMMAND
					WT_ALU_B		= 'b0101,	// WAIT FOR ALU B_OP -->> ALU OPERATION WITH OPERANDS COMMAND
					WT_ALU_FUN		= 'b0111,	// WAIT FOR ALU FUN -->> ALU OPERATION (WITH AND WITHOUT OPERANDS) COMMANDS
					WT_ALU_V		= 'b1111,	// WAIT FOR ALU OUT VALID SIGNAL -->>  ALU OPERATION (WITH AND WITHOUT OPERANDS) COMMANDS
					WT_FULL_ALU_0	= 'b1110,	// WAIT FOR FIFO FULL SIGNAL TO GO DOWN WHEN TRANSMITTING FIRST DATA BYTE COMPUTTED BY ALU -->>  ALU OPERATION (WITH AND WITHOUT OPERANDS) COMMANDS
					WT_FULL_ALU_1	= 'b1100;	// WAIT FOR FIFO FULL SIGNAL TO GO DOWN WHEN TRANSMITTING SECOND DATA BYTE COMPUTTED BY ALU -->>  ALU OPERATION (WITH AND WITHOUT OPERANDS) COMMANDS
	
	
///COMMANDS
localparam [DATA_WD-1:0] 	REG_F_WR		= 'hAA,		//REGISTER FILE WRITE COMMAND
							REG_F_RD  	 	= 'hBB,		// REGISTER FILE READ COMMAND
							ALU_OPR			= 'hCC,		// ALU OPERATION WITH NEW OPERANDS COMMAND
							ALU_NO_OPR		= 'hDD;		// ALU OPERATION WITH NO NEW OPERANDS COMMAND					

	
//////////////////////////////////STATE TRANSITIONS//////////////////////////////////////////

reg 	   [3:0]	current_state,next_state;

always @(posedge CLK,negedge RST)begin
	if(!RST)begin
		current_state <= idle;
	end
	else begin
		current_state <= next_state;
	end
end


//////////////////////////////////////NEXT_STATE LOGIC///////////////////////////////

always @(*)begin

	//default value
	next_state= idle;
	case(current_state)
			idle:		begin
							if(VALID_SYNC)begin
								case(DATA_SYNC)
									REG_F_WR	:begin
													next_state = WT_W_ADDR;
												end
									REG_F_RD	:begin
													next_state = WT_R_ADDR;
												end
									ALU_OPR		:begin
													next_state = WT_ALU_A;
												end
									ALU_NO_OPR	:begin
													next_state = WT_ALU_FUN;
												end
									default		:begin
													next_state = idle;  //invalid command
												end
								endcase
							end
							else begin
								next_state = idle;
							end
						end
					
			WT_W_ADDR:	begin
							if(VALID_SYNC)begin
								next_state = WT_W_DATA;
							end
							else begin
								next_state = WT_W_ADDR;
							end				
						end
					
			WT_W_DATA:	begin
							if(VALID_SYNC)begin
								next_state = idle;
							end
							else begin
								next_state = WT_W_DATA;
							end
						end
					
			WT_R_ADDR:	begin
							if(VALID_SYNC)begin
								next_state = WT_FULL_REG;
							end
							else begin
								next_state = WT_R_ADDR;
							end
						end
					
			WT_FULL_REG:begin
							if(FIFO_FULL)begin
								next_state = WT_FULL_REG;
							end
							else begin
								next_state = idle;
							end
						end
						
			WT_ALU_A:	begin
							if(VALID_SYNC)begin
								next_state = WT_ALU_B;
							end
							else begin
								next_state = WT_ALU_A;
							end
						end	

			WT_ALU_B:	begin
							if(VALID_SYNC)begin
								next_state = WT_ALU_FUN;
							end
							else begin
								next_state = WT_ALU_B;
							end
						end	

			WT_ALU_FUN:	begin
							if(VALID_SYNC)begin
								next_state = WT_ALU_V;
							end
							else begin
								next_state = WT_ALU_FUN;
							end
						end	

			WT_ALU_V:	begin
							if(ALU_OUT_VALID)begin
								next_state = WT_FULL_ALU_0;
							end
							else begin
								next_state = WT_ALU_V;
							end
						end	

			WT_FULL_ALU_0:begin
							if(FIFO_FULL)begin
								next_state = WT_FULL_ALU_0;
							end
							else begin
								next_state = WT_FULL_ALU_1;
							end
						end	

			WT_FULL_ALU_1:begin
							if(FIFO_FULL)begin
								next_state = WT_FULL_ALU_1;
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


////////////////////////////////////OUTPUT LOGIC////////////////////////////////////

always @(*)begin

	//default values
	REG_WR_D		= 'd0;		
	FIFO_WR_D		= 'd0;
	REG_ADDR		= 'd0;
	ALU_FUN			= 'd0;
	REG_WR_EN		= 'd0;
	REG_RD_EN		= 'd0;
	ALU_EN			= 'd0;
	GATE_EN			= 'd0;
	FIFO_WR_INC		= 'd0;
	TEMP_COMB		= 'd0;
	TEMP_EN			= 'd0;
	
	case(current_state)
	
			idle:		begin
							GATE_EN	= 'd0;  // no any output siganl should be enabled --> all zeroes
						end
					
			WT_W_ADDR:	begin
							TEMP_COMB = DATA_SYNC;  // to keep WRITE ADDRESS
							TEMP_EN = VALID_SYNC;			
						end
					
			WT_W_DATA:	begin
							REG_WR_D = DATA_SYNC;
							REG_ADDR = INTERNAL_TEMP[REG_ADDR_WD-1:0];
							REG_WR_EN = VALID_SYNC;
						end
					
			WT_R_ADDR:	begin
							REG_ADDR = DATA_SYNC[REG_ADDR_WD-1:0];
							REG_RD_EN = VALID_SYNC;
						end
					
			WT_FULL_REG:begin
							FIFO_WR_D = REG_RD_D;
							FIFO_WR_INC = !FIFO_FULL;
						end
						
			WT_ALU_A:	begin
							REG_ADDR = 'd0;
							REG_WR_D = DATA_SYNC;
							REG_WR_EN = VALID_SYNC;
						end	

			WT_ALU_B:	begin
							REG_ADDR = 'd1;
							REG_WR_D = DATA_SYNC;
							REG_WR_EN = VALID_SYNC;
						end	

			WT_ALU_FUN:	begin
							TEMP_COMB = DATA_SYNC;
							TEMP_EN = VALID_SYNC;
							GATE_EN = VALID_SYNC;
							//GATE_EN = 'd1;
							ALU_FUN = DATA_SYNC[ALU_FUN_WD-1:0];
							ALU_EN = VALID_SYNC;
						end	

			WT_ALU_V:	begin
							ALU_FUN = INTERNAL_TEMP[ALU_FUN_WD-1:0];
							ALU_EN = 'd1;
							GATE_EN = 'd1;
						end	

			WT_FULL_ALU_0:begin
							FIFO_WR_INC = !FIFO_FULL;
							FIFO_WR_D = ALU_OUT[DATA_WD-1:0];  //FIRST BYTE
						end	

			WT_FULL_ALU_1:begin
							FIFO_WR_INC = !FIFO_FULL;
							FIFO_WR_D = ALU_OUT[ALU_OUT_WD-1:DATA_WD];  //SECOND BYTE
						end							
					
			default:	begin
							REG_WR_D		= 'd0;		
							FIFO_WR_D		= 'd0;
							REG_ADDR		= 'd0;
							ALU_FUN			= 'd0;
							REG_WR_EN		= 'd0;
							REG_RD_EN		= 'd0;
							ALU_EN			= 'd0;
							GATE_EN			= 'd0;
							FIFO_WR_INC		= 'd0;
							TEMP_COMB		= 'd0;	
							TEMP_EN			= 'd0;
						end
					
	endcase
end

endmodule