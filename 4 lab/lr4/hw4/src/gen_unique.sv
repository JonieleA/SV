module gen_unique (clk, res_n, Seed_1, Seed_2,
							  Seed_3, DATA1_out, DATA2_out, DATA_in);

input logic 						 clk, res_n;
input logic [15:0] Seed_1, Seed_2, Seed_3;
output logic 			DATA1_out, DATA2_out;

logic [4:0] 									 w;
output logic DATA_in;

LFSR_GAL U1 (clk, res_n, Seed_1, w[0]);
LFSR_GAL U2 (w[1], res_n, Seed_2, w[3]);
LFSR_GAL U3 (w[2], res_n, Seed_3, w[4]);

moore_unique U4 (clk, res_n, DATA_in, DATA1_out);
mealy_unique U5 (clk, res_n, DATA_in, DATA2_out);

and(w[1], clk, w[0]);
and(w[2], clk, ~w[0]);
xor(DATA_in, w[4], w[3]);

endmodule
