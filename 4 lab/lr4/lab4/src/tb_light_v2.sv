`timescale 1ns / 1ps

module tb_light_v2;

logic  			clk,res_n;
logic 	 		   button;
logic RED, GREEN, YELLOW;

traffic_light_v2 DUT (.clk( clk ), .res_n( res_n ), .button( button ),
							 .Q0( RED ), .Q1( GREEN ), .Q2 ( YELLOW ));
						 
initial begin
	clk = 0;
	res_n = 1;
	button = 0;
end

always
	#10 clk = !clk;

initial begin
			 repeat(2) #10 res_n = !res_n;
	#16450 repeat(2) #100 button = !button;
end

initial
	#40000 $stop;
      
endmodule
