// mode 0 = down_counter and mode 1= up_counter.

module up_down_synchronous_counter(clk,rst,mode,out);
    input clk,rst,mode;
    output reg[3:0]out;
    always @(posedge clk or negedge rst) 
    begin   
        if(!rst)
            out <= 4'b0000;
        else
        begin
            if(mode)
                out <= out+1;
            else
                out <= out-1;
        end
    end
endmodule
