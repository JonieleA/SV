module generator (gen_in, priem_in, clk, priem_out);

input logic gen_in, priem_in;
output logic clk, priem_out;
logic [2:0] Q;
logic nclk;


always_ff @(posedge priem_out, posedge  nclk)
	if(priem_out) Q <= 0;
	else if (nclk) Q <= Q + 1;
	else Q <= Q;

assign priem_out = ~priem_in;
assign nclk = (Q <= 3'd6 & gen_in ) ? 1 : 0;
assign clk = (gen_in & priem_in & Q <= 3'd6) ? 1 : 0;


endmodule
