module JK_FF_tb;
    reg J,K,clk;
    wire Q_next;
    JK_FF DUT(J,K,clk,Q_next);
    always #2 clk=~clk;
    initial
        begin
            $dumpfile("JK_FF.vcd");
            $dumpvars(0,JK_FF_tb);
            $monitor("time=%0t, J=%b, K=%b, clk=%b, Q_next=%b", $time,J,K,clk,Q_next);
            J=1'b0; K=1'b0; clk=1'b0;
            #4 J=1'b0; K=1'b1; 
            #4 J=1'b1; K=1'b0;
            #4 J=1'b1; K=1'b1;
            #4 $finish;
        end
endmodule