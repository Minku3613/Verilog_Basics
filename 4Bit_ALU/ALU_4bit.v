// 4 bit ALU include ADD, Sub, AND, Or operations .
// when op= 00 it will perform ADD,  op=01 it perform Sub, op=10 it perform AND, op=11 it perform Or.

module ALU_4bit(in1, in2,cout,bout, op, out);
    input[3:0]in1,in2;
    input[1:0]op;
    output reg cout, bout;
    output reg[3:0]out;
    always @(*)
        case(op)
            2'b00: {cout,out} = in1+in2;
            2'b01:begin
                out = in1-in2;
                if(in1<in2)
                    bout = 1;
            end   
            2'b10: out = in1 & in2;
            2'b11: out= in1 | in2;
            default: out= 4'b0000;
        endcase
endmodule

    
