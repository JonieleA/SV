module traffic_light_v2 (clk, res_n, button, Q0, Q1, Q2);

input logic  clk, res_n;
input logic 	  button;
output logic Q0, Q1, Q2;

typedef enum logic [1:0] {RED = 2'b00, GREEN, YELLOW} state_t;

state_t state, nextstate;
logic [1:0]		 		  w;
logic [5:0]			 delay;
logic [1:0] delay_yellow;
logic 				 ready;
logic					 pulse;

//Create 1Hz signal
clk_divider #(.DIVISOR(6)) //for testbench DIVISOR = 6
U1 (.clk_in( clk ), .res_n( res_n ), .clk_out( w[0] ));

//Debouncing pushing button
debouncer #(.DELAY(2)) //for testbench DIVISOR = 2
U2(.clk( clk ), .res_n( res_n ), .in( button ), .out( w[1] ));

//Switching state
always_ff @(posedge clk or negedge res_n) begin
	if (!res_n)
		state <= RED;
	else
		state <= nextstate;
end

//Switching logic
always_comb begin
	case(state)
		RED: begin
			if (delay == 40)
				nextstate = YELLOW;
			else if (w[1] && delay < 37)
				nextstate = YELLOW;
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
			if (delay_yellow == 3 && delay == 40)
				nextstate = GREEN;
			else if (delay_yellow == 3)
				nextstate = RED;
			else
				nextstate = YELLOW;
		end
		default: nextstate = RED;
	endcase
end

//Delay
always_ff @(posedge w[0] or negedge res_n) begin
	if (!res_n) begin
		delay <= 0;
		delay_yellow <= 0;
	end
	else begin
		if (state == YELLOW)
			delay_yellow <= delay_yellow + 1'b1;
		else
			delay <= delay + 1'b1;
		if (delay_yellow == 3)
			delay_yellow <= 0;
		if (delay == 60)
			delay <= 0;
		if (ready)
			delay <= 40;
	end
end

//Ready
always_ff @(posedge clk or negedge res_n) begin
	if (!res_n)
		ready <= 0;
	else
		if (w[1] && delay < 37)
			ready <= 1;
		else if (state == GREEN)
			ready <= 0;
		else
			ready <= ready;
end

//Pulse signal for GREEN lamp
always_ff @(posedge w[0] or negedge res_n) begin
	if (!res_n)
		pulse <= 1;
	else begin
		if (delay < 60 && delay > 55)
			pulse <= ~pulse;
		else
			pulse <= 1;
	end
end

assign Q0 = (state == RED) ? 1 : 0;
assign Q1 = pulse && (state == GREEN) ? 1 : 0;
assign Q2 = (state == YELLOW) ? 1 : 0;

endmodule
