module T_FF_tb;
    reg T, clk;
    wire Q;
    T_FF DUT(T,clk,Q);
    always #2 clk = ~clk;
    initial
    begin
        $dumpfile("T_FF.vcd");
        $dumpvars(0,T_FF_tb);
        $monitor("time=%0t, T=%b, clk=%b, Q=%b",$time,T,clk,Q);
        T=1'b0; clk=1'b0;
        #4 T=1'b1;
        #10 $finish;
    end
endmodule