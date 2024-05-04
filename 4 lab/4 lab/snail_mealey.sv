module snail_mealey(D, clk, _rst, Q, state, nextstate);

input logic D, clk, _rst;
output logic Q;
logic [1:0] sup;
output enum logic {SAD = 1'b0, HOPE} state, nextstate;

//регистр состояний
always_ff @(posedge clk, negedge _rst)
if ( !_rst )
state <= SAD;
else
state <= nextstate;
// Sup


//комбинационная функция состояний
always_comb
case ( state )
SAD: nextstate = (D) ? HOPE : SAD;
default : nextstate = SAD;
endcase

//выходная комбинационная логика
assign Q = (D == 1'b1 && sup == 2) ? 1'b1 : 1'b0;


//assign Q = (D == 1'b1 && state == SAD && nextstate == HOPE ) ? 1'b1 : 1'b0;

endmodule