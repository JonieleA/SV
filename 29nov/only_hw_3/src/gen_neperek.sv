module gen_neperek (clk, nres, OUTP_MOORE_NEPEREK, OUTP_MEALY_NEPEREK);

input logic clk, nres;
output logic OUTP_MOORE_NEPEREK, OUTP_MEALY_NEPEREK;
logic someWire;

top_lfsr_5  DutGenNeperek(.clkTop(clk), .nrstTop(nres), .MUX_out(someWire));
moore_neperek DutMooreNeperek(.clk(clk), .nres(nres), .INP(someWire), .OUTP(OUTP_MOORE_NEPEREK));
mealy_neperek DutMealyNeperek(.clk(clk), .nres(nres), .INP(someWire), .OUTP(OUTP_MEALY_NEPEREK));


endmodule


//LFSR_GAL U1 (clk, nres, Seed_1, SomeWire[0]);
//LFSR_GAL U2 (SomeWire[1], nres, Seed_2, SomeWire[3]);
//LFSR_GAL U3 (SomeWire[2], nres, Seed_3, SomeWire[4]);
//
//moore_unique U4 (clk, nres, INP, OUTP_MOORE_NEPEREK);
//mealy_unique U5 (clk, nres, INP, OUTP_MEALY_NEPEREK);
//
//and(SomeWire[1], clk, SomeWire[0]);
//and(SomeWire[2], clk, ~SomeWire[0]);
//xor(INP, SomeWire[4], SomeWire[3]);