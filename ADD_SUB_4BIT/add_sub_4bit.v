module add_sub_4bit(A,B,cin,bin,op,cout,bout,f);
    input[3:0]A,B;
    input cin,bin,op;
    output reg[3:0]f;
    output reg cout,bout;
    always @(*)
        begin
            if(op)
            begin
                {cout,f}= A+B+cin;
                bout =0;
            end
            else
            begin
                {bout,f}= A-B-bin;
                cout = 0;
            end
        end
endmodule