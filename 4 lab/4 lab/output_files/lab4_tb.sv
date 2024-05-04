`timescale 1ns/1ns


module lab4_tb;

logic D, clk, _rst, Q_mur, Q_mealey, nextstate;
logic  state;

top DUT(.D(D), .clk(clk), ._rst(_rst), .Q_mur(Q_mur), .Q_mealey(Q_mealey), .state(state), .nextstate(nextstate));

//logic [63:0] textstate;
//always_comb
//case ( state )
//	STATE1 : textstate = 'SAD';
//	STATE2 : textstate = 'HOPE';
//	STATE3 : textstate = 'HOORAY';
//endcase
//logic [63:0] state = DUT.textstate;



initial begin
D = 0;
clk = 1'b0;
_rst = 1'b0;
#10 _rst = 1'b1;
#15 D = 1;
#1 D = 0;
#1 D = 1;
#1 D = 0;
#1 D = 0;
#1 D = 0;
#1 D = 0;
#1 D = 1;
#1 D = 1;
#1 D = 1;
#1 D = 1;
end

always #1 clk = !clk;

initial #50 $stop;


endmodule
