module top_light_v2 (clk, res_n, D, Q0, Q1, Q2);

input logic  clk, res_n, D;
output logic 	 Q0, Q1, Q2;

traffic_light_v2 U (.clk( clk ), .res_n( res_n ), .button ( ~D ),
						  .Q0( Q0 ), .Q1( Q1 ), .Q2( Q2 ));

endmodule
