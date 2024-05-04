module div #(parameter C = 25_000_000)( clk, rb, out);

input logic clk, rb;
output logic out;
logic [32:0] ctr;

//Частота итоговая = 2С (по умолчанию 1Гц)
always_ff @(posedge clk, negedge rb)
 if (!rb)
	ctr <= 0;
 else 
	if (ctr < {2{C}})
		ctr <= ctr + 1'd1;
	else
		ctr <= 0;
always_comb
	if (ctr < C)
		out <= 0;
	else 
		out <= 1;		
		
endmodule 	