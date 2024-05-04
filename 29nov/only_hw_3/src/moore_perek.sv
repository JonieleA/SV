module moore_perek (clk, nres, INP, OUTP);

input logic clk, nres;
input logic INP;
output logic OUTP;

typedef enum logic [2:0] {START = 3'b000, DIG1, DIG2, DIG3, DIG4, EN} state_t;

state_t state, nextstate;

always_ff @(posedge clk or negedge nres) begin
	if (!nres)
		state <= START;
	else
		state <= nextstate;
end

always_comb begin
	case( state )
		START : nextstate = (!INP) ? DIG1 : START;
		DIG1 : nextstate = (!INP) ? DIG2 : START;
		DIG2 : nextstate = (!INP) ? DIG3 : START;
		DIG3 : nextstate = (INP) ? DIG4 : START;
		DIG4 : nextstate = (!INP) ? EN : START;
		EN   : nextstate = (!INP) ? DIG2 : START;
		default : nextstate = START;
	endcase
end

assign OUTP = (state == EN) ? DIG1 : START;


endmodule
