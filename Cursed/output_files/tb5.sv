`timescale 1ns/1ns

module tb5;

logic clk, priem, right_from_gate, left_cursor, right_cursor, Delete, Enter;
logic [7:0] Trig_1, Trig_2, Trig_3, Trig_4;
Comands comands(.Trig_1(Trig_1), .Trig_2(Trig_2), .Trig_3(Trig_3), .Trig_4(Trig_4), .right_from_gate(right_from_gate), .clk(clk), .priem(priem), .left_cursor(left_cursor), .right_cursor(right_cursor), .Delete(Delete), .Enter(Enter));
initial begin
Trig_1 = 8'b00001000;
Trig_2 = 8'd0;
Trig_3 = 8'd0;
Trig_4 = 8'd0;
right_from_gate = 0;
clk = 0;
priem = 1;
#10 priem = 0;
#40 priem = 1;
#5 Trig_1 = 8'b01111110;
Trig_2 = 8'd00110011;
Trig_3 = 8'b01011011;
Trig_4 = 8'b00011011;
#10 priem = 0;
#10 priem = 1;
#5 Trig_1 = 8'b01000100;
Trig_2 = 8'b01011011;
Trig_3 = 8'b00011011;
Trig_4 = 8'd0;
#1 priem = 0;
#10 priem = 1;
#5 Trig_1 = 8'b01000001;
Trig_2 = 8'b01011011;
Trig_3 = 8'b00011011;
Trig_4 = 8'd0;
#1 priem = 0;
end

always #1 clk = !clk;

initial #300 $stop;


endmodule