`timescale 1ns/1ns

module tb12;

logic [7:0] inp;
logic [3:0] Disp1, Disp2, Disp3, Disp4;
logic Reset_1, Reset_2, Reset_3, Reset_4, gen_in, priem_in, clear_disp;


main  main(inp, Reset_1, Reset_2, Reset_3, Reset_4, gen_in, priem_in, clear_disp, Disp1, Disp2, Disp3, Disp4);

initial begin
inp = 0;
Reset_1 = 0;
Reset_2 = 0;
Reset_3 = 0;
Reset_4 = 0;
gen_in = 0;
priem_in = 0;
clear_disp = 0;
#10 priem_in = 1;
#20 priem_in = 0;
#10 inp = 8'b00110011;
priem_in = 1;
#20 priem_in = 0;
#10 inp = 8'b00011011;
priem_in = 1;
#20 priem_in = 0;
#10 inp = 8'b01011011;
priem_in = 1;
#20 priem_in = 0;
#10 inp = 8'b01000001;
priem_in = 1;
#20 priem_in = 0;
#10 inp = 8'b00100000;
priem_in = 1;
#20 priem_in = 0;
#10 inp = 8'b00110111;
priem_in = 1;
#20 priem_in = 0;

end

always #1 gen_in = !gen_in;

initial #1000 $stop;


endmodule