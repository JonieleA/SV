`timescale 1ns/1ns

module tb10;

logic clk, priem, SET1, SET2, SET3, SET4, Reset_1, Reset_2, Reset_3, Reset_4;
logic [7:0] inp, Disp1, Disp2, Disp3, Disp4;

Display display(.inp(inp), .clk(clk), .priem(priem), .SET1(SET1), .SET2(SET2), .SET3(SET3), .SET4(SET4), .Reset_1(Reset_1), .Reset_2(Reset_2), .Reset_3(Reset_3), .Reset_4(Reset_4), .Disp1(Disp1), .Disp2(Disp2), .Disp3(Disp3), .Disp4(Disp4));

initial begin
inp = 8'd46;
clk = 0;
priem = 0;
SET1 = 0;
SET2 = 0;
SET3 = 0;
SET4 = 0;
Reset_1 = 0;
Reset_2 = 0;
Reset_3 = 0;
Reset_4 = 0;
#2 SET1 = 1;
SET2 = 1;
priem = 1;
#20 priem = 0;
#30 Reset_1 = 1;
#1 Reset_1 = 0;
end

always #1 clk = !clk;

initial #100 $stop;


endmodule