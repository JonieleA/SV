`timescale 1ns/1ns

module tb1;

logic clk, priem, s;

delay_par #(.delay(5)) U1 (.clk(clk), .priem(priem), .del(s));

initial begin
clk = 0;
priem =0;
#20 priem = 1;
#20 priem = 0;
#20 priem = 1;
end

always #1 clk = !clk;

initial #100 $stop;

endmodule
