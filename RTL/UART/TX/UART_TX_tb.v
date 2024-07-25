module UART_TX_tb;
	
	//parameters
	parameter clk_period = 5.0;
	parameter data_width =8;

	// Inputs
	reg CLK_tb;
	reg RST_tb;
	reg [7:0] P_DATA_tb;
	reg DATA_VALID_tb;
	reg PAR_EN_tb;
	reg PAR_TYP_tb;

	// Outputs
	wire TX_OUT_tb;
	wire Busy_tb;

	// Instantiate the Unit Under Test (UUT)
	UART_TX_TOP #(.data_width(data_width))uut (
		.CLK(CLK_tb), 
		.RST(RST_tb), 
		.P_DATA(P_DATA_tb), 
		.DATA_VALID(DATA_VALID_tb), 
		.PAR_EN(PAR_EN_tb), 
		.PAR_TYP(PAR_TYP_tb), 
		.TX_OUT(TX_OUT_tb), 
		.Busy(Busy_tb)
	);


	//clock generation
	always #(clk_period/2)  CLK_tb = ~CLK_tb ;


	initial begin
	
		// Initialize Inputs
		initialize();
		//resetting
		reset();
		
		//making sure busy=0 in idle state
		if(Busy_tb=='d0)begin
			$display("Busy tst in idle state is succesful, at time = %0t",$time);
		end
		else begin
			$display("Busy tst in idle state failed, at time = %0t",$time);
		end
		
		//sending 4 bytes in a row
		send_data_even_parity(8'h55);
		check_with_even_parity(8'h55);
		send_data_even_parity(8'h93);
		check_with_even_parity(8'h93);
		send_data_odd_parity(8'h55);
		check_with_odd_parity(8'h55);
		send_data_no_parity(8'hAA);
		check_with_no_parity(8'hAA);
	
	
		//going back to idle state and checking busy signal again
		#(3*clk_period);
		if(Busy_tb=='d0)begin
			$display("Busy tst in idle state is succesful, at time = %0t",$time);
		end
		else begin
			$display("Busy tst in idle state failed, at time = %0t",$time);
		end

		//sending data again
		send_data_no_parity('h77);
		check_with_no_parity(8'h77);
	//	DATA_VALID_tb = 'd0;
		

	end
	
	////////////////////////////////////////
	task initialize();begin
		CLK_tb='d0;
		RST_tb='d1;
		P_DATA_tb = 'd0;
		DATA_VALID_tb = 'd0;
		PAR_EN_tb = 'd0;
		PAR_TYP_tb = 'd0;
	end
	endtask

	///////////////////////////////////////
	task reset();begin
		RST_tb='d0;
		#(clk_period);
		RST_tb='d1;
		#(clk_period);
	end
	endtask
	
	
	///////////////////////////////////////
	task send_data_even_parity;
	input [data_width-1:0] data;
	begin
		PAR_EN_tb = 'd1;
		PAR_TYP_tb = 'd0;
		P_DATA_tb = data;
		DATA_VALID_tb = 'd1;
		#(clk_period);
		DATA_VALID_tb = 'd0;
	//	#(clk_period);
	end
	endtask	
	
	
	///////////////////////////////////////
	task send_data_odd_parity;
	input [data_width-1:0] data;
	begin
		PAR_EN_tb = 'd1;
		PAR_TYP_tb = 'd1;
		P_DATA_tb = data;
		DATA_VALID_tb = 'd1;
		#(clk_period);
		DATA_VALID_tb = 'd0;
	//	#(clk_period);
	end
	endtask


	///////////////////////////////////////
	task send_data_no_parity;
	input [data_width-1:0] data;
	begin
		PAR_EN_tb = 'd0;
		P_DATA_tb = data;
		DATA_VALID_tb = 'd1;
		#(clk_period);
		DATA_VALID_tb = 'd0;
	//	#(clk_period);
	end
	endtask		
	
	
////**********these tasks end excution at the middle of stop bit, assuming they get started at the middle of start bit**********////
	///////////////////////////////////////
	task check_with_even_parity;
	input [data_width-1:0] expected_data;
	integer i;
	reg [data_width+2:0] recieved_frame;
	reg [data_width+2:0] expected_frame;
	reg [data_width+2:0]	EXPECT_BUSY;
	reg start,stop,parity;
	begin
		start = 'd0; stop = 'd1; parity = ^expected_data;
		expected_frame = {stop,parity,expected_data,start};
		for(i=0;i<(data_width+2);i=i+1)begin
			recieved_frame[i]=TX_OUT_tb;
			EXPECT_BUSY[i]=Busy_tb;
			#clk_period;
		end
		recieved_frame[i] = TX_OUT_tb;
		EXPECT_BUSY[i]=Busy_tb;
		if(recieved_frame==expected_frame  && (&EXPECT_BUSY)=='d1)begin
			$display("tst is succesful, at time = %0t",$time);
		end
		else begin
			$display("tst failed, at time = %0t",$time);
		end
	end
	endtask


	///////////////////////////////////////
	task check_with_odd_parity;
	input [data_width-1:0] expected_data;
	integer i;
	reg [data_width+2:0] recieved_frame;
	reg [data_width+2:0] expected_frame;
	reg [data_width+2:0]	EXPECT_BUSY;
	reg start,stop,parity;
	begin
		start = 'd0; stop = 'd1; parity = ~(^expected_data);
		expected_frame = {stop,parity,expected_data,start};
		for(i=0;i<(data_width+2);i=i+1)begin
			recieved_frame[i]=TX_OUT_tb;
			EXPECT_BUSY[i]=Busy_tb;
			#clk_period;
		end
		recieved_frame[i] = TX_OUT_tb;
		EXPECT_BUSY[i]=Busy_tb;
		if(recieved_frame==expected_frame && (&EXPECT_BUSY))begin
			$display("tst is succesful, at time = %0t",$time);
		end
		else begin
			$display("tst failed, at time = %0t",$time);
		end
		
	end
	endtask


	///////////////////////////////////////
	task check_with_no_parity;
	input [data_width-1:0] expected_data;
	integer i;
	reg [data_width+1:0] recieved_frame;
	reg [data_width+1:0] expected_frame;
	reg [data_width+1:0] EXPECT_BUSY;
	reg start,stop;
	begin
		start = 'd0; stop = 'd1; 
		expected_frame = {stop,expected_data,start};
		for(i=0;i<(data_width+1);i=i+1)begin
			recieved_frame[i]=TX_OUT_tb;
			EXPECT_BUSY[i]=Busy_tb;
			#clk_period;
		end
		recieved_frame[i] = TX_OUT_tb;
		EXPECT_BUSY[i]=Busy_tb;
		if(recieved_frame==expected_frame && (&EXPECT_BUSY))begin
			$display("tst is succesful, at time = %0t",$time);
		end
		else begin
			$display("tst failed, at time = %0t",$time);
		end
	end
	endtask	
		
      
endmodule
