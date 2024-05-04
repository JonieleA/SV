module top(D, clk, _rst, Q_mur, Q_mealey, state, nextstate);

input logic D, clk, _rst;
output logic Q_mur, Q_mealey, nextstate;
output logic state;

snail_mur  U1(.D(D), .clk(clk), ._rst(rst), .Q(Q_mur));
snail_mealey  U2(.D(D), .clk(clk), ._rst(rst), .Q(Q_mealey), .state(state), .nextstate(nextstate));

endmodule
