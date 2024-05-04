module selector_8(S, F, D);

input logic [7:0] S;
output logic [31:0] F;
input logic [255:0] D;

assign F = (S > 8'd127) ? (D[255:224]) : (S > 8'd63) ? (D[223:192]) : (S > 8'd31) ? (D[191:160]) : (S > 8'd15) ? (D[159:128]) : (S > 8'd7) ? (D[127:96]) : (S > 8'd3) ? (D[95:64]) : (S > 8'd1) ? (D[63:32]) : (S > 8'd0) ? (D[31:0]) : (32'd0);


endmodule