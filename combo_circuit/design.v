module led (L, S, P, V);
    input S, P, V;
    output L;

    assign L = (~S & P) | V;  // This performs bitwise OR, which is correct for logic operations
endmodule 