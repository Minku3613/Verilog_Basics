module SR_flip_flop_tb;
    reg S,R,clk;
    wire Q_next;
    SR_flip_flop DUT(S,R,clk,Q_next);
    always #5 clk=~clk;
    initial
        begin
            $dumpfile("SR_FF.vcd");
            $dumpvars(0,SR_flip_flop_tb);
            $monitor("time=%0t, S=%b, R=%b, clk=%b, Q_next=%b",$time, S,R,clk,Q_next);
            
            S=1'b0; R=1'b0; clk=1'b0;
            #10 S=1'b0; R=1'b1;
            #10 S=1'b1; R=1'b0; 
            #10 S=1'b1; R=1'b1; 
            #10 $finish;
        end
endmodule
