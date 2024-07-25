module Reg_File #(parameter ADDR_WD=3,parameter DATA_WD=16)(
input		wire								CLK,
input 		wire							RST, //ASYNCHRONOUS ACTIVE LOW RST
input		wire 							WrEn,
input 		wire							RdEn,
input		wire		[ADDR_WD-1:0]		Address,
input 		wire 		[DATA_WD-1:0]		WrData,
output 		reg			[DATA_WD-1:0]		RdData,	
output 		wire		[DATA_WD-1:0]		REG_0,REG_1,REG_2,REG_3		
    );
	 
reg [DATA_WD-1:0] REGs [0:((2**ADDR_WD)-1)]; // 8x16 reg file
integer i;
	 
	 
always @(posedge CLK, negedge RST)begin
	if(!RST)begin 
		for(i=0;i<(2**ADDR_WD);i=i+1)begin
			RdData <= 'd0;
			if (i==2) 		
				REGs[i] <= 'b100000_01 ;  //default uart configuration : parity is enabled (even) and prescale = 32
			else if (i==3)	
				REGs[i] <=  'd32;		 //default uart TX CLK_DIV RATIO
			else begin
				REGs[i] <= 'd0;
			end	
		end
	end
	else if(WrEn && !RdEn)begin
		REGs[Address] <= WrData;
	end
	else if(RdEn && !WrEn)begin
		RdData <= REGs[Address];
	end
end


assign REG_0 = REGs[0];
assign REG_1 = REGs[1];
assign REG_2 = REGs[2];
assign REG_3 = REGs[3];

endmodule