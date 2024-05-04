module gen_perek (clk, nres, OUTP_MOORE_PEREK, OUTP_MEALY_PEREK);

input logic clk, nres;
output logic OUTP_MOORE_PEREK, OUTP_MEALY_PEREK;
logic someWire;

top_lfsr_5  DutGenPerek(.clkTop(clk), .nrstTop(nres), .MUX_out(someWire));
moore_perek DutMoorePerek(.clk(clk), .nres(nres), .INP(someWire), .OUTP(OUTP_MOORE_PEREK));
mealy_perek DutMealyPerek(.clk(clk), .nres(nres), .INP(someWire), .OUTP(OUTP_MEALY_PEREK));


endmodule
