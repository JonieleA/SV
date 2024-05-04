module ascii_to_bcd (ASCII, BCD);

input logic [7:0] ASCII;
output logic [3:0] BCD;

assign BCD = (ASCII[7:4] == 4'b0011) ? ASCII[3:0] : 4'b1111;

endmodule
