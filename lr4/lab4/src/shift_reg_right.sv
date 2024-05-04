module shift_reg_right (clk, D, F);

input logic	  clk, D;
output logic [3:0] F;

always_ff @(posedge clk)
	F <= {F[2:0], D};

endmodule
