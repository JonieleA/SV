`timescale 1ns/1ns

module tb6;

logic clk, rst;
logic [7:0] Q, D;
register register(.Q, .D, .clk, .rst);
initial begin
clk = 0;
rst = 1;
D = 8'd100;
#10 rst = 0;
#15 D = 8'd45;

end

always #1 clk = !clk;

initial #300 $stop;


endmodule