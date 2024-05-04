module schet10(clk, _rst, n_clk,  Q);

input logic clk, _rst;
output logic [3:0] Q;
output logic n_clk = '0;


always_ff @(posedge clk, negedge _rst) begin
if (!_rst) Q <= 0; 
else if (Q != 9) begin
	Q <= Q+1;
	n_clk <= 0;
	end
else if (Q == 9) begin
	Q <= 0;
	n_clk <= 1;
	end
end

endmodule