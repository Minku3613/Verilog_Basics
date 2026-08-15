module BCD_to_excess3(B,X);
    input[3:0]B;
    output [3:0]X;
    assign X = B + 4'b0011;
endmodule