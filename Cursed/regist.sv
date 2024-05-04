module regist (left, right, first_pos, SET1, SET2, SET3, SET4);

input logic left, right, first_pos;
output logic SET1, SET2, SET3, SET4;
logic [2:0] Q = 1;
logic left_, right_;

always_ff @(posedge first_pos, posedge left_, posedge right_)
	if (first_pos) Q <= 1;
	else if (left_) Q <= Q - 1;
	else if (right_) Q <= Q + 1;
	else Q <= Q;

assign left_ = (left & Q > 1) ? 1 : 0;
assign right_ = (right & Q < 4) ? 1 : 0;

assign SET1 = (Q == 3'd1) ? 1 : 0;
assign SET2 = (Q == 3'd2) ? 1 : 0;
assign SET3 = (Q == 3'd3) ? 1 : 0;
assign SET4 = (Q == 3'd4) ? 1 : 0;

endmodule
