module barrel_shifter_4bit_tb;
    reg [3:0]in;
    reg [1:0]S;
    reg L_S;
    wire[3:0]out;
    integer i;
    barrel_shifter_4bit DUT(.in(in), .sel(S), .left_shift(L_S), .out(out));
    initial
        begin
            $dumpfile("barrel_shifter_4bit.vcd");
            $dumpvars(0, barrel_shifter_4bit_tb);
            $monitor("time=%0t, in=%b, S=%b, L_S=%b, out=%b", $time, in, S, L_S, out);
            in = 4'b0101; L_S = 1 ;
            for(i=0; i<=3; i=i+1)
            begin
                S = i;
                #2;
            end

            #1 in= 4'b0101; L_S = 0;
            for(i=0; i<=3; i=i+1)
            begin
                S = i;
                #2;
            end
            #1 $finish;
        end
endmodule
