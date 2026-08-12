module D_FF_tb;
    reg D, clk;
    wire Q;
    D_FF DUT(Q, D, clk);
    always #5 clk = ~clk;

    initial
    begin
        $dumpfile("D_FF.vcd");
        $dumpvars(0, D_FF_tb);

        $monitor("time=%0t, D=%b, clk=%b, Q=%b", $time, D, clk, Q);

        D = 1'b0;
        clk = 1'b0;

        #10 D = 1'b0;
        #10 D = 1'b1;
        #10 D = 1'b0;
        #10 D = 1'b1;

        #10 $finish;
    end
endmodule