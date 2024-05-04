
`timescale 1ns/1ns

module tb_lab3_3;


logic clk, _rst, n_clk, flag;
logic [32:0] Q;

Del_50_MGz DUT (.clk(clk), ._rst(_rst), .n_clk(n_clk), .Q(Q), .flag(flag));
initial clk = 0;

always #1 clk=!clk;

initial begin
clk = 1'b0;
_rst = 1'b0;
#10 _rst = 1'b1;

end

initial
#6000 $stop;

initial begin
$display("Start");

end

endmodule
