module MOD_10_counter_tb;
    reg clk,rst;
    wire [3:0]out;
    reg [3:0]expected;
    integer errors;
    integer i;

    MOD_10_counter DUT(.clk(clk), .rst(rst), .out(out));

    always #5 clk = ~clk;

    initial
        begin
            $dumpfile("MOD_10_counter.vcd");
            $dumpvars(0,MOD_10_counter_tb);
            clk= 0;
            rst =1; 
            errors=0;
            expected=0;

//RESET TEST
            rst=0;
            #2;
            
            if(out==4'b0000)
                $display("RESET TEST: PASS");
            else
            begin
                $display("RESET TEST: FAIL");
                errors =errors+1;
            end

//COUNT TEST
            rst = 1;
            for(i=0; i<10; i=i+1)
            begin
                @ (posedge clk);
                #1;
                if(expected == 4'd9)
                    expected = 4'd0;
                else
                    expected = expected + 1;
                $display("UP COUNT: Expected=%d, Got=%d", expected, out);
            if(out==expected)
                $display("COUNT TEST : PASS|Expected=%d, Got=%d", expected,out);
            else
            begin
                $display("COUNT TEST : FAIL|Expected=%d, out=%d", expected, out);
                errors = errors+1;
            end
            end

//ASynchronous RESET TEST
            rst=0;
            #1;
            if(out==4'b0000)
                $display("ASYNC TEST : PASS| Expected=0, Got=%d", out);
            else
            begin
                $display("ASYNC TEST : FAIL| Expected=0, Got=%d", out);
                errors = errors+1;
            end
        
//FINAL RESULT
            if(errors==0)
                begin
                    $display("=======================================");
                    $display("          ALL TESTS PASSED");
                    $display("=======================================");
                end
            else
                begin
                    $display("=======================================");
                    $display("          TEST FAILED");
                    $display("          ERRORS=%d",errors);
                    $display("=======================================");
                end
            $finish;
        end
endmodule

