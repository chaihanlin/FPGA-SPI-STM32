module shifter(
	input clk,
	input [11:0] spi_data,
	input c,
	input en_c,
	output mosi
	);
	reg [15:0] data/*synthesis noprune*/;
	always@(posedge clk) begin
		if(c)
			data<={4'b0,spi_data};
		else begin
			if(en_c)
				data<=	{data[14:0],1'b0};
			else
				data<=data;
		end
	end
	assign mosi=data[15];
endmodule
