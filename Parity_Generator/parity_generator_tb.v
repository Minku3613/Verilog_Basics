module parity_generator_tb;
    reg [3:0]in;
    reg s;
    wire E_P, O_P;
    integer i;
    parity_generator DUT(.in(in), .s(s), .even_parity(E_P), .odd_parity(O_P));
    initial
        begin
            $dumpfile("parity_generator.vcd");
            $dumpvars(0, parity_generator_tb);
            $monitor("time=%0t, in=%b s=%b, O_P=%b, E_P=%b", $time, in, s, O_P, E_P);
            s = 1'b1;
            for(i=0; i<=15; i=i+1)
            begin
                in = i;
                #2;
            end

            s= 1'b0;
            for(i=0; i<=15; i=i+1)
            begin
                in = i;
                #2;
            end
            #1 $finish;
        end
endmodule