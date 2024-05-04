module LFSR_GAL (clk, res_n, D, F);

input logic clk, res_n;
input logic [15:0] 	D;
output logic 			F;

logic [15:0]  LFSR_reg;

always_ff @(posedge clk or negedge res_n) begin
	if (!res_n)
		LFSR_reg <= D;
	else begin
		LFSR_reg[15:10] <= LFSR_reg[14:9];
		LFSR_reg[9] <= LFSR_reg[15] ^ LFSR_reg[8];
		LFSR_reg[8:6] <= LFSR_reg[7:5];
		LFSR_reg[5] <= LFSR_reg[15] ^ LFSR_reg[4];
		LFSR_reg[4:1] <= LFSR_reg[3:0];
		LFSR_reg[0] <= LFSR_reg[15];
	end
	
end

assign F = LFSR_reg[15];

endmodule
