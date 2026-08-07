module XNOR_tb;
    reg A,B;
    wire Y;
    XNOR G(.in1(A), .in2(B), .out(Y));
    initial
        begin
        $dumpfile("XNOR_GATE.vcd");
        $dumpvars(0,XNOR_tb);
        $monitor($time, "A=%b,B=%b, Y=%b", A,B, Y);
        #2 A= 1'b0; B=1'b0;
        #2 A = 1'b1; B=1'b0;
        #2 A = 1'b1; B=1'b1;
        #2 A = 1'b0; B= 1'b1;
        #2 $finish;
        end
endmodule