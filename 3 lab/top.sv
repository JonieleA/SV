module top (clk, _rst, last_clk, Q1, Q0);

input logic clk, _rst;
output logic [3:0] Q1;
output logic [3:0] Q0;
logic n_clk;
output logic last_clk;

schet10 U1(.clk(clk), ._rst(_rst), .n_clk(n_clk), .Q(Q0));
schet10 U2(.clk(n_clk), ._rst(_rst), .n_clk(last_clk), .Q(Q1));

endmodule

