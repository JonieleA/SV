module reg_cir_par  (D, clk, _rst, Q, shift_l, shift_r);

input logic [14:0] D;
input logic clk, _rst, shift_l, shift_r;
output logic signed [14:0] Q;

always_ff @(posedge clk or negedge _rst) begin
	if (!_rst) Q <= 0;
	else if (shift_l == 0 & shift_r == 0) Q <= D;
	else if (shift_l == 0 & shift_r == 1) Q <= {Q[0], Q[14:1]};
	else if (shift_l == 1 & shift_r == 0) Q <= {Q[13:0], Q[14]};
	else Q <= D;
end

endmodule

