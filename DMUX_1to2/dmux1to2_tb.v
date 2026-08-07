module dmux1to2_tb;
    reg A, S;
    wire [1:0] Y;
    dmux1to2 D(.in(A), .sel(S), .out(Y));
    initial
        begin
        $dumpfile("dmux1to2.vcd");
        $dumpvars(0, dmux1to2_tb);
        $monitor("time =%0t, A=%b, S=%b, Y=%b", $time, A, S, Y);
        #1 A=0; S=0;
        #1 S=1;
        #1 A=1; S=0;
        #1 S=1;
        #1 $finish;
        end
endmodule