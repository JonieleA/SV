module delay_par #(parameter delay = 1) (clk, priem, del);

input logic clk, priem;
output logic del;
logic clear;
logic [2:0] Q = 0;

always_ff @(posedge clk, posedge clear)
	if (clear) Q <= 0;
	else if (clk && Q < delay) Q <= Q + 1;
	else Q <= Q;
	
assign del = (Q < delay) ? 0 : 1;

assign clear = (Q == delay && priem) ? 1 : 0;

endmodule 