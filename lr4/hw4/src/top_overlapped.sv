module top_overlapped (clk, res_n, D, F0, F1);

input logic clk, res_n, D;
output logic 		 F0, F1;

moore_overlapped U1 (clk, res_n, D, F0);
mealy_overlapped U2 (clk, res_n, D, F1);

endmodule
