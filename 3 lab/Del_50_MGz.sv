module Del_50_MGz(clk, _rst, n_clk, flag,Q);

input logic clk, _rst;
output logic [32:0] Q;
output logic n_clk, flag;


always_ff @(posedge clk, negedge _rst) begin
if (!_rst) Q <= 0; 
else if (Q != 499) begin
	Q <= Q+1;

	end
else if (Q == 499) begin
	Q <= 0;

	end
end

always_comb begin
if (Q<499/2) n_clk = 1;
else n_clk = 0;
end
always_comb begin
case (Q)
	32'd0 : flag = 1;
	default : flag = 0;
endcase
end

endmodule
