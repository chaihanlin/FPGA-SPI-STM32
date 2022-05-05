module top(
		 input clk,      
		 input rst_n,
		 input start,
		 input [11:0]spi_data/* synthesis keep */,               //POL==1  PHA==1
		 output mosi,		
		 output sck,

		 output reg nc

);

reg [5:0]cs='b0; 			/*synthesis noprune*/
reg [5:0]ns='b0;   
reg a,en_a;//计数器清零和启动信号
reg b,en_b;//分频器，拉高和使能信号
reg c,en_c;//移位器，读取spi_data和移位标志信号
wire [5:0] i;//跳变沿计数;  /*systhesis keep*/

parameter  s0='b0000001 ;
parameter  s1='b0000010 ;
parameter  s2='b0000100 ;
parameter  s3='b0001000 ;
parameter  s4='b0010000 ;
parameter  s5='b0100000 ;
parameter  s6='b1000000 ;

always @(posedge clk, negedge rst_n) begin
    if(!rst_n)
         begin
			cs<=s0;
			end
    else 
        cs<=ns;
end

always @(*) begin
    case (cs)
        s0: begin
			if(start)
          ns<=s1;       //开始
			 else
			 ns<=s0;
        end
		
        s1:begin
            if (i=='b1) begin
                 ns<=s2;       //开始计数
					 
            end
            else
                ns<=s1;
        end
        s2:begin
            if (i[0]=='b0) begin
                ns<=s3;
					
            end
            else
                ns<=s2;
        end
        s3:begin
            if (i==6'd31) 
                ns<=s4; //输出
         else   begin
           if(i[0]==1)
                ns<=s2;
            else
                ns<=s3;
         end 
        end
        s4:begin
            if(i=='d32)
                 ns<=s5;       //结束信号
            else
                ns<=s4;
        end
        s5:begin
            if(i==0)
               ns<=s0;       //停止
            else 
                ns<=s5;
        end

        default: 
        begin
          ns<=s0;
        end
    endcase
end

always @(*) begin
    case(cs)
        s0:begin
          a<=1;
          en_a<=0;
          b<=1;
          en_b<=0;
          c<=0;
          en_c<=0;
          nc<=1;
        end
        s1:begin
          a<=0;
          en_a<=1;
          b<=0;
          en_b<=1;
          c<=1;
          en_c<=0;
          nc<=0;
        end
        s2:begin
          a<=0;
          en_a<=1;
          b<=0;
          en_b<=1;
          c<=0;
          en_c<=1;
          nc<=0;
        end
        s3:begin
           a<=0;
          en_a<=1;
          b<=0;
          en_b<=1;
          c<=0;
          en_c<=0;
          nc<=0;
        end
        s4:begin
           a<=0;
          en_a<=1;
          b<=0;
          en_b<=0;
          c<=0;
          en_c<=0;
          nc<=0;
        end
        s0:begin
           a<=0;
          en_a<=0;
          b<=0;
          en_b<=0;
          c<=0;
          en_c<=0;
          nc<=1;
        end
        default:begin
        a<=1;
          en_a<=0;
          b<=1;
          en_b<=0;
          c<=0;
          en_c<=0;
          nc<=1;
        end
    endcase
end


    count u1(
		.clk(clk),
		.i(i),
		.a(a),
		.en_a(en_a)
		);
	sck u2(
		.clk(clk),
		.b(b),
		.en_b(en_b),
		.sck(sck)
		);
	shifter u3(
		.clk(clk),
		.c(c),
		.en_c(en_c),
		.spi_data(spi_data),
		.mosi(mosi)
		);


endmodule
