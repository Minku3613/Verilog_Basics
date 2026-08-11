module comparator_1bit_tb;
    reg A,B;
    wire gt, lt, et;
    comparator_1bit DUT(A,B,gt,lt,et);
    initial
    begin
        $dumpfile("comparator.vcd");
        $dumpvars(0,comparator_1bit_tb);
        $monitor("time=%0t, A=%b, B=%b, gt=%b, lt=%b, et=%b", $time, A,B,gt,lt,et);
        A=1'b0; B=1'b0;
        #1 A=1'b0; B=1'b1;
        #1 A=1'b1; B=1'b0;
        #1 A=1'b1; B=1'b1;
        #1 $finish;
    end
endmodule