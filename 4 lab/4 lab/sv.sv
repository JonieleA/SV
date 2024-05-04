module sv(clk, _rst, green, yellow, red);

output logic green, yellow, red;
input logic clk, _rst;
logic [25:0]Q;
logic n_clk, rst,schet;
logic [5:0] Qu;

enum logic [1:0] {g = 2'b00, y, r} state, nextstate = r;

//регистр состояний
always_ff @(posedge clk, negedge _rst)
if ( !_rst )
state <= r;
else
state <= nextstate;

//регистр переключений
always_ff @(posedge schet, posedge rst)
	if (rst) Qu <= 0;
	else if (schet) Qu <= Qu + 1;
	else Qu <= Qu;

//комбинационная функция состояний
always begin
	if (state == r) begin
		rst = 0;
		if (Qu==39) begin
		nextstate = g;
		rst = 1;
		end
		else if (n_clk) schet = 1;
		else schet = 0;
	end
	if (state == g) begin
		rst = 0;
		if (Qu==20) begin
		nextstate = y;
		rst = 1;
		end
		else if (n_clk) schet = 1;
		else schet = 0;
	end
	if (state == y) begin
		rst = 0;
		if (Qu==2) begin
		nextstate = r;
		rst = 1;
		end
		else if (n_clk) schet = 1;
		else schet = 0;
	end
end

//выходная комбинационная логика
assign green = (state == g) ? 1'b1 : 1'b0;
assign red = (state == r) ? 1'b1 : 1'b0;
assign yellow = (state == y) ? 1'b1 : 1'b0;

//делитель частоты
always_ff @(posedge clk, negedge _rst) 
	if (!_rst ) Q <= 0;
	else if (Q != 26'd49999999) Q <= Q + 1;
	else Q <= Q;

assign n_clk = (Q == 26'd49999999) ? 1'b1 : 1'b0;

endmodule 