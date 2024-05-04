module tb_gen_overlapped;

logic 		 clk, res_n;
logic [15:0] D1, D2, D3;
logic				  F0, F1;

top_gen_overlapped DUT (clk, res_n, D1, D2, D3, F0, F1);

logic DATA = DUT.UUT.DATA_in;

int A = 0;
int B = 0;

always
	#5 clk = ~clk;

initial begin
	clk = 1;
	res_n = 1;
	D1 = 16'hA2C1;
	D2 = 16'hF047;
	D3 = 16'h3BE0;
end

initial
	#20 repeat(2) #5 res_n = ~res_n;

always @(posedge F0)
		A++;

always @(posedge F1)
		B++;

initial begin
  repeat(10002) @(posedge clk);
  $display("Results of finite state machine");
  $display("Moore: %d", A);
  $display("Mealy: %d", B);
  $stop;
end

endmodule
