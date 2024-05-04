module FPGA_pwd (btn1 , btn2, _rst, clk, out);

input logic btn1, btn2, clk, _rst;
output logic out;
logic btn1_, btn2_;

pwd U1(.btn1(btn1_) , .btn2(btn2_), ._rst(_rst), .clk(clk), .out(out));

not(btn1_, btn1);
not(btn2_, btn2);

endmodule
