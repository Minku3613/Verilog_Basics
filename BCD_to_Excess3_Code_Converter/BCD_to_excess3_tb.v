module BCD_to_excess3_tb;
    reg [3:0]B;
    wire [3:0] X;
    BCD_to_excess3 DUT(B,X);
    initial 
    begin
        $dumpfile("BCD_to_excess3.vcd");
        $dumpvars(0,BCD_to_excess3_tb);
        $monitor("time=%0t, B=%b, X=%b",$time,B,X);
        B=4'b0000; 
        #1 B=4'b0001;
        #1 B=4'b0111;
        #1 B=4'b1000;
        #1 B=4'b1001;
        #1 $finish;
    end
endmodule