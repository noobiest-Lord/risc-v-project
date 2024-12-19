module tb();
    reg i0, i1, sel;
    wire [1:0] out;
    
    if_else dut(
        .i0(i0),
        .i1(i1),
        .sel(sel),
        .out(out)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end

    initial begin
        i0 <= 1'b0;
        i1 <= 1'b0;
        sel <= 1'b0;
        #50;
        
        i0 <= 1'b0;
        i1 <= 1'b1;
        sel <= 1'b1;
        #50;

        i0 <= 1'b1;
        i1 <= 1'b1;
        sel <= 1'b1;
        #50;

        $finish;
        
    end
endmodule;