module debounce(in, out, clk);

parameter cnt_max = 21'd99999;

input logic in, clk;
output logic out;

logic [3:0] shift_reg = '0;
logic [20:0] cnt = '0;

always_ff @(posedge clk)
	shift_reg <= {shift_reg[2:0], in};
	
always_ff @(posedge clk)
		if (cnt == cnt_max)	begin
		out <= shift_reg[3];
		cnt <= '0;
	end else cnt <= cnt + 1'b1;
	
endmodule
