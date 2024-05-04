module debouncer #(parameter DELAY = 1000000)
						(clk, res_n, in, out);

input logic clk, res_n, in;
output logic 			  out;

logic 		 				en;
logic 			    [2:0] w;
logic 				  Q0, Q1;

shift_reg_right U1(.clk( clk ), .D( in ), .F( w[0] ));

clk_divider #(.DIVISOR(DELAY))
U2(.clk_in( clk ), .res_n( res_n ), .clk_out( en ));

my_DFF U3(.clk( clk ), .en( en ), .res_n( res_n ), .D( w[0] ), .Q( w[1] ));
my_DFF U5(.clk( clk ), .en( en ), .res_n( res_n ), .D( w[1] ), .Q( w[2] ));

my_DFF U6(.clk( clk ), .en( en ), .res_n( res_n ), .D( w[2] ), .Q( Q0 ));
my_DFF U7(.clk( clk ), .en( en ), .res_n( res_n ), .D( Q0 ), .Q( Q1 ));

assign out = Q0 & ~Q1;

endmodule