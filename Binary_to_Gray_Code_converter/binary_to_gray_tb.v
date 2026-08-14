module binary_to_gray_tb;
    reg [3:0]B;
    wire[3:0]G;
    binary_to_gray DUT(B,G);
    initial
        begin
            $dumpfile("binary_to_gray.vcd");
            $dumpvars(0,binary_to_gray_tb);
            $monitor("time=%0t, B=%b, G=%b", $time,B,G);
            B=4'b0000;
            #2 B=4'b0001;
            #2 B=4'b0010;
            #2 B=4'b0011;
            #2 B=4'b0100;
            #2 B=4'b1111;
            #2 B= 4'b1010;
            #2 B=4'b1101;
            #2 $finish;
        end
endmodule
