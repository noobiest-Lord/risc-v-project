module tb();
    reg clk = 0, rstn; // u can predefine a variable
    wire [3:0] out;
    counter dut (
        .rstn(rstn), 
        .clk(clk), 
        .out(out)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end

    always begin
        clk = ~clk; // since we already defined what clk is, we can just switch clk every 50 sec
        #50;
    end

    initial begin
        rstn <= 1'b1;
        #100;

        rstn <= 1'b0;
        #400;
        $finish; // to stop the always
    end
endmodule