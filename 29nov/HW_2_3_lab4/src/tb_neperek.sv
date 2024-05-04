`timescale 1ns / 1ns

module tb_neperek;

logic clk, nres;
logic INP;
logic OUT_MOORE, OUT_MEALY;

top_neperek DUT (.clk(clk), .nres(nres), .INP(INP), .OUT_MOORE(OUT_MOORE), .OUT_MEALY(OUT_MEALY));


initial begin
	clk = 1;
	nres = 1;
	INP = 0;
end

initial
	#30 repeat(2) #5 nres = !nres;

initial begin
	#100 INP = 0;
	#40  INP = 0;
	#40  INP = 0;
	#40  INP = 1;
	#40  INP = 0;
	#40  INP = 0;
	#40  INP = 0;
	#40  INP = 1;
	#40  INP = 0;
	#40  INP = 0;
	#40  INP = 0;
	#40  INP = 0;
	#40  INP = 1;
	#40  INP = 0;
	#40  INP = 0;
	#40  INP = 0;
	#40  INP = 1;
	#40  INP = 0;
end

always
	#20 clk = !clk;

initial
	#3000 $stop;

endmodule
