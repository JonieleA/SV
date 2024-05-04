module LFSR_gen (clk, res_n, D1, D2, D3, F);

input logic 		 clk, res_n;
input logic [15:0] D1, D2, D3;
output logic 					 F;

logic [4:0] 					 w;

LFSR_GAL U1(.clk( clk ), ._rst( res_n ), .D( D1 ), .lfsr_out( w[0] ));
LFSR_GAL U2(.clk( w[1] ), ._rst( res_n ), .D( D2 ), .lfsr_out( w[3] ));
LFSR_GAL U3(.clk( w[2] ), ._rst( res_n ), .D( D3 ), .lfsr_out( w[4] ));

and(w[1], clk, w[0]);
and(w[2], clk, ~w[0]);
xor(F, w[4], w[3]);

endmodule
