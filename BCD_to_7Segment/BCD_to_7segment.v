module BCD_to_7segment(B, S);
    input[3:0]B;
    output reg[6:0]S;
    always @(*)
        begin
            case(B)
                0: S<=7'b1111110;
                1: S<= 7'b0110000;
                2: S<= 7'b1101101;
                3: S<= 7'b1111001;
                4: S<= 7'b0110011;
                5: S<= 7'b1011011;
                6: S<= 7'b1011111;
                7: S<= 7'b1110000;
                8: S<= 7'b1111111;
                9: S<= 7'b1111011;
                default: S<= 7'b0000000;
            endcase
        end
endmodule
        