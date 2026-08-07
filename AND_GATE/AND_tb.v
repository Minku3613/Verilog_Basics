module AND_tb;
    reg A; reg B; wire Y;
    AND G(.A(A), .B(B), .Y(Y));
    initial 
        begin
        $dumpfile("AND_GATE.vcd");
        $dumpvars(0,AND_tb);
        $monitor($time, "A=%b, B=%b, Y=%b", A, B, Y);
        #3 A= 1'b0; B = 1'b0;
        #3 B = 1'b1; A = 1'b0;
        #3 A = 1'b1; B = 1'b0;
        #3 A = 1'b1; B = 1'b1;
        #3 $finish;
        end
endmodule

