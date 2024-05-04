module detect_front (clk, btn, out);

input logic btn, clk;
logic [32:0] Q;
output logic out;

always_ff @( posedge clk) begin
	if (!btn && clk ) begin Q<= 0; out <= 0; end
	else if (btn && Q != 32'd100000) begin Q <= Q+1;  out <= 0; end
	else if (btn && Q == 32'd100000) begin  out=1; Q <= 0; end
end

endmodule
