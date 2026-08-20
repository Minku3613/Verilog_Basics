module parity_checker_tb;
    reg [3:0] in;
    reg parity, mode;
    wire error_out;
    parity_checker DUT(.in(in),.parity(parity),.mode(mode),.error_out(error_out));

    initial
    begin
        $dumpfile("parity_checker.vcd");
        $dumpvars(0, parity_checker_tb);
        $monitor("time=%0t, in=%b, parity=%b, mode=%b, error_out=%b", $time, in, parity, mode, error_out);
        in = 4'b1011;
        parity = 1'b1;
        mode = 1'b1;
        #10;

        in = 4'b1011;
        parity = 1'b0;
        mode = 1'b1;
        #10;

        in = 4'b1011;
        parity = 1'b0;
        mode = 1'b0;
        #10;

        in = 4'b1011;
        parity = 1'b1;
        mode = 1'b0;
        #10;
        $finish;
    end

endmodule