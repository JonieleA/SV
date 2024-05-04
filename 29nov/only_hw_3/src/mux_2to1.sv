module mux_2to1 (D0, D1, S, Y);

input logic D0, D1, S;
output logic Y;

  always_comb begin
    if (S == 1'b0)
      Y = D0;
    else
      Y = D1;
  end
  
endmodule
