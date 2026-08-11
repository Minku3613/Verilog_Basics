module comparator_1bit(A,B,gt,lt,et);
    input A,B;
    output reg gt, lt, et;
    always @(A,B)
    if(A>B)
        begin
            gt=1;
            lt=0;
            et=0;
        end
    else if(A<B)
        begin
            lt=1;
            gt=0;
            et=0;
        end
    else
        begin
            gt=0;
            lt=0;
            et =1;
        end
endmodule
        