module DATA_SYNC #(
parameter NUM_STAGES = 2,
parameter BUS_WIDTH = 8
)(
input	wire						CLK,RST,
input	wire						bus_enable,
input	wire	[BUS_WIDTH-1:0]		Unsync_bus,
output	reg		[BUS_WIDTH-1:0]		sync_bus,
output	reg							enable_pulse
);

//internal blocks and signals
wire [BUS_WIDTH-1:0] bus_combo;  // for data bus
reg	[NUM_STAGES-1:0] en_sychronizer;  // for enable signal
reg  pulse_gen;  //regester needed for enable pulse generator
wire pulse_gen_out;


//data synchronizing, enable_pulse and pulse generator REGs 
always @(posedge CLK,negedge RST)begin
	if(!RST)begin
		sync_bus <= 'd0;
		enable_pulse <= 'd0;
		pulse_gen <= 'd0;
	end
	else begin
		sync_bus <= bus_combo;
		enable_pulse <= pulse_gen_out;
		pulse_gen <= en_sychronizer['d0];
	end
end


//enable synchronization logic
always @(posedge CLK,negedge RST)begin
	if(!RST)begin
		en_sychronizer <= 'd0;
	end
	else begin
		en_sychronizer <= {bus_enable,en_sychronizer[NUM_STAGES-1:1]};
	end
end


//pulse generator logic
assign pulse_gen_out = (en_sychronizer['d0]) & !pulse_gen ;


// data_bus mux 
assign bus_combo = pulse_gen_out? Unsync_bus : sync_bus;


endmodule