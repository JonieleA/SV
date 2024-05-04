 module lfsr_gal(clk, _rst, lfsr_out);
 
input logic clk;
input logic _rst;
output logic lfsr_out;
 
logic [15:0] reg_gal;
 
assign lfsr_out = reg_gal[0];
 
always_ff @(posedge clk, negedge _rst) begin
	if (!_rst)
		reg_fib <= 16'h01;
	else
	reg_fib <= {reg_gal[0],reg_gal[15:8] ,reg_gal[8] ^ reg_gal[0], reg_gal[6], reg_gal[6] ^ reg_gal[0], reg_gal[5] ^ reg_gal[0], reg_gal[4] ^ reg_gal[0], reg_gal[3:1]};
end
 
endmodule
