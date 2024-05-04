`timescale 1ns/1ns

module tb4;

logic clk, priem, ESC1, ESC2, ESC3;
logic [7:0] Trig_1, Trig_2, Trig_3;

Cont_seq  seq(.Trig_1(Trig_1), .Trig_2(Trig_2), .Trig_3(Trig_3), .clk(clk), .priem(priem), .ESC1(ESC1), .ESC2(ESC2), .ESC3(ESC3));

initial begin
Trig_1 = 8'b00011011;
Trig_2 = 0;
Trig_3 = 0;
clk = 0;
priem = 0;
#20 priem = 1;	
Trig_1 = 8'b01011011;
Trig_2 = 8'b00011011;
Trig_3 = 0;
#1 priem = 0;
#20 priem = 1;
Trig_1 = 8'b00110011;
Trig_2 = 8'b01011011;
Trig_3 = 8'b00011011;
#1 priem = 0;
end

always #1 clk = !clk;

initial #300 $stop;


endmodule