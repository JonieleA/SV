module mealy_perek (clk, nres, INP, OUTP);

input logic   clk, nres;
input logic 	  INP;
output logic 	 OUTP;

typedef enum logic [2:0] {START = 3'b000, DIG1, DIG2, DIG3, DIG4} state_t;

state_t state, nextstate;
logic 				  checkTask;

always_ff @(posedge clk or negedge nres) begin
	if (!nres)
		state <= START;
	else
		state <= nextstate;
end

always_comb begin
	case( state )
		START : nextstate = ( !INP  ) ? DIG1 : START;
		DIG1 : nextstate = ( !INP ) ? DIG2 : START;
		DIG2 : nextstate = ( !INP  ) ? DIG3 : START;
		DIG3 : nextstate = ( INP  ) ? DIG4 : START;
		DIG4 : nextstate = ( !INP  ) ? DIG1 : START;
		default : nextstate = START;
	endcase
end

always_ff @(posedge clk or negedge nres) begin
	if (!nres)
		OUTP <= 1'b0;
	else
		OUTP <= checkTask;
end

assign checkTask = (!INP && state == DIG4) ? 1'b1 : 1'b0;

endmodule
