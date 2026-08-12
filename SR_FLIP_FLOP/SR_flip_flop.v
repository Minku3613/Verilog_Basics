module SR_flip_flop(S,R,clk,Q_next);
    input S,R;
    input clk;
    output reg Q_next;
    always @(posedge clk)
    begin
        if(S==0 && R==0)
            Q_next <= Q_next;
        else if(S==0 && R==1)
            Q_next <= 1'b0;
        else if(S==1 && R==0)
            Q_next <= 1'b1;
        else
            Q_next <= 1'bx;
    end
endmodule