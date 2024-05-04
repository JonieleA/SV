`timescale 1ns/1ns

module tb8;

logic gen_in, priem_in, clk, priem_out;

generator gen(.gen_in(gen_in), .priem_in(priem_in), .clk(clk), .priem_out(priem_out));

initial begin
gen_in = 0;
priem_in = 0;
#20 priem_in = 1;
#6 priem_in = 0;
#6 priem_in = 1;
end

always #1 gen_in = !gen_in;

initial #100 $stop;


endmodule