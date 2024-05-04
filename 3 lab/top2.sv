module top2 (clk, _rst, last_clk, Q1, Q0);

input logic clk, _rst;
output logic [3:0] Q1;
output logic [3:0] Q0;
logic n_clk;
output logic last_clk;

schet10_par #(.Schet(10)) Schet10 (.clk(clk), ._rst(_rst), .n_clk(n_clk), .Q(Q0));
schet10_par #(.Schet(6) ) Schet6 (.clk(n_clk), ._rst(_rst), .n_clk(last_clk), .Q(Q1));

endmodule

