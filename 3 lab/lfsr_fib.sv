 module lfsr_fib(clk, _rst, lfsr_out);
 
input logic clk;
input logic _rst;
output logic lfsr_out;
 
logic [15:0] reg_fib;
 
assign lfsr_out = reg_fib[0];
 
always_ff @(posedge clk, negedge _rst) begin
	if (!_rst)
		reg_fib <= 16'hA2C1;
	else
	reg_fib <= {reg_fib[0] ^ reg_fib[4] ^ reg_fib[5] ^ reg_fib[6] ^ reg_fib[8], reg_fib[15:1]};
end
 
endmodule
