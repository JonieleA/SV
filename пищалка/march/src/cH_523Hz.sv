module cH_523Hz(clk_50MHz, out);
// 50MHz / 47801 / 2 = 523.0016Hz
input logic clk_50MHz;
output logic out;
logic r_523Hz;
logic [16:0] r_counter = 0;
    
always_ff @(posedge clk_50MHz)
	if(r_counter == 17'd47801) 
		begin
			r_counter <= 0;
			r_523Hz <= ~r_523Hz;
		end
   else
		r_counter <= r_counter + 1;

   assign out = r_523Hz;
    
endmodule