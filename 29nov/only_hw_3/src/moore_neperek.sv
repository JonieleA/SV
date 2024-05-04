module moore_neperek (clk, nres, INP, OUTP);

input logic clk, nres;
input logic INP;
output logic 	 OUTP;

typedef enum logic [2:0] {START = 3'b000, DIGIT_1, DIGIT_2, DIGIT_3, DIGIT_4, EN} state_t;

state_t state, nextstate;

always_ff @(posedge clk or negedge nres) begin
	if (!nres)
		state <= START;
	else
		state <= nextstate;
end

always_comb begin
	case( state )
		START   : nextstate = ( !INP )  ? DIGIT_1 : START; //проверка первого разряда
		DIGIT_1 : nextstate = ( !INP )  ? DIGIT_2 : START; //проверка второго разряда
		DIGIT_2 : nextstate = ( !INP )  ? DIGIT_3 : START; //проверка третьего разряда
		DIGIT_3 : nextstate = ( INP  )  ? DIGIT_4 : START; //проверка четвертого разряда
		DIGIT_4 : nextstate = ( !INP  ) ? EN : START;      //проверка пятого разряда
		EN      : nextstate = ( !INP  ) ? DIGIT_1 : START; //проверка первого разряда следующего числа
		default : nextstate = START;
	endcase
end

assign OUTP = (state == EN) ? DIGIT_1 : START;

endmodule
