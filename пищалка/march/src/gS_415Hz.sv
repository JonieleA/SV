module gS_415Hz(clk_50MHz, out);    
// 50MHz / 60241 / 2 = 415.0032Hz
input logic clk_50MHz;
output logic out;
logic r_415Hz;
logic [17:0] r_counter = 0;
    
always_ff @(posedge clk_50MHz)
	if(r_counter == 18'd60241) 
		begin
			r_counter <= 0;
         r_415Hz <= ~r_415Hz;
      end
   else
		r_counter <= r_counter + 1;

    assign out = r_415Hz;
    
endmodule