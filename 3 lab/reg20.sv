module reg20 (btn1, btn2, _rst, Q);

input logic btn1, btn2, _rst;
output logic [19:0] Q = 20'd1;
logic xori;

always_ff @(posedge xori, negedge _rst) begin
	if (!_rst) Q <= 20'd1; 
	else if (btn1 == 0 && btn2 == 0) Q <= Q;
	else if (btn1 == 0 && btn2 == 1) Q <= {Q[0], Q[19:1]};
	else if (btn1 == 1 && btn2 == 0) Q <= {Q[18:0], Q[19]};
	else Q <= Q;
end

xor(xori, btn1, btn2);

endmodule
