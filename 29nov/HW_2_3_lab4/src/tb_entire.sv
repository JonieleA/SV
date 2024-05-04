`timescale 1ns / 1ns

module tb_entire;

logic clk, nres;
logic INP;
logic OUT_MOORE_neperek, OUT_MOORE_perek,OUT_MEALY_neperek, OUT_MEALY_perek;

top_entire dutent (.clk(clk), .nres(nres), .INP(INP), .OUT_MOORE_neperek(OUT_MOORE_neperek),
							.OUT_MOORE_perek(OUT_MOORE_perek), .OUT_MEALY_neperek(OUT_MEALY_neperek), .OUT_MEALY_perek(OUT_MEALY_perek));

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
	#4000 $stop;

endmodule