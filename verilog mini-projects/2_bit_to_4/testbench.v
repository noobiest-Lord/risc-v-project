module tb();
    reg [1:0] A;
    reg E;
    wire Y_0, Y_1, Y_2, Y_3;

    Decoder dut (
        .A(A), 
        .Y_0(Y_0),
        .Y_1(Y_1), 
        .Y_2(Y_2), 
        .Y_3(Y_3), 
        .E(E)
    );

    initial begin
        A <= 2'b01;
        #100;

        E <= 1'b0;
        #100;
        E <= 1'b1;
        #100;

        A <= 2'b11;
        #100;

        E <= 1'b0;
        #100;
        E <= 1'b1;
        # 100;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end
endmodule