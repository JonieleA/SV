`timescale 1ns / 1ps

module tb_reg;

logic 	 clk, res_n;
logic [2:0]		  Set;
logic [15:0] 	 D, Q;
logic 				 F;

universal_shift_reg DUT (.clk( clk ), .res_n( res_n ), .Set( Set ),
								 .D( D ), .F( F ), .Q( Q ));

logic [1023:0] state = DUT.textstate;							 
								 
initial begin
	clk = 0;
	res_n = 0;
	D = 0;
	Set = 3'b000;
end

always
	#10 clk = !clk;

initial
	repeat(3) #20 res_n = !res_n;

initial begin
	#100  D = 16'h0000;
		   Set = 3'b001;
	#60   D = 16'h7F4A;
		   Set = 3'b000;
	#100  D = 16'h0000;
		   Set = 3'b001;
	#100  Set = 3'b010;
	#80   Set = 3'b001;
	#60   Set = 3'b011;
	#60   Set = 3'b001;
	#60   Set = 3'b100;
	#60   Set = 3'b001;
	#100  Set = 3'b101;
	#180  Set = 3'b001;
	#60   Set = 3'b110;
	#200  Set = 3'b001;
end

initial
	#2000 $stop;
      
endmodule
