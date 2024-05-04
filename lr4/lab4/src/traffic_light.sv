module traffic_light (clk, res_n, Q0, Q1, Q2);

input logic  clk, res_n;
output logic Q0, Q1, Q2;

typedef enum logic [1:0] {RED = 2'b00, GREEN, YELLOW} state_t;

state_t state, nextstate;
logic 		 			  w;
logic [5:0] 		 delay;

clk_divider #(.DIVISOR(6))
U1 (.clk_in( clk ), .res_n( res_n ), .clk_out( w ));

always_ff @(posedge clk or negedge res_n) begin
	if (!res_n)
		state <= RED;
	else
		state <= nextstate;
end

always_comb begin
	case(state)
		RED: begin
			if (delay == 40)
				nextstate = GREEN;
			else
				nextstate = RED;
		end
		GREEN: begin
			if (delay == 60)
				nextstate = YELLOW;
			else
				nextstate = GREEN;
		end
		YELLOW: begin
			if (delay == 63)
				nextstate = RED;
			else
				nextstate = YELLOW;
		end
		default: nextstate = RED;
	endcase
end

always_ff @(posedge w or negedge res_n) begin
	if (!res_n)
		delay <= 0;
	else
		delay <= delay + 1'b1;
end

assign Q0 = (state == RED) ? 1 : 0;
assign Q1 = (state == GREEN) ? 1 : 0;
assign Q2 = (state == YELLOW) ? 1 : 0;

endmodule