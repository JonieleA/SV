module LFSR_GAL(clk, _rst, lfsr_out, D);
 
input logic clk;
input logic _rst;
output logic lfsr_out;
input logic [15:0] 	D;

logic [15:0] reg_gal;
 
assign lfsr_out = reg_gal[0];
 
always_ff @(posedge clk, negedge _rst) begin
	if (!_rst)
		reg_gal <= D;
	else
	reg_gal <= {reg_gal[0],reg_gal[15:9] ,reg_gal[8] ^ reg_gal[0], reg_gal[6], reg_gal[6] ^ reg_gal[0], reg_gal[5] ^ reg_gal[0], reg_gal[4] ^ reg_gal[0], reg_gal[3:1]};
end
 
endmodule