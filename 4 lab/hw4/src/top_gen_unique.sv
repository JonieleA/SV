module top_gen_unique (clk, res_n, D1, D2, D3, F0, F1, DATA);
									
input logic 		 clk, res_n;
input logic [15:0] D1, D2, D3;
output logic			  F0, F1, DATA;

gen_unique UUT (clk, res_n, D1, D2, D3, F0, F1, DATA);

endmodule