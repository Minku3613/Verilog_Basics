// when s=1 it will act as even parity generator while when s=0 it will act as odd parity generator
module parity_generator(in,s, even_parity, odd_parity);
    input[3:0]in;
    input s;
    output reg even_parity, odd_parity;
    always @(*)
    begin
        if(s)
        begin
            even_parity = in[3]^in[2]^in[1]^in[0];
            odd_parity = ~even_parity;
        end
        else
        begin
            odd_parity = ~(in[3]^in[2]^in[1]^in[0]);
            even_parity = ~odd_parity;
        end
    end
endmodule