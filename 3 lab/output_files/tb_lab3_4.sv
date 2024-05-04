
`timescale 1ns/1ns

module tb_lab3_4;


logic clk, _rst, shift_l, shift_r;
logic [14:0] Q,D;


reg_cir_par DUT (.D(D), .clk(clk), ._rst(_rst), .Q(Q), .shift_l(shift_l), .shift_r(shift_r));
initial clk = 0;
always #10 clk = !clk;
initial begin
D =15'b011011011101111;
_rst = 0;
clk = 0;
shift_l = 0;
shift_r = 0;
#10 _rst = 1'b1;
#10 clk = 1;
#10 D = 15'd0;
#10 clk = 0;
#10 shift_l = 1;
#10 shift_l = 0;
#10 shift_r = 1;
#10 shift_r = 0;
#10 shift_r = 1;
#10 shift_r = 0;
end

initial
#120 $stop;

initial begin
$display("Start");

end

endmodule
