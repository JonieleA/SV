module encoder_tern(S, D);
input logic [7:0] S;
output logic [3:0] D;

assign D = (S > 8'd127) ? (4'b1000) : (S > 8'd63) ? (4'b0111) : (S > 8'd31) ? (4'b0110) : (S > 8'd15) ? (4'b0101) : (S > 8'd7) ? (4'b0100) : (S > 8'd3) ? (4'b0011) : (S > 8'd1) ? (4'b0010) : (S > 8'd0) ? (4'b0001) : (4'b0000);

endmodule