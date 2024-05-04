`timescale 1ns / 1ps

module tb_state;

logic clk, res_n, D;
logic 		 F0, F1;

top_state DUT (.clk( clk ), .res_n( res_n), .D( D ), .F0( F0 ), .F1( F1 ));

initial begin
	clk = 0;
	res_n = 0;
	D = 0;
end

always
	#10 clk = !clk;

initial
	repeat(3) #10 res_n = !res_n;

initial
	#40 repeat(4) #80 D = !D;

initial
	#260 repeat(2) #40 res_n = !res_n;

initial
	#500 $stop;
      
endmodule
