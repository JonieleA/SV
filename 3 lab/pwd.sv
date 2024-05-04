module pwd (btn1 , btn2, _rst, clk, out);

input logic btn1, btn2, clk, _rst;
output logic out;
logic [8:0] Q;
logic [8:0] sout;
logic n_clk;
logic btn1_, btn2_;

detector U2(.btn(btn1), .out(btn1_), .clk(clk)); 
detector U3(.btn(btn2), .out(btn2_), .clk(clk));

Del_par #(.Schet(10000000)) del_10000000(.clk(clk), ._rst(_rst), .n_clk(n_clk));
reg9 U1(.btn1(btn1_), .btn2(btn2_), ._rst(_rst), .Q(Q), .clk(clk));
sch_par #(.schet(1)) schet1(.enable(Q[8]), .out(sout[8]), .clk(n_clk), ._rst(_rst));
sch_par #(.schet(2)) schet2(.enable(Q[7]), .out(sout[7]), .clk(n_clk), ._rst(_rst));
sch_par #(.schet(3)) schet3(.enable(Q[6]), .out(sout[6]), .clk(n_clk), ._rst(_rst));
sch_par #(.schet(4)) schet4(.enable(Q[5]), .out(sout[5]), .clk(n_clk), ._rst(_rst));
sch_par #(.schet(5)) schet5(.enable(Q[4]), .out(sout[4]), .clk(n_clk), ._rst(_rst));
sch_par #(.schet(6)) schet6(.enable(Q[3]), .out(sout[3]), .clk(n_clk), ._rst(_rst));
sch_par #(.schet(7)) schet7(.enable(Q[2]), .out(sout[2]), .clk(n_clk), ._rst(_rst));
sch_par #(.schet(8)) schet8(.enable(Q[1]), .out(sout[1]), .clk(n_clk), ._rst(_rst));
sch_par #(.schet(9)) schet9(.enable(Q[0]), .out(sout[0]), .clk(n_clk), ._rst(_rst));

or(out, sout[8],sout[7],sout[6],sout[5],sout[4],sout[3],sout[2],sout[1],sout[0]);

endmodule
