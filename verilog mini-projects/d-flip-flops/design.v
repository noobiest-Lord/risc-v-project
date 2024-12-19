module dflop(reset, clk, D, Q);
    input reset, clk, D;
    output reg Q; 
    // since Q is a sort of memory (the value of 1 may not change even if inputs change)
    // it is a sort of register (reg)

    // always block is a procedral block (like initial)
    // however initial is best suited for testbenches
    //always = design + testbench

    // always @(sensitivity list)(will keep running until there is a value change)

    always @(posedge clk) begin
        if (reset == 1'b1) begin
            Q <= 1'b0;
        end

        else begin
            Q <= D;
        end
    end

endmodule