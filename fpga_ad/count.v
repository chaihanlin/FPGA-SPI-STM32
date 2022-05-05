module count(
    input clk,
	input a,
	input en_a,
	output reg [5:0] i
);
	always@(posedge clk)begin
		if(a)
			i<='b0;
		else 
			if(en_a) begin
				if(i=='d32)
					i<='d0;
				else
					i<=i+'d1;
			end
			else
				i<=i;
	end

endmodule
