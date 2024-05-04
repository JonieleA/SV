module to_save(inp, ESC1, ESC2, ESC3, YP, YC);

input logic ESC1, ESC2, ESC3;
input logic [7:0] inp;
output logic YP, YC;

logic ESC, CSI, cur_left, cur_right, Delete1, Delete2, Space, BackSpace, Enter;

or(YP, ~YC, ESC, CSI, cur_left, cur_right, Delete1, Delete2);
nor(YC, Space, BackSpace, Enter);

assign ESC = (inp == 8'b00011011) ? 1 : 0;
assign CSI = (inp == 8'b01011011 & ESC1) ? 1 : 0;
assign cur_left = (inp == 8'b01000100 & ESC2) ? 1 : 0;
assign cur_right = (inp == 8'b01000001 & ESC2) ? 1 : 0;
assign Delete1 = (inp == 8'b00110011 & ESC2) ? 1 : 0;
assign Delete2 = (inp == 8'b01111110 & ESC3) ? 1 : 0;
assign Space = (inp == 8'b00100000) ? 1 : 0;
assign BackSpace = (inp == 8'b00001000) ? 1 : 0;
assign Enter = (inp == 8'b00001101) ? 1 : 0;

endmodule
