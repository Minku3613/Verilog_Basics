module BCD_to_7segment_tb;
    reg [3:0]B;
    wire[6:0]S;
    BCD_to_7segment DUT(.B(B), .S(S));
    initial
        begin
            $dumpfile("BCD_to_7segment.vcd");
            $dumpvars(0,BCD_to_7segment_tb);
            $monitor("time=%0t, B=%b, S=%b", $time,B,S);
            B=4'b0000;
            #2 B=4'b0010;
            #2 B=4'b1000;
            #2 B=4'b1001;
            #2 B=4'b1010;
            #1 $finish;
        end
endmodule