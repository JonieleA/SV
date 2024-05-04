module register2 (enable, Q, D, clk, rst);

input logic enable, clk, rst;
input logic [7:0] D;
output logic [7:0] Q;

logic go;

always_ff @(posedge rst, posedge go)
	if (rst) Q <= 0;
	else if (go) Q <= D;
	else Q <= Q;
	
assign go = (clk & enable) ? 1 : 0;	
	
endmodule
