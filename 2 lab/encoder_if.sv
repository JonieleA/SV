module encoder_if(S, D);
input logic [7:0] S;
output logic [3:0] D;

always_comb begin

if (S > 8'd127) 		D = 4'b1000;
else if (S > 8'd63)	D = 4'b0111;
else if (S > 8'd31)	D = 4'b0110;
else if (S > 8'd15)	D = 4'b0101;
else if (S > 8'd7)	D = 4'b0100;
else if (S > 8'd3)	D = 4'b0011;
else if (S > 8'd1)	D = 4'b0010;
else if (S > 8'd0)	D = 4'b0001;
else 						D = 4'b0000;

end

endmodule