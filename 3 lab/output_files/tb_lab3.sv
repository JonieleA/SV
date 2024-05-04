
`timescale 1ns/1ns

module tb_lab3;


logic clk, _rst, last_clk;

logic [3:0] Q1;
logic [3:0] Q0;


top DUT (.clk(clk), ._rst(_rst), .last_clk(last_clk), .Q1(Q1), .Q0(Q0));

initial begin
clk = 1'b0;
_rst = 1'b0;
#10 _rst = 1'b1;
for (int i=0; i<=100; i++) begin
	#10 clk = 1'b0;
	#10 clk = 1'b1;
end

end

initial
#2030 $stop;

initial begin
$display("Start");

end

endmodule