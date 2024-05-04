module hw_lab3_bell3(btn1, btn2, _rst, clk, out);

input logic btn1, btn2, clk, _rst;
output logic out;
logic n_clk, btn1_, btn2_, clkn;
logic sclk[19:0];
logic [19:0] D;
logic en = 1'b1;

detector U3(.btn(btn1), .out(btn1_), .clk(clk)); 
detector U4(.btn(btn2), .out(btn2_), .clk(clk));

reg20 U2 (.btn1(btn1_), .btn2(btn2_), ._rst(_rst), .Q(D));

sch_par #(.schet(5)) schet5(.enable(en), .out(out), .clk(n_clk), ._rst(_rst));

Del_par2 #(.Schet(5000)) delto1KHz( .clk(clk), ._rst(_rst), .n_clk(clkn), .en(en));

Del_par3 #(.Schet(1)) del1KHz( .clk(clkn), ._rst(_rst), .n_clk(sclk[19]), .en(D[19]));
Del_par3 #(.Schet(2)) del2KHz( .clk(clkn), ._rst(_rst), .n_clk(sclk[18]), .en(D[18]));
Del_par3 #(.Schet(3)) del3KHz( .clk(clkn), ._rst(_rst), .n_clk(sclk[17]), .en(D[17]));
Del_par3 #(.Schet(4)) del4KHz( .clk(clkn), ._rst(_rst), .n_clk(sclk[16]), .en(D[16]));
Del_par3 #(.Schet(5)) del5KHz( .clk(clkn), ._rst(_rst), .n_clk(sclk[15]), .en(D[15]));
Del_par3 #(.Schet(6)) del6KHz( .clk(clkn), ._rst(_rst), .n_clk(sclk[14]), .en(D[14]));
Del_par3 #(.Schet(7)) del7KHz( .clk(clkn), ._rst(_rst), .n_clk(sclk[13]), .en(D[13]));
Del_par3 #(.Schet(8)) del8KHz( .clk(clkn), ._rst(_rst), .n_clk(sclk[12]), .en(D[12]));
Del_par3 #(.Schet(9)) del9KHz( .clk(clkn), ._rst(_rst), .n_clk(sclk[11]), .en(D[11]));
Del_par3 #(.Schet(10)) del10KHz( .clk(clkn), ._rst(_rst), .n_clk(sclk[10]), .en(D[10]));
Del_par3 #(.Schet(11)) del11KHz( .clk(clkn), ._rst(_rst), .n_clk(sclk[9]), .en(D[9]));
Del_par3 #(.Schet(12)) del12KHz( .clk(clkn), ._rst(_rst), .n_clk(sclk[8]), .en(D[8]));
Del_par3 #(.Schet(13)) del13KHz( .clk(clkn), ._rst(_rst), .n_clk(sclk[7]), .en(D[7]));
Del_par3 #(.Schet(14)) del14KHz( .clk(clkn), ._rst(_rst), .n_clk(sclk[6]), .en(D[6]));
Del_par3 #(.Schet(15)) del15KHz( .clk(clkn), ._rst(_rst), .n_clk(sclk[5]), .en(D[5]));
Del_par3 #(.Schet(15)) del16KHz( .clk(clkn), ._rst(_rst), .n_clk(sclk[4]), .en(D[4]));
Del_par3 #(.Schet(16)) del17KHz( .clk(clkn), ._rst(_rst), .n_clk(sclk[3]), .en(D[3]));
Del_par3 #(.Schet(18)) del18KHz( .clk(clkn), ._rst(_rst), .n_clk(sclk[2]), .en(D[2]));
Del_par3 #(.Schet(19)) del19KHz( .clk(clkn), ._rst(_rst), .n_clk(sclk[1]), .en(D[1]));
Del_par3 #(.Schet(20)) del20KHz( .clk(clkn), ._rst(_rst), .n_clk(sclk[0]), .en(D[0]));

or(n_clk, sclk[19],sclk[18],sclk[17],sclk[16],sclk[15],sclk[14],sclk[13],sclk[12],sclk[11],sclk[10],sclk[9],sclk[8],sclk[7],sclk[6],sclk[5],sclk[4],sclk[3],sclk[2],sclk[1],sclk[0]);

endmodule
