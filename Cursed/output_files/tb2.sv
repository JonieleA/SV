`timescale 1ns/1ns

module tb2;

logic clk, sig, priem, right_cursor;
logic [7:0] inp, res;

gate gate_1(.clk(clk), .sig(sig), .inp(inp), .priem(priem), .res(res), .right_cursor(right_cursor));

initial begin
clk = 0;
sig = 0;
priem =0;
inp = 8'b11101111;
#20 priem = 1;
#20 priem = 0;
#20 sig = 1;
#20 priem = 1;
end

always #1 clk = !clk;

initial #100 $stop;


endmodule
