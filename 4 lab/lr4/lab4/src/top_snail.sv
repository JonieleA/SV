module top_snail (clk, res_n, D, F0, F1);

input logic clk, res_n, D;
output logic 		 F0, F1;

snail_moore U1 (.clk( clk ), .res_n( res_n ), .D( D ), .F( F0 ));
snail_mealy U2 (.clk( clk ), .res_n( res_n ), .D( D ), .F( F1 ));

endmodule
