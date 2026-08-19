module barrel_shifter_4bit(in, sel, left_shift, out);
    input[3:0]in;
    input[1:0]sel;
    input left_shift;
    output reg[3:0]out;
    always @(*)
        begin
            if(left_shift)
            begin
                case(sel)
                        2'b00: out<= in;
                        2'b01: out<= { in[2],in[1],in[0],1'b0};
                        2'b10: out<= {in[1],in[0],1'b0,1'b0};
                        2'b11: out<= {in[0],1'b0,1'b0,1'b0};
                endcase
            end
            else
            begin
                case(sel)
                        2'b00: out<= in;
                        2'b01: out<= {1'b0, in[3],in[2],in[1]};
                        2'b10: out<= {1'b0,1'b0,in[3],in[2]};
                        2'b11: out<= {1'b0,1'b0,1'b0,in[3]};
                endcase
            end
        end
endmodule
                

