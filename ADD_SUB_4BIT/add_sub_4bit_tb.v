module add_sub_4bit_tb;
    reg [3:0]A,B;
    reg cin,bin,op;
    wire[3:0]f;
    wire cout, bout;
    add_sub_4bit DUT(A,B,cin,bin,op,cout,bout,f);
    initial
    begin
        $dumpfile("add_sub.vcd");
        $dumpvars(0,add_sub_4bit_tb);
        $monitor("time=%0t, A=%b, B=%b, cin=%b, bin=%b, op=%b, cout=%b, bout=%b, f=%b", $time,A,B,cin,bin,op,cout,bout,f );
        A = 4'b0001; B=4'b0001; cin=1'b0; bin=1'b0; op=1'b1;
        #1 A= 4'b1111; B=4'b1010; cin=1'b0; bin=1'b0; op=1'b0;
        #1 A= 4'b1111; B=4'b1010; cin=1'b0; bin=1'b0; op=1'b1;
        #2 A= 4'b1000; B=4'b0111; cin=1'b0; bin=1'b0; op=1'b1;
        #2 A= 4'b1000; B=4'b0111; cin=1'b0; bin=1'b0; op=1'b0;
        #1 $finish;
    end
endmodule

