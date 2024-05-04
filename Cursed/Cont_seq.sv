module Cont_seq (Trig_1, Trig_2, Trig_3, clk, priem, ESC1, ESC2, ESC3);

input logic clk, priem;
input logic [7:0] Trig_1, Trig_2, Trig_3;
output logic ESC1, ESC2, ESC3;

// enum logic [7:0] {ESC=8'b00011011, CSI=8'b01011011, left_cursor=8'b01000100, right_cursor=8'b01000001, Delete1=8'd00110011, Delete2=8'b01111110, Space=8'b00100000, BackSpace=8'b00001000, Enter=8'b00001101} help; 

logic s;
logic [2:0] set, reset;

delay_par #(.delay(5)) U1 (.clk(clk), .priem(priem), .del(s));


assign set[0] = (s & Trig_1 == 8'b00011011) ? 1 : 0;
assign set[1] = (s & Trig_1 == 8'b01011011 & Trig_2 == 8'b00011011) ? 1 : 0;
assign set[2] = (s & Trig_1 == 8'b00110011 & Trig_2 == 8'b01011011 & Trig_3 == 8'b00011011)  ? 1 : 0;

assign reset[0] = (s & ((Trig_1 == 8'b01011011 & Trig_2 == 8'b00011011) | (Trig_1 == 8'b00110011 & Trig_2 == 8'b01011011 & Trig_3 == 8'b00011011) | !(Trig_1 == 8'b00011011 | (Trig_1 == 8'b01011011 & Trig_2 == 8'b00011011) | (Trig_1 == 8'b00110011 & Trig_2 == 8'b01011011 & Trig_3 == 8'b00011011) ))) ? 1 : 0;
assign reset[1] = (s & (Trig_1 == 8'b00011011 | (Trig_1 == 8'b00110011 & Trig_2 == 8'b01011011 & Trig_3 == 8'b00011011) | !(Trig_1 == 8'b00011011 | (Trig_1 == 8'b01011011 & Trig_2 == 8'b00011011) | (Trig_1 == 8'b00110011 & Trig_2 == 8'b01011011 & Trig_3 == 8'b00011011) ))) ? 1 : 0;
assign reset[2] = (s & (Trig_1 == 8'b00011011 | (Trig_1 == 8'b01011011 & Trig_2 == 8'b00011011) | !(Trig_1 == 8'b00011011 | (Trig_1 == 8'b01011011 & Trig_2 == 8'b00011011) | (Trig_1 == 8'b00110011 & Trig_2 == 8'b01011011 & Trig_3 == 8'b00011011) ))) ? 1 : 0;

always_ff @(posedge set[0], posedge reset[0])
	if (set[0]) ESC1 <= 1;
	else if (reset[0]) ESC1 <= 0;
	else ESC1 <= ESC1;

always_ff @(posedge set[1], posedge reset[1])
	if (set[1]) ESC2 <= 1;
	else if (reset[1]) ESC2 <= 0;
	else ESC2 <= ESC2;
	
always_ff @(posedge set[2], posedge reset[2])
	if (set[2]) ESC3 <= 1;
	else if (reset[2]) ESC3 <= 0;
	else ESC3 <= ESC3;
	
endmodule
