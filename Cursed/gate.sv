module gate (clk, sig, inp, priem, res, right_cursor);

input logic clk, sig, priem;
input logic [7:0] inp;
output logic [7:0] res;
output logic right_cursor;

logic w;
logic [3:0] s;

assign w =  (clk & sig) ? 1 : 0;

assign res[7] = (w) ?  inp[7] : 0;
assign res[6] = (w) ?  inp[6] : 0;
assign res[5] = (w) ?  inp[5] : 0;
assign res[4] = (w) ?  inp[4] : 0;
assign res[3] = (w) ?  inp[3] : 0;
assign res[2] = (w) ?  inp[2] : 0;
assign res[1] = (w) ?  inp[1] : 0;
assign res[0] = (w) ?  inp[0] : 0;


delay_par #(.delay(3)) U1 (.clk(clk), .priem(priem), .del(s[2]));
delay_par #(.delay(4)) U2 (.clk(clk), .priem(priem), .del(s[1]));

assign s[3] = ~s[1];
and(right_cursor, s[2], s[3], sig);

endmodule

