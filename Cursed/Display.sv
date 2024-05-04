module Display (inp, clk, priem, SET1, SET2, SET3, SET4, Reset_1, Reset_2, Reset_3, Reset_4, Disp1, Disp2, Disp3, Disp4);

input logic clk, priem, SET1, SET2, SET3, SET4, Reset_1, Reset_2, Reset_3, Reset_4;
output logic [7:0] Disp1=8'd0, Disp2=8'd0, Disp3=8'd0, Disp4=8'd0;
input logic [7:0] inp;
logic [1:0] s;
logic zero, nclk, clk1, clk2, clk3, clk4;


register reg_1 ( .Q(Disp1), .D(inp), .clk(clk1), .rst(Reset_1));
register reg_2 ( .Q(Disp2), .D(inp), .clk(clk2), .rst(Reset_2));
register reg_3 ( .Q(Disp3), .D(inp), .clk(clk3), .rst(Reset_3));
register reg_4 ( .Q(Disp4), .D(inp), .clk(clk4), .rst(Reset_4));

delay_par #(.delay(2)) U1 (.clk(clk), .priem(priem), .del(s[0]));
delay_par #(.delay(3)) U2 (.clk(clk), .priem(priem), .del(s[1]));

assign zero = (inp == 8'd0) ? 0 : 1;
assign nclk = (zero & s[0] & ~s[1]) ? 1 : 0;

assign clk1 = (nclk & SET1 & Disp1 == 8'd0) ? 1 : 0;
assign clk2 = (nclk & SET2 & Disp2 == 8'd0) ? 1 : 0;
assign clk3 = (nclk & SET3 & Disp3 == 8'd0) ? 1 : 0;
assign clk4 = (nclk & SET4 & Disp4 == 8'd0) ? 1 : 0;

endmodule

