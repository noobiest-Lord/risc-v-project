module tb();
    reg a, b, c, d, clk, rst;
    wire z;
    top_mod dut(
        .a(a), 
        .b(b), 
        .c(c), 
        .d(d), 
        .z(z), 
        .clk(clk), 
        .rst(rst)
    );
    always begin
            clk <= 1'b1;
            #5;
            clk <= 1'b0;
            #5;
        end
    initial begin
        rst = 1'b1;
        #10;

        rst = 1'b0;
        a = 1'b1;
        b = 1'b0;
        c = 1'b1;
        d = 1'b0;
        #10;

        a = 1'b1;
        b = 1'b1;
        c = 1'b1;
        d = 1'b1;
        #10;

        rst = 1'b1;
        #10;

        rst = 1'b0;
        a = 1'b0;
        b = 1'b0;
        c = 1'b0;
        d = 1'b0;
        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end
endmodule