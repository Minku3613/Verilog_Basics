module priority_encoder8to3_tb;
    reg[7:0]in;
    wire[2:0]out;
    priority_encoder8to3 P(.in(in), .out(out));
    initial 
        begin
        $dumpfile("priority_encoder8to3.vcd");
        $dumpvars(0, priority_encoder8to3_tb);
        $monitor("time=%0t, in=%b, out=%b", $time, in, out);
        in=8'b00000001;
        #2 in= 8'b00000011;
        #2 in= 8'b00000111;
        #1 in= 8'b00001111;
        #1 in= 8'b00011111;
        #1 in= 8'b00111111;
        #1 in= 8'b01111111;
        #1 in= 8'b11111111;
        #1 $finish;
        end
endmodule
