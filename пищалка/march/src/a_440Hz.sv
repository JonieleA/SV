module a_440Hz(clk_50MHz, out);
// 50MHz / 56818 / 2 = 440.0014Hz
input logic clk_50MHz;
output logic out;
logic r_440Hz;
logic [16:0] r_counter = 0;
    
always_ff @(posedge clk_50MHz)
    if(r_counter == 17'd56818) 
		begin
			r_counter <= 0;
			r_440Hz <= ~r_440Hz;
		end
    else
			r_counter <= r_counter + 1;

    assign out = r_440Hz;
    
endmodule