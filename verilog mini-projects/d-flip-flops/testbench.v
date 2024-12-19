module tb();
    reg reset, clk, D;
    wire Q;
    dflop dut(
        .reset(reset), 
        .clk(clk), 
        .D(D), 
        .Q(Q)
    );

    // Generate a clock and no sensitivity in testbench
    always begin
        clk <= 1'b0;
        #50; // always half of input, because one full clock goes up and down
        clk <= 1'b1;
        #50;
    end

    initial begin
        reset <= 1'b1;
        #100;

        reset <= 1'b0;
        #100;

        D <= 1'b1;
        #100;

        D<= 1'b0;
        #100;
        // since i put an always begin, it will run indefinately, so i need finish
        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end
endmodule