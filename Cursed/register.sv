module register (Q, D, clk, rst);

input logic clk, rst;
input logic [7:0] D;
output logic [7:0] Q = 0;

always_ff @(posedge rst, posedge clk)
	if (rst) Q <= 0;
	else if (clk) Q <= D;
	else Q <= Q;
	
endmodule
