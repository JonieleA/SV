module mealy (clk, res_n, D, F);

input logic clk, res_n, D;
output logic 				F;

typedef enum logic [1:0] {OFF = 2'b00, READY, ON} state_t;

state_t state, nextstate;

always_ff @(posedge clk or negedge res_n) begin
	if (!res_n)
		state <= OFF;
	else
		state <= nextstate;
end

//Switching state
always_comb begin
	case (state)
		OFF: nextstate = (D) ? READY : OFF;
		READY, ON: nextstate = (D) ? ON : OFF;
		default: nextstate = OFF;
	endcase
end

//Output logic
assign F = (D && state == ON) ? 1 : 0;

endmodule
