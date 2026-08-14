module D_latch_tb;
    reg D,en;
    wire Q;
    D_latch DUT(D,en,Q);
    initial
    begin
        $dumpfile("D_latch.vcd");
        $dumpvars(0,D_latch_tb);
        $monitor("time=%0t, D=%b, en=%b, Q=%b", $time,D,en,Q);
        D=1'b0; en=1'b0;
        #4 D=1'b1; en=1'b0;
        #4 D=1'b0; en=1'b1;
        #4 D=1'b1; en=1'b1;
        #10 $finish;
    end
endmodule
