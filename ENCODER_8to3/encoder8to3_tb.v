module encoder8to3_tb;
    reg[7:0]in;
    wire[2:0]out;
    encoder8to3 E(.in(in), .out(out));
    initial 
        begin
        $dumpfile("encoder8to3.vcd");
        $dumpvars(0, encoder8to3_tb);
        $monitor("time=%0t, in=%b, out=%b", $time, in, out);
        in= 8'b00000001;
        #1 in= 8'b00000010;
        #1 in= 8'b00000100;
        #1 in= 8'b00001000;
        #1 in= 8'b00010000;
        #1 in= 8'b00100000;
        #1 in= 8'b01000000;
        #1 in= 8'b10000000;
        #1 $finish;
        end
endmodule
