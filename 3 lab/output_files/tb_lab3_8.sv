
`timescale 1ns/1ns

module tb_lab3_8;


logic out, _rst, btn1, btn2, clk; 

hw_lab3_bell3 DUT (.btn1(btn1), .btn2(btn2), ._rst(_rst), .clk(clk), .out(out));

initial begin
clk = 0;
btn1 = 0;
btn2 = 0;
#1 _rst=0;
#1 _rst=1;
end
always #1 clk = !clk;
initial begin
#100 btn1 = 1;
#1 btn1 = 0;
#100000 btn1 = 1;
#1 btn1 = 0;
#100000 btn1 = 1;
#1 btn1 = 0;
#100000 btn1 = 1;
#1 btn1 = 0;
#100000 btn1 = 1;
#1 btn1 = 0;
#100000 btn1 = 1;
#1 btn1 = 0;
#100000 btn1 = 1;
#1 btn1 = 0;
#100000 btn1 = 1;
#1 btn1 = 0;
#100000 btn1 = 1;
#1 btn1 = 0;
#100000 btn1 = 1;
#1 btn1 = 0;
#100000 btn1 = 1;
#1 btn1 = 0;
end
initial
#5000000 $stop;

initial begin
$display("Start");

end

endmodule
