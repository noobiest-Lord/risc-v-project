module tb();
    reg S, P, V;
    wire L;

    led dut(
        .S(S),
        .P(P),
        .V(V),
        .L(L)
    );

    initial begin;
        S <= 1'b0;
        P <= 1'b0;
        V <= 1'b0;
        #100;

        S <= 1'b0;
        P <= 1'b0;
        V <= 1'b1;
        #100;

        S <= 1'b0;
        P <= 1'b1;
        V <= 1'b0;
        #100;

        S <= 1'b0;
        P <= 1'b1;
        V <= 1'b1;
        #100;
    end

    initial begin;
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end
endmodule