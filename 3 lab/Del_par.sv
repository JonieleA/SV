module Del_par #(parameter Schet = 1000) ( clk, _rst, n_clk);

input logic clk, _rst;
logic [32:0] Q;
output logic n_clk;


always_ff @(posedge clk, negedge _rst) begin
if (!_rst) Q <= 0; 
else if (Q != Schet-1) begin
	Q <= Q+1;

	end
else if (Q == Schet-1) begin
	Q <= 0;

	end
end

always_comb begin
case (Q)
	(Schet-1) : n_clk = 0;
	default : n_clk = 1;
endcase
end


endmodule
