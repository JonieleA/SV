module snail_mealy (clk, res_n, D, F);

input logic clk, res_n, D;
output logic 				F;

typedef enum logic {OFF = 1'b0, READY} state_t;

state_t state, nextstate;
logic 				  sync;

always_ff @(posedge clk or negedge res_n) begin
	if (!res_n)
		state <= OFF;
	else
		state <= nextstate;
end

//Switching state
always_comb begin
	case (state)
		OFF 	  : nextstate = (D) ? READY : OFF;
		READY	  : nextstate = OFF;
		default : nextstate = OFF;
	endcase
end

always_ff @(posedge clk or negedge res_n) begin
	if (!res_n)
		F <= 0;
	else
		F <= sync;
end

//Output logic
assign sync = (D && state == READY) ? 1'b1 : 1'b0;

endmodule

