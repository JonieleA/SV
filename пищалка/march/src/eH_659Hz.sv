module eH_659Hz(clk_50MHz, out);
// 50MHz / 37936 / 2 = 659.0046Hz
input logic clk_50MHz;
output logic out;
logic r_659Hz;
logic [16:0] r_counter = 0;

always_ff @(posedge clk_50MHz)
	if(r_counter == 17'd37936) 
		begin
			r_counter <= 0;
			r_659Hz <= ~r_659Hz;
		end
   else
      r_counter <= r_counter + 1;

    assign out = r_659Hz;
    
endmodule