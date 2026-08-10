module adder_16bits(X,Y,Cin,Z,Cout);
    input [15:0]X,Y;
    input Cin;
    output[15:0]Z;
    output Cout;
    assign {Cout,Z}= X+Y+Cin;
endmodule
