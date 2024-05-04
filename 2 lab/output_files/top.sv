module top (S, D_if, D_tern, D_case);

input logic [7:0] S;
output logic [3:0] D_if, D_tern, D_case;

encoder_if 	 U1(.S(S), .D(D_if));
encoder_tern U2(.S(S), .D(D_tern));
encoder_case U3(.S(S), .D(D_case));

endmodule