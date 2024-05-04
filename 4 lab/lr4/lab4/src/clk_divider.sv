module clk_divider #(parameter DIVISOR = 50000000)
						  (clk_in, res_n, clk_out);

input logic clk_in, res_n;
output logic 		clk_out;

logic [40:0]		  count;

always_ff @(posedge clk_in or negedge res_n) begin
	if (!res_n) begin
		count <= 0;
		clk_out <= 0;
	end
	
	else if (count == (DIVISOR/2)) begin
		count <= 0;
		clk_out <= ~clk_out;
	end
	
	else
		count <= count + 1'b1;
end

endmodule
