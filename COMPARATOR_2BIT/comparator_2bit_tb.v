module comparator_2bit_tb;
    reg [1:0]A,B;
    wire gt,lt,et;
    comparator_2bit DUT(A,B,gt,lt,et);
    initial
        begin
            $dumpfile("comparator.vcd");
            $dumpvars(0,comparator_2bit_tb);
            $monitor("time=%0t, A=%b, B=%b, gt=%b, lt=%b, et=%b",$time,A,B,gt,lt,et);
            A=2'b00; B=2'b00;
            #1 A=2'b00; B=2'b01;
            #1 A=2'b00; B=2'b01;
            #1 A=2'b00; B=2'b10;
            #1 A=2'b00; B=2'b11;
            #1 A=2'b01; B=2'b00;
            #1 A=2'b01; B=2'b01;
            #1 A=2'b01; B=2'b10;
            #1 A=2'b01; B=2'b11;
            #1 A=2'b10; B=2'b00;
            #1 A=2'b10; B=2'b01;
            #1 A=2'b10; B=2'b10;
            #1 A=2'b10; B=2'b11;
            #1 A=2'b11; B=2'b00;
            #1 A=2'b11; B=2'b01;
            #1 A=2'b11; B=2'b10;
            #1 A=2'b11; B=2'b11;
            #2 $finish;
        end
endmodule

