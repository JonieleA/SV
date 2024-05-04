module top3 (btn, clk, _rst, out);

input logic btn, clk, _rst;
output logic out;
logic n_clk;

Del_par #(.Schet(100000)) U1 (.out(out), .btn(btn), .clk(clk), ._rst(_rst), .n_clk(n_clk));
my_and U2(.n_clk(n_clk), .btn(btn), .out(out));

endmodule
