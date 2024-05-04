module top_lfsr_5 (clkTop, nrstTop, MUX_out);

input logic  clkTop;
input logic nrstTop;
output logic MUX_out;

logic somewire1, somewire2, somewire3;

lfsr_fibonacci_param #(.init(16'hA1C1)) dut_fib_1 (.clk(clkTop), .nrst(nrstTop), .lfsr_out(somewire1));
lfsr_fibonacci_param #(.init(16'hA2C2)) dut_fib_2 (.clk(clkTop), .nrst(nrstTop), .lfsr_out(somewire2));
lfsr_fibonacci_param #(.init(16'hA1C2)) dut_fib_3 (.clk(clkTop), .nrst(nrstTop), .lfsr_out(somewire3));
mux_2to1 dut_mux (.D0(somewire1), .D1(somewire2), .S(somewire3), .Y(MUX_out));

endmodule
