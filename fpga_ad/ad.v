module ad(
input clk,
input rst_n,
input [11:0]Data,
input otr,
input Start,

output clk10M,
output mosi,
output sck,
output clk1M,
output  nc
);

reg rden /*synthesis noprune*/;			
reg wren;          /*synthesis noprune*/
reg [8:0]address;  /*synthesis noprune*/
pll u_pll (
	.inclk0(clk),
	.c0(clk10M),
	.c1(clk1M)
);
wire [11:0]q/* synthesis keep */;			
reg flag;			 /*synthesis noprune*/
ram u_ram(
	.address	(address),
	.clock	(clk10M), 
	.data		(Data),
	.rden		(rden),
	.wren		(wren),
	.q			(q)
);
wire i/* synthesis keep */;  
reg tend /*synthesis noprune*/;	
reg start/*synthesis noprune*/;		
top u_top(
		.clk  (clk10M),      //POL==1  PHA==1
		.rst_n(rst_n),							
		.mosi (mosi),
		.sck  (sck),
		.start(start),
		.spi_data(q),
		
		.nc	(nc)
);

reg add0;

always@(posedge clk10M, negedge rst_n)
	if(!rst_n)
		begin 
		address<=0;
		wren<=1;
		flag<=0;
		tend<=0;
		start<=0;
		end
	else if(address<=260&&wren==1&&flag==0)
		begin
				if(address==260) 			//写完了开始读
				begin 
					flag<=1; 
					wren<=0;
					address<=0;
					rden<=1;				
					start<=1;			
				end
			else
				address<=address+1;	//地址+1
		end
	else if(flag==1&&rden==1&&address<=260&&nc==1&&tend==0)
		begin
			if(Start==0)begin
				address<=0;
				add0<=0; end				//延时一个周期，读取地址0的数据
			else if(add0==0)begin
				address<=0;
				add0<=1;
			end
				
			else	if(address==260)
				begin
					flag<=0;
					wren<=1;
					address<=0;
					rden<=0;						//读完重写
					tend<=1;
					start<=0;
				end
			else
				
				address<=address+1;
				tend<=1;							//SPI传输完才进行地址增加
				
		end
	else if(address>260)
		address<=0;
	else 
	begin
		if(nc==0)tend<=0;
		address<=address;						//地址不变
	end

endmodule

