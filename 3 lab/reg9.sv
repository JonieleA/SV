module reg9 (btn1, btn2, _rst, Q, clk);

input logic btn1, btn2, _rst, clk;
output logic [8:0] Q = 9'b100000000;
logic xori;

always_ff @(posedge xori, negedge _rst) begin
	if (!_rst) Q <= 9'b100000000; 
	else if (btn1 == 0 && btn2 == 0) Q <= Q;
	else if (btn1 == 0 && btn2 == 1) Q <= {Q[0], Q[8:1]};
	else if (btn1 == 1 && btn2 == 0) Q <= {Q[7:0], Q[8]};
	else Q <= Q;
end

xor(xori, btn1, btn2);

endmodule

