module full_subtractor( A, B, Bin, diff, Bout);
    input A,B,Bin;
    output diff, Bout;
    assign diff= A^B^Bin;
    assign Bout= ~A&B | ~A&Bin | B&Bin;
endmodule