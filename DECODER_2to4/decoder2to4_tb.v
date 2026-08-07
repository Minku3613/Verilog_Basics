module decoder2to4_tb;
    reg [1:0]in;
    wire [3:0]out;
    decoder2to4 D(.in(in), .out(out));
    initial
        begin
        $dumpfile("decoder2to4.vcd");
        $dumpvars(0,decoder2to4_tb);
        $monitor("time=%0t, in=%b, out=%b", $time, in,out);
        in=2'b00;
        #1 in=2'b01;
        #1 in=2'b10;
        #1 in=2'b11;
        #1 $finish;
        end
endmodule