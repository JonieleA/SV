module top_perek (clk, nres, INP, OUT_MOORE, OUT_MEALY);

input logic clk, nres, INP;
output logic OUT_MOORE, OUT_MEALY;

moore_perek U1 (.clk(clk), .nres(nres), .INP(INP), .OUTP(OUT_MOORE));
mealy_perek U2 (.clk(clk), .nres(nres), .INP(INP), .OUTP(OUT_MEALY));

endmodule
