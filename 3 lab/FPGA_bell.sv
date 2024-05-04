module FPGA_bell (btn1, btn2, btn3, btn4, _rst, clk, out);

input logic btn1, btn2, btn3, btn4, clk, _rst;
output logic out;
logic btn1_, btn2_, btn3_, btn4_;
bell U1(.btn1(btn1_), .btn2(btn2_), .btn3(btn3_), .btn4(btn4_), ._rst(_rst), .clk(clk), .out(out));

not(btn1_, btn1);
not(btn2_, btn2);
not(btn3_, btn3);
not(btn4_, btn4);

endmodule
