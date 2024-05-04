
`timescale 1ns/1ns

module tb_lab3_6;


logic out, _rst, btn1, btn2, clk, btn1_, btn2_; 
logic [8:0] Q;
logic [8:0] sout;

pwd DUT (.btn1(btn1), .btn2(btn2), ._rst(_rst), .clk(clk), .out(out), .Q(Q), .sout(sout), .btn1_(btn1_), .btn2_(btn2_));

initial begin
clk = 0;
btn1 = 0;
btn2 = 0;
#1 _rst=0;
#1 _rst=1;
end
always #1 clk = !clk;
initial begin
#2000100 btn1=1;
#100000 btn1 = 0;
#2000100 btn1=1;
#1000000 btn1 = 0;
#2000100 btn1=1;
#1 btn1 = 0;
#2000100 btn1=1;
#1 btn1 = 0;
#2000100 btn1=1;
#1 btn1 = 0;
#2000100 btn1=1;
#1 btn1 = 0;
#2000100 btn1=1;
#1 btn1 = 0;
#2000100 btn1=1;
#1 btn1 = 0;
#2000100 btn2=1;
#1 btn2 = 0;
#2000100 btn2=1;
#1 btn2 = 0;
end
initial
#23000000 $stop;

initial begin
$display("Start");

end

endmodule
