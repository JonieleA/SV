module my_and (n_clk, btn, out);

input logic n_clk, btn;
output logic out;

assign out = (n_clk & btn) ? (1) : (0);

endmodule
