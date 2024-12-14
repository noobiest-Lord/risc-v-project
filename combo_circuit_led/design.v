module led (L, S, P, V);
    input S, P, V;
    output L;

    assign L = ~S & P & V;
endmodule