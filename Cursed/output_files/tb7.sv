`timescale 1ns/1ns

module tb7;

logic clk, priem, Reset_1, Reset_2, Reset_3, Reset_4, left_cursor, right_cursor, Delete, Enter;
logic [7:0] inp, res;
obrabotka obrabotka_1(.inp(inp), .clk(clk), .priem(priem), .Reset_1(Reset_1), .Reset_2(Reset_2), .Reset_3(Reset_3), .Reset_4(Reset_4), .res(res), .left_cursor(left_cursor), .right_cursor(right_cursor), .Delete(Delete), .Enter(Enter));
initial begin
clk = 0;
priem = 1;
#50 priem = 0;
Reset_1 = 0;
Reset_2 = 0;
Reset_3 = 0;
Reset_4 = 0;
inp = 8'b11111111;
#50 priem = 1;
#4 priem = 0;
inp = 8'b00011011;
#50 priem = 1;
#4 priem = 0;
inp = 8'b01011011;
#50 priem = 1;
#4 priem = 0;
inp = 8'd00110011;
#50 priem = 1;
#4 priem = 0;
inp = 8'b01111110;
#50 priem = 1;
#4 priem = 0;
inp = 8'b11111111;
#50 priem = 1;
#4 priem = 0;
inp = 8'd0;
#50 priem = 1;
#4 priem = 0;
inp = 8'b00001000;
#50 priem = 1;
#4 priem = 0;
inp = 8'b01111111;
#50 priem = 1;
#4 priem = 0;
inp = 8'd0;
#50 priem = 1;
#4 priem = 0;
inp = 8'b00001000;
#50 priem = 1;
#4 priem = 0;
inp = 8'b01111111;
#50 priem = 1;
#4 priem = 0;
inp = 8'b00000000;

end

always #1 clk = !clk;

initial #1000 $stop;


endmodule