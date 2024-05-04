`timescale 1ns / 1ns

module tb_highest_top;

logic clk, nres;
logic OMON, OMEN, OMOP, OMEP;

int counterOMON = 0;
int counterOMEN = 0;
int counterOMOP = 0;
int counterOMEP = 0;


HighestGenTop DUTofTop (.clk(clk), .nres(nres), .OUTP_MOORE_NEPEREK(OMON), .OUTP_MEALY_NEPEREK(OMEN), .OUTP_MOORE_PEREK(OMOP), .OUTP_MEALY_PEREK(OMEP));

initial begin
	clk = 1;
	nres = 1;
end

initial
	#30 repeat(2) #5 nres = !nres;

always @(posedge OMON)
		counterOMON++;
always @(posedge OMEN)
		counterOMEN++;
always @(posedge OMOP)
		counterOMOP++;
always @(posedge OMEP)
		counterOMEP++;
//always_ff @(posedge clk)
//	if(OMON == 1)
//		counterOMON++;
//	if(OMEN == 1)
//		counterOMEN++;
//	if(OMOP == 1)
//		counterOMOP++;
//	if(OMEP == 1)
//		counterOMEP++;
	
always
	#20 clk = !clk;

initial begin
	#400000 $stop; $display(counterOMON);$display(" ");$display(counterOMEN);$display(" ");
$display(counterOMOP);$display(" ");
$display(counterOMEP);$display(" ");
end


endmodule
