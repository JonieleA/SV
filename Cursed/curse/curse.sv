module curse(inp, priem, clk, disp1, disp2, disp3, disp4);

input logic [7:0] inp;
input logic priem, clk;
output logic disp1, disp2, disp3, disp4;

enum logic [3:0] {ESC=4'b0000, CSI, left_cursor, right_cursor, Delete1, Delete2, Space, BackSpace, Enter, Disp, start} state, nextstate;
logic [3:0] cursor = 4'b0001;

// Сдвиговый регистр курсора

always_ff @(posedge rst, posedge clk)
	if (rst | ) cursor <= 4'b0001;
	else if (clk & () )
	else if (clk & ())
	else cursor <= cursor;
	
	
// сдвиговый регистр clk


	


// Регистр состояний

always_ff @(posedge rst, posedge clk)
	if (rst) state <= start
	else state <= nextstate;


// Смена состояний
always_comb
case (state)



default : nextstate = () ? :
endcase

endmodule
