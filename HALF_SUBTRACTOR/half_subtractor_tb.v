module half_subtractor_tb;
    reg A,B;
    wire diff, borrow;
    half_subtractor HS(A,B,diff,borrow);
    initial
        begin
        $dumpfile("half_subtractor.vcd");
        $dumpvars(0, half_subtractor_tb);
        $monitor("time=%0t, A=%b, B=%b, diff=%b, borrow=%b", $time, A, B, diff, borrow);
        A= 1'b0; B= 1'b0;
        #1 A= 1'b0; B= 1'b1;
        #1 A= 1'b1; B= 1'b0;
        #1 A= 1'b1; B= 1'b1;
        #1 $finish;
        end
endmodule