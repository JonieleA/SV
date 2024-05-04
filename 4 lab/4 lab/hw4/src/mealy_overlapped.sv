module mealy_overlapped (clk, res_n, DATA_in, DATA_out);

input logic   clk, res_n;
input logic 	  DATA_in;
output logic 	 DATA_out;

typedef enum logic [2:0] {OFF = 3'b000, READY_1, READY_2,
								  READY_3, READY_4} state_t;

state_t state, nextstate;
logic 				  sync;

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
		READY_2 : nextstate = ( DATA_in  ) ? READY_3 : OFF;
		READY_3 : nextstate = ( DATA_in  ) ? READY_4 : OFF;
		READY_4 : nextstate = ( DATA_in  ) ? READY_1 : OFF;
		default : nextstate = OFF;
	endcase
end

always_ff @(posedge clk or negedge res_n) begin
	if (!res_n)
		DATA_out <= 1'b0;
	else
		DATA_out <= sync;
end

assign sync = (DATA_in && state == READY_4) ? 1'b1 : 1'b0;

endmodule