module lab4_tb2;

logic clk, _rst, green, yellow, red;


sv DUT(.clk(clk), ._rst(_rst), .green(green), .yellow(yellow), .red(red));


initial begin
clk = 1'b0;
_rst = 1'b0;
#1 _rst = 1'b1;
end

always #1 clk = !clk;

initial #100 $stop;

endmodule
