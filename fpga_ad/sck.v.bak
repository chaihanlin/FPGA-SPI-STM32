module sck(
	input clk,
	input b,
	input en_b,
	output reg sck
	);
	always@(posedge clk)begin
		if(b)
			sck<='b1;
		else	begin
			if(en_b)
				sck<=~sck;
			else
				sck<='b1;
		end
	end
endmodule
