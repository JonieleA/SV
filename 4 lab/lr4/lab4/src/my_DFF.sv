module my_DFF (clk, en, res_n, D, Q);

input logic clk, en, res_n, D;
output logic 					 Q;

always_ff @(posedge clk or negedge res_n) begin
	if (!res_n)
		Q <= 0;
	else begin
		if (en)
			Q <= D;
	end
end

endmodule
