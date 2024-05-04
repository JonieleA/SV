module song_top(clk_50MHz, play, speaker);
    
	input logic clk_50MHz;
	input logic play;
	output logic speaker;
	 
    
    logic x, y, z;
    
    always_ff @(posedge clk_50MHz) begin
        x <= play;
        y <= x;
        z <= y;
    end
    assign w_play = z;
    
    
    logic a, cH, eH, fH, f, gS;
    
    
    a_440Hz   t_a (.clk_50MHz(clk_50MHz), .out(a));
    cH_523Hz  t_cH(.clk_50MHz(clk_50MHz), .out(cH));
    eH_659Hz  t_eH(.clk_50MHz(clk_50MHz), .out(eH));
    fH_698Hz  t_fH(.clk_50MHz(clk_50MHz), .out(fH));
    f_349Hz   t_f (.clk_50MHz(clk_50MHz), .out(f));
    gS_415Hz  t_gS(.clk_50MHz(clk_50MHz), .out(gS));
    
    
    parameter CLK_FREQ = 50_000_000;                   // 50MHz
    parameter integer D_250ms = 0.50000000 * CLK_FREQ;  // 250ms
    parameter integer D_175ms = 0.35000000 * CLK_FREQ;  // 1750ms
    parameter integer D_75ms = 0.15000000 * CLK_FREQ;  // 75ms
    parameter integer D_325ms = 0.65000000 * CLK_FREQ;  // 325ms
    parameter integer D_break = 0.10000000 * CLK_FREQ;  // 100ms
    
    
    logic [25:0] count = 26'b0;
    logic counter_clear = 1'b0;
    logic flag_250ms = 1'b0;
    logic flag_175ms = 1'b0;
    logic flag_75ms = 1'b0;
    logic flag_325ms = 1'b0; 
    logic flag_break = 1'b0;
    
    
    logic [31:0] state = "idle";
    
    always_ff @(posedge clk_50MHz) begin
        
        if(counter_clear) begin
            count <= 26'b0;
            counter_clear <= 1'b0;
            flag_250ms <= 1'b0;
            flag_175ms <= 1'b0;
            flag_75ms <= 1'b0;
            flag_325ms <= 1'b0;
            flag_break <= 1'b0;
        end
        
        
        if(!counter_clear) begin
            count <= count + 1;
            if(count == D_break) begin
                flag_break <= 1'b1;
            end
            if(count == D_75ms) begin
                flag_75ms <= 1'b1;
            end
            if(count == D_175ms) begin
                flag_175ms <= 1'b1;
            end
            if(count == D_250ms) begin
                flag_250ms <= 1'b1;
            end
            if(count == D_325ms) begin
                flag_325ms <= 1'b1;
            end
        end
       
        
        case(state)
            "idle" : begin
                counter_clear <= 1'b1;
                if(w_play) begin
                    state <= "n1";
                end    
            end
            
            "n1" : begin
                if(flag_250ms) begin
                    counter_clear <= 1'b1;
                    state <= "b1";
                end
            end
            
            "b1" : begin
                if(flag_break) begin
                    counter_clear <= 1'b1;
                    state <= "n2";
                end
            end
        
            "n2" : begin
                if(flag_250ms) begin
                    counter_clear <= 1'b1;
                    state <= "b2";
                end
            end
        
            "b2" : begin
                if(flag_break) begin
                    counter_clear <= 1'b1;
                    state <= "n3";
                end
            end
        
            "n3" : begin
                if(flag_250ms) begin
                    counter_clear <= 1'b1;
                    state <= "b3";
                end
            end
        
            "b3" : begin
                if(flag_break) begin
                    counter_clear <= 1'b1;
                    state <= "n4";
                end
            end
        
            "n4" : begin
                if(flag_175ms) begin
                    counter_clear <= 1'b1;
                    state <= "b4";
                end
            end
        
            "b4" : begin
                if(flag_break) begin
                    counter_clear <= 1'b1;
                    state <= "n5";
                end
            end
        
            "n5" : begin
                if(flag_75ms) begin
                    counter_clear <= 1'b1;
                    state <= "b5";
                end
            end
        
            "b5" : begin
                if(flag_break) begin
                    counter_clear <= 1'b1;
                    state <= "n6";
                end
            end
        
            "n6" : begin
                if(flag_250ms) begin
                    counter_clear <= 1'b1;
                    state <= "b6";
                end
            end
            
            "b6" : begin
                if(flag_break) begin
                    counter_clear <= 1'b1;
                    state <= "n7";
                end
            end
            
            "n7" : begin
                if(flag_175ms) begin
                    counter_clear <= 1'b1;
                    state <= "b7";
                end
            end
            
            "b7" : begin
                if(flag_break) begin
                    counter_clear <= 1'b1;
                    state <= "n8";
                end
            end
            
            "n8" : begin
                if(flag_75ms) begin
                    counter_clear <= 1'b1;
                    state <= "b8";
                end
            end
            
            "b8" : begin
                if(flag_break) begin
                    counter_clear <= 1'b1;
                    state <= "n9";
                end
            end
            
            "n9" : begin
                if(flag_325ms) begin
                    counter_clear <= 1'b1;
                    state <= "bm";
                end
            end
        
            "bm" : begin
                if(flag_325ms) begin
                    counter_clear <= 1'b1;
                    state <= "n10";
                end
            end
            
            "n10" : begin
                if(flag_250ms) begin
                    counter_clear <= 1'b1;
                    state <= "b10";
                end
            end
            
            "b10" : begin
                if(flag_break) begin
                    counter_clear <= 1'b1;
                    state <= "n11";
                end
            end
            
            "n11" : begin
                if(flag_250ms) begin
                    counter_clear <= 1'b1;
                    state <= "b11";
                end
            end
            
            "b11" : begin
                if(flag_break) begin
                    counter_clear <= 1'b1;
                    state <= "n12";
                end
            end
            
            "n12" : begin
                if(flag_250ms) begin
                    counter_clear <= 1'b1;
                    state <= "b12";
                end
            end
            
            "b12" : begin
                if(flag_break) begin
                    counter_clear <= 1'b1;
                    state <= "n13";
                end
            end
            
            "n13" : begin
                if(flag_175ms) begin
                    counter_clear <= 1'b1;
                    state <= "b13";
                end
            end
        
            "b13" : begin
                if(flag_break) begin
                    counter_clear <= 1'b1;
                    state <= "n14";
                end
            end
        
            "n14" : begin
                if(flag_75ms) begin
                    counter_clear <= 1'b1;
                    state <= "b14";
                end
            end
            
            "b14" : begin
                if(flag_break) begin
                    counter_clear <= 1'b1;
                    state <= "n15";
                end
            end
            
            "n15" : begin
                if(flag_250ms) begin
                    counter_clear <= 1'b1;
                    state <= "b15";
                end
            end
            
            "b15" : begin
                if(flag_break) begin
                    counter_clear <= 1'b1;
                    state <= "n16";
                end
            end
            
            "n16" : begin
                if(flag_175ms) begin
                    counter_clear <= 1'b1;
                    state <= "b16";
                end
            end
            
            "b16" : begin
                if(flag_break) begin
                    counter_clear <= 1'b1;
                    state <= "n17";
                end
            end
            
            "n17" : begin
                if(flag_75ms) begin
                    counter_clear <= 1'b1;
                    state <= "b17";
                end
            end
            
            "b17" : begin
                if(flag_break) begin
                    counter_clear <= 1'b1;
                    state <= "n18";
                end
            end
            
            "n18" : begin
                if(flag_325ms) begin
                    counter_clear <= 1'b1;
                    state <= "idle";
                end
            end  
        endcase                
    end
    
    
    assign speaker = (state=="n1" || state=="n2" || state=="n3" || state=="n6" || state=="n9" || state=="n18") ? a :    // a
                     (state=="n4" || state=="n7" || state=="n16") ? f :                                                 // f
                     (state=="n5" || state=="n8" || state=="n14" || state=="n17") ? cH :                                // cH
                     (state=="n10" || state=="n11" || state=="n12") ? eH :                                              // eH
                     (state=="n13") ? fH :                                                                              // fH
                     (state=="n15") ? gS : 0;                                                                           // gS
    
    
endmodule
