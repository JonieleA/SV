module detector (btn, out,clk);

input logic btn, clk;
logic [31:0] Q;
output logic out;

always_ff @(posedge clk or posedge btn) begin
	if (btn) Q <= 1000;
	else if (clk && Q !=0) Q <= Q - 1;
end

always_comb begin
if (btn || Q > 0) out = 1;
else out = 0;
end

endmodule