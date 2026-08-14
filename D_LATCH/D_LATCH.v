module D_latch(D,en,Q);
    input D,en;
    output reg Q;
    initial
        Q = 0;
    always @ (D,en)
    begin
        if(en)
            Q<=D;
        else
            Q<=Q;
    end
endmodule