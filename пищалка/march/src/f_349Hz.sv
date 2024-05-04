module f_349Hz(clk_50MHz, out);
// 50MHz / 69638 / 2 = 349.0012Hz
input logic clk_50MHz;
output logic out;
logic r_349Hz;
logic [17:0] r_counter = 0;
    
always_ff @(posedge clk_50MHz)
	if(r_counter == 18'd69638) 
		begin
			r_counter <= 0;
			r_349Hz <= ~r_349Hz;
      end
   else
		r_counter <= r_counter + 1;

    assign out = r_349Hz;
    
endmodule