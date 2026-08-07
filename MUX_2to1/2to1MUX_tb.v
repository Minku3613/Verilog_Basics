module MUX2to1_tb;
    reg [1:0]A;
    reg S;
    wire Y;
    MUX2to1 M(.in(A), .sel(S), .out(Y));
    initial
        begin
        $dumpfile("MUX2to1.vcd");
        $dumpvars(0,MUX2to1_tb);
        $monitor("time=%0t, A=%b, S=%b, Y=%b", $time, A, S, Y);
        #2 A= 2'b00 ; S= 1'b0;
        #2 S= 1'b1;
        #2 A= 2'b01 ; S= 1'b0;
        #2 S= 1'b1;
        #2 A= 2'b10 ; S= 1'b0;
        #2 S= 1'b1;
        #2 A= 2'b11 ; S= 1'b0;
        #2 S= 1'b1;
        #1 $finish;
        end
endmodule