module excess3_to_BCD_tb;
    reg[3:0]X;
    wire[3:0]B;
    excess3_to_BCD DUT(X,B);
    initial
    begin
        $dumpfile("excess3_to_BCD.vcd");
        $dumpvars(0,excess3_to_BCD_tb);
        $monitor("time=%0t, X=%b, B=%b",$time, X, B);
        X=4'b0011;
        #1 X= 4'b1010;
        #1 X= 4'b0100;
        #1 X= 4'b0101;
        #1 X= 4'b1100;
        #1 X= 4'b1000;
        #1 $finish;
    end
endmodule
