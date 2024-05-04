module mealy_neperek (clk, nres, INP, OUTP);

input logic clk, nres;
input logic INP;
output logic OUTP;

typedef enum logic [2:0] {START = 3'b000, DIG1, DIG2, DIG3, DIG4} state_t;

state_t state, nextstate;
logic checkTask;

always_ff @(posedge clk or negedge nres) begin
	if (!nres)
		state <= START;
	else
		state <= nextstate;
end

always_comb begin
	case( state )
		START: nextstate = (!INP) ? DIG1 : START; //проверка первого разряда
		DIG1 : nextstate = (!INP) ? DIG2 : START;//проверка второго разряда
		DIG2 : nextstate = (!INP) ? DIG3 : START;//проверка третьего разряда
		DIG3 : nextstate = (INP) ? DIG4 : START;//проверка четвертого разряда
		DIG4 : nextstate = START; //"разрашение" на проверку пятого разряда для тернарного оператора
		default : nextstate = START;
	endcase
end

always_ff @(posedge clk or negedge nres) begin
	if (!nres)
		OUTP <= 1'b0;
	else
		OUTP <= checkTask;
end

assign checkTask = (!INP && state == DIG4) ? 1'b1 : 1'b0; //пятый разряд проверяется в том числе и в условиях

endmodule
