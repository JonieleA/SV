`timescale 1ns / 1ps

module tb_snail;

logic clk, res_n, D;
logic 		 F0, F1;

top_snail DUT (clk, res_n, D, F0, F1);

initial begin
	clk = 0;
	res_n = 0;
	D = 0;
end

always
	#20 clk = !clk;

initial
	repeat(3) #10 res_n = !res_n;

always @(posedge clk)
	#10 D = $random;

initial
	#1500 $stop;
      
endmodule
