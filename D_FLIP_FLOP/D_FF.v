primitive D_FF(Q, D, clk);
    output Q;
    reg Q;
    input D, clk;

    table
        // D   clk   :   Q   :   Q_next
           0   (01)  :   ?   :   0;
           1   (01)  :   ?   :   1;
    endtable
endprimitive