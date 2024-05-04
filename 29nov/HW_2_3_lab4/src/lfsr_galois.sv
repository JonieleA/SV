module lfsr_galois (clk, nrst, lfsr_out);

input logic  clk;
input logic nrst;
output logic lfsr_out;

logic [15:0] lfsr_reg;

assign lfsr_out = lfsr_reg[0];

always_ff @(posedge clk, negedge nrst) begin
    if (!nrst)
		begin
			lfsr_reg <= 16'hA2C1;
		end
	else 
		begin
			lfsr_reg[15] <= lfsr_reg[0];
			lfsr_reg[14] <= lfsr_reg[15];
			lfsr_reg[13] <= lfsr_reg[14];
			lfsr_reg[12] <= lfsr_reg[13];
			lfsr_reg[11] <= lfsr_reg[12];
			lfsr_reg[10] <= lfsr_reg[11];
			lfsr_reg[9] <= lfsr_reg[10];
			lfsr_reg[8] <= lfsr_reg[9];
			lfsr_reg[7] <= lfsr_reg[8];
			lfsr_reg[6] <= lfsr_reg[7];
			lfsr_reg[5] <= lfsr_reg[6];
			lfsr_reg[4] <= lfsr_reg[5];
			lfsr_reg[3] <= lfsr_reg[4];
			lfsr_reg[2] <= lfsr_reg[3]^lfsr_reg[0];
			lfsr_reg[1] <= lfsr_reg[2]^lfsr_reg[0];
			lfsr_reg[0] <= lfsr_reg[1];			
		end
end

endmodule
