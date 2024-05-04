module main (inp, Reset_1, Reset_2, Reset_3, Reset_4, gen_in, priem_in, clear_disp, Disp1, Disp2, Disp3, Disp4);

input logic Reset_1, Reset_2, Reset_3, Reset_4, gen_in, priem_in, clear_disp;
input logic [7:0] inp;
output logic [3:0] Disp1, Disp2, Disp3, Disp4;

logic nclk, priem_out, left_cursor, right_cursor, Delete, Enter, first_pos, res1 , res2, res3, res4, SET1, SET2, SET3, SET4;
logic [7:0] res, dis1, dis2, dis3, dis4;

obrabotka obrabotka_1 (.inp(inp), .clk(nclk), .priem(priem_out), .Reset_1(Reset_1), .Reset_2(Reset_2), .Reset_3(Reset_3), .Reset_4(Reset_4), .res(res), .left_cursor(left_cursor), .right_cursor(right_cursor), .Delete(Delete), .Enter(Enter));
generator generator_1 (.gen_in(gen_in), .priem_in(priem_in), .clk(nclk), .priem_out(priem_out));
regist regist_1 (.left(left_cursor), .right(right_cursor), .first_pos(first_pos), .SET1(SET1), .SET2(SET2), .SET3(SET3), .SET4(SET4));
Display Display_1 (.inp(res), .clk(nclk), .priem(priem_out), .SET1(SET1), .SET2(SET2), .SET3(SET3), .SET4(SET4), .Reset_1(res1), .Reset_2(res2), .Reset_3(res3), .Reset_4(res4), .Disp1(dis1), .Disp2(dis2), .Disp3(dis3), .Disp4(dis4));

ascii_to_bcd ascii_to_bcd_1 (.ASCII(dis1), .BCD(Disp1));
ascii_to_bcd ascii_to_bcd_2 (.ASCII(dis2), .BCD(Disp2));
ascii_to_bcd ascii_to_bcd_3 (.ASCII(dis3), .BCD(Disp3));
ascii_to_bcd ascii_to_bcd_4 (.ASCII(dis4), .BCD(Disp4));

assign first_pos = (clear_disp | Enter) ? 1 : 0;

assign res1 = ((Delete & SET1) | (clear_disp | Enter)) ? 1 : 0;
assign res2 = ((Delete & SET2) | (clear_disp | Enter)) ? 1 : 0;
assign res3 = ((Delete & SET3) | (clear_disp | Enter)) ? 1 : 0;
assign res4 = ((Delete & SET4) | (clear_disp | Enter)) ? 1 : 0;

endmodule