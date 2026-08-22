module up_down_synchronous_counter_tb;
    reg clk, rst, mode;
    wire [3:0]out;
    reg[3:0]expected;
    integer errors;
    integer i;

    up_down_synchronous_counter DUT (.clk(clk), .rst(rst), .mode(mode), .out(out));

    always #2 clk = ~clk;

    initial
        begin
            $dumpfile("up_down_synchronous_counter.vcd");
            $dumpvars(0, up_down_synchronous_counter_tb);
            clk = 0;
            rst = 1;
            errors = 0;
            expected = 0;
            mode = 1;

//RESET TEST
            rst = 0;
            #1;
            expected = 4'b0000;
            if(out == expected) 
                $display("RESET TEST: PASS");
            else
            begin
                $display("RESET TEST: FAIL");
                errors = errors+1;
            end

//Release RESET
            rst = 1;

//up_counter TEST 
        
            for(i=0; i<16; i=i+1)
            begin
                 @(posedge clk );
                 #1;
                expected = expected+1;
                $display("UP COUNT: Expected=%d, Got=%d", expected, out);
            end

            if(out==expected)
                $display("Up Counter Test : PASS|Expected=%d, Got=%d", expected,out);
            else
            begin
                $display("Up Counter Test : FAIL|Expected=%d, Got=%d",expected,out);
                errors = errors+1;
            end

//Down Counter Test
            mode = 0; 
            for(i=0; i<16; i=i+1)
            begin
                @(posedge clk );
                #1;
                expected = expected-1;
                $display("DOWN COUNT: Expected=%d, Got=%d", expected, out);
            end

            if(out==expected)
                $display("Down Counter Test : PASS|Expected=%d, Got=%d", expected,out);
            else
            begin
                $display("Down Counter Test : FAIL|Expected=%d, Got=%d",expected,out);
                errors = errors+1;
            end

//ASynchronous RESET TEST
            rst = 0;
            #1;
            if(out==4'b0000)
                $display(" ASYNC RESET TEST: PASS| Expected=0, Got=%d", out);
            else
            begin
                $display(" ASYNC RESET TEST: FAIL| Expected=0, Got=%d", out);
                errors= errors+1;
            end

            
//FINAL RESULT
            if(errors==0)
            begin
                $display("=================================");
                $display("       ALL TESTS PASSED");
                $display("=================================");
            end
            else
            begin
                $display("=================================");
                $display("           TEST FAILED");
                $display("           ERRORS = %d", errors);
                $display("=================================");
            end
            $finish;
        end
endmodule


            

