module synchronous_up_counter(clk,rst,out);
    input clk,rst;
    output reg[3:0]out;
    always @(posedge clk or negedge rst)
        begin
            if(!rst)
                out <= 4'b0000;
            else
                out <= out + 1;
        end
endmodule
