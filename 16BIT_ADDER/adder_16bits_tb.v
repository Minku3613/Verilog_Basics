module adder_16bits_tb;
    reg [15:0]X,Y;
    reg Cin;
    wire[15:0]Z;
    wire Cout;
    adder_16bits A(X,Y,Cin,Z,Cout);
    initial
        begin
        $dumpfile("Adder.vcd");
        $dumpvars(0,adder_16bits_tb);
        $monitor("time=%0t, X=%h, Y=%h, Cin=%b, Z=%h, Cout=%b", $time, X, Y, Cin, Z,Cout);
        X= 16'h8FFF; Y=16'h0001; Cin=0;
        #1 X= 16'hAAAA; Y=16'h8EEA; Cin=0;
        #1 X=16'h1010; Y= 16'h88AA; Cin=0;
        #3 $finish;
        end
endmodule