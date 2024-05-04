module top_state (clk, res_n, D, F0, F1);

input logic clk, res_n, D;
output logic 		 F0, F1;

mealy U1 (.clk( clk ), .res_n( res_n ), .D( D ), .F( F0 ));
moore U2 (.clk( clk ), .res_n( res_n ), .D( D ), .F( F1 ));

endmodule
