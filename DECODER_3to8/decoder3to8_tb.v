module decoder3to8_tb;
    reg[2:0]in;
    wire[7:0]out;
    decoder3to8 D(.in(in), .out(out));
    initial
        begin
        $dumpfile("decoder3to8.vcd");
        $dumpvars(0, decoder3to8_tb);
        $monitor("time=%0t, in=%b, out=%b", $time, in, out);
        in=3'b000;
        #1in=3'b001;
        #1in=3'b010;
        #1in=3'b011;
        #1in=3'b100;
        #1in=3'b101;
        #1in=3'b110;
        #1in=3'b111;
        #1 $finish;
        end
endmodule