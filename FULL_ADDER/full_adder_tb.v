module full_adder_tb;
    reg A, B, Cin;
    wire Sum, Cout;
    full_adder FA(.A(A), .B(B),.Cin(Cin), .Sum(Sum), .Cout(Cout));
    initial
        begin
        $dumpfile("full_adder.vcd");
        $dumpvars(0, full_adder_tb);
        $monitor($time, "A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A,B,Cin,Sum,Cout);
        A= 1'b0; B= 1'b0; Cin=1'b0;
        #1 A= 1'b0; B= 1'b0; Cin= 1'b1;
        #1 A= 1'b0; B= 1'b1; Cin= 1'b0;
        #1 A= 1'b0; B= 1'b1; Cin= 1'b1;
        #1 A= 1'b1; B= 1'b0; Cin= 1'b0;
        #1 A= 1'b1; B= 1'b0; Cin= 1'b1;
        #1 A= 1'b1; B= 1'b1; Cin= 1'b0;
        #1 A= 1'b1; B= 1'b1; Cin= 1'b1;
        #1 $finish;
        end
endmodule