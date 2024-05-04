module top_unique (clk, res_n, D, F0, F1);

input logic clk, res_n, D;
output logic 		 F0, F1;

moore_unique U1 (clk, res_n, D, F0);
mealy_unique U2 (clk, res_n, D, F1);

endmodule
