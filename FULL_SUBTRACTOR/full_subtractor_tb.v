module full_subtractor_tb;
    reg A,B,Bin;
    wire diff, Bout;
    full_subtractor FS(A,B,Bin,diff,Bout);
    initial
        begin
        $dumpfile("full_subtractor.vcd");
        $dumpvars(0, full_subtractor_tb);
        $monitor("time=%0t, A=%b, B=%b, Bin=%b, diff=%b, Bout=%b", $time, A, B, Bin, diff, Bout);
        A= 1'b0; B= 1'b0; Bin= 1'b0;
        #1 A= 1'b0; B=1'b0; Bin= 1'b1;
        #1 A= 1'b0; B=1'b1; Bin= 1'b0;
        #1 A= 1'b0; B=1'b1; Bin= 1'b1;
        #1 A= 1'b1; B=1'b0; Bin= 1'b0;
        #1 A= 1'b1; B=1'b0; Bin= 1'b1;
        #1 A= 1'b1; B=1'b1; Bin= 1'b0;
        #1 A= 1'b1; B=1'b1; Bin= 1'b1;
        #1 $finish;
        end
endmodule