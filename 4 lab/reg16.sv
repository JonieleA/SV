module reg16(clk, _rst, D, Q_par, Q_pos, btn1, btn2, btn3, btn4, btn5, btn6);

input logic clk, _rst, btn1, btn2, btn3, btn4, btn5, btn6;
output logic [15:0] Q_par;
output logic Q_pos;
input logic [15:0] D;
enum logic [2:0] {nothing=3'b0000, in, out_par, out_pos, shift_left, shift_right, circle_shift_left,circle_shift_right} state;

logic [5:0] btn;
logic [15:0] Q;
assign btn = {btn1, btn2, btn3, btn4, btn5, btn6};

always_comb
case (btn)
	6'b000000 : state = in;
	6'b100000 : state = out_par;
	6'b010000 : state = out_pos;
	6'b001000 : state = shift_left;
	6'b000100 : state = shift_right;
	6'b000010 : state = circle_shift_left;
	6'b000001 : state = circle_shift_right;
	default	 : state = nothing;
endcase

	
always_comb
case (state)
	Q_pos = Q
	default	 : 
endcase

endmodule