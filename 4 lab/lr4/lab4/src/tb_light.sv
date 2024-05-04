`timescale 1ns / 1ps

module tb_light;

logic  			clk,res_n;
logic RED, GREEN, YELLOW;

traffic_light DUT (.clk( clk ), .res_n( res_n ), .Q0( RED ),
						 .Q1( GREEN ), .Q2 ( YELLOW ));
						 
initial begin
	clk = 0;
	res_n = 1;
end

always
	#10 clk = !clk;

initial
	repeat(2) #10 res_n = !res_n;

initial
	#40000 $stop;
      
endmodule
