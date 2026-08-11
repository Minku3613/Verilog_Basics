module comparator_2bit(A,B,gt,lt,et);
    input [1:0]A,B;
    output reg gt,lt,et;
    always @(A,B)
    begin
        if(A>B)
            begin
                gt=1;
                lt=0;
                et=0;
            end
        else if(A<B)
            begin
                gt=0;
                lt=1;
                et=0;
            end
        else
            begin 
                gt=0;
                lt=0;
                et=1;
            end
    end
endmodule