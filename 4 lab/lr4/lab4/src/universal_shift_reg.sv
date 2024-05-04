module universal_shift_reg (clk, res_n, Set, D, F, Q);

input logic 		 clk, res_n;
input logic [2:0] 		  Set;
input logic [15:0] 			 D;
output logic [15:0] 			 Q;
output logic 					 F;

typedef enum logic [2:0] {LOAD = 3'b000, PARAL_OUT, SERIAL_OUT, LOG_SHIFT_LEFT,
								  LOG_SHIFT_RIGHT, RING_SHIFT_LEFT, RING_SHIFT_RIGHT} state_t;

state_t 		state, nextstate;

logic [15:0] 				 DATA;

task changeState (input logic [2:0] Set, input state_t state,
					  output state_t nextstate);
   case(Set)
   		LOAD             : nextstate = LOAD;
   		PARAL_OUT        : nextstate = PARAL_OUT;
   		SERIAL_OUT       : nextstate = SERIAL_OUT;
   		LOG_SHIFT_LEFT   : nextstate = LOG_SHIFT_LEFT;
   		LOG_SHIFT_RIGHT  : nextstate = LOG_SHIFT_RIGHT;
   		RING_SHIFT_LEFT  : nextstate = RING_SHIFT_LEFT;
   		RING_SHIFT_RIGHT : nextstate = RING_SHIFT_RIGHT;
			default          : nextstate = state;
	endcase
endtask

always_ff @(posedge clk or negedge res_n) begin
	if (!res_n)
		state <= LOAD;
	else
		state <= nextstate;
end


always_comb begin
  case (state)
    LOAD       		: changeState (Set, state, nextstate);
    PARAL_OUT 			: changeState (Set, state, nextstate);
    SERIAL_OUT 		: changeState (Set, state, nextstate);
    LOG_SHIFT_LEFT 	: changeState (Set, state, nextstate);
    LOG_SHIFT_RIGHT  : changeState (Set, state, nextstate);
    RING_SHIFT_LEFT  : changeState (Set, state, nextstate);
    RING_SHIFT_RIGHT : changeState (Set, state, nextstate);
    default 			: nextstate = PARAL_OUT;
  endcase
end

always_ff @(posedge clk or negedge res_n) begin
	if (!res_n)
		DATA <= 0;
	else begin
		if (state == LOAD && Set == LOAD)
			DATA <= D;
		else if (state == LOG_SHIFT_LEFT || state == SERIAL_OUT)
			DATA <= DATA << 1;
		else if (state == LOG_SHIFT_RIGHT)
			DATA <= DATA >> 1;
		else if (state == RING_SHIFT_LEFT)
			DATA <= {DATA[14:0], DATA[15]};
		else if (state == RING_SHIFT_RIGHT)
			DATA <= {DATA[0], DATA[15:1]};
		else
			DATA <= DATA;
	end
end

assign Q = (state == PARAL_OUT) ? DATA : 16'b0;
assign F = (state == SERIAL_OUT) ? DATA[15] : 1'b0;

//Debug
logic [1023:0] textstate;
always_comb
	case ( state )
		LOAD 				  : textstate = "LOAD";
		PARAL_OUT 		  : textstate = "PARAL_OUT";
		SERIAL_OUT 		  : textstate = "SERIAL_OUT";
		LOG_SHIFT_LEFT   : textstate = "LOG_SHIFT_LEFT";
		LOG_SHIFT_RIGHT  : textstate = "LOG_SHIFT_RIGHT";
		RING_SHIFT_LEFT  : textstate = "RING_SHIFT_LEFT";
		RING_SHIFT_RIGHT : textstate = "RING_SHIFT_RIGHT";
		default 			  : textstate = "PARAL_OUT";
endcase

endmodule
