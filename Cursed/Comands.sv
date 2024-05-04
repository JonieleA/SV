module Comands (Trig_1, Trig_2, Trig_3, Trig_4, right_from_gate, clk, priem, left_cursor, right_cursor, Delete, Enter);

input logic [7:0] Trig_1, Trig_2, Trig_3, Trig_4;
input logic right_from_gate, clk, priem;
output logic left_cursor, right_cursor, Delete, Enter;

logic s[2:0];
logic delete;

and(s[2], s[1], !s[0]);

delay_par #(.delay(3)) U1 (.clk(clk), .priem(priem), .del(s[1]));
delay_par #(.delay(4)) U2 (.clk(clk), .priem(priem), .del(s[0]));

assign Enter = (s[1] & Trig_1 == 8'b00001101) ? 1 : 0;
assign Delete = (s[0] & (Trig_1 == 8'b00001000 | (Trig_1 == 8'b01111110 & Trig_2 == 8'd00110011 & Trig_3 == 8'b01011011 & Trig_4 == 8'b00011011))) ? 1 : 0;
assign right_cursor = (s[2] & (right_from_gate | Trig_1 == 8'b00100000 | (Trig_1 == 8'b01000001 & Trig_2 == 8'b01011011 & Trig_3 == 8'b00011011))) ? 1 : 0;
assign left_cursor = (s[2] & (Trig_1 == 8'b00001000 | (Trig_1 == 8'b01000100 & Trig_2 == 8'b01011011 & Trig_3 == 8'b00011011))) ? 1 : 0;

endmodule
