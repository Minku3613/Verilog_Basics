module JK_FF(J,K,clk,Q_next);
    input J,K,clk;
    output reg Q_next;
    always @(posedge clk)
        begin
            case({J,K})
                2'b00: Q_next<=Q_next;
                2'b01: Q_next<=0;
                2'b10: Q_next<=1;
                2'b11: Q_next<=~Q_next;
                default: Q_next<=1'bx;
            endcase
        end
endmodule
