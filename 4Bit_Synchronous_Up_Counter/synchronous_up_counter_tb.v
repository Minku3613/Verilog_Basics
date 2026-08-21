module synchronous_up_counter_tb;
    reg clk, rst;
    wire [3:0]out;
    reg[3:0]expected;
    integer errors;
    integer i;

    synchronous_up_counter DUT(.clk(clk), .rst(rst), .out(out));

    always #5 clk = ~clk;

    initial
        begin
            $dumpfile("synchronous_up_counter.vcd");
            $dumpvars(0,synchronous_up_counter_tb);
            clk = 0;
            rst = 1;
            expected = 0;
            errors = 0;

// RESET TEST
            rst =0;
            #2

            if(out == 4'b0000)
                $display("RESET TEST : PASS");
            else
            begin
                $display("RESET TEST : FAIL | expected = 0, got =%d", out);
                errors = errors+1;
            end

// Release RESET 
            rst = 1;

// COUNTING TEST
            for(i=0; i<16; i=i+1)
                begin
                    @(posedge clk)
                    #1

                    expected = expected+1;
                    if(out==expected)
                        $display("COUNT TEST: PASS| expected=%d, got=%d", expected,out);
                    else
                        begin
                            $display("COUNT TEST: FAIL| expected=%d, got=%d", expected,out);
                            errors = errors+1;
                        end
                end

//ASynchronous RESET TEST
            #2
            rst = 0;
            #1

            if(out==4'b0000)
                $display("ASYNC RESET TEST:PASS| Expected =0, Got=%d",out);
            else
            begin
                $display("ASYNC RESET TEST:FAIL| Expected =%d, Got=%d", expected,out);
                errors = errors+1;
            end
//FINAL RESULT

            if(errors==0)
            begin
                $display("==========================");
                $display("     ALL TESTS PASSED");
                $display("==========================");
            end
            else
            begin
                $display("==========================");
                $display("        TEST FAILED");
                $display("        ERRORS=%d",errors);
                $display("==========================");
            end
            $finish;
        end
endmodule





            