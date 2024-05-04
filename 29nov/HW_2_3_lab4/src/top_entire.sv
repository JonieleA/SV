module top_entire (clk, nres, INP, OUT_MOORE_neperek, OUT_MOORE_perek,OUT_MEALY_neperek, OUT_MEALY_perek);

input logic clk, nres, INP;
output logic OUT_MOORE_neperek, OUT_MOORE_perek,OUT_MEALY_neperek, OUT_MEALY_perek;

top_neperek dutNeperek (.clk(clk), .nres(nres), .INP(INP), .OUT_MOORE(OUT_MOORE_neperek), .OUT_MEALY(OUT_MEALY_neperek));
top_perek dutPeperek (.clk(clk), .nres(nres), .INP(INP), .OUT_MOORE(OUT_MOORE_perek), .OUT_MEALY(OUT_MEALY_perek));


endmodule
