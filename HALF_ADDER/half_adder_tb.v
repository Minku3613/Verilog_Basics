module half_adder_tb;
    reg A, B;
    wire Sum, Cout;
    half_adder HA(.A(A), .B(B), .Sum(Sum), .Cout(Cout));
    initial
        begin
        $dumpfile("half_adder.vcd");
        $dumpvars(0, half_adder_tb);
        $monitor("time=%0t, A=%b, B=%b, Sum=%b, Cout=%b", $time, A, B, Sum, Cout);
        A= 1'b0; B=1'b0;
        #1 A= 1'b0; B= 1'b1;
        #1 A= 1'b1; B= 1'b0;
        #1 A= 1'b1; B= 1'b1;
        #1 $finish;
        end
endmodule