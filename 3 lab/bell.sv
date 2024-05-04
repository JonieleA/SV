module bell (btn1, btn2, btn3, btn4, _rst, clk, out);

input logic btn1, btn2, btn3, btn4, clk, _rst;
output logic out;
logic [8:0] Q;
logic [8:0] sout;
logic n_clk, btn1_, btn2_, btn3_, btn4_;
logic sclk[19:0];
logic [19:0] D;

detector U3(.btn(btn1), .out(btn1_), .clk(clk)); 
detector U4(.btn(btn2), .out(btn2_), .clk(clk));
detector U5(.btn(btn3), .out(btn3_), .clk(clk)); 
detector U6(.btn(btn4), .out(btn4_), .clk(clk));


reg9 U1(.btn1(btn1_), .btn2(btn2_), ._rst(_rst), .Q(Q), .clk(clk));
reg20 U2 (.btn1(btn3_), .btn2(btn4_), ._rst(_rst), .Q(D));
sch_par #(.schet(1)) schet1(.enable(Q[8]), .out(sout[8]), .clk(n_clk), ._rst(_rst));
sch_par #(.schet(2)) schet2(.enable(Q[7]), .out(sout[7]), .clk(n_clk), ._rst(_rst));
sch_par #(.schet(3)) schet3(.enable(Q[6]), .out(sout[6]), .clk(n_clk), ._rst(_rst));
sch_par #(.schet(4)) schet4(.enable(Q[5]), .out(sout[5]), .clk(n_clk), ._rst(_rst));
sch_par #(.schet(5)) schet5(.enable(Q[4]), .out(sout[4]), .clk(n_clk), ._rst(_rst));
sch_par #(.schet(6)) schet6(.enable(Q[3]), .out(sout[3]), .clk(n_clk), ._rst(_rst));
sch_par #(.schet(7)) schet7(.enable(Q[2]), .out(sout[2]), .clk(n_clk), ._rst(_rst));
sch_par #(.schet(8)) schet8(.enable(Q[1]), .out(sout[1]), .clk(n_clk), ._rst(_rst));
sch_par #(.schet(9)) schet9(.enable(Q[0]), .out(sout[0]), .clk(n_clk), ._rst(_rst));

Del_par2 #(.Schet(10000000)) del_0_5hz( .clk(clk), ._rst(_rst), .n_clk(sclk[19]), .en(D[19]));
Del_par2 #(.Schet(5000000)) del_1hz( .clk(clk), ._rst(_rst), .n_clk(sclk[18]), .en(D[18]));
Del_par2 #(.Schet(3333333)) del_1_5hz( .clk(clk), ._rst(_rst), .n_clk(sclk[17]), .en(D[17]));
Del_par2 #(.Schet(2500000)) del_2hz( .clk(clk), ._rst(_rst), .n_clk(sclk[16]), .en(D[16]));
Del_par2 #(.Schet(2000000)) del_2_5hz( .clk(clk), ._rst(_rst), .n_clk(sclk[15]), .en(D[15]));
Del_par2 #(.Schet(1666667)) del_3hz( .clk(clk), ._rst(_rst), .n_clk(sclk[14]), .en(D[14]));
Del_par2 #(.Schet(1428571)) del_3_5hz( .clk(clk), ._rst(_rst), .n_clk(sclk[13]), .en(D[13]));
Del_par2 #(.Schet(1250000)) del_4hz( .clk(clk), ._rst(_rst), .n_clk(sclk[12]), .en(D[12]));
Del_par2 #(.Schet(1111111)) del_4_5hz( .clk(clk), ._rst(_rst), .n_clk(sclk[11]), .en(D[11]));
Del_par2 #(.Schet(1000000)) del_5hz( .clk(clk), ._rst(_rst), .n_clk(sclk[10]), .en(D[10]));
Del_par2 #(.Schet(909091)) del_5_5hz( .clk(clk), ._rst(_rst), .n_clk(sclk[9]), .en(D[9]));
Del_par2 #(.Schet(833333)) del_6hz( .clk(clk), ._rst(_rst), .n_clk(sclk[8]), .en(D[8]));
Del_par2 #(.Schet(769231)) del_6_5hz( .clk(clk), ._rst(_rst), .n_clk(sclk[7]), .en(D[7]));
Del_par2 #(.Schet(714286)) del_7hz( .clk(clk), ._rst(_rst), .n_clk(sclk[6]), .en(D[6]));
Del_par2 #(.Schet(666666)) del_7_5hz( .clk(clk), ._rst(_rst), .n_clk(sclk[5]), .en(D[5]));
Del_par2 #(.Schet(625000)) del_8hz( .clk(clk), ._rst(_rst), .n_clk(sclk[4]), .en(D[4]));
Del_par2 #(.Schet(588235)) del_8_5hz( .clk(clk), ._rst(_rst), .n_clk(sclk[3]), .en(D[3]));
Del_par2 #(.Schet(555556)) del_9hz( .clk(clk), ._rst(_rst), .n_clk(sclk[2]), .en(D[2]));
Del_par2 #(.Schet(526316)) del_9_5hz( .clk(clk), ._rst(_rst), .n_clk(sclk[1]), .en(D[1]));
Del_par2 #(.Schet(500000)) del_10hz( .clk(clk), ._rst(_rst), .n_clk(sclk[0]), .en(D[0]));



or(out, sout[8],sout[7],sout[6],sout[5],sout[4],sout[3],sout[2],sout[1],sout[0]);
or(n_clk, sclk[19],sclk[18],sclk[17],sclk[16],sclk[15],sclk[14],sclk[13],sclk[12],sclk[11],sclk[10],sclk[9],sclk[8],sclk[7],sclk[6],sclk[5],sclk[4],sclk[3],sclk[2],sclk[1],sclk[0]);

endmodule
