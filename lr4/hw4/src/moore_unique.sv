module moore_unique (clk, res_n, DATA_in, DATA_out);

input logic   clk, res_n;
input logic 	  DATA_in;
output logic 	 DATA_out;

typedef enum logic [2:0] {OFF = 3'b000, READY_1, READY_2,
								  READY_3, READY_4, ON} state_t;

state_t state, nextstate;

always_ff @(posedge clk or negedge res_n) begin
	if (!res_n)
		state <= OFF;
	else
		state <= nextstate;
end

always_comb begin
	case( state )
		OFF 	  : nextstate = ( DATA_in  ) ? READY_1 : OFF;
		READY_1 : nextstate = ( !DATA_in ) ? READY_2 : OFF;
		READY_2 : nextstate = ( !DATA_in  ) ? READY_3 : OFF;
		READY_3 : nextstate = ( !DATA_in  ) ? READY_4 : OFF;
		READY_4 : nextstate = ( !DATA_in  ) ? ON : OFF;
		ON 	  : nextstate = ( DATA_in  ) ? READY_1 : OFF;
		default : nextstate = OFF;
	endcase
end

assign DATA_out = (state == ON) ? READY_1 : OFF;

endmodule
