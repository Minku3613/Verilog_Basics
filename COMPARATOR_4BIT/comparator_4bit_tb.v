module comparator_4bit_tb;
    reg [3:0]A,B;
    wire gt,lt,et;
    comparator_4bit DUT(A,B,gt,lt,et);
    initial
        begin
            $dumpfile("comparator.vcd");
            $dumpvars(0,comparator_4bit_tb);
            $monitor("time=%0t, A=%b, B=%b, gt=%b, lt=%b, et=%b", $time, A, B, gt, lt, et);
            A=4'b0000; B=4'b0000;
            #1 A=4'b0001; B=4'b1000;
            #1 A= 4'b0101; B=4'b0011;
            #1 A= 4'b0010; B=4'b1001;
            #2 $finish;
        end
endmodule