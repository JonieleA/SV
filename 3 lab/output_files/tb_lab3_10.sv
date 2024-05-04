module tb_lab3_10;

logic clk, _rst, lfsr_out;

lfsr_gal DUT(.clk(clk), ._rst(_rst), .lfsr_out(outPRS));

//объявить переменную, хранящую дескриптор файла и открыть файл в  режиме записи
int fg;
initial begin
  fg = $fopen("gal.txt", "w");
end

initial begin
clk = 0;
#1 _rst=0;
#1 _rst=1;
end
always #1 clk = !clk;

//каждый фронт тактового синхросигнала записывать в файл  выходной сигнал с именем outPRS в бинарном формате
always @(posedge clk) begin
  $fdisplay(fg, "%b", outPRS);
end

//по достижению 10000 тактов моделирования закрыть файл и остановить моделирование
initial begin
  repeat(10000) @(posedge clk);
  $fclose(fg);
  $stop;
end

endmodule