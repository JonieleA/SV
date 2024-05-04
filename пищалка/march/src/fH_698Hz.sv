module fH_698Hz(clk_50MHz, out);
// 50MHz / 35817 / 2 = 698.0023Hz
input logic clk_50MHz;
output logic out;
logic r_698Hz;
logic [16:0] r_counter = 0;

always_ff @(posedge clk_50MHz)
	if(r_counter == 17'd35817) 
		begin
			r_counter <= 0;
			r_698Hz <= ~r_698Hz;
		end
   else
      r_counter <= r_counter + 1;

    assign out = r_698Hz;
    
endmodule