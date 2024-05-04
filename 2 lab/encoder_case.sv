module encoder_case(S, D);
input logic [7:0] S;
output logic [3:0] D;

always_comb begin

case (S)
 8'b1xxxxxxx : D = 4'b1000;
 8'b01xxxxxx : D = 4'b0111;
 8'b001xxxxx : D = 4'b0110;
 8'b0001xxxx : D = 4'b0101;
 8'b00001xxx : D = 4'b0100;
 8'b000001xx : D = 4'b0011;
 8'b0000001x : D = 4'b0010;
 8'b00000001 : D = 4'b0001;
 8'b00000000 : D = 4'b0000;
 default 	 : D = 4'b0000;
endcase

end

endmodule