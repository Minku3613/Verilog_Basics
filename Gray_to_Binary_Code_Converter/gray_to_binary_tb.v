module gray_to_binary_tb;
    reg [3:0]G;
    wire [3:0]B;
    gray_to_binary DUT(G,B);
    initial
        begin
            $dumpfile("gray_to_binary.vcd");
            $dumpvars(0,gray_to_binary_tb);
            $monitor("time=%0t, G=%b, B=%b", $time,G,B);
            G=4'b0000;
            #2 G=4'b0001;
            #2 G=4'b1010;
            #2 G=4'b1100;
            #2 G=4'b0010;
            #2 G=4'b1111;
            #2 $finish;
        end
endmodule