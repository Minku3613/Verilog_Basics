module dmux1to2( in, sel, out);
    input in, sel;
    output [1:0] out;
    assign out[0]= (~sel)& in;
    assign out[1]= sel & in;
endmodule