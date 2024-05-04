`timescale 1ns/1ns

module tb9;

logic left, right, first_pos, SET1, SET2, SET3, SET4;

regist regist(.left(left), .right(right), .first_pos(first_pos), .SET1(SET1), .SET2(SET2), .SET3(SET3), .SET4(SET4));

initial begin
left = 0;
right = 0;
first_pos = 0;
#1 right = 1;
#1 right = 0;
#1 right = 1;
#1 right = 0;
#1 right = 1;
#1 right = 0;
#1 right = 1;
#1 right = 0;
#1 first_pos = 1;
#1 first_pos = 0;
#1 right = 1;
#1 right = 0;
#1 right = 1;
#1 right = 0;
#1 right = 1;
#1 right = 0;
#1 right = 1;
#1 right = 0;
#1 left = 1;
#1 left = 0;
#1 left = 1;
#1 left = 0;
#1 left = 1;
#1 left = 0;
#1 left = 1;
#1 left = 0;
#1 left = 1;
#1 left = 0;
end

//always #1 gen_in = !gen_in;

initial #30 $stop;


endmodule