module ALU_4bit_tb;
    reg[3:0]in1,in2;
    reg[1:0]op;
    wire cout,bout;
    wire[3:0]out;
    integer i;
    ALU_4bit DUT(.in1(in1), .in2(in2), .op(op), .cout(cout), .bout(bout), .out(out));
    initial
        begin
            $dumpfile("ALU_4bit.vcd");
            $dumpvars(0, ALU_4bit_tb);
            $monitor("time=%0t, in1=%b, in2=%b, op=%b, bout=%b, cout=%b, out=%b", $time,in1,in2,op,bout,cout,out);
            in1= 4'b1111; in2= 4'b1010;
            for(i=0; i<=3; i=i+1)
            begin
                op=i;
                #1;
            end

            #2 in1= 4'b1010; in2= 4'b0101;
            for(i=0; i<=3; i=i+1)
            begin
                op=i;
                #1;
            end

            #2 in1= 4'b0011; in2= 4'b0110;
            for(i=0; i<=3; i=i+1)
            begin
                op=i;
                #1;
            end
            #2 $finish;
        end
endmodule

            