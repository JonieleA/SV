`timescale 1ns/1ns

module tb11;

logic [7:0] ASCII;
logic [3:0] BCD;


ascii_to_bcd ascii(.ASCII(ASCII), .BCD(BCD));
initial begin
ASCII = 8'd0;
#5 ASCII = 8'b00001000;
#5 ASCII = 8'b00111000;
#5 ASCII = 8'b00111001;
#5 ASCII = 8'b00111010;
end

//always #1 clk = !clk;

initial #100 $stop;


endmodule