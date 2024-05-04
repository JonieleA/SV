module num1 (clk, rb, bt1, bt2, out);

input logic clk, rb, bt1, bt2;
output logic out;
logic [5:0] ctr;
logic [19:0] w;
//Подключим делители
div #(.C(25_000)) DUT1(.clk(clk), .rb(rb), .out(w[0]));//1кГц
div #(.C(12_500)) DUT2(.clk(clk), .rb(rb), .out(w[1]));//2кГц
div #(.C(8_333)) DUT3(.clk(clk), .rb(rb), .out(w[2]));//3кГц
div #(.C(6_250)) DUT4(.clk(clk), .rb(rb), .out(w[3]));//4кГц
div #(.C(5_000)) DUT5(.clk(clk), .rb(rb), .out(w[4]));//5кГц
div #(.C(4_166)) DUT6(.clk(clk), .rb(rb), .out(w[5]));//6кГц
div #(.C(3_571)) DUT7(.clk(clk), .rb(rb), .out(w[6]));//7кГц
div #(.C(3_125)) DUT8(.clk(clk), .rb(rb), .out(w[7]));//8кГЦ
div #(.C(2_777)) DUT9(.clk(clk), .rb(rb), .out(w[8]));//9кГЦ
div #(.C(2_500)) DUT10(.clk(clk), .rb(rb), .out(w[9]));//10кГц
div #(.C(2_272)) DUT11(.clk(clk), .rb(rb), .out(w[10]));//11кГц
div #(.C(2_083)) DUT12(.clk(clk), .rb(rb), .out(w[11]));//12кГц
div #(.C(1_923)) DUT13(.clk(clk), .rb(rb), .out(w[12]));//13кГц
div #(.C(1_785)) DUT14(.clk(clk), .rb(rb), .out(w[13]));//14кГц
div #(.C(1_666)) DUT15(.clk(clk), .rb(rb), .out(w[14]));//15кГц
div #(.C(1_562)) DUT16(.clk(clk), .rb(rb), .out(w[15]));//16кГц
div #(.C(1_470)) DUT17(.clk(clk), .rb(rb), .out(w[16]));//17кГЦ
div #(.C(1_388)) DUT18(.clk(clk), .rb(rb), .out(w[17]));//18кГЦ
div #(.C(1_315)) DUT19(.clk(clk), .rb(rb), .out(w[18]));//19кГЦ
div #(.C(1_250)) DUT20(.clk(clk), .rb(rb), .out(w[19]));//20кГц
//Счётчик переключается вверх при одной нажатой клавише и вниз при другой
always_ff @(posedge clk, negedge rb)
 if (!rb)
	ctr <= 5'bZZZZZ;
 else 
	if ((ctr < 5'd20) && (bt1 == 1'b1))
		ctr <= ctr + 1'd1;
	else
	   if ((ctr == 5'd20) && (bt1 == 1'b1))
		ctr <= 0;
		else if ((ctr > 5'd0) && (bt2 == 1'b1))
			ctr <= ctr - 1'd1;
			else if ((ctr == 5'd0) && (bt2 == 1'b1))
				ctr <= 5'd20;
				else 
					ctr <= ctr;
//От состояния счётчика на выход передаётся сигнал соответствующего делителя				
always_comb begin
	case(ctr)
	5'd0 : out <= w[0] ;
	5'd1 : out <= w[1] ;
	5'd2 : out <= w[2] ;
	5'd3 : out <= w[3] ;
	5'd4 : out <= w[4] ;
	5'd5 : out <= w[5] ;
	5'd6 : out <= w[6] ;
	5'd7 : out <= w[7] ;
	5'd8 : out <= w[8] ;
	5'd9 : out <= w[9] ;
	5'd10 : out <= w[10] ;
	5'd11 : out <= w[11] ;
	5'd12 : out <= w[12] ;
   5'd13 : out <= w[13] ;
	5'd14 : out <= w[14] ;
	5'd15 : out <= w[15] ;
	5'd16 : out <= w[16] ;
	5'd17 : out <= w[17] ;
	5'd18 : out <= w[18] ;
	5'd19 : out <= w[19] ;
	default : out <= 1'bZ;
	endcase
	end
	
endmodule	