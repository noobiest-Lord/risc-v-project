module tb();
    reg A, B, C;
    wire Q;

    complex dut(
        .A(A),
        .B(B),
        .C(C),
        .Q(Q)
    );

    initial begin;
        A <= 1'b0;
        B <= 1'b0;
        C <= 1'b0;
        #100;

        A <= 1'b0;
        B <= 1'b0;
        C <= 1'b1;
        #100;

        A <= 1'b0;
        B <= 1'b1;
        C <= 1'b0;
        #100;

        A <= 1'b1;
        B <= 1'b0;
        C <= 1'b1;
        #100;
    end

    initial begin;
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end
endmodule