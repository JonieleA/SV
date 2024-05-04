`timescale 1ns / 1ns

module tb_overlapped;

logic clk, res_n;
logic 			D;
logic 	 F0, F1;

top_overlapped DUT (clk, res_n, D, F0, F1);

initial begin
	clk = 1;
	res_n = 1;
	D = 0;
end

initial
	#30 repeat(2) #5 res_n = !res_n;

initial begin
	#100 D = 1;
	#30  D = 0;
	#40  D = 1;
	#130 D = 0;
	#90  D = 1;
	#20  D = 0;
	#60  D = 1;
	#140 D = 0;
	#40  D = 1;
end

always
	#20 clk = !clk;

initial
	#900 $stop;

endmodule
