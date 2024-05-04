module sch_par #(parameter schet = 1 ) (enable, out,clk, _rst);

input logic enable, clk, _rst;
logic [3:0] Q;
output logic out;

always_ff @(posedge clk or negedge _rst) begin
	if (!_rst) Q <= 9;
	else if (clk && enable && Q != 0) Q <= Q - 1;
	else if (clk && enable && Q == 0 ) Q <= 9;
end

always_comb begin
if (enable && Q > 9-schet) out = 1;
else out = 0;
end

endmodule
