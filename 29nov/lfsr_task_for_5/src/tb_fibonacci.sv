`timescale 1ns / 1ps

module tb_fibonacci;

logic clkTB, nresTB, MUX_out;
int fd;

top_lfsr_5 DUT_top_lfsr_5 (.clkTop(clkTB), .nrstTop(nresTB), .MUX_out(MUX_out_TB));

initial begin
	clkTB = 0;
	nresTB = 1;
end

always
	#5 clkTB = !clkTB;
 
initial begin
	fd = $fopen("SequenceMUX.txt", "a");
end

always @(posedge clkTB)
	$fwrite(fd, "%b",outgalTB);

initial begin
	#15 nresTB = 0;
	#30 nresTB = 1;
	#100000 $fclose(fd); $stop;
	$display("start");
	$monitor($time, " clk = %b nresTB = %b outfibTB = %b outgalTB = %b", clkTB, nresTB, outfibTB, outgalTB);
end



endmodule
