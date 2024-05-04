include <top>;
`timescale 1ns/1ns

module tb_lab2(S, D_if, D_tern, D_case);

input logic [7:0] S;
output logic [3:0] D_if, D_tern, D_case;

top DUT (.S(S), .D_if(D_if), .D_tern(D_tern), .D_case(D_case));

initial begin
S = 8'b00000000;
#10 S = 8'd1;
end

initial
#10 $stop;

initial begin
$display("Start");
$monitor($time, "S = %b and D_if = %b, D_tern = %b, D_case = %b", S, D_if, D_tern, D_case);
end

endmodule