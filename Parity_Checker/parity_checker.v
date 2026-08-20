// when mode=0 it acts as odd parity while when mode =1 it acts as even parity checker
module parity_checker(in, parity, mode, error_out);
    input[3:0]in;
    input parity, mode;
    output reg error_out;
    always @(*)
    begin
        if(mode)
        begin
            error_out = (in[3]^in[2]^in[1]^in[0]^parity);
        end
        else
            error_out = ~(in[3]^in[2]^in[1]^in[0]^parity);
    end
endmodule
