`timescale 1ns/1ns

module tb3;

logic ESC1, ESC2, ESC3, YP, YC;
logic [7:0] inp;

to_save save(.inp(inp), .ESC1(ESC1), .ESC2(ESC2), .ESC3(ESC3), .YP(YP), .YC(YC));

initial begin
ESC1=0;
ESC2=0;
ESC3=0;
inp = 8'b00001000;
#5 ESC1 = 1;
#5 ESC2 = 1;
#5 ESC3 = 1;
#5 ESC1 = 0;
#5 ESC2 = 0;
#5 ESC3 = 0;
#1 inp = 8'b01111110;
#5 ESC3 = 1;
#5 ESC3 = 0;
#1 inp = 8'b01000001;
#5 ESC2 = 1;
#5 ESC2 = 0;
#1 inp = 8'b01011011;
#5 ESC1 = 1;
#5 ESC1 = 0;
#1 inp = 8'b00011011;
#5 ESC1 = 1;
#5 ESC2 = 1;
#5 ESC3 = 1;
#5 ESC1 = 0;
#5 ESC2 = 0;
#5 ESC3 = 0;
#1 inp = 8'b11111111;
end

//always #1 clk = !clk;

initial #300 $stop;


endmodule