module snail_mur(D, clk, _rst, Q);

input logic D, clk, _rst;
output logic Q;

enum logic [1:0] {SAD = 2'b00, HOPE, HOORAY} state, nextstate;

//регистр состояний
always_ff @(posedge clk, negedge _rst)
if ( !_rst )
state <= SAD;
else
state <= nextstate;


//комбинационная функция состояний
always_comb
case ( state )
SAD : nextstate = (D) ? HOPE : SAD;
HOPE: nextstate = (D) ? HOORAY : SAD;
HOORAY : nextstate = (D) ? HOPE : SAD;
default : nextstate = SAD;
endcase

//выходная комбинационная логика
assign Q = (state == HOORAY) ? 1'b1 : 1'b0;

endmodule
