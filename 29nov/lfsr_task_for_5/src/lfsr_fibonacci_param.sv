module lfsr_fibonacci_param #(parameter init = 16'hA2C1)(clk, nrst, lfsr_out);

input logic  clk;
input logic nrst;
output logic lfsr_out;

logic [0:15] lfsr_reg;

assign lfsr_out = lfsr_reg[15];

always_ff @(posedge clk, negedge nrst) begin
    if (!nrst) 
		begin
			lfsr_reg <= init;
		end 
	 else 
		begin
			lfsr_reg <= {lfsr_reg[15] ^ lfsr_reg[1] ^ lfsr_reg[2], lfsr_reg[0:14]};
		end
end

endmodule
