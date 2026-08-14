module T_FF(T,clk,Q);
    input T,clk;
    output reg Q;
    initial
        Q=1'b0;
    always @(posedge clk)
        begin
            case(T)
            1'b0: Q<=Q;
            1'b1: Q<=~Q;
            endcase
        end
endmodule