module Del_par3 #(parameter Schet = 1000) ( clk, _rst, n_clk, en);

input logic clk, _rst, en;
logic [4:0] Q;
output logic n_clk;


always_ff @(posedge clk, negedge _rst, negedge en) begin
if (!_rst || !en) Q <= 0; 
else if (Q != Schet-1 && en) begin
	Q <= Q+1;

	end
else if (Q == Schet-1 && en) begin
	Q <= 0;

	end
end

always_comb begin
	if (Q < (Schet/2) && en) n_clk = 1;
	else n_clk = 0;
end


endmodule