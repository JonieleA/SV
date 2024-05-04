module obrabotka (inp, clk, priem, Reset_1, Reset_2, Reset_3, Reset_4, res, left_cursor, right_cursor, Delete, Enter);

input logic clk, priem, Reset_1, Reset_2, Reset_3, Reset_4;
input logic [7:0] inp;
output logic [7:0] res;
output logic left_cursor, right_cursor, Delete, Enter;

logic ESC1, ESC2, ESC3;
logic nclk, res0, res1 ,res2, res3, res4, right_from_gate, sig, YC, YP, zero;
logic [2:0] s;
logic [7:0] Trig_1, Trig_2, Trig_3, Trig_4;
assign zero = (inp == 8'b00000000) ? 0 : 1;

register reg_1 (.Q(Trig_1), .D(inp), .clk(nclk), .rst(res1));
register reg_2 (.Q(Trig_2), .D(Trig_1), .clk(nclk), .rst(res2));
register reg_3 (.Q(Trig_3), .D(Trig_2), .clk(nclk), .rst(res3));
register reg_4 (.Q(Trig_4), .D(Trig_3), .clk(nclk), .rst(res4));

delay_par #(.delay(1)) U1 (.clk(clk), .priem(priem), .del(s[0]));
delay_par #(.delay(2)) U2 (.clk(clk), .priem(priem), .del(s[1]));

assign s[2]= (~s[1] &  s[0]) ? 1 : 0;
assign sig = (YC & ~YP & zero) ? 1 : 0;

gate gate_1 (.clk(clk), .sig(sig), .inp(inp), .priem(priem), .res(res), .right_cursor(right_from_gate));
Comands comands_1 (.Trig_1(Trig_1), .Trig_2(Trig_2), .Trig_3(Trig_3), .Trig_4(Trig_4), .right_from_gate(right_from_gate), .clk(clk), .priem(priem), .left_cursor(left_cursor), .right_cursor(right_cursor), .Delete(Delete), .Enter(Enter));
Cont_seq Cont_seq_1 (.Trig_1(Trig_1), .Trig_2(Trig_2), .Trig_3(Trig_3), .clk(clk), .priem(priem), .ESC1(ESC1), .ESC2(ESC2), .ESC3(ESC3));
to_save to_save_1 (.inp(inp), .ESC1(ESC1), .ESC2(ESC2), .ESC3(ESC3), .YP(YP), .YC(YC));

assign res0 = (!YP & s[2] & clk);
assign res1 = (res0 | Reset_1) ? 1 : 0;
assign res2 = (res0 | Reset_2) ? 1 : 0;
assign res3 = (res0 | Reset_3) ? 1 : 0;
assign res4 = (res0 | Reset_4) ? 1 : 0;
assign nclk = (s[2] & zero & YP) ? 1 : 0;

endmodule
